Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E3BF2A4D65
	for <lists+devicetree@lfdr.de>; Tue,  3 Nov 2020 18:44:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729077AbgKCRoP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Nov 2020 12:44:15 -0500
Received: from foss.arm.com ([217.140.110.172]:53158 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727901AbgKCRoO (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 3 Nov 2020 12:44:14 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 758301509;
        Tue,  3 Nov 2020 09:44:13 -0800 (PST)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id F3D533F718;
        Tue,  3 Nov 2020 09:44:11 -0800 (PST)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>,
        Trilok Soni <tsoni@codeaurora.org>,
        Trilok Soni <tsoni@quicinc.com>, arve@android.com,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Android Kernel Team <kernel-team@android.com>,
        Fuad Tabba <tabba@google.com>
Subject: [PATCH v2 9/9] firmware: arm_ffa: Add support for MEM_* interfaces
Date:   Tue,  3 Nov 2020 17:43:50 +0000
Message-Id: <20201103174350.991593-10-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201103174350.991593-1-sudeep.holla@arm.com>
References: <20201103174350.991593-1-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Most of the MEM_* APIs share the same parameters, so they can be
generalised. Currently only MEM_SHARE is implemented and the user space
interface for that is not added yet.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_ffa/driver.c | 210 ++++++++++++++++++++++++++++++
 include/linux/arm_ffa.h           | 137 +++++++++++++++++++
 include/uapi/linux/arm_ffa.h      |  11 ++
 3 files changed, 358 insertions(+)

diff --git a/drivers/firmware/arm_ffa/driver.c b/drivers/firmware/arm_ffa/driver.c
index 0aa3e4d02896..6e838f2e15cb 100644
--- a/drivers/firmware/arm_ffa/driver.c
+++ b/drivers/firmware/arm_ffa/driver.c
@@ -29,7 +29,9 @@
 #include <linux/io.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
+#include <linux/mm.h>
 #include <linux/of.h>
+#include <linux/scatterlist.h>
 #include <linux/slab.h>
 #include <linux/uaccess.h>
 #include <linux/uuid.h>
@@ -118,6 +120,18 @@ static int ffa_version_check(u32 *version)
 	return 0;
 }
 
+static int ffa_features(u32 func_id)
+{
+	ffa_res_t ret;
+
+	ret = invoke_ffa_fn(FFA_FEATURES, func_id, 0, 0, 0, 0, 0, 0);
+
+	if (ret.a0 == FFA_ERROR)
+		return ffa_to_linux_errno((int)ret.a2);
+
+	return ret.a2;
+}
+
 static int ffa_rx_release(void)
 {
 	ffa_res_t ret;
@@ -215,6 +229,25 @@ static int ffa_id_get(u16 *vm_id)
 	return 0;
 }
 
+static int ffa_msg_send(u16 src_id, u16 dst_id, void *buf, u32 len)
+{
+	ffa_res_t ret;
+	u32 src_dst_ids = PACK_TARGET_INFO(src_id, dst_id);
+
+	mutex_lock(&drv_info->tx_lock);
+
+	memcpy(drv_info->tx_buffer, buf, len);
+
+	ret = invoke_ffa_fn(FFA_MSG_SEND, src_dst_ids, 0, len, 0, 0, 0, 0);
+
+	mutex_unlock(&drv_info->tx_lock);
+
+	if (ret.a0 == FFA_ERROR)
+		return ffa_to_linux_errno((int)ret.a2);
+
+	return 0;
+}
+
 static int ffa_msg_send_direct_req(u16 src_id, u16 dst_id,
 				   struct ffa_send_direct_data *data)
 {
@@ -241,6 +274,177 @@ static int ffa_msg_send_direct_req(u16 src_id, u16 dst_id,
 	return 0;
 }
 
+static int ffa_mem_first_frag(u32 func_id, phys_addr_t buf, u32 buf_sz,
+			      u32 frag_len, u32 len, u64 *handle)
+{
+	ffa_res_t ret;
+
+	ret = invoke_ffa_fn(func_id, len, frag_len, buf, buf_sz, 0, 0, 0);
+
+	while (ret.a0 == FFA_MEM_OP_PAUSE)
+		ret = invoke_ffa_fn(FFA_MEM_OP_RESUME, ret.a1, ret.a2,
+				    0, 0, 0, 0, 0);
+	if (ret.a0 == FFA_ERROR)
+		return ffa_to_linux_errno((int)ret.a2);
+
+	if (ret.a0 != FFA_SUCCESS)
+		return -EOPNOTSUPP;
+
+	if (handle)
+		*handle = PACK_HANDLE(ret.a3, ret.a2);
+
+	return frag_len;
+}
+
+static int ffa_mem_next_frag(u64 handle, u32 frag_len)
+{
+	ffa_res_t ret;
+
+	ret = invoke_ffa_fn(FFA_MEM_FRAG_TX, HANDLE_LOW(handle),
+			    HANDLE_HIGH(handle), frag_len, 0, 0, 0, 0);
+
+	while (ret.a0 == FFA_MEM_OP_PAUSE)
+		ret = invoke_ffa_fn(FFA_MEM_OP_RESUME, ret.a1, ret.a2,
+				    0, 0, 0, 0, 0);
+	if (ret.a0 == FFA_ERROR)
+		return ffa_to_linux_errno((int)ret.a2);
+
+	if (ret.a0 != FFA_MEM_FRAG_RX)
+		return -EOPNOTSUPP;
+
+	return ret.a3;
+}
+
+static int
+ffa_transmit_fragment(u32 func_id, phys_addr_t buf, u32 buf_sz, u32 frag_len,
+		      u32 len, u64 *handle, bool first)
+{
+	if (!first)
+		return ffa_mem_next_frag(*handle, frag_len);
+
+	return ffa_mem_first_frag(func_id, buf, buf_sz, frag_len,
+				      len, handle);
+}
+
+static u32 ffa_get_num_pages_sg(struct scatterlist *sg)
+{
+	u32 num_pages = 0;
+
+	do {
+		num_pages += sg->length / FFA_PAGE_SIZE;
+	} while ((sg = sg_next(sg)));
+
+	return num_pages;
+}
+
+static int
+ffa_setup_and_transmit(u32 func_id, void *buffer, u32 max_fragsize,
+		       struct ffa_mem_ops_args *args)
+{
+	int rc = 0;
+	bool first = true;
+	phys_addr_t addr = 0;
+	struct ffa_composite_mem_region *composite;
+	struct ffa_mem_region_addr_range *constituents;
+	struct ffa_mem_region_attributes *ep_mem_access;
+	struct ffa_mem_region *mem_region = buffer;
+	u32 idx, frag_len, length, num_entries = sg_nents(args->sg);
+	u32 buf_sz = max_fragsize / FFA_PAGE_SIZE;
+
+	mem_region->tag = args->tag;
+	mem_region->flags = args->flags;
+	mem_region->sender_id = drv_info->vm_id;
+	mem_region->attributes = FFA_MEM_NORMAL | FFA_MEM_WRITE_BACK |
+				 FFA_MEM_INNER_SHAREABLE;
+	ep_mem_access = &mem_region->ep_mem_access[0];
+
+	for (idx = 0; idx < args->nattrs; idx++, ep_mem_access++) {
+		ep_mem_access->receiver = args->attrs[idx].receiver;
+		ep_mem_access->attrs = args->attrs[idx].attrs;
+		ep_mem_access->composite_off = COMPOSITE_OFFSET(args->nattrs);
+	}
+	mem_region->ep_count = args->nattrs;
+
+	composite = buffer + COMPOSITE_OFFSET(args->nattrs);
+	composite->total_pg_cnt = ffa_get_num_pages_sg(args->sg);
+	composite->addr_range_cnt = num_entries;
+
+	length = COMPOSITE_CONSTITUENTS_OFFSET(args->nattrs, num_entries);
+	frag_len = COMPOSITE_CONSTITUENTS_OFFSET(args->nattrs, 0);
+	if (frag_len > max_fragsize)
+		return -ENXIO;
+
+	if (!args->use_txbuf)
+		addr = virt_to_phys(buffer);
+
+	constituents = buffer + frag_len;
+	idx = 0;
+	do {
+		if (frag_len == max_fragsize) {
+			rc = ffa_transmit_fragment(func_id, addr, buf_sz,
+						   frag_len, length,
+						   args->g_handle, first);
+			if (rc < 0)
+				return -ENXIO;
+
+			first = false;
+			idx = 0;
+			frag_len = 0;
+			constituents = buffer;
+		}
+
+		if ((void *)constituents - buffer > max_fragsize) {
+			pr_err("Memory Region Fragment > Tx Buffer size\n");
+			return -EFAULT;
+		}
+
+		constituents->address = sg_phys(args->sg);
+		constituents->pg_cnt = args->sg->length / FFA_PAGE_SIZE;
+		constituents++;
+		frag_len += sizeof(struct ffa_mem_region_addr_range);
+	} while ((args->sg = sg_next(args->sg)));
+
+	return ffa_transmit_fragment(func_id, addr, buf_sz, frag_len,
+				     length, args->g_handle, first);
+}
+
+static int ffa_memory_ops(u32 func_id, struct ffa_mem_ops_args *args)
+{
+	int ret;
+	void *buffer;
+
+	if (!args->use_txbuf) {
+		buffer = alloc_pages_exact(RXTX_BUFFER_SIZE, GFP_KERNEL);
+		if (!buffer)
+			return -ENOMEM;
+	} else {
+		buffer = drv_info->tx_buffer;
+		mutex_lock(&drv_info->tx_lock);
+	}
+
+	ret = ffa_setup_and_transmit(func_id, buffer, RXTX_BUFFER_SIZE, args);
+
+	if (args->use_txbuf)
+		mutex_unlock(&drv_info->tx_lock);
+	else
+		free_pages_exact(buffer, RXTX_BUFFER_SIZE);
+
+	return ret < 0 ? ret : 0;
+}
+
+static int ffa_memory_reclaim(u64 g_handle, u32 flags)
+{
+	ffa_res_t ret;
+
+	ret = invoke_ffa_fn(FFA_MEM_RECLAIM, HANDLE_LOW(g_handle),
+			    HANDLE_HIGH(g_handle), flags, 0, 0, 0, 0);
+
+	if (ret.a0 == FFA_ERROR)
+		return ffa_to_linux_errno((int)ret.a2);
+
+	return 0;
+}
+
 struct ffa_device *ffa_device_get_from_minor(int minor)
 {
 	struct list_head *p;
@@ -346,6 +550,12 @@ ffa_dev_ioctl(struct ffa_device *ffa_dev, unsigned int ioctl, void *arg)
 					    &kdata->data);
 		break;
 	}
+	case FFA_SHARE_MEMORY: {
+		struct ffa_mem_ops_args *kdata = arg;
+
+		r = ffa_memory_ops(FFA_MEM_SHARE, kdata);
+		break;
+	}
 	default:
 		r = -EINVAL;
 	}
diff --git a/include/linux/arm_ffa.h b/include/linux/arm_ffa.h
index 719ef02fe42d..12765a7926fc 100644
--- a/include/linux/arm_ffa.h
+++ b/include/linux/arm_ffa.h
@@ -88,6 +88,143 @@
 #define FFA_VERSION_1_0		PACK_VERSION_INFO(1, 0)
 #define FFA_MIN_VERSION		FFA_VERSION_1_0
 
+struct ffa_mem_region_addr_range {
+	/* The base IPA of the constituent memory region, aligned to 4 kiB */
+	u64 address;
+	/* The number of 4 kiB pages in the constituent memory region. */
+	u32 pg_cnt;
+	u32 reserved;
+};
+
+struct ffa_composite_mem_region {
+	/*
+	 * The total number of 4 kiB pages included in this memory region. This
+	 * must be equal to the sum of page counts specified in each
+	 * `struct ffa_mem_region_addr_range`.
+	 */
+	u32 total_pg_cnt;
+	/* The number of constituents included in this memory region range */
+	u32 addr_range_cnt;
+	u64 reserved;
+	/** An array of `addr_range_cnt` memory region constituents. */
+	struct ffa_mem_region_addr_range constituents[];
+};
+
+struct ffa_mem_region_attributes {
+	/* The ID of the VM to which the memory is being given or shared. */
+	u16 receiver;
+	/*
+	 * The permissions with which the memory region should be mapped in the
+	 * receiver's page table.
+	 */
+#define FFA_MEM_EXEC	BIT(3)
+#define FFA_MEM_NO_EXEC	BIT(2)
+#define FFA_MEM_RW		BIT(1)
+#define FFA_MEM_RO		BIT(0)
+	u8 attrs;
+	/*
+	 * Flags used during FFA_MEM_RETRIEVE_REQ and FFA_MEM_RETRIEVE_RESP
+	 * for memory regions with multiple borrowers.
+	 */
+#define FFA_MEM_RETRIEVE_SELF_BORROWER	BIT(0)
+	u8 flag;
+	u32 composite_off;
+	/*
+	 * Offset in bytes from the start of the outer `ffa_memory_region` to
+	 * an `struct ffa_mem_region_addr_range`.
+	 */
+	u64 reserved;
+};
+
+struct ffa_mem_region {
+	/* The ID of the VM/owner which originally sent the memory region */
+	u16 sender_id;
+#define FFA_MEM_NORMAL		BIT(5)
+#define FFA_MEM_DEVICE		BIT(4)
+
+#define FFA_MEM_WRITE_BACK	(3 << 2)
+#define FFA_MEM_NON_CACHEABLE	(1 << 2)
+
+#define FFA_DEV_nGnRnE		(0 << 2)
+#define FFA_DEV_nGnRE		(1 << 2)
+#define FFA_DEV_nGRE		(2 << 2)
+#define FFA_DEV_GRE		(3 << 2)
+
+#define FFA_MEM_NON_SHAREABLE	(0)
+#define FFA_MEM_OUTER_SHAREABLE	(2)
+#define FFA_MEM_INNER_SHAREABLE	(3)
+	u8 attributes;
+	u8 reserved_0;
+/*
+ * Clear memory region contents after unmapping it from the sender and
+ * before mapping it for any receiver.
+ */
+#define FFA_MEM_CLEAR			BIT(0)
+/*
+ * Whether the hypervisor may time slice the memory sharing or retrieval
+ * operation.
+ */
+#define FFA_TIME_SLICE_ENABLE		BIT(1)
+
+/*
+ * Whether the hypervisor should clear the memory region before the receiver
+ * relinquishes it or is aborted.
+ */
+#define FFA_MEM_CLEAR_BEFORE_RELINQUISH	BIT(0)
+/*
+ * Whether the hypervisor should clear the memory region after the receiver
+ * relinquishes it or is aborted.
+ */
+#define FFA_MEM_CLEAR_AFTER_RELINQUISH	BIT(2)
+
+#define FFA_MEM_RETRIEVE_TYPE_IN_RESP	(0 << 3)
+#define FFA_MEM_RETRIEVE_TYPE_SHARE	(1 << 3)
+#define FFA_MEM_RETRIEVE_TYPE_LEND	(2 << 3)
+#define FFA_MEM_RETRIEVE_TYPE_DONATE	(3 << 3)
+
+#define FFA_MEM_RETRIEVE_ADDR_ALIGN_HINT	BIT(9)
+#define FFA_MEM_RETRIEVE_ADDR_ALIGN(x)		((x) << 5)
+	/* Flags to control behaviour of the transaction. */
+	u32 flags;
+#define HANDLE_LOW_MASK		GENMASK_ULL(31, 0)
+#define HANDLE_HIGH_MASK	GENMASK_ULL(63, 32)
+#define HANDLE_LOW(x)		(u32)(FIELD_GET(HANDLE_LOW_MASK, (x)))
+#define	HANDLE_HIGH(x)		(u32)(FIELD_GET(HANDLE_HIGH_MASK, (x)))
+
+#define PACK_HANDLE(l, h)		\
+	(FIELD_PREP(HANDLE_LOW_MASK, (l)) | FIELD_PREP(HANDLE_HIGH_MASK, (h)))
+	/*
+	 * A globally-unique ID assigned by the hypervisor for a region
+	 * of memory being sent between VMs.
+	 */
+	u64 handle;
+	/*
+	 * An implementation defined value associated with the receiver and the
+	 * memory region.
+	 */
+	u64 tag;
+	u32 reserved_1;
+	/*
+	 * The number of `ffa_mem_region_attributes` entries included in this
+	 * transaction.
+	 */
+	u32 ep_count;
+	/*
+	 * An array of endpoint memory access descriptors.
+	 * Each one specifies a memory region offset, an endpoint and the
+	 * attributes with which this memory region should be mapped in that
+	 * endpoint's page table.
+	 */
+	struct ffa_mem_region_attributes ep_mem_access[];
+};
+
+#define	COMPOSITE_OFFSET(x)	\
+	(offsetof(struct ffa_mem_region, ep_mem_access[x]))
+#define CONSTITUENTS_OFFSET(x)	\
+	(offsetof(struct ffa_composite_mem_region, constituents[x]))
+#define COMPOSITE_CONSTITUENTS_OFFSET(x, y)	\
+	(COMPOSITE_OFFSET(x) + CONSTITUENTS_OFFSET(y))
+
 /* FFA Device/Bus related */
 
 struct ffa_device {
diff --git a/include/uapi/linux/arm_ffa.h b/include/uapi/linux/arm_ffa.h
index 88ddddb4742f..be2cbf01e51c 100644
--- a/include/uapi/linux/arm_ffa.h
+++ b/include/uapi/linux/arm_ffa.h
@@ -47,10 +47,21 @@ struct ffa_send_recv_async {
 	char buffer[];
 };
 
+struct ffa_mem_ops_args {
+	bool use_txbuf;
+	u64 tag;
+	u32 flags;
+	struct ffa_mem_region_attributes *attrs;
+	u32 nattrs;
+	struct scatterlist *sg;
+	u64 *g_handle;
+};
+
 #define FFA_GET_API_VERSION	_IO(FFA_BASE, 0x00)
 #define FFA_GET_PARTITION_ID	_IO(FFA_BASE, 0x01)
 #define FFA_GET_PARTITION_INFO	_IOWR(FFA_BASE, 0x02, struct ffa_part_info)
 #define FFA_SEND_RECEIVE_SYNC	_IOWR(FFA_BASE, 0x03, struct ffa_send_recv_sync)
 #define FFA_SEND_RECEIVE_ASYNC	_IOW(FFA_BASE, 0x04, struct ffa_send_recv_async)
+#define FFA_SHARE_MEMORY	_IOW(FFA_BASE, 0x05, struct ffa_mem_ops_args)
 
 #endif /*_UAPI_LINUX_ARM_FFA_H*/
-- 
2.25.1


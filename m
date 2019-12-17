Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A805C12245F
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2019 06:57:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727124AbfLQF4h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Dec 2019 00:56:37 -0500
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1]:7202 "EHLO
        mx0a-001b2d01.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725836AbfLQF4g (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 17 Dec 2019 00:56:36 -0500
Received: from pps.filterd (m0098409.ppops.net [127.0.0.1])
        by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id xBH5l1wu012686;
        Tue, 17 Dec 2019 00:56:19 -0500
Received: from pps.reinject (localhost [127.0.0.1])
        by mx0a-001b2d01.pphosted.com with ESMTP id 2wwdq08vqf-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 17 Dec 2019 00:56:18 -0500
Received: from m0098409.ppops.net (m0098409.ppops.net [127.0.0.1])
        by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id xBH5mkcC016723;
        Tue, 17 Dec 2019 00:56:18 -0500
Received: from ppma04dal.us.ibm.com (7a.29.35a9.ip4.static.sl-reverse.com [169.53.41.122])
        by mx0a-001b2d01.pphosted.com with ESMTP id 2wwdq08vq3-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 17 Dec 2019 00:56:18 -0500
Received: from pps.filterd (ppma04dal.us.ibm.com [127.0.0.1])
        by ppma04dal.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id xBH5takn002393;
        Tue, 17 Dec 2019 05:56:17 GMT
Received: from b01cxnp22033.gho.pok.ibm.com (b01cxnp22033.gho.pok.ibm.com [9.57.198.23])
        by ppma04dal.us.ibm.com with ESMTP id 2wvqc6g165-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 17 Dec 2019 05:56:17 +0000
Received: from b01ledav001.gho.pok.ibm.com (b01ledav001.gho.pok.ibm.com [9.57.199.106])
        by b01cxnp22033.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id xBH5uGwo45941002
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Tue, 17 Dec 2019 05:56:16 GMT
Received: from b01ledav001.gho.pok.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 863DF28059;
        Tue, 17 Dec 2019 05:56:16 +0000 (GMT)
Received: from b01ledav001.gho.pok.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id CBDFC28058;
        Tue, 17 Dec 2019 05:56:15 +0000 (GMT)
Received: from [9.70.82.143] (unknown [9.70.82.143])
        by b01ledav001.gho.pok.ibm.com (Postfix) with ESMTP;
        Tue, 17 Dec 2019 05:56:15 +0000 (GMT)
Subject: [PATCH V3 04/13] powerpc/vas: Setup fault window per VAS instance
From:   Haren Myneni <haren@linux.ibm.com>
To:     mpe@ellerman.id.au
Cc:     hch@infradead.org, devicetree@vger.kernel.org, mikey@neuling.org,
        herbert@gondor.apana.org.au, npiggin@gmail.com,
        linuxppc-dev@lists.ozlabs.org, sukadev@linux.vnet.ibm.com
In-Reply-To: <1576561080.16318.6531.camel@hbabu-laptop>
References: <1576561080.16318.6531.camel@hbabu-laptop>
Content-Type: text/plain; charset="UTF-8"
Date:   Mon, 16 Dec 2019 21:54:23 -0800
Message-ID: <1576562063.16318.6538.camel@hbabu-laptop>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Content-Transfer-Encoding: 7bit
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-17_01:2019-12-16,2019-12-16 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 priorityscore=1501
 suspectscore=3 lowpriorityscore=0 spamscore=0 clxscore=1015
 impostorscore=0 mlxlogscore=999 malwarescore=0 bulkscore=0 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1910280000 definitions=main-1912170052
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Setup fault window for each VAS instance. When NX gets fault on request
buffer, write fault CRBs in the corresponding fault FIFO and then sends
an interrupt to the OS.

Signed-off-by: Sukadev Bhattiprolu <sukadev@linux.vnet.ibm.com>
Signed-off-by: Haren Myneni <haren@us.ibm.com>
---
 arch/powerpc/platforms/powernv/Makefile     |   2 +-
 arch/powerpc/platforms/powernv/vas-fault.c  |  73 ++++++++++++++++++++++++++++
 arch/powerpc/platforms/powernv/vas-window.c |   3 +-
 arch/powerpc/platforms/powernv/vas.c        |  20 ++++++++
 arch/powerpc/platforms/powernv/vas.h        |   5 ++
 scripts/pnmtologo                           | Bin 0 -> 71976 bytes
 6 files changed, 101 insertions(+), 2 deletions(-)
 create mode 100644 arch/powerpc/platforms/powernv/vas-fault.c
 create mode 100755 scripts/pnmtologo

diff --git a/arch/powerpc/platforms/powernv/Makefile b/arch/powerpc/platforms/powernv/Makefile
index c0f8120..395789f 100644
--- a/arch/powerpc/platforms/powernv/Makefile
+++ b/arch/powerpc/platforms/powernv/Makefile
@@ -17,7 +17,7 @@ obj-$(CONFIG_MEMORY_FAILURE)	+= opal-memory-errors.o
 obj-$(CONFIG_OPAL_PRD)	+= opal-prd.o
 obj-$(CONFIG_PERF_EVENTS) += opal-imc.o
 obj-$(CONFIG_PPC_MEMTRACE)	+= memtrace.o
-obj-$(CONFIG_PPC_VAS)	+= vas.o vas-window.o vas-debug.o
+obj-$(CONFIG_PPC_VAS)	+= vas.o vas-window.o vas-debug.o vas-fault.o
 obj-$(CONFIG_OCXL_BASE)	+= ocxl.o
 obj-$(CONFIG_SCOM_DEBUGFS) += opal-xscom.o
 obj-$(CONFIG_PPC_SECURE_BOOT) += opal-secvar.o
diff --git a/arch/powerpc/platforms/powernv/vas-fault.c b/arch/powerpc/platforms/powernv/vas-fault.c
new file mode 100644
index 0000000..b0258ed
--- /dev/null
+++ b/arch/powerpc/platforms/powernv/vas-fault.c
@@ -0,0 +1,73 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * VAS Fault handling.
+ * Copyright 2019, IBM Corporation
+ */
+
+#define pr_fmt(fmt) "vas: " fmt
+
+#include <linux/kernel.h>
+#include <linux/types.h>
+#include <linux/slab.h>
+#include <linux/uaccess.h>
+#include <linux/kthread.h>
+#include <asm/icswx.h>
+
+#include "vas.h"
+
+/*
+ * The maximum FIFO size for fault window can be 8MB
+ * (VAS_RX_FIFO_SIZE_MAX). Using 4MB FIFO since each VAS
+ * instance will be having fault window.
+ * 8MB FIFO can be used if expects more faults for each VAS
+ * instance.
+ */
+#define VAS_FAULT_WIN_FIFO_SIZE	(4 << 20)
+
+/*
+ * Fault window is opened per VAS instance. NX pastes fault CRB in fault
+ * FIFO upon page faults.
+ */
+int vas_setup_fault_window(struct vas_instance *vinst)
+{
+	struct vas_rx_win_attr attr;
+
+	vinst->fault_fifo_size = VAS_FAULT_WIN_FIFO_SIZE;
+	vinst->fault_fifo = kzalloc(vinst->fault_fifo_size, GFP_KERNEL);
+	if (!vinst->fault_fifo) {
+		pr_err("Unable to alloc %d bytes for fault_fifo\n",
+				vinst->fault_fifo_size);
+		return -ENOMEM;
+	}
+
+	vas_init_rx_win_attr(&attr, VAS_COP_TYPE_FAULT);
+
+	attr.rx_fifo_size = vinst->fault_fifo_size;
+	attr.rx_fifo = vinst->fault_fifo;
+
+	/*
+	 * Max creds is based on number of CRBs can fit in the FIFO.
+	 * (fault_fifo_size/CRB_SIZE). If 8MB FIFO is used, max creds
+	 * will be 0xffff since the receive creds field is 16bits wide.
+	 */
+	attr.wcreds_max = vinst->fault_fifo_size / CRB_SIZE;
+	attr.lnotify_lpid = 0;
+	attr.lnotify_pid = mfspr(SPRN_PID);
+	attr.lnotify_tid = mfspr(SPRN_PID);
+
+	vinst->fault_win = vas_rx_win_open(vinst->vas_id, VAS_COP_TYPE_FAULT,
+					&attr);
+
+	if (IS_ERR(vinst->fault_win)) {
+		pr_err("VAS: Error %ld opening FaultWin\n",
+			PTR_ERR(vinst->fault_win));
+		kfree(vinst->fault_fifo);
+		return PTR_ERR(vinst->fault_win);
+	}
+
+	pr_devel("VAS: Created FaultWin %d, LPID/PID/TID [%d/%d/%d]\n",
+			vinst->fault_win->winid, attr.lnotify_lpid,
+			attr.lnotify_pid, attr.lnotify_tid);
+
+	return 0;
+}
diff --git a/arch/powerpc/platforms/powernv/vas-window.c b/arch/powerpc/platforms/powernv/vas-window.c
index 0c0d27d..f07f49a 100644
--- a/arch/powerpc/platforms/powernv/vas-window.c
+++ b/arch/powerpc/platforms/powernv/vas-window.c
@@ -827,9 +827,10 @@ void vas_init_rx_win_attr(struct vas_rx_win_attr *rxattr, enum vas_cop_type cop)
 		rxattr->fault_win = true;
 		rxattr->notify_disable = true;
 		rxattr->rx_wcred_mode = true;
-		rxattr->tx_wcred_mode = true;
 		rxattr->rx_win_ord_mode = true;
 		rxattr->tx_win_ord_mode = true;
+		rxattr->rej_no_credit = true;
+		rxattr->tc_mode = VAS_THRESH_DISABLED;
 	} else if (cop == VAS_COP_TYPE_FTW) {
 		rxattr->user_win = true;
 		rxattr->intr_disable = true;
diff --git a/arch/powerpc/platforms/powernv/vas.c b/arch/powerpc/platforms/powernv/vas.c
index 40d8213..850863c 100644
--- a/arch/powerpc/platforms/powernv/vas.c
+++ b/arch/powerpc/platforms/powernv/vas.c
@@ -23,6 +23,11 @@
 
 static DEFINE_PER_CPU(int, cpu_vas_id);
 
+static int vas_irq_fault_window_setup(struct vas_instance *vinst)
+{
+	return vas_setup_fault_window(vinst);
+}
+
 static int init_vas_instance(struct platform_device *pdev)
 {
 	struct device_node *dn = pdev->dev.of_node;
@@ -106,6 +111,21 @@ static int init_vas_instance(struct platform_device *pdev)
 	list_add(&vinst->node, &vas_instances);
 	mutex_unlock(&vas_mutex);
 
+	/*
+	 * IRQ and fault handling setup is needed only for user space
+	 * send windows.
+	 */
+	if (vinst->virq) {
+		rc = vas_irq_fault_window_setup(vinst);
+		/*
+		 * Fault window is used only for user space send windows.
+		 * So if vinst->virq is NULL, tx_win_open returns -ENODEV
+		 * for user space.
+		 */
+		if (rc)
+			vinst->virq = 0;
+	}
+
 	vas_instance_init_dbgdir(vinst);
 
 	dev_set_drvdata(&pdev->dev, vinst);
diff --git a/arch/powerpc/platforms/powernv/vas.h b/arch/powerpc/platforms/powernv/vas.h
index 598608b..9f08daa 100644
--- a/arch/powerpc/platforms/powernv/vas.h
+++ b/arch/powerpc/platforms/powernv/vas.h
@@ -315,6 +315,10 @@ struct vas_instance {
 
 	u64 irq_port;
 	int virq;
+	int fault_fifo_size;
+	void *fault_fifo;
+	struct vas_window *fault_win; /* Fault window */
+
 	struct mutex mutex;
 	struct vas_window *rxwin[VAS_COP_TYPE_MAX];
 	struct vas_window *windows[VAS_WINDOWS_PER_CHIP];
@@ -408,6 +412,7 @@ struct vas_winctx {
 extern void vas_instance_init_dbgdir(struct vas_instance *vinst);
 extern void vas_window_init_dbgdir(struct vas_window *win);
 extern void vas_window_free_dbgdir(struct vas_window *win);
+extern int vas_setup_fault_window(struct vas_instance *vinst);
 
 static inline void vas_log_write(struct vas_window *win, char *name,
 			void *regptr, u64 val)




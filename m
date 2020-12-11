Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D94422D7458
	for <lists+devicetree@lfdr.de>; Fri, 11 Dec 2020 11:57:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2394295AbgLKK4b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Dec 2020 05:56:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728704AbgLKKzc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Dec 2020 05:55:32 -0500
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com [IPv6:2607:f8b0:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D60BC0613D3
        for <devicetree@vger.kernel.org>; Fri, 11 Dec 2020 02:54:52 -0800 (PST)
Received: by mail-ot1-x342.google.com with SMTP id x13so7834532oto.8
        for <devicetree@vger.kernel.org>; Fri, 11 Dec 2020 02:54:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OU0JEzTbJ7fkYYLfQtmvu91mo3cWoEjESnUS3uYaRIs=;
        b=EgRtl9pbFqbhuHAgRai+ek6oXd/U1cm1gdzdRYbjEKxKqowl3/LNnNMlWPcrVaX44I
         QOWPlKhKltYfUfZDnHepzuN8b9/6Rd0VHOPvHiYhHNS/AqmeWwSXTUCTErIucG6WEjHk
         IJEO1M5TWJ0w5Zb3t9n/joiyyr/nFdE571dBVndvjbLtzFw8+AQb2EoovmGvfpMkXMOY
         t16euM3nPoxpIg6yTEMqvhqlXfwLC2Dd4EcpV5As2v9E6rYiNU44LL1SWlf9UQdNPf5a
         9Y7goEMIESZSjefw+lDf1MX2DkxjnT6zTWB2JghLZxZcenMB/0koms675CGhgO/4+Con
         DrRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OU0JEzTbJ7fkYYLfQtmvu91mo3cWoEjESnUS3uYaRIs=;
        b=LUYeDIuKOuuMCGxZmBRwZttr9gT8X4Yw9js39QC8mqixxV4RBjhT63zemM0BtpbnJG
         4J/033CcJAO117bNglBS26XewcWUs7rwl5tIwwbpPfOCwboBr4RNdR637ezU3bBdJ217
         +mm9x1G5HNbSkV3zgSofhIAzj0I8tyozF2VntBAqY8ncGZuEV2oPQOdtliJKuUU3ymtz
         pbHJkeZMrBvB9F6cUVGn6w+UmvqCwIofFZPaRELR6KLEY1SqOR3TmxUgQ2Hh13odsbah
         q1HAtiW76P4uHnkxSKUnOWTfS2sgWc9/sZtPiyt898J5OcCJK8m8oX/WcRXgn1bOA6ET
         VETQ==
X-Gm-Message-State: AOAM532YFrssvts418Qk5vFeODHyWNDBU/RbsmJuuSDUL+5OsOIEH2RN
        db5pBzMuJGnlxN3ZBDhpc23hbu6OeZTKwRdHhQswBg==
X-Google-Smtp-Source: ABdhPJzQaY8rnNZ4EI0oXx7hjDNbJOpNAlmjUkHtW+aJOF6ZkfMKOg+8l2yQDCH+DJClqFYfcNaIBhq4Us14Xbg4xTE=
X-Received: by 2002:a9d:64da:: with SMTP id n26mr9690886otl.283.1607684091413;
 Fri, 11 Dec 2020 02:54:51 -0800 (PST)
MIME-Version: 1.0
References: <20201204121137.2966778-1-sudeep.holla@arm.com> <20201204121137.2966778-8-sudeep.holla@arm.com>
In-Reply-To: <20201204121137.2966778-8-sudeep.holla@arm.com>
From:   Jens Wiklander <jens.wiklander@linaro.org>
Date:   Fri, 11 Dec 2020 11:54:40 +0100
Message-ID: <CAHUa44Gkp01SJdW65uGGJDHbW0ZDqYWbyoeEz1LfotjGA0peTA@mail.gmail.com>
Subject: Re: [PATCH v3 7/7] firmware: arm_ffa: Add support for MEM_* interfaces
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        Trilok Soni <tsoni@codeaurora.org>, arve@android.com,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Arunachalam Ganapathy <arunachalam.ganapathy@arm.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 4, 2020 at 1:11 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> Most of the MEM_* APIs share the same parameters, so they can be
> generalised. Currently only MEM_SHARE is implemented and the user space
> interface for that is not added yet.
>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  drivers/firmware/arm_ffa/driver.c | 180 ++++++++++++++++++++++++++++++
>  include/linux/arm_ffa.h           | 149 +++++++++++++++++++++++++
>  2 files changed, 329 insertions(+)
>
> diff --git a/drivers/firmware/arm_ffa/driver.c b/drivers/firmware/arm_ffa/driver.c
> index 3e4ba841dbf8..92a0bf542f18 100644
> --- a/drivers/firmware/arm_ffa/driver.c
> +++ b/drivers/firmware/arm_ffa/driver.c
> @@ -28,7 +28,9 @@
>  #include <linux/io.h>
>  #include <linux/kernel.h>
>  #include <linux/module.h>
> +#include <linux/mm.h>
>  #include <linux/of.h>
> +#include <linux/scatterlist.h>
>  #include <linux/slab.h>
>  #include <linux/uuid.h>
>
> @@ -306,6 +308,177 @@ static int ffa_msg_send_direct_req(u16 src_id, u16 dst_id,
>         return 0;
>  }
>
> +static int ffa_mem_first_frag(u32 func_id, phys_addr_t buf, u32 buf_sz,
> +                             u32 frag_len, u32 len, u64 *handle)
> +{
> +       ffa_res_t ret;
> +
> +       ret = invoke_ffa_fn(func_id, len, frag_len, buf, buf_sz, 0, 0, 0);
> +
> +       while (ret.a0 == FFA_MEM_OP_PAUSE)
> +               ret = invoke_ffa_fn(FFA_MEM_OP_RESUME, ret.a1, ret.a2,
> +                                   0, 0, 0, 0, 0);
> +       if (ret.a0 == FFA_ERROR)
> +               return ffa_to_linux_errno((int)ret.a2);
> +
> +       if (ret.a0 != FFA_SUCCESS)
> +               return -EOPNOTSUPP;
> +
> +       if (handle)
> +               *handle = PACK_HANDLE(ret.a3, ret.a2);
ret.a2 are the lower 32bit and ret.a3 the higher 32bits according to
5.10.2 Memory region handle

> +
> +       return frag_len;
> +}
> +
> +static int ffa_mem_next_frag(u64 handle, u32 frag_len)
> +{
> +       ffa_res_t ret;
> +
> +       ret = invoke_ffa_fn(FFA_MEM_FRAG_TX, HANDLE_LOW(handle),
> +                           HANDLE_HIGH(handle), frag_len, 0, 0, 0, 0);
> +
> +       while (ret.a0 == FFA_MEM_OP_PAUSE)
> +               ret = invoke_ffa_fn(FFA_MEM_OP_RESUME, ret.a1, ret.a2,
> +                                   0, 0, 0, 0, 0);
> +       if (ret.a0 == FFA_ERROR)
> +               return ffa_to_linux_errno((int)ret.a2);
> +
> +       if (ret.a0 != FFA_MEM_FRAG_RX)
> +               return -EOPNOTSUPP;
> +
> +       return ret.a3;
> +}
> +
> +static int
> +ffa_transmit_fragment(u32 func_id, phys_addr_t buf, u32 buf_sz, u32 frag_len,
> +                     u32 len, u64 *handle, bool first)
> +{
> +       if (!first)
> +               return ffa_mem_next_frag(*handle, frag_len);
> +
> +       return ffa_mem_first_frag(func_id, buf, buf_sz, frag_len,
> +                                     len, handle);
> +}
> +
> +static u32 ffa_get_num_pages_sg(struct scatterlist *sg)
> +{
> +       u32 num_pages = 0;
> +
> +       do {
> +               num_pages += sg->length / FFA_PAGE_SIZE;
> +       } while ((sg = sg_next(sg)));
> +
> +       return num_pages;
> +}
> +
> +static int
> +ffa_setup_and_transmit(u32 func_id, void *buffer, u32 max_fragsize,
> +                      struct ffa_mem_ops_args *args)
> +{
> +       int rc = 0;
> +       bool first = true;
> +       phys_addr_t addr = 0;
> +       struct ffa_composite_mem_region *composite;
> +       struct ffa_mem_region_addr_range *constituents;
> +       struct ffa_mem_region_attributes *ep_mem_access;
> +       struct ffa_mem_region *mem_region = buffer;
> +       u32 idx, frag_len, length, num_entries = sg_nents(args->sg);
> +       u32 buf_sz = max_fragsize / FFA_PAGE_SIZE;
This must be zero following the same logic as for addr, see 11.3 FFA_MEM_SHARE

> +
> +       mem_region->tag = args->tag;
> +       mem_region->flags = args->flags;
> +       mem_region->sender_id = drv_info->vm_id;
> +       mem_region->attributes = FFA_MEM_NORMAL | FFA_MEM_WRITE_BACK |
> +                                FFA_MEM_INNER_SHAREABLE;
> +       ep_mem_access = &mem_region->ep_mem_access[0];
> +
> +       for (idx = 0; idx < args->nattrs; idx++, ep_mem_access++) {
> +               ep_mem_access->receiver = args->attrs[idx].receiver;
> +               ep_mem_access->attrs = args->attrs[idx].attrs;
> +               ep_mem_access->composite_off = COMPOSITE_OFFSET(args->nattrs);
> +       }
> +       mem_region->ep_count = args->nattrs;
> +
> +       composite = buffer + COMPOSITE_OFFSET(args->nattrs);
> +       composite->total_pg_cnt = ffa_get_num_pages_sg(args->sg);
> +       composite->addr_range_cnt = num_entries;
> +
> +       length = COMPOSITE_CONSTITUENTS_OFFSET(args->nattrs, num_entries);
> +       frag_len = COMPOSITE_CONSTITUENTS_OFFSET(args->nattrs, 0);
> +       if (frag_len > max_fragsize)
> +               return -ENXIO;
> +
> +       if (!args->use_txbuf)
> +               addr = virt_to_phys(buffer);
> +
> +       constituents = buffer + frag_len;
> +       idx = 0;
> +       do {
> +               if (frag_len == max_fragsize) {
> +                       rc = ffa_transmit_fragment(func_id, addr, buf_sz,
> +                                                  frag_len, length,
> +                                                  args->g_handle, first);
> +                       if (rc < 0)
> +                               return -ENXIO;
> +
> +                       first = false;
> +                       idx = 0;
> +                       frag_len = 0;
> +                       constituents = buffer;
> +               }
> +
> +               if ((void *)constituents - buffer > max_fragsize) {
> +                       pr_err("Memory Region Fragment > Tx Buffer size\n");
> +                       return -EFAULT;
> +               }
> +
> +               constituents->address = sg_phys(args->sg);
> +               constituents->pg_cnt = args->sg->length / FFA_PAGE_SIZE;
> +               constituents++;
> +               frag_len += sizeof(struct ffa_mem_region_addr_range);
> +       } while ((args->sg = sg_next(args->sg)));
> +
> +       return ffa_transmit_fragment(func_id, addr, buf_sz, frag_len,
> +                                    length, args->g_handle, first);
> +}
> +
> +static int ffa_memory_ops(u32 func_id, struct ffa_mem_ops_args *args)
> +{
> +       int ret;
> +       void *buffer;
> +
> +       if (!args->use_txbuf) {
> +               buffer = alloc_pages_exact(RXTX_BUFFER_SIZE, GFP_KERNEL);
> +               if (!buffer)
> +                       return -ENOMEM;
> +       } else {
> +               buffer = drv_info->tx_buffer;
> +               mutex_lock(&drv_info->tx_lock);
> +       }
> +
> +       ret = ffa_setup_and_transmit(func_id, buffer, RXTX_BUFFER_SIZE, args);
> +
> +       if (args->use_txbuf)
> +               mutex_unlock(&drv_info->tx_lock);
> +       else
> +               free_pages_exact(buffer, RXTX_BUFFER_SIZE);
> +
> +       return ret < 0 ? ret : 0;
> +}
> +
> +static int ffa_memory_reclaim(u64 g_handle, u32 flags)
> +{
> +       ffa_res_t ret;
> +
> +       ret = invoke_ffa_fn(FFA_MEM_RECLAIM, HANDLE_LOW(g_handle),
> +                           HANDLE_HIGH(g_handle), flags, 0, 0, 0, 0);
> +
> +       if (ret.a0 == FFA_ERROR)
> +               return ffa_to_linux_errno((int)ret.a2);
> +
> +       return 0;
> +}
> +
>  static u32 ffa_api_version_get(void)
>  {
>         return drv_info->version;
> @@ -331,11 +504,18 @@ static int ffa_sync_send_receive(struct ffa_device *dev, u16 ep,
>         return ffa_msg_send_direct_req(dev->vm_id, ep, data);
>  }
>
> +static int ffa_memory_share(struct ffa_mem_ops_args *args)
> +{
> +       return ffa_memory_ops(FFA_FN_NATIVE(MEM_SHARE), args);
> +}
> +
>  static const struct ffa_dev_ops ffa_ops = {
>         .api_version_get = ffa_api_version_get,
>         .partition_id_get = ffa_partition_id_get,
>         .partition_info_get = ffa_partition_info_get,
>         .sync_send_receive = ffa_sync_send_receive,
> +       .memory_reclaim = ffa_memory_reclaim,
> +       .memory_share = ffa_memory_share,
>  };
>
>  const struct ffa_dev_ops *ffa_dev_ops_get(struct ffa_device *dev)
> diff --git a/include/linux/arm_ffa.h b/include/linux/arm_ffa.h
> index 8604c48289ce..67e3180e7097 100644
> --- a/include/linux/arm_ffa.h
> +++ b/include/linux/arm_ffa.h
> @@ -109,6 +109,153 @@ struct ffa_send_direct_data {
>         unsigned long data4;
>  };
>
> +struct ffa_mem_region_addr_range {
> +       /* The base IPA of the constituent memory region, aligned to 4 kiB */
> +       u64 address;
> +       /* The number of 4 kiB pages in the constituent memory region. */
> +       u32 pg_cnt;
> +       u32 reserved;
> +};
> +
> +struct ffa_composite_mem_region {
> +       /*
> +        * The total number of 4 kiB pages included in this memory region. This
> +        * must be equal to the sum of page counts specified in each
> +        * `struct ffa_mem_region_addr_range`.
> +        */
> +       u32 total_pg_cnt;
> +       /* The number of constituents included in this memory region range */
> +       u32 addr_range_cnt;
> +       u64 reserved;
> +       /** An array of `addr_range_cnt` memory region constituents. */
> +       struct ffa_mem_region_addr_range constituents[];
> +};
> +
> +struct ffa_mem_region_attributes {
> +       /* The ID of the VM to which the memory is being given or shared. */
> +       u16 receiver;
> +       /*
> +        * The permissions with which the memory region should be mapped in the
> +        * receiver's page table.
> +        */
> +#define FFA_MEM_EXEC   BIT(3)
> +#define FFA_MEM_NO_EXEC        BIT(2)
> +#define FFA_MEM_RW             BIT(1)
> +#define FFA_MEM_RO             BIT(0)
> +       u8 attrs;
> +       /*
> +        * Flags used during FFA_MEM_RETRIEVE_REQ and FFA_MEM_RETRIEVE_RESP
> +        * for memory regions with multiple borrowers.
> +        */
> +#define FFA_MEM_RETRIEVE_SELF_BORROWER BIT(0)
> +       u8 flag;
> +       u32 composite_off;
> +       /*
> +        * Offset in bytes from the start of the outer `ffa_memory_region` to
> +        * an `struct ffa_mem_region_addr_range`.
> +        */
> +       u64 reserved;
> +};
> +
> +struct ffa_mem_region {
> +       /* The ID of the VM/owner which originally sent the memory region */
> +       u16 sender_id;
> +#define FFA_MEM_NORMAL         BIT(5)
> +#define FFA_MEM_DEVICE         BIT(4)
> +
> +#define FFA_MEM_WRITE_BACK     (3 << 2)
> +#define FFA_MEM_NON_CACHEABLE  (1 << 2)
> +
> +#define FFA_DEV_nGnRnE         (0 << 2)
> +#define FFA_DEV_nGnRE          (1 << 2)
> +#define FFA_DEV_nGRE           (2 << 2)
> +#define FFA_DEV_GRE            (3 << 2)
> +
> +#define FFA_MEM_NON_SHAREABLE  (0)
> +#define FFA_MEM_OUTER_SHAREABLE        (2)
> +#define FFA_MEM_INNER_SHAREABLE        (3)
> +       u8 attributes;
> +       u8 reserved_0;
> +/*
> + * Clear memory region contents after unmapping it from the sender and
> + * before mapping it for any receiver.
> + */
> +#define FFA_MEM_CLEAR                  BIT(0)
> +/*
> + * Whether the hypervisor may time slice the memory sharing or retrieval
> + * operation.
> + */
> +#define FFA_TIME_SLICE_ENABLE          BIT(1)
> +
> +/*
> + * Whether the hypervisor should clear the memory region before the receiver
> + * relinquishes it or is aborted.
> + */
> +#define FFA_MEM_CLEAR_BEFORE_RELINQUISH        BIT(0)
> +/*
> + * Whether the hypervisor should clear the memory region after the receiver
> + * relinquishes it or is aborted.
> + */
> +#define FFA_MEM_CLEAR_AFTER_RELINQUISH BIT(2)
> +
> +#define FFA_MEM_RETRIEVE_TYPE_IN_RESP  (0 << 3)
> +#define FFA_MEM_RETRIEVE_TYPE_SHARE    (1 << 3)
> +#define FFA_MEM_RETRIEVE_TYPE_LEND     (2 << 3)
> +#define FFA_MEM_RETRIEVE_TYPE_DONATE   (3 << 3)
> +
> +#define FFA_MEM_RETRIEVE_ADDR_ALIGN_HINT       BIT(9)
> +#define FFA_MEM_RETRIEVE_ADDR_ALIGN(x)         ((x) << 5)
> +       /* Flags to control behaviour of the transaction. */
> +       u32 flags;
> +#define HANDLE_LOW_MASK                GENMASK_ULL(31, 0)
> +#define HANDLE_HIGH_MASK       GENMASK_ULL(63, 32)
> +#define HANDLE_LOW(x)          (u32)(FIELD_GET(HANDLE_LOW_MASK, (x)))
> +#define        HANDLE_HIGH(x)          (u32)(FIELD_GET(HANDLE_HIGH_MASK, (x)))
> +
> +#define PACK_HANDLE(l, h)              \
> +       (FIELD_PREP(HANDLE_LOW_MASK, (l)) | FIELD_PREP(HANDLE_HIGH_MASK, (h)))
> +       /*
> +        * A globally-unique ID assigned by the hypervisor for a region
> +        * of memory being sent between VMs.
> +        */
> +       u64 handle;
> +       /*
> +        * An implementation defined value associated with the receiver and the
> +        * memory region.
> +        */
> +       u64 tag;
> +       u32 reserved_1;
> +       /*
> +        * The number of `ffa_mem_region_attributes` entries included in this
> +        * transaction.
> +        */
> +       u32 ep_count;
> +       /*
> +        * An array of endpoint memory access descriptors.
> +        * Each one specifies a memory region offset, an endpoint and the
> +        * attributes with which this memory region should be mapped in that
> +        * endpoint's page table.
> +        */
> +       struct ffa_mem_region_attributes ep_mem_access[];
> +};
> +
> +#define        COMPOSITE_OFFSET(x)     \
> +       (offsetof(struct ffa_mem_region, ep_mem_access[x]))
> +#define CONSTITUENTS_OFFSET(x) \
> +       (offsetof(struct ffa_composite_mem_region, constituents[x]))
> +#define COMPOSITE_CONSTITUENTS_OFFSET(x, y)    \
> +       (COMPOSITE_OFFSET(x) + CONSTITUENTS_OFFSET(y))
> +
> +struct ffa_mem_ops_args {
> +       bool use_txbuf;
> +       u64 tag;
> +       u32 flags;
> +       struct ffa_mem_region_attributes *attrs;
> +       u32 nattrs;
> +       struct scatterlist *sg;
> +       u64 *g_handle;
It seems a bit inconvenient with a pointer instead of a value here.


Cheers,
Jens

> +};
> +
>  struct ffa_dev_ops {
>         u32 (*api_version_get)(void);
>         u16 (*partition_id_get)(struct ffa_device *dev);
> @@ -116,6 +263,8 @@ struct ffa_dev_ops {
>                                   struct ffa_partition_info *buffer);
>         int (*sync_send_receive)(struct ffa_device *dev, u16 ep,
>                                  struct ffa_send_direct_data *data);
> +       int (*memory_reclaim)(u64 g_handle, u32 flags);
> +       int (*memory_share)(struct ffa_mem_ops_args *args);
>  };
>
>  #endif /* _LINUX_ARM_FFA_H */
> --
> 2.25.1
>

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 136282D746C
	for <lists+devicetree@lfdr.de>; Fri, 11 Dec 2020 12:02:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725943AbgLKLAr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Dec 2020 06:00:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2394180AbgLKLAc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Dec 2020 06:00:32 -0500
Received: from mail-oo1-xc41.google.com (mail-oo1-xc41.google.com [IPv6:2607:f8b0:4864:20::c41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BAB9C0613CF
        for <devicetree@vger.kernel.org>; Fri, 11 Dec 2020 02:59:52 -0800 (PST)
Received: by mail-oo1-xc41.google.com with SMTP id 9so2040817ooy.7
        for <devicetree@vger.kernel.org>; Fri, 11 Dec 2020 02:59:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JIfZleTBX2CqSvzbw42TY7f0BZhBxtSdKcn00Io5kPk=;
        b=CAo64bgX7q1TwGRSvLak52SF+OHSP1hKomgo2EnJJsSaPLgqg83uqJoVONvjntepej
         S459yCf7I7DXj5fWEPJyC5bZjeNiSXnQENbwWPeWlV9mYQyzgeYyjGdIsF4GiFWKim9W
         g6esjHIyAFsCknlq4GZt51IGWSuVqzp/9fz+30XZfcKxV2sswo0vLbih3T52CejPsa/8
         zs7hsvMJaj/N9/g+Yrq0kypvCbTJ60d4M0x9qNlhpQ9CpQfdjWY02K6BrKhS5eBNtOI3
         1mJt4xO2su2wNgLzB+dMnFBTS4aGIG7Fix6gglQCragE0VQUgZOJv55bE0rSoMOXAErc
         DyGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JIfZleTBX2CqSvzbw42TY7f0BZhBxtSdKcn00Io5kPk=;
        b=mCVW43gF7Xj7HJPRJ/VpMysbmrMvu7m+JvFicjpNtcvwE7bdBD7Vg/dzEthGnaHk7n
         xUtRwB7yfLfBbJUFLwwcJ5aO6OSCr+hQtwsSE1dQg1Stukbx1rH6sqLb3DxudY7r1lwk
         4T4R+7nv4J5XonSGA3C9zLB9DvxSn75tuikxv731Jv6mwNbB9lzfKaOFaelFUiLE8Mey
         0J2OMIFG0SPxfv91Gt/kW7oHVgDit4JvYgz+dw+S3M1Qn1WLjgWSLs/yKt0eFdsYY7Um
         973LQXK+f4UL/un8H2fMWxmsbzdDqU2+DOve6WwMY96AWNKjVKJCADTHLO43nHvogzx9
         oHEA==
X-Gm-Message-State: AOAM532rBXZRmGI6vkUc01x2fzlGJasOVNPcFJ5qpoMpOyv2iqpAHTbN
        uVJywHg6a/QBRk0qqRph1jZPjOiYCgDzycVB7LzA2g==
X-Google-Smtp-Source: ABdhPJzYvRFAPqJalvyBbSXD+eWseuSdVI5hHQsOGdMOp3sX8x3su3ZCfLPmJISKMrls9PrI6/o4YdkZPKqKL4yt47I=
X-Received: by 2002:a4a:9b16:: with SMTP id a22mr9590769ook.6.1607684391324;
 Fri, 11 Dec 2020 02:59:51 -0800 (PST)
MIME-Version: 1.0
References: <20201204121137.2966778-1-sudeep.holla@arm.com>
 <20201204121137.2966778-7-sudeep.holla@arm.com> <CAHUa44EfHeKgktefhH2nEM7E++Zap8Nw7kaSqVmYVoH01Zm1VQ@mail.gmail.com>
In-Reply-To: <CAHUa44EfHeKgktefhH2nEM7E++Zap8Nw7kaSqVmYVoH01Zm1VQ@mail.gmail.com>
From:   Jens Wiklander <jens.wiklander@linaro.org>
Date:   Fri, 11 Dec 2020 11:59:40 +0100
Message-ID: <CAHUa44HQJw=190MCphXecaQQn3HujHT6ZkSgG-PNARrKMQmQZw@mail.gmail.com>
Subject: Re: [PATCH v3 6/7] firmware: arm_ffa: Setup in-kernel users of FFA partitions
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

One more comment below.

On Fri, Dec 11, 2020 at 11:45 AM Jens Wiklander
<jens.wiklander@linaro.org> wrote:
>
> Hi Sudeep,
>
> Some more comments below.
>
> On Fri, Dec 4, 2020 at 1:11 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > Parse the FFA nodes from the device-tree and register all the partitions
> > whose services will be used in the kernel.
> >
> > In order to also enable in-kernel users of FFA interface, let us add
> > simple set of operations for such devices.
> >
> > The in-kernel users are registered without the character device interface.
> >
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > ---
> >  drivers/firmware/arm_ffa/common.h |   2 +
> >  drivers/firmware/arm_ffa/driver.c | 186 ++++++++++++++++++++++++++++++
> >  include/linux/arm_ffa.h           |  36 +++++-
> >  3 files changed, 223 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/firmware/arm_ffa/common.h b/drivers/firmware/arm_ffa/common.h
> > index d019348bf67d..eb1371c2b2b8 100644
> > --- a/drivers/firmware/arm_ffa/common.h
> > +++ b/drivers/firmware/arm_ffa/common.h
> > @@ -6,6 +6,7 @@
> >  #ifndef _FFA_COMMON_H
> >  #define _FFA_COMMON_H
> >
> > +#include <linux/arm_ffa.h>
> >  #include <linux/arm-smccc.h>
> >  #include <linux/err.h>
> >
> > @@ -17,6 +18,7 @@ typedef ffa_res_t
> >
> >  int __init arm_ffa_bus_init(void);
> >  void __exit arm_ffa_bus_exit(void);
> > +bool ffa_device_is_valid(struct ffa_device *ffa_dev);
> >
> >  #ifdef CONFIG_ARM_FFA_SMCCC
> >  int __init ffa_transport_init(ffa_fn **invoke_ffa_fn);
> > diff --git a/drivers/firmware/arm_ffa/driver.c b/drivers/firmware/arm_ffa/driver.c
> > index 257b331d781c..3e4ba841dbf8 100644
> > --- a/drivers/firmware/arm_ffa/driver.c
> > +++ b/drivers/firmware/arm_ffa/driver.c
> > @@ -24,9 +24,13 @@
> >
> >  #include <linux/arm_ffa.h>
> >  #include <linux/bitfield.h>
> > +#include <linux/device.h>
> >  #include <linux/io.h>
> > +#include <linux/kernel.h>
> >  #include <linux/module.h>
> > +#include <linux/of.h>
> >  #include <linux/slab.h>
> > +#include <linux/uuid.h>
> >
> >  #include "common.h"
> >
> > @@ -179,6 +183,20 @@ static int ffa_version_check(u32 *version)
> >         return 0;
> >  }
> >
> > +static int ffa_rx_release(void)
> > +{
> > +       ffa_res_t ret;
> > +
> > +       ret = invoke_ffa_fn(FFA_RX_RELEASE, 0, 0, 0, 0, 0, 0, 0);
> > +
> > +       if (ret.a0 == FFA_ERROR)
> > +               return ffa_to_linux_errno((int)ret.a2);
> > +
> > +       /* check for ret.a0 == FFA_RX_RELEASE ? */
> > +
> > +       return 0;
> > +}
> > +
> >  static int ffa_rxtx_map(phys_addr_t tx_buf, phys_addr_t rx_buf, u32 pg_cnt)
> >  {
> >         ffa_res_t ret;
> > @@ -203,6 +221,50 @@ static int ffa_rxtx_unmap(u16 vm_id)
> >         return 0;
> >  }
> >
> > +static int __ffa_partition_info_get(u32 uuid0, u32 uuid1, u32 uuid2, u32 uuid3,
> > +                                   struct ffa_partition_info **buffer)
> > +{
> > +       int count;
> > +       ffa_res_t partition_info;
> > +
> > +       mutex_lock(&drv_info->rx_lock);
> > +       partition_info = invoke_ffa_fn(FFA_PARTITION_INFO_GET, uuid0, uuid1,
> > +                                      uuid2, uuid3, 0, 0, 0);
> > +
> > +       if (partition_info.a0 == FFA_ERROR)
> > +               return ffa_to_linux_errno((int)partition_info.a2);
> > +
> > +       count = partition_info.a2;
> > +
> > +       if (buffer)
> > +               memcpy(*buffer, drv_info->rx_buffer, sizeof(*buffer) * count);
> > +
> > +       ffa_rx_release();
> > +
> > +       mutex_unlock(&drv_info->rx_lock);
> > +
> > +       return count;
> > +}
> > +
> > +static int ffa_partition_probe(const char *uuid_str,
> > +                              struct ffa_partition_info *buffer)
> > +{
> > +       int count;
> > +       uuid_t uuid;
> > +       u32 uuid0_4[4] = { 0 };
> > +
> > +       if (uuid_parse(uuid_str, &uuid)) {
> > +               pr_err("invalid uuid (%s)\n", uuid_str);
> > +               return -ENODEV;
> > +       }
> > +
> > +       export_uuid((u8 *)uuid0_4, &uuid);
> > +       count = __ffa_partition_info_get(uuid0_4[0], uuid0_4[1], uuid0_4[2],
> > +                                        uuid0_4[3], &buffer);
Wrong byte order?
According to section 5.3 of the SMCCC, UUIDs are returned as a single
128-bit value using the SMC32 calling convention. This value is mapped
to argument registers x0-x3 on AArch64 (resp. r0-r3 on AArch32). x0
for example shall hold bytes 0 to 3, with byte 0 in the low-order
bits.

Cheers,
Jens

> > +
> > +       return count;
> > +}
> > +
> >  #define VM_ID_MASK     GENMASK(15, 0)
> >  static int ffa_id_get(u16 *vm_id)
> >  {
> > @@ -218,9 +280,125 @@ static int ffa_id_get(u16 *vm_id)
> >         return 0;
> >  }
> >
> > +static int ffa_msg_send_direct_req(u16 src_id, u16 dst_id,
> > +                                  struct ffa_send_direct_data *data)
> > +{
> > +       u32 src_dst_ids = PACK_TARGET_INFO(src_id, dst_id);
> > +       ffa_res_t ret;
> > +
> > +       ret = invoke_ffa_fn(FFA_FN_NATIVE(MSG_SEND_DIRECT_REQ), src_dst_ids, 0,
> > +                           data->data0, data->data1, data->data2,
> > +                           data->data3, data->data4);
> > +
> > +       while (ret.a0 == FFA_INTERRUPT)
> > +               ret = invoke_ffa_fn(FFA_RUN, ret.a1, 0, 0, 0, 0, 0, 0);
> > +       if (ret.a0 == FFA_ERROR)
> > +               return ffa_to_linux_errno((int)ret.a2);
> > +
> > +       if (ret.a0 == FFA_FN_NATIVE(MSG_SEND_DIRECT_RESP)) {
> > +               data->data0 = ret.a3;
> > +               data->data1 = ret.a4;
> > +               data->data2 = ret.a5;
> > +               data->data3 = ret.a6;
> > +               data->data4 = ret.a7;
> > +       }
> > +
> > +       return 0;
> > +}
> > +
> > +static u32 ffa_api_version_get(void)
> > +{
> > +       return drv_info->version;
> > +}
> > +
> > +static u16 ffa_partition_id_get(struct ffa_device *dev)
> > +{
> > +       return dev->vm_id;
> > +}
> > +
> > +static int ffa_partition_info_get(const char *uuid_str,
> > +                                 struct ffa_partition_info *buffer)
> > +{
> > +       if (ffa_partition_probe(uuid_str, buffer) == 1)
> > +               return 0;
> > +
> > +       return -ENOENT;
> > +}
> > +
> > +static int ffa_sync_send_receive(struct ffa_device *dev, u16 ep,
> > +                                struct ffa_send_direct_data *data)
> > +{
> > +       return ffa_msg_send_direct_req(dev->vm_id, ep, data);
> > +}
> > +
> > +static const struct ffa_dev_ops ffa_ops = {
> > +       .api_version_get = ffa_api_version_get,
> > +       .partition_id_get = ffa_partition_id_get,
> > +       .partition_info_get = ffa_partition_info_get,
> > +       .sync_send_receive = ffa_sync_send_receive,
> > +};
> > +
> > +const struct ffa_dev_ops *ffa_dev_ops_get(struct ffa_device *dev)
> > +{
> > +       if (ffa_device_is_valid(dev))
> > +               return &ffa_ops;
> > +
> > +       return NULL;
> > +}
> > +EXPORT_SYMBOL_GPL(ffa_dev_ops_get);
> > +
> > +int ffa_setup_partitions(struct device_node *np)
> This function is only used internally and the return value is ignored.
> Maybe make it static void instead?
>
> > +{
> > +       int ret;
> > +       struct device_node *child;
> > +       struct ffa_device *ffa_dev;
> > +       struct ffa_partition_info pbuf;
> > +       const char *p_uuid, *pfx = "Ignoring FFA partition";
> > +       uuid_t uuid = UUID_INIT(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
> > +
> > +       for_each_child_of_node(np, child) {
> of_node_put() should only be called on child in case we're leaving the
> loop early. for_each_child_of_node() takes care of the other case.
>
> > +               if (!of_device_is_compatible(child, "arm,ffa-1.0-partition")) {
> > +                       of_node_put(child);
> > +                       continue;
> > +               }
> > +
> > +               if (of_property_read_string(child, "uuid", &p_uuid)) {
> > +                       pr_err("%s: failed to parse \"uuid\" property\n", pfx);
> > +                       of_node_put(child);
> > +                       continue;
> > +               }
> > +
> > +               of_node_put(child);
> > +
> > +               if (uuid_parse(p_uuid, &uuid)) {
> > +                       pr_err("%s: invalid \"uuid\" property (%s)\n",
> > +                              pfx, p_uuid);
> > +                       continue;
> > +               }
> > +
> > +               ret = ffa_partition_probe(p_uuid, &pbuf);
> > +               if (ret != 1) {
> > +                       pr_err("%s: %s partition info probe failed\n",
> > +                              pfx, p_uuid);
> > +                       return -EINVAL;
> > +               }
> > +
> > +               ffa_dev = ffa_device_register(p_uuid, pbuf.id);
> > +               if (!ffa_dev) {
> > +                       pr_err("%s: failed to register %s\n", pfx, p_uuid);
> > +                       continue;
> > +               }
> > +
> > +               ffa_dev_set_drvdata(ffa_dev, drv_info);
> > +       }
> > +
> > +       return 0;
> > +}
> > +
> >  static int __init ffa_init(void)
> >  {
> >         int ret;
> > +       struct device_node *np;
> >
> >         ret = arm_ffa_bus_init();
> >         if (ret)
> > @@ -267,6 +445,14 @@ static int __init ffa_init(void)
> >         mutex_init(&drv_info->rx_lock);
> >         mutex_init(&drv_info->tx_lock);
> >
> > +       /* Set up all the partitions */
> > +       np = of_find_compatible_node(NULL, NULL, "arm,ffa-1.0");
> > +       if (!np)
> > +               return 0;
> > +
> > +       ffa_setup_partitions(np);
> > +       of_node_put(np);
> > +
> >         return 0;
> >  free_pages:
> >         if (drv_info->tx_buffer)
> > diff --git a/include/linux/arm_ffa.h b/include/linux/arm_ffa.h
> > index 3defddfb40fc..8604c48289ce 100644
> > --- a/include/linux/arm_ffa.h
> > +++ b/include/linux/arm_ffa.h
> > @@ -6,7 +6,6 @@
> >  #ifndef _LINUX_ARM_FFA_H
> >  #define _LINUX_ARM_FFA_H
> >
> > -#include <linux/cdev.h>
> >  #include <linux/device.h>
> >  #include <linux/module.h>
> >  #include <linux/types.h>
> > @@ -47,6 +46,7 @@ void ffa_device_unregister(struct ffa_device *ffa_dev);
> >  int ffa_driver_register(struct ffa_driver *driver, struct module *owner,
> >                         const char *mod_name);
> >  void ffa_driver_unregister(struct ffa_driver *driver);
> > +const struct ffa_dev_ops *ffa_dev_ops_get(struct ffa_device *dev);
> >
> >  #else
> >  static inline
> > @@ -66,6 +66,10 @@ ffa_driver_register(struct ffa_driver *driver, struct module *owner,
> >
> >  static inline void ffa_driver_unregister(struct ffa_driver *driver) {}
> >
> > +const struct ffa_dev_ops *ffa_dev_ops_get(struct ffa_device *dev)
> > +{
> > +       return NULL;
> > +}
> >  #endif /* CONFIG_ARM_FFA_TRANSPORT */
> >
> >  #define ffa_register(driver) \
> > @@ -84,4 +88,34 @@ static inline void ffa_driver_unregister(struct ffa_driver *driver) {}
> >  #define module_ffa_driver(__ffa_driver)        \
> >         module_driver(__ffa_driver, ffa_register, ffa_unregister)
> >
> > +/* FFA transport related */
> > +struct ffa_partition_info {
> > +       u16 id;
> > +       u16 exec_ctxt;
> > +/* partition supports receipt of direct requests */
> > +#define FFA_PARTITION_DIRECT_RECV      BIT(0)
> > +/* partition can send direct requests. */
> > +#define FFA_PARTITION_DIRECT_SEND      BIT(1)
> > +/* partition can send and receive indirect messages. */
> > +#define FFA_PARTITION_INDIRECT_MSG     BIT(2)
> > +       u32 properties;
> > +};
> > +
> > +struct ffa_send_direct_data {
> > +       unsigned long data0;
> > +       unsigned long data1;
> > +       unsigned long data2;
> > +       unsigned long data3;
> > +       unsigned long data4;
> > +};
> A comment describing which register index these maps to would be helpful.
>
> > +
> > +struct ffa_dev_ops {
> > +       u32 (*api_version_get)(void);
> > +       u16 (*partition_id_get)(struct ffa_device *dev);
> > +       int (*partition_info_get)(const char *uuid_str,
> > +                                 struct ffa_partition_info *buffer);
> > +       int (*sync_send_receive)(struct ffa_device *dev, u16 ep,
> > +                                struct ffa_send_direct_data *data);
> ep can be read directly from dev->vm_id
> We may need a way to indicate if we're to use the 32bit or 64bit
> calling convention. OP-TEE depends on being able to use 32bit calls
> here.
>
> Cheers,
> Jens
>
> > +};
> > +
> >  #endif /* _LINUX_ARM_FFA_H */
> > --
> > 2.25.1
> >

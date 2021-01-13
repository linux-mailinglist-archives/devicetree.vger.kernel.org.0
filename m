Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B298A2F47F1
	for <lists+devicetree@lfdr.de>; Wed, 13 Jan 2021 10:50:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727264AbhAMJo5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jan 2021 04:44:57 -0500
Received: from foss.arm.com ([217.140.110.172]:33284 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727214AbhAMJo5 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 13 Jan 2021 04:44:57 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A20D41063;
        Wed, 13 Jan 2021 01:44:11 -0800 (PST)
Received: from bogus (unknown [10.57.35.27])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 59F233F66E;
        Wed, 13 Jan 2021 01:44:10 -0800 (PST)
Date:   Wed, 13 Jan 2021 09:44:08 +0000
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Jens Wiklander <jens.wiklander@linaro.org>
Cc:     Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        Trilok Soni <tsoni@codeaurora.org>, arve@android.com,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Arunachalam Ganapathy <arunachalam.ganapathy@arm.com>
Subject: Re: [PATCH v3 6/7] firmware: arm_ffa: Setup in-kernel users of FFA
 partitions
Message-ID: <20210113094408.pjkno4nalk5zizxa@bogus>
References: <20201204121137.2966778-1-sudeep.holla@arm.com>
 <20201204121137.2966778-7-sudeep.holla@arm.com>
 <CAHUa44EfHeKgktefhH2nEM7E++Zap8Nw7kaSqVmYVoH01Zm1VQ@mail.gmail.com>
 <CAHUa44HQJw=190MCphXecaQQn3HujHT6ZkSgG-PNARrKMQmQZw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHUa44HQJw=190MCphXecaQQn3HujHT6ZkSgG-PNARrKMQmQZw@mail.gmail.com>
User-Agent: NeoMutt/20171215
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 11, 2020 at 11:59:40AM +0100, Jens Wiklander wrote:
> One more comment below.
> 
> On Fri, Dec 11, 2020 at 11:45 AM Jens Wiklander
> <jens.wiklander@linaro.org> wrote:
> >
> > Hi Sudeep,
> >
> > Some more comments below.
> >
> > On Fri, Dec 4, 2020 at 1:11 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
> > >
> > > Parse the FFA nodes from the device-tree and register all the partitions
> > > whose services will be used in the kernel.
> > >
> > > In order to also enable in-kernel users of FFA interface, let us add
> > > simple set of operations for such devices.
> > >
> > > The in-kernel users are registered without the character device interface.
> > >
> > > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > > ---
> > >  drivers/firmware/arm_ffa/common.h |   2 +
> > >  drivers/firmware/arm_ffa/driver.c | 186 ++++++++++++++++++++++++++++++
> > >  include/linux/arm_ffa.h           |  36 +++++-
> > >  3 files changed, 223 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/firmware/arm_ffa/common.h b/drivers/firmware/arm_ffa/common.h
> > > index d019348bf67d..eb1371c2b2b8 100644
> > > --- a/drivers/firmware/arm_ffa/common.h
> > > +++ b/drivers/firmware/arm_ffa/common.h
> > > @@ -6,6 +6,7 @@
> > >  #ifndef _FFA_COMMON_H
> > >  #define _FFA_COMMON_H
> > >
> > > +#include <linux/arm_ffa.h>
> > >  #include <linux/arm-smccc.h>
> > >  #include <linux/err.h>
> > >
> > > @@ -17,6 +18,7 @@ typedef ffa_res_t
> > >
> > >  int __init arm_ffa_bus_init(void);
> > >  void __exit arm_ffa_bus_exit(void);
> > > +bool ffa_device_is_valid(struct ffa_device *ffa_dev);
> > >
> > >  #ifdef CONFIG_ARM_FFA_SMCCC
> > >  int __init ffa_transport_init(ffa_fn **invoke_ffa_fn);
> > > diff --git a/drivers/firmware/arm_ffa/driver.c b/drivers/firmware/arm_ffa/driver.c
> > > index 257b331d781c..3e4ba841dbf8 100644
> > > --- a/drivers/firmware/arm_ffa/driver.c
> > > +++ b/drivers/firmware/arm_ffa/driver.c
> > > @@ -24,9 +24,13 @@
> > >
> > >  #include <linux/arm_ffa.h>
> > >  #include <linux/bitfield.h>
> > > +#include <linux/device.h>
> > >  #include <linux/io.h>
> > > +#include <linux/kernel.h>
> > >  #include <linux/module.h>
> > > +#include <linux/of.h>
> > >  #include <linux/slab.h>
> > > +#include <linux/uuid.h>
> > >
> > >  #include "common.h"
> > >
> > > @@ -179,6 +183,20 @@ static int ffa_version_check(u32 *version)
> > >         return 0;
> > >  }
> > >
> > > +static int ffa_rx_release(void)
> > > +{
> > > +       ffa_res_t ret;
> > > +
> > > +       ret = invoke_ffa_fn(FFA_RX_RELEASE, 0, 0, 0, 0, 0, 0, 0);
> > > +
> > > +       if (ret.a0 == FFA_ERROR)
> > > +               return ffa_to_linux_errno((int)ret.a2);
> > > +
> > > +       /* check for ret.a0 == FFA_RX_RELEASE ? */
> > > +
> > > +       return 0;
> > > +}
> > > +
> > >  static int ffa_rxtx_map(phys_addr_t tx_buf, phys_addr_t rx_buf, u32 pg_cnt)
> > >  {
> > >         ffa_res_t ret;
> > > @@ -203,6 +221,50 @@ static int ffa_rxtx_unmap(u16 vm_id)
> > >         return 0;
> > >  }
> > >
> > > +static int __ffa_partition_info_get(u32 uuid0, u32 uuid1, u32 uuid2, u32 uuid3,
> > > +                                   struct ffa_partition_info **buffer)
> > > +{
> > > +       int count;
> > > +       ffa_res_t partition_info;
> > > +
> > > +       mutex_lock(&drv_info->rx_lock);
> > > +       partition_info = invoke_ffa_fn(FFA_PARTITION_INFO_GET, uuid0, uuid1,
> > > +                                      uuid2, uuid3, 0, 0, 0);
> > > +
> > > +       if (partition_info.a0 == FFA_ERROR)
> > > +               return ffa_to_linux_errno((int)partition_info.a2);
> > > +
> > > +       count = partition_info.a2;
> > > +
> > > +       if (buffer)
> > > +               memcpy(*buffer, drv_info->rx_buffer, sizeof(*buffer) * count);
> > > +
> > > +       ffa_rx_release();
> > > +
> > > +       mutex_unlock(&drv_info->rx_lock);
> > > +
> > > +       return count;
> > > +}
> > > +
> > > +static int ffa_partition_probe(const char *uuid_str,
> > > +                              struct ffa_partition_info *buffer)
> > > +{
> > > +       int count;
> > > +       uuid_t uuid;
> > > +       u32 uuid0_4[4] = { 0 };
> > > +
> > > +       if (uuid_parse(uuid_str, &uuid)) {
> > > +               pr_err("invalid uuid (%s)\n", uuid_str);
> > > +               return -ENODEV;
> > > +       }
> > > +
> > > +       export_uuid((u8 *)uuid0_4, &uuid);
> > > +       count = __ffa_partition_info_get(uuid0_4[0], uuid0_4[1], uuid0_4[2],
> > > +                                        uuid0_4[3], &buffer);
> Wrong byte order?
> According to section 5.3 of the SMCCC, UUIDs are returned as a single
> 128-bit value using the SMC32 calling convention. This value is mapped
> to argument registers x0-x3 on AArch64 (resp. r0-r3 on AArch32). x0
> for example shall hold bytes 0 to 3, with byte 0 in the low-order
> bits.
>

I need to spend some time to understand the concern here. Initially I agreed
with your analysis and then a quick review make be realise it is all OK.
I need to check if my understanding is correct again. I thought I will
take example and check here itself.

UUID: "fd02c9da-306c-48c7-a49c-bbd827ae86ee"

UUID[0]   UUID[1]  UUID[2]  UUID[3] (referring uuid0_4 above)
dac902fd c7486c30 d8bb9ca4 ee86ae27

It seems correct as per SMCCC convention to me, or am I missing something
obvious ?

--
Regards,
Sudeep

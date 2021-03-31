Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA02E345B6A
	for <lists+devicetree@lfdr.de>; Tue, 23 Mar 2021 10:54:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229746AbhCWJxu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Mar 2021 05:53:50 -0400
Received: from foss.arm.com ([217.140.110.172]:43152 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230140AbhCWJxo (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 23 Mar 2021 05:53:44 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5761C1042;
        Tue, 23 Mar 2021 02:53:44 -0700 (PDT)
Received: from bogus (unknown [10.57.54.194])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E2CCA3F719;
        Tue, 23 Mar 2021 02:53:42 -0700 (PDT)
Date:   Tue, 23 Mar 2021 09:53:40 +0000
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Jens Wiklander <jens.wiklander@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Trilok Soni <tsoni@codeaurora.org>, arve@android.com,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Arunachalam Ganapathy <arunachalam.ganapathy@arm.com>,
        Marc Bonnici <marc.bonnici@arm.com>
Subject: Re: [PATCH v4 4/7] firmware: arm_ffa: Add initial Arm FFA driver
 support
Message-ID: <20210323095340.kmkyggzcyhsrponv@bogus>
References: <20210212154614.38604-1-sudeep.holla@arm.com>
 <20210212154614.38604-5-sudeep.holla@arm.com>
 <20210319072523.GA769773@jade>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210319072523.GA769773@jade>
User-Agent: NeoMutt/20171215
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Mar 19, 2021 at 08:25:23AM +0100, Jens Wiklander wrote:
> On Fri, Feb 12, 2021 at 03:46:11PM +0000, Sudeep Holla wrote:
> > This just add a basic driver that sets up the transport(e.g. SMCCC),
> > checks the FFA version implemented, get the partition ID for self and
> > sets up the Tx/Rx buffers for communication.
> > 
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > ---
> >  drivers/firmware/arm_ffa/Makefile |   3 +-
> >  drivers/firmware/arm_ffa/bus.c    |  14 +-
> >  drivers/firmware/arm_ffa/common.h |  26 +++
> >  drivers/firmware/arm_ffa/driver.c | 297 ++++++++++++++++++++++++++++++
> >  4 files changed, 329 insertions(+), 11 deletions(-)
> >  create mode 100644 drivers/firmware/arm_ffa/common.h
> >  create mode 100644 drivers/firmware/arm_ffa/driver.c
> > 
> > diff --git a/drivers/firmware/arm_ffa/Makefile b/drivers/firmware/arm_ffa/Makefile
> > index bfe4323a8784..82d0d35c5324 100644
> > --- a/drivers/firmware/arm_ffa/Makefile
> > +++ b/drivers/firmware/arm_ffa/Makefile
> > @@ -1,4 +1,5 @@
> >  # SPDX-License-Identifier: GPL-2.0-only
> >  ffa-bus-y = bus.o
> > -ffa-module-objs := $(ffa-bus-y)
> > +ffa-driver-y = driver.o
> > +ffa-module-objs := $(ffa-bus-y) $(ffa-driver-y)
> >  obj-$(CONFIG_ARM_FFA_TRANSPORT) = ffa-module.o
> > diff --git a/drivers/firmware/arm_ffa/bus.c b/drivers/firmware/arm_ffa/bus.c
> > index 3b01a3586f7b..9debdc87111c 100644
> > --- a/drivers/firmware/arm_ffa/bus.c
> > +++ b/drivers/firmware/arm_ffa/bus.c
> > @@ -13,6 +13,8 @@
> >  #include <linux/slab.h>
> >  #include <linux/types.h>
> >  
> > +#include "common.h"
> > +
> >  static int ffa_device_match(struct device *dev, struct device_driver *drv)
> >  {
> >  	const struct ffa_device_id *id_table;
> > @@ -167,21 +169,13 @@ void ffa_device_unregister(struct ffa_device *ffa_dev)
> >  }
> >  EXPORT_SYMBOL_GPL(ffa_device_unregister);
> >  
> > -static int __init arm_ffa_bus_init(void)
> > +int __init arm_ffa_bus_init(void)
> >  {
> >  	return bus_register(&ffa_bus_type);
> >  }
> > -module_init(arm_ffa_bus_init);
> >  
> > -static void __exit arm_ffa_bus_exit(void)
> > +void __exit arm_ffa_bus_exit(void)
> >  {
> >  	ffa_devices_unregister();
> >  	bus_unregister(&ffa_bus_type);
> >  }
> > -
> > -module_exit(arm_ffa_bus_exit);
> > -
> > -MODULE_ALIAS("arm-ffa-bus");
> > -MODULE_AUTHOR("Sudeep Holla <sudeep.holla@arm.com>");
> > -MODULE_DESCRIPTION("Arm FF-A bus driver");
> > -MODULE_LICENSE("GPL v2");
> > diff --git a/drivers/firmware/arm_ffa/common.h b/drivers/firmware/arm_ffa/common.h
> > new file mode 100644
> > index 000000000000..fc6948efe9f3
> > --- /dev/null
> > +++ b/drivers/firmware/arm_ffa/common.h
> > @@ -0,0 +1,26 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * Copyright (C) 2020 ARM Ltd.
> > + */
> > +
> > +#ifndef _FFA_COMMON_H
> > +#define _FFA_COMMON_H
> > +
> > +#include <linux/arm-smccc.h>
> > +#include <linux/err.h>
> > +
> > +typedef struct arm_smccc_v1_2_res ffa_res_t;
> > +
> > +typedef ffa_res_t
> > +(ffa_fn)(unsigned long, unsigned long, unsigned long, unsigned long,
> > +	 unsigned long, unsigned long, unsigned long, unsigned long);
> > +
> > +int __init arm_ffa_bus_init(void);
> > +void __exit arm_ffa_bus_exit(void);
> > +
> > +static inline int __init ffa_transport_init(ffa_fn **invoke_ffa_fn)
> > +{
> > +	return -EOPNOTSUPP;
> > +}
> > +
> > +#endif /* _FFA_COMMON_H */
> > diff --git a/drivers/firmware/arm_ffa/driver.c b/drivers/firmware/arm_ffa/driver.c
> > new file mode 100644
> > index 000000000000..334dfe7102fa
> > --- /dev/null
> > +++ b/drivers/firmware/arm_ffa/driver.c
> > @@ -0,0 +1,297 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * Arm Firmware Framework for ARMv8-A(FFA) interface driver
> > + *
> > + * The Arm FFA specification[1] describes a software architecture to
> > + * leverages the virtualization extension to isolate software images
> > + * provided by an ecosystem of vendors from each other and describes
> > + * interfaces that standardize communication between the various software
> > + * images including communication between images in the Secure world and
> > + * Normal world. Any Hypervisor could use the FFA interfaces to enable
> > + * communication between VMs it manages.
> > + *
> > + * The Hypervisor a.k.a Partition managers in FFA terminology can assign
> > + * system resources(Memory regions, Devices, CPU cycles) to the partitions
> > + * and manage isolation amongst them.
> > + *
> > + * [1] https://developer.arm.com/docs/den0077/latest
> > + *
> > + * Copyright (C) 2020 Arm Ltd.
> > + */
> > +
> > +#define DRIVER_NAME "ARM FF-A"
> > +#define pr_fmt(fmt) DRIVER_NAME ": " fmt
> > +
> > +#include <linux/arm_ffa.h>
> > +#include <linux/bitfield.h>
> > +#include <linux/io.h>
> > +#include <linux/module.h>
> > +#include <linux/slab.h>
> > +
> > +#include "common.h"
> > +
> > +#define FFA_DRIVER_VERSION	FFA_VERSION_1_0
> > +
> > +#define FFA_SMC(calling_convention, func_num)				\
> > +	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL, (calling_convention),	\
> > +			   ARM_SMCCC_OWNER_STANDARD, (func_num))
> > +
> > +#define FFA_SMC_32(func_num)	FFA_SMC(ARM_SMCCC_SMC_32, (func_num))
> > +#define FFA_SMC_64(func_num)	FFA_SMC(ARM_SMCCC_SMC_64, (func_num))
> > +
> > +#define FFA_ERROR			FFA_SMC_32(0x60)
> > +#define FFA_SUCCESS			FFA_SMC_32(0x61)
> > +#define FFA_INTERRUPT			FFA_SMC_32(0x62)
> > +#define FFA_VERSION			FFA_SMC_32(0x63)
> > +#define FFA_FEATURES			FFA_SMC_32(0x64)
> > +#define FFA_RX_RELEASE			FFA_SMC_32(0x65)
> > +#define FFA_RXTX_MAP			FFA_SMC_32(0x66)
> > +#define FFA_RXTX_UNMAP			FFA_SMC_32(0x67)
> > +#define FFA_PARTITION_INFO_GET		FFA_SMC_32(0x68)
> > +#define FFA_ID_GET			FFA_SMC_32(0x69)
> > +#define FFA_MSG_POLL			FFA_SMC_32(0x6A)
> > +#define FFA_MSG_WAIT			FFA_SMC_32(0x6B)
> > +#define FFA_YIELD			FFA_SMC_32(0x6C)
> > +#define FFA_RUN				FFA_SMC_32(0x6D)
> > +#define FFA_MSG_SEND			FFA_SMC_32(0x6E)
> > +#define FFA_MSG_SEND_DIRECT_REQ		FFA_SMC_32(0x6F)
> > +#define FFA_FN64_MSG_SEND_DIRECT_REQ	FFA_SMC_64(0x6F)
> > +#define FFA_MSG_SEND_DIRECT_RESP	FFA_SMC_32(0x70)
> > +#define FFA_FN64_MSG_SEND_DIRECT_RESP	FFA_SMC_64(0x70)
> > +#define FFA_MEM_DONATE			FFA_SMC_32(0x71)
> > +#define FFA_FN64_MEM_DONATE		FFA_SMC_64(0x71)
> > +#define FFA_MEM_LEND			FFA_SMC_32(0x72)
> > +#define FFA_FN64_MEM_LEND		FFA_SMC_64(0x72)
> > +#define FFA_MEM_SHARE			FFA_SMC_32(0x73)
> > +#define FFA_FN64_MEM_SHARE		FFA_SMC_64(0x73)
> > +#define FFA_MEM_RETRIEVE_REQ		FFA_SMC_32(0x74)
> > +#define FFA_FN64_MEM_RETRIEVE_REQ	FFA_SMC_64(0x74)
> > +#define FFA_MEM_RETRIEVE_RESP		FFA_SMC_32(0x75)
> > +#define FFA_MEM_RELINQUISH		FFA_SMC_32(0x76)
> > +#define FFA_MEM_RECLAIM			FFA_SMC_32(0x77)
> > +#define FFA_MEM_OP_PAUSE		FFA_SMC_32(0x78)
> > +#define FFA_MEM_OP_RESUME		FFA_SMC_32(0x79)
> > +#define FFA_MEM_FRAG_RX			FFA_SMC_32(0x7A)
> > +#define FFA_MEM_FRAG_TX			FFA_SMC_32(0x7B)
> > +#define FFA_NORMAL_WORLD_RESUME		FFA_SMC_32(0x7C)
> > +
> > +/*
> > + * For some calls it is necessary to use SMC64 to pass or return 64-bit values.
> > + * For such calls FFA_FN_NATIVE(name) will choose the appropriate
> > + * (native-width) function ID.
> > + */
> > +#ifdef CONFIG_64BIT
> > +#define FFA_FN_NATIVE(name)	FFA_FN64_##name
> > +#else
> > +#define FFA_FN_NATIVE(name)	FFA_##name
> > +#endif
> > +
> > +/* FFA error codes. */
> > +#define FFA_RET_SUCCESS            (0)
> > +#define FFA_RET_NOT_SUPPORTED      (-1)
> > +#define FFA_RET_INVALID_PARAMETERS (-2)
> > +#define FFA_RET_NO_MEMORY          (-3)
> > +#define FFA_RET_BUSY               (-4)
> > +#define FFA_RET_INTERRUPTED        (-5)
> > +#define FFA_RET_DENIED             (-6)
> > +#define FFA_RET_RETRY              (-7)
> > +#define FFA_RET_ABORTED            (-8)
> > +
> > +#define MAJOR_VERSION_MASK	GENMASK(30, 16)
> > +#define MINOR_VERSION_MASK	GENMASK(15, 0)
> > +#define MAJOR_VERSION(x)	(u16)(FIELD_GET(MAJOR_VERSION_MASK, (x)))
> > +#define MINOR_VERSION(x)	(u16)(FIELD_GET(MINOR_VERSION_MASK, (x)))
> > +#define PACK_VERSION_INFO(major, minor)			\
> > +	(FIELD_PREP(MAJOR_VERSION_MASK, (major)) |	\
> > +	 FIELD_PREP(MINOR_VERSION_MASK, (minor)))
> > +#define FFA_VERSION_1_0		PACK_VERSION_INFO(1, 0)
> > +#define FFA_MIN_VERSION		FFA_VERSION_1_0
> > +
> > +#define SENDER_ID_MASK		GENMASK(31, 16)
> > +#define RECEIVER_ID_MASK	GENMASK(15, 0)
> > +#define SENDER_ID(x)		(u16)(FIELD_GET(SENDER_ID_MASK, (x)))
> > +#define RECEIVER_ID(x)		(u16)(FIELD_GET(RECEIVER_ID_MASK, (x)))
> > +#define PACK_TARGET_INFO(s, r)		\
> > +	(FIELD_PREP(SENDER_ID_MASK, (s)) | FIELD_PREP(RECEIVER_ID_MASK, (r)))
> > +
> > +/**
> > + * FF-A specification mentions explicitly about '4K pages'. This should
> > + * not be confused with the kernel PAGE_SIZE, which is the translation
> > + * granule kernel is configured and may be one among 4K, 16K and 64K.
> > + */
> > +#define FFA_PAGE_SIZE		SZ_4K
> > +/*
> > + * Keeping RX TX buffer size as 4K for now
> > + * 64K may be preferred to keep it min a page in 64K PAGE_SIZE config
> > + */
> > +#define RXTX_BUFFER_SIZE	SZ_4K
> > +
> > +static ffa_fn *invoke_ffa_fn;
> > +
> > +static const int ffa_linux_errmap[] = {
> > +	/* better than switch case as long as return value is continuous */
> > +	0,		/* FFA_RET_SUCCESS */
> > +	-EOPNOTSUPP,	/* FFA_RET_NOT_SUPPORTED */
> > +	-EINVAL,	/* FFA_RET_INVALID_PARAMETERS */
> > +	-ENOMEM,	/* FFA_RET_NO_MEMORY */
> > +	-EBUSY,		/* FFA_RET_BUSY */
> > +	-EINTR,		/* FFA_RET_INTERRUPTED */
> > +	-EACCES,	/* FFA_RET_DENIED */
> > +	-EAGAIN,	/* FFA_RET_RETRY */
> > +	-ECANCELED,	/* FFA_RET_ABORTED */
> > +};
> > +
> > +static inline int ffa_to_linux_errno(int errno)
> > +{
> > +	if (errno < FFA_RET_SUCCESS && errno >= -ARRAY_SIZE(ffa_linux_errmap))
> > +		return ffa_linux_errmap[-errno];
> > +	return -EINVAL;
> > +}
> > +
> > +struct ffa_drv_info {
> > +	u32 version;
> > +	u16 vm_id;
> > +	struct mutex rx_lock; /* lock to protect Rx buffer */
> > +	struct mutex tx_lock; /* lock to protect Tx buffer */
> > +	void *rx_buffer;
> > +	void *tx_buffer;
> > +};
> > +
> > +static struct ffa_drv_info *drv_info;
> > +
> > +static int ffa_version_check(u32 *version)
> > +{
> > +	ffa_res_t ver;
> > +
> > +	ver = invoke_ffa_fn(FFA_VERSION, FFA_DRIVER_VERSION, 0, 0, 0, 0, 0, 0);
> > +
> > +	if (ver.a0 == FFA_RET_NOT_SUPPORTED) {
> > +		pr_info("FFA_VERSION returned not supported\n");
> > +		return -EOPNOTSUPP;
> > +	}
> > +
> > +	if (ver.a0 < FFA_MIN_VERSION || ver.a0 > FFA_DRIVER_VERSION) {
> > +		pr_err("Incompatible version %d.%d found\n",
> > +		       MAJOR_VERSION(ver.a0), MINOR_VERSION(ver.a0));
> > +		return -EINVAL;
> > +	}
> > +
> > +	*version = ver.a0;
> > +	pr_info("Version %d.%d found\n", MAJOR_VERSION(ver.a0),
> > +		MINOR_VERSION(ver.a0));
> > +	return 0;
> > +}
> > +
> > +static int ffa_rxtx_map(phys_addr_t tx_buf, phys_addr_t rx_buf, u32 pg_cnt)
> > +{
> > +	ffa_res_t ret;
> > +
> > +	ret = invoke_ffa_fn(FFA_RXTX_MAP, tx_buf, rx_buf, pg_cnt, 0, 0, 0, 0);
> 
> I believe this is one of the cases where 64-bit calling convention might
> be needed so a FFA_FN_NATIVE(RXTX_MAP) should be used instead.
>

Indeed, missed that completely. Thanks for spotting it.

> > +
> > +	if (ret.a0 == FFA_ERROR)
> > +		return ffa_to_linux_errno((int)ret.a2);
> > +
> > +	return 0;
> > +}
> > +
> > +static int ffa_rxtx_unmap(u16 vm_id)
> > +{
> > +	ffa_res_t ret;
> > +
> > +	ret = invoke_ffa_fn(FFA_RXTX_UNMAP, vm_id, 0, 0, 0, 0, 0, 0);
> 
> The vm_id should be passed in the upper 16 bits of the 32-bit word with
> the lower 16 bits set to zero.
> 

Good catch, will fix it.

-- 
Regards,
Sudeep

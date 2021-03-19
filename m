Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 65CB3341693
	for <lists+devicetree@lfdr.de>; Fri, 19 Mar 2021 08:26:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234124AbhCSHZg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Mar 2021 03:25:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234078AbhCSHZ2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Mar 2021 03:25:28 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3B31C06174A
        for <devicetree@vger.kernel.org>; Fri, 19 Mar 2021 00:25:27 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id 15so10797117ljj.0
        for <devicetree@vger.kernel.org>; Fri, 19 Mar 2021 00:25:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=+mVhtL4Z4QQZCm4we9+MxI0jhx3S/0td2vMCHeu7lgE=;
        b=M7+x4RYGe5VK1kb5X1jLPQ7tI7qNWMyHVQ/LMmGhoORvMmQArGv3G9GzOpsXi4vnuo
         udtkEvZDFU/r5ND2ZI5cUWTn5+mcz4fSYrZyk+RB8pDaalDSL4Kjp+JBCW8url94GYQe
         wqLFw12sbxOMbw1BaKSeiNoj/uA/xYyW3Fl0WlkDjwwKShFVWaUR+XDejEnVaOH0q72b
         Io8Rng4oyO4x2/IAXWqaXVAl8pN2wvLFzDf7VGabxZWL3+9m4byTkHH6Hou0W5rqYOBE
         X6keJAoJfmuJRiKL2a8+aRhsLODpzECk2XEMZIKWFlrxdYL6lLkpMAyV/quW+Y+m9ThO
         7sXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=+mVhtL4Z4QQZCm4we9+MxI0jhx3S/0td2vMCHeu7lgE=;
        b=IZOf7d8ooamUTjryaG1u8Qlp8fP0SuSE5/g8mNtVSSLe2ozcHyt0i87wUwTNg80ssc
         xgPw2x9GWWTeZkfSo2LtFsM8WNV546rVlZ8j11g8n2A0Dgf5B4qbv0CGTFu9zCbkgE4L
         3YO4OXhNLA5ryjtCP4YrVZ7J3h4Zx14YWNpq0jlJcNDxY1YElM8VlxIAbzhu4Lk7r141
         sPKS2MeoIRPyOC1QsNJlYlD1EdOg+K+KAQ8kYKE7AMoxPtC3AQajsGoZyMH0KDjvxHPh
         Yqiy/4qXk6TOQoWVNckXiK0cZaQK5S88MfOi1IyuNyZgEQ+ko7QWoZWYkwLxkC2+HoI0
         sAHA==
X-Gm-Message-State: AOAM5325PSAFPKONA9hYjnANxUH9Lqpy2d/6TPaqsceSAK8lnchVmB6D
        V3HNRktMB987vys90fvGF6Xf4Q==
X-Google-Smtp-Source: ABdhPJwnITIMBDVoThaSWG8W1FsDuW8PREQLEr4wGVn9cygCNp35ggGutzHDUFlJ+Ey/2HuDJ5JVQA==
X-Received: by 2002:a2e:b552:: with SMTP id a18mr27170ljn.235.1616138726298;
        Fri, 19 Mar 2021 00:25:26 -0700 (PDT)
Received: from jade (h-249-223.A175.priv.bahnhof.se. [98.128.249.223])
        by smtp.gmail.com with ESMTPSA id i10sm522838lfd.100.2021.03.19.00.25.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Mar 2021 00:25:25 -0700 (PDT)
Date:   Fri, 19 Mar 2021 08:25:23 +0100
From:   Jens Wiklander <jens.wiklander@linaro.org>
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Trilok Soni <tsoni@codeaurora.org>, arve@android.com,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Arunachalam Ganapathy <arunachalam.ganapathy@arm.com>,
        Marc Bonnici <marc.bonnici@arm.com>
Subject: Re: [PATCH v4 4/7] firmware: arm_ffa: Add initial Arm FFA driver
 support
Message-ID: <20210319072523.GA769773@jade>
References: <20210212154614.38604-1-sudeep.holla@arm.com>
 <20210212154614.38604-5-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20210212154614.38604-5-sudeep.holla@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Feb 12, 2021 at 03:46:11PM +0000, Sudeep Holla wrote:
> This just add a basic driver that sets up the transport(e.g. SMCCC),
> checks the FFA version implemented, get the partition ID for self and
> sets up the Tx/Rx buffers for communication.
> 
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  drivers/firmware/arm_ffa/Makefile |   3 +-
>  drivers/firmware/arm_ffa/bus.c    |  14 +-
>  drivers/firmware/arm_ffa/common.h |  26 +++
>  drivers/firmware/arm_ffa/driver.c | 297 ++++++++++++++++++++++++++++++
>  4 files changed, 329 insertions(+), 11 deletions(-)
>  create mode 100644 drivers/firmware/arm_ffa/common.h
>  create mode 100644 drivers/firmware/arm_ffa/driver.c
> 
> diff --git a/drivers/firmware/arm_ffa/Makefile b/drivers/firmware/arm_ffa/Makefile
> index bfe4323a8784..82d0d35c5324 100644
> --- a/drivers/firmware/arm_ffa/Makefile
> +++ b/drivers/firmware/arm_ffa/Makefile
> @@ -1,4 +1,5 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  ffa-bus-y = bus.o
> -ffa-module-objs := $(ffa-bus-y)
> +ffa-driver-y = driver.o
> +ffa-module-objs := $(ffa-bus-y) $(ffa-driver-y)
>  obj-$(CONFIG_ARM_FFA_TRANSPORT) = ffa-module.o
> diff --git a/drivers/firmware/arm_ffa/bus.c b/drivers/firmware/arm_ffa/bus.c
> index 3b01a3586f7b..9debdc87111c 100644
> --- a/drivers/firmware/arm_ffa/bus.c
> +++ b/drivers/firmware/arm_ffa/bus.c
> @@ -13,6 +13,8 @@
>  #include <linux/slab.h>
>  #include <linux/types.h>
>  
> +#include "common.h"
> +
>  static int ffa_device_match(struct device *dev, struct device_driver *drv)
>  {
>  	const struct ffa_device_id *id_table;
> @@ -167,21 +169,13 @@ void ffa_device_unregister(struct ffa_device *ffa_dev)
>  }
>  EXPORT_SYMBOL_GPL(ffa_device_unregister);
>  
> -static int __init arm_ffa_bus_init(void)
> +int __init arm_ffa_bus_init(void)
>  {
>  	return bus_register(&ffa_bus_type);
>  }
> -module_init(arm_ffa_bus_init);
>  
> -static void __exit arm_ffa_bus_exit(void)
> +void __exit arm_ffa_bus_exit(void)
>  {
>  	ffa_devices_unregister();
>  	bus_unregister(&ffa_bus_type);
>  }
> -
> -module_exit(arm_ffa_bus_exit);
> -
> -MODULE_ALIAS("arm-ffa-bus");
> -MODULE_AUTHOR("Sudeep Holla <sudeep.holla@arm.com>");
> -MODULE_DESCRIPTION("Arm FF-A bus driver");
> -MODULE_LICENSE("GPL v2");
> diff --git a/drivers/firmware/arm_ffa/common.h b/drivers/firmware/arm_ffa/common.h
> new file mode 100644
> index 000000000000..fc6948efe9f3
> --- /dev/null
> +++ b/drivers/firmware/arm_ffa/common.h
> @@ -0,0 +1,26 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (C) 2020 ARM Ltd.
> + */
> +
> +#ifndef _FFA_COMMON_H
> +#define _FFA_COMMON_H
> +
> +#include <linux/arm-smccc.h>
> +#include <linux/err.h>
> +
> +typedef struct arm_smccc_v1_2_res ffa_res_t;
> +
> +typedef ffa_res_t
> +(ffa_fn)(unsigned long, unsigned long, unsigned long, unsigned long,
> +	 unsigned long, unsigned long, unsigned long, unsigned long);
> +
> +int __init arm_ffa_bus_init(void);
> +void __exit arm_ffa_bus_exit(void);
> +
> +static inline int __init ffa_transport_init(ffa_fn **invoke_ffa_fn)
> +{
> +	return -EOPNOTSUPP;
> +}
> +
> +#endif /* _FFA_COMMON_H */
> diff --git a/drivers/firmware/arm_ffa/driver.c b/drivers/firmware/arm_ffa/driver.c
> new file mode 100644
> index 000000000000..334dfe7102fa
> --- /dev/null
> +++ b/drivers/firmware/arm_ffa/driver.c
> @@ -0,0 +1,297 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Arm Firmware Framework for ARMv8-A(FFA) interface driver
> + *
> + * The Arm FFA specification[1] describes a software architecture to
> + * leverages the virtualization extension to isolate software images
> + * provided by an ecosystem of vendors from each other and describes
> + * interfaces that standardize communication between the various software
> + * images including communication between images in the Secure world and
> + * Normal world. Any Hypervisor could use the FFA interfaces to enable
> + * communication between VMs it manages.
> + *
> + * The Hypervisor a.k.a Partition managers in FFA terminology can assign
> + * system resources(Memory regions, Devices, CPU cycles) to the partitions
> + * and manage isolation amongst them.
> + *
> + * [1] https://developer.arm.com/docs/den0077/latest
> + *
> + * Copyright (C) 2020 Arm Ltd.
> + */
> +
> +#define DRIVER_NAME "ARM FF-A"
> +#define pr_fmt(fmt) DRIVER_NAME ": " fmt
> +
> +#include <linux/arm_ffa.h>
> +#include <linux/bitfield.h>
> +#include <linux/io.h>
> +#include <linux/module.h>
> +#include <linux/slab.h>
> +
> +#include "common.h"
> +
> +#define FFA_DRIVER_VERSION	FFA_VERSION_1_0
> +
> +#define FFA_SMC(calling_convention, func_num)				\
> +	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL, (calling_convention),	\
> +			   ARM_SMCCC_OWNER_STANDARD, (func_num))
> +
> +#define FFA_SMC_32(func_num)	FFA_SMC(ARM_SMCCC_SMC_32, (func_num))
> +#define FFA_SMC_64(func_num)	FFA_SMC(ARM_SMCCC_SMC_64, (func_num))
> +
> +#define FFA_ERROR			FFA_SMC_32(0x60)
> +#define FFA_SUCCESS			FFA_SMC_32(0x61)
> +#define FFA_INTERRUPT			FFA_SMC_32(0x62)
> +#define FFA_VERSION			FFA_SMC_32(0x63)
> +#define FFA_FEATURES			FFA_SMC_32(0x64)
> +#define FFA_RX_RELEASE			FFA_SMC_32(0x65)
> +#define FFA_RXTX_MAP			FFA_SMC_32(0x66)
> +#define FFA_RXTX_UNMAP			FFA_SMC_32(0x67)
> +#define FFA_PARTITION_INFO_GET		FFA_SMC_32(0x68)
> +#define FFA_ID_GET			FFA_SMC_32(0x69)
> +#define FFA_MSG_POLL			FFA_SMC_32(0x6A)
> +#define FFA_MSG_WAIT			FFA_SMC_32(0x6B)
> +#define FFA_YIELD			FFA_SMC_32(0x6C)
> +#define FFA_RUN				FFA_SMC_32(0x6D)
> +#define FFA_MSG_SEND			FFA_SMC_32(0x6E)
> +#define FFA_MSG_SEND_DIRECT_REQ		FFA_SMC_32(0x6F)
> +#define FFA_FN64_MSG_SEND_DIRECT_REQ	FFA_SMC_64(0x6F)
> +#define FFA_MSG_SEND_DIRECT_RESP	FFA_SMC_32(0x70)
> +#define FFA_FN64_MSG_SEND_DIRECT_RESP	FFA_SMC_64(0x70)
> +#define FFA_MEM_DONATE			FFA_SMC_32(0x71)
> +#define FFA_FN64_MEM_DONATE		FFA_SMC_64(0x71)
> +#define FFA_MEM_LEND			FFA_SMC_32(0x72)
> +#define FFA_FN64_MEM_LEND		FFA_SMC_64(0x72)
> +#define FFA_MEM_SHARE			FFA_SMC_32(0x73)
> +#define FFA_FN64_MEM_SHARE		FFA_SMC_64(0x73)
> +#define FFA_MEM_RETRIEVE_REQ		FFA_SMC_32(0x74)
> +#define FFA_FN64_MEM_RETRIEVE_REQ	FFA_SMC_64(0x74)
> +#define FFA_MEM_RETRIEVE_RESP		FFA_SMC_32(0x75)
> +#define FFA_MEM_RELINQUISH		FFA_SMC_32(0x76)
> +#define FFA_MEM_RECLAIM			FFA_SMC_32(0x77)
> +#define FFA_MEM_OP_PAUSE		FFA_SMC_32(0x78)
> +#define FFA_MEM_OP_RESUME		FFA_SMC_32(0x79)
> +#define FFA_MEM_FRAG_RX			FFA_SMC_32(0x7A)
> +#define FFA_MEM_FRAG_TX			FFA_SMC_32(0x7B)
> +#define FFA_NORMAL_WORLD_RESUME		FFA_SMC_32(0x7C)
> +
> +/*
> + * For some calls it is necessary to use SMC64 to pass or return 64-bit values.
> + * For such calls FFA_FN_NATIVE(name) will choose the appropriate
> + * (native-width) function ID.
> + */
> +#ifdef CONFIG_64BIT
> +#define FFA_FN_NATIVE(name)	FFA_FN64_##name
> +#else
> +#define FFA_FN_NATIVE(name)	FFA_##name
> +#endif
> +
> +/* FFA error codes. */
> +#define FFA_RET_SUCCESS            (0)
> +#define FFA_RET_NOT_SUPPORTED      (-1)
> +#define FFA_RET_INVALID_PARAMETERS (-2)
> +#define FFA_RET_NO_MEMORY          (-3)
> +#define FFA_RET_BUSY               (-4)
> +#define FFA_RET_INTERRUPTED        (-5)
> +#define FFA_RET_DENIED             (-6)
> +#define FFA_RET_RETRY              (-7)
> +#define FFA_RET_ABORTED            (-8)
> +
> +#define MAJOR_VERSION_MASK	GENMASK(30, 16)
> +#define MINOR_VERSION_MASK	GENMASK(15, 0)
> +#define MAJOR_VERSION(x)	(u16)(FIELD_GET(MAJOR_VERSION_MASK, (x)))
> +#define MINOR_VERSION(x)	(u16)(FIELD_GET(MINOR_VERSION_MASK, (x)))
> +#define PACK_VERSION_INFO(major, minor)			\
> +	(FIELD_PREP(MAJOR_VERSION_MASK, (major)) |	\
> +	 FIELD_PREP(MINOR_VERSION_MASK, (minor)))
> +#define FFA_VERSION_1_0		PACK_VERSION_INFO(1, 0)
> +#define FFA_MIN_VERSION		FFA_VERSION_1_0
> +
> +#define SENDER_ID_MASK		GENMASK(31, 16)
> +#define RECEIVER_ID_MASK	GENMASK(15, 0)
> +#define SENDER_ID(x)		(u16)(FIELD_GET(SENDER_ID_MASK, (x)))
> +#define RECEIVER_ID(x)		(u16)(FIELD_GET(RECEIVER_ID_MASK, (x)))
> +#define PACK_TARGET_INFO(s, r)		\
> +	(FIELD_PREP(SENDER_ID_MASK, (s)) | FIELD_PREP(RECEIVER_ID_MASK, (r)))
> +
> +/**
> + * FF-A specification mentions explicitly about '4K pages'. This should
> + * not be confused with the kernel PAGE_SIZE, which is the translation
> + * granule kernel is configured and may be one among 4K, 16K and 64K.
> + */
> +#define FFA_PAGE_SIZE		SZ_4K
> +/*
> + * Keeping RX TX buffer size as 4K for now
> + * 64K may be preferred to keep it min a page in 64K PAGE_SIZE config
> + */
> +#define RXTX_BUFFER_SIZE	SZ_4K
> +
> +static ffa_fn *invoke_ffa_fn;
> +
> +static const int ffa_linux_errmap[] = {
> +	/* better than switch case as long as return value is continuous */
> +	0,		/* FFA_RET_SUCCESS */
> +	-EOPNOTSUPP,	/* FFA_RET_NOT_SUPPORTED */
> +	-EINVAL,	/* FFA_RET_INVALID_PARAMETERS */
> +	-ENOMEM,	/* FFA_RET_NO_MEMORY */
> +	-EBUSY,		/* FFA_RET_BUSY */
> +	-EINTR,		/* FFA_RET_INTERRUPTED */
> +	-EACCES,	/* FFA_RET_DENIED */
> +	-EAGAIN,	/* FFA_RET_RETRY */
> +	-ECANCELED,	/* FFA_RET_ABORTED */
> +};
> +
> +static inline int ffa_to_linux_errno(int errno)
> +{
> +	if (errno < FFA_RET_SUCCESS && errno >= -ARRAY_SIZE(ffa_linux_errmap))
> +		return ffa_linux_errmap[-errno];
> +	return -EINVAL;
> +}
> +
> +struct ffa_drv_info {
> +	u32 version;
> +	u16 vm_id;
> +	struct mutex rx_lock; /* lock to protect Rx buffer */
> +	struct mutex tx_lock; /* lock to protect Tx buffer */
> +	void *rx_buffer;
> +	void *tx_buffer;
> +};
> +
> +static struct ffa_drv_info *drv_info;
> +
> +static int ffa_version_check(u32 *version)
> +{
> +	ffa_res_t ver;
> +
> +	ver = invoke_ffa_fn(FFA_VERSION, FFA_DRIVER_VERSION, 0, 0, 0, 0, 0, 0);
> +
> +	if (ver.a0 == FFA_RET_NOT_SUPPORTED) {
> +		pr_info("FFA_VERSION returned not supported\n");
> +		return -EOPNOTSUPP;
> +	}
> +
> +	if (ver.a0 < FFA_MIN_VERSION || ver.a0 > FFA_DRIVER_VERSION) {
> +		pr_err("Incompatible version %d.%d found\n",
> +		       MAJOR_VERSION(ver.a0), MINOR_VERSION(ver.a0));
> +		return -EINVAL;
> +	}
> +
> +	*version = ver.a0;
> +	pr_info("Version %d.%d found\n", MAJOR_VERSION(ver.a0),
> +		MINOR_VERSION(ver.a0));
> +	return 0;
> +}
> +
> +static int ffa_rxtx_map(phys_addr_t tx_buf, phys_addr_t rx_buf, u32 pg_cnt)
> +{
> +	ffa_res_t ret;
> +
> +	ret = invoke_ffa_fn(FFA_RXTX_MAP, tx_buf, rx_buf, pg_cnt, 0, 0, 0, 0);

I believe this is one of the cases where 64-bit calling convention might
be needed so a FFA_FN_NATIVE(RXTX_MAP) should be used instead.

> +
> +	if (ret.a0 == FFA_ERROR)
> +		return ffa_to_linux_errno((int)ret.a2);
> +
> +	return 0;
> +}
> +
> +static int ffa_rxtx_unmap(u16 vm_id)
> +{
> +	ffa_res_t ret;
> +
> +	ret = invoke_ffa_fn(FFA_RXTX_UNMAP, vm_id, 0, 0, 0, 0, 0, 0);

The vm_id should be passed in the upper 16 bits of the 32-bit word with
the lower 16 bits set to zero.


Cheers,
Jens

> +
> +	if (ret.a0 == FFA_ERROR)
> +		return ffa_to_linux_errno((int)ret.a2);
> +
> +	return 0;
> +}
> +
> +#define VM_ID_MASK	GENMASK(15, 0)
> +static int ffa_id_get(u16 *vm_id)
> +{
> +	ffa_res_t id;
> +
> +	id = invoke_ffa_fn(FFA_ID_GET, 0, 0, 0, 0, 0, 0, 0);
> +
> +	if (id.a0 == FFA_ERROR)
> +		return ffa_to_linux_errno((int)id.a2);
> +
> +	*vm_id = FIELD_GET(VM_ID_MASK, (id.a2));
> +
> +	return 0;
> +}
> +
> +static int __init ffa_init(void)
> +{
> +	int ret;
> +
> +	ret = arm_ffa_bus_init();
> +	if (ret)
> +		return ret;
> +
> +	ret = ffa_transport_init(&invoke_ffa_fn);
> +	if (ret)
> +		return ret;
> +
> +	drv_info = kzalloc(sizeof(*drv_info), GFP_KERNEL);
> +	if (!drv_info)
> +		return -ENOMEM;
> +
> +	ret = ffa_version_check(&drv_info->version);
> +	if (ret)
> +		goto free_drv_info;
> +
> +	if (ffa_id_get(&drv_info->vm_id)) {
> +		pr_err("failed to obtain VM id for self\n");
> +		ret = -ENODEV;
> +		goto free_drv_info;
> +	}
> +
> +	drv_info->rx_buffer = alloc_pages_exact(RXTX_BUFFER_SIZE, GFP_KERNEL);
> +	if (!drv_info->rx_buffer) {
> +		ret = -ENOMEM;
> +		goto free_pages;
> +	}
> +
> +	drv_info->tx_buffer = alloc_pages_exact(RXTX_BUFFER_SIZE, GFP_KERNEL);
> +	if (!drv_info->tx_buffer) {
> +		ret = -ENOMEM;
> +		goto free_pages;
> +	}
> +
> +	ret = ffa_rxtx_map(virt_to_phys(drv_info->tx_buffer),
> +			   virt_to_phys(drv_info->rx_buffer),
> +			   RXTX_BUFFER_SIZE / FFA_PAGE_SIZE);
> +	if (ret) {
> +		pr_err("failed to register FFA RxTx buffers\n");
> +		goto free_pages;
> +	}
> +
> +	mutex_init(&drv_info->rx_lock);
> +	mutex_init(&drv_info->tx_lock);
> +
> +	return 0;
> +free_pages:
> +	if (drv_info->tx_buffer)
> +		free_pages_exact(drv_info->tx_buffer, RXTX_BUFFER_SIZE);
> +	free_pages_exact(drv_info->rx_buffer, RXTX_BUFFER_SIZE);
> +free_drv_info:
> +	kfree(drv_info);
> +	return ret;
> +}
> +module_init(ffa_init);
> +
> +static void __exit ffa_exit(void)
> +{
> +	ffa_rxtx_unmap(drv_info->vm_id);
> +	free_pages_exact(drv_info->tx_buffer, RXTX_BUFFER_SIZE);
> +	free_pages_exact(drv_info->rx_buffer, RXTX_BUFFER_SIZE);
> +	kfree(drv_info);
> +	arm_ffa_bus_exit();
> +}
> +module_exit(ffa_exit);
> +
> +MODULE_ALIAS("arm-ffa");
> +MODULE_AUTHOR("Sudeep Holla <sudeep.holla@arm.com>");
> +MODULE_DESCRIPTION("Arm FF-A interface driver");
> +MODULE_LICENSE("GPL v2");
> -- 
> 2.25.1
> 

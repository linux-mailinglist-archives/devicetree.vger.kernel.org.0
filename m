Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4EED032E597
	for <lists+devicetree@lfdr.de>; Fri,  5 Mar 2021 11:03:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229706AbhCEKCw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Mar 2021 05:02:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229938AbhCEKC2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Mar 2021 05:02:28 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E43CC06175F
        for <devicetree@vger.kernel.org>; Fri,  5 Mar 2021 02:02:28 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id u16so1418371wrt.1
        for <devicetree@vger.kernel.org>; Fri, 05 Mar 2021 02:02:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=srQiEmEbSXK3g8AjQSw3FOYImi25tk6IpcEAOabHzAk=;
        b=zNOFeQRXq8z7xO09fDAtKQ05SGpdaL4fLK8MYaq1f/2h3uCafJFSpkr2bjJQIgzb1R
         ipXvaXuPt98haEv2q60y5M0NJwPRmFBqzx4ZqIP26l+1zJeRhoBuLDOcciPeGmxtgNRd
         LzUFHkOEE/Ii05HniUnIlzjY3r/NLk+w2FbBl5hzX/bp0flQTsvjfIAMVLhsFJK5jVIc
         suBcQcYLsFT+Y/BpkXw2MA+LO58yOVHHQOfSA+n27dyOQiC8tDXOh2zMyJr/25Q2vVB8
         l+lS5D298jTL2wkZfGLU1/sJ1enb3w2FrdUupL8bNEbVmszr4icOk4lNwhfhvzt/CtrT
         viYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=srQiEmEbSXK3g8AjQSw3FOYImi25tk6IpcEAOabHzAk=;
        b=liJdn22BW6bBTOC4AJKGMTlC1wgtFOEuH9JhnHOk2N1ppcKZepu4pIvgeYTrxRGx37
         hrFvbeBzS1KUYhEENNDzDxORtlD0/Cfwq2CA1B14+tP2MyF0Eh0GIwuCgi5gaOGu4ctH
         XsVLKywcmlYdJvk1AG3/VoqdnGQo4ohXc1Oa33TobMFQvDrSdqry6ZTRVCdAKllstX4o
         +Ot4+6LwAkMZ5MS31GsWzrSHKf0km5BUNQuxldUDUNrRcURv4/Wak6ATvSYAJDccH8bU
         66ERuN08lDPPaUvG04rbm7EBbmP94l2fEZDeLLqOhCV3P+H0lqU2cwg81FRlw/hSHcog
         rQGw==
X-Gm-Message-State: AOAM530pMG8HldWspzGbI7u4AM5iMDkgYhZOoxmjyknopRiWDRSKL7vn
        wrW3GldJLxADj35Kd2VylH8Fyg==
X-Google-Smtp-Source: ABdhPJySU5UjzWdLQA7bJpkWYodfVlke7suoJXxUJrYG4aHXdseXfMidzPfs6pAXSn2J5oiaplcdcw==
X-Received: by 2002:adf:82af:: with SMTP id 44mr8138496wrc.279.1614938547137;
        Fri, 05 Mar 2021 02:02:27 -0800 (PST)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id r2sm3572882wrt.8.2021.03.05.02.02.26
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Mar 2021 02:02:26 -0800 (PST)
Subject: Re: [PATCH 2/2] nvmem: iomap: new driver exposing NVMEM accessible
 using I/O mapping
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mips@vger.kernel.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        Vivek Unune <npcomplete13@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com,
        linux-kernel@vger.kernel.org,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20210304144132.24098-1-zajec5@gmail.com>
 <20210304144132.24098-2-zajec5@gmail.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <047bced8-6c20-4a0a-c7ea-e0ad83318461@linaro.org>
Date:   Fri, 5 Mar 2021 10:02:25 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20210304144132.24098-2-zajec5@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 04/03/2021 14:41, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> This is a generic NVMEM access method used e.g. by Broadcom for their
> NVRAM on MIPS and Northstar devices.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
>   drivers/nvmem/Kconfig  |  7 +++
>   drivers/nvmem/Makefile |  2 +
>   drivers/nvmem/iomap.c  | 99 ++++++++++++++++++++++++++++++++++++++++++
>   3 files changed, 108 insertions(+)
>   create mode 100644 drivers/nvmem/iomap.c
> 
> diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
> index 75d2594c16e1..3d5c5684685d 100644
> --- a/drivers/nvmem/Kconfig
> +++ b/drivers/nvmem/Kconfig
> @@ -278,4 +278,11 @@ config NVMEM_RMEM
>   
>   	  This driver can also be built as a module. If so, the module
>   	  will be called nvmem-rmem.
> +
> +config NVMEM_IOMAP
> +	tristate "I/O mapped NVMEM support"
> +	depends on HAS_IOMEM
> +	help
> +	  This driver supports NVMEM that can be accessed using I/O mapping.
> +
>   endif
> diff --git a/drivers/nvmem/Makefile b/drivers/nvmem/Makefile
> index 5376b8e0dae5..88a3b6979c53 100644
> --- a/drivers/nvmem/Makefile
> +++ b/drivers/nvmem/Makefile
> @@ -57,3 +57,5 @@ obj-$(CONFIG_SPRD_EFUSE)	+= nvmem_sprd_efuse.o
>   nvmem_sprd_efuse-y		:= sprd-efuse.o
>   obj-$(CONFIG_NVMEM_RMEM) 	+= nvmem-rmem.o
>   nvmem-rmem-y			:= rmem.o
> +obj-$(CONFIG_NVMEM_IOMAP)	+= nvmem_iomap.o
> +nvmem_iomap-y			:= iomap.o
> diff --git a/drivers/nvmem/iomap.c b/drivers/nvmem/iomap.c
> new file mode 100644
> index 000000000000..ab6b40858a64
> --- /dev/null
> +++ b/drivers/nvmem/iomap.c
> @@ -0,0 +1,99 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (C) 2021 Rafał Miłecki <rafal@milecki.pl>
> + */
> +
> +#include <linux/io.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/module.h>
> +#include <linux/nvmem-provider.h>
> +#include <linux/platform_device.h>
> +
> +struct iomap {
> +	struct device *dev;
> +	void __iomem *base;
> +};
> +
> +static int iomap_read(void *context, unsigned int offset, void *val,
> +		      size_t bytes)
> +{
> +	struct iomap *priv = context;
> +	u8 *src = priv->base + offset;
> +	u8 *dst = val;
> +	size_t tmp;
> +
> +	tmp = offset % 4;
> +	memcpy_fromio(dst, src, tmp);
> +	dst += tmp;
> +	src += tmp;
> +	bytes -= tmp;
> +
> +	tmp = rounddown(bytes, 4);
> +	__ioread32_copy(dst, src, tmp / 4);
> +	dst += tmp;
> +	src += tmp;
> +	bytes -= tmp;
> +
> +	memcpy_fromio(dst, src, bytes);
> +


You could just do this!

	while (bytes--)
		*val++ = readb(priv->base + offset + i++);



> +	return 0;
> +}
> +
> +static int iomap_probe(struct platform_device *pdev)
> +{
> +	struct nvmem_config config = {
> +		.name = "iomap",
> +		.reg_read = iomap_read,
> +	};
> +	struct device *dev = &pdev->dev;
> +	struct resource *res;
> +	struct iomap *priv;
> +
> +	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
> +	if (!priv)
> +		return -ENOMEM;
> +	priv->dev = dev;
> +
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);


> +	if (!res) {
> +		dev_err(dev, "Failed to get resource\n");
> +		return -ENODEV;
> +	}

This is redundant check and error message!

You can just do :
res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
priv->base = devm_ioremap_resource(dev, res);


> +
> +	priv->base = devm_ioremap_resource(dev, res);
> +	if (IS_ERR(priv->base)) {
> +		dev_err(dev, "Failed to map resource: %ld\n", PTR_ERR(priv->base));
This message is redundant!

> +		return PTR_ERR(priv->base);
> +	}


> +
> +	config.dev = dev;
> +	config.priv = priv;
> +	config.size = resource_size(res);
> +
> +	return PTR_ERR_OR_ZERO(devm_nvmem_register(dev, &config));
> +}
> +
> +static const struct of_device_id iomap_of_match_table[] = {
> +	{ .compatible = "brcm,nvram", },
> +	{ .compatible = "nvmem-iomap", },

Generic compatible does not really makes sense at all, you can probably 
consider adding some generic functions rather than having a compatible, 
in case you want to reduce code duplication!


> +	{},
> +};
> +
> +static struct platform_driver iomap_driver = {
> +	.probe = iomap_probe,
> +	.driver = {
> +		.name = "nvmem_iomap",
> +		.of_match_table = iomap_of_match_table,
> +	},
> +};
> +
> +static int __init iomap_init(void)
> +{
> +	return platform_driver_register(&iomap_driver);
> +}
> +
> +subsys_initcall_sync(iomap_init);
> +
> +MODULE_AUTHOR("Rafał Miłecki");
> +MODULE_LICENSE("GPL v2");

it should be
MODULE_LICENSE("GPL");


> +MODULE_DEVICE_TABLE(of, iomap_of_match_table);
> 

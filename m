Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C5E17083DE
	for <lists+devicetree@lfdr.de>; Thu, 18 May 2023 16:22:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230183AbjEROWz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 May 2023 10:22:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230031AbjEROWx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 May 2023 10:22:53 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27D9510A
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 07:22:52 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-96aa0cab88dso334279566b.1
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 07:22:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684419770; x=1687011770;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EaUa6BG/75CAIk0ZhFg5FlY0gWuIfk/ZjnI5LggGAEA=;
        b=gyXgCWS9+AoPebMYx0nb+nsrAvi7EHFbw778/P7da+8L4wUlXZMHPqdxFQ9FeTCDEK
         tGB8asgwVf4fASEvQPBeS7f+4wjEjgYRPRKZVJPWw3HVAlpRgu5SUv2gldJ7HM8KtAJ6
         Jcbe0uL9LvsqznYSgW4nXbgy1f+xAiBytwMAdDZYrem+ZI0bDESIvuvhVS2fV3+tnkg8
         9lIIyF2T04oo2cPbr9EaVUUVaDKJROMsDOIzbho/ceRIsL0zkgTtQ65RzjMKqAegcdcI
         GgbRUR7wg1dKUuwlOTNe44HePiUWcL/6/Wbm9UWVJXUbtcdT9SSaeulUPtjn1VyqR1aK
         mVKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684419770; x=1687011770;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EaUa6BG/75CAIk0ZhFg5FlY0gWuIfk/ZjnI5LggGAEA=;
        b=cBUHAtmjcMdu74IZvtYayYIQpDuRnHfd8A0FptJYPWHb0HS1tQv+T4NnnL4pV768/8
         HSqhhhmQFP6BMDWvXP977g7QSeIH8NfJY3D/wqmUlzovFTcmCuCLDIgmXDR1F2ULFMFz
         KIeEOVB6f4HWd4/I0P11b6UzHBAptC9imESwyIzXEBY2dVJyPq8PO9I0Xvhst6I3NmXn
         3u6rf9YJ4mVpgcvOHmgMOLid++qhGpTP2YFpQwDPtujQmKv/jNMBgl052NSoPXawLucW
         5zO8HEMbDLbuB3dueo/ThwsvtqDGG98mFdF9Ngq5gQkzeK7zzscfcGxnK6BarkO+cJsZ
         KYUw==
X-Gm-Message-State: AC+VfDw52OnydZZ9AOKWIyVK6l1uiqsE3NlL0DgFkH8DrQrB7Y9gbUBO
        u3O/RJSvoIPo054C+GpMBQomew==
X-Google-Smtp-Source: ACHHUZ5rsY+4ZrddPTzi5yGYTO6uB2CoMYBZEjeQ/IZNgpiBRqKppp9e+ejrsC4yzyX2lc6OrJo9ig==
X-Received: by 2002:a17:907:7e99:b0:96a:2dd7:2ef9 with SMTP id qb25-20020a1709077e9900b0096a2dd72ef9mr30255867ejc.39.1684419770584;
        Thu, 18 May 2023 07:22:50 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:7e24:6d1b:6bf:4249? ([2a02:810d:15c0:828:7e24:6d1b:6bf:4249])
        by smtp.gmail.com with ESMTPSA id y21-20020a1709060a9500b00965cd15c9bbsm1032892ejf.62.2023.05.18.07.22.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 May 2023 07:22:50 -0700 (PDT)
Message-ID: <e7859392-fd52-e4ba-d7b2-f77ede98e0e1@linaro.org>
Date:   Thu, 18 May 2023 16:22:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 2/3] nvmem: syscon: Add syscon backed nvmem driver
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org
Cc:     Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        devicetree@vger.kernel.org, kernel@dh-electronics.com,
        linux-stm32@st-md-mailman.stormreply.com
References: <20230517152513.27922-1-marex@denx.de>
 <20230517152513.27922-2-marex@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230517152513.27922-2-marex@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/05/2023 17:25, Marek Vasut wrote:
> Add trivial driver which permits exposing syscon backed register
> to userspace. This is useful e.g. to expose U-Boot boot counter
> on various platforms where the boot counter is stored in random
> volatile register, like STM32MP15xx TAMP_BKPxR register.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Marek Vasut <marex@denx.de>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Cc: devicetree@vger.kernel.org
> Cc: kernel@dh-electronics.com
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> ---
> V2: No change
> ---
>  drivers/nvmem/Kconfig        |  10 ++++
>  drivers/nvmem/Makefile       |   2 +
>  drivers/nvmem/nvmem-syscon.c | 105 +++++++++++++++++++++++++++++++++++
>  3 files changed, 117 insertions(+)
>  create mode 100644 drivers/nvmem/nvmem-syscon.c
> 
> diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
> index b291b27048c76..4e4aecdd9c293 100644
> --- a/drivers/nvmem/Kconfig
> +++ b/drivers/nvmem/Kconfig
> @@ -303,6 +303,16 @@ config NVMEM_STM32_BSEC_OPTEE_TA
>  	  This library is a used by stm32-romem driver or included in the module
>  	  called nvmem-stm32-romem.
>  
> +config NVMEM_SYSCON
> +	tristate "Generic syscon backed nvmem"
> +	help
> +	  This is a driver for generic syscon backed nvmem. This can be
> +	  used to expose arbitrary syscon backed register to user space
> +	  via nvmem, like the U-Boot boot counter.
> +
> +	  This driver can also be built as a module. If so, the module
> +	  will be called nvmem-syscon.
> +
>  config NVMEM_STM32_ROMEM
>  	tristate "STMicroelectronics STM32 factory-programmed memory support"
>  	depends on ARCH_STM32 || COMPILE_TEST
> diff --git a/drivers/nvmem/Makefile b/drivers/nvmem/Makefile
> index f82431ec8aef0..d10e478e6a6c9 100644
> --- a/drivers/nvmem/Makefile
> +++ b/drivers/nvmem/Makefile
> @@ -60,6 +60,8 @@ obj-$(CONFIG_NVMEM_SPMI_SDAM)		+= nvmem_qcom-spmi-sdam.o
>  nvmem_qcom-spmi-sdam-y			+= qcom-spmi-sdam.o
>  obj-$(CONFIG_NVMEM_SPRD_EFUSE)		+= nvmem_sprd_efuse.o
>  nvmem_sprd_efuse-y			:= sprd-efuse.o
> +obj-$(CONFIG_NVMEM_SYSCON)		+= nvmem_syscon.o
> +nvmem_syscon-y				:= nvmem-syscon.o
>  obj-$(CONFIG_NVMEM_STM32_ROMEM)		+= nvmem_stm32_romem.o
>  nvmem_stm32_romem-y 			:= stm32-romem.o
>  nvmem_stm32_romem-$(CONFIG_NVMEM_STM32_BSEC_OPTEE_TA) += stm32-bsec-optee-ta.o
> diff --git a/drivers/nvmem/nvmem-syscon.c b/drivers/nvmem/nvmem-syscon.c
> new file mode 100644
> index 0000000000000..e0aa5af0300d3
> --- /dev/null
> +++ b/drivers/nvmem/nvmem-syscon.c
> @@ -0,0 +1,105 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (C) 2022 Marek Vasut <marex@denx.de>
> + *
> + * Based on snvs_lpgpr.c .
> + */
> +
> +#include <linux/mfd/syscon.h>
> +#include <linux/module.h>
> +#include <linux/nvmem-provider.h>
> +#include <linux/of_device.h>
> +#include <linux/regmap.h>
> +
> +struct nvmem_syscon_priv {
> +	struct device_d		*dev;
> +	struct regmap		*regmap;
> +	struct nvmem_config	cfg;
> +	unsigned int		off;
> +};
> +
> +static int nvmem_syscon_write(void *context, unsigned int offset, void *val,
> +			      size_t bytes)
> +{
> +	struct nvmem_syscon_priv *priv = context;
> +
> +	return regmap_bulk_write(priv->regmap, priv->off + offset,
> +				 val, bytes / 4);
> +}
> +
> +static int nvmem_syscon_read(void *context, unsigned int offset, void *val,
> +			     size_t bytes)
> +{
> +	struct nvmem_syscon_priv *priv = context;
> +
> +	return regmap_bulk_read(priv->regmap, priv->off + offset,
> +				val, bytes / 4);
> +}
> +
> +static int nvmem_syscon_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct device_node *node = dev->of_node;
> +	struct device_node *syscon_node;
> +	struct nvmem_syscon_priv *priv;
> +	struct nvmem_device *nvmem;
> +	struct nvmem_config *cfg;
> +	int ret;
> +
> +	if (!node)
> +		return -ENOENT;
> +
> +	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
> +	if (!priv)
> +		return -ENOMEM;
> +
> +	ret = of_property_read_u32_index(node, "reg", 0, &priv->off);
> +	if (ret)
> +		return ret;
> +
> +	ret = of_property_read_u32_index(node, "reg", 1, &priv->cfg.size);
> +	if (ret)
> +		return ret;
> +
> +	syscon_node = of_get_parent(node);

This does not look correct. You hard-code dependency that it must be a
child of syscon node. This is weird requirement and not explained in the
bindings.

Why this cannot be then generic MMIO node? Why it has to be a child of
syscon?


> +	if (!syscon_node)
> +		return -ENODEV;
> +
> +	priv->regmap = syscon_node_to_regmap(syscon_node);
> +	of_node_put(syscon_node);
> +	if (IS_ERR(priv->regmap))
> +		return PTR_ERR(priv->regmap);
Best regards,
Krzysztof


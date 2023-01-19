Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6889E673F78
	for <lists+devicetree@lfdr.de>; Thu, 19 Jan 2023 18:04:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230376AbjASREh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Jan 2023 12:04:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229942AbjASREf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Jan 2023 12:04:35 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95D47A5CB
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 09:04:34 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id fl11-20020a05600c0b8b00b003daf72fc844so4045819wmb.0
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 09:04:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MranoMQvEitL66SUgxUH4GxVhFF9M/Ro+uQ50zE1sVY=;
        b=sAWAhhIWcvX+dCvn+cYq7rbGndKgluno0uJ0fPk/tFSRmQATeKihtiDfcEVOussgAY
         qMcavNrCr6gq/xYiBfrMBdd99ucnsIlNTuoQWfo3ewteqMBOszuG+d94VHngv6JBBB+N
         +PRSz055tL1nCe5TcetT64Wfy1FlpzNylSdrfld0pfnl/ySnN5nD7CKee9Irn23c7Lj3
         hTpgC4Hm/Zh0bcNDftT6al4qmDCvDqzErv8fiyHfUwCf5+Sjb0huuNYZB9ML7o9QCwG0
         sKBF+LqmFu9O1ASbvsbHX5/bg7+zwQe29RXY3ApWgVYfFrwwVnWXQs2WdDo2YXF80lNC
         77aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MranoMQvEitL66SUgxUH4GxVhFF9M/Ro+uQ50zE1sVY=;
        b=BdRH2KHdfBunKuSWIa3t7qUxOtbWEiTi1yY8ZplKFCVblcegioOqNUBKWnu36CJ4Fg
         nPUcf+RRvGp9yGZSbor8LfX0/ObkbnLaTEJB2G5WfywYXf233pAS4Z/SvmEkLc46P2qt
         FK0v5PtQu++q08vZ4WHXeh2RZhVoOc0LZ3f2VPMPqoUm7B1+dEzugzXCXrwyND2LpwtP
         lySe32PoqQ/k9AAFKgq5qJLEWY5+nwLd+dUPxPqukRxLuSXhEYHGOl4BbKhUOfhRUITX
         dZuTTywYtTRePn4ZLFsyQY4Bo7Wsi2d9PKyaRtbNC4pytAG7Aul1PBOesJ/l/gZcGqZz
         WFjw==
X-Gm-Message-State: AFqh2krkO+lDPCeCtqAuTg19sl4wAQDhAVn8f5+hrwUQBfUsCrcQ0zCW
        7AcwmTxqStWjVpwcNMZuST9Rtg==
X-Google-Smtp-Source: AMrXdXvqVyNb+4WyNf6BscYxHtqDfumx6PYvLfvtcecj8JxJqAVasH4AWSoOGZE9iOxV1WtzYIvw/g==
X-Received: by 2002:a05:600c:3ba5:b0:3da:ff66:e3cc with SMTP id n37-20020a05600c3ba500b003daff66e3ccmr10641592wms.21.1674147873191;
        Thu, 19 Jan 2023 09:04:33 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id fc13-20020a05600c524d00b003db2dede1a2sm210168wmb.26.2023.01.19.09.04.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Jan 2023 09:04:32 -0800 (PST)
Message-ID: <acab1d7a-ef00-a3be-f73c-6cb9d01687b9@linaro.org>
Date:   Thu, 19 Jan 2023 18:04:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH 8/9] ARM: multi_v7_defconfig: Add options to support
 TQMLS102xA series
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Russell King <linux@armlinux.org.uk>,
        Marek Vasut <marex@denx.de>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>
Cc:     soc@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230119144236.3541751-1-alexander.stein@ew.tq-group.com>
 <20230119144236.3541751-9-alexander.stein@ew.tq-group.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230119144236.3541751-9-alexander.stein@ew.tq-group.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,UPPERCASE_50_75 autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/01/2023 15:42, Alexander Stein wrote:
> This enables drivers used on TQMLS102xA + MBLS1021A.

Do not use "This (commit/patch)".
https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L95

> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  arch/arm/configs/multi_v7_defconfig | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
> index ee184eb37adcf..441a449172368 100644
> --- a/arch/arm/configs/multi_v7_defconfig
> +++ b/arch/arm/configs/multi_v7_defconfig
> @@ -191,6 +191,7 @@ CONFIG_PCI_TEGRA=y
>  CONFIG_PCI_RCAR_GEN2=y
>  CONFIG_PCIE_RCAR_HOST=y
>  CONFIG_PCI_DRA7XX_EP=y
> +CONFIG_PCI_LAYERSCAPE=y
>  CONFIG_PCI_ENDPOINT=y
>  CONFIG_PCI_ENDPOINT_CONFIGFS=y
>  CONFIG_PCI_EPF_TEST=m
> @@ -249,6 +250,7 @@ CONFIG_AHCI_ST=y
>  CONFIG_AHCI_IMX=y
>  CONFIG_AHCI_SUNXI=y
>  CONFIG_AHCI_TEGRA=y
> +CONFIG_AHCI_QORIQ=y
>  CONFIG_SATA_HIGHBANK=y
>  CONFIG_SATA_MV=y
>  CONFIG_SATA_RCAR=y
> @@ -329,6 +331,7 @@ CONFIG_TOUCHSCREEN_ADC=m
>  CONFIG_TOUCHSCREEN_ATMEL_MXT=m
>  CONFIG_TOUCHSCREEN_ELAN=m
>  CONFIG_TOUCHSCREEN_MMS114=m
> +CONFIG_TOUCHSCREEN_EDT_FT5X06=m
>  CONFIG_TOUCHSCREEN_WM97XX=m
>  CONFIG_TOUCHSCREEN_ST1232=m
>  CONFIG_TOUCHSCREEN_STMPE=y
> @@ -483,6 +486,7 @@ CONFIG_GPIO_ASPEED_SGPIO=y
>  CONFIG_GPIO_DAVINCI=y
>  CONFIG_GPIO_DWAPB=y
>  CONFIG_GPIO_EM=y
> +CONFIG_GPIO_MPC8XXX=y

module

>  CONFIG_GPIO_MXC=y
>  CONFIG_GPIO_RCAR=y
>  CONFIG_GPIO_SYSCON=y
> @@ -493,6 +497,7 @@ CONFIG_GPIO_PCA953X=y
>  CONFIG_GPIO_PCA953X_IRQ=y
>  CONFIG_GPIO_PCF857X=y
>  CONFIG_GPIO_PALMAS=y
> +CONFIG_GPIO_STMPE=y

module

>  CONFIG_GPIO_TPS6586X=y
>  CONFIG_GPIO_TPS65910=y
>  CONFIG_GPIO_TWL4030=y
> @@ -533,6 +538,7 @@ CONFIG_SENSORS_INA2XX=m
>  CONFIG_CPU_THERMAL=y
>  CONFIG_DEVFREQ_THERMAL=y
>  CONFIG_IMX_THERMAL=y
> +CONFIG_QORIQ_THERMAL=m
>  CONFIG_ROCKCHIP_THERMAL=y
>  CONFIG_RCAR_THERMAL=y
>  CONFIG_ARMADA_THERMAL=y
> @@ -821,6 +827,8 @@ CONFIG_SND_SOC_MSM8916_WCD_ANALOG=m
>  CONFIG_SND_SOC_MSM8916_WCD_DIGITAL=m
>  CONFIG_SND_SOC_SGTL5000=m
>  CONFIG_SND_SOC_STI_SAS=m
> +CONFIG_SND_SOC_TLV320AIC32X4=m
> +CONFIG_SND_SOC_TLV320AIC32X4_I2C=m
>  CONFIG_SND_SOC_WM8978=m
>  CONFIG_SND_AUDIO_GRAPH_CARD=m
>  CONFIG_USB=y
> @@ -830,6 +838,7 @@ CONFIG_USB_XHCI_MVEBU=y
>  CONFIG_USB_XHCI_TEGRA=m
>  CONFIG_USB_BRCMSTB=m
>  CONFIG_USB_EHCI_HCD=y
> +CONFIG_USB_EHCI_FSL=y

module

>  CONFIG_USB_EHCI_HCD_STI=y
>  CONFIG_USB_EHCI_EXYNOS=m
>  CONFIG_USB_EHCI_MV=m
> @@ -933,6 +942,8 @@ CONFIG_NEW_LEDS=y
>  CONFIG_LEDS_CLASS=y
>  CONFIG_LEDS_CLASS_FLASH=m
>  CONFIG_LEDS_CPCAP=m
> +CONFIG_LEDS_PCA9532=m
> +CONFIG_LEDS_PCA9532_GPIO=y
>  CONFIG_LEDS_GPIO=y
>  CONFIG_LEDS_PWM=y
>  CONFIG_LEDS_MAX8997=m
> @@ -949,6 +960,7 @@ CONFIG_LEDS_TRIGGER_DEFAULT_ON=y
>  CONFIG_LEDS_TRIGGER_TRANSIENT=y
>  CONFIG_LEDS_TRIGGER_CAMERA=y
>  CONFIG_EDAC=y
> +CONFIG_EDAC_LAYERSCAPE=y
>  CONFIG_EDAC_HIGHBANK_MC=y
>  CONFIG_EDAC_HIGHBANK_L2=y
>  CONFIG_RTC_CLASS=y
> @@ -962,6 +974,7 @@ CONFIG_RTC_DRV_MAX8997=m
>  CONFIG_RTC_DRV_MAX77686=y
>  CONFIG_RTC_DRV_RK808=m
>  CONFIG_RTC_DRV_RS5C372=m
> +CONFIG_RTC_DRV_PCF85063=y

module

>  CONFIG_RTC_DRV_PCF85363=m
>  CONFIG_RTC_DRV_BQ32K=m
>  CONFIG_RTC_DRV_TWL4030=y

Best regards,
Krzysztof


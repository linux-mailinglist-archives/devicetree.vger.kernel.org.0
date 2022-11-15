Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 66A3E629492
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 10:42:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229681AbiKOJmA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 04:42:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229949AbiKOJlz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 04:41:55 -0500
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E47EB1C11F
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 01:41:16 -0800 (PST)
Received: by mail-lj1-x22a.google.com with SMTP id k19so16781200lji.2
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 01:41:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=okPVXaFb4lXO/cyUcimbQaAZrfvwngLm31tMd8+vgm4=;
        b=CrAfccNRzCZGtFn11OTODDpiYWGu2tZTWuHMXKZGG931Zbr1pNtch1lpX8KWBAUspQ
         byq4P4PKSx5lnNuewPZT5pBU/C6xW3nc2UNLyt7GFTiQi/mKS7YQbtP1WFNlIIZtrVjo
         +cv5iQqAMbD9AJhMbVrknwiZPlebvcnIY1l18TBSskX78YERI7MF5HxdSYEQzQHAdUdX
         7mugxXeMSyEoiVWvtkNshVzmkh6x6CV6lTnOxiOExA1UFezANNlJXP5wOMCG1BDwlVnK
         J+dVKGiEXl7kW+82sRiQJDe0+l4jyS8V3Pj8cJhMsaptwy700hMw5TNaN2bLgNjNB1Z/
         12AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=okPVXaFb4lXO/cyUcimbQaAZrfvwngLm31tMd8+vgm4=;
        b=QAskFgUnaju0bo4Zd73dN6cp0JeExwl6XmC4dgjEpDRE6JlLHwtlvlZ0cpkGkGEIif
         LGGuf/VPCZtKo6YSMwtBd6QxCFq6RjFUJPYIXI/KmJko+b/gdzO/MafAi5rTtr3TEhVo
         ZzBLPyckROkB1NhdIy631FQEQuNYBd/aGd3MTMHZqGwh0FiWqtRLtghF3G/AvWu6dR95
         3mj4ZhV6QTFPi4WM/XiwNd50nOnJUS5m7YICMRR+0yUtpN1vNzFnAhZN5Jn8+mJ1g1c8
         a0nBE64Q72Ou8pl6sXKygz9HHqDGoBey52p8kDJbG87v+3DZq1U/UFr7KLCMJq2/jjWQ
         OvVA==
X-Gm-Message-State: ANoB5plCErmAZY5IsIA0otgzSIlT8LOg+KqRKwI0q8a8Ze/OR/aw0xQ6
        0qk8WgdYBgbu12ds3KT6icKL9A==
X-Google-Smtp-Source: AA0mqf6CL5jSVsEkqdjyWDVghVmfxzWVHtaTlRXuUvNTeeWDj4lvwmOP6vNPKDwzcWsJZWhZ5MAN3Q==
X-Received: by 2002:a2e:b046:0:b0:278:fa79:3285 with SMTP id d6-20020a2eb046000000b00278fa793285mr3778824ljl.356.1668505275210;
        Tue, 15 Nov 2022 01:41:15 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id n22-20020a05651203f600b004ab98cd5644sm2148179lfq.182.2022.11.15.01.41.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Nov 2022 01:41:14 -0800 (PST)
Message-ID: <72de460d-8eb3-573f-ead2-3bfef0b0306c@linaro.org>
Date:   Tue, 15 Nov 2022 10:41:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 01/15] arm64: dts: mediatek: Initial mt8365-evk support
Content-Language: en-US
To:     =?UTF-8?Q?Bernhard_Rosenkr=c3=a4nzer?= <bero@baylibre.com>,
        linux-mediatek@lists.infradead.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com
References: <20221107211001.257393-1-bero@baylibre.com>
 <20221115025421.59847-1-bero@baylibre.com>
 <20221115025421.59847-2-bero@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221115025421.59847-2-bero@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/11/2022 03:54, Bernhard Rosenkränzer wrote:
> From: Fabien Parent <fparent@baylibre.com>
> 
> This adds minimal support for the Mediatek 8365 SOC and the EVK reference
> board, allowing the board to boot to initramfs with serial port I/O.
> 
> GPIO keys are supported, MMC is partially supported (needs the clocks
> driver for full support).
> 
> Signed-off-by: Fabien Parent <fparent@baylibre.com>
> [bero@baylibre.com: Removed parts depending on drivers that aren't upstream yet, cleanups]
> Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
> ---
>  arch/arm64/boot/dts/mediatek/Makefile       |   1 +
>  arch/arm64/boot/dts/mediatek/mt8365-evk.dts | 344 +++++++++++
>  arch/arm64/boot/dts/mediatek/mt8365.dtsi    | 601 ++++++++++++++++++++
>  3 files changed, 946 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8365-evk.dts
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8365.dtsi
> 
> diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
> index 0ec90cb3ef289..e668fd50a3326 100644
> --- a/arch/arm64/boot/dts/mediatek/Makefile
> +++ b/arch/arm64/boot/dts/mediatek/Makefile
> @@ -46,4 +46,5 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt8195-cherry-tomato-r2.dtb
>  dtb-$(CONFIG_ARCH_MEDIATEK) += mt8195-cherry-tomato-r3.dtb
>  dtb-$(CONFIG_ARCH_MEDIATEK) += mt8195-demo.dtb
>  dtb-$(CONFIG_ARCH_MEDIATEK) += mt8195-evb.dtb
> +dtb-$(CONFIG_ARCH_MEDIATEK) += mt8365-evk.dtb
>  dtb-$(CONFIG_ARCH_MEDIATEK) += mt8516-pumpkin.dtb
> diff --git a/arch/arm64/boot/dts/mediatek/mt8365-evk.dts b/arch/arm64/boot/dts/mediatek/mt8365-evk.dts
> new file mode 100644
> index 0000000000000..74e0f75231637
> --- /dev/null
> +++ b/arch/arm64/boot/dts/mediatek/mt8365-evk.dts
> @@ -0,0 +1,344 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2021-2022 BayLibre, SAS.
> + * Authors:
> + * Fabien Parent <fparent@baylibre.com>
> + * Bernhard Rosenkränzer <bero@baylibre.com>
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/pinctrl/mt8365-pinfunc.h>
> +#include "mt8365.dtsi"
> +
> +/ {
> +	model = "MediaTek MT8365 Open Platform EVK";
> +	compatible = "mediatek,mt8365-evk", "mediatek,mt8365";

Missing bindings.

> +
> +	aliases {
> +		serial0 = &uart0;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:921600n8";
> +	};
> +

(...)

> +
> +	soc {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		compatible = "simple-bus";
> +		ranges;
> +
> +		gic: interrupt-controller@c000000 {
> +			compatible = "arm,gic-v3";
> +			#interrupt-cells = <4>;
> +			interrupt-parent = <&gic>;
> +			interrupt-controller;
> +			reg = <0 0x0c000000 0 0x80000>,
> +			      <0 0x0c080000 0 0x80000>;
> +
> +			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH 0>;
> +		};
> +
> +		topckgen: syscon@10000000 {
> +			compatible = "mediatek,mt8365-topckgen", "syscon";
> +			reg = <0 0x10000000 0 0x1000>;
> +			#clock-cells = <1>;
> +		};
> +
> +		infracfg: syscon@10001000 {
> +			compatible = "mediatek,mt8365-infracfg", "syscon";

Missing bindings.

Did you order your patches in logical order?


Best regards,
Krzysztof


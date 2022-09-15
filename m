Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E1F4D5B9EAA
	for <lists+devicetree@lfdr.de>; Thu, 15 Sep 2022 17:23:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230497AbiIOPX0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Sep 2022 11:23:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231130AbiIOPW7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Sep 2022 11:22:59 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD24BFC6
        for <devicetree@vger.kernel.org>; Thu, 15 Sep 2022 08:21:52 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 9-20020a1c0209000000b003b494ffc00bso820060wmc.0
        for <devicetree@vger.kernel.org>; Thu, 15 Sep 2022 08:21:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=XL0xwpyUATmfV8NTboDV9urwcM2JdQaOD6i684YfJJg=;
        b=BNSeTYuYZXnfKsHa/+k5eGfp+AROYpXGYhVoUouAQubo1c/j8uyrbKq68e7BmcBsdS
         gJV0UKL4/HlHPNKDYPlWAEEp83J7FNPUg75T+9l/xbqrUBWND04iZx24q+Zi0SY+lZAl
         q1cG7jH3cQJXBI9SE/CO8ASsB1DpfBFFMMrKhDZWtwpRlBdkQz9Bg/4bwR7WnUpNRQG1
         KpJJN1IvMASy8aJAwnHYbyBAHD89AzNgrGaBBxvRxHlNOo8EPpPltCS/dUV/HBzRzSmP
         EQXBiLHmJDOv2QZk0k+RCSVxc8/5FmVZXGY7Whx0+yQ+x4yjDS+1KGUpdpUPDzEP+Tv5
         6gVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=XL0xwpyUATmfV8NTboDV9urwcM2JdQaOD6i684YfJJg=;
        b=ZINFP7goRjXavsFh3w/DKufu7B9S8TiqeRsY2rhqEwSJKEG1s6ftNaMLoh7Gs7GL1r
         amZynRHCCwmi9zsdynQvnktaBMDjvtdFt/4mRbVsLlQTZuDsLqICGCF5n5OdJcU6QR6v
         l5HuNFEY4CS9ijQ2xvInG/B2xKQ8rKOsB8ujroe0Al29hC1n3wgvyUI9gNQI2xPATY6O
         i9IAGd+pz0FE2t4WQDZSwf7gvon45Grf93LdNaGfQM2UFdzdLhWrwhvhhhxxHhQDXLxv
         0D36DAJEat2Gk/g4ACqISgtR8OuWXasx5mKQu2thIIjhe8q2tnL+uWlB8QfGNRbWJ0m2
         S++A==
X-Gm-Message-State: ACgBeo1j6jaQ2gJTWGoqSSvO/ByWv6YUYhZnFP7aa7286SktwWVd9WQm
        wtQeZq/Xv/ESma4iaLlB3QermA==
X-Google-Smtp-Source: AA6agR6SRqLBl6SAY4AwCcAf8gNtCT2ZHWfwgOIr6xnv9kz9vlISHBGaKfR/BrnN4Kaih0mfYE9tEQ==
X-Received: by 2002:a05:600c:4e8b:b0:3a5:f5bf:9c5a with SMTP id f11-20020a05600c4e8b00b003a5f5bf9c5amr7326090wmq.85.1663255311352;
        Thu, 15 Sep 2022 08:21:51 -0700 (PDT)
Received: from [10.119.22.201] ([89.101.193.72])
        by smtp.gmail.com with ESMTPSA id i9-20020adffc09000000b0022ac13aa98fsm2876614wrr.97.2022.09.15.08.21.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Sep 2022 08:21:50 -0700 (PDT)
Message-ID: <9377f6b9-0443-1d25-8cae-13892d89cf50@linaro.org>
Date:   Thu, 15 Sep 2022 16:21:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2 3/3] arm64: dts: freescale: Add InnoComm i.MX8MM based
 WB15 SoM and EVK
Content-Language: en-US
To:     Sascha Hauer <s.hauer@pengutronix.de>, devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de
References: <20220913103337.1849023-1-s.hauer@pengutronix.de>
 <20220913103337.1849023-4-s.hauer@pengutronix.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220913103337.1849023-4-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/09/2022 11:33, Sascha Hauer wrote:
> Add the InnoComm i.MX8MM based WB15 SoM and its EVK. The WB15 is a
> half credit card sized board featuring:
> 
> - i.MX8MM CPU
> - LPDDR4, 1GiB
> - eMMC, 8GiB
> - 1Gb Ethernet RGMII interface
> - WiFi 802.11 a/b/g/n/ac, Bluetooth 4.2
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Thank you for your patch. There is something to discuss/improve.

> +	pinctrl_fec: fecgrp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_ENET_MDC_ENET1_MDC			0x03
> +			MX8MM_IOMUXC_ENET_MDIO_ENET1_MDIO		0x03
> +			MX8MM_IOMUXC_ENET_TD3_ENET1_RGMII_TD3		0x1f
> +			MX8MM_IOMUXC_ENET_TD2_ENET1_RGMII_TD2		0x1f
> +			MX8MM_IOMUXC_ENET_TD1_ENET1_RGMII_TD1		0x1f
> +			MX8MM_IOMUXC_ENET_TD0_ENET1_RGMII_TD0		0x1f
> +			MX8MM_IOMUXC_ENET_RD3_ENET1_RGMII_RD3		0x91
> +			MX8MM_IOMUXC_ENET_RD2_ENET1_RGMII_RD2		0x91
> +			MX8MM_IOMUXC_ENET_RD1_ENET1_RGMII_RD1		0x91
> +			MX8MM_IOMUXC_ENET_RD0_ENET1_RGMII_RD0		0x91
> +			MX8MM_IOMUXC_ENET_TXC_ENET1_RGMII_TXC		0x1f
> +			MX8MM_IOMUXC_ENET_RXC_ENET1_RGMII_RXC		0x91
> +			MX8MM_IOMUXC_ENET_RX_CTL_ENET1_RGMII_RX_CTL	0x91
> +			MX8MM_IOMUXC_ENET_TX_CTL_ENET1_RGMII_TX_CTL	0x1f
> +		>;
> +	};
> +
> +	pinctrl_fec_phy: fecphygrp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_GPIO1_IO09_GPIO1_IO9		0x19
> +		>;
> +	};
> +
> +	pinctrl_fec_phy_reg: fecphyreggrp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_GPIO1_IO10_GPIO1_IO10		0x16
> +		>;
> +	};
> +
> +	pinctrl_gpio_leds: led_grp {

No underscores in node names.

> +		fsl,pins = <
> +			MX8MM_IOMUXC_SAI1_RXD1_GPIO4_IO3	0xd6
> +		>;
> +	};
> +
> +	pinctrl_reg_vsd_3v3: reg-vsd-3v3-grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_SD2_RESET_B_GPIO2_IO19	0x41
> +		>;
> +	};
> +};
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-innocomm-wb15.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-innocomm-wb15.dtsi
> new file mode 100644
> index 0000000000000..4a20508d560dd
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-innocomm-wb15.dtsi
> @@ -0,0 +1,480 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright 2018 Bang & Olufsen
> + */
> +
> +#include "imx8mm.dtsi"
> +#include <dt-bindings/phy/phy-imx8-pcie.h>
> +
> +/ {
> +	reg_modem: regulator-modem {
> +		compatible = "regulator-fixed";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_modem_regulator>;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-name = "epdev_on";
> +		gpio = <&gpio3 16 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		regulator-always-on;
> +	};
> +
> +	reg_3v3_out: regulator-3v3-out {
> +		compatible = "regulator-fixed";
> +		regulator-name = "3V3_OUT";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +	};
> +};
> +
> +&cpu_alert0 {
> +	temperature = <95000>;
> +};
> +
> +&cpu_crit0 {
> +	temperature = <105000>;
> +};
> +
> +&ddrc {
> +	operating-points-v2 = <&ddrc_opp_table>;
> +
> +	ddrc_opp_table: opp-table {
> +		compatible = "operating-points-v2";
> +
> +		opp-25000000 {
> +			opp-hz = /bits/ 64 <25000000>;
> +		};
> +
> +		opp-100000000 {
> +			opp-hz = /bits/ 64 <100000000>;
> +		};
> +
> +		opp-600000000 {
> +			opp-hz = /bits/ 64 <600000000>;
> +		};
> +	};
> +};
> +
> +&i2c1 {
> +	clock-frequency = <100000>;
> +	pinctrl-names = "default", "gpio";
> +	pinctrl-0 = <&pinctrl_i2c1>;
> +	pinctrl-1 = <&pinctrl_i2c1_gpio>;
> +	scl-gpios = <&gpio5 14 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +	sda-gpios = <&gpio5 15 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +	status = "okay";
> +
> +	pmic@4b {
> +		compatible = "rohm,bd71847";
> +		reg = <0x4b>;
> +		pinctrl-0 = <&pinctrl_pmic>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <3 GPIO_ACTIVE_LOW>;

Wrong flag. This is very old bug. Please base your work on recent DTSes.
Don't start with vendor/downstream DTS because it contains bugs. Instead
take recent mainline and customize it for the manufacturer.

> +		rohm,reset-snvs-powered;
> +


Best regards,
Krzysztof

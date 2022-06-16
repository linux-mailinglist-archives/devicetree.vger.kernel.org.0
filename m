Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 06F9D54E357
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 16:26:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1377618AbiFPO0q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Jun 2022 10:26:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1376809AbiFPO0p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Jun 2022 10:26:45 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C15F0326D1
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 07:26:44 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id f16so564067pjj.1
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 07:26:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=IfoKOMkheJVYSBWO06E5IDMJ5mCsuCTQcI/BO3Fi7L4=;
        b=CfaIBmIInbx2ND19DoZHTl7Tqshqc9RquV9do9bjWyznaYba2rXlrnCBCm8lu/Krnp
         eJVfnvKXr35w0xsRGuPGdbBbY9XPm/cH+aNauIoMxb54IKmrX1NN7Gnmn+D/IhMu9EA8
         oWw5x3Ez2GPA90LXGqUYstSQXDFQFOv4Km4s2FboOfG1kfDu3OlShCkBebLGadDrFXPi
         qhYmsWoCYPgVipsGg4CYlcrKtwQUbw1As8FsUSej5hZ7q50K3+PGU42rst5P8WZTRPqs
         de+cfWVkQpNAvpauVBnRipOLb+W+aeC78eHEoNHtkt8m8oqOOEz19Y2vXC7JVqcctUr/
         +2gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=IfoKOMkheJVYSBWO06E5IDMJ5mCsuCTQcI/BO3Fi7L4=;
        b=GPOgmSSVnHDicVnbqcB0CLkFurPDRbLFwFNzCxvOXCiTA04R4dR8m1yyBFrQlnphX2
         SBEsjKGvLlJkFDbDY9abCdqndeGgeghXjWhWQWbCUHPwebWIIyKyetZn9icMyxEL8RNm
         j8E3POfpvQoqBjiZOkswVUgVPCOE3Xe3LtwZXueSACtZ17GMn8ZD6pKbWjTZE5Knh2Bd
         iTAy3LzBu0K0LTW8YllcRkpIajc+j0NNdWuiFYZb95wAG6lBFpd47wmj3vUAtN9RN1Xd
         vsLEb0qLw24mYnHktpqNXo+WwNA5U6RowbD0/m+B/I3mAIAmHGtzbTKoWMxtld/CwauF
         +xig==
X-Gm-Message-State: AJIora8ypLXmmpQuGdPeKvaDlLSwHRuca2bWw69yRGUZzMjDkc4tl3je
        rpRGuo9xe7OcOR7qnyV7KBzoww==
X-Google-Smtp-Source: AGRyM1vo9Nb+KWyXiWl6/wntQV3IxQBPszpqUwwynjTScqaAjrf4ADkFFDW211HDoBEogUyZsWwrtw==
X-Received: by 2002:a17:90a:fa5:b0:1e2:ee1b:8f85 with SMTP id 34-20020a17090a0fa500b001e2ee1b8f85mr5280389pjz.216.1655389604203;
        Thu, 16 Jun 2022 07:26:44 -0700 (PDT)
Received: from [172.20.0.255] ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id d20-20020a056a00199400b0050dc762815asm1998568pfl.52.2022.06.16.07.26.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jun 2022 07:26:43 -0700 (PDT)
Message-ID: <e039bef3-3fc4-e11e-9dcd-fe3a764edf3b@linaro.org>
Date:   Thu, 16 Jun 2022 07:26:42 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 2/2] arm64: dts: freescale: add initial device tree for
 TQMa8MPQL with i.MX8MP
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Markus Niebel <Markus.Niebel@tq-group.com>
References: <20220616142221.3986670-1-alexander.stein@ew.tq-group.com>
 <20220616142221.3986670-3-alexander.stein@ew.tq-group.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220616142221.3986670-3-alexander.stein@ew.tq-group.com>
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

On 16/06/2022 07:22, Alexander Stein wrote:
> This adds support for TQMa8MPQL module on MBa8MPxL board.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  arch/arm64/boot/dts/freescale/Makefile        |   1 +
>  .../freescale/imx8mp-tqma8mpql-mba8mpxl.dts   | 689 ++++++++++++++++++
>  .../boot/dts/freescale/imx8mp-tqma8mpql.dtsi  | 284 ++++++++
>  3 files changed, 974 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql.dtsi
> 
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> index c288bda8aa36..ab8e61d4dd7c 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -82,6 +82,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mn-venice-gw7902.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mp-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mp-icore-mx8mp-edimm2.2.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mp-phyboard-pollux-rdk.dtb
> +dtb-$(CONFIG_ARCH_MXC) += imx8mp-tqma8mpql-mba8mpxl.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mp-venice-gw74xx.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mp-verdin-nonwifi-dahlia.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mp-verdin-nonwifi-dev.dtb
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
> new file mode 100644
> index 000000000000..e9755bd7619c
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
> @@ -0,0 +1,689 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +/*
> + * Copyright 2021-2022 TQ-Systems GmbH
> + * Author: Alexander Stein <alexander.stein@tq-group.com>
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/net/ti-dp83867.h>
> +#include <dt-bindings/pwm/pwm.h>
> +#include "imx8mp-tqma8mpql.dtsi"
> +
> +/ {
> +	model = "TQ-Systems i.MX8MPlus TQMa8MPxL on MBa8MPxL";
> +	compatible = "tq,imx8mp-tqma8mpql-mba8mpxl", "tq,imx8mp-tqma8mpql", "fsl,imx8mp";
> +
> +	chosen {
> +		stdout-path = &uart4;
> +	};
> +
> +	iio-hwmon {
> +		compatible = "iio-hwmon";
> +		io-channels = <&adc 0>, <&adc 1>;
> +	};
> +
> +	aliases {
> +		mmc0 = &usdhc3;
> +		mmc1 = &usdhc2;
> +		mmc2 = &usdhc1;
> +		rtc0 = &pcf85063;
> +		rtc1 = &snvs_rtc;
> +		spi0 = &flexspi;
> +		spi1 = &ecspi1;
> +		spi2 = &ecspi2;
> +		spi3 = &ecspi3;
> +	};
> +
> +	backlight_lvds: backlight-lvds {
> +		compatible = "pwm-backlight";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_bllvds>;
> +		pwms = <&pwm2 0 5000000 0>;
> +		power-supply = <&reg_vcc_12v0>;
> +		enable-gpios = <&gpio3 19 GPIO_ACTIVE_HIGH>;
> +		status = "disabled";
> +	};
> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_gpiobutton>;
> +		autorepeat;
> +
> +		switch1 {

swtich-1

> +			label = "S12";
> +			linux,code = <BTN_0>;
> +			gpios = <&gpio5 26 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		switch2 {

switch-2

> +			label = "S13";
> +			linux,code = <BTN_1>;
> +			gpios = <&gpio5 27 GPIO_ACTIVE_LOW>;
> +		};
> +	};
> +
> +	gpio-leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_gpioled>;
> +
> +		led0 {

led-0

> +			label = "led0";

Your label should be more useful... or just replace it with function and
color.

> +			gpios = <&gpio5 5 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "default-on";
> +		};
> +
> +		led1 {

led-1

> +			label = "led1";
> +			gpios = <&gpio5 4 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "heartbeat";
> +		};
> +
> +		led2 {

led-2

> +			label = "led2";
> +			gpios = <&gpio5 3 GPIO_ACTIVE_HIGH>;
> +		};
> +	};
> +
> +	lvds_panel: display {
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_lvdspanel>;
> +		enable-gpios = <&gpio3 20 GPIO_ACTIVE_HIGH>;
> +		backlight = <&backlight_lvds>;
> +		status = "disabled";

What's this node about? There is no compatible.



Best regards,
Krzysztof

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8416D5F3003
	for <lists+devicetree@lfdr.de>; Mon,  3 Oct 2022 14:09:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229854AbiJCMJZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Oct 2022 08:09:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229480AbiJCMJX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Oct 2022 08:09:23 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8AEB4F18A
        for <devicetree@vger.kernel.org>; Mon,  3 Oct 2022 05:09:21 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id u26so7648624lfk.8
        for <devicetree@vger.kernel.org>; Mon, 03 Oct 2022 05:09:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=uczaIHZ2wleGzgv7lC5WJvJPyuPwxeeBloVQth36vGw=;
        b=a/V7kfeCtdtGOC2qFSapcz7MU/ZpXfs19q17B4nMok32LKVKMWhZG0kubk6FH88rIq
         H/2wgmkeUqvkEITXM0xpA0WNb+wNtJ10MbqootFrbB3wo3z4i1Oaxaq6KRbjaVriaVi2
         H5EQjgpKrW3Lkbd1K78uDls4PldmZ0xYM92Q77/idKwfhnHya3zK8TtnvsByX9yuQbo5
         zi44cpMH3I3oGtyMt6C0qKRKoW8X6c5+YglxuPRYFwyV6C51AzfIGSWNJ5WP6ebInkeO
         NpIwU5Tt1GFrtn45sp8/WXwPGIXJPPpLcGtDlIwBTojMicoCPsa2KTdYmcXazQdmcObf
         gK6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=uczaIHZ2wleGzgv7lC5WJvJPyuPwxeeBloVQth36vGw=;
        b=ymvMVUznIl+fk8ABtZuhZwAyDFQmoOj/A3DpXXcQ9yFPJq4QrtuHHwggrKmosdiX6M
         XaKAfa6h2ERIExubOYoLjlmko2TGxMUGYuBZycku19p36aHATbsMuw8sIg70UEkcOVLx
         saw6novzLbALeBiIW2TfQPl3zMOLBHYJu9WyfQ1Ny5cCBoYxFDyRSlD/DTSdxEeGDTec
         9Mw1qVH9NozdVinFwyfNJv6/B9S4kqZGtsr1k0VJagoF420Q7xV7PsJajqg3RIaqyLJ3
         WHhkT40tsmP9tyL/4sXF8NYof70jlTX7biWG9ORLfCwchFPz6mhszdU2E/0BIOuIKPhN
         8A+g==
X-Gm-Message-State: ACrzQf3JOP4/eXNketid2La2WqXJRlNmNYIQl3hLFzLBCQaaddAjD4qp
        qdVHZNB6T0PPGUFCHWtKynv0Og==
X-Google-Smtp-Source: AMsMyM5/CiH7bPe0QLeWmg3fOm8WUTgRI36744cd1h0JWH1fXxrfTnhX3kYxsrgRl+HnGuisu/arjg==
X-Received: by 2002:a05:6512:3f9b:b0:4a1:f54c:f244 with SMTP id x27-20020a0565123f9b00b004a1f54cf244mr6863183lfa.281.1664798960200;
        Mon, 03 Oct 2022 05:09:20 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id u1-20020a056512128100b004979db5aa5bsm1434284lfs.223.2022.10.03.05.09.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Oct 2022 05:09:19 -0700 (PDT)
Message-ID: <b0398b9c-7025-7f54-a884-8c41c6550a18@linaro.org>
Date:   Mon, 3 Oct 2022 14:09:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 3/3] arm64: dts: Add device tree for the Debix Model A
 Board
Content-Language: en-US
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Daniel Scally <dan.scally@ideasonboard.com>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh@kernel.org>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Li Yang <leoyang.li@nxp.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        kieran.bingham@ideasonboard.com, debix-tech@polyhex.net
References: <20221003083705.22495-1-dan.scally@ideasonboard.com>
 <20221003083705.22495-4-dan.scally@ideasonboard.com>
 <152eb491-ddff-9639-a72b-968e3fc5949c@linaro.org>
 <YzrQKyryCafL5pYx@pendragon.ideasonboard.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <YzrQKyryCafL5pYx@pendragon.ideasonboard.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/10/2022 14:06, Laurent Pinchart wrote:
> On Mon, Oct 03, 2022 at 11:26:54AM +0200, Krzysztof Kozlowski wrote:
>> On 03/10/2022 10:37, Daniel Scally wrote:
>>> Add a device tree file describing the Debix Model A board from
>>> Polyhex Technology Co.
>>>
>>> Signed-off-by: Daniel Scally <dan.scally@ideasonboard.com>
>>> ---
>>>  arch/arm64/boot/dts/freescale/Makefile        |   1 +
>>>  .../dts/freescale/imx8mp-debix-model-a.dts    | 550 ++++++++++++++++++
>>>  2 files changed, 551 insertions(+)
>>>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
>>>
>>> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
>>> index 238a83e5b8c6..f26e802cef82 100644
>>> --- a/arch/arm64/boot/dts/freescale/Makefile
>>> +++ b/arch/arm64/boot/dts/freescale/Makefile
>>> @@ -79,6 +79,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mn-ddr4-evk.dtb
>>>  dtb-$(CONFIG_ARCH_MXC) += imx8mn-tqma8mqnl-mba8mx.dtb
>>>  dtb-$(CONFIG_ARCH_MXC) += imx8mn-var-som-symphony.dtb
>>>  dtb-$(CONFIG_ARCH_MXC) += imx8mn-venice-gw7902.dtb
>>> +dtb-$(CONFIG_ARCH_MXC) += imx8mp-debix-model-a.dtb
>>>  dtb-$(CONFIG_ARCH_MXC) += imx8mp-evk.dtb
>>>  dtb-$(CONFIG_ARCH_MXC) += imx8mp-icore-mx8mp-edimm2.2.dtb
>>>  dtb-$(CONFIG_ARCH_MXC) += imx8mp-phyboard-pollux-rdk.dtb
>>> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts b/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
>>> new file mode 100644
>>> index 000000000000..6d0fa3930d0b
>>> --- /dev/null
>>> +++ b/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
>>> @@ -0,0 +1,550 @@
>>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>>> +/*
>>> + * Copyright 2019 NXP
>>> + */
>>> +
>>> +/dts-v1/;
>>> +
>>> +#include <dt-bindings/gpio/gpio.h>
>>> +#include <dt-bindings/leds/common.h>
>>> +#include <dt-bindings/usb/pd.h>
>>> +
>>> +#include "imx8mp.dtsi"
>>> +
>>> +/ {
>>> +	model = "Polyhex Debix Model A (2GB) i.MX8MPlus board";
>>> +	compatible = "polyhex,imx8mp-debix-modela2gb", "fsl,imx8mp";
>>> +
>>> +	chosen {
>>> +		stdout-path = &uart2;
>>> +	};
>>> +
>>> +	gpio-leds {
>>> +		compatible = "gpio-leds";
>>> +		pinctrl-names = "default";
>>> +		pinctrl-0 = <&pinctrl_gpio_led>;
>>> +
>>> +		status-led {
>>> +			function = LED_FUNCTION_POWER;
>>> +			color = <LED_COLOR_ID_RED>;
>>> +			gpios = <&gpio3 16 GPIO_ACTIVE_HIGH>;
>>> +			default-state = "on";
>>> +		};
>>> +	};
>>> +
>>> +	reg_usdhc2_vmmc: regulator-usdhc2 {
>>> +		compatible = "regulator-fixed";
>>> +		pinctrl-names = "default";
>>> +		pinctrl-0 = <&pinctrl_reg_usdhc2_vmmc>;
>>> +		regulator-name = "VSD_3V3";
>>> +		regulator-min-microvolt = <3300000>;
>>> +		regulator-max-microvolt = <3300000>;
>>> +		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
>>> +		enable-active-high;
>>> +	};
>>> +};
>>> +
>>> +&A53_0 {
>>> +	cpu-supply = <&buck2>;
>>> +};
>>> +
>>> +&A53_1 {
>>> +	cpu-supply = <&buck2>;
>>> +};
>>> +
>>> +&A53_2 {
>>> +	cpu-supply = <&buck2>;
>>> +};
>>> +
>>> +&A53_3 {
>>> +	cpu-supply = <&buck2>;
>>> +};
>>> +
>>> +&eqos {
>>> +	pinctrl-names = "default";
>>> +	pinctrl-0 = <&pinctrl_eqos>;
>>> +	phy-connection-type = "rgmii-id";
>>> +	phy-handle = <&ethphy0>;
>>> +	status = "okay";
>>> +
>>> +	mdio {
>>> +		compatible = "snps,dwmac-mdio";
>>> +		#address-cells = <1>;
>>> +		#size-cells = <0>;
>>> +
>>> +		ethphy0: ethernet-phy@0 {
>>> +			compatible = "ethernet-phy-ieee802.3-c22";
>>> +			reg = <0>;
>>> +			reset-gpios = <&gpio4 18 GPIO_ACTIVE_LOW>;
>>> +			reset-assert-us = <20>;
>>> +			reset-deassert-us = <200000>;
>>> +		};
>>> +	};
>>> +};
>>> +
>>> +&fec {
>>> +	pinctrl-names = "default";
>>> +	pinctrl-0 = <&pinctrl_fec>;
>>> +	phy-connection-type = "rgmii-id";
>>> +	phy-handle = <&ethphy1>;
>>> +	fsl,magic-packet;
>>> +	status = "okay";
>>> +
>>> +	mdio {
>>> +		#address-cells = <1>;
>>> +		#size-cells = <0>;
>>> +
>>> +		ethphy1: ethernet-phy@0 {
>>> +			compatible = "ethernet-phy-ieee802.3-c22";
>>> +			reg = <0>;
>>> +			reset-gpios = <&gpio4 19 GPIO_ACTIVE_LOW>;
>>> +			reset-assert-us = <10>;
>>> +			reset-deassert-us = <150>;
>>> +		};
>>> +	};
>>> +};
>>> +
>>> +&i2c1 {
>>> +	clock-frequency = <400000>;
>>> +	pinctrl-names = "default";
>>> +	pinctrl-0 = <&pinctrl_i2c1>;
>>> +	status = "okay";
>>> +
>>> +	pmic@25 {
>>> +		reg = <0x25>;
>>> +		compatible = "nxp,pca9450c";
>>> +		pinctrl-names = "default";
>>> +		pinctrl-0 = <&pinctrl_pmic>;
>>> +		interrupt-parent = <&gpio1>;
>>> +		interrupts = <3 GPIO_ACTIVE_LOW>;
>>
>> Nope, wrong flag. This is a hint for us that you based your DTS on
>> something ancient (e.g. broken downstream stuff). Please start from
>> *scratch* and write your DTS based on a board taken from mainline.
>>
>> There is no point for us to repeat review for all the things  we already
>> fixed in mainline.
> 
> We can't fully do that, as we don't have access to the schematics for
> the board. What we can do, however, is to compare this .dts to others
> from mainline and investigate all differences to see if they can be
> bugs.

The upstreaming process is rather to take a DTS from the mainline and
customize it. Add stuff, remove something, change other nodes. Several
pieces are similar between boards, like the PMIC. I think this patch was
done in other way - entire PMIC was taken from downstream - therefore I
recommend the previous approach. It does not mean that everything should
be done from 0 but rather based on mainline DTS to avoid the same
mistakes we already fixed. Many times...

Best regards,
Krzysztof


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9C92566553B
	for <lists+devicetree@lfdr.de>; Wed, 11 Jan 2023 08:39:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231499AbjAKHjP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Jan 2023 02:39:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231975AbjAKHjN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Jan 2023 02:39:13 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2054F10B44
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 23:39:12 -0800 (PST)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <a.fatoum@pengutronix.de>)
        id 1pFVhK-0004Cd-SK; Wed, 11 Jan 2023 08:38:58 +0100
Message-ID: <7b77825d-cbdb-0150-c30b-aa97fa39fe27@pengutronix.de>
Date:   Wed, 11 Jan 2023 08:38:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
From:   Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: Re: [PATCH 2/2] arm64: dts: imx8mp: Add support for Data Modul i.MX8M
 Plus eDM SBC
To:     Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org
Cc:     Denys Drozdov <denys.drozdov@toradex.com>,
        Fabio Estevam <festevam@denx.de>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Li Yang <leoyang.li@nxp.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Matthias Schiffer <matthias.schiffer@tq-group.com>,
        Max Krummenacher <max.krummenacher@toradex.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Tim Harvey <tharvey@gateworks.com>, devicetree@vger.kernel.org,
        Pengutronix Kernel Team <kernel@pengutronix.de>
References: <20221218051800.495932-1-marex@denx.de>
 <20221218051800.495932-2-marex@denx.de>
Content-Language: en-US
In-Reply-To: <20221218051800.495932-2-marex@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Marek,

On 18.12.22 06:18, Marek Vasut wrote:
> Add support for Data Modul i.MX8M Plus eDM SBC board. This is an
> evaluation board for various custom display units. Currently
> supported are serial console, ethernet, eMMC, SD, SPI NOR,
> USB host and USB OTG.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Denys Drozdov <denys.drozdov@toradex.com>
> Cc: Fabio Estevam <festevam@denx.de>
> Cc: Frieder Schrempf <frieder.schrempf@kontron.de>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Li Yang <leoyang.li@nxp.com>
> Cc: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> Cc: Marek Vasut <marex@denx.de>
> Cc: Matthias Schiffer <matthias.schiffer@tq-group.com>
> Cc: Max Krummenacher <max.krummenacher@toradex.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Tim Harvey <tharvey@gateworks.com>
> Cc: devicetree@vger.kernel.org
> To: linux-arm-kernel@lists.infradead.org

Could you share your get_maintainers.pl invocation? I'd like to
adjust the reviewer entry in MAINTAINERS, so such patches get
into our kernel@pengutronix.de inbox as well.

Some more comments below.

> +	pmic: pmic@25 {
> +		compatible = "nxp,pca9450c";
> +		reg = <0x25>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_pmic>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
> +		sd-vsel-gpios = <&gpio1 4 GPIO_ACTIVE_HIGH>;

Here you assume GPIO1_IO04 is muxed as GPIO.

> +	pinctrl_usdhc2: usdhc2-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT		0xc1

Here you mux it for USDHC2_VSELECT though. Is this intended?

> +/* eMMC */
> +&usdhc3 {
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 = <&pinctrl_usdhc3>;
> +	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
> +	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
> +	vmmc-supply = <&buck4>;
> +	vqmmc-supply = <&buck5>;
> +	bus-width = <8>;
> +	non-removable;

You can add

  no-sd;
  no-sdio;

to skip that init dance if the eMMC is indeed non-removable.

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


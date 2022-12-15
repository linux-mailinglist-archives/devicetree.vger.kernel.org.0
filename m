Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1381764D88F
	for <lists+devicetree@lfdr.de>; Thu, 15 Dec 2022 10:28:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229983AbiLOJ2R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Dec 2022 04:28:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229995AbiLOJ2G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Dec 2022 04:28:06 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FD5637223
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 01:28:05 -0800 (PST)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1p5kWy-0000il-4t; Thu, 15 Dec 2022 10:27:56 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1p5kWx-0002Gz-Gv; Thu, 15 Dec 2022 10:27:55 +0100
Date:   Thu, 15 Dec 2022 10:27:55 +0100
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux@ew.tq-group.com
Subject: Re: [PATCH 1/7] arm64: dts: tqma8mpql: Fix temperature sensor
 compatible
Message-ID: <20221215092755.jbfo3kaz7353hn73@pengutronix.de>
References: <20221214095917.964695-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221214095917.964695-1-alexander.stein@ew.tq-group.com>
User-Agent: NeoMutt/20180716
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Alexander,

On 22-12-14, Alexander Stein wrote:
> Use the correct compatible 'nxp,se97b' as it is an SE97BTP chip.
> While at it, fix the node name according to device tree spec
> recommendations. The EEPROM is a separate node anyway.

Just FTR: sometimes other components like bootloaders use the node names
as well, therefore changing node names should be done with caution. For
this series it is okay I think.

> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

The whole series lgtm, feel free to add my.

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts | 5 ++---
>  arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql.dtsi         | 5 ++---
>  2 files changed, 4 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
> index a3340814099aa..f7f657b007a18 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
> @@ -516,9 +516,8 @@ tlv320aic3x04: audio-codec@18 {
>  		ldoin-supply = <&reg_vcc_3v3>;
>  	};
>  
> -	/* NXP SE97BTP with temperature sensor + eeprom */
> -	se97_1c: temperature-sensor-eeprom@1c {
> -		compatible = "nxp,se97", "jedec,jc-42.4-temp";
> +	se97_1c: temperature-sensor@1c {
> +		compatible = "nxp,se97b", "jedec,jc-42.4-temp";
>  		reg = <0x1c>;
>  	};
>  
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql.dtsi
> index 7bd680a926ce7..ebc29a950ba9a 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql.dtsi
> @@ -63,9 +63,8 @@ &i2c1 {
>  	sda-gpios = <&gpio5 15 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
>  	status = "okay";
>  
> -	/* NXP SE97BTP with temperature sensor + eeprom */
> -	se97: temperature-sensor-eeprom@1b {
> -		compatible = "nxp,se97", "jedec,jc-42.4-temp";
> +	se97: temperature-sensor@1b {
> +		compatible = "nxp,se97b", "jedec,jc-42.4-temp";
>  		reg = <0x1b>;
>  	};
>  
> -- 
> 2.34.1
> 
> 
> 

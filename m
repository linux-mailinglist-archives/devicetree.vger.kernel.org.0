Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E571C5B6D1F
	for <lists+devicetree@lfdr.de>; Tue, 13 Sep 2022 14:24:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231583AbiIMMYL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Sep 2022 08:24:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230408AbiIMMYK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Sep 2022 08:24:10 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 651293FA13
        for <devicetree@vger.kernel.org>; Tue, 13 Sep 2022 05:24:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1663071849; x=1694607849;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=nRq8D3iutJ2KAlVkoc4iDtfJ4+8sWokjrJGY96Pe8lU=;
  b=RDxRDoYX1lYw+AHW3T8NcDfLB7tNxZXi3aXpEMhQxp2eKjyN7GH6/il6
   giWNQgjQ9d5bIGFevpD5ngFrweuAr1sOig1KH9w8cTmdH+Y6zqOf4Tk84
   MxkS7neWPfiKCFgIXu7BZrMhIR7+oLs/pXaBVM2JFzbEg9nuMp7sWGrpM
   nVDTEnq/Eh3ex0OnvKJYvrcXqBD8R6LzOhGd0q57i3CiXAyFqjWVxpFR+
   Xpf9m0votB1JY55xTPESmKNebzrF1S2c5K0OoIXoqCkjRcNOvFk+g3q42
   gF4IU1HOqNRaSeHuBfef42AyR1//P8nK5IAfq6SN3VT2auelgi6cxkExO
   Q==;
X-IronPort-AV: E=Sophos;i="5.93,312,1654552800"; 
   d="scan'208";a="26150070"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 13 Sep 2022 14:24:07 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 13 Sep 2022 14:24:06 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 13 Sep 2022 14:24:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1663071847; x=1694607847;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=nRq8D3iutJ2KAlVkoc4iDtfJ4+8sWokjrJGY96Pe8lU=;
  b=WGu6LL6MDGlwMAxLagazrrqxLdsV8FyQPnHSMAKaesqv7DLUERKI8mD4
   5kqFytSGVHKXcArkFvp63yHNZWTww1IQ7GHMQcB0piGZVWXPJm25gPWwH
   OlLprFewYtQ0h7o8mXqM1pZlSGJ/RMM8rSH7iTs1vHcsySccHbVGF6gm7
   Fp4rxz8NOxckxxRWp79uXQTq6E93aAZjxby9cRyfse3kZTmsh++2t8NCk
   0gaCMufBVLMRiPVVR+X0IvdfovlvcWjdskjkvADzIEULCWbptsV3e/yms
   y9xeJA+Unt3TW5vxo58xv6J/ViXqBBL1w+mGPKcdJZYdFjueKKHoEZP1V
   w==;
X-IronPort-AV: E=Sophos;i="5.93,312,1654552800"; 
   d="scan'208";a="26150069"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 13 Sep 2022 14:24:04 +0200
Received: from steina-w.localnet (unknown [10.123.49.11])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 7FCB3280072;
        Tue, 13 Sep 2022 14:24:03 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     jun.li@nxp.com
Cc:     shawnguo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com,
        linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
        laurent.pinchart@ideasonboard.com, l.stach@pengutronix.de,
        marex@denx.de, peng.fan@nxp.com, paul.elder@ideasonboard.com,
        Markus.Niebel@ew.tq-group.com, aford173@gmail.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Li Jun <jun.li@nxp.com>
Subject: Re: [PATCH v2] arm64: dts: imx8mp: correct usb clocks
Date:   Tue, 13 Sep 2022 14:24:00 +0200
Message-ID: <5445194.mvXUDI8C0e@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <1663067426-29534-1-git-send-email-jun.li@nxp.com>
References: <1663067426-29534-1-git-send-email-jun.li@nxp.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

Am Dienstag, 13. September 2022, 13:10:26 CEST schrieb Li Jun:
> After commit cf7f3f4fa9e5 ("clk: imx8mp: fix usb_root_clk parent"),
> usb_root_clk is no longer for suspend clock so update dts accordingly
> to use right bus clock and suspend clock.
> 
> Cc: stable@vger.kernel.org # v5.19+
> Signed-off-by: Li Jun <jun.li@nxp.com>
> ---
> change for v2:
> - Add stable tag to apply v5.19+
> 
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mp.dtsi index
> fe178b7d063c..2f18778a057f 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -1169,7 +1169,7 @@ usb3_0: usb@32f10100 {
>  			reg = <0x32f10100 0x8>,
>  			      <0x381f0000 0x20>;
>  			clocks = <&clk IMX8MP_CLK_HSIO_ROOT>,
> -				 <&clk IMX8MP_CLK_USB_ROOT>;
> +				 <&clk IMX8MP_CLK_USB_SUSP>;
>  			clock-names = "hsio", "suspend";
>  			interrupts = <GIC_SPI 148 
IRQ_TYPE_LEVEL_HIGH>;
>  			power-domains = <&hsio_blk_ctrl 
IMX8MP_HSIOBLK_PD_USB>;
> @@ -1182,9 +1182,9 @@ usb3_0: usb@32f10100 {
>  			usb_dwc3_0: usb@38100000 {
>  				compatible = "snps,dwc3";
>  				reg = <0x38100000 0x10000>;
> -				clocks = <&clk 
IMX8MP_CLK_HSIO_AXI>,
> +				clocks = <&clk 
IMX8MP_CLK_USB_ROOT>,
>  					 <&clk 
IMX8MP_CLK_USB_CORE_REF>,
> -					 <&clk 
IMX8MP_CLK_USB_ROOT>;
> +					 <&clk 
IMX8MP_CLK_USB_SUSP>;
>  				clock-names = "bus_early", "ref", 
"suspend";
>  				interrupts = <GIC_SPI 40 
IRQ_TYPE_LEVEL_HIGH>;
>  				phys = <&usb3_phy0>, <&usb3_phy0>;
> @@ -1211,7 +1211,7 @@ usb3_1: usb@32f10108 {
>  			reg = <0x32f10108 0x8>,
>  			      <0x382f0000 0x20>;
>  			clocks = <&clk IMX8MP_CLK_HSIO_ROOT>,
> -				 <&clk IMX8MP_CLK_USB_ROOT>;
> +				 <&clk IMX8MP_CLK_USB_SUSP>;
>  			clock-names = "hsio", "suspend";
>  			interrupts = <GIC_SPI 149 
IRQ_TYPE_LEVEL_HIGH>;
>  			power-domains = <&hsio_blk_ctrl 
IMX8MP_HSIOBLK_PD_USB>;
> @@ -1224,9 +1224,9 @@ usb3_1: usb@32f10108 {
>  			usb_dwc3_1: usb@38200000 {
>  				compatible = "snps,dwc3";
>  				reg = <0x38200000 0x10000>;
> -				clocks = <&clk 
IMX8MP_CLK_HSIO_AXI>,
> +				clocks = <&clk 
IMX8MP_CLK_USB_ROOT>,
>  					 <&clk 
IMX8MP_CLK_USB_CORE_REF>,
> -					 <&clk 
IMX8MP_CLK_USB_ROOT>;
> +					 <&clk 
IMX8MP_CLK_USB_SUSP>;
>  				clock-names = "bus_early", "ref", 
"suspend";
>  				interrupts = <GIC_SPI 41 
IRQ_TYPE_LEVEL_HIGH>;
>  				phys = <&usb3_phy1>, <&usb3_phy1>;

Together with the series [1] & [2] this fixes devices detection when the 
onboard hub is in runtime suspend.

Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>

[1] https://lore.kernel.org/all/1662547028-22279-1-git-send-email-jun.li@nxp.com/
[2] https://lore.kernel.org/all/20220907144624.2810117-1-alexander.stein@ew.tq-group.com/




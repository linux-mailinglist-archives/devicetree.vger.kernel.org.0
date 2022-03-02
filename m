Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B8D8E4CAAC1
	for <lists+devicetree@lfdr.de>; Wed,  2 Mar 2022 17:49:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243465AbiCBQuO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Mar 2022 11:50:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243525AbiCBQuN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Mar 2022 11:50:13 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9ECD0CF3B2
        for <devicetree@vger.kernel.org>; Wed,  2 Mar 2022 08:49:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1646239767; x=1677775767;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Q+mVKWYmQvoiZeuPt9oG/O3RrbBa4K/bA4FQkvqrt6o=;
  b=GMl/VSuLcjsVuvtXjqcW7v8x39Yl/mLMjjAoZQroYCjKKXlwb2KvyYTq
   KhEpgks1Hu68blDLwoMURcKG0IGMvX7TXStZldep/21ZC88sIVVwdqr0C
   ce8KyaBZENgOIY98uefNZHbXfDOSUutXm7GXLbVvuQBqzF4ASdYWR7f+2
   Oxse4oEE6vVzM2mMc94FL8bvK03161BzJfsyC7vzr6ylv90V6x9yMoIfb
   I1j4bVEDjpwgA7nFnhWaCjDU+41oNSqpuhT1MZmf3iMHywMwwcFDERJqF
   FzbUc9FkmDcS1j7H8Meyhud0fpLF2cdocbSBQSTirjBL+wlAAj8n6dkq0
   w==;
X-IronPort-AV: E=Sophos;i="5.90,149,1643670000"; 
   d="scan'208";a="22413786"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 02 Mar 2022 17:49:26 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 02 Mar 2022 17:49:26 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 02 Mar 2022 17:49:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1646239766; x=1677775766;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Q+mVKWYmQvoiZeuPt9oG/O3RrbBa4K/bA4FQkvqrt6o=;
  b=JfjWwwuaZ8RROQzDrwc4XS5BpPyPyeFLYfeNHo0JY4JLNffhD40knC27
   Jwgo+I1V48keP0MhvVkmrTOcrSMtrZPqISqrsViq5GxxtV89c7pOW9uHD
   2BhViPMR99AzizlyTf9TMVGyH6MJEwIvFTs7l4X2cXNhvrETrlFGh2D3g
   Bcj6y0sAfKli3ZEVKtrYDcWAmeCqqrYrQnQfYqoH+5uDePVMrzoQYKsJC
   wE5WUf8+Xb5qFSgI5/FBIFEYsNluqTEQSg6WCwrDhI17zAInuWbNibCYx
   vZkQ8HdsgHS6Sn9h7SiLO+RCzr7knRPpUVCjX5mO4Z99E7GmJHqY60/Dl
   w==;
X-IronPort-AV: E=Sophos;i="5.90,149,1643670000"; 
   d="scan'208";a="22413785"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 02 Mar 2022 17:49:25 +0100
Received: from steina-w.localnet (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id C2DAB280074;
        Wed,  2 Mar 2022 17:49:25 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Marek Vasut <marex@denx.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        patchwork-lst@pengutronix.de, Lucas Stach <l.stach@pengutronix.de>
Subject: Re: (EXT) [PATCH v3 5/7] arm64: dts: imx8mp: add HSIO power-domains
Date:   Wed, 02 Mar 2022 17:49:23 +0100
Message-ID: <1812614.tdWV9SEqCh@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20220228201731.3330192-6-l.stach@pengutronix.de>
References: <20220228201731.3330192-1-l.stach@pengutronix.de> <20220228201731.3330192-6-l.stach@pengutronix.de>
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

Am Montag, 28. Februar 2022, 21:17:29 CET schrieb Lucas Stach:
> This adds the GPC and HSIO blk-ctrl nodes providing power control for
> the high-speed (USB and PCIe) IOs.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 71 +++++++++++++++++++++--
>  1 file changed, 65 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mp.dtsi index
> 6b840c05dd77..69e533add539 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -4,6 +4,7 @@
>   */
> 
>  #include <dt-bindings/clock/imx8mp-clock.h>
> +#include <dt-bindings/power/imx8mp-power.h>
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/input.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
> @@ -475,6 +476,44 @@ src: reset-controller@30390000 {
>  				interrupts = <GIC_SPI 89 
IRQ_TYPE_LEVEL_HIGH>;
>  				#reset-cells = <1>;
>  			};
> +
> +			gpc: gpc@303a0000 {
> +				compatible = "fsl,imx8mp-gpc";
> +				reg = <0x303a0000 0x1000>;
> +				interrupt-parent = <&gic>;
> +				interrupt-controller;
> +				#interrupt-cells = <3>;
> +
> +				pgc {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					pgc_pcie_phy: power-
domain@1 {
> +						#power-
domain-cells = <0>;
> +						reg = 
<IMX8MP_POWER_DOMAIN_PCIE_PHY>;
> +					};
> +
> +					pgc_usb1_phy: power-
domain@2 {
> +						#power-
domain-cells = <0>;
> +						reg = 
<IMX8MP_POWER_DOMAIN_USB1_PHY>;
> +					};
> +
> +					pgc_usb2_phy: power-
domain@3 {
> +						#power-
domain-cells = <0>;
> +						reg = 
<IMX8MP_POWER_DOMAIN_USB2_PHY>;
> +					};
> +
> +					pgc_hsiomix: power-
domains@17 {
> +						#power-
domain-cells = <0>;
> +						reg = 
<IMX8MP_POWER_DOMAIN_HSIOMIX>;
> +						clocks = 
<&clk IMX8MP_CLK_HSIO_AXI>,
> +							 
<&clk IMX8MP_CLK_HSIO_ROOT>;
> +						assigned-
clocks = <&clk IMX8MP_CLK_HSIO_AXI>;
> +						assigned-
clock-parents = <&clk IMX8MP_SYS_PLL2_500M>;
> +						assigned-
clock-rates = <500000000>;
> +					};
> +				};
> +			};
>  		};
> 
>  		aips2: bus@30400000 {
> @@ -892,6 +931,28 @@ eqos: ethernet@30bf0000 {
>  			};
>  		};
> 
> +		aips4 {
> +			compatible = "fsl,aips-bus", "simple-bus";
> +			reg = <0x32c00000 0x400000>;
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			ranges;
> +
> +			hsio_blk_ctrl: blk-ctrl@32f10000 {
> +				compatible = "fsl,imx8mp-hsio-blk-
ctrl", "syscon";
> +				reg = <0x32f10000 0x24>;
> +				clocks = <&clk 
IMX8MP_CLK_USB_ROOT>,
> +					 <&clk 
IMX8MP_CLK_PCIE_ROOT>;
> +				clock-names = "usb", "pcie";
> +				power-domains = <&pgc_hsiomix>, 
<&pgc_hsiomix>,
> +						
<&pgc_usb1_phy>, <&pgc_usb2_phy>,
> +						
<&pgc_hsiomix>, <&pgc_pcie_phy>;
> +				power-domain-names = "bus", "usb", 
"usb-phy1",
> +						     "usb-
phy2", "pcie", "pcie-phy";
> +				#power-domain-cells = <1>;
> +			};
> +		};
> +
>  		gic: interrupt-controller@38800000 {
>  			compatible = "arm,gic-v3";
>  			reg = <0x38800000 0x10000>,
> @@ -915,6 +976,7 @@ usb3_phy0: usb-phy@381f0040 {
>  			clock-names = "phy";
>  			assigned-clocks = <&clk 
IMX8MP_CLK_USB_PHY_REF>;
>  			assigned-clock-parents = <&clk 
IMX8MP_CLK_24M>;
> +			power-domains = <&hsio_blk_ctrl 
IMX8MP_HSIOBLK_PD_USB_PHY1>;
>  			#phy-cells = <0>;
>  			status = "disabled";
>  		};
> @@ -926,6 +988,7 @@ usb3_0: usb@32f10100 {
>  				 <&clk IMX8MP_CLK_USB_ROOT>;
>  			clock-names = "hsio", "suspend";
>  			interrupts = <GIC_SPI 148 
IRQ_TYPE_LEVEL_HIGH>;
> +			power-domains = <&hsio_blk_ctrl 
IMX8MP_HSIOBLK_PD_USB>;
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			dma-ranges = <0x40000000 0x40000000 
0xc0000000>;
> @@ -939,9 +1002,6 @@ usb_dwc3_0: usb@38100000 {
>  					 <&clk 
IMX8MP_CLK_USB_CORE_REF>,
>  					 <&clk 
IMX8MP_CLK_USB_ROOT>;
>  				clock-names = "bus_early", "ref", 
"suspend";
> -				assigned-clocks = <&clk 
IMX8MP_CLK_HSIO_AXI>;
> -				assigned-clock-parents = <&clk 
IMX8MP_SYS_PLL2_500M>;
> -				assigned-clock-rates = 
<500000000>;
>  				interrupts = <GIC_SPI 40 
IRQ_TYPE_LEVEL_HIGH>;
>  				phys = <&usb3_phy0>, <&usb3_phy0>;
>  				phy-names = "usb2-phy", "usb3-
phy";
> @@ -957,6 +1017,7 @@ usb3_phy1: usb-phy@382f0040 {
>  			clock-names = "phy";
>  			assigned-clocks = <&clk 
IMX8MP_CLK_USB_PHY_REF>;
>  			assigned-clock-parents = <&clk 
IMX8MP_CLK_24M>;
> +			power-domains = <&hsio_blk_ctrl 
IMX8MP_HSIOBLK_PD_USB_PHY2>;
>  			#phy-cells = <0>;
>  		};
> 
> @@ -967,6 +1028,7 @@ usb3_1: usb@32f10108 {
>  				 <&clk IMX8MP_CLK_USB_ROOT>;
>  			clock-names = "hsio", "suspend";
>  			interrupts = <GIC_SPI 149 
IRQ_TYPE_LEVEL_HIGH>;
> +			power-domains = <&hsio_blk_ctrl 
IMX8MP_HSIOBLK_PD_USB>;
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			dma-ranges = <0x40000000 0x40000000 
0xc0000000>;
> @@ -980,9 +1042,6 @@ usb_dwc3_1: usb@38200000 {
>  					 <&clk 
IMX8MP_CLK_USB_CORE_REF>,
>  					 <&clk 
IMX8MP_CLK_USB_ROOT>;
>  				clock-names = "bus_early", "ref", 
"suspend";
> -				assigned-clocks = <&clk 
IMX8MP_CLK_HSIO_AXI>;
> -				assigned-clock-parents = <&clk 
IMX8MP_SYS_PLL2_500M>;
> -				assigned-clock-rates = 
<500000000>;
>  				interrupts = <GIC_SPI 41 
IRQ_TYPE_LEVEL_HIGH>;
>  				phys = <&usb3_phy1>, <&usb3_phy1>;
>  				phy-names = "usb2-phy", "usb3-
phy";


Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>




Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CAB8554F125
	for <lists+devicetree@lfdr.de>; Fri, 17 Jun 2022 08:44:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1380237AbiFQGoA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Jun 2022 02:44:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1380215AbiFQGn7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Jun 2022 02:43:59 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A556F2408F
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 23:43:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1655448237; x=1686984237;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=SZVuQgU1IXJO7chH92tNYQ5xFkIOHEivAyhOtkyz+g8=;
  b=g27zXSZwntdxcF1nBJMWh3ZfpIxIwbFsGwnwmIvYFKjQuF+tn4abEi3d
   G/iFmMFuDFCI+wQZ5bA+EKnqrGHYL5mXtE8tzEB5ohg7qFCcWqLUrBw5g
   CnHofhkoYQC17Mf8tgmD0xiY3qdHQLAMTpQfCq5c2PCr0DvOYNsZoFpb3
   vjRFo8OUKXGqblkpb6xqBiviAiE16Ox6Z1melsaxO0k+iwCbPWTEXaYXV
   u5rRpJPCQ0LfkU0PweY8qOPb4QF9HTBy7RlqkXLZPE5oGACGbZp6AXHdl
   tw29tm2YBNUgdZzRrA8eSdlVzmgmX1/LqU81w/4Dcruq6Avi9r2En3UJD
   g==;
X-IronPort-AV: E=Sophos;i="5.92,306,1650924000"; 
   d="scan'208";a="24506840"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 17 Jun 2022 08:43:55 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Fri, 17 Jun 2022 08:43:56 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Fri, 17 Jun 2022 08:43:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1655448235; x=1686984235;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=SZVuQgU1IXJO7chH92tNYQ5xFkIOHEivAyhOtkyz+g8=;
  b=eGtG7e+LWMd82qqIcvM9onadvBYs8HuA/OquIX5cGaRAdIH1mAQ9RFce
   RiuqxcKqYYZ22U5PYu6aBHmO/KhzRlxM4AGgLj/a1miR1E7pSb7wkEqwG
   4XAJd+507ha1ZRRoSb+LkItbRZVBlB3FAmHEjfo6vYAiI0fgXjXEH+c2b
   77LrixrbMr9VTwvjaeGfR5gsNosNWthxS+WngWt3Vk6yYzusz4DAEZhJL
   /kxbj3UxYPaomQE1mRN2fpL8Y/Zg6Ig5BGW3vAcn43jeZX2JqpnT8C98Z
   yVWZBl0IndVI6RwftMj9AkpwZCFhfM8LEm4k/6xn/d6I/RzKqVxo8FCzT
   A==;
X-IronPort-AV: E=Sophos;i="5.92,306,1650924000"; 
   d="scan'208";a="24506839"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 17 Jun 2022 08:43:55 +0200
Received: from steina-w.localnet (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id A45C3280056;
        Fri, 17 Jun 2022 08:43:55 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-imx@nxp.com, kernel@pengutronix.de,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Paul Elder <paul.elder@ideasonboard.com>
Subject: Re: (EXT) [PATCH] arm64: dts: imx8mp: Add CSIS DT nodes
Date:   Fri, 17 Jun 2022 08:43:53 +0200
Message-ID: <15420032.uLZWGnKmhe@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20220616161643.22867-1-laurent.pinchart@ideasonboard.com>
References: <20220616161643.22867-1-laurent.pinchart@ideasonboard.com>
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

Hello Laurent,

thanks for ths and the other MIPI CSI-2 related patches.

Am Donnerstag, 16. Juni 2022, 18:16:43 CEST schrieb Laurent Pinchart:
> Add DT nodes for the two CSI-2 receivers of the i.MX8MP.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
> This patch depends on the DT bindings submitted in [1], for which I plan
> to submit a pull request for v5.20.
> 
> [1]
> https://lore.kernel.org/linux-media/83e27382-6f97-015f-2ee1-f43820967093@li
> naro.org/T/#u ---
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 60 +++++++++++++++++++++++
>  1 file changed, 60 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mp.dtsi index
> d9542dfff83f..c8ed206b7f41 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -1063,6 +1063,66 @@ media_blk_ctrl: blk-ctrl@32ec0000 {
>  				#power-domain-cells = <1>;
>  			};
> 
> +			mipi_csi_0: csi@32e40000 {
> +				compatible = "fsl,imx8mp-mipi-
csi2", "fsl,imx8mm-mipi-csi2";
> +				reg = <0x32e40000 0x10000>;
> +				interrupts = <GIC_SPI 17 
IRQ_TYPE_LEVEL_HIGH>;
> +				clock-frequency = <500000000>;

According to datasheet (IMX8MPIEC Rev 1, Table 1, Subsystem "MIPI Interface") 
"MIPI CSI1" supports up to 500MHz only in single camera use and overdrive 
mode. In normal mode only 400MHz are supported. For dual camera usage only up 
to 266MHz is supported. Apparently this is when using ISP, things might be 
different when using ISI. I'm hesitating specifying the overdrive mode 
frequency here. Most users, most probably using normal mode, would have 
requiring them to adjust this.
For dual camera this is even as low as 266MHz, but IMHO this is a special 
case.

> +				clocks = <&clk 
IMX8MP_CLK_MEDIA_APB_ROOT>,
> +					 <&clk 
IMX8MP_CLK_MEDIA_CAM1_PIX_ROOT>,
> +					 <&clk 
IMX8MP_CLK_MEDIA_MIPI_PHY1_REF_ROOT>,
> +					 <&clk 
IMX8MP_CLK_MEDIA_AXI_ROOT>;
> +				clock-names = "pclk", "wrap", 
"phy", "axi";
> +				assigned-clocks = <&clk 
IMX8MP_CLK_MEDIA_CAM1_PIX>;
> +				assigned-clock-parents = <&clk 
IMX8MP_SYS_PLL2_1000M>;
> +				assigned-clock-rates = 
<500000000>;
> +				power-domains = <&media_blk_ctrl 
IMX8MP_MEDIABLK_PD_MIPI_CSI2_1>;
> +				status = "disabled";
> +
> +				ports {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					port@0 {
> +						reg = <0>;
> +					};
> +
> +					port@1 {
> +						reg = <1>;
> +					};
> +				};
> +			};
> +
> +			mipi_csi_1: csi@32e50000 {
> +				compatible = "fsl,imx8mp-mipi-
csi2", "fsl,imx8mm-mipi-csi2";
> +				reg = <0x32e50000 0x10000>;
> +				interrupts = <GIC_SPI 80 
IRQ_TYPE_LEVEL_HIGH>;
> +				clock-frequency = <266000000>;

For single camera usage this can even go as high as 277MHz. 266MHz is only for 
dual camera use.

Best regards,
Alexander

> +				clocks = <&clk 
IMX8MP_CLK_MEDIA_APB_ROOT>,
> +					 <&clk 
IMX8MP_CLK_MEDIA_CAM2_PIX_ROOT>,
> +					 <&clk 
IMX8MP_CLK_MEDIA_MIPI_PHY1_REF_ROOT>,
> +					 <&clk 
IMX8MP_CLK_MEDIA_AXI_ROOT>;
> +				clock-names = "pclk", "wrap", 
"phy", "axi";
> +				assigned-clocks = <&clk 
IMX8MP_CLK_MEDIA_CAM2_PIX>;
> +				assigned-clock-parents = <&clk 
IMX8MP_SYS_PLL2_1000M>;
> +				assigned-clock-rates = 
<266000000>;
> +				power-domains = <&media_blk_ctrl 
IMX8MP_MEDIABLK_PD_MIPI_CSI2_2>;
> +				status = "disabled";
> +
> +				ports {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					port@0 {
> +						reg = <0>;
> +					};
> +
> +					port@1 {
> +						reg = <1>;
> +					};
> +				};
> +			};
> +
>  			hsio_blk_ctrl: blk-ctrl@32f10000 {
>  				compatible = "fsl,imx8mp-hsio-blk-
ctrl", "syscon";
>  				reg = <0x32f10000 0x24>;
> 
> base-commit: b13baccc3850ca8b8cccbf8ed9912dbaa0fdf7f3





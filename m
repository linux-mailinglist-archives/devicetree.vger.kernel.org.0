Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 291A04CAABB
	for <lists+devicetree@lfdr.de>; Wed,  2 Mar 2022 17:49:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242402AbiCBQt6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Mar 2022 11:49:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241049AbiCBQt6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Mar 2022 11:49:58 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8ED65CA739
        for <devicetree@vger.kernel.org>; Wed,  2 Mar 2022 08:49:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1646239754; x=1677775754;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=nlMU4v72KJsFM4TGpAoNdHEWLwNiD4Tzb6+2ueVL1tc=;
  b=AbvY7rdgf30/C7w8xZlsntieaO5ZTzFuGL19Nof/WW0wRQjpG7cx/twy
   1RToP0Lr8b7BHfuP4TodM4Bc62QkwtYDXp8j1v/uTynvjA+ZlpBv0T8mK
   T+fLo3oxB7kS64aae9FeL9n+RoSH3bu8b/YfwDL8pV5h7xBOeyJmGbHJ0
   Tqqa3jYUVtUphHQ3eeVXMw7L7/Ql8CsYge9ekHS1ED1NQVWiiKCd7u6uE
   ZoaWtXjAy4lP9+9ujG1rRg6W1Fj4wxAeJSHkf9p68iJLrK9yShpE/X/TQ
   lAJGdrwvMAPXhO8MmMO+PY9odxt1w7JSr9IulkPK89qbEcwwTFU7TO0t5
   g==;
X-IronPort-AV: E=Sophos;i="5.90,149,1643670000"; 
   d="scan'208";a="22413783"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 02 Mar 2022 17:49:12 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 02 Mar 2022 17:49:13 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 02 Mar 2022 17:49:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1646239752; x=1677775752;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=nlMU4v72KJsFM4TGpAoNdHEWLwNiD4Tzb6+2ueVL1tc=;
  b=qPRPfjTgyS1Qe/IzgX1jaLYJ6wejhtvEjego+X3DOOfrjMwp2XPv2BLL
   fizeKsmHv2DjziQV6+hM/VvNnKq2tzfqa4185z9Pmt93yc29aSd/eMcP4
   U4NfQtMUMYhDRM9lSzvr3RPtHUQQS6T3DgS2zv9HX6HDpTQeN01nnDdX2
   lGzbO+ZqoO+Bos1is2Sj9yDUsTYC3U+H9DlpDoo3GNL/9hvFTac/3obu0
   Ychz6Rhe3/7MBZUx83Abmseurx2u8WxFxc7s/Bvfhg/D6UnYQNKsqbP5l
   T5Ui4GWz9qzYYjMrTptfKsBBZOOWKOaPhTKvB4s708uvA4XOnwWmTxPT7
   A==;
X-IronPort-AV: E=Sophos;i="5.90,149,1643670000"; 
   d="scan'208";a="22413782"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 02 Mar 2022 17:49:12 +0100
Received: from steina-w.localnet (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id B0C8E280074;
        Wed,  2 Mar 2022 17:49:12 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Marek Vasut <marex@denx.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        patchwork-lst@pengutronix.de, Lucas Stach <l.stach@pengutronix.de>
Subject: Re: (EXT) [PATCH v3 7/7] arm64: dts: imx8mp: add GPU nodes
Date:   Wed, 02 Mar 2022 17:49:10 +0100
Message-ID: <2233204.ElGaqSPkdT@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20220228201731.3330192-8-l.stach@pengutronix.de>
References: <20220228201731.3330192-1-l.stach@pengutronix.de> <20220228201731.3330192-8-l.stach@pengutronix.de>
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

Am Montag, 28. Februar 2022, 21:17:31 CET schrieb Lucas Stach:
> Add the DT nodes for both the 3D and 2D GPU cores found on the i.MX8MP.
> 
> etnaviv-gpu 38000000.gpu: model: GC7000, revision: 6204
> etnaviv-gpu 38008000.gpu: model: GC520, revision: 5341
> [drm] Initialized etnaviv 1.3.0 20151214 for etnaviv on minor 0
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 31 +++++++++++++++++++++++
>  1 file changed, 31 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mp.dtsi index
> 9f2c335cc7a1..3ded7314c473 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -980,6 +980,37 @@ hsio_blk_ctrl: blk-ctrl@32f10000 {
>  			};
>  		};
> 
> +		gpu3d: gpu@38000000 {
> +			compatible = "vivante,gc";
> +			reg = <0x38000000 0x8000>;
> +			interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&clk IMX8MP_CLK_GPU3D_ROOT>,
> +				 <&clk 
IMX8MP_CLK_GPU3D_SHADER_CORE>,
> +				 <&clk IMX8MP_CLK_GPU_ROOT>,
> +				 <&clk IMX8MP_CLK_GPU_AHB>;
> +			clock-names = "core", "shader", "bus", "reg";
> +			assigned-clocks = <&clk 
IMX8MP_CLK_GPU3D_CORE>,
> +					  <&clk 
IMX8MP_CLK_GPU3D_SHADER_CORE>;
> +			assigned-clock-parents = <&clk 
IMX8MP_SYS_PLL1_800M>,
> +						 <&clk 
IMX8MP_SYS_PLL1_800M>;
> +			assigned-clock-rates = <800000000>, 
<800000000>;
> +			power-domains = <&pgc_gpu3d>;
> +		};
> +
> +		gpu2d: gpu@38008000 {
> +			compatible = "vivante,gc";
> +			reg = <0x38008000 0x8000>;
> +			interrupts = <GIC_SPI 25 
IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&clk IMX8MP_CLK_GPU2D_ROOT>,
> +				 <&clk IMX8MP_CLK_GPU_ROOT>,
> +				 <&clk IMX8MP_CLK_GPU_AHB>;
> +			clock-names = "core", "bus", "reg";
> +			assigned-clocks = <&clk 
IMX8MP_CLK_GPU2D_CORE>;
> +			assigned-clock-parents = <&clk 
IMX8MP_SYS_PLL1_800M>;
> +			assigned-clock-rates = <800000000>;
> +			power-domains = <&pgc_gpu2d>;
> +		};
> +
>  		gic: interrupt-controller@38800000 {
>  			compatible = "arm,gic-v3";
>  			reg = <0x38800000 0x10000>,


Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>



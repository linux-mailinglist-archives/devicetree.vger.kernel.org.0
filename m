Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9494B4ADBF8
	for <lists+devicetree@lfdr.de>; Tue,  8 Feb 2022 16:06:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1378526AbiBHPG4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Feb 2022 10:06:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235908AbiBHPGz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Feb 2022 10:06:55 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 362DFC061578
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 07:06:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1644332812; x=1675868812;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=HklgV97eNFHeKXBuJ4rn7/NLS35d1UA628wLxqxI97k=;
  b=IZ5WxSNiPsPyM3hII3CqqoT/9+g3i3KyrUjyd5+oy07CTlMdwJN6/hCg
   swh1xs28HCFFjsdK4gDLzJSWwStACGUTakK93OeaUbjZgmYpFfBSjr0Xg
   IP72ZQpn4h89j74NpKbbSUVB1a45Kj4ljlMntndJMA3jLgV/b0gyKVnGG
   RKJNXePzZfSSjfTI2zt1Qyxg5gmZTh0pt/grnubdX32MU1tlutA7mwycS
   s8av5JsdvLhw30E6Z9usKDxWTPEApT5qLQ2oA7lCL3m0srXTuuOOw2ZXa
   XahTCz5X/TtjqcaiQBIec5f11p+VhKVsnjif6LA980pZME4O7ikKkdE32
   g==;
X-IronPort-AV: E=Sophos;i="5.88,353,1635199200"; 
   d="scan'208";a="21964725"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 08 Feb 2022 16:06:50 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 08 Feb 2022 16:06:50 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 08 Feb 2022 16:06:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1644332810; x=1675868810;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=HklgV97eNFHeKXBuJ4rn7/NLS35d1UA628wLxqxI97k=;
  b=ViJAFpH9sCz42O+gMFfA76yiBnaszb4SfX5k8FpqSuly9l6enEKRsXC7
   7q4Cw3NgFglvOjVNbfgg6atK4UPPCV2qSazFiYPAJxWNCw0z+9lJlVgjW
   sFcyQX1uEs1ive6rLrkXIO5DCadjn4zCKGO78UoRglA1370Ad+h+0auoq
   IPYLP83Hiq9RjwRnayKA9uHyrGXh6LdpPKnvbGWCXEHiWvKzYOvVm5WS7
   UFhgfGxbvwvgW01hBEzoBGwQwDoJ7aEUPpcKbMslIJDRtycjksp8QNWMF
   Ee6FVSW7oe6gseVAwRS8UH+aDPketN2MlsA32Ox/b23pLGLEoD6bYcWTT
   w==;
X-IronPort-AV: E=Sophos;i="5.88,353,1635199200"; 
   d="scan'208";a="21964724"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 08 Feb 2022 16:06:50 +0100
Received: from steina-w.localnet (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 258C2280065;
        Tue,  8 Feb 2022 16:06:50 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        patchwork-lst@pengutronix.de
Subject: Re: (EXT) [PATCH v2 9/9] arm64: dts: imx8mp: add GPU nodes
Date:   Tue, 08 Feb 2022 16:06:47 +0100
Message-ID: <12581681.O9o76ZdvQC@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20220207192547.1997549-9-l.stach@pengutronix.de>
References: <20220207192547.1997549-1-l.stach@pengutronix.de> <20220207192547.1997549-9-l.stach@pengutronix.de>
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

Am Montag, 7. Februar 2022, 20:25:47 CET schrieb Lucas Stach:
> Add the DT nodes for both the 3D and 2D GPU cores found on the i.MX8MP.
> 
> etnaviv-gpu 38000000.gpu: model: GC7000, revision: 6204
> etnaviv-gpu 38008000.gpu: model: GC520, revision: 5341
> [drm] Initialized etnaviv 1.3.0 20151214 for etnaviv on minor 0

Got this on my machine as well:
[   11.538880] etnaviv-gpu 38000000.gpu: model: GC7000, revision: 6204
[   11.566889] etnaviv-gpu 38008000.gpu: model: GC520, revision: 5341
[   11.575804] [drm] Initialized etnaviv 1.3.0 20151214 for etnaviv on minor 0

I've yet to test some GPU load though.

Best regards,
Alexander

> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 31 +++++++++++++++++++++++
>  1 file changed, 31 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mp.dtsi index
> 9ed57171b9fc..c89acb53be4a 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -958,6 +958,37 @@ eqos: ethernet@30bf0000 {
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





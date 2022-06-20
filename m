Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5906E5518BA
	for <lists+devicetree@lfdr.de>; Mon, 20 Jun 2022 14:21:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241100AbiFTMVR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Jun 2022 08:21:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242540AbiFTMVQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Jun 2022 08:21:16 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A32B13E05
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 05:21:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1655727675; x=1687263675;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=JcZGJjSSP6wOKdQ6qZDb5Wr4Rc53SWX+TasNUSNE/cY=;
  b=XbBEK5P/SaoEid2veLrE/bZo4azFoEnFCNSKuxqVdlCpAvgWTX2S4yEW
   haN49uDvpNT/UeQd8LMeuIKhl+g1uRNMqCgIKPZvDpYG7TO2INwWt4xMP
   2leB7ebKSXMSPwcpgivaEZnS1E9tquUb+dVMq53K/fGk6JNeiJ3nFErQ6
   qEDsoAEUOGqPnvo9kuRj2qOgOhdRJOTOcYKX8QXczFYzjwlLo4u7BbErU
   xP1SsV77uGbotEViKYwsIEiTba9sq+oaqS1U1ZXdGtFbh9g2bqbw2z22o
   xPioaJrJksY4yCqXWXmLlzb3KCotA6iHgOdD/ADg/3b3lrB0GKkPsN34A
   w==;
X-IronPort-AV: E=Sophos;i="5.92,306,1650924000"; 
   d="scan'208";a="24547471"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 20 Jun 2022 14:21:13 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 20 Jun 2022 14:21:13 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 20 Jun 2022 14:21:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1655727673; x=1687263673;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=JcZGJjSSP6wOKdQ6qZDb5Wr4Rc53SWX+TasNUSNE/cY=;
  b=ELMMbXq1sIqzN2c2hCwrSIaaycLOMghnmeYOU+Mv2T/dG4scD6qZijmk
   +/xrh0U0v1JRqe7Snlvx/BcDaLwORheDEaVOCae+xyWGySgTEurXtqPZf
   DmvtCqfQMf/K4lSGloKW9rhbqO4bQNBiTxpk4oKqB7h5g85jOkC2NVP9f
   AV/ZC0Kukw89uME3fxJPlv3/nSl85exzeerDylAJPcQBX80Go0h14tNxq
   H7TSnTxpxgBYt2DoCTttHRwoUz+LuVKA+763nRoqx7VesekvVcqFBRxlw
   HXj7SoFjc/KQ5TZBSwADIzyfkmxmgwawcO77KYDiLYIgY2mdb8ldbt/tK
   w==;
X-IronPort-AV: E=Sophos;i="5.92,306,1650924000"; 
   d="scan'208";a="24547470"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 20 Jun 2022 14:21:13 +0200
Received: from steina-w.localnet (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id F06CA280056;
        Mon, 20 Jun 2022 14:21:12 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-imx@nxp.com, kernel@pengutronix.de,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Paul Elder <paul.elder@ideasonboard.com>
Subject: Re: (EXT) Re: (EXT) [PATCH] arm64: dts: imx8mp: Add CSIS DT nodes
Date:   Mon, 20 Jun 2022 14:21:10 +0200
Message-ID: <4722627.GXAFRqVoOG@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <Yq0Arsms5fYl9MQn@pendragon.ideasonboard.com>
References: <20220616161643.22867-1-laurent.pinchart@ideasonboard.com> <15420032.uLZWGnKmhe@steina-w> <Yq0Arsms5fYl9MQn@pendragon.ideasonboard.com>
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

Am Samstag, 18. Juni 2022, 00:31:10 CEST schrieb Laurent Pinchart:
> Hi Alexander,
> 
> On Fri, Jun 17, 2022 at 08:43:53AM +0200, Alexander Stein wrote:
> > Hello Laurent,
> > 
> > thanks for ths and the other MIPI CSI-2 related patches.
> > 
> > Am Donnerstag, 16. Juni 2022, 18:16:43 CEST schrieb Laurent Pinchart:
> > > Add DT nodes for the two CSI-2 receivers of the i.MX8MP.
> > > 
> > > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > > ---
> > > This patch depends on the DT bindings submitted in [1], for which I plan
> > > to submit a pull request for v5.20.
> > > 
> > > [1]
> > > https://lore.kernel.org/linux-media/83e27382-6f97-015f-2ee1-f4382096709
> > > 3@linaro.org/T/#u ---
> > > 
> > >  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 60 +++++++++++++++++++++++
> > >  1 file changed, 60 insertions(+)
> > > 
> > > diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > > b/arch/arm64/boot/dts/freescale/imx8mp.dtsi index
> > > d9542dfff83f..c8ed206b7f41 100644
> > > --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > > +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > > @@ -1063,6 +1063,66 @@ media_blk_ctrl: blk-ctrl@32ec0000 {
> > > 
> > >  				#power-domain-cells = <1>;
> > >  			
> > >  			};
> > > 
> > > +			mipi_csi_0: csi@32e40000 {
> > > +				compatible = "fsl,imx8mp-mipi-
csi2", "fsl,imx8mm-mipi-csi2";
> > > +				reg = <0x32e40000 0x10000>;
> > > +				interrupts = <GIC_SPI 17 
IRQ_TYPE_LEVEL_HIGH>;
> > > +				clock-frequency = <500000000>;
> > 
> > According to datasheet (IMX8MPIEC Rev 1, Table 1, Subsystem "MIPI
> > Interface") "MIPI CSI1" supports up to 500MHz only in single camera use
> > and overdrive mode. In normal mode only 400MHz are supported. For dual
> > camera usage only up to 266MHz is supported.
> 
> I wasn't aware of that, thank you for the information.

I wasn't either ;-) Just stumbled across when looking why mpi_csi_1 had only 
266MHz.

> > Apparently this is when using ISP, things might be
> > different when using ISI.
> 
> Table 13 documents the maximum frequencies of clocks
> MEDIA_CAM1_PIX_CLK_ROOT and MEDIA_CAM2_PIX_CLK_ROOT to be 400/500MHz
> (normal/overdrive) and 277/277MHz respectively, so I'd say this affects
> the ISI too. I wonder what causes the 266MHz constraint for dual camera
> mode.
> 
> There's also a constraint of at most 375 MPixel/s aggregate performance
> for the two ISP instances, but I don't know if that's due to the memory
> bandwidth, or if it is on the input side in which case it may include
> blanking and translate directly to clock frequencies. If I had to guess,
> I'd say the former.

I do not know either. A colleague suggested it might be due to DMA bandwidth 
limitation, but this is pure speculation.

> > I'm hesitating specifying the overdrive mode
> > frequency here. Most users, most probably using normal mode, would have
> > requiring them to adjust this.
> > For dual camera this is even as low as 266MHz, but IMHO this is a special
> > case.
> 
> I agree, we should at least lower the frequency to 400MHz here. Given
> that the frequency limit depends on whether one or two cameras are used,
> I'm actually tempted to either specify the worst case (2x 266MHz), or
> even drop the clock-frequency completely, forcing users to think about
> what they need. The driver however silently falls back to a default
> frequency of 166MHz when the property isn't set, so developers won't
> necessarily immediately notice that something is wrong, or why.
> 
> Should I specify 400 MHz and 266 MHz here, or go for the safer option of
> 266 MHz and 266 MHz ?

If the property is dropped and 166MHz is selected by default, then a dev_info 
should be added at least. I have no experience how common a dual camera setup 
is, so I tend to the, probably, more common single camera setup.
I was not able to get the same information for imx8mm, but maybe these limits 
or hint about the difference for single/dual camera can be put into the DT 
bindings.

Best regards,
Alexander

> > > +				clocks = <&clk 
IMX8MP_CLK_MEDIA_APB_ROOT>,
> > > +					 <&clk 
IMX8MP_CLK_MEDIA_CAM1_PIX_ROOT>,
> > > +					 <&clk 
IMX8MP_CLK_MEDIA_MIPI_PHY1_REF_ROOT>,
> > > +					 <&clk 
IMX8MP_CLK_MEDIA_AXI_ROOT>;
> > > +				clock-names = "pclk", "wrap", 
"phy", "axi";
> > > +				assigned-clocks = <&clk 
IMX8MP_CLK_MEDIA_CAM1_PIX>;
> > > +				assigned-clock-parents = <&clk 
IMX8MP_SYS_PLL2_1000M>;
> > > +				assigned-clock-rates = 
<500000000>;
> > > +				power-domains = <&media_blk_ctrl 
IMX8MP_MEDIABLK_PD_MIPI_CSI2_1>;
> > > +				status = "disabled";
> > > +
> > > +				ports {
> > > +					#address-cells = <1>;
> > > +					#size-cells = <0>;
> > > +
> > > +					port@0 {
> > > +						reg = <0>;
> > > +					};
> > > +
> > > +					port@1 {
> > > +						reg = <1>;
> > > +					};
> > > +				};
> > > +			};
> > > +
> > > +			mipi_csi_1: csi@32e50000 {
> > > +				compatible = "fsl,imx8mp-mipi-
csi2", "fsl,imx8mm-mipi-csi2";
> > > +				reg = <0x32e50000 0x10000>;
> > > +				interrupts = <GIC_SPI 80 
IRQ_TYPE_LEVEL_HIGH>;
> > > +				clock-frequency = <266000000>;
> > 
> > For single camera usage this can even go as high as 277MHz. 266MHz is only
> > for dual camera use.
> > 
> > > +				clocks = <&clk 
IMX8MP_CLK_MEDIA_APB_ROOT>,
> > > +					 <&clk 
IMX8MP_CLK_MEDIA_CAM2_PIX_ROOT>,
> > > +					 <&clk 
IMX8MP_CLK_MEDIA_MIPI_PHY1_REF_ROOT>,
> > > +					 <&clk 
IMX8MP_CLK_MEDIA_AXI_ROOT>;
> > > +				clock-names = "pclk", "wrap", 
"phy", "axi";
> > > +				assigned-clocks = <&clk 
IMX8MP_CLK_MEDIA_CAM2_PIX>;
> > > +				assigned-clock-parents = <&clk 
IMX8MP_SYS_PLL2_1000M>;
> > > +				assigned-clock-rates = 
<266000000>;
> > > +				power-domains = <&media_blk_ctrl 
IMX8MP_MEDIABLK_PD_MIPI_CSI2_2>;
> > > +				status = "disabled";
> > > +
> > > +				ports {
> > > +					#address-cells = <1>;
> > > +					#size-cells = <0>;
> > > +
> > > +					port@0 {
> > > +						reg = <0>;
> > > +					};
> > > +
> > > +					port@1 {
> > > +						reg = <1>;
> > > +					};
> > > +				};
> > > +			};
> > > +
> > > 
> > >  			hsio_blk_ctrl: blk-ctrl@32f10000 {
> > >  			
> > >  				compatible = "fsl,imx8mp-hsio-blk-
ctrl", "syscon";
> > >  				reg = <0x32f10000 0x24>;
> > > 
> > > base-commit: b13baccc3850ca8b8cccbf8ed9912dbaa0fdf7f3





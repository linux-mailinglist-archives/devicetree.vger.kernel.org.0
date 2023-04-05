Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 687B36D7D7F
	for <lists+devicetree@lfdr.de>; Wed,  5 Apr 2023 15:16:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237892AbjDENQa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Apr 2023 09:16:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59700 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232719AbjDENQ3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Apr 2023 09:16:29 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F4097E7A
        for <devicetree@vger.kernel.org>; Wed,  5 Apr 2023 06:16:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1680700588; x=1712236588;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=4RVlb8yI3d39rdesnGfgQTzPDTdk41ZCWB+kZCrJpSY=;
  b=cCKNZmsVa4nEu5bYjNckcplK+q8NL36S3/KfhkRLE7GIQnvRGVKSftdX
   KSC2LypxkzOjjKL98S7XJiLnkjolFXHHWGlhV8hdvBdH4Gqz99wLc0SVT
   zf+lZMiJhLIKBBLvTAj4wuKOwA9GK70wTGVv77SLRAQB+fyLTf5JlUo/+
   zTTfJ2IJ1rD9+2y+5iwP5+ZJvjiwgyvNW1MWFXG/rESiXfDgW/oTthhjP
   bynxxFhjzvSSRbKMly6tUKz3QC+vXzYB5j/Ijyf3WXCYKwLVFIdwKAG5t
   hrQQ/BjRsxKWey1OHXpcI9gQM4WqsedG2g29CaN2C79GDR61kqp8xycsf
   Q==;
X-IronPort-AV: E=Sophos;i="5.98,319,1673910000"; 
   d="scan'208";a="30167092"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 05 Apr 2023 15:16:26 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 05 Apr 2023 15:16:26 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 05 Apr 2023 15:16:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1680700586; x=1712236586;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=4RVlb8yI3d39rdesnGfgQTzPDTdk41ZCWB+kZCrJpSY=;
  b=pQLNM3A4TDGz629L1RdLce1KJeVYKanF4txXLbA1i4jDaJOR1G8eGlUO
   xxeGb8jOmSarEak2DY6tEH8QLtXer9SHGk2dgZgK7ld69W6rAmu+TcuXv
   yMj5jjED8zN7qz9MsFba6zzV3+EVHS++LutKePDnu2BaHTiii9FL22zH4
   +4w0IT58BDWcmBeYty58P22VSyBtK/S587i9KCjvEUsmUT1ktOvVXkoNP
   jVLBZgoXxQas0M+Uz4ISvpWLPo8aoUagHbGUIjT50OK15L2sKq+ZAkh3V
   0irp0nVSBpUDb0Ql4KSt4GIAaenztNKbsOcZFcv2MYXYMXu55EEBpWWTf
   A==;
X-IronPort-AV: E=Sophos;i="5.98,319,1673910000"; 
   d="scan'208";a="30167091"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 05 Apr 2023 15:16:26 +0200
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id D20DA280056;
        Wed,  5 Apr 2023 15:16:25 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     linux-arm-kernel@lists.infradead.org, Marek Vasut <marex@denx.de>
Cc:     Abel Vesa <abel.vesa@nxp.com>, Dong Aisheng <aisheng.dong@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Guido =?ISO-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: imx8mm: Add display pipeline components
Date:   Wed, 05 Apr 2023 15:16:25 +0200
Message-ID: <4588730.LvFx2qVVIh@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <3b6696c1-411c-f382-0da4-67f9272fa306@denx.de>
References: <20230404000151.534530-1-marex@denx.de> <2790760.mvXUDI8C0e@steina-w> <3b6696c1-411c-f382-0da4-67f9272fa306@denx.de>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Spam-Status: No, score=-0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Am Mittwoch, 5. April 2023, 14:32:35 CEST schrieb Marek Vasut:
> On 4/5/23 08:00, Alexander Stein wrote:
> > Hi Marek,
>=20
> Hi,
>=20
> > Am Dienstag, 4. April 2023, 02:01:51 CEST schrieb Marek Vasut:
> >> Add LCDIF scanout engine and DSIM bridge nodes for i.MX8M Mini.
> >> This makes the DSI display pipeline available on this SoC.
> >>=20
> >> Signed-off-by: Marek Vasut <marex@denx.de>
> >> ---
> >> Cc: Abel Vesa <abel.vesa@nxp.com>
> >> Cc: Dong Aisheng <aisheng.dong@nxp.com>
> >> Cc: Fabio Estevam <festevam@gmail.com>
> >> Cc: Guido G=FCnther <agx@sigxcpu.org>
> >> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> >> Cc: Lucas Stach <l.stach@pengutronix.de>
> >> Cc: NXP Linux Team <linux-imx@nxp.com>
> >> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> >> Cc: Richard Cochran <richardcochran@gmail.com>
> >> Cc: Rob Herring <robh+dt@kernel.org>
> >> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> >> Cc: Shawn Guo <shawnguo@kernel.org>
> >> Cc: devicetree@vger.kernel.org
> >> Cc: linux-arm-kernel@lists.infradead.org
> >> ---
> >>=20
> >>   arch/arm64/boot/dts/freescale/imx8mm.dtsi | 57 +++++++++++++++++++++=
++
> >>   1 file changed, 57 insertions(+)
> >>=20
> >> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> >> b/arch/arm64/boot/dts/freescale/imx8mm.dtsi index
> >> e311da7e87bdc..06495c225c94b 100644
> >> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> >> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> >> @@ -1119,6 +1119,63 @@ aips4: bus@32c00000 {
> >>=20
> >>   			#size-cells =3D <1>;
> >>   			ranges =3D <0x32c00000 0x32c00000 0x400000>;
> >>=20
> >> +			lcdif: lcdif@32e00000 {
> >> +				compatible =3D "fsl,imx8mm-lcdif",
> >=20
> > "fsl,imx6sx-lcdif";
> >=20
> >> +				reg =3D <0x32e00000 0x10000>;
> >> +				clocks =3D <&clk
> >=20
> > IMX8MM_CLK_LCDIF_PIXEL>,
> >=20
> >> +					 <&clk
> >=20
> > IMX8MM_CLK_DISP_APB_ROOT>,
> >=20
> >> +					 <&clk
> >=20
> > IMX8MM_CLK_DISP_AXI_ROOT>;
> >=20
> >> +				clock-names =3D "pix", "axi",
> >=20
> > "disp_axi";
> >=20
> >> +				assigned-clocks =3D <&clk
> >=20
> > IMX8MM_CLK_LCDIF_PIXEL>,
> >=20
> >> +						  <&clk
> >=20
> > IMX8MM_CLK_DISP_AXI>,
> >=20
> >> +						  <&clk
> >=20
> > IMX8MM_CLK_DISP_APB>;
> >=20
> >> +				assigned-clock-parents =3D <&clk
> >=20
> > IMX8MM_VIDEO_PLL1_OUT>,
> >=20
> >> +							 <&clk
> >=20
> > IMX8MM_SYS_PLL2_1000M>,
> >=20
> >> +							 <&clk
> >=20
> > IMX8MM_SYS_PLL1_800M>;
> >=20
> >> +				assigned-clock-rates =3D <594000000>,
> >=20
> > <500000000>, <200000000>;
> >=20
> >> +				interrupts =3D <GIC_SPI 5
> >=20
> > IRQ_TYPE_LEVEL_HIGH>;
> >=20
> >> +				power-domains =3D <&disp_blk_ctrl
> >=20
> > IMX8MM_DISPBLK_PD_LCDIF>;
> >=20
> >> +				status =3D "disabled";
> >> +
> >> +				port {
> >> +					lcdif_to_dsim: endpoint {
> >> +						remote-endpoint =3D
> >=20
> > <&dsim_from_lcdif>;
> >=20
> >> +					};
> >> +				};
> >> +			};
> >> +
> >> +			mipi_dsi: dsi@32e10000 {
> >> +				#address-cells =3D <1>;
> >> +				#size-cells =3D <0>;

I missed that. These are not necessary.

> >> +				compatible =3D "fsl,imx8mm-mipi-dsim";
> >> +				reg =3D <0x32e10000 0x400>;
> >> +				clocks =3D <&clk IMX8MM_CLK_DSI_CORE>,
> >> +					 <&clk
> >=20
> > IMX8MM_CLK_DSI_PHY_REF>;
> >=20
> >> +				clock-names =3D "bus_clk", "sclk_mipi";
> >> +				assigned-clocks =3D <&clk
> >=20
> > IMX8MM_CLK_DSI_CORE>,
> >=20
> >> +						  <&clk
> >=20
> > IMX8MM_CLK_DSI_PHY_REF>;
> >=20
> >> +				assigned-clock-parents =3D <&clk
> >=20
> > IMX8MM_SYS_PLL1_266M>,
> >=20
> >> +							 <&clk
> >=20
> > IMX8MM_CLK_24M>;
> >=20
> >> +				assigned-clock-rates =3D <266000000>,
> >=20
> > <24000000>;
> >=20
> >> +				samsung,pll-clock-frequency =3D
> >=20
> > <24000000>;
> >=20
> > What about samsung,burst-clock-frequency and samsung,esc-clock-frequenc=
y?
> > Is there is sane default? Do they need to be provided in the board file?
> Those two (burst and esc) are display or nearest-bridge specific and go
> into board files.

Thanks for clarification. With the nit from above fixed:
Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>

=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



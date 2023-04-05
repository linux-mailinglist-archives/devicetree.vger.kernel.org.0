Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 120FE6D740D
	for <lists+devicetree@lfdr.de>; Wed,  5 Apr 2023 08:00:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236791AbjDEGAv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Apr 2023 02:00:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236943AbjDEGAu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Apr 2023 02:00:50 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7AB69273F
        for <devicetree@vger.kernel.org>; Tue,  4 Apr 2023 23:00:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1680674448; x=1712210448;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=ys1uFjXv5fRa6z8qPXCE5fmO8QSPzujsdE6O9gLP9MY=;
  b=ZXydnYY5eQyYtVDmOavp0o3aT/y055Zu4K7n947hQ1DBodOf71OM6pYX
   MKNDNzHwriZh/Ww+0pDG6rG6+ZKMW20UYQbUNgn/kg9YPzVVogciH79Dt
   1+12U7yNBtE3+Tp+PTjPTJdfea5weGus3otMNO1DlWWik7SCHb9g7w5Z7
   uU1e4V37xcH5TxSk1FMtxuczow8fAnIeuCv71kYhkQqMMN5Y67Eb/C/c4
   u8SLRpl81htbXD76tfbSc65kdvVlqIryMToFuaHtIEWqYJERRokQ1WMWD
   mxI+bxo4pnbpM7ddeCJRNoQhW/nFwpUQHp491o1CJQM9mKq50YRCm2ejq
   Q==;
X-IronPort-AV: E=Sophos;i="5.98,319,1673910000"; 
   d="scan'208";a="30151568"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 05 Apr 2023 08:00:46 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 05 Apr 2023 08:00:46 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 05 Apr 2023 08:00:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1680674446; x=1712210446;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=ys1uFjXv5fRa6z8qPXCE5fmO8QSPzujsdE6O9gLP9MY=;
  b=h/8phmel813cw7Ggke8++z9CkEfrky8JN19aNwjH64Z40tzCawhfJVED
   DdEPKgqRxb3VNsj4GquAe7+LVXT2/4JvZyDi3f6WnVB0ixywZaQ0yUcCo
   cG0z7NWQ3KbJNMiCvRYfa8ygo7NM7/9PIzN56+YXraLin+W/tjiQasdiF
   kkiGwWyhuTr5bpk8XXrU/TPW7TvnVlyL9HaihHRwjoMeWw0vxPqht/sFg
   +lPJZRRLac5LW6rSaxSy0MDvsAdxKShuZSuAtvy68ohDyYKLddufWl/XO
   nwpvXQR2+3jEfIcPA8Jko1EkODB1mCsyfooHnyjab598y9swTLE/Axgul
   A==;
X-IronPort-AV: E=Sophos;i="5.98,319,1673910000"; 
   d="scan'208";a="30151566"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 05 Apr 2023 08:00:45 +0200
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 23CBF280056;
        Wed,  5 Apr 2023 08:00:45 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Abel Vesa <abel.vesa@nxp.com>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Guido =?ISO-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
        Marek Vasut <marex@denx.de>
Subject: Re: [PATCH] arm64: dts: imx8mm: Add display pipeline components
Date:   Wed, 05 Apr 2023 08:00:42 +0200
Message-ID: <2790760.mvXUDI8C0e@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20230404000151.534530-1-marex@denx.de>
References: <20230404000151.534530-1-marex@denx.de>
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

Hi Marek,

Am Dienstag, 4. April 2023, 02:01:51 CEST schrieb Marek Vasut:
> Add LCDIF scanout engine and DSIM bridge nodes for i.MX8M Mini.
> This makes the DSI display pipeline available on this SoC.
>=20
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Abel Vesa <abel.vesa@nxp.com>
> Cc: Dong Aisheng <aisheng.dong@nxp.com>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Guido G=FCnther <agx@sigxcpu.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Richard Cochran <richardcochran@gmail.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 57 +++++++++++++++++++++++
>  1 file changed, 57 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mm.dtsi index
> e311da7e87bdc..06495c225c94b 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -1119,6 +1119,63 @@ aips4: bus@32c00000 {
>  			#size-cells =3D <1>;
>  			ranges =3D <0x32c00000 0x32c00000 0x400000>;
>=20
> +			lcdif: lcdif@32e00000 {
> +				compatible =3D "fsl,imx8mm-lcdif",=20
"fsl,imx6sx-lcdif";
> +				reg =3D <0x32e00000 0x10000>;
> +				clocks =3D <&clk=20
IMX8MM_CLK_LCDIF_PIXEL>,
> +					 <&clk=20
IMX8MM_CLK_DISP_APB_ROOT>,
> +					 <&clk=20
IMX8MM_CLK_DISP_AXI_ROOT>;
> +				clock-names =3D "pix", "axi",=20
"disp_axi";
> +				assigned-clocks =3D <&clk=20
IMX8MM_CLK_LCDIF_PIXEL>,
> +						  <&clk=20
IMX8MM_CLK_DISP_AXI>,
> +						  <&clk=20
IMX8MM_CLK_DISP_APB>;
> +				assigned-clock-parents =3D <&clk=20
IMX8MM_VIDEO_PLL1_OUT>,
> +							 <&clk=20
IMX8MM_SYS_PLL2_1000M>,
> +							 <&clk=20
IMX8MM_SYS_PLL1_800M>;
> +				assigned-clock-rates =3D <594000000>,=20
<500000000>, <200000000>;
> +				interrupts =3D <GIC_SPI 5=20
IRQ_TYPE_LEVEL_HIGH>;
> +				power-domains =3D <&disp_blk_ctrl=20
IMX8MM_DISPBLK_PD_LCDIF>;
> +				status =3D "disabled";
> +
> +				port {
> +					lcdif_to_dsim: endpoint {
> +						remote-endpoint =3D=20
<&dsim_from_lcdif>;
> +					};
> +				};
> +			};
> +
> +			mipi_dsi: dsi@32e10000 {
> +				#address-cells =3D <1>;
> +				#size-cells =3D <0>;
> +				compatible =3D "fsl,imx8mm-mipi-dsim";
> +				reg =3D <0x32e10000 0x400>;
> +				clocks =3D <&clk IMX8MM_CLK_DSI_CORE>,
> +					 <&clk=20
IMX8MM_CLK_DSI_PHY_REF>;
> +				clock-names =3D "bus_clk", "sclk_mipi";
> +				assigned-clocks =3D <&clk=20
IMX8MM_CLK_DSI_CORE>,
> +						  <&clk=20
IMX8MM_CLK_DSI_PHY_REF>;
> +				assigned-clock-parents =3D <&clk=20
IMX8MM_SYS_PLL1_266M>,
> +							 <&clk=20
IMX8MM_CLK_24M>;
> +				assigned-clock-rates =3D <266000000>,=20
<24000000>;
> +				samsung,pll-clock-frequency =3D=20
<24000000>;

What about samsung,burst-clock-frequency and samsung,esc-clock-frequency? I=
s=20
there is sane default? Do they need to be provided in the board file?

Best regards,
Alexander

> +				interrupts =3D <GIC_SPI 18=20
IRQ_TYPE_LEVEL_HIGH>;
> +				power-domains =3D <&disp_blk_ctrl=20
IMX8MM_DISPBLK_PD_MIPI_DSI>;
> +				status =3D "disabled";
> +
> +				ports {
> +					#address-cells =3D <1>;
> +					#size-cells =3D <0>;
> +
> +					port@0 {
> +						reg =3D <0>;
> +
> +						dsim_from_lcdif:=20
endpoint {
> +							remote-
endpoint =3D <&lcdif_to_dsim>;
> +						};
> +					};
> +				};
> +			};
> +
>  			csi: csi@32e20000 {
>  				compatible =3D "fsl,imx8mm-csi",=20
"fsl,imx7-csi";
>  				reg =3D <0x32e20000 0x1000>;


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



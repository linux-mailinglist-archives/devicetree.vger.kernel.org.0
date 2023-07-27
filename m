Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5CA5476470D
	for <lists+devicetree@lfdr.de>; Thu, 27 Jul 2023 08:40:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232776AbjG0Gkw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jul 2023 02:40:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230129AbjG0Gkg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Jul 2023 02:40:36 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C86E2109
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 23:40:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1690440014; x=1721976014;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=R+7psQjOg7clkvnriUd+DpqZssv5pPQlNlj84WO+c6s=;
  b=K84Lh5YsUHRQz2DcO4WBT+RyBBG8+snYse6loxb0LQ9fKpzbMVHd4I5y
   FkGKCVSgBKhim+KARFUpjoLPy2q4cQ0ot5+U6hvLeThka7/d4vPIAWMNY
   UzGFkr3p3DSwQvqVvtZVyBxECZE8+DxdQo6wpPV7AatGS7cu1kIG++aN6
   YjspQz4nv9KhxMxwGQIUcfNupe4w4aVQJFaRCZqLCn/IRfLxkMCKZoFyC
   MgTtE8m71LMjsb2DHcTCTdoEALmXjNYEnu4BQBeElA/qVCLakuymK6gYb
   kh1BBQuJc6+P7X/O5ZN3AkstL1NmJR9/qs497FQVEjAVUNrPInozjelZT
   w==;
X-IronPort-AV: E=Sophos;i="6.01,234,1684792800"; 
   d="scan'208";a="32143828"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 27 Jul 2023 08:40:12 +0200
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 24980280075;
        Thu, 27 Jul 2023 08:40:12 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Peng Fan <peng.fan@nxp.com>, Sherry Sun <sherry.sun@nxp.com>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 1/1] arm64: dts: imx93: Fix LPUART compatible list
Date:   Thu, 27 Jul 2023 08:40:11 +0200
Message-ID: <9194108.rMLUfLXkoz@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <AS8PR04MB84049964E320C20E83BEB78D9200A@AS8PR04MB8404.eurprd04.prod.outlook.com>
References: <20230726111101.4169847-1-alexander.stein@ew.tq-group.com> <AS8PR04MB84049964E320C20E83BEB78D9200A@AS8PR04MB8404.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sherry,

Am Mittwoch, 26. Juli 2023, 14:28:22 CEST schrieb Sherry Sun:
> > -----Original Message-----
> > From: Alexander Stein <alexander.stein@ew.tq-group.com>
> > Sent: 2023=E5=B9=B47=E6=9C=8826=E6=97=A5 19:11
> > To: Rob Herring <robh+dt@kernel.org>; Krzysztof Kozlowski
> > <krzysztof.kozlowski+dt@linaro.org>; Conor Dooley <conor+dt@kernel.org>;
> > Shawn Guo <shawnguo@kernel.org>; Sascha Hauer
> > <s.hauer@pengutronix.de>; Fabio Estevam <festevam@gmail.com>; Peng
> > Fan <peng.fan@nxp.com>
> > Cc: Alexander Stein <alexander.stein@ew.tq-group.com>; Pengutronix Kern=
el
> > Team <kernel@pengutronix.de>; dl-linux-imx <linux-imx@nxp.com>;
> > devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org
> > Subject: [PATCH 1/1] arm64: dts: imx93: Fix LPUART compatible list
> >=20
> > The compatible list for imx93 LPUART does not include imx8ulp-lpuart
> > variant.
 Drop it according to bindings.
>=20
>=20
> Hi Alexander, no, imx93 should include the imx8ulp-lpuart compatible, ple=
ase
> update your dt bindings.
> https://lore.kernel.org/all/20230705015602.29569-4-sherry.sun@nxp.com/ Th=
is
> patch now in the tty git tree (tty-next branch).

Ah, I was too fast by one day. I can see this patch in today's next. Thanks=
=20
for the link.

Best regards,
Alexander

> Best Regards
> Sherry
>=20
>=20
> >=20
> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > ---
> > This fixes warnings like:
> > arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla.dtb:
> > serial@44390000: compatible: 'oneOf' conditional failed, one must be
> > fixed:
>=20
> >         ['fsl,imx93-lpuart', 'fsl,imx8ulp-lpuart', 'fsl,imx7ulp-lpuart']
> >         is too long
 'fsl,imx93-lpuart' is not one of
> >         ['fsl,vf610-lpuart', 'fsl,ls1021a-lpuart',>=20
> > 'fsl,ls1028a-lpuart', 'fsl,imx7ulp-lpuart', 'fsl,imx8qxp-lpuart',
> > 'fsl,imxrt1050-
 lpuart']
> >=20
> >         'fsl,imx93-lpuart' is not one of ['fsl,imx8qm-lpuart',
> >         'fsl,imx8dxl-lpuart']
 'fsl,imxrt1050-lpuart' was expected
> >         'fsl,imx7ulp-lpuart' was expected
> >         'fsl,imx8qxp-lpuart' was expected
> >         'fsl,imxrt1170-lpuart' was expected
> >         from schema $id:
> >=20
> > https://eur01.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F%2Fdevi=
cet
> > ree.org%2Fschemas%2Fserial%2Ffsl-
> > lpuart.yaml%23&data=3D05%7C01%7Csherry.sun%40nxp.com%7C80432b48b2
> > d848c100e908db8dc902a2%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7
> > C0%7C638259666697434989%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4w
> > LjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C
> > %7C%7C&sdata=3DmHorQA%2BLsCoGhPtd8SqV%2B45xT1irTLkI6qKCKcqc4BI%3
> > D&reserved=3D0
> > arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla.dtb:
> > serial@44390000: Unevaluated properties are not allowed ('compatible' w=
as
> > unexpected)
> >=20
> >         from schema $id:
> >=20
> > https://eur01.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F%2Fdevi=
cet
> > ree.org%2Fschemas%2Fserial%2Ffsl-
> > lpuart.yaml%23&data=3D05%7C01%7Csherry.sun%40nxp.com%7C80432b48b2
> > d848c100e908db8dc902a2%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7
> > C0%7C638259666697434989%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4w
> > LjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C
> > %7C%7C&sdata=3DmHorQA%2BLsCoGhPtd8SqV%2B45xT1irTLkI6qKCKcqc4BI%3
> > D&reserved=3D0
> >=20
> >=20
> >  arch/arm64/boot/dts/freescale/imx93.dtsi | 16 ++++++++--------
> >  1 file changed, 8 insertions(+), 8 deletions(-)
> >=20
> >=20
> > diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi
> > b/arch/arm64/boot/dts/freescale/imx93.dtsi
> > index 4ec9df78f2050..5ba92c9be78ba 100644
> > --- a/arch/arm64/boot/dts/freescale/imx93.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
> > @@ -291,7 +291,7 @@ lpspi2: spi@44370000 {
> >=20
> >  			};
> >=20
> >=20
> >=20
> >  			lpuart1: serial@44380000 {
> >=20
> > -				compatible =3D "fsl,imx93-lpuart",=20
"fsl,imx8ulp-
> > lpuart", "fsl,imx7ulp-lpuart";
> > +				compatible =3D "fsl,imx93-lpuart",=20
"fsl,imx7ulp-
> > lpuart";
> >=20
> >  				reg =3D <0x44380000 0x1000>;
> >  				interrupts =3D <GIC_SPI 19
> >=20
> > IRQ_TYPE_LEVEL_HIGH>;
> >=20
> >  				clocks =3D <&clk=20
IMX93_CLK_LPUART1_GATE>;
> >=20
> > @@ -300,7 +300,7 @@ lpuart1: serial@44380000 {
> >=20
> >  			};
> >=20
> >=20
> >=20
> >  			lpuart2: serial@44390000 {
> >=20
> > -				compatible =3D "fsl,imx93-lpuart",=20
"fsl,imx8ulp-
> > lpuart", "fsl,imx7ulp-lpuart";
> > +				compatible =3D "fsl,imx93-lpuart",=20
"fsl,imx7ulp-
> > lpuart";
> >=20
> >  				reg =3D <0x44390000 0x1000>;
> >  				interrupts =3D <GIC_SPI 20
> >=20
> > IRQ_TYPE_LEVEL_HIGH>;
> >=20
> >  				clocks =3D <&clk=20
IMX93_CLK_LPUART2_GATE>;
> >=20
> > @@ -545,7 +545,7 @@ lpspi4: spi@42560000 {
> >=20
> >  			};
> >=20
> >=20
> >=20
> >  			lpuart3: serial@42570000 {
> >=20
> > -				compatible =3D "fsl,imx93-lpuart",=20
"fsl,imx8ulp-
> > lpuart", "fsl,imx7ulp-lpuart";
> > +				compatible =3D "fsl,imx93-lpuart",=20
"fsl,imx7ulp-
> > lpuart";
> >=20
> >  				reg =3D <0x42570000 0x1000>;
> >  				interrupts =3D <GIC_SPI 68
> >=20
> > IRQ_TYPE_LEVEL_HIGH>;
> >=20
> >  				clocks =3D <&clk=20
IMX93_CLK_LPUART3_GATE>;
> >=20
> > @@ -554,7 +554,7 @@ lpuart3: serial@42570000 {
> >=20
> >  			};
> >=20
> >=20
> >=20
> >  			lpuart4: serial@42580000 {
> >=20
> > -				compatible =3D "fsl,imx93-lpuart",=20
"fsl,imx8ulp-
> > lpuart", "fsl,imx7ulp-lpuart";
> > +				compatible =3D "fsl,imx93-lpuart",=20
"fsl,imx7ulp-
> > lpuart";
> >=20
> >  				reg =3D <0x42580000 0x1000>;
> >  				interrupts =3D <GIC_SPI 69
> >=20
> > IRQ_TYPE_LEVEL_HIGH>;
> >=20
> >  				clocks =3D <&clk=20
IMX93_CLK_LPUART4_GATE>;
> >=20
> > @@ -563,7 +563,7 @@ lpuart4: serial@42580000 {
> >=20
> >  			};
> >=20
> >=20
> >=20
> >  			lpuart5: serial@42590000 {
> >=20
> > -				compatible =3D "fsl,imx93-lpuart",=20
"fsl,imx8ulp-
> > lpuart", "fsl,imx7ulp-lpuart";
> > +				compatible =3D "fsl,imx93-lpuart",=20
"fsl,imx7ulp-
> > lpuart";
> >=20
> >  				reg =3D <0x42590000 0x1000>;
> >  				interrupts =3D <GIC_SPI 70
> >=20
> > IRQ_TYPE_LEVEL_HIGH>;
> >=20
> >  				clocks =3D <&clk=20
IMX93_CLK_LPUART5_GATE>;
> >=20
> > @@ -572,7 +572,7 @@ lpuart5: serial@42590000 {
> >=20
> >  			};
> >=20
> >=20
> >=20
> >  			lpuart6: serial@425a0000 {
> >=20
> > -				compatible =3D "fsl,imx93-lpuart",=20
"fsl,imx8ulp-
> > lpuart", "fsl,imx7ulp-lpuart";
> > +				compatible =3D "fsl,imx93-lpuart",=20
"fsl,imx7ulp-
> > lpuart";
> >=20
> >  				reg =3D <0x425a0000 0x1000>;
> >  				interrupts =3D <GIC_SPI 71
> >=20
> > IRQ_TYPE_LEVEL_HIGH>;
> >=20
> >  				clocks =3D <&clk=20
IMX93_CLK_LPUART6_GATE>;
> >=20
> > @@ -610,7 +610,7 @@ flexspi1: spi@425e0000 {
> >=20
> >  			};
> >=20
> >=20
> >=20
> >  			lpuart7: serial@42690000 {
> >=20
> > -				compatible =3D "fsl,imx93-lpuart",=20
"fsl,imx8ulp-
> > lpuart", "fsl,imx7ulp-lpuart";
> > +				compatible =3D "fsl,imx93-lpuart",=20
"fsl,imx7ulp-
> > lpuart";
> >=20
> >  				reg =3D <0x42690000 0x1000>;
> >  				interrupts =3D <GIC_SPI 210
> >=20
> > IRQ_TYPE_LEVEL_HIGH>;
> >=20
> >  				clocks =3D <&clk=20
IMX93_CLK_LPUART7_GATE>;
> >=20
> > @@ -619,7 +619,7 @@ lpuart7: serial@42690000 {
> >=20
> >  			};
> >=20
> >=20
> >=20
> >  			lpuart8: serial@426a0000 {
> >=20
> > -				compatible =3D "fsl,imx93-lpuart",=20
"fsl,imx8ulp-
> > lpuart", "fsl,imx7ulp-lpuart";
> > +				compatible =3D "fsl,imx93-lpuart",=20
"fsl,imx7ulp-
> > lpuart";
> >=20
> >  				reg =3D <0x426a0000 0x1000>;
> >  				interrupts =3D <GIC_SPI 211
> >=20
> > IRQ_TYPE_LEVEL_HIGH>;
> >=20
> >  				clocks =3D <&clk=20
IMX93_CLK_LPUART8_GATE>;
> >=20
> > --
> > 2.34.1
>=20
>=20


=2D-=20
TQ-Systems GmbH | M=C3=BChlstra=C3=9Fe 2, Gut Delling | 82229 Seefeld, Germ=
any
Amtsgericht M=C3=BCnchen, HRB 105018
Gesch=C3=A4ftsf=C3=BChrer: Detlef Schneider, R=C3=BCdiger Stahl, Stefan Sch=
neider
http://www.tq-group.com/



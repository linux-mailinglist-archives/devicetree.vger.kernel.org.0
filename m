Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 258793E11AB
	for <lists+devicetree@lfdr.de>; Thu,  5 Aug 2021 11:54:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239854AbhHEJyn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Aug 2021 05:54:43 -0400
Received: from mail-eopbgr80041.outbound.protection.outlook.com ([40.107.8.41]:38296
        "EHLO EUR04-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S232930AbhHEJyn (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 5 Aug 2021 05:54:43 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cQSbm1B78zAsTZP8KQkwN7CYI4Z7oXvMhZKZyfeicACf39NMmWcgJwA0aeMOugiF8sRqEvJ8KF7X6pF5Z3JdoRpIOP88uOEorJwavm9Aw/bPduWeoTg2BpvIYTMj+i8W/C6mTVLgw6Xx++V80WK5pkOYgY3BBoAc1TRFXaskhLws2i7xdLRpVFpk4o+zEmLmYB/36p8sjfnSQLuJJ0N92BXB7iwtSmHa3x7GxNB1ZlCliZUjnRYYpGsrXcJ5YaAdZipUSA1rAIPePhSNS6JjRrkYeYGGtBu/wx5DR9v+LUXUBZc8EeTzN+E8GrwbtsOsz2oXGfUenghUc3DR76gu9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d2QKzc4ABg9T5PFat2o+mkAYImVoM2kTW8FXOdVvu6I=;
 b=Tn9j4vdnLIZE/hZfICkxekGVs8GxH1+4wREuhv8G41BUdxMDeY9Cd/D+jkhlBMgBsArwZ5InPsp6fbwmxSzySHXlo+DpxmOYRPSxrSG4wWPzlrIyB7kmHGDtmi4Fd5gENSeGzM/xkMA1OX7lhojmxhj0f3sVGGi1m3/QU87H/cBdPAaPRO/a1brrCITwbp9JGIrh9UHRsK63EkIdVT6j8GXi9lAjjTdineoIz72c7xgM8i+y3WqpAPwmTyZnV4GY74odEblu/VAzgHcdvca+CTMJUk5lMHMGwcck8yaout+s3T+j0ey9habQYkOoqE4ViG049LK8dF1V6HfqWpFwbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d2QKzc4ABg9T5PFat2o+mkAYImVoM2kTW8FXOdVvu6I=;
 b=Go2stngfrlO0O2ZsvuP3OzM4NZJiVOV3p+pPDGkrc88/RfoOplvoEspsma4VUTi7tDiE8qW56DyLMPm/eST3L+Qj2n3uIheQuyKygNkDIsdu+43Y99lVB3voHN0TkvO7WHqzFma3VJS+Ek8VCGeuFE022RKO72Jyz3KnYYvvF7s=
Received: from AM5PR0402MB2756.eurprd04.prod.outlook.com
 (2603:10a6:203:99::22) by AM6PR04MB6744.eurprd04.prod.outlook.com
 (2603:10a6:20b:f6::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.25; Thu, 5 Aug
 2021 09:54:27 +0000
Received: from AM5PR0402MB2756.eurprd04.prod.outlook.com
 ([fe80::3839:217:6252:b1f8]) by AM5PR0402MB2756.eurprd04.prod.outlook.com
 ([fe80::3839:217:6252:b1f8%11]) with mapi id 15.20.4373.026; Thu, 5 Aug 2021
 09:54:27 +0000
From:   Peng Fan <peng.fan@nxp.com>
To:     Lucas Stach <l.stach@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
CC:     dl-linux-imx <linux-imx@nxp.com>, Adam Ford <aford173@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Marek Vasut <marex@denx.de>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "patchwork-lst@pengutronix.de" <patchwork-lst@pengutronix.de>
Subject: RE: [PATCH v2 14/18] arm64: dts: imx8mm: add GPC node
Thread-Topic: [PATCH v2 14/18] arm64: dts: imx8mm: add GPC node
Thread-Index: AQHXfnGYmnQLLay8jEOIu9t6mhLyXqtkwtKw
Date:   Thu, 5 Aug 2021 09:54:26 +0000
Message-ID: <AM5PR0402MB27563F7D8CDF210F52220C5D88F29@AM5PR0402MB2756.eurprd04.prod.outlook.com>
References: <20210716232916.3572966-1-l.stach@pengutronix.de>
 <20210721204703.1424034-1-l.stach@pengutronix.de>
 <20210721204703.1424034-15-l.stach@pengutronix.de>
In-Reply-To: <20210721204703.1424034-15-l.stach@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3eb0d397-a53e-484d-479e-08d957f7032a
x-ms-traffictypediagnostic: AM6PR04MB6744:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB6744AF71CA98A5A9E7A0E17088F29@AM6PR04MB6744.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vGd2lunjT/WZ5P9CnTO7zIaUDKjG2VI19n1NlY1dDfG3p4qDwmNuSzFk8f8cxTGmyJ9u/RUrsqQbRd4r/Ctzq58/PMUJyx0Diwx/luu7RmMJs68Vxx2LwXInMn5OU1Q+yPk04c6rXH3yWXyakrKBzdNh3T5PC2kmaphtPBhVMaRNWyFI0ESpLeYcDX66YWmOsUqFZB6FkYhE5gYoV0ieMfhRYF+PE6ICPN630R++C6KnqDPLqjppN0xPJaB+rpzaUajv0RKtuKSTHUXM/ivFSSraFHnXY0tljld5QZgJ7wyek3am4Eb/mZng1mYDc+4FznnBMbOCoDhB6alm4fPFhTuyqV37thRrou9ZRjcVZUIS+BOUEg5F5b+i9px910PIQfI7ZodnivPopQ+2/bVIe9woS/p7MyiVEwLUfOvc6OVrZpSulzkAj8SwubNI8axFsqHIKWw9NWcpsEDSgIBzN1C9LP7TjvTxl0AxnHWU1XYMXkS9DW6Fht4XyvC1+qGvs9iFgyq6eub16wGMYQ+22rbysIzx0cbYCjoydaHwN0iy+7FvQq8mkno0faU1bGMqvr3EPnbIMBP5jY+N+pN5WRtetAb2BeDLLi6K/v4VPsRqKq4lBssiEDtuxRvcvWuRjLaJeERF61RokPFhRWXveZ5qKt2s9oyY2Ga4+dsEBNuuMWiBxe+oajLyFSmS/yV8nve+KG1644451h8Iat4RCH4U9wNMtry1QVYbO0Ogzmc=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM5PR0402MB2756.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(346002)(366004)(396003)(39860400002)(376002)(6506007)(8936002)(33656002)(66476007)(83380400001)(186003)(66946007)(4326008)(26005)(8676002)(66556008)(5660300002)(64756008)(66446008)(9686003)(86362001)(52536014)(7416002)(316002)(71200400001)(55016002)(478600001)(76116006)(44832011)(54906003)(2906002)(122000001)(110136005)(7696005)(38100700002)(38070700005)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3qtqe/ubjHs/TAVb/3yEJse2iESFV3oGe3ipkwOFCLYqh0LqgipoglgLwfn6?=
 =?us-ascii?Q?6+4BdVX8FrHXVN7S8JJ+Ppk1cndNKI5LozYWqzs84LZHBzc9DT+Vrsbyc0YC?=
 =?us-ascii?Q?oyOOa8lK4JAc9BaPOEH7QJEwTWMhJoBiK9/Q/9J6QsebfKpYPtdRWETRZ/4k?=
 =?us-ascii?Q?5DQxDsA3kdb4ePiJxfolybPCmKS2yrUtdXG0+I+j39dMtP3VBjY99lr8NXLN?=
 =?us-ascii?Q?vwiDr29F56w7c+L/IxBVaZJfwy+dJ4uYru2V0gWcd606ea+IqPsBxqSvRCFt?=
 =?us-ascii?Q?O4WzShzTKNmawxJ4rwJWZzcMMkgmEwCJCbN1SvqjI0gHJ660sreXbhkY0AqZ?=
 =?us-ascii?Q?iT87qU4L94IjNuwlsZtXahBPiuMewJwzXVvg9k5Pg02+7MS7rD80HVp1DRl3?=
 =?us-ascii?Q?oKYIUlrS0bhjKvqbCOaTWQX2IArkfCPb/41G1JdV0ivMc6lhyhs8aK2qod2R?=
 =?us-ascii?Q?f2pmM+wx1O4AkEflYWEJOcWQEuwbjl3Xz+JDk/BOIA4t6XL3EBsja3Hp1SNI?=
 =?us-ascii?Q?MVcctxgolvq2ZYhecR8EMT3KIvpGCRE15c1pO7EDulUm7QiLcv9Yd/EekrM3?=
 =?us-ascii?Q?fif2lg0IIQLAtyVu42Q5P/E6T2+qgEtkFw/n/Hbg1L07EliwWEDiG4O52tUu?=
 =?us-ascii?Q?sQl1JIJZEs92HDr2xj8CYy1jnB2OzmafU16iGF4QAilkKOPIE9QHSB4yCYvQ?=
 =?us-ascii?Q?x/QBBTkfTvFpNouYvqF2q2E3ukXpNayzD4L2zD6Yk4K6BNDJdkBIdlKF6vzK?=
 =?us-ascii?Q?WF9aiYXWnkjz6Z4OqdDnapm71lYQ/YgUP28qj8jEU5Z87JlqVu+0VHQnFvPk?=
 =?us-ascii?Q?OhBqJrH/duaAZSwhQR5vQcmI6w8y4nV94flE1H6Zt01bMZn4dMOlrezYJsW1?=
 =?us-ascii?Q?/U6P/EEGJod/TC7GDPwioir6cmwF3L/RATbRLx3ZJpW2Anl4HErsZmbmJeh/?=
 =?us-ascii?Q?U4dWmL+O7O01mC7gik007lbf92rDlqCclNp4sqb0AxKS+G1QjgDyshH1qaMf?=
 =?us-ascii?Q?QoUwjrF5+6CJhK+Okk7Ypj1dRTqINx3vGF6wWsAAT8/CtW6MCUtpHlrpI+CQ?=
 =?us-ascii?Q?YwYKb3kdcWYqwC1fktqYkBnPpZTkdevFCVuNR3UVPmDTnUnhN0A7nDhq/xzF?=
 =?us-ascii?Q?cH4BIypABfERB3KQWyzkdvo5vVc5W6w05WAyfehNFWdqI5Sprr6MjwHfIjc+?=
 =?us-ascii?Q?evFu/hqJjbvXAo26mj5PV7l1SOA8DAJR6ktuIw36HYfJS7eKi0q9mm0B5Y74?=
 =?us-ascii?Q?AQ/EiFkQiJkPWXRuic1nuSiL0Ma4Bxkz3b3VEvcEFyBvXiuNLQa2I157jIa9?=
 =?us-ascii?Q?2GHLB2URh+oe2zV0klrgqMz3?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM5PR0402MB2756.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3eb0d397-a53e-484d-479e-08d957f7032a
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2021 09:54:26.9997
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PSGUnS2uBJTxGCuNFpVAQR78pFdcZBANwS2bzSSpgBL/VZgu98xfgGt+2pxYdKW7oUNuSm5ccg0zwU07pBjAZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6744
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> Subject: [PATCH v2 14/18] arm64: dts: imx8mm: add GPC node
>=20
> Add the DT node for the GPC, including all the PGC power domains, some of
> them are not fully functional yet, as they require interaction with the b=
lk-ctrls
> to properly power up/down the peripherals.
>=20
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Reviewed-by: Peng Fan <peng.fan@nxp.com>

> ---
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 107
> ++++++++++++++++++++++
>  1 file changed, 107 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index a27e02bee6b4..1cdb475b5895 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -7,6 +7,8 @@
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/input.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/power/imx8mm-power.h>
> +#include <dt-bindings/reset/imx8mq-reset.h>
>  #include <dt-bindings/thermal/thermal.h>
>=20
>  #include "imx8mm-pinfunc.h"
> @@ -600,6 +602,111 @@ src: reset-controller@30390000 {
>  				interrupts =3D <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
>  				#reset-cells =3D <1>;
>  			};
> +
> +			gpc: gpc@303a0000 {
> +				compatible =3D "fsl,imx8mm-gpc";
> +				reg =3D <0x303a0000 0x10000>;
> +				interrupts =3D <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
> +				interrupt-parent =3D <&gic>;
> +				interrupt-controller;
> +				#interrupt-cells =3D <3>;
> +
> +				pgc {
> +					#address-cells =3D <1>;
> +					#size-cells =3D <0>;
> +
> +					pgc_hsiomix: power-domain@0 {
> +						#power-domain-cells =3D <0>;
> +						reg =3D <IMX8MM_POWER_DOMAIN_HSIOMIX>;
> +						clocks =3D <&clk IMX8MM_CLK_USB_BUS>;
> +						assigned-clocks =3D <&clk
> IMX8MM_CLK_USB_BUS>;
> +						assigned-clock-parents =3D <&clk
> IMX8MM_SYS_PLL2_500M>;
> +					};
> +
> +					pgc_pcie: power-domain@1 {
> +						#power-domain-cells =3D <0>;
> +						reg =3D <IMX8MM_POWER_DOMAIN_PCIE>;
> +						power-domains =3D <&pgc_hsiomix>;
> +						clocks =3D <&clk IMX8MM_CLK_PCIE1_ROOT>;
> +					};
> +
> +					pgc_otg1: power-domain@2 {
> +						#power-domain-cells =3D <0>;
> +						reg =3D <IMX8MM_POWER_DOMAIN_OTG1>;
> +						power-domains =3D <&pgc_hsiomix>;
> +					};
> +
> +					pgc_otg2: power-domain@3 {
> +						#power-domain-cells =3D <0>;
> +						reg =3D <IMX8MM_POWER_DOMAIN_OTG2>;
> +						power-domains =3D <&pgc_hsiomix>;
> +					};
> +
> +					pgc_gpumix: power-domain@4 {
> +						#power-domain-cells =3D <0>;
> +						reg =3D <IMX8MM_POWER_DOMAIN_GPUMIX>;
> +						clocks =3D <&clk
> IMX8MM_CLK_GPU_BUS_ROOT>,
> +							 <&clk IMX8MM_CLK_GPU_AHB>;
> +						assigned-clocks =3D <&clk
> IMX8MM_CLK_GPU_AXI>,
> +								  <&clk IMX8MM_CLK_GPU_AHB>;
> +						assigned-clock-parents =3D <&clk
> IMX8MM_SYS_PLL1_800M>,
> +									 <&clk
> IMX8MM_SYS_PLL1_800M>;
> +						assigned-clock-rates =3D <800000000>,
> <400000000>;
> +					};
> +
> +					pgc_gpu: power-domain@5 {
> +						#power-domain-cells =3D <0>;
> +						reg =3D <IMX8MM_POWER_DOMAIN_GPU>;
> +						clocks =3D <&clk IMX8MM_CLK_GPU_AHB>,
> +							 <&clk IMX8MM_CLK_GPU_BUS_ROOT>,
> +							 <&clk IMX8MM_CLK_GPU2D_ROOT>,
> +							 <&clk IMX8MM_CLK_GPU3D_ROOT>;
> +						resets =3D <&src IMX8MQ_RESET_GPU_RESET>;
> +						power-domains =3D <&pgc_gpumix>;
> +					};
> +
> +					pgc_vpumix: power-domain@6 {
> +						#power-domain-cells =3D <0>;
> +						reg =3D <IMX8MM_POWER_DOMAIN_VPUMIX>;
> +						clocks =3D <&clk
> IMX8MM_CLK_VPU_DEC_ROOT>;
> +						assigned-clocks =3D <&clk
> IMX8MM_CLK_VPU_BUS>;
> +						assigned-clock-parents =3D <&clk
> IMX8MM_SYS_PLL1_800M>;
> +						resets =3D <&src IMX8MQ_RESET_VPU_RESET>;
> +					};
> +
> +					pgc_vpu_g1: power-domain@7 {
> +						#power-domain-cells =3D <0>;
> +						reg =3D <IMX8MM_POWER_DOMAIN_VPUG1>;
> +					};
> +
> +					pgc_vpu_g2: power-domain@8 {
> +						#power-domain-cells =3D <0>;
> +						reg =3D <IMX8MM_POWER_DOMAIN_VPUG2>;
> +					};
> +
> +					pgc_vpu_h1: power-domain@9 {
> +						#power-domain-cells =3D <0>;
> +						reg =3D <IMX8MM_POWER_DOMAIN_VPUH1>;
> +					};
> +
> +					pgc_dispmix: power-domain@10 {
> +						#power-domain-cells =3D <0>;
> +						reg =3D <IMX8MM_POWER_DOMAIN_DISPMIX>;
> +						clocks =3D <&clk
> IMX8MM_CLK_DISP_APB_ROOT>,
> +							 <&clk IMX8MM_CLK_DISP_AXI_ROOT>;
> +						assigned-clocks =3D <&clk
> IMX8MM_CLK_DISP_AXI>,
> +								  <&clk IMX8MM_CLK_DISP_APB>;
> +						assigned-clock-parents =3D <&clk
> IMX8MM_SYS_PLL2_1000M>,
> +									 <&clk
> IMX8MM_SYS_PLL1_800M>;
> +						assigned-clock-rates =3D <500000000>,
> <200000000>;
> +					};
> +
> +					pgc_mipi: power-domain@11 {
> +						#power-domain-cells =3D <0>;
> +						reg =3D <IMX8MM_POWER_DOMAIN_MIPI>;
> +					};
> +				};
> +			};
>  		};
>=20
>  		aips2: bus@30400000 {
> --
> 2.30.2


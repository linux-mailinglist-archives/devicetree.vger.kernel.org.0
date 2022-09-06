Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A23A5ADD29
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 04:10:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231301AbiIFCKh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Sep 2022 22:10:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229713AbiIFCKg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Sep 2022 22:10:36 -0400
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2058.outbound.protection.outlook.com [40.107.20.58])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 544AA1A061
        for <devicetree@vger.kernel.org>; Mon,  5 Sep 2022 19:10:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VH/9g30eqpz7RFefEwjXFrifiLSCODoosuoWrvp+noeCUyNxU4xQfDvgVtqrc307tPJeaZkmN/pB8ijU1l11ONHA2+G/+oZ2oqoNXoDbclm9IO0b5H2e1AIxk9hzkN4PeuTwTka1ET4hXV+kHtZNi08ttrCT5ppktVc5Dl09WDH2SenpgLC0qpqIAzGGS4tH2ANpO4QUuOk4e0NoVrAwaWO+wBKkKf3OMcMzg4txI28CVQ+Nv3XvDfZW7zZxUjgIg5u3Gg6Eb7eYXYT7KGe1A0etXknBPREe684QKLrFbH2SxxBNz+ZxkUS7sM1DgKXj9fofJ1oyTQiYW+znlzH55w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hd7GRT8L30F7lfVohk3prL9S8Yap6XjBQ/lWZf9FhF0=;
 b=HhVAL0f1B9c19BQYot1ey/3Xoad8EldvtVGzlWMI63mdNlmKPi60GD1lIl5z2M5pUf9IO3ErXlhawrEmLWPceubbJpql+QR3qqKYufHLHeZ4FF6Yn6EkIkK87P9q8jyzQabKz6SurF16YpJwZQB6ryJmXBrA+lmy6ihVSfFsD+j15T6ue5iGAfp+iypEak8QDGsjNYWxQ3tSkWiLSG5vheUAIA5sPFWgqXoJ0MofwJJ9CchQi7hZkFVkKujOU/dYd4fVRqdcUJeBgu+Yn7VeTJto/kS97sP9Jdy6F0hfldr1HDw/BGG9NOdtLZg9BRpl9ypd4Ye5ZCA6rvdaZCe05A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hd7GRT8L30F7lfVohk3prL9S8Yap6XjBQ/lWZf9FhF0=;
 b=JhVcuN18vZ771GFCdeGDZrYmalJqbtMbPkf9fqO03+cpZ2icAf9GmScIclViGB3saCXlqh6pm9tbh1ckHmtgRXmMBO5rDuwJNGC1tDX9KwRli43DbcbkNfZmN0TfYWpryHyKKVwSYPXGq9nnpM2Ba42Z6tXvGtbuPKCXOm9na7Q=
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com (2603:10a6:102:261::21)
 by VE1PR04MB6751.eurprd04.prod.outlook.com (2603:10a6:803:128::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.18; Tue, 6 Sep
 2022 02:10:32 +0000
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::25b6:d7f1:c25e:24d2]) by PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::25b6:d7f1:c25e:24d2%9]) with mapi id 15.20.5588.012; Tue, 6 Sep 2022
 02:10:32 +0000
From:   Jun Li <jun.li@nxp.com>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
CC:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "tharvey@gateworks.com" <tharvey@gateworks.com>
Subject: RE: [PATCH v3 1/1] arm64: dts: tqma8mpql: add USB DR support
Thread-Topic: [PATCH v3 1/1] arm64: dts: tqma8mpql: add USB DR support
Thread-Index: AQHYwPpqstnFrbFBgEie+WmZURffea3RqVXA
Date:   Tue, 6 Sep 2022 02:10:32 +0000
Message-ID: <PA4PR04MB96404FCE6FB7AA70E876590B897E9@PA4PR04MB9640.eurprd04.prod.outlook.com>
References: <20220905073730.199462-1-alexander.stein@ew.tq-group.com>
In-Reply-To: <20220905073730.199462-1-alexander.stein@ew.tq-group.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0f5bf149-6c03-4f5f-15cd-08da8facfa3b
x-ms-traffictypediagnostic: VE1PR04MB6751:EE_
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jB1ypN+sb3jaTBL0ZWk0h8zh3eCC0VCRtnX64bn91Gs9ikW0k7HldCRjsA8gDJVN06P55Vp9qlfZQyu8AOtZt+pdf5l7g5Sh3KzTDZkRjZxfhtpfeCXOb27w773egVt3eD180VvP5hNCuE9vmVdSqCl9Slvh1VAU7n44jj5IpsUyFAAASsF94xncCeuBmg+qn5Bkf1xPL+nv27gKXgZl8tF226W6sgq3iJ3ewKbrdlt1tZV8q5El3S5hj3XzPQW1oJd2lsgnNTBWtT4+Nbilnp3QB76IPD0XoaGEgX5IYp1PXkwRexUlyfiju3gchJ2ool31KVDHUPYdiH84iOiJF7z70O4rsRtMYtcaBv9alZuGQauvwedPz1T0B32XO9J7wWeo1ZjStDZAiVdtg6fNVvoe9RRi8hFpFENc9Swl1g4qc7plXfaNfPBkvuGqDHu+hI9RzRFaRG6hmlcAXnh6mGh74R+Il/Ao2oNlSW92AXTTMlD7bfhU5aB354KdRX74ss8cEOs4moWobJorUbS+H3mM9G3Lw8PyZwcuvrSGm/fc2eHB2cYeRAmTfCD88TaB6Nwf+Id1X3/+ib/hJqsm2GCBVBD/SoDYcjeyz7YOPPhjOXWrhrKGtgHXcRX6fYz6F+gfpSy9OuSCnxgDh8z/XyBZYgmD8vRwqALUcnck17YqH6HZhCNxfipWlERAsQvj/FWO1UB5BYFrRMlUs6yrF1+IqCJE8SjtsJJJoMHMDH/rQpfq1bncqazA18OSHv55KfSQmXAJa41oaFG1IP4Aln1n0nbTtv5JYFjPBDpY5zA=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9640.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(136003)(396003)(39860400002)(366004)(346002)(376002)(38100700002)(122000001)(186003)(71200400001)(110136005)(54906003)(55016003)(316002)(7696005)(52536014)(6506007)(66946007)(64756008)(8676002)(478600001)(8936002)(4326008)(66446008)(76116006)(66476007)(5660300002)(38070700005)(86362001)(53546011)(33656002)(66556008)(83380400001)(9686003)(26005)(2906002)(44832011)(41300700001)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EfO1FhNxk02CeiN5t7C6YLAs+Pakkwxx82tS2uMrZc+yjGO2Fek4l0AAqqfA?=
 =?us-ascii?Q?Qdl0VI/QPUcHOvb+roIPmSEoarZQOQctnninC/LqQ5CZF+lAHSheYatdtDBm?=
 =?us-ascii?Q?v36tR3zxZxr5wX9h0RFceWlJTT7NAIe7xTcNnxQiM9J8Rj6eR/FHkmxSnErB?=
 =?us-ascii?Q?YNzzRmsnPlDQnuce984YRHJhDTdgh6ILhDL1QQk+fvC1op20y+ga1o3JWjdw?=
 =?us-ascii?Q?6+u8IDzMnMjz1xOm0+AlzLvLdbwwxnpnDYdmoCSjzsH5jG99RiwccnJsi87g?=
 =?us-ascii?Q?Gh5Z87cRmP35EThSrMkhXB6GJHU1F+v4AZVikatpqTOJmTX94weYlhJvgvyc?=
 =?us-ascii?Q?waIP5+nMpmhGsVdis0Zi0wtRUTNU9ukxa8lPJGDmR/XaVUWzkJekjmLYEUml?=
 =?us-ascii?Q?ZVfKNX+5PFWPQEUU/BHWDltO9U+iAQjdifXR9Ru04f+FLgc63Y++JtMTuB6z?=
 =?us-ascii?Q?NUe02kDO8zTES0O5RTeOVG0GOTE6hoSI9hMsETPaF0mKPwTqgkIglNNK1OPu?=
 =?us-ascii?Q?Y9t8kLUAV7uTfUUbgq+jCqcf7PTugusbuWuUo3ykg9jlzsh/9rrCSDcFxbHk?=
 =?us-ascii?Q?gYJZ8aLg1VErV5g6hpF/JKO1/bjskcpr7Dem+ow2LYJgsq/YSX7bCdTNbJtE?=
 =?us-ascii?Q?gHSYyLUWsAz4mNdyMtLlmCEf56aK/yA7zLcqUrMu8FvUoW378sF8f83R7lx1?=
 =?us-ascii?Q?xk4kBqjFpQD34lLf8fFr2pXkITkPpvPQMuyjJ/1u4QaZye34p68qO7ZUIq1e?=
 =?us-ascii?Q?0L0Y+wGRvM5X3aBajBpU2+iVmSUwZe0iKx7wAmYs1XorF3/zSIuUAqH/3dVo?=
 =?us-ascii?Q?H7DroNhpVFOLo2sHPZEI7iQJFuXD506aapavtNJoBelvdzuF9TuZsmP3zVYF?=
 =?us-ascii?Q?EOeIilvUDfLch1N6801zNAIUqa6mIyyFS0TpZu1PCd8e57fisqrFE77UIFBU?=
 =?us-ascii?Q?5G1QCluKAzpehU3IVGVYUFANSJ1LWDz1KpkKX2m+6H6jQAjbw4q49V1KqUdU?=
 =?us-ascii?Q?CIws4nQOqP1Ve/daIRrhoEMtjwXIF9N+GcM7cTMC/KqWE8jM7pKz7JJZq772?=
 =?us-ascii?Q?k7QabO0Z+YlDYkfwBWoQGXjlDFyTi4YBLRMOGLMfpwuOFqNY8xPn16byaF8Y?=
 =?us-ascii?Q?Uc2Ko2TuFc7K1M4ErZaAW/croQEou9fD6PRlckCeBUNflW4JaWeLuq3QVf+I?=
 =?us-ascii?Q?aEnbgVSnHonyu8mrCxecktJDHZnh3sx5/EbcMKaMxB1OUcwAlN3WS1TqLCkN?=
 =?us-ascii?Q?1n9eLHSPC334sX/KoQAADfbh1MvXekPbn2Vx8+sUFqMsLXDYbEl2MU8qmtWZ?=
 =?us-ascii?Q?LBSr+mgApOfbIxzz8UYL5yEHDmqeAgLxNiBkVGRCeLTgEFXv3s5qeg/y/dWH?=
 =?us-ascii?Q?sEebEangwNevWLiucWQ2zaTnlu3wqkMD8QibJjlhggH4rhMbBeSjiC9vxygs?=
 =?us-ascii?Q?npx1iUyknt3BuooSglrEAf6LdN9AYtfa+pwb4jmjhS7WycD7yELnApqXFagC?=
 =?us-ascii?Q?kzzYdsN8O3XI1YA8AZlb/wtSIDHDiqu41A+VLw8tjd5AP0yA6/m8bfTgD5mS?=
 =?us-ascii?Q?VX4+11cSI/RdSo8V/Ew=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9640.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f5bf149-6c03-4f5f-15cd-08da8facfa3b
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2022 02:10:32.1044
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q6GQYOX2gKeFp13znMRjh3ei0goSWnAc/o7Vgp4iolC7aqWor0Pcix0fXQJ0mB+Q
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6751
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



> -----Original Message-----
> From: Alexander Stein <alexander.stein@ew.tq-group.com>
> Sent: Monday, September 5, 2022 3:38 PM
> To: Shawn Guo <shawnguo@kernel.org>; Sascha Hauer <s.hauer@pengutronix.de=
>
> Cc: Alexander Stein <alexander.stein@ew.tq-group.com>; Pengutronix Kernel
> Team <kernel@pengutronix.de>; Fabio Estevam <festevam@gmail.com>;
> dl-linux-imx <linux-imx@nxp.com>; devicetree@vger.kernel.org;
> linux-arm-kernel@lists.infradead.org; tharvey@gateworks.com; Jun Li
> <jun.li@nxp.com>
> Subject: [PATCH v3 1/1] arm64: dts: tqma8mpql: add USB DR support
>=20
> Add support for USB DR on USB1 interface. Host/Device detection is done u=
sing
> the usb-role-switch connector.
>=20
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Reviewed-by: Li Jun <jun.li@nxp.com>

> ---
> Changes in v3:
> * Moved pinctrl to USB glue layer node
> * Ordered nodes alphabetically
>=20
> Changes in v2:
> * Split from previous series
> * For now enable USB OTG only
>=20
>  .../freescale/imx8mp-tqma8mpql-mba8mpxl.dts   | 48 +++++++++++++++++++
>  1 file changed, 48 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
> b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
> index d8ca52976170..88579e8ac93b 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
> @@ -139,6 +139,13 @@ reg_vcc_3v3: regulator-3v3 {
>  		regulator-max-microvolt =3D <3300000>;
>  	};
>=20
> +	reg_vcc_5v0: regulator-5v0 {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "VCC_5V0";
> +		regulator-min-microvolt =3D <5000000>;
> +		regulator-max-microvolt =3D <5000000>;
> +	};
> +
>  	reserved-memory {
>  		#address-cells =3D <2>;
>  		#size-cells =3D <2>;
> @@ -445,6 +452,38 @@ &uart4 {
>  	status =3D "okay";
>  };
>=20
> +&usb3_0 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_usb0>;
> +	fsl,over-current-active-low;
> +	status =3D "okay";
> +};
> +
> +&usb3_phy0 {
> +	vbus-supply =3D <&reg_vcc_5v0>;
> +	status =3D "okay";
> +};
> +
> +&usb_dwc3_0 {
> +	/* dual role is implemented, but not a full featured OTG */
> +	hnp-disable;
> +	srp-disable;
> +	adp-disable;
> +	dr_mode =3D "otg";
> +	usb-role-switch;
> +	role-switch-default-mode =3D "peripheral";
> +	status =3D "okay";
> +
> +	connector {
> +		compatible =3D "gpio-usb-b-connector", "usb-b-connector";
> +		type =3D "micro";
> +		label =3D "X29";
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&pinctrl_usbcon0>;
> +		id-gpios =3D <&gpio1 10 GPIO_ACTIVE_HIGH>;
> +	};
> +};
> +
>  &usdhc2 {
>  	pinctrl-names =3D "default", "state_100mhz", "state_200mhz";
>  	pinctrl-0 =3D <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>; @@ -666,6
> +705,15 @@ pinctrl_uart4: uart4grp {
>  			   <MX8MP_IOMUXC_UART4_TXD__UART4_DCE_TX	0x140>;
>  	};
>=20
> +	pinctrl_usb0: usb0grp {
> +		fsl,pins =3D <MX8MP_IOMUXC_GPIO1_IO13__USB1_OTG_OC	0x1c0>,
> +			   <MX8MP_IOMUXC_GPIO1_IO12__USB1_OTG_PWR	0x1c0>;
> +	};
> +
> +	pinctrl_usbcon0: usb0congrp {
> +		fsl,pins =3D <MX8MP_IOMUXC_GPIO1_IO10__GPIO1_IO10		0x1c0>;
> +	};
> +
>  	pinctrl_usdhc2: usdhc2grp {
>  		fsl,pins =3D <MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK		0x192>,
>  			   <MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD		0x1d2>,
> --
> 2.25.1


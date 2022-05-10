Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6FD46520BC9
	for <lists+devicetree@lfdr.de>; Tue, 10 May 2022 05:12:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230358AbiEJDQK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 May 2022 23:16:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235204AbiEJDQC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 May 2022 23:16:02 -0400
Received: from EUR03-AM5-obe.outbound.protection.outlook.com (mail-eopbgr30082.outbound.protection.outlook.com [40.107.3.82])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4B61252DDA
        for <devicetree@vger.kernel.org>; Mon,  9 May 2022 20:12:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XuhE/AX1cjcDGfTaHXDpOp2gNfr4YoF7aJQq2QCuCaJdZ8UDcNtDHG02EAdWgohWB5J2Q1m38zo1PLpsTqMPMUiuxhMfNlR0PbfeIRc1qEzt1KXiRvxHiEWvNUvr+R1pXPGoDg2fNKPWiKms5AE39Gm56KrFkKGY7QiukztocsaJW1dDFTfFMiqEiyAutCW9NHvfPqGsztTBdlrRuU0RFBYgSXjyAHx64DF4L5v8D00wwINa6ERGoxQhrAy9qBYEMtnLTn3l8Ortyv7BGBr/BvStL4hrrJ+2ej5XFrM5w/hIvs3nOZDkW9MhHdbQ+MnqsU3K4pIJvEZc7fIo3lQ2OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QDfk9B/OAZewzF8hkl1mfXKq8uYbvdI3IZbxHk6Ii4w=;
 b=QBKVUvZGZheBUUE5oHh7SpO7acmX8kvUYqq95PoKbIzV0XbOf7QrzvYDcN1mXDFJKqIGZjglnL8jzgwJErMlgBNjlSllXaZLW7uWDCqEBZ2p8gQa79Xzll8swzekNDSeKhH7nzPCr7xPprJU3phTw+B0g+phQsCs6MATYfO1bT2LqVHSIhTSiYw5IkHljFr5F0XsIymDC3iaJ9XHGrU3zdKiwCvFX3iP57iMEBDdwAZPSihTc6Y/hehr2ISZE5I4QAETTeP0w2uRQ+YnZLu4i1WRma7xZ516YspoTWtIu/oOfMkwoyu1dJw8pBNOfHXr+FyTueLiU7/LT7Fd9YKbBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QDfk9B/OAZewzF8hkl1mfXKq8uYbvdI3IZbxHk6Ii4w=;
 b=cizHKxx5m7qFmri0C3O6iTtuQnUryymspF8GypIyWCKP0ZLhQFW2tbgS33KEcJSrKJnz0JWIcUjc3YamgKZv/Tut+1rHXbghIfvUj3+fGoLX4hlr3RmrU3f1r1NzXCufEFlNaHufMpOJKtQaAn3pWjcRaB3RNwfDhPZhPcRaGDY=
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com (2603:10a6:102:261::21)
 by DB8PR04MB6844.eurprd04.prod.outlook.com (2603:10a6:10:112::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5227.23; Tue, 10 May
 2022 03:12:04 +0000
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::597b:6d36:1222:b37a]) by PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::597b:6d36:1222:b37a%7]) with mapi id 15.20.5186.021; Tue, 10 May 2022
 03:12:04 +0000
From:   Jun Li <jun.li@nxp.com>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH 1/1] ARM: dts: imx7: Move hsic_phy power domain to HSIC
 PHY node
Thread-Topic: [PATCH 1/1] ARM: dts: imx7: Move hsic_phy power domain to HSIC
 PHY node
Thread-Index: AQHYY5TzRG62FUwMoUKUAcBWjZTjWK0XbMuA
Date:   Tue, 10 May 2022 03:12:04 +0000
Message-ID: <PA4PR04MB96409C26BF9504A7088E807E89C99@PA4PR04MB9640.eurprd04.prod.outlook.com>
References: <20220509110708.2190558-1-alexander.stein@ew.tq-group.com>
In-Reply-To: <20220509110708.2190558-1-alexander.stein@ew.tq-group.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 12038bea-d97d-42dc-3e27-08da3232dbcc
x-ms-traffictypediagnostic: DB8PR04MB6844:EE_
x-microsoft-antispam-prvs: <DB8PR04MB684412460B4C05C34FA2541689C99@DB8PR04MB6844.eurprd04.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: t1/tn3o/tZ/SbyhWIpXyaYN88f4FMtYrs/dYs5wmzwjfZ5eouQ5wpyo+fcLNuf//kz1DeL8+4Cf/5yjbGs1VyZUSW309hCIHElKqgIk7PHJ3LAmrCiKhKEUG4DzTYCZp/ep2jbz2dxlhQvqfo9AN2QPKtSBpqNBX2ontt+dqNJSlfecPA4dR8jRXf1EJ9rv8ko6Xl/bm6ANGRonW6dbokX4bAzcDCagHoS95vg2QlZ1ErpuGxJQ17IfCWFaDDklMAsucYGnKrl4G1MIvip0E7VOTlVNS6zmOgKV5T0N0Bb8O8WjX9orgW2ou4PDVLimHmkn5+odRqDSa/wLiZ79da8aH9fabNi6hwbIt5zbe1nkS1lVu0UmIDHN8d1hpMVY88LlsOUG/ejXY//gpjQ1Ky+GskyjDzHjAEddUnjTxaXLuOEO2mSdB3hhGmZgrGMFHCB4FhszEVywZyjHRAVFtOTaPbQUjM8gcF4J/F17HOJEflod+DQf2X8CgWJxRQbAiDAUW/1WuoZuJTPqyGV7voB1bu4ifzRiwHqORlOZi6p1BJMVjHksHW0q9eCYCXlwx4n2DKqzZEI+4VFEBcqNglph+wQSZ2dp3tUNEonymrf+m3Smp260ZL4o+fyG3Av1jK94TExKedorcZJdx3CwDIZaEQm7+Wj4ReH2xRVs68aAVtBDmFzI6ORwSvYMDPw+vAYZvz6mcFFRAAVcEFNEaEF4YguLvPhvJIPW3+E3qYC3KZLzMrw/PpEvPphahipHsfpWHV8Gd2SGiV1nwSRA4im2cg0DtxaaM2piDum0hBRU=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9640.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(5660300002)(186003)(52536014)(8936002)(71200400001)(26005)(54906003)(44832011)(110136005)(76116006)(66946007)(66556008)(86362001)(316002)(66446008)(64756008)(4326008)(8676002)(66476007)(83380400001)(53546011)(6506007)(55016003)(7696005)(966005)(2906002)(122000001)(33656002)(38100700002)(38070700005)(9686003)(508600001)(45080400002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Os1/W4uSVP1Oe5PP0gQB1kzyV2ybJC0jlGIcZc1C+5siNiQubBznWXaiDUSe?=
 =?us-ascii?Q?3nPO6n0udLR0gdSQx1vHtWr7D0TIcbAD/rW8YfOXncCAPxeSdhf5uXyFhHDv?=
 =?us-ascii?Q?zCmqV3zxYFTMmawFeMW3zM7xtc5CYZFDaCznYCAF52k9MxCSUVD1pF1X/74G?=
 =?us-ascii?Q?Pzu7ItjwX2cf/YDHLBg8A94QHbS7aAY+hm1KwbM1YFm2iEuGLhY0KdD4RHO2?=
 =?us-ascii?Q?FrwoZiE4Ul5/9e+FqinMEUVALD/aF2fz4ViZgPTEZMMk63MQR3YSk7rUEIxY?=
 =?us-ascii?Q?Wiqx5iIWHp5Yro+UyfizO5eGWu0wSQOASJangbqJObgNjYZMOvzjhAp1NiuP?=
 =?us-ascii?Q?NXTbbIbvT3z/F/njIgq5b211RtJVTXurIL4cAW0oJei8jIsycCjWbqv7/8bs?=
 =?us-ascii?Q?/DRdHfy4I9+ztotaGaZ/W8Zw2Qk+bMYGkZYjQHRyylDIoJuDC7Dx1AEcLUq7?=
 =?us-ascii?Q?lOl+OunM7aezlf2NKRceMo7qlMdsfg8jsOAqdige++e07miIM7Q6wQtIL10j?=
 =?us-ascii?Q?b0xM5bTo6sSSp48ONxJIzOPaldmXPXgNZmHyJYHTKMC3POEYonu8ZVyhJVB5?=
 =?us-ascii?Q?efYZZdChoeVYNeuwG6IJTTvUaiyLLl1ayPKQosqjr2bM/EaG1xwcuW2nFdAz?=
 =?us-ascii?Q?sKRgf3I01wbFTf8UD1fHDrRW1nzmdt+SQaHSTHW79LZD7TJXGlwXZfyPHEs9?=
 =?us-ascii?Q?E2WCN3cR8O4NHwf4PWiGWo1NjtqgVmNY+ehDAS215hIGogX/HSC30uPRQu3H?=
 =?us-ascii?Q?0FZVMGISb/jexldSzsbbHk8xTMS3LD5ECKGKrw2e5rwvREFacH6KYBKj6ZnG?=
 =?us-ascii?Q?hpcXvMGGtn4EgCrgTo4M9ayXcR26wf+52UrKcIbTWusFhWExKOmztj+Qdcd3?=
 =?us-ascii?Q?lLoYk8BXJyMKwFcgnVshLycTrckA8oMLts1qXfQy8WQF+SrT+FL51SFaPM0p?=
 =?us-ascii?Q?FE5RfJy85jwAsyoi5lzVZ9aMGml8deU6QKDtZ6Aqv5plBVzoPR6Eyn9rxpXd?=
 =?us-ascii?Q?PX0HNWennua+1OUqk6As/oHSTXFYEWtWHaiMnk8va6216Jz0Xu6DQGw/KjIm?=
 =?us-ascii?Q?ahYFfAsIbXC+wPP3zjY21M4510GPEHhgOwvUGwnfLnYsSfkaPrA5WPCg2ECH?=
 =?us-ascii?Q?WbZ3qGDpodwjRLknsoWo5W9DqC3L1U+34xE1RATx22ImsAWL9dfgqYnnCEwf?=
 =?us-ascii?Q?iLMZPjF/jhUzHCycjJAegJTBCKkJgBwGgtpV0tnI1ZjxcqfSZbgy8nSECRdT?=
 =?us-ascii?Q?e9dEy/qS70niOnAxcyXSzsFSJn2f/F+KnWbOvqqLh6hN0olY6Yl2WmDuac9m?=
 =?us-ascii?Q?DibNybnm+4oFlcEgHKf2aS5Lsvn6+5UXaponLd09SpaMGcwY9Nu7YiP69W5g?=
 =?us-ascii?Q?yWG781QLs+GtciDxPVqJu/NMcP9R9R1xxKwMnKO7eI7BKxuTlIZXJ/FsEe0W?=
 =?us-ascii?Q?vsS778mSW9Q3HMn/Nf8GpVQPoy9eJryFAlJ9Wz97ZcMTcIOzt/XR526NiTrc?=
 =?us-ascii?Q?Y/OMyP60EgDLCUds2zGHL5A8nn7fLB0qf3ILdrYLdf2KYHLZadmWbmIaFhG7?=
 =?us-ascii?Q?mkUbxOnOGm36D1TpdlBaQv0lZ9+vHC4tS1FhHuQOrO74UbPnK4/4WVO7uKvk?=
 =?us-ascii?Q?E8jKL038chGVzktPL+RPK13/6+o2KTbWSPOEzbPLF/7Kab5B/KBjXuVrvI8B?=
 =?us-ascii?Q?Hs253olBPyYo3A7v0EKup3ZikDb2QpCHz9mEy3Qdiu+tao64?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9640.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 12038bea-d97d-42dc-3e27-08da3232dbcc
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2022 03:12:04.3539
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zZ+Nr4Pt+ZpNzqz/PQWUnq0aLU0kk9wqQ+HSM3KCh1+zmqfucWoxIhujmQiwXrVN
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6844
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



> -----Original Message-----
> From: Alexander Stein <alexander.stein@ew.tq-group.com>
> Sent: Monday, May 9, 2022 7:07 PM
> To: Rob Herring <robh+dt@kernel.org>; Krzysztof Kozlowski
> <krzysztof.kozlowski+dt@linaro.org>; Shawn Guo <shawnguo@kernel.org>;
> Sascha Hauer <s.hauer@pengutronix.de>; Fabio Estevam <festevam@gmail.com>
> Cc: Alexander Stein <alexander.stein@ew.tq-group.com>;
> devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org; Jun Li
> <jun.li@nxp.com>
> Subject: [PATCH 1/1] ARM: dts: imx7: Move hsic_phy power domain to HSIC P=
HY
> node
>=20
> Move the power domain to its actual user. This keeps the power domain ena=
bled
> even when the USB host is runtime suspended. This is necessary to detect
> any downstream events, like device attach.
>=20
> Suggested-by: Jun Li <jun.li@nxp.com>
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

This is a fix and should be applied to stable tree too.

Li Jun =20

> ---
> This patch superseeds the initial patch from [1].
>=20
> [1]
> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flore.
> kernel.org%2Flinux-arm-kernel%2F5566202.DvuYhMxLoT%40steina-w%2FT%2F&am
> p;data=3D05%7C01%7Cjun.li%40nxp.com%7Cae99c3d6780d4f4b513c08da31ac14c5%7C
> 686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637876912401414970%7CUnknown
> %7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJX
> VCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=3DvKVI%2F%2BIrMJejYM%2BYEex2TCxskxPu
> IZeLxYWSKFw%2FKZk%3D&amp;reserved=3D0
>  arch/arm/boot/dts/imx7s.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/arch/arm/boot/dts/imx7s.dtsi b/arch/arm/boot/dts/imx7s.dtsi
> index 008e3da460f1..039eed79d2e7 100644
> --- a/arch/arm/boot/dts/imx7s.dtsi
> +++ b/arch/arm/boot/dts/imx7s.dtsi
> @@ -120,6 +120,7 @@ usbphynop3: usbphynop3 {
>  		compatible =3D "usb-nop-xceiv";
>  		clocks =3D <&clks IMX7D_USB_HSIC_ROOT_CLK>;
>  		clock-names =3D "main_clk";
> +		power-domains =3D <&pgc_hsic_phy>;
>  		#phy-cells =3D <0>;
>  	};
>=20
> @@ -1153,7 +1154,6 @@ usbh: usb@30b30000 {
>  				compatible =3D "fsl,imx7d-usb", "fsl,imx27-usb";
>  				reg =3D <0x30b30000 0x200>;
>  				interrupts =3D <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
> -				power-domains =3D <&pgc_hsic_phy>;
>  				clocks =3D <&clks IMX7D_USB_CTRL_CLK>;
>  				fsl,usbphy =3D <&usbphynop3>;
>  				fsl,usbmisc =3D <&usbmisc3 0>;
> --
> 2.25.1


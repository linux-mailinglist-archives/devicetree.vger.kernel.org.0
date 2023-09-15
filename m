Return-Path: <devicetree+bounces-324-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B7207A12FD
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 03:33:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 62D631C21121
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 01:33:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B0E662D;
	Fri, 15 Sep 2023 01:33:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490EF36A
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 01:33:13 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2085.outbound.protection.outlook.com [40.107.20.85])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 438D32100
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 18:33:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dvnPNrfpEEgchy9baBLLPBu7QbMYYlEcAz3LHoqYrjtNWDaJr6tLHAJe/ZntOpbDaqtJsBBbMriO7BPu9RUR2k+McfVjM2mmBjwmHSfIAc+MmRs5ZXdC5LNfr8/RV3Z5IxU3XvoDqeVBLVnzmts/a25QTVhUx9bQ1az39JvG4HoUSVz3YERnq37CWwKLH2Pbq1UZMYcjIEchgcnOZXQi69Ir+3rtSiKL3ElqHv1B5DnU+luHYevbSRt/j6pmprNeGTFO5T/nN83Q1BFwPSVfMYLi4WyckfcO9bs54mDfNCtBKeb/tdckOEGPDpb8+4vUElYNMYNi92Uc4k7PryLxGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EcHIgzWeAZOla/tr6N3N6wq+up8T1UZapHOjOol+mgE=;
 b=aB+i4Ve7HPgvPT5MaSTHMTRYTWOoBDOaFB578k0AhtwiHmaP/bTC405Qg0K+EAowUBhFweHLyTmIipg6pV3CB6TXLya7f54qYpi3/Z5+UesqXWKEPkIVCaGu91ylVXeqqwUHePW4CE/L6+KfChW3EAY5639H+51HHVgXwAzrlJ+3npkjs5gEEGKB90GTMQylobQBgYlCEzhMn7zfpKpIXRhTpoVJcNepLwKA9E9kRANNrN8dBUUkRg4SvEgyfddVhLdERclyW9ggbyTeD2kOyQm8LjCLKS1ATLf9I/WL+fcTTBp3koIuuX62hnAyB5SyqulXQ3chajsTtzVvf8+UkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EcHIgzWeAZOla/tr6N3N6wq+up8T1UZapHOjOol+mgE=;
 b=sjaa757ozHbjMKNrETXKmTCUVLBmPZvkDjvMaDvp1NUr7TRW8w87sZ51x5pedMm0MRSdu8KOeL8x/7MExa0Nu0BRN0CrhFpNp2+hljIWmQDB9BMiTaq8Nt2bXlJ2JkiJSQEyAoVgtHpV/r2Yvn+yOiIT09LTZddZ1SaVoZ81nUA=
Received: from AM6PR04MB5302.eurprd04.prod.outlook.com (2603:10a6:20b:7::20)
 by DBAPR04MB7477.eurprd04.prod.outlook.com (2603:10a6:10:1a9::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.21; Fri, 15 Sep
 2023 01:33:09 +0000
Received: from AM6PR04MB5302.eurprd04.prod.outlook.com
 ([fe80::ac1c:e9c5:e219:989d]) by AM6PR04MB5302.eurprd04.prod.outlook.com
 ([fe80::ac1c:e9c5:e219:989d%7]) with mapi id 15.20.6792.021; Fri, 15 Sep 2023
 01:33:09 +0000
From: Ye Li <ye.li@nxp.com>
To: Frank Li <frank.li@nxp.com>, Xu Yang <xu.yang_2@nxp.com>,
	"will@kernel.org" <will@kernel.org>, "mark.rutland@arm.com"
	<mark.rutland@arm.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
	"shawnguo@kernel.org" <shawnguo@kernel.org>
CC: "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, dl-linux-imx
	<linux-imx@nxp.com>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>
Subject: RE: [EXT] [PATCH 2/2] arm64: dts: imx93: add DDR controller node
Thread-Topic: [EXT] [PATCH 2/2] arm64: dts: imx93: add DDR controller node
Thread-Index: AQHZ5vR611xed1VXvkS7b2eO1cPwPbAaX2iAgAC6r4A=
Date: Fri, 15 Sep 2023 01:33:09 +0000
Message-ID:
 <AM6PR04MB5302537166858D0F84CDCACBE4F6A@AM6PR04MB5302.eurprd04.prod.outlook.com>
References: <20230914102038.2944844-1-xu.yang_2@nxp.com>
 <20230914102038.2944844-2-xu.yang_2@nxp.com>
 <AM6PR04MB4838810FDC93B54DE774BC4488F7A@AM6PR04MB4838.eurprd04.prod.outlook.com>
In-Reply-To:
 <AM6PR04MB4838810FDC93B54DE774BC4488F7A@AM6PR04MB4838.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM6PR04MB5302:EE_|DBAPR04MB7477:EE_
x-ms-office365-filtering-correlation-id: 02265d3a-08c9-48b6-40bd-08dbb58bb7f7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 tyRhc2iJ6UhsfFJa+X5FdBn9xwR4U259BRWjkPmwK3XjZEQOM63lbV/t7ieBTh4yBtiHSpVENSttJX8tnaMwZ9K6xRNkJsMcYMWxRijbWPVKO+n9H9HGZtpmqws+doQmbCPXOHhY7FvoxXEQZERF9Y98LIKTt1U+QJt10WpXNesVnNPtSJIwXEcvKcEHeeBofcWeL6gA3tr96ITC9o9+LbkjT+JOONM6iqqc0/FOkUo0JLm3R7mq7fc6q77Y1FeEmSKCUJ70uReHu+8Pc4DDtKhvSem7VgiMTQv07NjuMmnavmCAHUbqoVCfDsrXmghco0l/feBTCfgw0GoRM3BtxcOZAZ1mPOWHM5zvWEg064ZbO96Z5sokFc/wr8GAuN4aqbZ2kNPniKahpnG3FH+zIR1xC8HRM2/dsZ4PohokcsyPV0ruF+pClpfJDcelQXRynCeSUVoRPkBVOh7jOJjQh2MP1vEBeh+UWqWl0dfuMUibkiQ0NAAm5C9ieFAi74vTlgirUgzq3EuyS9HCTaxyBHTx5WJF071kHzcaH07F1m1831T4JrHSPgQTQbqFng9uJaa+i3lmJQeyiaYeJj4/HmFh0ibsvohDt/DqPkb6TE8=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR04MB5302.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(39860400002)(376002)(366004)(396003)(346002)(451199024)(186009)(1800799009)(38100700002)(38070700005)(122000001)(41300700001)(86362001)(76116006)(110136005)(66946007)(4326008)(66556008)(66476007)(2906002)(55016003)(8936002)(66446008)(54906003)(64756008)(316002)(26005)(8676002)(53546011)(83380400001)(5660300002)(6506007)(7696005)(9686003)(44832011)(71200400001)(478600001)(52536014)(33656002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?1Ukwa27N69dr6e80jgWfysu9yDaOXfuhOGuLcArnw5HNHnZeXGgJJ4C/6uZR?=
 =?us-ascii?Q?fDWVFYHlOujp6W8eXlhL8IXWnhQWCvVMRlz9eSo9sX90mt8uk4VUKXRrO6tj?=
 =?us-ascii?Q?902c10qhBpKeTHM/0YMc5VZtwt/o8UddxCGm7KmirQ/Ipv+G/963LoQwjhlU?=
 =?us-ascii?Q?HB7Vv+lvHoQUoD96QlNMzwYDy5HEu3KFF+Sl0VJCPrXzu1Qiinf7Bzui+ML8?=
 =?us-ascii?Q?jcPj0iAhiIZjLfPB2zGmaAEBnY93ibUX7bH0ZkbNpGvmXEmWGVEz07mHR+8V?=
 =?us-ascii?Q?qPRpUWoLMyA8OqcOAyNk1ee7SUV10w7LZmsZGvfPWVLZ03kh+2vuFNpnmQHQ?=
 =?us-ascii?Q?6G7cEsmU5Cw4nVYfF7j8l+N24gk4Tsna+LJ1JLPhYsPNV81eOWIdSA9f4+pf?=
 =?us-ascii?Q?Z2CRBAz7yfhRtgV5OA1op19KitPfvqGntkQpMhkgWtzl1MWFQO85Ob7Wvv6g?=
 =?us-ascii?Q?S7xsKCSJzjTFqrBphmWu5wK44tXbPBmV7IkygeqNOCZbgJvGfrVIExbG+KOr?=
 =?us-ascii?Q?F87mWB7hM6oNo5vIBCRm7L4Ol5gNGPHclw6NO7pK3QGVvyRgqunmD3aMrQUL?=
 =?us-ascii?Q?9TW8XlOmKs8oxnRYAjQl8e0j2U6qmnhU7vlXg6of302sm6XCUrZSVQbxGFya?=
 =?us-ascii?Q?nXuZub/MtxG0IeUtAIAuB7EJ3O88jaeYXRMosgOTxp4H8kMr3N0vebeU9e6e?=
 =?us-ascii?Q?TisGYgwJ3Wlqc4vX4IX/XXbL0/jKoKikDQC45iowtyEue+b+rkkIBJvyVpZr?=
 =?us-ascii?Q?C/hq9EjbxUk7AL2/GG7btSbgYUqHg18LA/UA981JblK3a+g++BxjtwzE37RW?=
 =?us-ascii?Q?9bkhax9zaczEscz4FGXGY7d64RvUjTc89kMmamAHMnvyu92Rjo/iqH8uh5BT?=
 =?us-ascii?Q?VAz6AKbCK1VfvNLB/QvHXPDSYs8mHql0UXxUuoajNqHtsCrScgq54JKT193M?=
 =?us-ascii?Q?ITBpiYYDeJbdSw6jWfC8ehjJcpqZN4VDaAED5IapthVNBTF4XiAKKXlAg2Nw?=
 =?us-ascii?Q?ZrYWCVg9fjlyz779TD92ysHXHyattfve8PoRFr/CGKaKzJEeBAYGI8RwWj9J?=
 =?us-ascii?Q?sJRo6/4iUK1ebxavNdleeUclPYHoGpX+Zlx+8IkqnDSzlrT44b5l9SL8B/6Q?=
 =?us-ascii?Q?0CU+H54l2tZfE2/ZQ4qCl9T1u+XTGV9ZzFFIzxOLoct+lsthWUlURFn6Rq4F?=
 =?us-ascii?Q?1LCf3tiDRf6tQTXutL1aBRImyCl6a12d/gdFJUZSj5kGUVZ9r/3QERZHCDVl?=
 =?us-ascii?Q?dTFZGHM6Dcfywcz1Afn8eCKGqX9DTMEF54KfrXt0CgQGbdmemETNb9hPOFzn?=
 =?us-ascii?Q?TkaYZXHXHMNWPKpJOES0G5IvaSkwJbWxStrhuhd7NAdMrRxH1TjBxHDaK+dV?=
 =?us-ascii?Q?ol3Pl5VJKHcNLRrUNzbDHm7XH1Abm2t7c5jkRGYozncL3TgSo+Ygfv6qXoav?=
 =?us-ascii?Q?dmW4ffmf730q/buj1CTDZcfGvfyJWGkGiO2/0YFCeXCCNlvArOqefl4XtbLF?=
 =?us-ascii?Q?MrMGhpITzf6zR4SCYZ+zxkDBQNAOUIVGSCiNrxOIO1cOMWO/XAu8sivh3YsO?=
 =?us-ascii?Q?UHAX4x52mUS7Tz9O0p8=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM6PR04MB5302.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02265d3a-08c9-48b6-40bd-08dbb58bb7f7
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2023 01:33:09.4069
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Wej3rtieF3khMWIp9eCBAewLlp8D9He3rOZbxO4u7Vy0oR+9ZLiSC2MYjK08gRH8
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR04MB7477

Hi Frank,

> -----Original Message-----
> From: Frank Li <frank.li@nxp.com>
> Sent: Thursday, September 14, 2023 10:21 PM
> To: Xu Yang <xu.yang_2@nxp.com>; will@kernel.org; mark.rutland@arm.com;
> robh+dt@kernel.org; shawnguo@kernel.org
> Cc: krzysztof.kozlowski+dt@linaro.org; conor+dt@kernel.org; dl-linux-imx
> <linux-imx@nxp.com>; devicetree@vger.kernel.org;
> linux-arm-kernel@lists.infradead.org; Ye Li <ye.li@nxp.com>
> Subject: RE: [EXT] [PATCH 2/2] arm64: dts: imx93: add DDR controller node
>=20
>=20
>=20
> > -----Original Message-----
> > From: Xu Yang <xu.yang_2@nxp.com>
> > Sent: Thursday, September 14, 2023 5:21 AM
> > To: will@kernel.org; mark.rutland@arm.com; robh+dt@kernel.org;
> > shawnguo@kernel.org
> > Cc: krzysztof.kozlowski+dt@linaro.org; conor+dt@kernel.org;
> > dl-linux-imx <linux-imx@nxp.com>; devicetree@vger.kernel.org;
> > linux-arm- kernel@lists.infradead.org; Ye Li <ye.li@nxp.com>
> > Subject: [EXT] [PATCH 2/2] arm64: dts: imx93: add DDR controller node
> >
> > Caution: This is an external email. Please take care when clicking
> > links or opening attachments. When in doubt, report the message using
> > the 'Report this email' button
> >
> >
> > Add DDR controller node which will be used by EDAC driver later, also
> > move the DDR PMU node as the subnode of the DDR controller.
> >
> > Signed-off-by: Ye Li <ye.li@nxp.com>
> > Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> > ---
> >  arch/arm64/boot/dts/freescale/imx93.dtsi | 18 ++++++++++++++----
> >  1 file changed, 14 insertions(+), 4 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi
> > b/arch/arm64/boot/dts/freescale/imx93.dtsi
> > index 6f85a05ee7e1..992bdeef70cd 100644
> > --- a/arch/arm64/boot/dts/freescale/imx93.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
> > @@ -917,10 +917,20 @@ media_blk_ctrl: system-controller@4ac10000 {
> >                         status =3D "disabled";
> >                 };
> >
> > -               ddr-pmu@4e300dc0 {
> > -                       compatible =3D "fsl,imx93-ddr-pmu";
> > -                       reg =3D <0x4e300dc0 0x200>;
> > -                       interrupts =3D <GIC_SPI 90
> IRQ_TYPE_LEVEL_HIGH>;
> > +               ddr: memory-controller@4e300000 {
> > +                       compatible =3D "simple-mfd";
> > +                       reg =3D <0x4e300000 0x2000>;
>=20
> [Frank Li] Can you just use EDAC register space size?
> I suppose EDAC and PMU's register space is not over lapped.
>=20
We will re-use layerscape EDAC driver which needs DDR controller's base add=
ress.

Best regards,
Ye Li
> > +                       interrupts =3D <GIC_SPI 91
> IRQ_TYPE_LEVEL_HIGH>;
> > +                       little-endian;
> > +                       #address-cells =3D <1>;
> > +                       #size-cells =3D <1>;
> > +                       ranges;
> > +
> > +                       ddr-pmu@4e300dc0 {
> > +                               compatible =3D "fsl,imx93-ddr-pmu";
> > +                               reg =3D <0x4e300dc0 0x200>;
> > +                               interrupts =3D <GIC_SPI 90
> IRQ_TYPE_LEVEL_HIGH>;
> > +                       };
> >                 };
> >         };
> >  };
> > --
> > 2.34.1
> >



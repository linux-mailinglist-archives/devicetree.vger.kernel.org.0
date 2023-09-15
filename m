Return-Path: <devicetree+bounces-342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A65F57A13E2
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 04:39:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B02D41C20DF7
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 02:39:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA19B809;
	Fri, 15 Sep 2023 02:39:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C9267F
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 02:39:32 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (mail-db3eur04on2079.outbound.protection.outlook.com [40.107.6.79])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 989FB26AB
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 19:39:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=In3d5M0yIS3R0SxsAjMhznqCW6vm/3iAQ5ygVXQN33B1eb6340gS0m8HQEulevEYJ/fwcYJC45FJ8HYp7hPUk4/9PpxZGM+VxVlnA9whIgPUDx8vNkBJ5mPPeS08KPmQI/IHognwEgVtcqc8sqHvy+V28u5BZKKqTzgI+WL61lyjA1tWLpW6pLx7j74usqGG5VFDdIOFgZfdLWYX/LW3t6kdpCcOKPj4XfgW34sIYMSQr6W3/ZaTlR9wqjfIicdwEDWPCpG5Fhopl8Sy0IG2U4qLPS5gue//IxThDZ7wftiCut2EQMIryPrSzeOxjrxlYyEVJFyxEmwIgV8BIZm6qA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BQMIrdifbbcEKA/tq/svuIN+1jpWOvj255r6pq9AxBc=;
 b=EQIkMzSG8bQbOawVHJU1RSZCF7XQKaIdzFDC6L9i5X7+LBTHxXlg5JXWQmfkdMVY1iMTV+ppDXG9OgMUzYWS6/6yM+GWkAJc0LiWd7T5yb/yRV8pVCIup3oqVvUYExte7eYPTjhPe4yyk75tHg1Ldv53fCrzGUHUWJTnjooyOqUIrykMzrGT2EQX8tsq92YfJ0LqsdKuf0XL+i875xCHGAIrDrzz13mbJmMd9i1wSRrFlqIKM61xB4KzVpYyLouYNg6rlZ6Bz59Nkqhe7LLsl1rQKWUpjh9cUfKILpwwDXGt+vnrTY6GFUFNasvldux2FKNSb4W0WiyOziWxbdRWbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BQMIrdifbbcEKA/tq/svuIN+1jpWOvj255r6pq9AxBc=;
 b=jbR2lbnfais+IigKuBrtRIUOOWKXXIkmvl7C/BmtCoAv0cI6Mhulzfx2bRd5NEZJs6opmj0ntLfyggdNik7dC3V6SyvfAiRwcFmM/YhKsjfqclDhg3LmESGf/xJUInANl4YhB7kJ9EyDF3V7pDprjjNuLFbQQpuOECS4qerRdT8=
Received: from DB7PR04MB4505.eurprd04.prod.outlook.com (2603:10a6:5:39::26) by
 AM9PR04MB8383.eurprd04.prod.outlook.com (2603:10a6:20b:3ed::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6792.19; Fri, 15 Sep 2023 02:39:28 +0000
Received: from DB7PR04MB4505.eurprd04.prod.outlook.com
 ([fe80::6444:e07a:e7f7:3923]) by DB7PR04MB4505.eurprd04.prod.outlook.com
 ([fe80::6444:e07a:e7f7:3923%7]) with mapi id 15.20.6792.020; Fri, 15 Sep 2023
 02:39:28 +0000
From: Xu Yang <xu.yang_2@nxp.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, "will@kernel.org"
	<will@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>, "shawnguo@kernel.org"
	<shawnguo@kernel.org>
CC: "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, dl-linux-imx
	<linux-imx@nxp.com>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, Ye Li <ye.li@nxp.com>
Subject: RE: [EXT] Re: [PATCH 2/2] arm64: dts: imx93: add DDR controller node
Thread-Topic: [EXT] Re: [PATCH 2/2] arm64: dts: imx93: add DDR controller node
Thread-Index: AQHZ5vR5OpTfldGE/keJ7ypkhZxOQLAaG/GAgAEQtMA=
Date: Fri, 15 Sep 2023 02:39:28 +0000
Message-ID:
 <DB7PR04MB45055334986EFB4EBE31AB1D8CF6A@DB7PR04MB4505.eurprd04.prod.outlook.com>
References: <20230914102038.2944844-1-xu.yang_2@nxp.com>
 <20230914102038.2944844-2-xu.yang_2@nxp.com>
 <3e0df2c9-f4c5-ce7b-5b19-de8530a25d95@linaro.org>
In-Reply-To: <3e0df2c9-f4c5-ce7b-5b19-de8530a25d95@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB7PR04MB4505:EE_|AM9PR04MB8383:EE_
x-ms-office365-filtering-correlation-id: 62c08714-d9f7-4434-7ace-08dbb594fb95
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 1ZPZz9uyYty3SN23qPiGGDCddKELvFXd0v+KUNJ3xXAa3KaN+AEHLp7j6lWGkdfS1ECJrggw3a/kLWA1LY7pxoxWKs8X+XYptNn7it+SUUySzHNZsXST3ov8Hb8mxE864Sesi//soD4mC2i+z4qH6pxkLkLv545CgdbRF/f4hh4qoDiGJ8mOfYhbZY92kaG6wwxTEF3AteC3d/lTeQIrtUBo0UWNRxBrkKaMTyylHBEvNJxbYbSedZzmz2uSjguzzY0ruBapDdgdnnNPZTCYe8cpoT6I7wswzg8Uy8UU9srS9smxPFxWWFfVDaRU+snvEhpsluI5Xrt9D8KFa69JSJK4vTInE2MevToTGWondn1dbBM3O8zRpARfQfMSC92KInYz7d0xuudZR6hM9nEFi4xYzXVVbqJYMpn0dHiJW1eXJZDxpsG7E0mi0ZVZqqYcKk/eo6/hFxDnbYSAABwApVoxbs7m+Yh00ArITaTHTgl4GuzFVASzywv0jhlQJ8/axFFCSCftG1FQ0eGEvGqA2Er4KssXSky6VBGNyVfW0M2ucJHlYPIED1dFo1fjqtTcx4ooIdo5gt/cXDuKGV1txAoDgVP8z1+EQwtMopBKxz4=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB4505.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(136003)(396003)(346002)(366004)(39860400002)(186009)(451199024)(1800799009)(9686003)(6506007)(7696005)(53546011)(478600001)(71200400001)(83380400001)(26005)(76116006)(41300700001)(66556008)(66476007)(316002)(64756008)(52536014)(54906003)(66446008)(8676002)(5660300002)(8936002)(4326008)(2906002)(86362001)(33656002)(66946007)(122000001)(38100700002)(38070700005)(110136005)(55016003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?AoUOXFs+TW6pxpLMF9xwE/aStHI/QPw1pigSCawr5XHnd0ljTcxgxHTJCPvk?=
 =?us-ascii?Q?8gToXVHRe5ZMjE1FypR7ZxN/oVIQfl99IBOPtfvtp56sJdHhQBxxHCR9vXxp?=
 =?us-ascii?Q?dBKGA5KscYs5+R13Z2/OnzvMpYnc6xvuRaxt32iS1BoS2hb3KHmiWQp79sRS?=
 =?us-ascii?Q?WCQ3oeqXRAoAgZlpXItQzoB74bowrWlOs1eHtcFI8YzHxjQvOP5ke2E43KI0?=
 =?us-ascii?Q?pnAFb2EDeTvkbxh0qSttR1i+KC9pB9XvnGepsxNNhlKOHmw7DLUdmkjIDO/T?=
 =?us-ascii?Q?M4YBlomib7cuO2BwkkdynhNmMrQCSOv91muf5/WMUUpyZhILDnDKx2X1+FAv?=
 =?us-ascii?Q?Fd7n0N6o+DypovvUM08UZSMllkCPHGOdSGcM3iG+xn+KP5LSkCW8SQG9uAaY?=
 =?us-ascii?Q?csUqcESnJ3hw5FYDarAGKCNwp8P6UTLbN7fg9TPiGGq8/w2+bzvDCw2d09cw?=
 =?us-ascii?Q?RSFuwFEW2W+Wht3VBz8Bv1ozOkGHHVSindh6cyiRrrDpmzqk+jINJZmWgy6N?=
 =?us-ascii?Q?e3USnOPiPRQS4pfJcd5jslU8PZ4SFnRvUAcb/e8HuVquGBOp9o+hpiPnC7hk?=
 =?us-ascii?Q?8xtA/sfgSGrL3KeIfm6shhrkYBrwyAaXO7MoIGAKwW7byn/Ds85PpAia/lAy?=
 =?us-ascii?Q?n0MurPlZM28EUlDM5Vm7/bkTclegW7lUJBzezo8AfwfcpJXkALEYowCJ+XRU?=
 =?us-ascii?Q?CttDB3jAbeSyTXdGTk4EQmZ3rmobRxzgB1Hz/+rJxPrsvMJHSQRRyMiznkTb?=
 =?us-ascii?Q?dgJ3KujUCWRpxRuT2mYNJBtpNQT6RJE7SXkKDqQxbTIJN/354q2VmgkLRjPi?=
 =?us-ascii?Q?t8tr0stGHxwXOspqmBzdBEI6RCbG+iLFcujvtQZasloN9IYjJcdv9jdHcb8o?=
 =?us-ascii?Q?kLn6SQvncR0BNOTwX5edQ6/5bfY0XjJVQ0ACPUsVwqCS+y1wVdnox6aRebqF?=
 =?us-ascii?Q?fqfhBM5us3ZY9GFBGBCPDKTD4tP2pwxdbLVgkrYgP/ihhSwtdMCrvG93uExQ?=
 =?us-ascii?Q?X+pTBxGzRb+oNWyX+0yCjbQpaAZuUQ7ObIVzXmczYh4ePcdTwVYePE48Z6Bd?=
 =?us-ascii?Q?bu7MjDIpoLQpLUdlMaFKxtdhv94lu1Z8vVANnoO+5Ci+XyigjOjRzAK9Km0e?=
 =?us-ascii?Q?C3B7uLwhorqjgU1MoNFo+tr+iauE2qBjuVcWg9aQhUMQ/LNg7lLhWK1qvkgh?=
 =?us-ascii?Q?Tabq6IJYUi9HsGIM9R+MWiShu+cw6aRRrddm38+C9jKBFBWvqRb6YnzL9QN0?=
 =?us-ascii?Q?zWYnPy6cjDYEuICGCW2NqK/H5d7jYT2+2SHtsW8tgLEkkjBO5UTt2OIpAmO2?=
 =?us-ascii?Q?+wIfYx+62/SVxNeZ5HgZULTdTfm+LqHBvM2Zy5dZoKab4sULwV3vMoegckJ7?=
 =?us-ascii?Q?Rp9fuZ7HiVL0ePbE+JKbU4sv6kTBg+ixdvm9XdD6H6t6Dkd4Nh7TjVYlLNT8?=
 =?us-ascii?Q?ST4ILtiaqOXXJ8IyS/KLbIrwlt+NDxIulCzZn/eQvgAzN6/2euRKU2E9fckn?=
 =?us-ascii?Q?STo0ruFev7Can4VTyTGQZLVJNBUbAa3PsVW3WAKj4hOQF2ooMeltfh3nPaoT?=
 =?us-ascii?Q?aXqrklG1dX07J7IpaPo=3D?=
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
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB4505.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62c08714-d9f7-4434-7ace-08dbb594fb95
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2023 02:39:28.3486
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UapxgVxKmCmwkmKEYt+CnYbW6lWrqPtNX6eC+gIiHilllTcTYcv8JDMpVG/kE/kny647pI0lCFdtJxOHZpryxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8383

Hi Krzysztof,

> On 14/09/2023 12:20, Xu Yang wrote:
> > Add DDR controller node which will be used by EDAC driver later, also
> > move the DDR PMU node as the subnode of the DDR controller.
> >
> > Signed-off-by: Ye Li <ye.li@nxp.com>
> > Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> > ---
> >  arch/arm64/boot/dts/freescale/imx93.dtsi | 18 ++++++++++++++----
> >  1 file changed, 14 insertions(+), 4 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi b/arch/arm64/boot=
/dts/freescale/imx93.dtsi
> > index 6f85a05ee7e1..992bdeef70cd 100644
> > --- a/arch/arm64/boot/dts/freescale/imx93.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
> > @@ -917,10 +917,20 @@ media_blk_ctrl: system-controller@4ac10000 {
> >                       status =3D "disabled";
> >               };
> >
> > -             ddr-pmu@4e300dc0 {
> > -                     compatible =3D "fsl,imx93-ddr-pmu";
> > -                     reg =3D <0x4e300dc0 0x200>;
> > -                     interrupts =3D <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
> > +             ddr: memory-controller@4e300000 {
> > +                     compatible =3D "simple-mfd";
>=20
> No, that's not allowed alone.

Well, then how should I modify this compatible?

>=20
> It does not look like you tested the DTS against bindings. Please run
> `make dtbs_check W=3D1`=20
>=20

I just run the check script, it seems no warnings for this node.

$ dt-validate -s Documentation/devicetree/bindings/processed-schema.json ar=
ch/arm64/boot/dts/freescale/imx93-11x11-evk.dtb
/home/nxf75279/work/linux-next/arch/arm64/boot/dts/freescale/imx93-11x11-ev=
k.dtb: tmu@44482000: fsl,tmu-range: 'oneOf' conditional failed, one must be=
 fixed:
        [2147483866, 2147483881, 2147483906, 2147483946, 2147484006, 214748=
4071, 2147484086] is too long
        From schema: /home/nxf75279/work/linux-next/Documentation/devicetre=
e/bindings/thermal/qoriq-thermal.yaml
/home/nxf75279/work/linux-next/arch/arm64/boot/dts/freescale/imx93-11x11-ev=
k.dtb: tmu@44482000: 'oneOf' conditional failed, one must be fixed:
        'interrupts' is a required property
        'interrupts-extended' is a required property
        From schema: /home/nxf75279/work/linux-next/Documentation/devicetre=
e/bindings/thermal/qoriq-thermal.yaml
/home/nxf75279/work/linux-next/arch/arm64/boot/dts/freescale/imx93-11x11-ev=
k.dtb: gpio@43820080: gpio-ranges: [[30, 0, 84, 8], [30, 8, 66, 18], [30, 2=
6, 34, 2], [30, 28, 0, 4]] is too long
        From schema: /home/nxf75279/work/linux-next/Documentation/devicetre=
e/bindings/gpio/gpio-vf610.yaml
/home/nxf75279/work/linux-next/arch/arm64/boot/dts/freescale/imx93-11x11-ev=
k.dtb: gpio@43830080: gpio-ranges: [[30, 0, 38, 28], [30, 28, 36, 2]] is to=
o long
        From schema: /home/nxf75279/work/linux-next/Documentation/devicetre=
e/bindings/gpio/gpio-vf610.yaml

Thanks,
Xu Yang


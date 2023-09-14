Return-Path: <devicetree+bounces-230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DFEDA7A0727
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 16:21:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 33E51B209E6
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 14:20:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2A2521A13;
	Thu, 14 Sep 2023 14:20:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0404241E7
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 14:20:52 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2055.outbound.protection.outlook.com [40.107.22.55])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35536DF
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 07:20:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CR+ojh5+p1HYPUE9mrT6JVdhu6i2jFlwNoJzWiBHCoYBPvOkwxcV551OEjy54fUqwLuyKLK0pY7LxPXOyg/jF9o5Ndznwcqa6bHbQPJfVbFanWwZGi6Qrfp703JB3zWWGeRpcko4vPlMKWrTELfA6QPJ2v7bmQJ8XgILQFH92tAzvjvqb5/R9uXcRcXdd55SCdP8aG6kRodSib3wZAhJNi4OqS+2YMiEG+5g/KoahDUNq0n9eM//MA+vV3xKc1Rb7POSOeKSyorYeSNrb3y0LgIW2MJnoJd76TwX4misJZvXNe69l4pjlhKQr2shtOd2pNR4hpe4YZtCGmZux5+rkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BXfN9tfTOLAYQBfSCpEc5Th8pkV/1WGv0uhWFrS3HLE=;
 b=Cs0Ohg7VOqJx5WdTglifE5bGHjdFac9WPtB7KEbUY/8zcY7M2RD91YOVjK1u1c4CkD122kUMCVFq7o5YZV/NzL8d9N8A400zN6uTO+EZW/lZ0njouYEgzSMmkpnNzm7ZRpi7Y0l7WXH0SQEWWl6eG/apbxBJOlMHxYrWx+MZe5wl6bLwnZBezCuA51z+J2eqTuJVB8UKrWuOSvUfgQgdYNHfgKFlDCHyMIfGmbctPYCJRP5xPHlkHD+rvYWBUmkM+D0MiTBcCUmV9MHyzk3x/53rXrsHcwVJ6Y5uGtvPtY5vwBFFS/S3v/1ICE1fiQ+kIOpyVHjRshu54IKzmPHBCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BXfN9tfTOLAYQBfSCpEc5Th8pkV/1WGv0uhWFrS3HLE=;
 b=F/fL12UshgAt0UlwqOwrb8jeWH7vTs/bTu4apOyISyKb0ok83j6uKiSlS1ZohObwcNUW27QmrGUkhI6ib6tKt/TwsDYWeXlS8X4AZWR9iLCFppjHywB7y9YAWgFJMt2SESLVts6mR3iVBTKWr02tPVcuCpW2oVscKHWL1V7aSJ4=
Received: from AM6PR04MB4838.eurprd04.prod.outlook.com (2603:10a6:20b:4::16)
 by DUZPR04MB9727.eurprd04.prod.outlook.com (2603:10a6:10:4b1::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.19; Thu, 14 Sep
 2023 14:20:49 +0000
Received: from AM6PR04MB4838.eurprd04.prod.outlook.com
 ([fe80::aa90:117d:c1d0:346a]) by AM6PR04MB4838.eurprd04.prod.outlook.com
 ([fe80::aa90:117d:c1d0:346a%3]) with mapi id 15.20.6792.020; Thu, 14 Sep 2023
 14:20:49 +0000
From: Frank Li <frank.li@nxp.com>
To: Xu Yang <xu.yang_2@nxp.com>, "will@kernel.org" <will@kernel.org>,
	"mark.rutland@arm.com" <mark.rutland@arm.com>, "robh+dt@kernel.org"
	<robh+dt@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>
CC: "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, dl-linux-imx
	<linux-imx@nxp.com>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, Ye Li <ye.li@nxp.com>
Subject: RE: [EXT] [PATCH 2/2] arm64: dts: imx93: add DDR controller node
Thread-Topic: [EXT] [PATCH 2/2] arm64: dts: imx93: add DDR controller node
Thread-Index: AQHZ5vSPitj3lxuP00q++zJOk7ZvW7AaXuQw
Date: Thu, 14 Sep 2023 14:20:49 +0000
Message-ID:
 <AM6PR04MB4838810FDC93B54DE774BC4488F7A@AM6PR04MB4838.eurprd04.prod.outlook.com>
References: <20230914102038.2944844-1-xu.yang_2@nxp.com>
 <20230914102038.2944844-2-xu.yang_2@nxp.com>
In-Reply-To: <20230914102038.2944844-2-xu.yang_2@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM6PR04MB4838:EE_|DUZPR04MB9727:EE_
x-ms-office365-filtering-correlation-id: f0e43717-cf93-4947-1529-08dbb52dcb73
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 zj1EYBzZs+womI/UQw+e8l2EUH9Z1IlqkS6psDAOcJcfSGpA4AemSs2TutwPPhrD1G/WDJoBT2GkcgPo3UOgL28yA/uVPmIucJAmMTI6ewEtTLiytwkGun2S9x81XFRNs476HeJVAeHMygDozayUkAiu3RIrsGat6jbR2FGW+IQKWIQKlRoNUuZFCI56tM7xnb3Jg+mB5l6BKD7jRymEMfMPGS3hVR6aHY8hYxnCfu05xDq2/VbzsWkFqkmOoz5GDZKcakaW/BV2LdP+XtSYmlJmj8RoEIKLHjidf1dK9eAAQRbMGs3F6ZdfQ0DW9gl1IZds4GAT2x3Q1KW70uADb1z5RNWJ41Hw2z7ZCcX2KYuEemfA2EsmooG30faNr/xRJerQr5LOJf1KLrbu9MnFNkzaKTp+jty8iJ+yJUCEQyh+hLCmv6tvk0uvj9S7HY7NREvfMYe9zE0PuaIvpcECpAXnDAuzKjIf5uYrZYDfxHxcN6vMbXC469PGDHI390uNyIadmNHWWxk0qX5EDI33FBepjODQS7g/l1wOQXyWCF7ZEhyO8wCL4shAGNnvf5Jxl4po6lMUfegF9keeeOH2nPyFZdUsALzigiFmwbZbPCE=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR04MB4838.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(39860400002)(376002)(366004)(346002)(136003)(451199024)(186009)(1800799009)(55236004)(53546011)(9686003)(110136005)(478600001)(55016003)(44832011)(38100700002)(76116006)(86362001)(122000001)(7696005)(6506007)(71200400001)(38070700005)(83380400001)(26005)(8676002)(4326008)(2906002)(52536014)(8936002)(41300700001)(66946007)(5660300002)(316002)(66556008)(54906003)(66476007)(66446008)(64756008)(33656002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?j58+LEG6fl9fEK3Y312PvFRJAbA5ZEEWlXiFcyfzFKw9Kv/ruPQdMFK6peGC?=
 =?us-ascii?Q?gDFSeYux1aiEZJtdI7CT3S8XBtchY1sh7zaJpgwB3UdGWk4oIQhsMWaZ98ac?=
 =?us-ascii?Q?aQIwKxNO4zyvfhrZVjHK3bv6sHSVoh6zp9BK+6g0M0gKyjZuf5zOgrWoYV3P?=
 =?us-ascii?Q?688duVv936xansdMOLYjPJEQ8SpVEmlMQR7y2D325g0ySyC6uQ+7VZOS6RZe?=
 =?us-ascii?Q?nHorWzmR2RThNLZYp3ZD1Aljj66r6Vd4rVqIjWSVKkbNZo11DV+d2Ordz1Qa?=
 =?us-ascii?Q?Lm0GX4cnpMaUy8cBKs/GzjoHxfHGiWV2RdIWImLFgvRLP6kdbvMUq0AuMfgj?=
 =?us-ascii?Q?FCGfRz9adjDHncANwJsD3KVta+DUmA0tjO1V2ugc0g9gKEA+8A0fnnyHGsC5?=
 =?us-ascii?Q?AoQW36t/ruseYXXDTQzVbFk3Ke8lkQqbb6QR0cAUoK2RrT4gbdo5je1IjZBk?=
 =?us-ascii?Q?VmRtFTnlwsEz8EfDEaKSGDLgOfNYqXHrKooWXC4w7tawB3y0lRr+AHc23qOH?=
 =?us-ascii?Q?e9v6ftq65K4fKDpGBkbXxOE/djoY5UWUitbb2eY9IvG4mo5Wab9jz2UgOVJo?=
 =?us-ascii?Q?FD/ro6obZnLdfCqbJs+KZc2bugq1756z70xz9UT4KyrdFhqDwirvKcF7BtU7?=
 =?us-ascii?Q?wy8SXg3zHYWFBKkJUyfukALGotfwTT3IcnMZYDCPRHiQ5p9/J+I8vTDNZx0j?=
 =?us-ascii?Q?2Tm8qsVYEu+Dqs55d6aGjhc0+Ph8wyybo7h8BEWk5XHOsSTHzUufR44Zyw9X?=
 =?us-ascii?Q?iRIgw+hJtH9nvceqe+FnAw6SZ2KHeLKEnl17wK0uOwbgFhzJSY3/ooR0Ycy8?=
 =?us-ascii?Q?8JbcHbpnLo9ygQjwuHjEMz5elWnLwSZNHPS5sghwwgi1poQ6BrjPJei/ZQY+?=
 =?us-ascii?Q?xFAtZ8i4gsa9wurPVBLbEbL8ZKbqqoWLrvVoJWAoPBsb7YebAww19bCpg3pg?=
 =?us-ascii?Q?2r5si4Eqwx8lIkPKbdHgWc97dKDrnVe8rLkuF73RRuhW8Im4zY0BYoWVU6/A?=
 =?us-ascii?Q?Q1y5bL17hYF9WWpZfGwEgPYhvQCTeCijhjp/bcJwmTkguPscR9eJ+qLTiGIL?=
 =?us-ascii?Q?zSOR8KCUOGT/hl+JnXGKUkTOK71ERswx5rgtTaqmK8AEeH8XKHOan8hUmuSY?=
 =?us-ascii?Q?eQZhKorZTQXt2D+JW5ZuHRGPhJipTX9GHpo3qdcBemD+1leKYDbRsNmTwEaU?=
 =?us-ascii?Q?xxsAhQc4lzm2yDSd38nAoSofWH11BLdKOOoTTb2o5r341VgVKELR7C1cJBrF?=
 =?us-ascii?Q?8pVR63xDJV5vgTe5jIZo2Aji1oDypUaaZMXTEYR0nUzZJ1F5T4iVSQzLpQ/2?=
 =?us-ascii?Q?BPv1THXe73ga+fDsZnC+4ae6qMn5sAzl17sVbaGb2Z+2G/9V0qgdU9+myto5?=
 =?us-ascii?Q?3x7oFeHiK8tLN24bac2ZXCOCOTbOVXaRnV8ZsmZ9RsYujc36RDDq8A9FTO5L?=
 =?us-ascii?Q?y5OP4XZROgs/Nvdt/XqhA9OXGGwl4FV7aQBNSk6wKRPmefvlPkkvaIFjevC7?=
 =?us-ascii?Q?hLo0RaUHB0R7Jwc9o54tOo+HdE5Vlpu00vYHEqAz8Ob9h8pzRgK4pA4pR7OM?=
 =?us-ascii?Q?6FIBwrz90iYiWPbQ/9Q=3D?=
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
X-MS-Exchange-CrossTenant-AuthSource: AM6PR04MB4838.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0e43717-cf93-4947-1529-08dbb52dcb73
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Sep 2023 14:20:49.4110
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cf4KDdZzYdMaE+CqwB/1KcemGj5IX3V0eqoc2nSNtH8k0OGU4y+TU0Gapuv2kx286p77sAh1gVSotGZ5mjnKNg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DUZPR04MB9727



> -----Original Message-----
> From: Xu Yang <xu.yang_2@nxp.com>
> Sent: Thursday, September 14, 2023 5:21 AM
> To: will@kernel.org; mark.rutland@arm.com; robh+dt@kernel.org;
> shawnguo@kernel.org
> Cc: krzysztof.kozlowski+dt@linaro.org; conor+dt@kernel.org; dl-linux-imx
> <linux-imx@nxp.com>; devicetree@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; Ye Li <ye.li@nxp.com>
> Subject: [EXT] [PATCH 2/2] arm64: dts: imx93: add DDR controller node
>=20
> Caution: This is an external email. Please take care when clicking links =
or
> opening attachments. When in doubt, report the message using the 'Report
> this email' button
>=20
>=20
> Add DDR controller node which will be used by EDAC driver later, also
> move the DDR PMU node as the subnode of the DDR controller.
>=20
> Signed-off-by: Ye Li <ye.li@nxp.com>
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx93.dtsi | 18 ++++++++++++++----
>  1 file changed, 14 insertions(+), 4 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi
> b/arch/arm64/boot/dts/freescale/imx93.dtsi
> index 6f85a05ee7e1..992bdeef70cd 100644
> --- a/arch/arm64/boot/dts/freescale/imx93.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
> @@ -917,10 +917,20 @@ media_blk_ctrl: system-controller@4ac10000 {
>                         status =3D "disabled";
>                 };
>=20
> -               ddr-pmu@4e300dc0 {
> -                       compatible =3D "fsl,imx93-ddr-pmu";
> -                       reg =3D <0x4e300dc0 0x200>;
> -                       interrupts =3D <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
> +               ddr: memory-controller@4e300000 {
> +                       compatible =3D "simple-mfd";
> +                       reg =3D <0x4e300000 0x2000>;

[Frank Li] Can you just use EDAC register space size?=20
I suppose EDAC and PMU's register space is not over lapped. =20

> +                       interrupts =3D <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>;
> +                       little-endian;
> +                       #address-cells =3D <1>;
> +                       #size-cells =3D <1>;
> +                       ranges;
> +
> +                       ddr-pmu@4e300dc0 {
> +                               compatible =3D "fsl,imx93-ddr-pmu";
> +                               reg =3D <0x4e300dc0 0x200>;
> +                               interrupts =3D <GIC_SPI 90 IRQ_TYPE_LEVEL=
_HIGH>;
> +                       };
>                 };
>         };
>  };
> --
> 2.34.1
>=20



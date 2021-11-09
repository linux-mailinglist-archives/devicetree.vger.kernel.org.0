Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D65A144AA5C
	for <lists+devicetree@lfdr.de>; Tue,  9 Nov 2021 10:13:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242830AbhKIJQO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Nov 2021 04:16:14 -0500
Received: from mail-vi1eur05on2068.outbound.protection.outlook.com ([40.107.21.68]:14336
        "EHLO EUR05-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S243013AbhKIJQN (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 9 Nov 2021 04:16:13 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LEEUcJr/CY6tgk45UM7bMkF2Wh8mnmzX2HpKDfahsbQZbqNhX620XJPU16jioGUjHHVuGeCSGS6/5ME0jLWCdSuKiwGF1eO1JnVEdY9xshq6umxz9dE8z+e8Obvh/es+NxXH7UvG6MlBmTbJ47qmkd47WXydl5mLENfAHNmbmYzoH2XxH4UQF7adTIlvlnYSofpn4usA0GZ7PBCUc0/K3rwFdV2oNVnS+J0hFWF8Jgx7gbw1ABluRUxljLalQxRlzp+7ulM2nNLA33YK+kcE5oQ+hKDkfki5hS6dE+FcMyRoE7NEPTVEBhtAM1bB/eoqR5lKX8aEKb90zDF4cVxdhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nlx5g2t6qd03ekD67wgmvCJcfrebCibNitMGgI+Yyxo=;
 b=I7fLz5Yg4AKQvEfQYDNPD/lKFi3Z5AwNyG5rYwgWbhY/Guv8eJZLNzBQJu5yojIT98F+u9z2BKrd8hrmMTCy4KVRJYXeMtnQpc+y4WIDHS03rwuM6BrUshKRfafKw26+3gge79HBkFUw082i5e7MVdq9FHICLjjpDMMf91K9BGdFDaN0BsMB9LEaQ2n0dCWEV1VdiCJ1jPEc9fcjOtlc8eE54rRpkmWLA2Wov1cMQn1mpFjMmaPxqF6iVCMPuU9qfN8KoMwhJhvPrjfiRy36imtHj3oUTwxVI/FxbvgJV+3WYSaLMOkQeZib66AwyxK02KdGH3wGKDT/NZEuAZJlng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Nlx5g2t6qd03ekD67wgmvCJcfrebCibNitMGgI+Yyxo=;
 b=XYZQd1ZMetHdudTvcak1CK7yyBN1LCcQw/H4zD9AAkcU/Dg1Ydhzooq1qy0flh01KujrnoDaS2tuwHhCFhxHMt79Ukmb3UY2L/hPA1oMYmBmNl9FVtTDfHygfShdYXY6PUWRcOOyPuTsAOhDZxsBkuhEAR1yakrsWzAOPWQsKyw=
Received: from DU0PR04MB9417.eurprd04.prod.outlook.com (2603:10a6:10:358::11)
 by DB9PR04MB9257.eurprd04.prod.outlook.com (2603:10a6:10:373::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.13; Tue, 9 Nov
 2021 09:13:26 +0000
Received: from DU0PR04MB9417.eurprd04.prod.outlook.com
 ([fe80::82e:6ad2:dd1d:df43]) by DU0PR04MB9417.eurprd04.prod.outlook.com
 ([fe80::82e:6ad2:dd1d:df43%9]) with mapi id 15.20.4669.016; Tue, 9 Nov 2021
 09:13:26 +0000
From:   Peng Fan <peng.fan@nxp.com>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH 1/1] arm64: dts: imx8qm: Add fsl,imx7ulp-lpuart compatible
 to lpuart
Thread-Topic: [PATCH 1/1] arm64: dts: imx8qm: Add fsl,imx7ulp-lpuart
 compatible to lpuart
Thread-Index: AQHX1JdcZ0jYaYDwbEKqxXS/yJFD76v66s3w
Date:   Tue, 9 Nov 2021 09:13:26 +0000
Message-ID: <DU0PR04MB941726009D1B6E22AA36402288929@DU0PR04MB9417.eurprd04.prod.outlook.com>
References: <20211108115403.1770393-1-alexander.stein@ew.tq-group.com>
In-Reply-To: <20211108115403.1770393-1-alexander.stein@ew.tq-group.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 290bb117-d83f-4b87-946c-08d9a3612fed
x-ms-traffictypediagnostic: DB9PR04MB9257:
x-microsoft-antispam-prvs: <DB9PR04MB9257CB0C7418B31CF41F109588929@DB9PR04MB9257.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:751;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wTccJT0NbxSsntOL1EKRo+Fhs8YsSQWotLNT7fhFx/T0KbXWO1d7B8etij3tQyTgh9h5yWI0jbLkChOX/WPW5cVagn9jHIRpRBzdQ5BcO7pDTmD5UTeqLqtkcbQxY6n2T0enW2OGujWprlBkweP6Bv1nROYPR5DevcY7wVwgoFpCxVs7AQY0QDtN+rxivD0T2b9Y9QsFfFm4Zu+2nxYrqGLFr9ioL/jI0e4ccMkSi0dhaYlNE+8M48PxvfeSiD+MSEVgAQsgbYNzDjMrQjVm6BfZsdF5XNovocG1qey+lHo9ndDO1UIZjpxEu15fqI1vp6FrTaWTj5Wlq94VSV21NlHw5ia9HEgB7XVtQyHecEqFl9W2IXjGv96XUYQmS7lWwzKKYM9TFVyMUILN1Zz+D3vqwRxuet8MCKPlSQM/fI9Aoh+zm7SxU3+wV99SghjagHnpc221UI8u5jvHNjttGJiRUqJ/NvirZdSfvLF+zF5HLkbUQz4MjXdY3iUdw12ofTatImisCitYNYHx3aZHdxJuJfWhvzJZLw/q6XYtXuQLchnxicrKH16h9DTjndgmdn07UlTLx/r6dyKjaYPp0xsbIRkxINtBZmh6aphuvs3lWCejwvgHq2HR1fufSbYdPqXN2p9z49hYzRBaL3ZD0mWr0I/osYsKKX4sWbxPmEehjavUGEIMinlcIpcFX7AUCOhrDZ1PR4KfzshiR3bfCchZKWXOquG7shRV4TUcZ40=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR04MB9417.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(38100700002)(54906003)(26005)(66946007)(122000001)(110136005)(86362001)(316002)(38070700005)(186003)(76116006)(44832011)(5660300002)(9686003)(52536014)(66446008)(508600001)(4326008)(64756008)(66556008)(83380400001)(66476007)(7696005)(6506007)(8936002)(2906002)(71200400001)(55016002)(8676002)(33656002)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?F0L8JY6st/aXCLH7I/BCoBT/+nwi7EuZwUsOe5ZZcstKPuZS8Cb8xX0saYuj?=
 =?us-ascii?Q?DJdvQVYMuQj1F61n3Fog82ZQlEVlVdos4zUL1zkk0kXegdHSm1JXhfTrApHR?=
 =?us-ascii?Q?SfY0dw1drBxsHRtGRJn3lQQBrNVIsmgkRykjuFcId4TzxgfPgOpuxxj665uu?=
 =?us-ascii?Q?cL8d8tC/jZDc3hdzC95KgcjvMdDoRaHoZyRZxZFo1iz0PWHcFwxRIG1IEa41?=
 =?us-ascii?Q?QRnK6AoL9Z2a7s5JKkcQ2/t0hMKmWxVtoxQBXDWg41+AsNYeIjHdDN/WCjtM?=
 =?us-ascii?Q?hMHRlNFzfxJrFG6xoSGcE6gm0UmdlphlANbwH2Bxz4C94WxRVskIHVSnwChK?=
 =?us-ascii?Q?yN7YyBrlXDSNt6nkHkAJmFXAqRR86igymBeI7UIJriPoMreZksOskLoT4+Gx?=
 =?us-ascii?Q?062wxzaAxDkpP7xmgg+WQPv55Rx37ymzlNSgtxz6NNoMneehRmioLu5L2Rh6?=
 =?us-ascii?Q?O0NY/1RvEEgC/fgSwGO7evFGb3VuoEQRUg+EZY9KuCCQIp0KHmIsjd/VFgUy?=
 =?us-ascii?Q?Mjq+iCUkb4KJ1jt4d+DFNpUVu79p69hjhEJ+DBTZvruXRNOJa4sXLhPfXOr2?=
 =?us-ascii?Q?Ny4RqVLLc0swol9fT4ud3BnySPus2TuA8GP0FpBUxGeWWm/Hu542OYn4NAKO?=
 =?us-ascii?Q?A2udKMDM0o1vskDCTvKF9dWHFBtsDx8039yeqp4qBkeZslwhqT6Kx4Cf50ib?=
 =?us-ascii?Q?+g96KVT9ps58Y83rxsarWsoCJLjEVq+S1HXeUVclcJYAVovvwltfIPfpIDO/?=
 =?us-ascii?Q?xGlc5O2kUQIn2/rriksYYbbaxz2l/qnPboUCC4Y+MhkaXeE/aKNlhRXLvJhq?=
 =?us-ascii?Q?r1WjfYMS4YbOyE+dUU3P0D98GnF7B37gf2+IwTHb+e/RPNLJpB3XpOiStpf/?=
 =?us-ascii?Q?bI2VvsJK5q532peSXz8KNrlQteMvIQMc8saI7GuJND8tsBKdY6v8N5mPud3z?=
 =?us-ascii?Q?g8U2/2OE8s7gKHxvsoxpw5K8nQFScQD1CWJfBQO8jHRI6PgLx/H/hhArmI9x?=
 =?us-ascii?Q?s9P3ip2vjEd5kSsTT9ozw7LAhfwdWK2A2BrlPFC4XUXEfDSyKfZFhYEa7RpY?=
 =?us-ascii?Q?H+Bj12oZ1NM6y696iYLeoIg9UK7MPT5lG7wcOlPkvt/bCu2JmQUvoa1JZ6vz?=
 =?us-ascii?Q?04sZ5SupJzDBvPJKUBzDzoJ3oq9LTPDeBqIvOEJWGIeVzqJ1w4/fYaqTBvbc?=
 =?us-ascii?Q?mMDIkKcDFw1IzYnWa+wfKRkWE2MXoqUXsj8bjn4iMp0g+kQBGSBjPnaYWpV1?=
 =?us-ascii?Q?zlYfS9C1e4+UCuc96+lZZjZ6Y2pWJJnM7SxkcOI/fM/hUdzay+zAOn4IHjH7?=
 =?us-ascii?Q?K9Uyj3kAdd/UhcFEdVEDxddwaQ5bqPmW66pD73D0y+nxdWjngwPf0LQJN4vt?=
 =?us-ascii?Q?VilnqbtsO+y4rn0dLnJzbshR4X16BMcaHDhO66rRd8UU2ZyS++m2X4o3nh8G?=
 =?us-ascii?Q?AXd/26Z3hyYFON3D0TyVMh8C+CDLHgxCaq05rYccLmtldHqQJWfIiyyvLDgD?=
 =?us-ascii?Q?jWwnM5mxxEQzjkkX5J+DtRYB2No6M4Gk2/IHjF3tFkfGVUIku1lOzE2roMeH?=
 =?us-ascii?Q?dTZ5Kz0UA0ybEgoLTWJTdycc96xkhEnXaPTZ5xyFPTkxjaSYOvO0H89/TS6/?=
 =?us-ascii?Q?Ag=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DU0PR04MB9417.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 290bb117-d83f-4b87-946c-08d9a3612fed
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2021 09:13:26.0292
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 41avRK2hFeoPezhUYPIaZajBDrbvd/bpci5Nd6/TwaFUQ2rn769FNqBHpRxnu3avMH77jAd3FzHaxG6Fgyzd8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB9257
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> Subject: [PATCH 1/1] arm64: dts: imx8qm: Add fsl,imx7ulp-lpuart compatibl=
e
> to lpuart
>=20
> After commit b4b844930f27 ("tty: serial: fsl_lpuart: drop earlycon entry =
for
> i.MX8QXP") earlycon support was essentially removed from imx8qm/imx8qxp
> due to missing compatible.
> The commit message says "i.MX8QXP lpuart is compatible with i.MX7ULP" so
> adding a fallback compatible should be fine.
> With this change early is supported again on imx8qm/imx8qxp.
>=20
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Reviewed-by: Peng Fan <peng.fan@nxp.com>

> ---
> I get the following lines in my 5.10 kernel (backported this change):
> [    0.000000] earlycon: lpuart32 at MMIO32 0x000000005a060000
> (options '')
> [    0.000000] printk: bootconsole [lpuart32] enabled
>=20
>  arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi
> b/arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi
> index bbe5f5ecfb92..3486b99ab6eb 100644
> --- a/arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi
> @@ -19,19 +19,19 @@ uart4_lpcg: clock-controller@5a4a0000 {  };
>=20
>  &lpuart0 {
> -	compatible =3D "fsl,imx8qm-lpuart", "fsl,imx8qxp-lpuart";
> +	compatible =3D "fsl,imx8qm-lpuart", "fsl,imx8qxp-lpuart",
> +"fsl,imx7ulp-lpuart";
>  };
>=20
>  &lpuart1 {
> -	compatible =3D "fsl,imx8qm-lpuart", "fsl,imx8qxp-lpuart";
> +	compatible =3D "fsl,imx8qm-lpuart", "fsl,imx8qxp-lpuart",
> +"fsl,imx7ulp-lpuart";
>  };
>=20
>  &lpuart2 {
> -	compatible =3D "fsl,imx8qm-lpuart", "fsl,imx8qxp-lpuart";
> +	compatible =3D "fsl,imx8qm-lpuart", "fsl,imx8qxp-lpuart",
> +"fsl,imx7ulp-lpuart";
>  };
>=20
>  &lpuart3 {
> -	compatible =3D "fsl,imx8qm-lpuart", "fsl,imx8qxp-lpuart";
> +	compatible =3D "fsl,imx8qm-lpuart", "fsl,imx8qxp-lpuart",
> +"fsl,imx7ulp-lpuart";
>  };
>=20
>  &i2c0 {
> --
> 2.25.1


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 82D893E1179
	for <lists+devicetree@lfdr.de>; Thu,  5 Aug 2021 11:39:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238744AbhHEJjc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Aug 2021 05:39:32 -0400
Received: from mail-eopbgr80081.outbound.protection.outlook.com ([40.107.8.81]:65399
        "EHLO EUR04-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S233045AbhHEJjc (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 5 Aug 2021 05:39:32 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lcGlVkv1+2CeVjQoLW1TA+j4f7fRp8QV5LTMksrWvE2V9/QUPZylx+GK0Ivo/BgmPDaJdoqc1psT++2pE8k2v/zSraz66pR8hs2T4bwpt5UI3PCl6ZCkGnQePiD6geqy/hZDYdgsHIIlBLxY0YsvBPVyLAO57ZF0s7Gf60xnELJl5Wq6zRWi8anMxwMjHsNfUpW17alzeTOpmcqCJjzKNezBQWWfIB4bwftZEKWXBcwZcW/qT84uAGGJZQFbsw+gnfqDZeC9aoDm0QcqX7dUW098Z/lhDhmUAdxlEXFSyr10lV8Q7yfplMhG5A7FwCqp91Zl2u/hdnkRal5keEv+jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=woB15/T8hSo6V+SjsEAzJAUv2f/rHGikDRNRm99kd1M=;
 b=eOZnx14MELWdk+aMl087wVIsp99CQC3i6BYGUiHiKTKsUlc+REOY0UsydUY2NUYDCA7UHqPasIX7MaP8jwqPJH4giSyyDpRSwMN/R7if3pvJewbD94lm7weTj6slM9nVI2PoZQD5s++T0oCXe5D+ln7Mke69dETYIGyO/9Y2Xek0wIUDUvKDqgqVDwyGM4Sh2lGcjfwMd07rGvizx0vCg1OzGakHGmh4hY8ucfBMSmCjd5kcFHrsoEnGfVJgQW99qPOCZg8hsvD6XcQN7ySzbdIEvdgz787OiLLR+TMDWkdBiiFpGTgbDP5Ek6rDNJKgUr5CPIv4gZP546+oVzhAEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=woB15/T8hSo6V+SjsEAzJAUv2f/rHGikDRNRm99kd1M=;
 b=ET0nwWP9zJ9TUYgNgrj9qYZi0IfgvG5BbUlGKjZD2p2dbhIkzKgwAXUUNM5aLifL2Cz30E3jrzRRiYb/CPtZxbr8S9g9e5dXBT3VxQ81VfPdGcIqbmO/4OLqHlYiOu6llttmRvqNXbkF9fyG+vfK/8p9NzOWxmUPmuyF2DvW5ks=
Received: from AM5PR0402MB2756.eurprd04.prod.outlook.com
 (2603:10a6:203:99::22) by AS8PR04MB8006.eurprd04.prod.outlook.com
 (2603:10a6:20b:288::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.24; Thu, 5 Aug
 2021 09:39:16 +0000
Received: from AM5PR0402MB2756.eurprd04.prod.outlook.com
 ([fe80::3839:217:6252:b1f8]) by AM5PR0402MB2756.eurprd04.prod.outlook.com
 ([fe80::3839:217:6252:b1f8%11]) with mapi id 15.20.4373.026; Thu, 5 Aug 2021
 09:39:16 +0000
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
Subject: RE: [PATCH v2 06/18] soc: imx: gpcv2: keep i.MX8M* bus clocks enabled
Thread-Topic: [PATCH v2 06/18] soc: imx: gpcv2: keep i.MX8M* bus clocks
 enabled
Thread-Index: AQHXfnGVgq/KGkWIREGBcZsjDVRQAqtkvo8A
Date:   Thu, 5 Aug 2021 09:39:16 +0000
Message-ID: <AM5PR0402MB27567190A8281EFE73920DE988F29@AM5PR0402MB2756.eurprd04.prod.outlook.com>
References: <20210716232916.3572966-1-l.stach@pengutronix.de>
 <20210721204703.1424034-1-l.stach@pengutronix.de>
 <20210721204703.1424034-7-l.stach@pengutronix.de>
In-Reply-To: <20210721204703.1424034-7-l.stach@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 038361f2-f612-47a2-8bfb-08d957f4e494
x-ms-traffictypediagnostic: AS8PR04MB8006:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AS8PR04MB800600B3B29D7809AAA5624788F29@AS8PR04MB8006.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:913;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Aa6hXbrfDFckc/C/UJmIzB6yJFHeX8ZJWWp4LXYn6doHAK2UaprQNDQ5jSl8ERFbp2kXCdVR3o/ZAwmW10mt1+MhYfaAsCv+7SLUcmCR1Sk+Aj2jQ9pDCVOjhSSpyUirq2PVUyrDdBb4wcsMxvDD2Voo4k5zIIYpH2tEJB6hc7J3E3c1+7dsMqqnlyTOxDjhU0jOXi0uGlv4Z4/DEhBXmQIPOXfwDTRyAStUA4+cbMUj0Bo2UH796pcMCcD/yiUEF7GvS1lWJNMySw1ZbvfoJbeTd6AM0Dj2FgAA78NR6Nrd13aCnTwY5NLhVvEqtCjcezbRVOu2V9c1uO6l5WG7rQJKaaOx6F1A6L47GxTzBh+NmuUtfZFSjQdPTuwenhtpC/vBdqsQ7PJ65soQOP8myWgHoNzh7Ai63WhWhZ+jN4O2E+BqQTOEq4klyTh7zAUElJhF6myw8JUpLB7m6j6mIDYpe2qAPjtEeaEF4e6NgHEQD3j1nLeUFSG6L5iOGMsrhR+YTSHRQxPi4QSPMJDY9HBW5/mZU4M4EXrbLEWG8fEP8jsBaKCI4cUpnl38+wZsB+CTUSRPIpgAsn86ZMEdmO2B2MhXEGBkYcqCYWMEO03JPBq0TNVCx2WAt1EVQA6ttDYRbF6DZR0gwxNEI9eRVWjfrGTklItAPzPpRuzSlnJG1w/eHC3QD7+T+9c1OtCXZn71dRN1yNx/GoksHBCWdg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM5PR0402MB2756.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(366004)(136003)(376002)(39860400002)(396003)(76116006)(5660300002)(38100700002)(33656002)(55016002)(2906002)(83380400001)(7696005)(9686003)(6506007)(316002)(4326008)(122000001)(86362001)(71200400001)(186003)(38070700005)(8936002)(8676002)(66556008)(44832011)(478600001)(110136005)(66476007)(26005)(54906003)(64756008)(7416002)(66446008)(66946007)(52536014);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7CNxWQ8nWastK4jqVV2PT4tRfogyM1CUQBycc09RELdWdVZLTr5GnWIKjBdb?=
 =?us-ascii?Q?zbff4Up1xpk1Y1xQO9BcW5f/RnbL7EoOU8/6lIuZnA1QuKy8rpq4P0k3QCxh?=
 =?us-ascii?Q?pLPI6XBUoqFZItyCFChPndUEfWdSx3f8JTQtzLK4qGdEELyOOcBrSxboL7BH?=
 =?us-ascii?Q?mcZFxzuaStSwh0duQf/oUicdXV38oBXvwPMERMcB++WDwAw/jJUC98SeiZxt?=
 =?us-ascii?Q?gmzh/h1Q44dhxX32YRYRZPvd1c5ej72jL/AM8rb2RAnn3l21DizarqSVtB3V?=
 =?us-ascii?Q?CZujbOEA1zkKZtUG9enHOpXxtgD07pt56Hk5z1JPCt5Ox7jAS2RaUmHIklJ1?=
 =?us-ascii?Q?SL34bB1HZre8VDb8eEFRX1l0Ho0dKFA2NuDamNek/aLVtLcEgXN33HW/Awdv?=
 =?us-ascii?Q?0zNTlYOuJI9zgmFILnfUPTEvToEWMLr6krY5Le0ceVd0kpZI8F1XVZzJ85Q2?=
 =?us-ascii?Q?YUCAAINwOsElcQEj01sIaIs5BnfIOgexrvgB0Baqob9rZVCX13YIK4fobbv6?=
 =?us-ascii?Q?lkzVZ5TEPEuiLJm8cJQNpZ4zQBAywgpuaJN1GT9iDbFmeFQA5UdP148265iU?=
 =?us-ascii?Q?qaU/Z9TuUdAFT8HXzgYkdyKvHDMtFaaHvTYarf0AKj7rzMe/1/KTklterkIO?=
 =?us-ascii?Q?CCbYZOJwAguabcUpJ3KRZA7fozD3789FIU5fq50D1xNxxONGVxkN/AYVNth5?=
 =?us-ascii?Q?xvmTMTbV8RM+fa/dbTfv36OISajNrdBF8MVCFQ+Cqohky17YauhAFfQq+l37?=
 =?us-ascii?Q?iLI4rsWPbHbJiH1+LQvXdfsWbjWQ88TQ4q57mrEC1jCI+g8vzdN7DTT14y4c?=
 =?us-ascii?Q?+F/fGuZ52DUsKwZ7ZnLmHBzNLWmxWvXFdIR+B1qwpg2V0jX6ES4vRxCy7q2W?=
 =?us-ascii?Q?Uq2kAQMFwsU1yHE8xHqJ/y/Gbs2UpMdSgOv63dM2qN6S3lY0CPUGN9F+iozB?=
 =?us-ascii?Q?YLzOIQYCXNlR9FPa/zsqVlXArT3jd45+Zm8ll1eK8GJJOVn4LaPocXqMmSQe?=
 =?us-ascii?Q?sKjSyLGf6ggDuaeCyKHs4UvCKTDzVxnED7uyRq6F60HxDgO/Rdz4T1LMwWNj?=
 =?us-ascii?Q?3Hp9R53QNLfQ+nIO9iSrp7GoZjlZaix2inv59gRyDD7I1Kqs5c0efmZ1+YSw?=
 =?us-ascii?Q?A+cpjbqqYT7Bjsvi4LPiXU4fv1k92ofqg6BP0tl33nHviCPPlF/d/gaXl/YU?=
 =?us-ascii?Q?+2Z0iTh7rWNywOQJFu4XE+Bl/dFdq+3pZfE+AvJQMFcf+9AHITMoCl39d9qA?=
 =?us-ascii?Q?j2fzdXbuOxs7KIW/0aaIPFhuumEUZACqw5yE4P5GuK3CCCRVVeOx4nA1ZwHf?=
 =?us-ascii?Q?6l+ZnEHU6d+QJYxxypSFcGQn?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM5PR0402MB2756.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 038361f2-f612-47a2-8bfb-08d957f4e494
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2021 09:39:16.7673
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0ny/+SB49RXKfVOZCehkSOLwjfrycf+UJaf07idliOCpZVAxZFw7oYKKleCe+FeJqxOmH++JShax/lfvQD6ZiQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8006
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> Subject: [PATCH v2 06/18] soc: imx: gpcv2: keep i.MX8M* bus clocks enable=
d
>=20
> Annotate the domains with bus clocks to keep those clocks enabled as long=
 as
> the domain is active.
>=20
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Reviewed-by: Peng Fan <peng.fan@nxp.com>

> ---
>  drivers/soc/imx/gpcv2.c | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c index
> c3b1d2580963..c48f37f203ab 100644
> --- a/drivers/soc/imx/gpcv2.c
> +++ b/drivers/soc/imx/gpcv2.c
> @@ -625,6 +625,7 @@ static const struct imx_pgc_domain
> imx8mm_pgc_domains[] =3D {
>  			.hskreq =3D IMX8MM_HSIO_HSK_PWRDNREQN,
>  			.hskack =3D IMX8MM_HSIO_HSK_PWRDNACKN,
>  		},
> +		.keep_clocks =3D true,
>  	},
>=20
>  	[IMX8MM_POWER_DOMAIN_PCIE] =3D {
> @@ -671,6 +672,7 @@ static const struct imx_pgc_domain
> imx8mm_pgc_domains[] =3D {
>  			.hskack =3D IMX8MM_GPUMIX_HSK_PWRDNACKN,
>  		},
>  		.pgc   =3D BIT(IMX8MM_PGC_GPUMIX),
> +		.keep_clocks =3D true,
>  	},
>=20
>  	[IMX8MM_POWER_DOMAIN_GPU] =3D {
> @@ -697,6 +699,7 @@ static const struct imx_pgc_domain
> imx8mm_pgc_domains[] =3D {
>  			.hskack =3D IMX8MM_VPUMIX_HSK_PWRDNACKN,
>  		},
>  		.pgc   =3D BIT(IMX8MM_PGC_VPUMIX),
> +		.keep_clocks =3D true,
>  	},
>=20
>  	[IMX8MM_POWER_DOMAIN_VPUG1] =3D {
> @@ -743,6 +746,7 @@ static const struct imx_pgc_domain
> imx8mm_pgc_domains[] =3D {
>  			.hskack =3D IMX8MM_DISPMIX_HSK_PWRDNACKN,
>  		},
>  		.pgc   =3D BIT(IMX8MM_PGC_DISPMIX),
> +		.keep_clocks =3D true,
>  	},
>=20
>  	[IMX8MM_POWER_DOMAIN_MIPI] =3D {
> @@ -810,6 +814,7 @@ static const struct imx_pgc_domain
> imx8mn_pgc_domains[] =3D {
>  			.hskreq =3D IMX8MN_HSIO_HSK_PWRDNREQN,
>  			.hskack =3D IMX8MN_HSIO_HSK_PWRDNACKN,
>  		},
> +		.keep_clocks =3D true,
>  	},
>=20
>  	[IMX8MN_POWER_DOMAIN_OTG1] =3D {
> --
> 2.30.2


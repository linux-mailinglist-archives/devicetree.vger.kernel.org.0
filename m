Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1919F3E1170
	for <lists+devicetree@lfdr.de>; Thu,  5 Aug 2021 11:37:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232605AbhHEJh7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Aug 2021 05:37:59 -0400
Received: from mail-eopbgr60079.outbound.protection.outlook.com ([40.107.6.79]:23469
        "EHLO EUR04-DB3-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S238146AbhHEJh6 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 5 Aug 2021 05:37:58 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JmbJNO0pc4OYnLEPrd+FDf0kVQhqJkv9q8pM/ZHvLBbK4VPei+cUnVbBYpug81V2/9sMMWTG6yUr1Wvmlr/BrOgOxmKZf3z3BR81p2bRkXVhEggFxI++Kh47K06ukXtnJzzbq+kbABQvlFDNLhq6S/M2VY2pJTgWdZE/Mno0Nmn9LyqFao2YjGDPMP5ubYCyJpu8gTnmuBmWutSfQ9HBHSH3ElYVwLRhVy6av26NplP2rRsjIOI46iXHCbwG8AOZhlVI1PEMcZWU+wmVxxt8kY599uIMO9pHBjFPrcvIct2lnHE1MPSlX3x63XdGhZT+A4ycHJbnoRT3nsmIDKrvXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UWkkAdY60PeM9AHNSrntvlTrd51yU8AiuHSAuESYXtU=;
 b=Xolrkg8/aVCvZ7Wl7mareDxB4iso/4tRbn6tdwIhR1nCYcoKiFcWgfRElhix/icdfatn5MthJWOMlXea72GV8/Dmuvm57LRlULWl56F0/HSZt1aVpYgUOZH785gRmUgMhg+pku3i4mZjp8aOj4csdPArSh94JTKLZBPaUWfo1OdFbeb7cbCI7TQ1DNAGTsrBP7j8P9mO1y4E8TG7M8cBwS+LfOyFevi8/upqyZnjt+0Q8Zgkv0++lfPYSg/aMVOS9zsU3ccdr9/qduyFMCvCiNpSbhw7RczvCPa+Ef6/2DSkPnUCPH6GEcdbiIaE2tWFHzDlCcWCACvaEQDO3DaqJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UWkkAdY60PeM9AHNSrntvlTrd51yU8AiuHSAuESYXtU=;
 b=RhO5qDxarXiENEz3pZ1gl5hgFJHroVXuiAEo0xObox1PKIoyGJ0Mnc9nzeZPjYDJhvxTtRExWZ2DnqKqzn48h/873I6eE74zlYCrdIm//MDxfZmUCxYbZ8GfEN0mLDT/ct6BfPy2b055f5Zj0GUsUR4ScKiws2vtHk9ucT4eQj4=
Received: from AM5PR0402MB2756.eurprd04.prod.outlook.com
 (2603:10a6:203:99::22) by AS8PR04MB8006.eurprd04.prod.outlook.com
 (2603:10a6:20b:288::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.24; Thu, 5 Aug
 2021 09:37:43 +0000
Received: from AM5PR0402MB2756.eurprd04.prod.outlook.com
 ([fe80::3839:217:6252:b1f8]) by AM5PR0402MB2756.eurprd04.prod.outlook.com
 ([fe80::3839:217:6252:b1f8%11]) with mapi id 15.20.4373.026; Thu, 5 Aug 2021
 09:37:43 +0000
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
Subject: RE: [PATCH v2 03/18] soc: imx: gpcv2: Set both
 GPC_PGC_nCTRL(GPU_2D|GPU_3D) for MX8MM GPU domain
Thread-Topic: [PATCH v2 03/18] soc: imx: gpcv2: Set both
 GPC_PGC_nCTRL(GPU_2D|GPU_3D) for MX8MM GPU domain
Thread-Index: AQHXfnGUNrvbSl3plUmhoKbx/SsD3KtkviQw
Date:   Thu, 5 Aug 2021 09:37:43 +0000
Message-ID: <AM5PR0402MB2756697B31528A9FFF21628E88F29@AM5PR0402MB2756.eurprd04.prod.outlook.com>
References: <20210716232916.3572966-1-l.stach@pengutronix.de>
 <20210721204703.1424034-1-l.stach@pengutronix.de>
 <20210721204703.1424034-4-l.stach@pengutronix.de>
In-Reply-To: <20210721204703.1424034-4-l.stach@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7507792a-8a17-4a87-9933-08d957f4acdf
x-ms-traffictypediagnostic: AS8PR04MB8006:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AS8PR04MB8006A2FE0166D4D2BCC457EC88F29@AS8PR04MB8006.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KHAFGAk7W9BTx/QqlyMYoWw3aqeTdJsQ3/ryqiGUkMvrYE7f07c20owMTyzjIHg6rAnVeaFNhp+IO66nB9ZMj//YYlGxYU8kft/qJguPRUBQ7E8iSHtNPLVO2IxxV9ZFoGlSYWs0R4pZTvZLcRh3yqDM34Nqwz6R43El7hPTAMZVDIpBVXZNRixhwzRWxm8KBKIXWMfbD3H4XSiPu7KHPkJjxikYPaYzQ/rdIKA2epihjf0skJms7dGNrQfyvkVUGuv/yxWNvC/3vLJMKX1WIoJRT8EhYQLTAJWn38d6mbbpC/pg/xvZIXSou7NtBGNj9D4HrhQ3vAsDKNwY2CGY3+a1sKrLMcBynXjHcctMb87Ns3VTFvJ1eVqrDnzY6EvSOOM1OOGVsjhrTXh+XWtTcnx1b6JIQHj+bViZ/KgOHWIKGYsckpMiXAbfUvTE4o/9onnfhxPPJp+vnTKnGAXQPeo9p6dnZ6fkY5ALlzRuZneW9AwICwH+tM3FKCgMYWuQd7Itl2UHpxgsuCxMbyK72/HZbFXWqhK2N3unWVwY+KqXQr+b7thfouAXzInhyghTOFEq+IM4DoCsolscKPGYtt34z3SrlkSnXz2l724WQzTXTROWnLjbtrKBzs9JSOmHcra0RtliGwY5ZLW9XqbJ4A3qVAv1zvDH3Q6SNm36zLU2cP1Uv2FJ8hauEhL3CX5DfvpVIHB0Zt62RxKpQVCk+nV2mZ/NC5eZLJ4sM6Q7BGqzIFFItqTj31hEkA/2a3Yr
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM5PR0402MB2756.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(366004)(136003)(376002)(39860400002)(396003)(76116006)(5660300002)(38100700002)(33656002)(55016002)(2906002)(83380400001)(7696005)(9686003)(6506007)(316002)(4326008)(122000001)(86362001)(71200400001)(186003)(38070700005)(8936002)(8676002)(66556008)(44832011)(478600001)(110136005)(66476007)(26005)(54906003)(64756008)(7416002)(66446008)(66946007)(52536014)(32563001)(83133001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/scKi8fDV/grui2l6qKZJ22g4Z9shbmOa/VgHF0GJvZBse2NYds6XSRDXE51?=
 =?us-ascii?Q?bOTcYehm9aNo8/BGrO4tztYxnZsUS9E9STdWA0+iUpWRgWc/linQF3oAiRdt?=
 =?us-ascii?Q?Wb75uTIBGW04gb8ElVNtxrfPWux4L7vkGk8Unf5Ea76taa3tjx5Y80IqqgsD?=
 =?us-ascii?Q?9lDWGzMJEokP9j6Ld7i5BAmIgSWUaKp0HOAjaWV6vy1ZaFnvvikxqWr3ZZ96?=
 =?us-ascii?Q?CDjP8Zitwlkofl9H5wIwiqsP/cpyaFH/WU/CB8mBGXV9/duVmdNL2ZbeAsSo?=
 =?us-ascii?Q?OgEi3mUD2oMSIZENacx4LqhavOLUvAOisiRo3NG9Xhz7sZ6yCNIgHK27NyyU?=
 =?us-ascii?Q?GwT+K7BTYNo29LRehoDIjceE3f5meafMMCTylB9rc2/NEQAzCWD3KGn+cJEj?=
 =?us-ascii?Q?YuTbSuB3JSR6wqYlntx4u6GlrLGASDydOA9ofZEu+CqFn9dnZGZWwCYuaxIT?=
 =?us-ascii?Q?TlOcaWQ21X5UXdUF0dMKfYggF1fqnpo9NhcPM5TponAhKmJ7rJM5+/lSgpz5?=
 =?us-ascii?Q?mUD41MonRDa69cLib/HGajg1WS9FgDWYvjntXu16JelPf1Al0u/KTSvFVudE?=
 =?us-ascii?Q?KxGyajtc4likPgNy56OVoAt9WwbeYmPV0/30ECtsoWPXjwSSygezpyEUcoz1?=
 =?us-ascii?Q?61Vce8qYLEzbZE/Wq9dFVlSOgIn8Xgj3zoNm3dA04+TZfxTtvyNnVWrEsqDw?=
 =?us-ascii?Q?q+QXpftyD/Xb0zLAPXyF3KqHmRjduUlTLSoU+V6zy6+NE4kMleIU/PVHhgEx?=
 =?us-ascii?Q?9TMDCgi7yRxHvlgRLrqo6YFKn7g1Zz5c1iUNmIjqrI2mcnmFaVx4WvoHoBTf?=
 =?us-ascii?Q?lQnNn12YdYTctQUz6KzHl0+H02mpqEA+d+htefAmxJAN2qUXZHulsSjFGJDA?=
 =?us-ascii?Q?yXPhamCK1Gl4yWwetv7QCRnCZDL9wEGHa9H/dg8pFTw84wFfrurQny26/V0+?=
 =?us-ascii?Q?b0ZVc7xCvwTZHYMv0BNB5jQRKXai0GHx7SP/papS2j+2yiA9W3yUTh3Pr67T?=
 =?us-ascii?Q?63JRzlMB3YC14eSKEhWzyvrwkVY2KoPtyowwYdabyOJzVUHZrQjbGytdgws4?=
 =?us-ascii?Q?v6G3KryXeq8qky65FiHAixiXBuhQ6Ft6U5epgPKot9NBqOvelmNUxPYqiOZH?=
 =?us-ascii?Q?gwTVgHb0MNE9j/1JS4Aqp/kcj1mV+NQtlqE9Pfs4Quk36IROIqJZOoVrw1L0?=
 =?us-ascii?Q?fkj/STOmut56/klGMXM6V6R+DiWFdd6kEpA78aqUq/Wm42It7BkrNZsHHuie?=
 =?us-ascii?Q?ZaXNkwhg3Z8tM6QeLe+XCStq7FOGZeTzKwyx78rjdZtYsocuHGlE+8lEiSzW?=
 =?us-ascii?Q?2ArLN3JaOu/7SoWyjiR0tqpU?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM5PR0402MB2756.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7507792a-8a17-4a87-9933-08d957f4acdf
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2021 09:37:43.2118
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WoqQhyiHfW0NboJqcIozVlEl2PfU3Ko+1V9ssaLrX08Z8zUf4/4N5Gp/YuIizwOSmLW238nM2jgo/b6ipO/piQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8006
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> GPC_PGC_nCTRL(GPU_2D|GPU_3D) for MX8MM GPU domain
>=20
> From: Marek Vasut <marex@denx.de>
>=20
> To bring up the MX8MM GPU domain, it is necessary to configure both
> GPC_PGC_nCTRL(GPU_2D) and GPC_PGC_nCTRL(GPU_3D) registers. Without
> this configuration, the system might hang on boot when bringing up the GP=
U
> power domain. This is sporadically observed on multiple disparate systems=
.
>=20
> Add the GPU3D bit into MX8MM GPU domain pgc bitfield, so that both
> GPC_PGC_nCTRL(GPU_2D) and GPC_PGC_nCTRL(GPU_3D) registers are
> configured when bringing up the GPU domain. This fixes the sporadic hang.
>=20
> Signed-off-by: Marek Vasut <marex@denx.de>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Reviewed-by: Peng Fan <peng.fan@nxp.com>

> ---
>  drivers/soc/imx/gpcv2.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c index
> c7826ce92f0d..2c43e74db0be 100644
> --- a/drivers/soc/imx/gpcv2.c
> +++ b/drivers/soc/imx/gpcv2.c
> @@ -679,7 +679,7 @@ static const struct imx_pgc_domain
> imx8mm_pgc_domains[] =3D {
>  			.hskreq =3D IMX8MM_GPU_HSK_PWRDNREQN,
>  			.hskack =3D IMX8MM_GPU_HSK_PWRDNACKN,
>  		},
> -		.pgc   =3D BIT(IMX8MM_PGC_GPU2D),
> +		.pgc   =3D BIT(IMX8MM_PGC_GPU2D) |
> BIT(IMX8MM_PGC_GPU3D),
>  	},
>=20
>  	[IMX8MM_POWER_DOMAIN_VPUMIX] =3D {
> --
> 2.30.2


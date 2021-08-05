Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4AFB33E1178
	for <lists+devicetree@lfdr.de>; Thu,  5 Aug 2021 11:39:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236120AbhHEJjN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Aug 2021 05:39:13 -0400
Received: from mail-eopbgr60051.outbound.protection.outlook.com ([40.107.6.51]:1616
        "EHLO EUR04-DB3-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S233045AbhHEJjM (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 5 Aug 2021 05:39:12 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BX1DqunBF8V14ZW2mGujfvPcymvFZ5HzTGahjE/F6v83Z/fu/q7n2YhVUgYBi8vEpk7oH+nqPdF+to2tQPE4xlD8lQo2gMwJ03j1NkFYes4RxtA/2udmrZmXYcFA5qgj8WWv9g97CFucCKnsLxy0BETNVf1pI2Xsajx531F2xTKnDyr0A+nuXC07TnfOpKxwxWe+MPaQjBNz1YnaA7KdZtph3jHMsC4hBRcm2rLPrGrPX1KE4x4/myBTrvWqxloHjT/PAxdqPfbZSjto73DyxZvOLiuQrhiD7zrjGXiWYDBGcSmDtTIw5/NzPHGtiP0qVGfs7gCJzZYyU46FHDGbaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eMCMTwSeIJ6UiUTqLspF/lPenjuJBO+n9n8nNFaIAQw=;
 b=QAMIsrNwZXEHgDPRghe+5KsF7cGtkutPbb+1hqT9qdQMPqpEww2N6MrpwXxkuWphUziLArUQ7++0iCG+AMRs8tFgiUe/naJqLEzyxLRKn+/BMT83RVtu0XsNTMRw7pfvOkMYtbXhfgt7K8dgVuPIM9McynN++b24RtGS07/iWi3B7X06Ec45FITbagnEaLR0NgAmEcahYgbmxERZJrqNHLhaQu66O7EK9GPmuW478wPq4CFiBmvNCHSdr/AiZFQXjsB/X1sBAfypHXC1lgNZSrMQjecNc+5vdCqgKzrR+fCiOeauus4w2pkm1gCcxB7OrRnjphVUa0iIfH2+DqecnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eMCMTwSeIJ6UiUTqLspF/lPenjuJBO+n9n8nNFaIAQw=;
 b=bWOdx/8p3i2+XeU7wcgfqbgqXhNfIe5Xb5fK2TTWvxQfLK5LtLJlJEHvUDikBPb5nOutGf9//vV70O1l5nSp1zQwdhDWzquwPm8/ZlGxe+NK0rWgvS5bFJRvu7WdR2zNRNYBta3qD6nKcmDJ9vQyiH3oXzpILCcxUIRbw+nnA/I=
Received: from AM5PR0402MB2756.eurprd04.prod.outlook.com
 (2603:10a6:203:99::22) by AS8PR04MB8006.eurprd04.prod.outlook.com
 (2603:10a6:20b:288::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.24; Thu, 5 Aug
 2021 09:38:57 +0000
Received: from AM5PR0402MB2756.eurprd04.prod.outlook.com
 ([fe80::3839:217:6252:b1f8]) by AM5PR0402MB2756.eurprd04.prod.outlook.com
 ([fe80::3839:217:6252:b1f8%11]) with mapi id 15.20.4373.026; Thu, 5 Aug 2021
 09:38:57 +0000
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
Subject: RE: [PATCH v2 05/18] soc: imx: gpcv2: add domain option to keep
 domain clocks enabled
Thread-Topic: [PATCH v2 05/18] soc: imx: gpcv2: add domain option to keep
 domain clocks enabled
Thread-Index: AQHXfnGVHmRFaYHAgUqh2fV6LsSq9atkvneA
Date:   Thu, 5 Aug 2021 09:38:57 +0000
Message-ID: <AM5PR0402MB27566D344BC0A3D5BB936EA288F29@AM5PR0402MB2756.eurprd04.prod.outlook.com>
References: <20210716232916.3572966-1-l.stach@pengutronix.de>
 <20210721204703.1424034-1-l.stach@pengutronix.de>
 <20210721204703.1424034-6-l.stach@pengutronix.de>
In-Reply-To: <20210721204703.1424034-6-l.stach@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 403a8b3f-482d-4ee7-3056-08d957f4d924
x-ms-traffictypediagnostic: AS8PR04MB8006:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AS8PR04MB8006426586E9310D5748F38A88F29@AS8PR04MB8006.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 92YXeQYdJz7Uj+dmVHYeQVfuO5HGWNe+owF5iNO+6KnpNjSUNNltJlPlwjCxqwlMoPMGCf++tSJGi8LeAE0SwVwUu1IFTmDX0UVFtbCuBYOPQTvlmWTIMw6n/OX0bZcFsDVqexBEG1a+qM2JO739XyJZ5P8OnSwe2283Vd/9sTaaL+qn9LvjNDMQTytg2kePghDwtu0nCAV5Hi1WMKv8dCC/PzNZDOFiRm8ZYtrk9Ou3i32KFXHq/6TD1CCQKsIr8UwP3iQZUYccHBcKRGIKK/qzi4mYKYzn08io5rPiGJg8u+P/eSp/Z8QJSnqpxL6eBJnI8q5qA9PtwMcL/WitSbeRgjXIfHT6YrnpqE6OlcislKncFtuYs8JkJTg2Fp/4CteDGYS/y6jl+YWLGooiwClLIw9169oU9vmb6lhLU6v+DlB/QI50b3fnkG548sCUtBN6UnkACwem+8sKTcDCMSSH0jBsJXqf2DrFHabGkIqSDaQrJAVDSJcliRZeEIjNSpbGaaB/LqM/oB1bps2zZKydpIc+7J8yqDWW1GWzb+ozXKiT2uRu98X0oa0lWfdWGIc1OLPL7pvaAdVtgqJ0cqTsnctqzmw2rMZjCQM12vRM/4GuRwwcE7t8pTLvh0VIBTIVPlFU9YbE4Y1epZ/TJANF7d0zplAFZhn+L16wd0LzgGpQHdsBsmCManv/YRYkeEnOJSKJd2Jk3VIw7W3hSA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM5PR0402MB2756.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(366004)(136003)(376002)(39860400002)(396003)(76116006)(5660300002)(38100700002)(33656002)(55016002)(2906002)(83380400001)(7696005)(9686003)(6506007)(316002)(4326008)(122000001)(86362001)(71200400001)(186003)(38070700005)(8936002)(8676002)(66556008)(44832011)(478600001)(110136005)(66476007)(26005)(54906003)(64756008)(7416002)(66446008)(66946007)(52536014);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VTK+0fg6nxJhYuYdoS+eub1EeB4u1N+jlT3H0JuQ0JHSHraeI4SFDYNVJwMS?=
 =?us-ascii?Q?E5AMmCJRzKe80RUUz17orUWgqj3qmkdLq6xQ6fqnwJq1yC/U7ty8/U0oAk4B?=
 =?us-ascii?Q?2h2CKfdb0HDNJoxAtYBbUs8vyqursHICTqYbqVHOyCZvEq716MQgZVAXuwUp?=
 =?us-ascii?Q?vZ7P9jJmYPt/3rtaIbtT24cv2oRaKb2NFSrpc/eKtZdaazZ9/K/ToH3Hu8s0?=
 =?us-ascii?Q?XvYgcVeu9joz2u9PVRnEc6QfquiHP7jqE3kupRBsqtfIIggzn005eNT7DdVG?=
 =?us-ascii?Q?6P50L6cK42RU65SVJdw2VlHwbxVheLIL6EwDq0tVLyf1uaMGtyGxC4Qd8zVl?=
 =?us-ascii?Q?9kBurUyJSWeIvfyKUKMBMFTpIVqagqbxqfv2xmfggeNKJ1asru3kf+M2btrV?=
 =?us-ascii?Q?PZ4o61gFiMNrxD+abzxvoJHI38f6Fwcic+1UrW12Z3aFn0elT9JMoEE4GWST?=
 =?us-ascii?Q?aNMvfNkolKimlvGqisppAt0V56WKnD4mfqEGregHEbTHP8dkDQ912GuFhZgw?=
 =?us-ascii?Q?dZh7u/VFdyftHzV4Q3gVB7VVkC5tPZ/0ukVKVm4gkdKTMcAdDxTxCHa7HK4u?=
 =?us-ascii?Q?uYrcVAr73//yGY9ecmzHU/4WvxZ49g1rScHsBHXCc+wwxH7fd+BlsXTZJt08?=
 =?us-ascii?Q?CPj8zOoJG0oCNa+ii+sjsKxCWq8aBJ+6c2KZ7OSHqtYkt+Q6HmTMyzLdepIE?=
 =?us-ascii?Q?ohimxTuU+mIWgRSUofbqdUYqHJQC7fA2Efr+oZtYmmbXFsuiQPLaawPiSSfO?=
 =?us-ascii?Q?cS8tkbCvHjlVjDbpR9sq/+jXi2KoY3Hfj/9Dw2jnpyX7mpQpLrEQKQgIOw9j?=
 =?us-ascii?Q?zCeo0yEBzOIfaiwCUbsZnSlyvXvhxa/aGl+hbXSYEwE+goWMNGd1Vp7Gx5rQ?=
 =?us-ascii?Q?p981scJM3sy6dbhNFldxA6u4Fv2kpBNBmSnSV6yWAKgIFOjIPTP0XcWygaZc?=
 =?us-ascii?Q?mYU+g1J5XaEbohAho2q+bq2ZYbC/v9FIOsarn5KQ9/odE68Kjc5pxiQEhBtZ?=
 =?us-ascii?Q?dmC3cGKWfb+tDCs9QiN0tPlJUngB1jpH/Sn0pYsUbmfXKRkE0C2w8azETBQx?=
 =?us-ascii?Q?ul02LkagrdKK+9lgAgmPk1kHOffsEXCaMxwUtul0aA58Kc+vvNzZeweH4rut?=
 =?us-ascii?Q?n0FuxKsIbodKTjHicbUA29OFDJPjZUVbeh/cpA9KBPnFpY5n5N+F0XiCJ+dU?=
 =?us-ascii?Q?mUmHhMmafi5fvEOXyiciWAIRJqU1Vr04vc8jlTLpuYVkTGCdK1BFqeW6vhUz?=
 =?us-ascii?Q?gEbhNkANmTobz5qfyRSCE6lj2H+nFZIIUUWjj8aiOgbZMTyHT1+8z8R8pPOs?=
 =?us-ascii?Q?OyeBC5TMwOiPo9B0kNLyCygt?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM5PR0402MB2756.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 403a8b3f-482d-4ee7-3056-08d957f4d924
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2021 09:38:57.5690
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8GQ/CzqND+7cpUTlB6laE7GnT44JJFdZbUEfwU+Y/hAQ/kLcnnImX8e4lvzlU7fEz62QCg/bu3f5N4IF7ZkuEg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8006
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> Subject: [PATCH v2 05/18] soc: imx: gpcv2: add domain option to keep
> domain clocks enabled
>=20
> Some of the MIX domains are using clocks to drive the bus bridges. Those
> must be enabled at all times, as long as the domain is powered up and the=
y
> don't have any other consumer than the power domain. Add an option to
> keep the clocks attached to a domain enabled as long as the domain is pow=
er
> up and only disable them after the domain is powered down.
>=20
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Reviewed-by: Peng Fan <peng.fan@nxp.com>

> ---
>  drivers/soc/imx/gpcv2.c | 14 +++++++++-----
>  1 file changed, 9 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c index
> 35f26f57d1ac..c3b1d2580963 100644
> --- a/drivers/soc/imx/gpcv2.c
> +++ b/drivers/soc/imx/gpcv2.c
> @@ -202,6 +202,7 @@ struct imx_pgc_domain {
>  	} bits;
>=20
>  	const int voltage;
> +	const bool keep_clocks;
>  	struct device *dev;
>  };
>=20
> @@ -295,7 +296,8 @@ static int imx_pgc_power_up(struct
> generic_pm_domain *genpd)
>  	}
>=20
>  	/* Disable reset clocks for all devices in the domain */
> -	clk_bulk_disable_unprepare(domain->num_clks, domain->clks);
> +	if (!domain->keep_clocks)
> +		clk_bulk_disable_unprepare(domain->num_clks, domain->clks);
>=20
>  	return 0;
>=20
> @@ -317,10 +319,12 @@ static int imx_pgc_power_down(struct
> generic_pm_domain *genpd)
>  	int ret;
>=20
>  	/* Enable reset clocks for all devices in the domain */
> -	ret =3D clk_bulk_prepare_enable(domain->num_clks, domain->clks);
> -	if (ret) {
> -		dev_err(domain->dev, "failed to enable reset clocks\n");
> -		return ret;
> +	if (!domain->keep_clocks) {
> +		ret =3D clk_bulk_prepare_enable(domain->num_clks, domain->clks);
> +		if (ret) {
> +			dev_err(domain->dev, "failed to enable reset clocks\n");
> +			return ret;
> +		}
>  	}
>=20
>  	/* request the ADB400 to power down */
> --
> 2.30.2


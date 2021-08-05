Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0B44E3E11AD
	for <lists+devicetree@lfdr.de>; Thu,  5 Aug 2021 11:54:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232832AbhHEJzG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Aug 2021 05:55:06 -0400
Received: from mail-eopbgr80071.outbound.protection.outlook.com ([40.107.8.71]:2824
        "EHLO EUR04-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S232930AbhHEJzF (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 5 Aug 2021 05:55:05 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H5LXbIjNn2v0kmlH/vODyEdLryUTfndbvUxKepIKZZ2u1cpYxGrFLkwLtQmuYVxyE2Qx5FLY1YNAjFtCvlXDqLmKBUL1gTiXAMq0O6NAENdz3P4UX7g9LXSpccvtAvOzEfXPbYuGk1FiZMqBiPSNmUBSeJ2GGlTioDUl8kzTaK9tfEs3KL7S0rTNYU98X/FipQbDU8s+wopdp6tj1ZZTdMru2q6LdVM/Alz1EOdo5W2wJaI8P8PeCg9O9J/342Xxuwb0IoF56jXclwMp1J7SgzaU98H2SrHZpRc/Jaiv7twsmBxnotuZlOqyR89p3NSuC3u73iwcU5WboUD1LJ1Uew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k9ONlWicsS0fNift71i1UZNk1SkPajszTvQzJufKT38=;
 b=WSV1ZFoB7SfN54ACxgGIFdNDCGKCzfTyUdwHWtLFk5i5csvjDT8+1Jyyb8qutqFd1TyWAq4HPqIhPCGBgy0XFddphjdxCdmUlayyDhs2+r37Wj5HXSA6r0pAJ9AxPlEjjsCSVBqaV6hkS/TkvGXJgoY7Eb2iE90Jxyq6r4OkIbbSbaLGOuRhGrlj7emRmPwdbMP/eGxYjVHER2yg+FkjxyjZbTOm/rMslzguwiDlCXBNH9y3lRpXbDgt1FKT5TBrrBQnfBLG1QByyGxNmvKaQBrCwxjCiGJkpdaR1Mkufasv4qyeGRZOiDWhGyFMIo9P/7nWUrSrCr59lEmDje4t7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k9ONlWicsS0fNift71i1UZNk1SkPajszTvQzJufKT38=;
 b=XpwDjjGB87Jt7vxdV+1zDyWknJ8vvzFXbJ6Dx7VK9YE90z+frVw9EcDvtDlhMw+c3XFlQK8bZ7JU+FvjO2qPkaYN9wNdqA4OT8+wfJX741GRgyrqP26LRyGkXfC1CtqgGNcufbyAhCEUiwVA4P5FUsVtKdLkbmOicplq2pGY6p8=
Received: from AM5PR0402MB2756.eurprd04.prod.outlook.com
 (2603:10a6:203:99::22) by AM6PR04MB6744.eurprd04.prod.outlook.com
 (2603:10a6:20b:f6::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.25; Thu, 5 Aug
 2021 09:54:49 +0000
Received: from AM5PR0402MB2756.eurprd04.prod.outlook.com
 ([fe80::3839:217:6252:b1f8]) by AM5PR0402MB2756.eurprd04.prod.outlook.com
 ([fe80::3839:217:6252:b1f8%11]) with mapi id 15.20.4373.026; Thu, 5 Aug 2021
 09:54:49 +0000
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
Subject: RE: [PATCH v2 10/18] soc: imx: add i.MX8M blk-ctrl driver
Thread-Topic: [PATCH v2 10/18] soc: imx: add i.MX8M blk-ctrl driver
Thread-Index: AQHXfnGZ46x6mJDAqU6BXQHUavlcEqtkwuew
Date:   Thu, 5 Aug 2021 09:54:49 +0000
Message-ID: <AM5PR0402MB275692FAFE859A8042D2F66E88F29@AM5PR0402MB2756.eurprd04.prod.outlook.com>
References: <20210716232916.3572966-1-l.stach@pengutronix.de>
 <20210721204703.1424034-1-l.stach@pengutronix.de>
 <20210721204703.1424034-11-l.stach@pengutronix.de>
In-Reply-To: <20210721204703.1424034-11-l.stach@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d96a2df1-7a39-45b5-ea07-08d957f7108c
x-ms-traffictypediagnostic: AM6PR04MB6744:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB6744BADCFFE68FAC318C380988F29@AM6PR04MB6744.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1923;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hFRjAEkyeY/2Y/OjjP6+oezcE5+4bHc78GjSx6vU+KMhh2qXfm3cctCHOMe/CTP81NedUBKMFo1apqffeL3N90/E30czfkioYQm4OogqkT8MdAP/jLx6zx4y0uQbXP8g6vE6WarvqKDcy61A8QB6iPPCyueSO1UFXizh8dw/IvCq6KzxtK9H1DjAl/WtfsrRHzl63eogAw96RpJ5dOs2xeQN8tcD5ouIgidtuxNWALsqcviC1p5vMQZuOkLj1QYVaipMIGxVY8C5d8MLliW/g2DebUHnjNR2MlvJTSSOtUdwE2bBeXSTy9Nvz9fhlFyvjaJZouwMb0iRKIHyZSJReq0ImhUAmfRsgDqnlvgfC/VubctZzfFnn4uJOwEuG/gCkHgj9mMDjj5Gb++cgITZ4E+sd6WtzN+xjnSEHE38s6iNatwGO0/7C3zHSGPqsE0pXI1fE0xXABjD/h4meItq6fjH55RDWX0PNzVruzLQH2QJGzlpr8gCV7lLFIBcwPmpQoyywjc8xz2FNL6KMF9Phc84zWuxKLvPQ1apKgqw+jQiPTqgg16gEgltVArhf028Lsm9eKDQMl1TtcZTgNnNp6yo7VfPb7i/UQK+vlWqPEG7t5R/SakxtgHwS2kcclfw6FrQCPEwEDrVRaJSAALcuSbUGhWHe0OBsQWYEF6MWgelTqprFr89pG32QDZN6J/E5UbdsqZYUuNlY8TmM1MMDw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM5PR0402MB2756.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(346002)(366004)(396003)(39860400002)(376002)(6506007)(8936002)(33656002)(66476007)(83380400001)(186003)(66946007)(4326008)(26005)(8676002)(66556008)(5660300002)(64756008)(66446008)(9686003)(86362001)(52536014)(30864003)(7416002)(316002)(71200400001)(55016002)(478600001)(76116006)(44832011)(54906003)(2906002)(122000001)(110136005)(7696005)(38100700002)(38070700005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xNXJg5xGbK+KUANs6qKpL915/6rhEflf+4/wUTGP2LlrTsU2JiWYZKFguuva?=
 =?us-ascii?Q?et8BaIEvQ/gvhrRhdPqDdBe45axK8uJx1+cd76Xe8KhVzew2mu0tPP2m4Zf6?=
 =?us-ascii?Q?XAat7qbrEEs0XFemZvYEOWzZnCWGp83cmR+9sM4lZ5/AXF1+ghUewwan02kJ?=
 =?us-ascii?Q?P4CWC3AEgyTV/AwCV6lsA+3RZDudZTzGYPOwDAqzBZis2qHqkkvRGC59tQjk?=
 =?us-ascii?Q?p4/DYp7bo8SoH/ImgbPiAqkxmSI4XCdlWKaYa9nnlm7a5daDfqSOgUGUW2aM?=
 =?us-ascii?Q?Kbj7r5LPp3vPn9ZVmdwSOwgFJznftl7vqrlQswI9/uRAaxRVO0Seid3b4WBE?=
 =?us-ascii?Q?ZbgX9McBDkEwAFf6JLq47iOBOwwIqe0d6KiaqyqbQMHaoct8wB5rI83yx/4s?=
 =?us-ascii?Q?jQPB4GKIo/cMCT0n2k/9TykVw8QZupLhShgtCuTQI4EstnFiWdwDJ+f0DcEP?=
 =?us-ascii?Q?97sKjzPBNaHxEcjvGNR6thu1xSsaiu8SGgt/hc5vt011BrE0hgRKO381ARem?=
 =?us-ascii?Q?dToh+h/E/ZngrncjBLve7kE08Wy4Luwxwcu74VS+AHezvyrv6M1Q/x3vbkTn?=
 =?us-ascii?Q?rmvUj7Lu2AKe8CFd/SyKQfVZJInVyHgStT0sdiakhiVvVP0PL8Rptju7bb5I?=
 =?us-ascii?Q?ziplVNp4c+huqjIURQKcNHrspWGNTytZrrODbVhYzAXCOY7g7EcoP4cAj4JQ?=
 =?us-ascii?Q?uVJTleGZqDZfOC0XbeiLrBhWpRbVw7AM4MZfZfItxjqQrZBkmbLIVsmHR5be?=
 =?us-ascii?Q?jVG85NOxTgARu4t3yJoqFAYLtfd/bObaG9B+im1CjZXEkd3C2bOGfqxuoFDK?=
 =?us-ascii?Q?VmOtNhIIX308RlSlVraLh1uFF5iK7bDS4uGGRhkC7gwAYkkMdXqXdxTGtY+m?=
 =?us-ascii?Q?sw/sJvtbctxmZtocHZdoTwnx3uINx7AfFNB9cvv3hPR3bZHOGye1Yz9AivBA?=
 =?us-ascii?Q?7wox2syaVoetqg1lq5pKLd7Js91qgYXq8vqFGDwiMFZhX2vzpixiVLJL6ZrC?=
 =?us-ascii?Q?TY+z1cGvhUgj8qY7UjYyNInnjozuxixYlSe/NpCToxm2oJU3YlLU+e0vaAWP?=
 =?us-ascii?Q?AwdevgAkMzrvTST55w3cZporsSUcigX3pcOHfZPyWzLyUf4j0lAssp6Cujc7?=
 =?us-ascii?Q?IIA140QT66F51Jy4aUaGdRfOlDHuZzqsd3AX9CJ1Kz65udbwxP06CmPDFNpz?=
 =?us-ascii?Q?SlhzkIG9ReL3hH4aS93jtkkNpq1gO2EyJiE2Mc5bzZ7jZcVeoOBU/jDJONpU?=
 =?us-ascii?Q?FSOR9loOV9/3ulLw/b3A6f7wFy3WPA4gJtXRON2mIzDQJCEbzzz7ZXFPgmv/?=
 =?us-ascii?Q?eFmsUVMd+0urRwMKU4jYrskO?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM5PR0402MB2756.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d96a2df1-7a39-45b5-ea07-08d957f7108c
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2021 09:54:49.5265
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fVW+w1o1PaLC1Gd+IlWjWjs3nluw9auz9FzVRD5i/XTScu3nCkneX+i7YRLR+l8XnHmhaeWGu4IgzH/SggXwsQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6744
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> Subject: [PATCH v2 10/18] soc: imx: add i.MX8M blk-ctrl driver
>=20
> This adds a driver for the blk-ctrl blocks found in the i.MX8M* line of S=
oCs.
> The blk-ctrl is a top-level peripheral located in the various *MIX power
> domains and interacts with the GPC power controller to provide the
> peripherals in the power domain access to the NoC and ensures that those
> peripherals are properly reset when their respective power domain is brou=
ght
> back to life.
>=20
> Software needs to do different things to make the bus handshake happen
> after the the GPC *MIX domain is power up and before it is powered down.
> As the requirements are quite different between the various blk-ctrls the=
re is
> a callback function provided to hook in the proper sequence.
>=20
> The peripheral domains are quite uniform, they handle the soft clock enab=
les
> and resets in the blk-ctrl address space and sequencing with the upstream
> GPC power domains.
>=20
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Reviewed-by: Peng Fan <peng.fan@nxp.com>

> ---
> This commit includes the full code to drive the VPUMIX domain on the
> i.MX8MM, as the skeleton driver would probably be harder to review withou=
t
> the context provided by one blk-ctrl implementation. Other blk-ctrl
> implementations will follow, based on this overall structure.
> ---
>  drivers/soc/imx/Makefile         |   1 +
>  drivers/soc/imx/imx8m-blk-ctrl.c | 455
> +++++++++++++++++++++++++++++++
>  2 files changed, 456 insertions(+)
>  create mode 100644 drivers/soc/imx/imx8m-blk-ctrl.c
>=20
> diff --git a/drivers/soc/imx/Makefile b/drivers/soc/imx/Makefile index
> 078dc918f4f3..8a707077914c 100644
> --- a/drivers/soc/imx/Makefile
> +++ b/drivers/soc/imx/Makefile
> @@ -5,3 +5,4 @@ endif
>  obj-$(CONFIG_HAVE_IMX_GPC) +=3D gpc.o
>  obj-$(CONFIG_IMX_GPCV2_PM_DOMAINS) +=3D gpcv2.o
>  obj-$(CONFIG_SOC_IMX8M) +=3D soc-imx8m.o
> +obj-$(CONFIG_SOC_IMX8M) +=3D imx8m-blk-ctrl.o
> diff --git a/drivers/soc/imx/imx8m-blk-ctrl.c
> b/drivers/soc/imx/imx8m-blk-ctrl.c
> new file mode 100644
> index 000000000000..3dd17b903636
> --- /dev/null
> +++ b/drivers/soc/imx/imx8m-blk-ctrl.c
> @@ -0,0 +1,455 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +
> +/*
> + * Copyright 2021 Pengutronix, Lucas Stach <kernel@pengutronix.de>  */
> +
> +#include <linux/device.h>
> +#include <linux/module.h>
> +#include <linux/of_device.h>
> +#include <linux/platform_device.h>
> +#include <linux/pm_domain.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/regmap.h>
> +#include <linux/clk.h>
> +
> +#include <dt-bindings/power/imx8mm-power.h>
> +
> +#define BLK_SFT_RSTN	0x0
> +#define BLK_CLK_EN	0x4
> +
> +struct imx8m_blk_ctrl_domain;
> +
> +struct imx8m_blk_ctrl {
> +	struct device *dev;
> +	struct notifier_block power_nb;
> +	struct device *bus_power_dev;
> +	struct regmap *regmap;
> +	struct imx8m_blk_ctrl_domain *domains;
> +	struct genpd_onecell_data onecell_data; };
> +
> +struct imx8m_blk_ctrl_domain_data {
> +	const char *name;
> +	const char **clk_names;
> +	int num_clks;
> +	const char *gpc_name;
> +	u32 rst_mask;
> +	u32 clk_mask;
> +};
> +
> +#define DOMAIN_MAX_CLKS 3
> +
> +struct imx8m_blk_ctrl_domain {
> +	struct generic_pm_domain genpd;
> +	const struct imx8m_blk_ctrl_domain_data *data;
> +	struct clk_bulk_data clks[DOMAIN_MAX_CLKS];
> +	struct device *power_dev;
> +	struct imx8m_blk_ctrl *bc;
> +};
> +
> +struct imx8m_blk_ctrl_data {
> +	int max_reg;
> +	notifier_fn_t power_notifier_fn;
> +	const struct imx8m_blk_ctrl_domain_data *domains;
> +	int num_domains;
> +};
> +
> +static inline struct imx8m_blk_ctrl_domain *
> +to_imx8m_blk_ctrl_domain(struct generic_pm_domain *genpd) {
> +	return container_of(genpd, struct imx8m_blk_ctrl_domain, genpd); }
> +
> +static int imx8m_blk_ctrl_power_on(struct generic_pm_domain *genpd) {
> +	struct imx8m_blk_ctrl_domain *domain =3D
> to_imx8m_blk_ctrl_domain(genpd);
> +	const struct imx8m_blk_ctrl_domain_data *data =3D domain->data;
> +	struct imx8m_blk_ctrl *bc =3D domain->bc;
> +	int ret;
> +
> +	/* make sure bus domain is awake */
> +	ret =3D pm_runtime_get_sync(bc->bus_power_dev);
> +	if (ret < 0) {
> +		pm_runtime_put_noidle(bc->bus_power_dev);
> +		dev_err(bc->dev, "failed to power up bus domain\n");
> +		return ret;
> +	}
> +
> +	/* put devices into reset */
> +	regmap_clear_bits(bc->regmap, BLK_SFT_RSTN, data->rst_mask);
> +
> +	/* enable upstream and blk-ctrl clocks to allow reset to propagate */
> +	ret =3D clk_bulk_prepare_enable(data->num_clks, domain->clks);
> +	if (ret) {
> +		dev_err(bc->dev, "failed to enable clocks\n");
> +		goto bus_put;
> +	}
> +	regmap_set_bits(bc->regmap, BLK_CLK_EN, data->clk_mask);
> +
> +	/* power up upstream GPC domain */
> +	ret =3D pm_runtime_get_sync(domain->power_dev);
> +	if (ret < 0) {
> +		dev_err(bc->dev, "failed to power up peripheral domain\n");
> +		goto clk_disable;
> +	}
> +
> +	/* wait for reset to propagate */
> +	udelay(5);
> +
> +	/* release reset */
> +	regmap_set_bits(bc->regmap, BLK_SFT_RSTN, data->rst_mask);
> +
> +	/* disable upstream clocks */
> +	clk_bulk_disable_unprepare(data->num_clks, domain->clks);
> +
> +	return 0;
> +
> +clk_disable:
> +	clk_bulk_disable_unprepare(data->num_clks, domain->clks);
> +bus_put:
> +	pm_runtime_put(bc->bus_power_dev);
> +
> +	return ret;
> +}
> +
> +static int imx8m_blk_ctrl_power_off(struct generic_pm_domain *genpd) {
> +	struct imx8m_blk_ctrl_domain *domain =3D
> to_imx8m_blk_ctrl_domain(genpd);
> +	const struct imx8m_blk_ctrl_domain_data *data =3D domain->data;
> +	struct imx8m_blk_ctrl *bc =3D domain->bc;
> +
> +	/* put devices into reset and disable clocks */
> +	regmap_clear_bits(bc->regmap, BLK_SFT_RSTN, data->rst_mask);
> +	regmap_clear_bits(bc->regmap, BLK_CLK_EN, data->clk_mask);
> +
> +	/* power down upstream GPC domain */
> +	pm_runtime_put(domain->power_dev);
> +
> +	/* allow bus domain to suspend */
> +	pm_runtime_put(bc->bus_power_dev);
> +
> +	return 0;
> +}
> +
> +static struct generic_pm_domain *
> +imx8m_blk_ctrl_xlate(struct of_phandle_args *args, void *data) {
> +	struct genpd_onecell_data *onecell_data =3D data;
> +	unsigned int index =3D args->args[0];
> +
> +	if (args->args_count !=3D 1 ||
> +	    index > onecell_data->num_domains)
> +		return ERR_PTR(-EINVAL);
> +
> +	return onecell_data->domains[index];
> +}
> +
> +static struct lock_class_key blk_ctrl_genpd_lock_class;
> +
> +static int imx8m_blk_ctrl_probe(struct platform_device *pdev) {
> +	const struct imx8m_blk_ctrl_data *bc_data;
> +	struct device *dev =3D &pdev->dev;
> +	struct imx8m_blk_ctrl *bc;
> +	void __iomem *base;
> +	int i, ret;
> +
> +	struct regmap_config regmap_config =3D {
> +		.reg_bits	=3D 32,
> +		.val_bits	=3D 32,
> +		.reg_stride	=3D 4,
> +	};
> +
> +	bc =3D devm_kzalloc(dev, sizeof(*bc), GFP_KERNEL);
> +	if (!bc)
> +		return -ENOMEM;
> +
> +	bc->dev =3D dev;
> +
> +	bc_data =3D of_device_get_match_data(dev);
> +
> +	base =3D devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(base))
> +		return PTR_ERR(base);
> +
> +	regmap_config.max_register =3D bc_data->max_reg;
> +	bc->regmap =3D devm_regmap_init_mmio(dev, base, &regmap_config);
> +	if (IS_ERR(bc->regmap))
> +		return dev_err_probe(dev, PTR_ERR(bc->regmap),
> +				     "failed to init regmap \n");
> +
> +	bc->domains =3D devm_kcalloc(dev, bc_data->num_domains,
> +				    sizeof(struct imx8m_blk_ctrl_domain),
> +				    GFP_KERNEL);
> +	if (!bc->domains)
> +		return -ENOMEM;
> +
> +	bc->onecell_data.num_domains =3D bc_data->num_domains;
> +	bc->onecell_data.xlate =3D imx8m_blk_ctrl_xlate;
> +	bc->onecell_data.domains =3D
> +		devm_kcalloc(dev, bc_data->num_domains,
> +			     sizeof(struct generic_pm_domain *), GFP_KERNEL);
> +	if (!bc->onecell_data.domains)
> +		return -ENOMEM;
> +
> +	bc->bus_power_dev =3D genpd_dev_pm_attach_by_name(dev, "bus");
> +	if (IS_ERR(bc->bus_power_dev))
> +		return dev_err_probe(dev, PTR_ERR(bc->bus_power_dev),
> +				     "failed to attach power domain\n");
> +
> +	for (i =3D 0; i < bc_data->num_domains; i++) {
> +		const struct imx8m_blk_ctrl_domain_data *data =3D
> &bc_data->domains[i];
> +		struct imx8m_blk_ctrl_domain *domain =3D &bc->domains[i];
> +		int j;
> +
> +		domain->data =3D data;
> +
> +		for (j =3D 0; j < data->num_clks; j++)
> +			domain->clks[j].id =3D data->clk_names[j];
> +
> +		ret =3D devm_clk_bulk_get(dev, data->num_clks, domain->clks);
> +		if (ret) {
> +			dev_err_probe(dev, ret, "failed to get clock\n");
> +			goto cleanup_pds;
> +		}
> +
> +		domain->power_dev =3D
> +			dev_pm_domain_attach_by_name(dev, data->gpc_name);
> +		if (IS_ERR(domain->power_dev)) {
> +			dev_err_probe(dev, PTR_ERR(domain->power_dev),
> +				      "failed to attach power domain\n");
> +			ret =3D PTR_ERR(domain->power_dev);
> +			goto cleanup_pds;
> +		}
> +
> +		domain->genpd.name =3D data->name;
> +		domain->genpd.power_on =3D imx8m_blk_ctrl_power_on;
> +		domain->genpd.power_off =3D imx8m_blk_ctrl_power_off;
> +		domain->bc =3D bc;
> +
> +		ret =3D pm_genpd_init(&domain->genpd, NULL, true);
> +		if (ret) {
> +			dev_err_probe(dev, ret, "failed to init power domain\n");
> +			dev_pm_domain_detach(domain->power_dev, true);
> +			goto cleanup_pds;
> +		}
> +
> +		/*
> +		 * We use runtime PM to trigger power on/off of the upstream GPC
> +		 * domain, as a strict hierarchical parent/child power domain
> +		 * setup doesn't allow us to meet the sequencing requirements.
> +		 * This means we have nested locking of genpd locks, without the
> +		 * nesting being visible at the genpd level, so we need a
> +		 * separate lock class to make lockdep aware of the fact that
> +		 * this are separate domain locks that can be nested without a
> +		 * self-deadlock.
> +		 */
> +		lockdep_set_class(&domain->genpd.mlock,
> +				  &blk_ctrl_genpd_lock_class);
> +
> +		bc->onecell_data.domains[i] =3D &domain->genpd;
> +	}
> +
> +	ret =3D of_genpd_add_provider_onecell(dev->of_node,
> &bc->onecell_data);
> +	if (ret) {
> +		dev_err_probe(dev, ret, "failed to add power domain provider\n");
> +		goto cleanup_pds;
> +	}
> +
> +	bc->power_nb.notifier_call =3D bc_data->power_notifier_fn;
> +	ret =3D dev_pm_genpd_add_notifier(bc->bus_power_dev,
> &bc->power_nb);
> +	if (ret) {
> +		dev_err_probe(dev, ret, "failed to add power notifier\n");
> +		goto cleanup_provider;
> +	}
> +
> +	dev_set_drvdata(dev, bc);
> +
> +	return 0;
> +
> +cleanup_provider:
> +	of_genpd_del_provider(dev->of_node);
> +cleanup_pds:
> +	for (i--; i >=3D 0; i--) {
> +		pm_genpd_remove(&bc->domains[i].genpd);
> +		dev_pm_domain_detach(bc->domains[i].power_dev, true);
> +	}
> +
> +	dev_pm_domain_detach(bc->bus_power_dev, true);
> +
> +	return ret;
> +}
> +
> +static int imx8m_blk_ctrl_remove(struct platform_device *pdev) {
> +	struct imx8m_blk_ctrl *bc =3D dev_get_drvdata(&pdev->dev);
> +	int i;
> +
> +	of_genpd_del_provider(pdev->dev.of_node);
> +
> +	for (i =3D 0; bc->onecell_data.num_domains; i++) {
> +		struct imx8m_blk_ctrl_domain *domain =3D &bc->domains[i];
> +
> +		pm_genpd_remove(&domain->genpd);
> +		dev_pm_domain_detach(domain->power_dev, true);
> +	}
> +
> +	dev_pm_genpd_remove_notifier(bc->bus_power_dev);
> +
> +	dev_pm_domain_detach(bc->bus_power_dev, true);
> +
> +	return 0;
> +}
> +
> +#ifdef CONFIG_PM_SLEEP
> +static int imx8m_blk_ctrl_suspend(struct device *dev) {
> +	struct imx8m_blk_ctrl *bc =3D dev_get_drvdata(dev);
> +	int ret, i;
> +
> +	/*
> +	 * This may look strange, but is done so the generic PM_SLEEP code
> +	 * can power down our domains and more importantly power them up
> again
> +	 * after resume, without tripping over our usage of runtime PM to
> +	 * control the upstream GPC domains. Things happen in the right order
> +	 * in the system suspend/resume paths due to the device parent/child
> +	 * hierarchy.
> +	 */
> +	ret =3D pm_runtime_get_sync(bc->bus_power_dev);
> +	if (ret < 0) {
> +		pm_runtime_put_noidle(bc->bus_power_dev);
> +		return ret;
> +	}
> +
> +	for (i =3D 0; i < bc->onecell_data.num_domains; i++) {
> +		struct imx8m_blk_ctrl_domain *domain =3D &bc->domains[i];
> +
> +		ret =3D pm_runtime_get_sync(domain->power_dev);
> +		if (ret < 0) {
> +			pm_runtime_put_noidle(domain->power_dev);
> +			goto out_fail;
> +		}
> +	}
> +
> +	return 0;
> +
> +out_fail:
> +	for (i--; i >=3D 0; i--)
> +		pm_runtime_put(bc->domains[i].power_dev);
> +
> +	pm_runtime_put(bc->bus_power_dev);
> +
> +	return ret;
> +}
> +
> +static int imx8m_blk_ctrl_resume(struct device *dev) {
> +	struct imx8m_blk_ctrl *bc =3D dev_get_drvdata(dev);
> +	int i;
> +
> +	for (i =3D 0; i < bc->onecell_data.num_domains; i++)
> +		pm_runtime_put(bc->domains[i].power_dev);
> +
> +	pm_runtime_put(bc->bus_power_dev);
> +
> +	return 0;
> +}
> +#endif
> +
> +static const struct dev_pm_ops imx8m_blk_ctrl_pm_ops =3D {
> +	SET_SYSTEM_SLEEP_PM_OPS(imx8m_blk_ctrl_suspend,
> imx8m_blk_ctrl_resume)
> +};
> +
> +static int imx8mm_vpu_power_notifier(struct notifier_block *nb,
> +				     unsigned long action, void *data) {
> +	struct imx8m_blk_ctrl *bc =3D container_of(nb, struct imx8m_blk_ctrl,
> +						 power_nb);
> +
> +	if (action !=3D GENPD_NOTIFY_ON && action !=3D
> GENPD_NOTIFY_PRE_OFF)
> +		return NOTIFY_OK;
> +
> +	/*
> +	 * The ADB in the VPUMIX domain has no separate reset and clock
> +	 * enable bits, but is ungated together with the VPU clocks. To
> +	 * allow the handshake with the GPC to progress we put the VPUs
> +	 * in reset and ungate the clocks.
> +	 */
> +	regmap_clear_bits(bc->regmap, BLK_SFT_RSTN,
> +			  BIT(0) | BIT(1) | BIT(2));
> +	regmap_set_bits(bc->regmap, BLK_CLK_EN,
> +			BIT(0) | BIT(1) | BIT(2));
> +
> +	if (action =3D=3D GENPD_NOTIFY_ON) {
> +		/*
> +		 * On power up we have no software backchannel to the GPC to
> +		 * wait for the ADB handshake to happen, so we just delay for a
> +		 * bit. On power down the GPC driver waits for the handshake.
> +		 */
> +		udelay(5);
> +
> +		/* set "fuse" bits to enable the VPUs */
> +		regmap_set_bits(bc->regmap, 0x8, 0xffffffff);
> +		regmap_set_bits(bc->regmap, 0xc, 0xffffffff);
> +		regmap_set_bits(bc->regmap, 0x10, 0xffffffff);
> +		regmap_set_bits(bc->regmap, 0x14, 0xffffffff);
> +	}
> +
> +	return NOTIFY_OK;
> +}
> +
> +static const struct imx8m_blk_ctrl_domain_data
> imx8m_vpu_blk_ctl_domain_data[] =3D {
> +	[IMX8MM_VPUBLK_PD_G1] =3D {
> +		.name =3D "vpublk-g1",
> +		.clk_names =3D (const char *[]){ "g1", },
> +		.num_clks =3D 1,
> +		.gpc_name =3D "g1",
> +		.rst_mask =3D BIT(1),
> +		.clk_mask =3D BIT(1),
> +	},
> +	[IMX8MM_VPUBLK_PD_G2] =3D {
> +		.name =3D "vpublk-g2",
> +		.clk_names =3D (const char *[]){ "g2", },
> +		.num_clks =3D 1,
> +		.gpc_name =3D "g2",
> +		.rst_mask =3D BIT(0),
> +		.clk_mask =3D BIT(0),
> +	},
> +	[IMX8MM_VPUBLK_PD_H1] =3D {
> +		.name =3D "vpublk-h1",
> +		.clk_names =3D (const char *[]){ "h1", },
> +		.num_clks =3D 1,
> +		.gpc_name =3D "h1",
> +		.rst_mask =3D BIT(2),
> +		.clk_mask =3D BIT(2),
> +	},
> +};
> +
> +static const struct imx8m_blk_ctrl_data imx8m_vpu_blk_ctl_dev_data =3D {
> +	.max_reg =3D 0x18,
> +	.power_notifier_fn =3D imx8mm_vpu_power_notifier,
> +	.domains =3D imx8m_vpu_blk_ctl_domain_data,
> +	.num_domains =3D ARRAY_SIZE(imx8m_vpu_blk_ctl_domain_data),
> +};
> +
> +static const struct of_device_id imx8m_blk_ctrl_of_match[] =3D {
> +	{
> +		.compatible =3D "fsl,imx8mm-vpu-blk-ctrl",
> +		.data =3D &imx8m_vpu_blk_ctl_dev_data
> +	}, {
> +		/* Sentinel */
> +	}
> +};
> +MODULE_DEVICE_TABLE(of, imx8m_blk_ctrl_of_match);
> +
> +static struct platform_driver imx8m_blk_ctrl_driver =3D {
> +	.probe =3D imx8m_blk_ctrl_probe,
> +	.remove =3D imx8m_blk_ctrl_remove,
> +	.driver =3D {
> +		.name =3D "imx8m-blk-ctrl",
> +		.pm =3D &imx8m_blk_ctrl_pm_ops,
> +		.of_match_table =3D imx8m_blk_ctrl_of_match,
> +	},
> +};
> +module_platform_driver(imx8m_blk_ctrl_driver);
> --
> 2.30.2


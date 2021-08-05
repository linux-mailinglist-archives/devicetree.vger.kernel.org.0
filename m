Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E5B43E11AA
	for <lists+devicetree@lfdr.de>; Thu,  5 Aug 2021 11:53:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239852AbhHEJxz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Aug 2021 05:53:55 -0400
Received: from mail-eopbgr80058.outbound.protection.outlook.com ([40.107.8.58]:36678
        "EHLO EUR04-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S232930AbhHEJxy (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 5 Aug 2021 05:53:54 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KcVleGBjevBoTWWC5U9gt3alTcPK0G48ggMf1QxTpxN2EXJM491DeUvWdzQ0TKyAHanUdrlMRaqan/7X/JjfccVjxUbceXdpaUpRj6Fp+dkcCD3hKDXyjC3dp+FZldrQ4vwvqIbpLRIqqq6jMrpzVE0YgoM8kiLgsBSV6VBxdSksfAfjbyxEPWA63EvCgETtMu2UJcRQekghkr2zUYkUTqNUTzPsrH0BYD0AJbQLXzEQVuMejevOdvasvMDRNKGIjgghShgaqGz0ykzGqcMDnphB15hYEDz/O5mP7KkhjiSKT409Ak48aKQ7R6ryhPaV/3bWO0AAn0MimuuxkFqUYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xUW7tjRMirqEC0b2nFhDW42b0CS8G6tm/tDTlpHSOko=;
 b=GhmtMXa6aOsADQBZU6yk3wwvbx61dodVg2V63akqFk5wyVEbQwN5k3Q1EcHPXQFueA/bOF78AJ0Lyi5Lr+nDZvtTXyqv9LhnNIJqLf02HkMG0JOwkKJ4abHdaiwhGUqJyKgeMvqV4Rx3taf47upFO5Rfi7wP3a/P7oE+tqwrZyHMTZYvE/7x/N0ijw/oowvVEcYrcR05i7gkqwaPnV0IvUQSRYfJpIznAXCzPELL5qMSx1/KZKXMWF3QrvzwA+5wZ1HecXQXThmccuCnccFY23W2rjlaLtnNiQpNkCzOXhPOfOh2o4yF2Tv0AY1BJcq40ltKWQMR/9fBE1oI6k8zNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xUW7tjRMirqEC0b2nFhDW42b0CS8G6tm/tDTlpHSOko=;
 b=ogKBuIZPprvmIlxZaAZyj4ty+0yDSoSlhW9svlUxw86iZalEZJD4pHjIHe+bS3LG4fnm46dD7bMoNY/rQagT4FZx6HBamqZi8kI1EGhSMteZZ+mtKjmrr0NOJ0bs8mmBusAGe3MZG/7nKmuaBDoQEoIjHucop8xIjWb87YU5+yY=
Received: from AM5PR0402MB2756.eurprd04.prod.outlook.com
 (2603:10a6:203:99::22) by AM6PR04MB6744.eurprd04.prod.outlook.com
 (2603:10a6:20b:f6::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.25; Thu, 5 Aug
 2021 09:53:38 +0000
Received: from AM5PR0402MB2756.eurprd04.prod.outlook.com
 ([fe80::3839:217:6252:b1f8]) by AM5PR0402MB2756.eurprd04.prod.outlook.com
 ([fe80::3839:217:6252:b1f8%11]) with mapi id 15.20.4373.026; Thu, 5 Aug 2021
 09:53:38 +0000
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
Subject: RE: [PATCH v2 13/18] soc: imx: imx8m-blk-ctrl: add DISP blk-ctrl
Thread-Topic: [PATCH v2 13/18] soc: imx: imx8m-blk-ctrl: add DISP blk-ctrl
Thread-Index: AQHXfnGYlmXWK493wkWeB+pH7SXYi6tkwouA
Date:   Thu, 5 Aug 2021 09:53:38 +0000
Message-ID: <AM5PR0402MB2756A63D0670BBCE0D790D5188F29@AM5PR0402MB2756.eurprd04.prod.outlook.com>
References: <20210716232916.3572966-1-l.stach@pengutronix.de>
 <20210721204703.1424034-1-l.stach@pengutronix.de>
 <20210721204703.1424034-14-l.stach@pengutronix.de>
In-Reply-To: <20210721204703.1424034-14-l.stach@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fa4aa240-134b-4be4-3a1e-08d957f6e65d
x-ms-traffictypediagnostic: AM6PR04MB6744:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB6744EEEBF1624A0D9CD8101188F29@AM6PR04MB6744.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:962;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BAE5lOBKeg0yPoNiTqK9wuXJDWzhS/+T6WV1jO3uccXB4lOcv43fh2nyswWWUPJaXoEOrtokaXpzhI0PAP/s4MxVFp/5xfXuwwPB7w6Nz9mbCNIsn5SmrYDPcIaqdnazYkfpD42r2FVbPWFlyTAFYL4dzAy+SoFguWuwB0HpDH3p35KnlVYFZEs2ct2xKIM+BlKIPfzx8+3/2OxbnI3LQ9iduv3PMq0yZK+66VfJmCGzEUDMkxDdZ5TPYzLlvBjnXnxmYLTl0ZLtm6ZKv+XOM56/yIDy0w7MJSecrCH8cDn85ywYFeLAVXmqN657ZZQCb3LCo/hP/L3Bp7DaHSnfp8QwGAzspeE2WqcWaDKuIjg9TyT77WTqnFBnhO8YTBHjEgQnQhSvOE/KGx52AUbqsgQFHZotjmTaf2bICJHUw92q8h9z5jahgdvUmQXOV1xa2QRjjOdt/cRu60tt+BnQFNbuZnxm4CeBi06WbgzM9tnnkPtoXbQcU2KxVniZwGOjbB6WXSAzJr0Vhz6p8vu0eTvWvLCiZy1ijhLuhgxd/n888DWr/BBQiLJM9+QK1Jzxc16z43OJXDV6svP5NeTeNyOr+CIakY0cfO3xKeho0Mys/qnRGUX93I95R+AV1/x3bNeP6dR/LpjHLgvHwFGnvTUIFGlIMCPLUlIAfvPKANThC7O3Tme4lnI1AVRgsHbPordfiWRt7jyy+/Gir3ThENAGySmQ72aqdPLFYwmWfVw=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM5PR0402MB2756.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(346002)(366004)(396003)(39860400002)(376002)(6506007)(8936002)(33656002)(66476007)(83380400001)(186003)(66946007)(4326008)(26005)(8676002)(66556008)(5660300002)(64756008)(66446008)(9686003)(86362001)(52536014)(7416002)(316002)(71200400001)(55016002)(478600001)(76116006)(44832011)(54906003)(2906002)(122000001)(110136005)(7696005)(38100700002)(38070700005)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zWNjxRxBxW9cgfv9FvfxJFlrPqj91QwO8lS6wMbT9/6ZZ0VPPqlFqRu6FM6N?=
 =?us-ascii?Q?+GtGnByN5iMe/kTZ1xOfwGXJtTKqA6I2OZIQ2e6eELKxnFC11dtBt/6cxJXb?=
 =?us-ascii?Q?qNf6DD+0UBqGe/wFzXbF/o9vEtQgGNNk5U3aX2/kp/7JFjVuDan8kyZN0E0R?=
 =?us-ascii?Q?qX8iMDTTNnQU/6LrG1rHey6t/95MfgeeAXJJtBCjRQ1RKu//75014d/GimCc?=
 =?us-ascii?Q?NBClzQty6Q4sBzKm0Wb06QnYsfvIbBfUapJ7V/9VGx3JTcfw3dqEES5JIG3+?=
 =?us-ascii?Q?KJ2r/OxnumK009pTdXGVcXHoBXisy2Gqm8iYdVeuv/oKFFr9kcXzAgJRfYEl?=
 =?us-ascii?Q?fvJBOsBNLcTyyPSen0uz4EIumOekRE6AY6ZH9nErauZJvgIGjhHJKbYEqrmD?=
 =?us-ascii?Q?y9f73ssUg8LsD4VeDFprK56C5Y5WNryz+jHogZrl654xBrNuT7kaOJYmpQn3?=
 =?us-ascii?Q?Ob3y3T1bZ+IZs5cBeSn18KUkFjU8iw6UppKENYrI835Sfb75hsyCMAtOFUCc?=
 =?us-ascii?Q?vh8y9MnzJjUKgZyrIJ5mELimc9xmFMxbvtB4iqtUx2XkXYz0G79zZNR4p4Za?=
 =?us-ascii?Q?rerWxZeRU3eysSSQddsKACG3I/3iTimARxsx/tDWeWPfMLAsPyRSNfs0YCVK?=
 =?us-ascii?Q?VFBIMzX7i/e6TH0xvFF5S9daB/nJYN9dh03E5sx+hxyEVaUsgfT5vxh++uLp?=
 =?us-ascii?Q?5k593300g7OPVX4+wkr9xtTYIBPe2tHgEf853HM+vPhwKLvqhntODWuroBAb?=
 =?us-ascii?Q?pzHhhTIgicqlS2Mgz1zoPxdX2rGptT+anaUDTEvuSQpHEnjAwzGLZqhDnPwZ?=
 =?us-ascii?Q?H+rwhlPFBlAJURJL64Wopr3GQhaEWf0GuSstPzRkxq2XeSv8QN48bMUPZpnE?=
 =?us-ascii?Q?VnxGj5XyWe8oR6mpHt0zilW4RB0SZoiS/d+vWDLWq7SqMcb121ohGSFOvRy1?=
 =?us-ascii?Q?PopssXPcW56Ba+6TmuCee/rxRenk2ZvjKwYCA0ArgzPvCyZ7DU2stGHBgmch?=
 =?us-ascii?Q?9w6x+WOsJV6YM3Rv422J49zc3UfutCbhyPaw/yiynAnTplH0XHDqg9kX56RZ?=
 =?us-ascii?Q?GBJDk4adMyjDb56gGM5P2iGBWLBNJ55jAkZbEOFExfvWoWmyFxJ6vrsZY7d7?=
 =?us-ascii?Q?tEzt1jEk32OGfM1jAbTTVqWI+VCYDLY0yINtcTpL0mPBjqh7vP3C6C3Q23Zw?=
 =?us-ascii?Q?/8R9C+jN4TKqy5mYWkgnfJp2uktVV9XHR8AWuTPyg3hb8anFORRAdYspJqvv?=
 =?us-ascii?Q?UWiWExDEEM+5mpAsHgyx6HbQF7r75Z1C803O5gcO5p9P7UVV3Z5zOy/U8JiS?=
 =?us-ascii?Q?vGgrU5p0HSfIYVSX4m/OQFIx?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM5PR0402MB2756.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa4aa240-134b-4be4-3a1e-08d957f6e65d
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2021 09:53:38.7536
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 43vdmleiybBMEUuZDYvvW6hPFriumnjLT+aSU4vSOf3As6Id+S69c1OBYzub9XJ7hBuzE8Jw+tpXXlsB5RDi3w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6744
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> Subject: [PATCH v2 13/18] soc: imx: imx8m-blk-ctrl: add DISP blk-ctrl
>=20
> This adds the description for the i.MX8MM disp blk-ctrl.
>=20
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Reviewed-by: Peng Fan <peng.fan@nxp.com>

> ---
>  drivers/soc/imx/imx8m-blk-ctrl.c | 70
> ++++++++++++++++++++++++++++++++
>  1 file changed, 70 insertions(+)
>=20
> diff --git a/drivers/soc/imx/imx8m-blk-ctrl.c
> b/drivers/soc/imx/imx8m-blk-ctrl.c
> index 3dd17b903636..32eab800a3c6 100644
> --- a/drivers/soc/imx/imx8m-blk-ctrl.c
> +++ b/drivers/soc/imx/imx8m-blk-ctrl.c
> @@ -433,11 +433,81 @@ static const struct imx8m_blk_ctrl_data
> imx8m_vpu_blk_ctl_dev_data =3D {
>  	.num_domains =3D ARRAY_SIZE(imx8m_vpu_blk_ctl_domain_data),
>  };
>=20
> +static int imx8mm_disp_power_notifier(struct notifier_block *nb,
> +				      unsigned long action, void *data) {
> +	struct imx8m_blk_ctrl *bc =3D container_of(nb, struct imx8m_blk_ctrl,
> +						 power_nb);
> +
> +	if (action !=3D GENPD_NOTIFY_ON && action !=3D
> GENPD_NOTIFY_PRE_OFF)
> +		return NOTIFY_OK;
> +
> +	/* Enable bus clock and deassert bus reset */
> +	regmap_set_bits(bc->regmap, BLK_CLK_EN, BIT(12));
> +	regmap_set_bits(bc->regmap, BLK_SFT_RSTN, BIT(6));
> +
> +	/*
> +	 * On power up we have no software backchannel to the GPC to
> +	 * wait for the ADB handshake to happen, so we just delay for a
> +	 * bit. On power down the GPC driver waits for the handshake.
> +	 */
> +	if (action =3D=3D GENPD_NOTIFY_ON)
> +		udelay(5);
> +
> +
> +	return NOTIFY_OK;
> +}
> +
> +static const struct imx8m_blk_ctrl_domain_data
> imx8m_disp_blk_ctl_domain_data[] =3D {
> +	[IMX8MM_DISPBLK_CSI_BRIDGE] =3D {
> +		.name =3D "dispblk-csi-bridge",
> +		.clk_names =3D (const char *[]){ "csi-bridge-axi", "csi-bridge-apb",
> +					       "csi-bridge-core", },
> +		.num_clks =3D 3,
> +		.gpc_name =3D "csi-bridge",
> +		.rst_mask =3D BIT(0) | BIT(1) | BIT(2),
> +		.clk_mask =3D BIT(0) | BIT(1) | BIT(2) | BIT(3) | BIT(4) | BIT(5),
> +	},
> +	[IMX8MM_DISPBLK_LCDIF] =3D {
> +		.name =3D "dispblk-lcdif",
> +		.clk_names =3D (const char *[]){ "lcdif-axi", "lcdif-apb", "lcdif-pix"=
, },
> +		.num_clks =3D 3,
> +		.gpc_name =3D "lcdif",
> +		.clk_mask =3D BIT(6) | BIT(7),
> +	},
> +	[IMX8MM_DISPBLK_MIPI_DSI] =3D {
> +		.name =3D "dispblk-mipi-dsi",
> +		.clk_names =3D (const char *[]){ "dsi-pclk", "dsi-ref", },
> +		.num_clks =3D 2,
> +		.gpc_name =3D "mipi-dsi",
> +		.rst_mask =3D BIT(5),
> +		.clk_mask =3D BIT(8) | BIT(9),
> +	},
> +	[IMX8MM_DISPBLK_MIPI_CSI] =3D {
> +		.name =3D "dispblk-mipi-csi",
> +		.clk_names =3D (const char *[]){ "csi-aclk", "csi-pclk" },
> +		.num_clks =3D 2,
> +		.gpc_name =3D "mipi-csi",
> +		.rst_mask =3D BIT(3) | BIT(4),
> +		.clk_mask =3D BIT(10) | BIT(11),
> +	},
> +};
> +
> +static const struct imx8m_blk_ctrl_data imx8m_disp_blk_ctl_dev_data =3D =
{
> +	.max_reg =3D 0x2c,
> +	.power_notifier_fn =3D imx8mm_disp_power_notifier,
> +	.domains =3D imx8m_disp_blk_ctl_domain_data,
> +	.num_domains =3D ARRAY_SIZE(imx8m_disp_blk_ctl_domain_data),
> +};
> +
>  static const struct of_device_id imx8m_blk_ctrl_of_match[] =3D {
>  	{
>  		.compatible =3D "fsl,imx8mm-vpu-blk-ctrl",
>  		.data =3D &imx8m_vpu_blk_ctl_dev_data
>  	}, {
> +		.compatible =3D "fsl,imx8mm-disp-blk-ctrl",
> +		.data =3D &imx8m_disp_blk_ctl_dev_data
> +	} ,{
>  		/* Sentinel */
>  	}
>  };
> --
> 2.30.2


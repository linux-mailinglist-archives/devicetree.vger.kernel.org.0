Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1F6843E116F
	for <lists+devicetree@lfdr.de>; Thu,  5 Aug 2021 11:37:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238356AbhHEJhr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Aug 2021 05:37:47 -0400
Received: from mail-eopbgr80081.outbound.protection.outlook.com ([40.107.8.81]:16608
        "EHLO EUR04-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S232605AbhHEJhp (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 5 Aug 2021 05:37:45 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MXqXiBACzMwJcTkhxZGdRZYkTTBfvwRqQGyokkn0YYxG4/iiqdZMHal9pMofzVN9lenXLXuSaCJzhx8kNhW8ImNuFF3yVKRgLsLRPGvV/id1qiZzDCAsUkJC3hXqbEwZ1VEgc5iw/cAZf+D6aiVT7lbKGQG9wthcpD1rj1IDnUrd6w4ikoNn9awDNdBYlpJK4xRZUdwBWloUSgOmwCkvrbAXfXcP1EpVOjri+F/0dgYG3jU+Zw0T92RQprNfXGF8dTSnwu7q816ctpLjrRj7c3wrjMHCmBfeztMuH0VXpd8NdzYi+YCxvUWRsTHOnuPFq7SVPUTwroqJqNXkXypviQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JsRO9nVjU3OWgG3GwbmtL/xwiX3n4iLxLtNk0JCmtIo=;
 b=GsFOY8W1Z29lmS0S/rnNDsuQOBWJh5g2lIr5OSz4k64F9vB4XChOwAi91TMbW6+SgSYixL8l9qwMzPRCTQHcY8QvIwo1ZLUG+trseo5zFjzxxOZGQwdveskmASsWNPKxJagDAmYlxyjW2JSn5TY2JLHeOpkK6PtA+cOrFUBwGqjKqTUa9Dg1lRRbTipMy4kMFgoQOBkBj9aXSZ7BNIB/3TRte0YfE9lxfWWwQQHva2L8wUmjXcKa7zqO/PxTVdbcJ7y5BUpltDRbgTC6PFpBw7K/yx9gsRt6o1V7RY5wu4lWLlQ5DgQCLocoaLCgoaxri0RCNpBVqW2cThupoAzQVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JsRO9nVjU3OWgG3GwbmtL/xwiX3n4iLxLtNk0JCmtIo=;
 b=R3j/5964TGNxpFhwmUMqZn4Qqy1F0CqJTtFb0HPZsfFcDxi+WfeIdWBwCuSzLqjyp9HOi7FpbJrUprCnWoYhdbwT/Rn0bVRlla7qFmOoUUUCyFaprQjhNok6JKntroHU+PlGjRJpF83Wx/PLmokfi7o4+xYkVMYqQnCf6by4rQM=
Received: from AM5PR0402MB2756.eurprd04.prod.outlook.com
 (2603:10a6:203:99::22) by AS8PR04MB8006.eurprd04.prod.outlook.com
 (2603:10a6:20b:288::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.24; Thu, 5 Aug
 2021 09:37:29 +0000
Received: from AM5PR0402MB2756.eurprd04.prod.outlook.com
 ([fe80::3839:217:6252:b1f8]) by AM5PR0402MB2756.eurprd04.prod.outlook.com
 ([fe80::3839:217:6252:b1f8%11]) with mapi id 15.20.4373.026; Thu, 5 Aug 2021
 09:37:29 +0000
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
Subject: RE: [PATCH v2 02/18] soc: imx: gpcv2: Turn domain->pgc into bitfield
Thread-Topic: [PATCH v2 02/18] soc: imx: gpcv2: Turn domain->pgc into bitfield
Thread-Index: AQHXfnGU5eeEqLDJ/0asrsmt990ndKtkvggA
Date:   Thu, 5 Aug 2021 09:37:29 +0000
Message-ID: <AM5PR0402MB2756945BBA671843C1E561B688F29@AM5PR0402MB2756.eurprd04.prod.outlook.com>
References: <20210716232916.3572966-1-l.stach@pengutronix.de>
 <20210721204703.1424034-1-l.stach@pengutronix.de>
 <20210721204703.1424034-3-l.stach@pengutronix.de>
In-Reply-To: <20210721204703.1424034-3-l.stach@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 186f56d4-2293-4e88-4bec-08d957f4a4c2
x-ms-traffictypediagnostic: AS8PR04MB8006:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AS8PR04MB8006FE452E3C133D1DD1562188F29@AS8PR04MB8006.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xwho1jR10EyfkplsTfIACvDNFqIuXhLl7GP/KJnQviw3Oy3xmG3XAlepDSYSVoBljpXRUXieGZZVqmBiyL5Gc+W8qInoUgrhxk8nQSMM85GvOwcc4FiGILw56/02pMttaaT6sSGxTPSxADAvlyyTJex9hi+TSyuk14zAwXngyBDvFvjN2tyXkMbibu59ufn3y5lEyl26rFcK6LhbdNsFIBY0rjhKGbUbq3Kwdid+sUqtpRLY5Vknn0hgHHqYuTcEmX43R+6qX3/Cf4iCRSJXX/bBElPU/DA6jY1rnhr1ebYHgKLgT/vNpmDxGhpmM+lVzRRRrb6DX8CPyXRyWDwIevMNMLVsKfpl6DMwf1qXW/Z7KP4EK464A0vJ8RLzT5TOnF9agwKCHFFZBO3NXtcAZcziIGpFnvfI+9ej5PY7GyM6X6CJpjuJGzjuLfTeai1z83CG5/HSZbAq1366a4ejoNbPayKQXZvcSS5P6SNZy5ON1SrwWBIczHs97P2M3F6WegTlNC9fulw2HbqYwtjkwHG1suvgozNkHI7RH+Eb6SsMK8GLmfX9O2JQ3wQF+ZCe0xmLuf4OTf9VRT1MzJZxLuDRAufpc0SbHIXHk2CoPf71x5jY29clJLVgqGS2wMu3+SNGOD0uGThxkRdcIxFRe7E2V5ks9s8IViC3APQxecs/v+O3p2JYJwLU0KmLgeLW3sHwqSqr/I1o1V9Xw57mqg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM5PR0402MB2756.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(366004)(136003)(376002)(39860400002)(396003)(76116006)(5660300002)(38100700002)(33656002)(55016002)(2906002)(83380400001)(7696005)(9686003)(6506007)(316002)(4326008)(122000001)(86362001)(71200400001)(186003)(38070700005)(8936002)(8676002)(66556008)(44832011)(478600001)(110136005)(66476007)(26005)(54906003)(64756008)(7416002)(66446008)(66946007)(52536014);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yFsY77FEXdPBGIzu48IVbbZtt7ech+N69VjjqWISzMjessb3gCgesaCdo+88?=
 =?us-ascii?Q?9CGVbfkDD+pAt5pc5tTVRJ5IgL7lcTSJFX7e+k88MQNlmRzLWhbrIsW07GfI?=
 =?us-ascii?Q?tZHm2/lSMmp/f2KRt6GVEt2U+iXB6B4CUV1I+LlovzEnHO4zWlId54u9So0x?=
 =?us-ascii?Q?m6pK3gyP8rtHvMONj82F9kZhShTuFGyId4j3rjnydzhZaA608t8tlaZ0H6vV?=
 =?us-ascii?Q?A+aLVPTT1yrb09xO9nEISNvd/B+gCc0gqvYD2J9inhEg4ecI53ve007UwQTD?=
 =?us-ascii?Q?atfoPkTbdgwwvTuAqW8rB8tKN5hMjG0GW0kgjAFwrOTMI+TxnV4tsWLU/IfN?=
 =?us-ascii?Q?h2B+phom3epJfWcHDkQFEDkRpiH3D2vH2yfOtBRJyhqm7pn7jQ12RZI1/pXK?=
 =?us-ascii?Q?5CStuysBL7cZxgm4SIK8KNMNxBqwYLYAXnOVKNqAv95l7QrKAr0+OrCARGSb?=
 =?us-ascii?Q?u76i2HNen294LsDnynk6n2tG7oHNmSntKfAzRviu7JIIm432+3Q3wNUWcoON?=
 =?us-ascii?Q?cFqJqbt2/Pf7jUODHpDSGZXqz1AO9uoxs9KiVcA2yAcNOCoohsXtaP1vunuK?=
 =?us-ascii?Q?LbO0Pc5X/To+dhT9AW1Wum4IP5wHJene6LzmgeYWHJhC6H/bIUrxQtmMwZWm?=
 =?us-ascii?Q?7ZBbQl2lgZ5XnmYYbkGCpQSUEz5THw2qi5TwfwzFDQI8ER8iCrTEO4vv72ql?=
 =?us-ascii?Q?C++zioIdMun9USX8KSgzT0D+iC9a11blGvwZqSOyKrvq6wSk2W7MONupxY0S?=
 =?us-ascii?Q?s+rKda1jtAJwZr+knN1j7GXtaxtHVnXe/tUrlXPLx1GuAIp2KtGnLNEBQ7qE?=
 =?us-ascii?Q?PUWBS0ksDe1opLLr01f/lAIRRYch100+87CDX5r+rGc1D1ljVRGI7Ni0FHlu?=
 =?us-ascii?Q?Tlc7XY1StlMNEHgNCggpNoqIG8P9xa5lxO2CYggryUKuMB8aBSQO1Nb+g0+l?=
 =?us-ascii?Q?IJPfpvqOTr6XQ3Mj03H1HbX0+jXZ+e1vb7IiaYuflcPAptvWEMRxnw2jTSPI?=
 =?us-ascii?Q?GfLLElLgppVOUlJLaoo3VLxd24y2ZrIN19VlDmcCmNriPaMOSW/WoAGye4dL?=
 =?us-ascii?Q?+nO84wCQOwVnqzGGUSZNfnY0+Hulf7Mw3XrXBaGcq/KbWilst5hdKf+e4Wtd?=
 =?us-ascii?Q?oMhavqg99iqLT+wM81G54rMvXFCiH5j1ma4mALzXW7/9mNwDKyaWqLn2k385?=
 =?us-ascii?Q?wa9G5nxAsc8uKHqhYY2zYY4a0HrYtpt38hfQHAACsXuqrkTTNL3Si2TF0FVh?=
 =?us-ascii?Q?VAc5OkSaInET1lpfX3zIRtVU7UsPcjG34ktUk4UbCsrhIl66zu78j4jsJj6z?=
 =?us-ascii?Q?tdPWakaJRUfvXO4dFdn2mpar?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM5PR0402MB2756.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 186f56d4-2293-4e88-4bec-08d957f4a4c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2021 09:37:29.6969
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: d02jodfZnrqxAVynKJLLDiMqgW8aOgqg/mvwPMKV1fys50Wq0p2HuS4ht09wcdUscboA+sy0gFK4a6q7kjBXvw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8006
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> Subject: [PATCH v2 02/18] soc: imx: gpcv2: Turn domain->pgc into bitfield
>=20
> From: Marek Vasut <marex@denx.de>
>=20
> There is currently the MX8MM GPU domain, which is in fact a composite
> domain for both GPU2D and GPU3D. To correctly configure this domain, it i=
s
> necessary to control both GPC_PGC_nCTRL(GPU_2D) and
> GPC_PGC_nCTRL(GPU_3D) at the same time. This is currently not possible.
>=20
> Turn the domain->pgc from value into bitfield and use for_each_set_bit() =
to
> iterate over all bits set in domain->pgc when configuring GPC_PGC_nCTRL
> register array. This way it is possible to configure all GPC_PGC_nCTRL re=
gisters
> required in a particular domain.
>=20
> This is a preparatory patch, no functional change.
>=20
> Signed-off-by: Marek Vasut <marex@denx.de>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Reviewed-by: Peng Fan <peng.fan@nxp.com>

> ---
> v2 (Lucas Stach):
> - rebase on top of reverted reset sequence change
> - also convert i.MX8MN domains
> ---
>  drivers/soc/imx/gpcv2.c | 72 ++++++++++++++++++++++-------------------
>  1 file changed, 38 insertions(+), 34 deletions(-)
>=20
> diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c index
> 8b7a01773aec..c7826ce92f0d 100644
> --- a/drivers/soc/imx/gpcv2.c
> +++ b/drivers/soc/imx/gpcv2.c
> @@ -192,7 +192,7 @@ struct imx_pgc_domain {
>  	struct clk_bulk_data *clks;
>  	int num_clks;
>=20
> -	unsigned int pgc;
> +	unsigned long pgc;
>=20
>  	const struct {
>  		u32 pxx;
> @@ -220,7 +220,7 @@ to_imx_pgc_domain(struct generic_pm_domain
> *genpd)  static int imx_pgc_power_up(struct generic_pm_domain *genpd)
> {
>  	struct imx_pgc_domain *domain =3D to_imx_pgc_domain(genpd);
> -	u32 reg_val;
> +	u32 reg_val, pgc;
>  	int ret;
>=20
>  	ret =3D pm_runtime_get_sync(domain->dev); @@ -264,8 +264,10 @@
> static int imx_pgc_power_up(struct generic_pm_domain *genpd)
>  		}
>=20
>  		/* disable power control */
> -		regmap_clear_bits(domain->regmap,
> GPC_PGC_CTRL(domain->pgc),
> -				  GPC_PGC_CTRL_PCR);
> +		for_each_set_bit(pgc, &domain->pgc, 32) {
> +			regmap_clear_bits(domain->regmap, GPC_PGC_CTRL(pgc),
> +					  GPC_PGC_CTRL_PCR);
> +		}
>  	}
>=20
>  	/* delay for reset to propagate */
> @@ -311,7 +313,7 @@ static int imx_pgc_power_up(struct
> generic_pm_domain *genpd)  static int imx_pgc_power_down(struct
> generic_pm_domain *genpd)  {
>  	struct imx_pgc_domain *domain =3D to_imx_pgc_domain(genpd);
> -	u32 reg_val;
> +	u32 reg_val, pgc;
>  	int ret;
>=20
>  	/* Enable reset clocks for all devices in the domain */ @@ -338,8
> +340,10 @@ static int imx_pgc_power_down(struct generic_pm_domain
> *genpd)
>=20
>  	if (domain->bits.pxx) {
>  		/* enable power control */
> -		regmap_update_bits(domain->regmap,
> GPC_PGC_CTRL(domain->pgc),
> -				   GPC_PGC_CTRL_PCR, GPC_PGC_CTRL_PCR);
> +		for_each_set_bit(pgc, &domain->pgc, 32) {
> +			regmap_update_bits(domain->regmap, GPC_PGC_CTRL(pgc),
> +					   GPC_PGC_CTRL_PCR, GPC_PGC_CTRL_PCR);
> +		}
>=20
>  		/* request the domain to power down */
>  		regmap_update_bits(domain->regmap,
> GPC_PU_PGC_SW_PDN_REQ, @@ -389,7 +393,7 @@ static const struct
> imx_pgc_domain imx7_pgc_domains[] =3D {
>  			.map =3D IMX7_MIPI_PHY_A_CORE_DOMAIN,
>  		},
>  		.voltage   =3D 1000000,
> -		.pgc	   =3D IMX7_PGC_MIPI,
> +		.pgc	   =3D BIT(IMX7_PGC_MIPI),
>  	},
>=20
>  	[IMX7_POWER_DOMAIN_PCIE_PHY] =3D {
> @@ -401,7 +405,7 @@ static const struct imx_pgc_domain
> imx7_pgc_domains[] =3D {
>  			.map =3D IMX7_PCIE_PHY_A_CORE_DOMAIN,
>  		},
>  		.voltage   =3D 1000000,
> -		.pgc	   =3D IMX7_PGC_PCIE,
> +		.pgc	   =3D BIT(IMX7_PGC_PCIE),
>  	},
>=20
>  	[IMX7_POWER_DOMAIN_USB_HSIC_PHY] =3D {
> @@ -413,7 +417,7 @@ static const struct imx_pgc_domain
> imx7_pgc_domains[] =3D {
>  			.map =3D IMX7_USB_HSIC_PHY_A_CORE_DOMAIN,
>  		},
>  		.voltage   =3D 1200000,
> -		.pgc	   =3D IMX7_PGC_USB_HSIC,
> +		.pgc	   =3D BIT(IMX7_PGC_USB_HSIC),
>  	},
>  };
>=20
> @@ -448,7 +452,7 @@ static const struct imx_pgc_domain
> imx8m_pgc_domains[] =3D {
>  			.pxx =3D IMX8M_MIPI_SW_Pxx_REQ,
>  			.map =3D IMX8M_MIPI_A53_DOMAIN,
>  		},
> -		.pgc	   =3D IMX8M_PGC_MIPI,
> +		.pgc	   =3D BIT(IMX8M_PGC_MIPI),
>  	},
>=20
>  	[IMX8M_POWER_DOMAIN_PCIE1] =3D {
> @@ -459,7 +463,7 @@ static const struct imx_pgc_domain
> imx8m_pgc_domains[] =3D {
>  			.pxx =3D IMX8M_PCIE1_SW_Pxx_REQ,
>  			.map =3D IMX8M_PCIE1_A53_DOMAIN,
>  		},
> -		.pgc   =3D IMX8M_PGC_PCIE1,
> +		.pgc   =3D BIT(IMX8M_PGC_PCIE1),
>  	},
>=20
>  	[IMX8M_POWER_DOMAIN_USB_OTG1] =3D {
> @@ -470,7 +474,7 @@ static const struct imx_pgc_domain
> imx8m_pgc_domains[] =3D {
>  			.pxx =3D IMX8M_OTG1_SW_Pxx_REQ,
>  			.map =3D IMX8M_OTG1_A53_DOMAIN,
>  		},
> -		.pgc   =3D IMX8M_PGC_OTG1,
> +		.pgc   =3D BIT(IMX8M_PGC_OTG1),
>  	},
>=20
>  	[IMX8M_POWER_DOMAIN_USB_OTG2] =3D {
> @@ -481,7 +485,7 @@ static const struct imx_pgc_domain
> imx8m_pgc_domains[] =3D {
>  			.pxx =3D IMX8M_OTG2_SW_Pxx_REQ,
>  			.map =3D IMX8M_OTG2_A53_DOMAIN,
>  		},
> -		.pgc   =3D IMX8M_PGC_OTG2,
> +		.pgc   =3D BIT(IMX8M_PGC_OTG2),
>  	},
>=20
>  	[IMX8M_POWER_DOMAIN_DDR1] =3D {
> @@ -492,7 +496,7 @@ static const struct imx_pgc_domain
> imx8m_pgc_domains[] =3D {
>  			.pxx =3D IMX8M_DDR1_SW_Pxx_REQ,
>  			.map =3D IMX8M_DDR2_A53_DOMAIN,
>  		},
> -		.pgc   =3D IMX8M_PGC_DDR1,
> +		.pgc   =3D BIT(IMX8M_PGC_DDR1),
>  	},
>=20
>  	[IMX8M_POWER_DOMAIN_GPU] =3D {
> @@ -505,7 +509,7 @@ static const struct imx_pgc_domain
> imx8m_pgc_domains[] =3D {
>  			.hskreq =3D IMX8M_GPU_HSK_PWRDNREQN,
>  			.hskack =3D IMX8M_GPU_HSK_PWRDNACKN,
>  		},
> -		.pgc   =3D IMX8M_PGC_GPU,
> +		.pgc   =3D BIT(IMX8M_PGC_GPU),
>  	},
>=20
>  	[IMX8M_POWER_DOMAIN_VPU] =3D {
> @@ -518,7 +522,7 @@ static const struct imx_pgc_domain
> imx8m_pgc_domains[] =3D {
>  			.hskreq =3D IMX8M_VPU_HSK_PWRDNREQN,
>  			.hskack =3D IMX8M_VPU_HSK_PWRDNACKN,
>  		},
> -		.pgc   =3D IMX8M_PGC_VPU,
> +		.pgc   =3D BIT(IMX8M_PGC_VPU),
>  	},
>=20
>  	[IMX8M_POWER_DOMAIN_DISP] =3D {
> @@ -531,7 +535,7 @@ static const struct imx_pgc_domain
> imx8m_pgc_domains[] =3D {
>  			.hskreq =3D IMX8M_DISP_HSK_PWRDNREQN,
>  			.hskack =3D IMX8M_DISP_HSK_PWRDNACKN,
>  		},
> -		.pgc   =3D IMX8M_PGC_DISP,
> +		.pgc   =3D BIT(IMX8M_PGC_DISP),
>  	},
>=20
>  	[IMX8M_POWER_DOMAIN_MIPI_CSI1] =3D {
> @@ -542,7 +546,7 @@ static const struct imx_pgc_domain
> imx8m_pgc_domains[] =3D {
>  			.pxx =3D IMX8M_MIPI_CSI1_SW_Pxx_REQ,
>  			.map =3D IMX8M_MIPI_CSI1_A53_DOMAIN,
>  		},
> -		.pgc   =3D IMX8M_PGC_MIPI_CSI1,
> +		.pgc   =3D BIT(IMX8M_PGC_MIPI_CSI1),
>  	},
>=20
>  	[IMX8M_POWER_DOMAIN_MIPI_CSI2] =3D {
> @@ -553,7 +557,7 @@ static const struct imx_pgc_domain
> imx8m_pgc_domains[] =3D {
>  			.pxx =3D IMX8M_MIPI_CSI2_SW_Pxx_REQ,
>  			.map =3D IMX8M_MIPI_CSI2_A53_DOMAIN,
>  		},
> -		.pgc   =3D IMX8M_PGC_MIPI_CSI2,
> +		.pgc   =3D BIT(IMX8M_PGC_MIPI_CSI2),
>  	},
>=20
>  	[IMX8M_POWER_DOMAIN_PCIE2] =3D {
> @@ -564,7 +568,7 @@ static const struct imx_pgc_domain
> imx8m_pgc_domains[] =3D {
>  			.pxx =3D IMX8M_PCIE2_SW_Pxx_REQ,
>  			.map =3D IMX8M_PCIE2_A53_DOMAIN,
>  		},
> -		.pgc   =3D IMX8M_PGC_PCIE2,
> +		.pgc   =3D BIT(IMX8M_PGC_PCIE2),
>  	},
>  };
>=20
> @@ -627,7 +631,7 @@ static const struct imx_pgc_domain
> imx8mm_pgc_domains[] =3D {
>  			.pxx =3D IMX8MM_PCIE_SW_Pxx_REQ,
>  			.map =3D IMX8MM_PCIE_A53_DOMAIN,
>  		},
> -		.pgc   =3D IMX8MM_PGC_PCIE,
> +		.pgc   =3D BIT(IMX8MM_PGC_PCIE),
>  	},
>=20
>  	[IMX8MM_POWER_DOMAIN_OTG1] =3D {
> @@ -638,7 +642,7 @@ static const struct imx_pgc_domain
> imx8mm_pgc_domains[] =3D {
>  			.pxx =3D IMX8MM_OTG1_SW_Pxx_REQ,
>  			.map =3D IMX8MM_OTG1_A53_DOMAIN,
>  		},
> -		.pgc   =3D IMX8MM_PGC_OTG1,
> +		.pgc   =3D BIT(IMX8MM_PGC_OTG1),
>  	},
>=20
>  	[IMX8MM_POWER_DOMAIN_OTG2] =3D {
> @@ -649,7 +653,7 @@ static const struct imx_pgc_domain
> imx8mm_pgc_domains[] =3D {
>  			.pxx =3D IMX8MM_OTG2_SW_Pxx_REQ,
>  			.map =3D IMX8MM_OTG2_A53_DOMAIN,
>  		},
> -		.pgc   =3D IMX8MM_PGC_OTG2,
> +		.pgc   =3D BIT(IMX8MM_PGC_OTG2),
>  	},
>=20
>  	[IMX8MM_POWER_DOMAIN_GPUMIX] =3D {
> @@ -662,7 +666,7 @@ static const struct imx_pgc_domain
> imx8mm_pgc_domains[] =3D {
>  			.hskreq =3D IMX8MM_GPUMIX_HSK_PWRDNREQN,
>  			.hskack =3D IMX8MM_GPUMIX_HSK_PWRDNACKN,
>  		},
> -		.pgc   =3D IMX8MM_PGC_GPUMIX,
> +		.pgc   =3D BIT(IMX8MM_PGC_GPUMIX),
>  	},
>=20
>  	[IMX8MM_POWER_DOMAIN_GPU] =3D {
> @@ -675,7 +679,7 @@ static const struct imx_pgc_domain
> imx8mm_pgc_domains[] =3D {
>  			.hskreq =3D IMX8MM_GPU_HSK_PWRDNREQN,
>  			.hskack =3D IMX8MM_GPU_HSK_PWRDNACKN,
>  		},
> -		.pgc   =3D IMX8MM_PGC_GPU2D,
> +		.pgc   =3D BIT(IMX8MM_PGC_GPU2D),
>  	},
>=20
>  	[IMX8MM_POWER_DOMAIN_VPUMIX] =3D {
> @@ -688,7 +692,7 @@ static const struct imx_pgc_domain
> imx8mm_pgc_domains[] =3D {
>  			.hskreq =3D IMX8MM_VPUMIX_HSK_PWRDNREQN,
>  			.hskack =3D IMX8MM_VPUMIX_HSK_PWRDNACKN,
>  		},
> -		.pgc   =3D IMX8MM_PGC_VPUMIX,
> +		.pgc   =3D BIT(IMX8MM_PGC_VPUMIX),
>  	},
>=20
>  	[IMX8MM_POWER_DOMAIN_VPUG1] =3D {
> @@ -699,7 +703,7 @@ static const struct imx_pgc_domain
> imx8mm_pgc_domains[] =3D {
>  			.pxx =3D IMX8MM_VPUG1_SW_Pxx_REQ,
>  			.map =3D IMX8MM_VPUG1_A53_DOMAIN,
>  		},
> -		.pgc   =3D IMX8MM_PGC_VPUG1,
> +		.pgc   =3D BIT(IMX8MM_PGC_VPUG1),
>  	},
>=20
>  	[IMX8MM_POWER_DOMAIN_VPUG2] =3D {
> @@ -710,7 +714,7 @@ static const struct imx_pgc_domain
> imx8mm_pgc_domains[] =3D {
>  			.pxx =3D IMX8MM_VPUG2_SW_Pxx_REQ,
>  			.map =3D IMX8MM_VPUG2_A53_DOMAIN,
>  		},
> -		.pgc   =3D IMX8MM_PGC_VPUG2,
> +		.pgc   =3D BIT(IMX8MM_PGC_VPUG2),
>  	},
>=20
>  	[IMX8MM_POWER_DOMAIN_VPUH1] =3D {
> @@ -721,7 +725,7 @@ static const struct imx_pgc_domain
> imx8mm_pgc_domains[] =3D {
>  			.pxx =3D IMX8MM_VPUH1_SW_Pxx_REQ,
>  			.map =3D IMX8MM_VPUH1_A53_DOMAIN,
>  		},
> -		.pgc   =3D IMX8MM_PGC_VPUH1,
> +		.pgc   =3D BIT(IMX8MM_PGC_VPUH1),
>  	},
>=20
>  	[IMX8MM_POWER_DOMAIN_DISPMIX] =3D {
> @@ -734,7 +738,7 @@ static const struct imx_pgc_domain
> imx8mm_pgc_domains[] =3D {
>  			.hskreq =3D IMX8MM_DISPMIX_HSK_PWRDNREQN,
>  			.hskack =3D IMX8MM_DISPMIX_HSK_PWRDNACKN,
>  		},
> -		.pgc   =3D IMX8MM_PGC_DISPMIX,
> +		.pgc   =3D BIT(IMX8MM_PGC_DISPMIX),
>  	},
>=20
>  	[IMX8MM_POWER_DOMAIN_MIPI] =3D {
> @@ -745,7 +749,7 @@ static const struct imx_pgc_domain
> imx8mm_pgc_domains[] =3D {
>  			.pxx =3D IMX8MM_MIPI_SW_Pxx_REQ,
>  			.map =3D IMX8MM_MIPI_A53_DOMAIN,
>  		},
> -		.pgc   =3D IMX8MM_PGC_MIPI,
> +		.pgc   =3D BIT(IMX8MM_PGC_MIPI),
>  	},
>  };
>=20
> @@ -812,7 +816,7 @@ static const struct imx_pgc_domain
> imx8mn_pgc_domains[] =3D {
>  			.pxx =3D IMX8MN_OTG1_SW_Pxx_REQ,
>  			.map =3D IMX8MN_OTG1_A53_DOMAIN,
>  		},
> -		.pgc   =3D IMX8MN_PGC_OTG1,
> +		.pgc   =3D BIT(IMX8MN_PGC_OTG1),
>  	},
>=20
>  	[IMX8MN_POWER_DOMAIN_GPUMIX] =3D {
> @@ -825,7 +829,7 @@ static const struct imx_pgc_domain
> imx8mn_pgc_domains[] =3D {
>  			.hskreq =3D IMX8MN_GPUMIX_HSK_PWRDNREQN,
>  			.hskack =3D IMX8MN_GPUMIX_HSK_PWRDNACKN,
>  		},
> -		.pgc   =3D IMX8MN_PGC_GPUMIX,
> +		.pgc   =3D BIT(IMX8MN_PGC_GPUMIX),
>  	},
>  };
>=20
> --
> 2.30.2


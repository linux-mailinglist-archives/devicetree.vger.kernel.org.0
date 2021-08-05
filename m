Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8F6333E119B
	for <lists+devicetree@lfdr.de>; Thu,  5 Aug 2021 11:47:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239282AbhHEJrv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Aug 2021 05:47:51 -0400
Received: from mail-am6eur05on2060.outbound.protection.outlook.com ([40.107.22.60]:24809
        "EHLO EUR05-AM6-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S232930AbhHEJru (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 5 Aug 2021 05:47:50 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h2DVvM7hleRHc/2E+8ZkpWlWB5zQfhnAJhBLt+IxObcxl+aFZgGC5wjCI0JIF5hqX4iV5ODmrv+MY54dMrPe7Phh4N5IH1oWP2tzT0IaGwJ9ZXCAHTPQ6qzi+Xb0WrWwadupcWLDgiFk/fa/Y1sDDCgXt8AMt0ok0WN80M4TAqbyq28QOLkTF6AlE9wryWg7OEghWHThXy9rZYTywd0A5ZuVm9BvZu3EEI2ayjtOGaVIVShoM9vXeWrz1hLibsIjy7+KopY0vavJAXnOnPQuHqa/xpy2qIis5+sCVuJZzGu7Z2IggkfTqtK4EiqUWAsFPCrdEuz88sHp3MXVp0W0Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m1FDsWkhyt1H4X0uayQYzIcJzTfU546Ml9s5/6eIyQM=;
 b=Hkcvh4qngRr2S7Ag7+ZwMZh/FNRUHNwnCPFqBW0sEZFJJKZjUksHJKuroDkfyGvktHjP1YUZc+OBBoGCUl4FcrbjkMBUPVH6omocqP7pDMJOpQZk/MM+ol1wqHFJAeN7y59oc63i0qU7FXOzqR5T19jxmE/oiDaTWxShD7zFZtbQNL5SE9RPSBJCqUx8CSOTTNL8cpD2K8/WY8+fV/GC6Xvvapnla5EZHhqrRh5Cdb/yqq8pKQ+A7CL8CLNAuJARZedkOZ2YeP5f577rwJdjXVJJkBeZ6SIXvWGVtmXATuKmrWyNZOxdEScBQZAPlHp9W+FIb+9oZkTxnK5wpnwIlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m1FDsWkhyt1H4X0uayQYzIcJzTfU546Ml9s5/6eIyQM=;
 b=eDKnZYVA50+wJ+SHFoFq6MBFQO7Go7dV/Xmmbhzo+tr30ihixQF+Rb//RMul5rSUdJMOc0oRRDksxo8t6HIenaUICLdlRawTTAnfCENzEQhV/MH8+0VEBlTAzTGpmmqSzBe8lBdUYLo7v7kEn8i7xg093VOtX6SqJySREjrkyKI=
Received: from AM5PR0402MB2756.eurprd04.prod.outlook.com
 (2603:10a6:203:99::22) by AS8PR04MB7592.eurprd04.prod.outlook.com
 (2603:10a6:20b:23f::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.19; Thu, 5 Aug
 2021 09:47:35 +0000
Received: from AM5PR0402MB2756.eurprd04.prod.outlook.com
 ([fe80::3839:217:6252:b1f8]) by AM5PR0402MB2756.eurprd04.prod.outlook.com
 ([fe80::3839:217:6252:b1f8%11]) with mapi id 15.20.4373.026; Thu, 5 Aug 2021
 09:47:35 +0000
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
Subject: RE: [PATCH v2 07/18] soc: imx: gpcv2: support system suspend/resume
Thread-Topic: [PATCH v2 07/18] soc: imx: gpcv2: support system suspend/resume
Thread-Index: AQHXfnGVPU2Bt8wdyEqwh6aeOHsY96tkwNog
Date:   Thu, 5 Aug 2021 09:47:35 +0000
Message-ID: <AM5PR0402MB2756154A5BD71E51DCF0203888F29@AM5PR0402MB2756.eurprd04.prod.outlook.com>
References: <20210716232916.3572966-1-l.stach@pengutronix.de>
 <20210721204703.1424034-1-l.stach@pengutronix.de>
 <20210721204703.1424034-8-l.stach@pengutronix.de>
In-Reply-To: <20210721204703.1424034-8-l.stach@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2e8bf02d-a832-4f26-111b-08d957f60dc0
x-ms-traffictypediagnostic: AS8PR04MB7592:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AS8PR04MB7592159AB44FA9B0C2F43FCB88F29@AS8PR04MB7592.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cJE7P9eJJ7TPZVN3s1aXnXvmtZU3Hbzj+iEhU4gFX5YJYgegB1MZgOaRMKMXdMqmEI+F8Pl602zPKOEzoegA9iplBJoJ0rNez1LJVpGbl9Cap6mAeL9PYxfWWWZ02zVnRYLnXlfmQn1A+94C9OVpXWJIHXKAvnL1BSwY4hrlxl1cFSgNhkOIZR27sVoV6DEk5zHcP3EktdM9TbSc6JOBP4y520zWcylNgabS9rfF5K1aKGHRwD6x7yTSqiDbruKTr6fCOguu+vzk09CFmD4laEG5Sq6GcDA8VmYTdhQaFC9xhFOfEANmTuqeOuLNccjPt14jt0+3TUwNPMzjr3WHWus+FR45eMray1Gsuntg8o6x8WQhwrx+nKFvWPhPe3bt7y783fed9HQZbuOCXtECdJXliruXgbjE5bQgA1ujqli+a33dwIjd3OTm5abtSeKukDHFCFpfYJx6fNy+VAzJw6YGmZfImCrdtKOCUe8dgLeEp6VsAc6cBtMwFQr5eiva5YhmRmFa2wdiFgh9zf9FnCfhvD3/lhdMAdR4m69UbXaKqG0EfxxAYJIfEMSYNYTcmuNNvJO8xMhKFhJMAunyuyORo6tUFyi+4lREIObsw+9p5TD/vamGhXhXFjh9Mv6wmFnDAKhHoETVu01AIg/vRUDDml6PNMxrBvQNmSSq7y/RsieNh54U2Wq7oljEJVpQjuI1ascCmlpMlB87s6OhSg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM5PR0402MB2756.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(136003)(376002)(39850400004)(396003)(366004)(83380400001)(186003)(54906003)(4326008)(26005)(15650500001)(7416002)(110136005)(76116006)(64756008)(33656002)(86362001)(2906002)(66946007)(44832011)(66556008)(66476007)(316002)(8676002)(66446008)(52536014)(8936002)(122000001)(7696005)(5660300002)(55016002)(6506007)(9686003)(38070700005)(71200400001)(478600001)(38100700002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zghmY02kUk/+g2d40MK2OuolJpXLtVPBU9OwmfH+zlhqQTN7hlY76uAi9Kk4?=
 =?us-ascii?Q?bW9vRGooyyO3OskBtELE/O1pu0wcJbpm+PpqNvpfRZxvMxZ7qEZ6Uz7qvPLy?=
 =?us-ascii?Q?atTU/1fYtjPlK4U0jk2eeW+gpYlE8GdKhQWDD2p+oecY/aqSdKKXwxSGIdFX?=
 =?us-ascii?Q?txxBEPB/rw3vdDYOLKkt85TRPktu8p4jJlUgjpvufCAREwnMwVihiO+NRwNH?=
 =?us-ascii?Q?mlMBFBlLsgidkZp7oD3wNuO+nFAfN1v50H4lCYGjQgd37kkCuhTEw7JFGQP2?=
 =?us-ascii?Q?V9yq/DGCIMC/FFUm3TScmUc2lp7GpYXcuxPZh0N7fdYX+ik1s88Xcu0uAXT4?=
 =?us-ascii?Q?RNiIYa6LZHXULA+EhBEqO3RD0PGrmJu1n9t0FreRHnxct4tlKKr6dW2G8Iig?=
 =?us-ascii?Q?c3YzCt7heIE4CxZG5irDoGXCx4eZjPEkLo3I2JCy+zWf5dsat9k+7OsXjJgQ?=
 =?us-ascii?Q?fIVMrsm82q0plKMRLHA5rPDF+6boYu6/vj/gZwOfyfRntlOPhEFs7lNvnt6R?=
 =?us-ascii?Q?ozWSVrThFpTz5OUlzMPZMfuNQ9vfEyOpjH5xUKPB1qi6bc+v8JWMd7JlznTK?=
 =?us-ascii?Q?bDtisXy+bdKvoIM/4yn00QLEe7PJOSzNQ9Egq1c+eAx5Q1cbZ4oN6pprBruJ?=
 =?us-ascii?Q?aHrQruNOjGyLcg9+1p/Rw9/vpA4A0xn3FJazPA6EeJzu9bhtNtNliwBTc+yf?=
 =?us-ascii?Q?D7+CT+Bq5DgnCBB7vzQxVoSk7BSDeclR2nDIEslTV8QjEgGDduuWOmN5wy9e?=
 =?us-ascii?Q?B8NSpUtV7nb32+DK+Th0LsH+u9kwZhrjcnVA1CvNrO9ag+VJsKgFlmTmIU9w?=
 =?us-ascii?Q?y8Z4d7cVvF11gSfLzjujzqRh2L1zHLD8EtCfGxIZWxR1klEkoDQc2O+A85EX?=
 =?us-ascii?Q?OD1uLoHKb1AHIYC+cS8K3aXX3TMZd1+RUG1NeypMNKFFP5nPd5C30Kzy+38j?=
 =?us-ascii?Q?HhPeCBC42xjsc+C0suiU9CPw5ukmbqVTHLXLqQ8QMUJ+m5vQAT7eC4VeTVcS?=
 =?us-ascii?Q?pkGNs0bSKOyfpCBQTKzEb6m7COdoGiQquoLAgPUI9f019325hdo5MamU5nF7?=
 =?us-ascii?Q?bGWnRwcQ1RXNLQFu+0q+uqOzt+Nwn6szr/RvSd7w3bGTLaFQpvcJQFbPz1WT?=
 =?us-ascii?Q?29BrNZLNMRo1TvKFJ5b/UJye8rmYHVbLZLAmTM78zYiqZ40bMu4hQquixcHq?=
 =?us-ascii?Q?0Gs580mrDmSmMme7bnAFh403Z5RZb/VR5zVZLTsA00wGz/N6MfXClCLhQENY?=
 =?us-ascii?Q?wQyX5oaAqzCRD6oZscjTUnJP7lGwOoYRJ0Hml3COivWLyhhEozjnKrQF6472?=
 =?us-ascii?Q?V9anIPD2VhT+ZQ6C1YF1eEEN?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM5PR0402MB2756.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e8bf02d-a832-4f26-111b-08d957f60dc0
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2021 09:47:35.2638
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ScVooHtvYT6B/zFUWlA1ILSNbor/hZ0LXuky5qyH19Fi6921/0vUJITaA9iG04Jd2H+bEZ4/vCPFgeSlkGTDyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB7592
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> Subject: [PATCH v2 07/18] soc: imx: gpcv2: support system suspend/resume
>=20
> Our usage of runtime PM to control the hierarchy of power domains is slig=
htly
> unusual and means that powering up a domain may fail in early system
> resume, as runtime PM is still disallowed at this stage.
>=20
> However the system suspend/resume path takes care of powering down/up
> the power domains in the order defined by the device parent/child and
> power-domain provider/consumer hierarachy. So we can just runtime resume
> all our power-domain devices to allow the power-up to work properly in th=
e
> resume path. System suspend will still disable all domains as intended.
>=20
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Acked-by: Peng Fan <peng.fan@nxp.com>

> ---
>  drivers/soc/imx/gpcv2.c | 31 +++++++++++++++++++++++++++++++
>  1 file changed, 31 insertions(+)
>=20
> diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c index
> c48f37f203ab..57ed0a6bfb13 100644
> --- a/drivers/soc/imx/gpcv2.c
> +++ b/drivers/soc/imx/gpcv2.c
> @@ -947,6 +947,36 @@ static int imx_pgc_domain_remove(struct
> platform_device *pdev)
>  	return 0;
>  }
>=20
> +#ifdef CONFIG_PM_SLEEP
> +static int imx_pgc_domain_suspend(struct device *dev) {
> +	int ret;
> +
> +	/*
> +	 * This may look strange, but is done so the generic PM_SLEEP code
> +	 * can power down our domain and more importantly power it up again
> +	 * after resume, without tripping over our usage of runtime PM to
> +	 * power up/down the nested domains.
> +	 */
> +	ret =3D pm_runtime_get_sync(dev);
> +	if (ret < 0) {
> +		pm_runtime_put_noidle(dev);
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static int imx_pgc_domain_resume(struct device *dev) {
> +	return pm_runtime_put(dev);
> +}
> +#endif
> +
> +static const struct dev_pm_ops imx_pgc_domain_pm_ops =3D {
> +	SET_SYSTEM_SLEEP_PM_OPS(imx_pgc_domain_suspend,
> imx_pgc_domain_resume)
> +};
> +
>  static const struct platform_device_id imx_pgc_domain_id[] =3D {
>  	{ "imx-pgc-domain", },
>  	{ },
> @@ -955,6 +985,7 @@ static const struct platform_device_id
> imx_pgc_domain_id[] =3D {  static struct platform_driver
> imx_pgc_domain_driver =3D {
>  	.driver =3D {
>  		.name =3D "imx-pgc",
> +		.pm =3D &imx_pgc_domain_pm_ops,
>  	},
>  	.probe    =3D imx_pgc_domain_probe,
>  	.remove   =3D imx_pgc_domain_remove,
> --
> 2.30.2


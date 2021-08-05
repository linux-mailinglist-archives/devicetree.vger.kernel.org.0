Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E2B233E1176
	for <lists+devicetree@lfdr.de>; Thu,  5 Aug 2021 11:38:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238899AbhHEJii (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Aug 2021 05:38:38 -0400
Received: from mail-eopbgr80048.outbound.protection.outlook.com ([40.107.8.48]:22496
        "EHLO EUR04-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S238744AbhHEJii (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 5 Aug 2021 05:38:38 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LBrGVB8EsHOl4zSuQZF821t9s7csF4yCRdelaSSzpqpGbzAqYlp3XMzGLElQKRbgASpzDnDVB9cmKXzShrg8PrA67maBN1uC5hNUsWgJpDTHtRKCkS3vQOQbBKp6nFeTucrVggcrmxM4xWUlfmYcfBEwyTtRBxDz3TGqlN2GrhcGcINbXTN6HQFrVeB8LEg2ie7ijxqXWx0/Zyz0fFAsEElajr32WlE1kirEdOSCYD78INZa+u5dO2tlVQhnquHn3OtefE0SAmIZsJT+8Wrquh0EirfwNTCVn5VOz8RPiQileUTC1k2c0jh4FWt+06zkrD1ASz9gPYuWOHa1pdLbvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3I3CQ/jK2uk10My8c9CBQfYOsFPFTWhEUdbjOfAhT1c=;
 b=letC9E1h8U2e4AikQHjvy3mHe3G8EDrB8JOsRmKfNrIVEJjI+0+JeDk14MGgiiiuC2cKUS+q6FWMB60cFkszTlkFmgt8VmLM97nh3Eo32L1sJcmmfy+jjge6X17XjdJOld/Fc+EWFlikvf4OYztoRlmTCVTwmMHW2dXa5+lktRNm104zVNEcbVt7LIqT/mQQq2/VF1B20hvCzj5t+vCw8n9hlpIni89ceNQJCg4/Iq1hA1OjIo33Da+ccLMQrm3H0Gj12OVh5Fr6JzREJ0GOH1qiwOoYULvBWRT5sYHLAlx6k/5foCQuX94qtE3H7/bcvjSZqlKs/lElcyZyOieI8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3I3CQ/jK2uk10My8c9CBQfYOsFPFTWhEUdbjOfAhT1c=;
 b=tBPJcLHv6WgL/ykFjjAQhL79CPwgTJLhbY6c9SqLQxKI8/MXslstdc+CPeJywcouJ7z2E7ytcGGvTvYguG44UE0q+dFJgltzsiW1TRYtlKvKICkUTlikkvUNVewVRu/ZF/D8yc+pUQxxrwcbfnc1ZF4yrgPrcYf68nctIF9F6og=
Received: from AM5PR0402MB2756.eurprd04.prod.outlook.com
 (2603:10a6:203:99::22) by AS8PR04MB8006.eurprd04.prod.outlook.com
 (2603:10a6:20b:288::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.24; Thu, 5 Aug
 2021 09:38:22 +0000
Received: from AM5PR0402MB2756.eurprd04.prod.outlook.com
 ([fe80::3839:217:6252:b1f8]) by AM5PR0402MB2756.eurprd04.prod.outlook.com
 ([fe80::3839:217:6252:b1f8%11]) with mapi id 15.20.4373.026; Thu, 5 Aug 2021
 09:38:22 +0000
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
Subject: RE: [PATCH v2 04/18] soc: imx: gpcv2: add lockdep annotation
Thread-Topic: [PATCH v2 04/18] soc: imx: gpcv2: add lockdep annotation
Thread-Index: AQHXfnGVp9bLkqVl2k2uWbiAI9sIwqtkvk3g
Date:   Thu, 5 Aug 2021 09:38:22 +0000
Message-ID: <AM5PR0402MB275692C3F495C3777646925188F29@AM5PR0402MB2756.eurprd04.prod.outlook.com>
References: <20210716232916.3572966-1-l.stach@pengutronix.de>
 <20210721204703.1424034-1-l.stach@pengutronix.de>
 <20210721204703.1424034-5-l.stach@pengutronix.de>
In-Reply-To: <20210721204703.1424034-5-l.stach@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9dde1c90-0730-4f50-5aaf-08d957f4c463
x-ms-traffictypediagnostic: AS8PR04MB8006:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AS8PR04MB80062A23AA0B12E80F4FACF288F29@AS8PR04MB8006.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FAy3QciJ9w87+vxvS4QFgzAtbH24MBg6PqbYKuuXKRZgJ6qkBpe7VgBMrEt1xikvpYUmqdR3iLXRS+8LdTI/TIN17yMy+dLLK5emraiYjfVNfJRMvdtwq+lLTfMLnFBldKvCkJy2Jct3geUS4NbtWrjMeX56RZJq4/GADcbiuygAg+SYEpzwo9u6vQtaHNCNn2hzOo5MYXwPakRKQm5pULtPkwlp7DsaqqVlW4j76rX088rnOh1OBkIa/C7oLvnmOjTv59eEDBiQT+eb26c92Ttu6XTfU0uh7j7/uSjGvAY/lRSox25KWfPPTzhTTdXDkUtqZSpLoSB585u4hSEw3YGU0a/7WxrebLe5sKbRs/AkilXryu+RYdSmURcWrUpGlvotfjNgDdZntrwYGqcnqovWmi+sErfHNFRd2M3fvNMpHRDv8kqncZiOWIxNyZQu8wCBwectfXckj4Qf62VlmurAYDWDPHsoVA5WJNT0tBGoZDt4zVaB/xwvva5dqg9u/d+ETSJxsQ6u6vKe++Wremt3kezkqsGleBWTfFusnFYHqrcimKl+5ibSxoJOcn2R13+OO71ShfqDHbDDb1ROnKrYr+eH1Sq2dyNfwdP5AVROomFljyo5sRBmDM1P0YPr1BteKogO7+1pyv8DXZmXBmeeq1mNix5zSZ7sgVDsXOkckFPaqyUz+++77naBK5GMd4RTEM1jXZMwCkxfHvm0AQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM5PR0402MB2756.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(366004)(136003)(376002)(39860400002)(396003)(76116006)(5660300002)(38100700002)(33656002)(55016002)(2906002)(83380400001)(7696005)(9686003)(6506007)(316002)(4326008)(122000001)(86362001)(71200400001)(186003)(38070700005)(8936002)(8676002)(66556008)(44832011)(478600001)(110136005)(66476007)(26005)(54906003)(64756008)(7416002)(66446008)(66946007)(52536014);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VoX2gO+zsgxT7+Tp+Ea2xYjOUYMifVaPDLOmGBt9yHpj7V3eh5iUy3PmWt0E?=
 =?us-ascii?Q?kaCXbLmqTUkISTtTeP98EI9+RLC6THXk0bAyjlibfo1PDB25iUoCXdld+orH?=
 =?us-ascii?Q?6KoahyqlLUBrnOikLxaor5ewbsxGo+Cs8P1cUXZa57nyHy+sYlhwxhrW6Wqz?=
 =?us-ascii?Q?GO428zafI2FnahkN0afYmFI/3K1SnI6BjSQwoaSHU25qy+mKh9MSIqHN5L5d?=
 =?us-ascii?Q?NAnWQKKs4Nqwf21fOpLHt31hHTybSyGRy4n+h6iGRzfDbkLFuLrxK69GEYos?=
 =?us-ascii?Q?grGcLjMVa8Motio8uQ17OLtFpgPlcNccDzWU/sXmjROx0u/X+vlSvh45yyHp?=
 =?us-ascii?Q?BQ41EQzuneXCZ+X86scwUED4iRvqYTNLeCJmvuRwpoTDGR6SV/61U8Bq1K+N?=
 =?us-ascii?Q?0n7bpLGVH2gjmEHPKnkAzeKoKeVsqaETVy2TYdJBNJ+IjLRW6hN4lSc2D4SQ?=
 =?us-ascii?Q?47l6yRCNqAL5pu5bv3+GvadAJqNzrM9l1HpqDMSwSirnh96nGnIVI0LQW1+p?=
 =?us-ascii?Q?MkiA7kKWk+lPc4lbCpSOhicRLWX4r066SDaH6nzrrjB+1zb4sEYv8P/cYDpC?=
 =?us-ascii?Q?9jdqc+2A/QvbqHoIOCyemxFOPq9MtesTOxIqE6thFrmprAwW6lB2rZzRNFL1?=
 =?us-ascii?Q?rrjfuQ8M1bUfV4iiBJVKpTSnVvn4p34FPZgRhkINleiesC1BALUEf0Fetrj5?=
 =?us-ascii?Q?ALznWXl9BIamqX99GSgF1xyCw1FXNY8j5RbAKEmTQCOsaKdbBxFukbfXjoU9?=
 =?us-ascii?Q?9+DD/52TYSYaMKSHHHHctyitbY088fh1W1BnvQhKzz4ZBCdVdHisUFiZo662?=
 =?us-ascii?Q?/UVcc76TUZHhkVqBKrZYTvc0KzDFRR839q6smFwBF38bMhN1BbslS6cMrwfu?=
 =?us-ascii?Q?3NRrsXjFkJXMLT0BPRNgcT2TdUJ1C4ZpkXN94U9AtpHaoe2FEKMCauxD/xBJ?=
 =?us-ascii?Q?/OIXmf+2caaYOOeqsHSBCiz5aDEjd8jxpOeBoIPYno1v+1qOAh3JEwqy/zX1?=
 =?us-ascii?Q?nGWPiA4Ic8JRo4WrskN8PF4EZ+qBsIerIha3fLeWKnyY4j6tDos7IlYFioLF?=
 =?us-ascii?Q?xQSMBcnJSXl5lwGSHMYCjlXtCZ73i9Y/WvgHcu3v7q5lrXI3hsPQPHJAC9hi?=
 =?us-ascii?Q?tdbIQ00FwLVhSraCeje597qmJ12u6RU4RmKwaq5yn2oMmlrbzND6MIqpm8ON?=
 =?us-ascii?Q?0rLGBQ9o503IwLLTofVL7iOhWRh2eEUjt+ML/VQR7VUC1OJQIDGF9OTXnNRb?=
 =?us-ascii?Q?iA5UmHXv6va3ZaGu+MtFg+xxWsO+mkAOb55oFkE9k12iTteSbs9+waDaDiW5?=
 =?us-ascii?Q?zGmfy/W7xICrMwM7r5dX1ZnP?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM5PR0402MB2756.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9dde1c90-0730-4f50-5aaf-08d957f4c463
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2021 09:38:22.7518
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MmSx3xQkeRwQoUOYV/5tAaZ1AtRdp/n7V9o0o3bfCJ2O9pbUPWX3wGKhYwdIYYRdsnp/AOs1p3or3Uy+SqXRGg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8006
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> Subject: [PATCH v2 04/18] soc: imx: gpcv2: add lockdep annotation
>=20
> Some of the GPCv2 power domains are nested inside each other without
> visibility to lockdep at the genpd level, as they are in separate driver =
instances
> and don't have a parent/child power-domain relationship.
>=20
> Add a subclass annotation to the nested domains to let lockdep know that =
it is
> okay to take the genpd lock in a nested fashion.
>=20
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Reviewed-by: Peng Fan <peng.fan@nxp.com>

> ---
>  drivers/soc/imx/gpcv2.c | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c index
> 2c43e74db0be..35f26f57d1ac 100644
> --- a/drivers/soc/imx/gpcv2.c
> +++ b/drivers/soc/imx/gpcv2.c
> @@ -898,6 +898,10 @@ static int imx_pgc_domain_probe(struct
> platform_device *pdev)
>  		goto out_domain_unmap;
>  	}
>=20
> +	if (IS_ENABLED(CONFIG_LOCKDEP) &&
> +	    of_property_read_bool(domain->dev->of_node, "power-domains"))
> +		lockdep_set_subclass(&domain->genpd.mlock, 1);
> +
>  	ret =3D of_genpd_add_provider_simple(domain->dev->of_node,
>  					   &domain->genpd);
>  	if (ret) {
> --
> 2.30.2


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5944D6A9B2
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2019 15:34:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387524AbfGPNeY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Jul 2019 09:34:24 -0400
Received: from mail-eopbgr30048.outbound.protection.outlook.com ([40.107.3.48]:50191
        "EHLO EUR03-AM5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726039AbfGPNeY (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 16 Jul 2019 09:34:24 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TxkHGrpsM0IRS/rjPSrhFJMBqUk5r+/tsi1Yoj6L1peL7K8fimZ24NzumXVSk/epyLrnSmzezSLKCtflMKNltNezHi0DxJOVxHS5a+jDAmHjDfNn7IWpGGWMtm1WyCxtDGt/LcLXOAffkSP9nTTU0ZqBBaHjTlIil25Hhl6cZXbu3BucNrhB8uZlkSL1XRS6i6VfYr2J1NV5/pfqQbGwMMY0mn4nKyG1DTDBT25AdCIqivhopkvO6jBh2lF02De5Fma+98xOacQLyMXRZJrO0SDiFNiSHoaQ3W5ty4C9x4TiXb0May/dNqcuNl0Nr44EGd+ei3OMxNLOyWu5MguIGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V1N0IKwNV2MC25ith0msIDRKMXe7xDmopw1HY1vWJVQ=;
 b=lS3O7BQPu3u7if4WNZocYVGAx+92jDGtc4qSNi1on4IiFrKlBlNYauUrHr6ocW0ASLwzinqGKZUeHO9+tWjWYVWuXKhJ3TRtOLGTCoXVGJDwzJ/6aH3MwEbx29V4pL5sm37+Pa7+72vwEpHcmnMzNCtcxOLTRLuq0DcxJefyeAAe8yCtRythjtxdZeh63uX3Mb1zYLfWrEAy8pH8o2QfDAagfZ9R8lsH61veZdD7dzwQcmNHIu81xTz478Ziyn6xCTtK0zv3W9s/swS7p4MmmhCYNLruFo6bvuY9y4BSRfDDRiUv6Km+Y1uEGh0ehPy/zHWCgnyj3dYJQR4ZUHHgHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V1N0IKwNV2MC25ith0msIDRKMXe7xDmopw1HY1vWJVQ=;
 b=lwZ5ujfX+FIfrTGdBN/J8EJAfYvuulvPu9zkGlPEv9a+I2MN4mYEfdJwhTG7fcMY8nfz9Mt9DePWgENeNZn1BkPBfa4kZKOsqDK0Qi3d2YAnNWmC0kJB8h3bsC5km1+jskitlNplDJKbloK2YGc+6CLP1cDj/M+DYGKHRQOtwOs=
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com (20.177.49.159) by
 VI1PR04MB4221.eurprd04.prod.outlook.com (52.134.31.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.10; Tue, 16 Jul 2019 13:34:17 +0000
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::8577:908d:d4fa:67f4]) by VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::8577:908d:d4fa:67f4%4]) with mapi id 15.20.2073.008; Tue, 16 Jul 2019
 13:34:17 +0000
From:   Frank Li <frank.li@nxp.com>
To:     Leonard Crestez <leonard.crestez@nxp.com>,
        Shawn Guo <shawnguo@kernel.org>, Will Deacon <will@kernel.org>
CC:     Rob Herring <robh+dt@kernel.org>,
        Andrey Smirnov <andrew.smirnov@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Aisheng Dong <aisheng.dong@nxp.com>,
        Fabio Estevam <fabio.estevam@nxp.com>,
        Jacky Bai <ping.bai@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH 1/3] perf/imx_ddr: Add MODULE_DEVICE_TABLE
Thread-Topic: [PATCH 1/3] perf/imx_ddr: Add MODULE_DEVICE_TABLE
Thread-Index: AQHVMkX3fhG3ntXnwU2AdTnhQDQH7KbNUZ+w
Date:   Tue, 16 Jul 2019 13:34:17 +0000
Message-ID: <VI1PR04MB49100BE846047F44034DB9E388CE0@VI1PR04MB4910.eurprd04.prod.outlook.com>
References: <cover.1562230183.git.leonard.crestez@nxp.com>
 <6e88abe2ed5f361469cbb8ccccd4586036fc2fa2.1562230183.git.leonard.crestez@nxp.com>
In-Reply-To: <6e88abe2ed5f361469cbb8ccccd4586036fc2fa2.1562230183.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=frank.li@nxp.com; 
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5c30249c-d3f7-4472-d94e-08d709f24cf8
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);SRVR:VI1PR04MB4221;
x-ms-traffictypediagnostic: VI1PR04MB4221:
x-microsoft-antispam-prvs: <VI1PR04MB42212A61A5FC8FA71EA15EAB88CE0@VI1PR04MB4221.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:626;
x-forefront-prvs: 0100732B76
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(376002)(396003)(136003)(366004)(346002)(39860400002)(13464003)(189003)(199004)(44832011)(4326008)(2906002)(486006)(102836004)(54906003)(186003)(26005)(6436002)(6506007)(53546011)(68736007)(476003)(478600001)(14454004)(8936002)(110136005)(256004)(3846002)(6116002)(6246003)(33656002)(316002)(53936002)(55016002)(71200400001)(305945005)(229853002)(71190400001)(7736002)(5660300002)(9686003)(25786009)(66066001)(446003)(86362001)(99286004)(66946007)(76176011)(8676002)(66556008)(81166006)(64756008)(76116006)(66446008)(66476007)(7696005)(81156014)(52536014)(74316002)(11346002);DIR:OUT;SFP:1101;SCL:1;SRVR:VI1PR04MB4221;H:VI1PR04MB4910.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: PUXBfhK7sEvTIFD2vy7zEumtLqWzCjo90fF1ke9SFHtypPBxK4uX2XjclOQcBsHLsngFMKQFUgb6FV5uTZH9vOn/fRy/Yz6KZOzOLqxjam7q8RjuIeprGMvitu1USom8va4u9yIyC/wqUGjqOyWZIfbRax39KgBNhBUL/Mn3xsI8laIUT0YF4ScBh6tpNbrCAuP4gRRa4XaCCuDvIlg1+uNtvSVWX/uNN2QFRP5skg2FqUSZ7jTS06J5J4X171C7wJx1I22RLs6ZbCN39kjEVYdFaiiBk6VH0F21M2IsZI8UxSXIUBHm4Pf6fZycvjtPZdyQX53kNejbPUIaQCFLsEfwQK2hnJNHs6TNiesTCmIK+i7+COA1m2tfoeq/g4LSDzfGQDOgPtiedhWQepQ68Ek6bKrpx36tRdsIrLTVayY=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c30249c-d3f7-4472-d94e-08d709f24cf8
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2019 13:34:17.2258
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: frank.li@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4221
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



> -----Original Message-----
> From: Leonard Crestez <leonard.crestez@nxp.com>
> Sent: Thursday, July 4, 2019 3:53 AM
> To: Shawn Guo <shawnguo@kernel.org>; Will Deacon <will@kernel.org>; Frank
> Li <frank.li@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>; Andrey Smirnov
> <andrew.smirnov@gmail.com>; Mark Rutland <mark.rutland@arm.com>;
> Aisheng Dong <aisheng.dong@nxp.com>; Fabio Estevam
> <fabio.estevam@nxp.com>; Jacky Bai <ping.bai@nxp.com>;
> devicetree@vger.kernel.org; kernel@pengutronix.de; dl-linux-imx <linux-
> imx@nxp.com>; linux-arm-kernel@lists.infradead.org
> Subject: [PATCH 1/3] perf/imx_ddr: Add MODULE_DEVICE_TABLE
>=20
> This is required for automatic probing when driver is built as a module.
>=20
> Fixes: 9a66d36cc7ac ("drivers/perf: imx_ddr: Add DDR performance counter
> support to perf")
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

Acked-by: Frank Li <frank.li@nxp.com>

> ---
>  drivers/perf/fsl_imx8_ddr_perf.c | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/perf/fsl_imx8_ddr_perf.c b/drivers/perf/fsl_imx8_ddr=
_perf.c
> index 63fe21600072..0e3310dbb145 100644
> --- a/drivers/perf/fsl_imx8_ddr_perf.c
> +++ b/drivers/perf/fsl_imx8_ddr_perf.c
> @@ -45,10 +45,11 @@ static DEFINE_IDA(ddr_ida);  static const struct
> of_device_id imx_ddr_pmu_dt_ids[] =3D {
>  	{ .compatible =3D "fsl,imx8-ddr-pmu",},
>  	{ .compatible =3D "fsl,imx8m-ddr-pmu",},
>  	{ /* sentinel */ }
>  };
> +MODULE_DEVICE_TABLE(of, imx_ddr_pmu_dt_ids);
>=20
>  struct ddr_pmu {
>  	struct pmu pmu;
>  	void __iomem *base;
>  	unsigned int cpu;
> --
> 2.17.1


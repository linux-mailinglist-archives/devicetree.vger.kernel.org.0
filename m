Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 404336A9B9
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2019 15:37:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387593AbfGPNfo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Jul 2019 09:35:44 -0400
Received: from mail-eopbgr150081.outbound.protection.outlook.com ([40.107.15.81]:63630
        "EHLO EUR01-DB5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726039AbfGPNfo (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 16 Jul 2019 09:35:44 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vgGYiKRVvCWWit7dh4AHNSKJLkla6TDKAdgqJfYzvEM=;
 b=VB79YmjnttWFbFOcqkyxkMExO5laBfvUojc+xCgyaUS7/wwxW86CTjj1tewugFb2lb8rMzSyjhMHEfjZUB4yZQMYzmDfV7Z1WsG62vmkZetAmbvH9QOTjYCONFJ7kQ9BGPhQauRp9xWoOZhMvbN9O0oMEHBnOIe89acwen15+kw=
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com (20.177.49.159) by
 VI1PR04MB4686.eurprd04.prod.outlook.com (20.177.56.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.19; Tue, 16 Jul 2019 13:35:40 +0000
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::8577:908d:d4fa:67f4]) by VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::8577:908d:d4fa:67f4%4]) with mapi id 15.20.2073.008; Tue, 16 Jul 2019
 13:35:40 +0000
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
Subject: RE: [PATCH 3/3] arm64: defconfig: Build imx8 ddr pmu as module
Thread-Topic: [PATCH 3/3] arm64: defconfig: Build imx8 ddr pmu as module
Thread-Index: AQHVMkX5Fk1mD28qVUmXJH2urr0krabNUhQQ
Date:   Tue, 16 Jul 2019 13:35:40 +0000
Message-ID: <VI1PR04MB4910CFB4D94CF4AE23A7F38A88CE0@VI1PR04MB4910.eurprd04.prod.outlook.com>
References: <cover.1562230183.git.leonard.crestez@nxp.com>
 <e51a2f95044f0a9003c3be2e82c3c4b2653670a7.1562230183.git.leonard.crestez@nxp.com>
In-Reply-To: <e51a2f95044f0a9003c3be2e82c3c4b2653670a7.1562230183.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=frank.li@nxp.com; 
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 00accb01-b823-4e73-1b20-08d709f27eba
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);SRVR:VI1PR04MB4686;
x-ms-traffictypediagnostic: VI1PR04MB4686:
x-microsoft-antispam-prvs: <VI1PR04MB4686D582997D6B78215920C288CE0@VI1PR04MB4686.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2043;
x-forefront-prvs: 0100732B76
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(136003)(366004)(376002)(39860400002)(396003)(346002)(13464003)(199004)(189003)(7696005)(68736007)(76176011)(3846002)(14454004)(6116002)(66066001)(33656002)(54906003)(110136005)(26005)(2906002)(74316002)(99286004)(186003)(316002)(102836004)(6506007)(53546011)(6246003)(256004)(55016002)(305945005)(7736002)(71190400001)(4326008)(71200400001)(86362001)(478600001)(9686003)(53936002)(81156014)(11346002)(25786009)(446003)(44832011)(76116006)(6436002)(66946007)(66446008)(64756008)(66556008)(66476007)(52536014)(476003)(8936002)(81166006)(8676002)(5660300002)(229853002)(486006);DIR:OUT;SFP:1101;SCL:1;SRVR:VI1PR04MB4686;H:VI1PR04MB4910.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: vmoUE8/6egoemHu+EKXPkLHxZ1wuuljEA1xmETxtMjhhF3Xx4FqJjCbdXDnG7O1E94IbiwRvcxquUL1sU0DDCWTsAAHOqe83ABoO9SJXMyZBLlEXPtTepizwFmdCOqTvwpkW/oxeGKm3f0c+lzdDoANoZEw5is4O3fwUdECpWWJCrZQTam9RdloH5o3bSIsozhuJuNVEYLlOwXrz1aMChONKQvwmgxAuW5oJsGo4clzAPA51HeSA/zJV0smHOIJMdEb2tcbuiAWVxZMrju6brLqIXNElJIkl+Y9NfVQgPlsZRAy3qPycsxWhoa5+rwzVXY/Lhw2FyXNfXS3aq3vv1vNWJNyGwkdofeYPugX5qphvuZ7UHnq5mEdnXdXkjZ+rmYYycOPszrNCWpnJKXTX25JIiZSnotWLX9z+pPlfA7Y=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00accb01-b823-4e73-1b20-08d709f27eba
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2019 13:35:40.7496
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: frank.li@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4686
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
> Subject: [PATCH 3/3] arm64: defconfig: Build imx8 ddr pmu as module
>=20
> This is available on all imx8 but is not "boot critical" in any way so bu=
ild as a
> module.
>=20
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

Acked-by: Frank Li <frank.li@nxp.com>

> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 812fe887477d..134a4067846f 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -766,10 +766,11 @@ CONFIG_PHY_ROCKCHIP_INNO_USB2=3Dy
> CONFIG_PHY_ROCKCHIP_PCIE=3Dm  CONFIG_PHY_ROCKCHIP_TYPEC=3Dy
> CONFIG_PHY_UNIPHIER_USB2=3Dy  CONFIG_PHY_UNIPHIER_USB3=3Dy
> CONFIG_PHY_TEGRA_XUSB=3Dy
> +CONFIG_FSL_IMX8_DDR_PMU=3Dm
>  CONFIG_HISI_PMU=3Dy
>  CONFIG_QCOM_L2_PMU=3Dy
>  CONFIG_QCOM_L3_PMU=3Dy
>  CONFIG_NVMEM_SUNXI_SID=3Dy
>  CONFIG_NVMEM_IMX_OCOTP=3Dy
> --
> 2.17.1


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3D99B6A9B5
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2019 15:35:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732906AbfGPNfN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Jul 2019 09:35:13 -0400
Received: from mail-eopbgr130053.outbound.protection.outlook.com ([40.107.13.53]:28997
        "EHLO EUR01-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726039AbfGPNfN (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 16 Jul 2019 09:35:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=54n732ypTHizSu7fcgnaXear4E0oGNFR0zbll9QcBMA=;
 b=X/gAvfLjCSrM1WNXk3n5CgODSGMCNOv+97GqppU63YtaQnVF2HswJhnVV5iIpKfsT9ejkFMsH03GOtt0M2Mr2v4v/BI0RObcYKIsWTmyHKWpRFi3lnSl/nX4FJADHQECpNeUGizJNynSlIY+nuF/2cJdbFBZIhAl6tEsvb4JDRI=
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com (20.177.49.159) by
 VI1PR04MB4686.eurprd04.prod.outlook.com (20.177.56.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.19; Tue, 16 Jul 2019 13:35:08 +0000
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::8577:908d:d4fa:67f4]) by VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::8577:908d:d4fa:67f4%4]) with mapi id 15.20.2073.008; Tue, 16 Jul 2019
 13:35:08 +0000
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
Subject: RE: [PATCH 2/3] arm64: dts: imx8m: Add ddr-pmu nodes
Thread-Topic: [PATCH 2/3] arm64: dts: imx8m: Add ddr-pmu nodes
Thread-Index: AQHVMkX5geEsNsO2L06+VkTTmHKXEabNUeQQ
Date:   Tue, 16 Jul 2019 13:35:08 +0000
Message-ID: <VI1PR04MB4910AF706069756BF960115588CE0@VI1PR04MB4910.eurprd04.prod.outlook.com>
References: <cover.1562230183.git.leonard.crestez@nxp.com>
 <b8aeb9caf6c2380a7c8f65b19e420e18498d5c1a.1562230183.git.leonard.crestez@nxp.com>
In-Reply-To: <b8aeb9caf6c2380a7c8f65b19e420e18498d5c1a.1562230183.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=frank.li@nxp.com; 
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3ccef2c7-4533-4202-2ccf-08d709f26ba2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);SRVR:VI1PR04MB4686;
x-ms-traffictypediagnostic: VI1PR04MB4686:
x-microsoft-antispam-prvs: <VI1PR04MB4686B987ECCA935F6901BC6388CE0@VI1PR04MB4686.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:361;
x-forefront-prvs: 0100732B76
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(396003)(39860400002)(376002)(346002)(366004)(136003)(189003)(199004)(13464003)(9686003)(478600001)(86362001)(53936002)(71200400001)(55016002)(256004)(71190400001)(4326008)(7736002)(305945005)(81166006)(8936002)(476003)(52536014)(486006)(229853002)(5660300002)(8676002)(11346002)(81156014)(446003)(25786009)(66476007)(66556008)(64756008)(66446008)(66946007)(76116006)(44832011)(6436002)(14454004)(3846002)(33656002)(66066001)(6116002)(68736007)(7696005)(76176011)(186003)(99286004)(102836004)(316002)(26005)(74316002)(2906002)(6246003)(6506007)(53546011)(54906003)(110136005)(32563001);DIR:OUT;SFP:1101;SCL:1;SRVR:VI1PR04MB4686;H:VI1PR04MB4910.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: vwqidFoaVPreF3WVjjx8vKn45DACZ1gNwtE2ibyDpWWGAeKri/DIlWduwXxz0/NxUwOipcida22ilqiVTCEpmfz6WSq9Bd1Z9HkzTTXT2GvWLKWzDS8/u17bTjx2VNC+ff+Y8najGZiwmNPawklqFxGnANlDISBLzfI7276PIh6imwsLwrPDeXdcN/57eiXzdZp0Pf7drG70tUjSqan+p+S6onTyklEuuFbA2MId0siY4qS5LR+nfvb3YvJ1+RMgRkaNH71bcoL5aA1sQ67MeFPSfTRSaKIufWCinsDm5Gyzbm6ynIXSHdX+1yXsLsKq3+a8oKu0ndcgDLwS8dj51zaJ0sh9mI1yth46b4X9zH7FHUXJNxksz6rwH+g2JF8BmFdOpjbCEvUDIXdxKfgy5smz9p6CugA7mV3/sbIBo08=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ccef2c7-4533-4202-2ccf-08d709f26ba2
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2019 13:35:08.7581
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
> Subject: [PATCH 2/3] arm64: dts: imx8m: Add ddr-pmu nodes
>=20
> The same ddr perfomance counter IP from 8qxp is also available on imx8m
> series so add it to dts.
>=20
> Tested with `perf stat` and `memtester` on imx8mm-evk and obtained plausi=
ble
> results.
>=20
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

Acked-by: Frank Li <frank.li@nxp.com>

> ---
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 7 +++++++
> arch/arm64/boot/dts/freescale/imx8mq.dtsi | 7 +++++++
>  2 files changed, 14 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index 232a7412755a..9a8d8cd21ef0 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -816,7 +816,14 @@
>  			      <0x38880000 0xc0000>; /* GICR (RD_base +
> SGI_base) */
>  			#interrupt-cells =3D <3>;
>  			interrupt-controller;
>  			interrupts =3D <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
>  		};
> +
> +		ddr-pmu@3d800000 {
> +			compatible =3D "fsl,imx8mm-ddr-pmu", "fsl,imx8m-ddr-
> pmu";
> +			reg =3D <0x3d800000 0x400000>;
> +			interrupt-parent =3D <&gic>;
> +			interrupts =3D <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
> +		};
>  	};
>  };
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> index d09b808eff87..fb0fdee5f889 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> @@ -1031,7 +1031,14 @@
>  			#interrupt-cells =3D <3>;
>  			interrupt-controller;
>  			interrupts =3D <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
>  			interrupt-parent =3D <&gic>;
>  		};
> +
> +		ddr-pmu@3d800000 {
> +			compatible =3D "fsl,imx8mq-ddr-pmu", "fsl,imx8m-ddr-
> pmu";
> +			reg =3D <0x3d800000 0x400000>;
> +			interrupt-parent =3D <&gic>;
> +			interrupts =3D <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
> +		};
>  	};
>  };
> --
> 2.17.1


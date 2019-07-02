Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5F2AE5CD47
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2019 12:04:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726105AbfGBKEg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Jul 2019 06:04:36 -0400
Received: from mail-eopbgr50067.outbound.protection.outlook.com ([40.107.5.67]:5881
        "EHLO EUR03-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1727305AbfGBKEg (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 2 Jul 2019 06:04:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JkGM3sNzWaADdHdZQtvZCm7QfkawRLpodEh8VHMvNWE=;
 b=d7gyBK32nMLSzQUt93rN5FLO2yfFGgedD/b/we37iJsVezgs6t+EPIFEaM1DwufEsR4YPriJbbRDGRTCRn99EEKOuGdDrzdr/IfGDRIg3hdPI0HFnX+vzx+gL+zXLIXIlfMaDXK3Rf1VEyoHWW6Yrqz5DzpDrw0w/uHdSg4oJ8s=
Received: from DB7PR04MB5178.eurprd04.prod.outlook.com (20.176.236.22) by
 DB7PR04MB4234.eurprd04.prod.outlook.com (52.134.108.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.15; Tue, 2 Jul 2019 10:03:52 +0000
Received: from DB7PR04MB5178.eurprd04.prod.outlook.com
 ([fe80::2c71:9f2f:8db1:a290]) by DB7PR04MB5178.eurprd04.prod.outlook.com
 ([fe80::2c71:9f2f:8db1:a290%4]) with mapi id 15.20.2032.019; Tue, 2 Jul 2019
 10:03:52 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "festevam@gmail.com" <festevam@gmail.com>,
        Leonard Crestez <leonard.crestez@nxp.com>,
        Aisheng Dong <aisheng.dong@nxp.com>,
        Peng Fan <peng.fan@nxp.com>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        dl-linux-imx <linux-imx@nxp.com>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>
Subject: [RESEND PATCH 3/3] arm64: dts: freescale: Add power domain nodes for
 i.mx8mm
Thread-Topic: [RESEND PATCH 3/3] arm64: dts: freescale: Add power domain nodes
 for i.mx8mm
Thread-Index: AQHVML1z43DTRO+nnkuA6ujC4Ry9+A==
Date:   Tue, 2 Jul 2019 10:03:52 +0000
Message-ID: <20190702100832.29718-4-ping.bai@nxp.com>
References: <20190702100832.29718-1-ping.bai@nxp.com>
In-Reply-To: <20190702100832.29718-1-ping.bai@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.21.0
x-clientproxiedby: HK0PR01CA0011.apcprd01.prod.exchangelabs.com
 (2603:1096:203:92::23) To DB7PR04MB5178.eurprd04.prod.outlook.com
 (2603:10a6:10:20::22)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ping.bai@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 36e91c71-f0e9-4fd7-7f7b-08d6fed495e1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);SRVR:DB7PR04MB4234;
x-ms-traffictypediagnostic: DB7PR04MB4234:
x-microsoft-antispam-prvs: <DB7PR04MB42348618488EE128E139D88887F80@DB7PR04MB4234.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1850;
x-forefront-prvs: 008663486A
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(396003)(346002)(39860400002)(366004)(376002)(136003)(189003)(199004)(6512007)(6636002)(6436002)(2201001)(71200400001)(386003)(50226002)(6486002)(71190400001)(6506007)(8936002)(256004)(25786009)(486006)(5660300002)(36756003)(3846002)(6116002)(52116002)(76176011)(86362001)(66476007)(66556008)(64756008)(476003)(66446008)(4326008)(66946007)(73956011)(1076003)(54906003)(81156014)(316002)(186003)(26005)(110136005)(446003)(2616005)(102836004)(81166006)(11346002)(53936002)(66066001)(2906002)(68736007)(305945005)(14454004)(478600001)(7736002)(2501003)(8676002)(99286004);DIR:OUT;SFP:1101;SCL:1;SRVR:DB7PR04MB4234;H:DB7PR04MB5178.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: s7zvvTONVRjw0ReMZL3489wJh1tRPDgCceoPvQW6DUY89DTacQrqTjXkrB7rZoh0OYmZUXKLmbHR5F73SrVvHIyChjHBvK+0PtRNZ/KimBnRPwrG0VzswOPupktMWTe3/UT6EijLJKUh60khRI+rpyYc97eEVLprEVj/asm0FoEoQq7rf7+cJqWF+EOw5e3ldrANIj9FMy71BprSPOn7RuGCKKnjFWaVqGTV/MhRD23eOgSN0oYV0qLo6LFlhXCzIc15wK5xS4LKlgP7jixASrcCmt3QEBDQCXmetV4hsCkbePYdNGRB3v44exoJDX3yfUYV0bcHCO4m+2+wZxSH+9OZc5RQD7tlCcC6Bv0ClU8vOUHV0kRZMtTWpOpZ9mhssjy5QxdaGnErmjYkulA5BE8akhmcVkHavjZ9pVmvW2w=
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <59EEF88A35FB0041A690F06EAA9D1AA4@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 36e91c71-f0e9-4fd7-7f7b-08d6fed495e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2019 10:03:52.3227
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ping.bai@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4234
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the power domain nodes for i.MX8MM.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 103 ++++++++++++++++++++++
 1 file changed, 103 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dt=
s/freescale/imx8mm.dtsi
index 232a7412755a..850ca6a7ac66 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -181,6 +181,109 @@
 		interrupt-affinity =3D <&A53_0>, <&A53_1>, <&A53_2>, <&A53_3>;
 	};
=20
+	power-domains {
+		compatible =3D "simple-bus";
+		/* HSIO SS */
+		hsiomix_pd: hsiomix-pd {
+			compatible =3D "fsl,imx8m-pm-domain";
+			#power-domain-cells =3D <0>;
+			domain-index =3D <0>;
+			domain-name =3D "hsiomix";
+			clocks =3D <&clk IMX8MM_CLK_USB1_CTRL_ROOT>;
+		};
+
+		pcie_pd: pcie-pd {
+			compatible =3D "fsl,imx8m-pm-domain";
+			#power-domain-cells =3D <0>;
+			domain-index =3D <1>;
+			domain-name =3D "pcie";
+			parent-domains =3D <&hsiomix_pd>;
+		};
+
+		usb_otg1_pd: usbotg1-pd {
+			compatible =3D "fsl,imx8m-pm-domain";
+			#power-domain-cells =3D <0>;
+			domain-index =3D <2>;
+			domain-name =3D "usb_otg1";
+			parent-domains =3D <&hsiomix_pd>;
+		};
+
+		usb_otg2_pd: usbotg2-pd {
+			compatible =3D "fsl,imx8m-pm-domain";
+			#power-domain-cells =3D <0>;
+			domain-index =3D <3>;
+			domain-name =3D "usb_otg2";
+			parent-domains =3D <&hsiomix_pd>;
+		};
+
+		/* GPU SS */
+		gpumix_pd: gpumix-pd {
+			compatible =3D "fsl,imx8m-pm-domain";
+			#power-domain-cells =3D <0>;
+			domain-index =3D <4>;
+			domain-name =3D "gpumix";
+			clocks =3D <&clk IMX8MM_CLK_GPU_BUS_ROOT>,
+				 <&clk IMX8MM_CLK_GPU_AHB>,
+				 <&clk IMX8MM_CLK_GPU2D_ROOT>,
+				 <&clk IMX8MM_CLK_GPU3D_ROOT>;
+		};
+
+		/* VPU SS */
+		vpumix_pd: vpumix-pd {
+			compatible =3D "fsl,imx8m-pm-domain";
+			#power-domain-cells =3D <0>;
+			domain-index =3D <5>;
+			domain-name =3D "vpumix";
+			clocks =3D <&clk IMX8MM_CLK_VPU_DEC_ROOT>;
+		};
+
+		vpu_g1_pd: vpug1-pd {
+			compatible =3D "fsl,imx8m-pm-domain";
+			#power-domain-cells =3D <0>;
+			domain-index =3D <6>;
+			domain-name =3D "vpu_g1";
+			parent-domains =3D <&vpumix_pd>;
+			clocks =3D <&clk IMX8MM_CLK_VPU_G1_ROOT>;
+		};
+
+		vpu_g2_pd: vpug2-pd {
+			compatible =3D "fsl,imx8m-pm-domain";
+			#power-domain-cells =3D <0>;
+			domain-index =3D <7>;
+			domain-name =3D "vpu_g2";
+			parent-domains =3D <&vpumix_pd>;
+			clocks =3D <&clk IMX8MM_CLK_VPU_G2_ROOT>;
+		};
+
+		vpu_h1_pd: vpuh1-pd {
+			compatible =3D "fsl,imx8m-pm-domain";
+			#power-domain-cells =3D <0>;
+			domain-index =3D <8>;
+			domain-name =3D "vpu_h1";
+			parent-domains =3D <&vpumix_pd>;
+			clocks =3D <&clk IMX8MM_CLK_VPU_H1_ROOT>;
+		};
+
+		/* DISP SS */
+		dispmix_pd: dispmix-pd {
+			compatible =3D "fsl,imx8m-pm-domain";
+			#power-domain-cells =3D <0>;
+			domain-index =3D <9>;
+			domain-name =3D "dispmix";
+			clocks =3D <&clk IMX8MM_CLK_DISP_ROOT>,
+				 <&clk IMX8MM_CLK_DISP_AXI_ROOT>,
+				 <&clk IMX8MM_CLK_DISP_APB_ROOT>;
+		};
+
+		mipi_pd: mipi-pd {
+			compatible =3D "fsl,imx8m-pm-domain";
+			#power-domain-cells =3D <0>;
+			domain-index =3D <10>;
+			domain-name =3D "mipi";
+			parent-domains =3D <&dispmix_pd>;
+		};
+	};
+
 	timer {
 		compatible =3D "arm,armv8-timer";
 		interrupts =3D <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_LOW)=
>, /* Physical Secure */
--=20
2.21.0


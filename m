Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6ECBD5CD3D
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2019 12:03:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727282AbfGBKDp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Jul 2019 06:03:45 -0400
Received: from mail-eopbgr60047.outbound.protection.outlook.com ([40.107.6.47]:9094
        "EHLO EUR04-DB3-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1727126AbfGBKDp (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 2 Jul 2019 06:03:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zGtjnd+TbYp2lIM5eZQvt3lM6VRMu3MO1j3RMdqKAQk=;
 b=jWda1PQpC1dIXgrKQoNc9y/EHdWpcNHcJ0cWHZMJoYBewX2oBRzZYAueIt8OHWIw2EMfCW9ZqIwuS46tiVlG55ckvA7GBo/r1BAYgf5QCuEUfFV6xuJ9QP02PZWH3rbGAvFOxSS/ZV5wWi3L9XUxCSpi/0ubuO3fcH4Kw3mId1Q=
Received: from DB7PR04MB5178.eurprd04.prod.outlook.com (20.176.236.22) by
 DB7PR04MB4234.eurprd04.prod.outlook.com (52.134.108.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.15; Tue, 2 Jul 2019 10:03:41 +0000
Received: from DB7PR04MB5178.eurprd04.prod.outlook.com
 ([fe80::2c71:9f2f:8db1:a290]) by DB7PR04MB5178.eurprd04.prod.outlook.com
 ([fe80::2c71:9f2f:8db1:a290%4]) with mapi id 15.20.2032.019; Tue, 2 Jul 2019
 10:03:41 +0000
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
Subject: [RESEND PATCH 1/3] dt-bindings: power: Add power domain binding for
 i.mx8m family
Thread-Topic: [RESEND PATCH 1/3] dt-bindings: power: Add power domain binding
 for i.mx8m family
Thread-Index: AQHVML1tGyXFafOi3U+JOKfzqT6aXQ==
Date:   Tue, 2 Jul 2019 10:03:41 +0000
Message-ID: <20190702100832.29718-2-ping.bai@nxp.com>
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
x-ms-office365-filtering-correlation-id: 639c5d9b-a966-48d3-d636-08d6fed48f75
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);SRVR:DB7PR04MB4234;
x-ms-traffictypediagnostic: DB7PR04MB4234:
x-microsoft-antispam-prvs: <DB7PR04MB4234B76E546F4A02546A1CD887F80@DB7PR04MB4234.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 008663486A
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(396003)(346002)(39860400002)(366004)(376002)(136003)(189003)(199004)(6512007)(6636002)(6436002)(2201001)(71200400001)(386003)(50226002)(6486002)(71190400001)(6506007)(8936002)(256004)(25786009)(486006)(5660300002)(36756003)(3846002)(6116002)(52116002)(76176011)(86362001)(66476007)(66556008)(64756008)(476003)(66446008)(4326008)(66946007)(73956011)(1076003)(54906003)(81156014)(316002)(186003)(26005)(110136005)(446003)(2616005)(102836004)(81166006)(11346002)(53936002)(66066001)(2906002)(68736007)(305945005)(14454004)(478600001)(7736002)(2501003)(8676002)(99286004);DIR:OUT;SFP:1101;SCL:1;SRVR:DB7PR04MB4234;H:DB7PR04MB5178.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0oIUecmfqpZBApvY4T7NTjeJ4S7/YaTbUmtdIZtR2iU1Elc+CjWKSZblAEAk9YbecrBUKB8uO5xurrbwtIdMFml1PVbgLKean3pt+J0qXM1WF6B6J0+qq+rxQuCxWxs+wNYKPqNoOqP3JeNidiRv/hTKm1KEeUMEzyZA3IwRIfcOwAwo3YWEgxn4Ne0NN+wPPk4mlMKSWSxpq08JtlwTQrYfwNm9kfxpnzFCnXvXBsY4xqxk4ZS0uhcpsGFDQVSSQlaM81ZtTRGPHLPkF0br4lzFTnPwIjjLYU190w7kTCr0raHIXu8rk6LM3y8ruAiqOEqItmEmJslQ9Bx9wDXglCjdNhYnXD29QYCVFQF6vWBKBSU4FDCxZc6o7PAPROor0wbUg2etDcEos95xXjailKnlRKeuOmY6IJoTFTWcEl4=
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <5A679ABD1CCC154EAABE4A65791B8EB1@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 639c5d9b-a966-48d3-d636-08d6fed48f75
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2019 10:03:41.5868
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

Add the binding doc of power domain for i.MX8M SOC family.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
---
 .../bindings/power/fsl,imx8m-genpd.txt        | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/power/fsl,imx8m-genpd=
.txt

diff --git a/Documentation/devicetree/bindings/power/fsl,imx8m-genpd.txt b/=
Documentation/devicetree/bindings/power/fsl,imx8m-genpd.txt
new file mode 100644
index 000000000000..a92a7103de38
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/fsl,imx8m-genpd.txt
@@ -0,0 +1,46 @@
+Device Tree Bindings for Freescale i.MX8M Generic Power Domain
+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
+The binding for the i.MX8M Generic power Domain[1].
+
+[1] Documentation/devicetree/bindings/power/power_domain.txt
+
+Required properties:
+
+ - compatible: should be of:
+	- "fsl,imx8m-power-domain"
+ - #power-domain-cells: Number of cells in a PM domain Specifier, must be =
0
+ - domain-index: should be the domain index number need to pass to TF-A
+ - domain-name: the name of this pm domain
+
+Optional properties:
+ - clocks: a number of phandles to clocks that need to be enabled during
+   domain power-up sequence to ensure reset propagation into devices
+   located inside this power domain
+ - power-supply: Power supply used to power the domain
+ - parent-domains: the phandle to the parent power domain
+
+example:
+	vpu_g1_pd: vpug1-pd {
+		compatible =3D "fsl,imx8mm-pm-domain";
+		#power-domain-cells =3D <0>;
+		domain-index =3D <6>;
+		domain-name =3D "vpu_g1";
+		parent-domains =3D <&vpumix_pd>;
+		clocks =3D <&clk IMX8MM_CLK_VPU_G1_ROOT>;
+	};
+
+
+Specifying Power domain for IP modules
+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
+
+IP cores belonging to a power domain should contain a 'power-domains'
+property that is a phandle for PGC node representing the domain.
+
+Example of a device that is part of the vpu_g1 power domain:
+	vpu_g1: vpu_g1@38300000 {
+		/* ... */
+		interrupts =3D <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names =3D "irq_hantro";
+		/* ... */
+		power-domains =3D <&vpu_g1_pd>;
+	};
--=20
2.21.0


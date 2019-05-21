Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id ACCE925947
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 22:45:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727719AbfEUUlS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 May 2019 16:41:18 -0400
Received: from mail-eopbgr150042.outbound.protection.outlook.com ([40.107.15.42]:52615
        "EHLO EUR01-DB5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1727913AbfEUUlS (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 21 May 2019 16:41:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ux/yUpIogRttMIRPuVV/IqUU6npj47b5WYhnnnOyou8=;
 b=ZpV9+y2usisaM5roR8tnD7Hv8Qn/Ebr4aCni1m1fs+FS+gFAbvvMNjTE4fWW390wazGNFKI+sg8iYW7tyMEuF6g6e17kKSdBBDyL2o+CXqCnqbW028BCRM2lNZ72Ztl01tVp1mdF5Cjzl7DJ8wnc5kEj1gU45CTHPS4aVCiRmiE=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB3970.eurprd04.prod.outlook.com (52.134.92.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.15; Tue, 21 May 2019 20:41:13 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1900.020; Tue, 21 May 2019
 20:41:13 +0000
From:   Leonard Crestez <leonard.crestez@nxp.com>
To:     Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
        Lee Jones <lee.jones@linaro.org>,
        Mark Brown <broonie@kernel.org>
CC:     Robin Gong <yibin.gong@nxp.com>, Angus Ainslie <angus@akkea.ca>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Aisheng Dong <aisheng.dong@nxp.com>,
        Fabio Estevam <fabio.estevam@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH v2 2/3] dt-bindings: mfd: Document short/long press duration
 for bd718x7
Thread-Topic: [PATCH v2 2/3] dt-bindings: mfd: Document short/long press
 duration for bd718x7
Thread-Index: AQHVEBWHFdXJ679N0k21iueFfMOOlA==
Date:   Tue, 21 May 2019 20:41:13 +0000
Message-ID: <ec750ff0021c942b3c477e1cc7dc35f957600c96.1558471150.git.leonard.crestez@nxp.com>
References: <cover.1558471150.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1558471150.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [89.37.124.34]
x-mailer: git-send-email 2.17.1
x-clientproxiedby: LO2P265CA0430.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a0::34) To AM0PR04MB6434.eurprd04.prod.outlook.com
 (2603:10a6:208:16c::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 08080a7e-56b4-47ac-0033-08d6de2caa1e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);SRVR:AM0PR04MB3970;
x-ms-traffictypediagnostic: AM0PR04MB3970:
x-microsoft-antispam-prvs: <AM0PR04MB3970056A6C126FE0A0AB7768EE070@AM0PR04MB3970.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0044C17179
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(396003)(346002)(39860400002)(376002)(366004)(136003)(199004)(189003)(36756003)(86362001)(52116002)(25786009)(6116002)(14454004)(71190400001)(71200400001)(7736002)(5660300002)(2906002)(7416002)(6436002)(316002)(6486002)(66556008)(64756008)(66446008)(386003)(6506007)(3846002)(66946007)(6512007)(73956011)(66476007)(54906003)(118296001)(8676002)(44832011)(4326008)(81166006)(81156014)(76176011)(486006)(50226002)(2616005)(66066001)(8936002)(26005)(305945005)(446003)(256004)(110136005)(11346002)(102836004)(68736007)(476003)(478600001)(53936002)(186003)(99286004)(138113003);DIR:OUT;SFP:1101;SCL:1;SRVR:AM0PR04MB3970;H:AM0PR04MB6434.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: egEGARHah1acR0Q6UK3qka6Vuh3V6UOxUnTj83egbRUZQ5M+xnHnHMSuMrq9a/XZd/Aw5zNSFIDsdVuHndnCDOR7jPcqH3GYDrgUCH62bdJFVHubk+p4dbumIk7YK1i/JVthxyz365CybaoYl2rx+T8Y3EXeO5WUAYD+rZy71BUocpYl/GMGR6IoQ7ColJmRjtHVuFF9mXmSHvFQ3Zjne4emePxFK/nSbvqAl/+UcjgyRnmAei5EnzCb8KGHtnTVDz0RlN1UPggVciosqfFDZRoAHisn8jSYJouKUtqYMArbPPBt+HYL6byofZQLatU2fkDIqXvPLyhjOy7+JR9/4ykaYTbvUkeLrqEs1dpWaAe/eLzhijNH03VFJvWRcFdxFFSjtaFWOfEPUWxygFb8X3gfDYVV6LEiEQAx0EA+uHI=
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <F25247640247BD458D9D40ACCF1CE5AD@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 08080a7e-56b4-47ac-0033-08d6de2caa1e
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2019 20:41:13.6892
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB3970
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

These values can be overwritten at probe time.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
Acked-By: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
---
 .../devicetree/bindings/mfd/rohm,bd71837-pmic.txt         | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/rohm,bd71837-pmic.txt b/=
Documentation/devicetree/bindings/mfd/rohm,bd71837-pmic.txt
index d5f68ac78d15..3649c1191432 100644
--- a/Documentation/devicetree/bindings/mfd/rohm,bd71837-pmic.txt
+++ b/Documentation/devicetree/bindings/mfd/rohm,bd71837-pmic.txt
@@ -36,10 +36,18 @@ switched power state to SNVS. If reset is done via READ=
Y state the power
 outputs will be returned to HW control by OTP loading. Thus the reset
 target state is set to READY by default. If SNVS state is used the boot
 crucial regulators must have the regulator-always-on and regulator-boot-on
 properties set in regulator node.
=20
+- rohm,short-press-ms	: Short press duration in milliseconds
+- rohm,long-press-ms	: Long press duration in milliseconds
+
+Configure the "short press" and "long press" timers for the power button.
+Values are rounded to what hardware supports (500ms multiple for short and
+1000ms multiple for long). If these properties are not present the existin=
g
+configuration (from bootloader or OTP) is not touched.
+
 Example:
=20
 	/* external oscillator node */
 	osc: oscillator {
 		compatible =3D "fixed-clock";
--=20
2.17.1


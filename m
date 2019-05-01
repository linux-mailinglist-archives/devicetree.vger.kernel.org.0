Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F186710CCF
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2019 20:43:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726126AbfEASnc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 May 2019 14:43:32 -0400
Received: from mail-eopbgr10087.outbound.protection.outlook.com ([40.107.1.87]:13989
        "EHLO EUR02-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726004AbfEASnb (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 1 May 2019 14:43:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X4zT6JvRGcN/GuzhAFDHvWVWhNaMsUOaqRgvB+eGlh0=;
 b=jWMgFvykJkYYshZeZrG+KE5PNF+mgs9MqIIiskGq4RvissCnaIxSLvhQifg153kfH9Ty5M1M3B2CpUKg2JC+U2mecVPWbZLHLQhFAr7tlst2L4j6Ux3Q5NqvWPRRQX3rvsrpSqvIP9b/hdeEh0H4WBhu9kjistk0g0sPQvBn8RQ=
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com (20.177.49.159) by
 VI1PR04MB4093.eurprd04.prod.outlook.com (52.133.12.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Wed, 1 May 2019 18:43:27 +0000
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c]) by VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c%7]) with mapi id 15.20.1856.008; Wed, 1 May 2019
 18:43:26 +0000
From:   Frank Li <frank.li@nxp.com>
To:     "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
        "mark.rutland@arm.com" <mark.rutland@arm.com>,
        "will.deacon@arm.com" <will.deacon@arm.com>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        Aisheng Dong <aisheng.dong@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "lznuaa@gmail.com" <lznuaa@gmail.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
CC:     Frank Li <frank.li@nxp.com>
Subject: [PATCH V12 1/4] dt-bindings: perf: imx8-ddr: add imx8qxp ddr
 performance monitor
Thread-Topic: [PATCH V12 1/4] dt-bindings: perf: imx8-ddr: add imx8qxp ddr
 performance monitor
Thread-Index: AQHVAE3DIW7FncE2QkmQlW9ARMporA==
Date:   Wed, 1 May 2019 18:43:26 +0000
Message-ID: <1556736193-29411-1-git-send-email-Frank.Li@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SN4PR0501CA0013.namprd05.prod.outlook.com
 (2603:10b6:803:40::26) To VI1PR04MB4910.eurprd04.prod.outlook.com
 (2603:10a6:803:56::31)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=frank.li@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.5.2
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 320be896-9935-463e-db0b-08d6ce64e5b0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);SRVR:VI1PR04MB4093;
x-ms-traffictypediagnostic: VI1PR04MB4093:
x-microsoft-antispam-prvs: <VI1PR04MB40936961CD10433B41FD371E883B0@VI1PR04MB4093.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 00246AB517
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(39860400002)(136003)(366004)(396003)(346002)(376002)(199004)(189003)(52116002)(305945005)(7736002)(316002)(66066001)(110136005)(99286004)(386003)(66946007)(66446008)(66476007)(2201001)(66556008)(64756008)(81156014)(50226002)(8936002)(73956011)(36756003)(81166006)(8676002)(71190400001)(6436002)(476003)(4326008)(2616005)(7416002)(26005)(102836004)(256004)(486006)(14454004)(478600001)(25786009)(86362001)(68736007)(6506007)(6116002)(6486002)(2501003)(186003)(5660300002)(3846002)(2906002)(6512007)(71200400001)(53936002)(32563001)(921003)(21314003)(1121003);DIR:OUT;SFP:1101;SCL:1;SRVR:VI1PR04MB4093;H:VI1PR04MB4910.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: LRH9STg/ZrhYglb/I6Tu+b12heFSEJRLuCl+UVq+lZDIoRTzvNzeNmrYtav4gIufBSMq+HSN3WtKY6NVOwyWW8U/xbYb4umN6Eld+1gbhMyvJMCfBwSLkuyVPa6+YlJKHsIXHSQ8N/ZVUEpPhuQ2qasYpa6hrHFczHJAsoY3qYIeUjglh/TsE37dSCUB/ZDr/GUAquwtyrVEdGA/9879pNLou5H2tziZyCCvV/yppKr/PNT2c/9nZG2d/C0ylnyp7LvqSTkZ9aQHz1j7jKw1oTkDrpk9jG6Xh1rQ//p70VVbNESgKEqMiJxE5QzW5h3/sdFX3FheFNufe8O7weY5Ga37J5JK+5hDjQHsWsm5qCJjF4WB3kJbrLmO3xBy9dJrshoRG4XMbt6Bn+e4wxIBBcDRqZA1BAV7/Kg8z+En+0I=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 320be896-9935-463e-db0b-08d6ce64e5b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2019 18:43:26.8900
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4093
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

QWRkZWQgYmluZGluZyBkb2MgZm9yIGlteDhxeHAgZGRyIHBlcmZvcm1hbmNlIG1vbml0b3INCg0K
U2lnbmVkLW9mZi1ieTogRnJhbmsgTGkgPEZyYW5rLkxpQG54cC5jb20+DQpSZXZpZXdlZC1ieTog
Um9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4NCi0tLQ0KDQpOb3RlczoNCiAgICBObyBjaGFu
Z2UgZnJvbSB2MTAgdG8gdjEyDQogICAgDQogICAgQ2hhbmdlIGZyb20gdjggdG8gdjkNCiAgICAq
IHVzZSAzMmJpdCBhZGRyZXNzIHdpZHRoDQogICAgDQogICAgTm8gY2hhbmdlIGZyb20gdjQgdG8g
djgNCiAgICANCiAgICBDaGFuZ2UgZnJvbSB2NCB0byB2NA0KICAgICogcmVtb3ZlICJzdGFuZGFy
ZCB4eHgiDQogICAgDQogICAgQ2hhbmdlIGZyb20gdjIgdG8gdjMNCiAgICAqIGRkcl9wbXUwIC0+
IGRkci1wbXUNCg0KIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BlcmYvZnNsLWlteC1kZHIudHh0
ICAgICAgIHwgMjIgKysrKysrKysrKysrKysrKysrKysrKw0KIDEgZmlsZSBjaGFuZ2VkLCAyMiBp
bnNlcnRpb25zKCspDQogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9wZXJmL2ZzbC1pbXgtZGRyLnR4dA0KDQpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BlcmYvZnNsLWlteC1kZHIudHh0IGIvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BlcmYvZnNsLWlteC1kZHIudHh0DQpuZXcgZmlsZSBt
b2RlIDEwMDY0NA0KaW5kZXggMDAwMDAwMC4uOWI5Y2RhNmENCi0tLSAvZGV2L251bGwNCisrKyBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wZXJmL2ZzbC1pbXgtZGRyLnR4dA0K
QEAgLTAsMCArMSwyMiBAQA0KKyogRnJlZXNjYWxlKE5YUCkgSU1YOCBERFIgcGVyZm9ybWFuY2Ug
bW9uaXRvcg0KKw0KK1JlcXVpcmVkIHByb3BlcnRpZXM6DQorDQorLSBjb21wYXRpYmxlOiBzaG91
bGQgYmUgb25lIG9mOg0KKwkiZnNsLGlteDgtZGRyLXBtdSINCisJImZzbCxpbXg4bS1kZHItcG11
Ig0KKw0KKy0gcmVnOiBwaHlzaWNhbCBhZGRyZXNzIGFuZCBzaXplDQorDQorLSBpbnRlcnJ1cHRz
OiBzaW5nbGUgaW50ZXJydXB0DQorCWdlbmVyYXRlZCBieSB0aGUgY29udHJvbCBibG9jaw0KKw0K
K0V4YW1wbGU6DQorDQorCWRkci1wbXVANWMwMjAwMDAgew0KKwkJY29tcGF0aWJsZSA9ICJmc2ws
aW14OC1kZHItcG11IjsNCisJCXJlZyA9IDwweDVjMDIwMDAwIDB4MTAwMDA+Ow0KKwkJaW50ZXJy
dXB0LXBhcmVudCA9IDwmZ2ljPjsNCisJCWludGVycnVwdHMgPSA8R0lDX1NQSSAxMzEgSVJRX1RZ
UEVfTEVWRUxfSElHSD47DQorCX07DQorDQotLSANCjIuNS4yDQoNCg==

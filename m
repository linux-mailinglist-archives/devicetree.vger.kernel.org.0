Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BE380109E6
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2019 17:21:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726488AbfEAPVC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 May 2019 11:21:02 -0400
Received: from mail-eopbgr00071.outbound.protection.outlook.com ([40.107.0.71]:35302
        "EHLO EUR02-AM5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726473AbfEAPVB (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 1 May 2019 11:21:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1gx/882Az6aRnMGqqaQ3ZQPCLNARC+6uEHbFV2GAIBU=;
 b=P0AedrMLoNzF+9yrwLBekdjfgeJRHuGpPXOMLFCkeFj9juqLKM3Vy6I5kfXohGIyTTPOKa31GnemjFsFOLkfWs+kVXQEylqdt2No/YpGGvf8V5sq3IzxRXgJd9YihTJB5uCGNcN6izASf4pLR1jOgRJVwgyPJgP/RJuIh9FCHx8=
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com (20.177.49.159) by
 VI1PR04MB4910.eurprd04.prod.outlook.com (20.177.49.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Wed, 1 May 2019 15:20:57 +0000
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c]) by VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c%7]) with mapi id 15.20.1856.008; Wed, 1 May 2019
 15:20:57 +0000
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
Subject: [PATCH V11 1/4] dt-bindings: perf: imx8-ddr: add imx8qxp ddr
 performance monitor
Thread-Topic: [PATCH V11 1/4] dt-bindings: perf: imx8-ddr: add imx8qxp ddr
 performance monitor
Thread-Index: AQHVADF53wxei3krkkuyN9Gkz8qGhQ==
Date:   Wed, 1 May 2019 15:20:57 +0000
Message-ID: <1556724043-3961-1-git-send-email-Frank.Li@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SN4PR0501CA0010.namprd05.prod.outlook.com
 (2603:10b6:803:40::23) To VI1PR04MB4910.eurprd04.prod.outlook.com
 (2603:10a6:803:56::31)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=frank.li@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.5.2
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e0a6d85d-a5a6-49c3-2d78-08d6ce489c06
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);SRVR:VI1PR04MB4910;
x-ms-traffictypediagnostic: VI1PR04MB4910:
x-microsoft-antispam-prvs: <VI1PR04MB49103999936116EBB3BC66F2883B0@VI1PR04MB4910.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 00246AB517
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(136003)(346002)(376002)(396003)(39860400002)(366004)(189003)(199004)(52116002)(6512007)(68736007)(486006)(99286004)(2201001)(66946007)(6436002)(36756003)(476003)(2616005)(316002)(6116002)(7736002)(4326008)(186003)(26005)(6506007)(386003)(53936002)(73956011)(102836004)(110136005)(14454004)(66476007)(305945005)(64756008)(8676002)(66556008)(86362001)(71200400001)(71190400001)(8936002)(2906002)(256004)(2501003)(81156014)(81166006)(66066001)(3846002)(478600001)(50226002)(7416002)(25786009)(6486002)(5660300002)(66446008)(921003)(21314003)(32563001)(1121003);DIR:OUT;SFP:1101;SCL:1;SRVR:VI1PR04MB4910;H:VI1PR04MB4910.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: LtGrjzgwcuCcUe5uVRxj9XfPNxOknW5JuNvY7KH5+8gj8HwZUl0Akh1G96jojF7Q/lbRk4H5RTbnlqUT+cPOvS0EKjjqovBbLXERR1kt7XyXCQk0c2o8ITLZFBum+wBbiT2aeCjAu8gVc7DE9I8KCnmRwqdiWiiy6V8tVLkDnuk2hXQdF30zC1dQVM3CyZpPRaAy3rPbcW/B++hK7xG3VcjDuR/cqs2KtmDp1od5I1qwdNYOk8xSlYT9tAH5HvFwseqYZ/4XbTE2ac6CAUh7Dr1ICZJFHeHM+q+vijTYrJO1si7pR2jLFLg8ipPjU8MEOrJNPmsOTx6IHyL4XiO20LPT5iThDWKnejynl6Y7t4s3/l7THuH/QGex4/gcgU4p2fm9vqhn2u/keCGAmhEw9Cd/mO+dQc0/oAufltM4ywA=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e0a6d85d-a5a6-49c3-2d78-08d6ce489c06
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2019 15:20:57.4054
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4910
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

QWRkZWQgYmluZGluZyBkb2MgZm9yIGlteDhxeHAgZGRyIHBlcmZvcm1hbmNlIG1vbml0b3INCg0K
U2lnbmVkLW9mZi1ieTogRnJhbmsgTGkgPEZyYW5rLkxpQG54cC5jb20+DQpSZXZpZXdlZC1ieTog
Um9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4NCi0tLQ0KDQpOb3RlczoNCiAgICBObyBjaGFu
Z2UgZnJvbSB2MTAgdG8gdjExDQogICAgDQogICAgQ2hhbmdlIGZyb20gdjggdG8gdjkNCiAgICAq
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

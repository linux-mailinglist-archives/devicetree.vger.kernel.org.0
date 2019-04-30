Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6B829101F1
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2019 23:40:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726974AbfD3VkP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Apr 2019 17:40:15 -0400
Received: from mail-eopbgr140077.outbound.protection.outlook.com ([40.107.14.77]:46851
        "EHLO EUR01-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726048AbfD3VkO (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 30 Apr 2019 17:40:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rP8qF/6usKhYVqhWgYXx1omPG2DFAPY+c4ciLit2WNw=;
 b=h6kiWM5bDJFvLa/rAFp4ugmwp7jRUdTUTAGFb0ZSsDtUcrAR8nxVaaw+nu6SbY0IABdOMWlz24GveNiWoWGt1DHLZ9chw7HrK4fGI77yh2citSVGFD8bxrg3fIbmy9O0x4/5qrCoy8w/pkWwHfW+LvpgawE3BOFTKM9JgsWktL4=
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com (20.177.49.159) by
 VI1PR04MB6303.eurprd04.prod.outlook.com (20.179.28.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.14; Tue, 30 Apr 2019 21:40:12 +0000
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c]) by VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c%7]) with mapi id 15.20.1856.008; Tue, 30 Apr 2019
 21:40:12 +0000
From:   Frank Li <frank.li@nxp.com>
To:     "mark.rutland@arm.com" <mark.rutland@arm.com>,
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
Subject: [PATCH V10 1/4] dt-bindings: perf: imx8-ddr: add imx8qxp ddr
 performance monitor
Thread-Topic: [PATCH V10 1/4] dt-bindings: perf: imx8-ddr: add imx8qxp ddr
 performance monitor
Thread-Index: AQHU/51KW0WO/5kBQkO2N3sbEJ8gIw==
Date:   Tue, 30 Apr 2019 21:40:12 +0000
Message-ID: <1556660398-25450-1-git-send-email-Frank.Li@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SN4PR0501CA0153.namprd05.prod.outlook.com
 (2603:10b6:803:2c::31) To VI1PR04MB4910.eurprd04.prod.outlook.com
 (2603:10a6:803:56::31)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=frank.li@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.5.2
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3eb89605-7487-4060-1753-08d6cdb46c7d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);SRVR:VI1PR04MB6303;
x-ms-traffictypediagnostic: VI1PR04MB6303:
x-microsoft-antispam-prvs: <VI1PR04MB6303333EBFD4B9AA556698A3883A0@VI1PR04MB6303.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 00235A1EEF
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(346002)(376002)(366004)(39860400002)(396003)(136003)(189003)(199004)(2501003)(476003)(6116002)(7736002)(36756003)(316002)(50226002)(53936002)(2616005)(66066001)(14454004)(68736007)(6436002)(8936002)(6486002)(5660300002)(486006)(3846002)(7416002)(8676002)(25786009)(52116002)(99286004)(2201001)(81156014)(305945005)(478600001)(81166006)(26005)(4326008)(71200400001)(102836004)(256004)(386003)(6506007)(86362001)(66556008)(66476007)(2906002)(64756008)(186003)(66446008)(71190400001)(110136005)(66946007)(6512007)(73956011)(21314003)(32563001)(921003)(1121003);DIR:OUT;SFP:1101;SCL:1;SRVR:VI1PR04MB6303;H:VI1PR04MB4910.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 7J5kUkPTno6WWg5uYkV65u+n4tBeTnVtgEWqlOjYBBzz0DWTEg3u/tgfwfWSpfyyq0G6AHhc5HZoK7kQArf/2D0V8dcEe8rWM5s0I7/cCQeOBfoGUQoW8efUL8rWXnR1uONJbiZ+MvoijJJQV5wG4sZ0BdGlpVs8CIp3LeCVn7eTOm9oIy+OdgV9GEBlFNNp+maXdwVcAvBJcVEjunHoopCAPEek/JcUFZWqYjarM80YBi9+YYhFQr4aEu71hgvBSzKXdoszCjkpEbRa4pRXsRGuCSm2ASWrveDpZsCwrY/oM3f0RtYT3REFVF5N3tcLDDuRhk+1/uJqicmRpoJRf4oKvnxqe2c9BOkoru+NhYp1cX3wKK1JfYdBodEP2Ux/RiVposnOR7hHCXfwmzH91qfZCIHu54Zc0bXQkbmrgvY=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3eb89605-7487-4060-1753-08d6cdb46c7d
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2019 21:40:12.1671
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6303
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

QWRkZWQgYmluZGluZyBkb2MgZm9yIGlteDhxeHAgZGRyIHBlcmZvcm1hbmNlIG1vbml0b3INCg0K
U2lnbmVkLW9mZi1ieTogRnJhbmsgTGkgPEZyYW5rLkxpQG54cC5jb20+DQpSZXZpZXdlZC1ieTog
Um9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4NCi0tLQ0KTm8gY2hhbmdlIGZyb20gdjkgdG8g
djEwDQoNCkNoYW5nZSBmcm9tIHY4IHRvIHY5DQoqIHVzZSAzMmJpdCBhZGRyZXNzIHdpZHRoIA0K
DQpObyBjaGFuZ2UgZnJvbSB2NCB0byB2OA0KDQpDaGFuZ2UgZnJvbSB2NCB0byB2NA0KKiByZW1v
dmUgInN0YW5kYXJkIHh4eCINCg0KQ2hhbmdlIGZyb20gdjIgdG8gdjMNCiogZGRyX3BtdTAgLT4g
ZGRyLXBtdQ0KDQoNCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9wZXJmL2ZzbC1pbXgtZGRyLnR4
dCAgICAgICB8IDIyICsrKysrKysrKysrKysrKysrKysrKysNCiAxIGZpbGUgY2hhbmdlZCwgMjIg
aW5zZXJ0aW9ucygrKQ0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvcGVyZi9mc2wtaW14LWRkci50eHQNCg0KZGlmZiAtLWdpdCBhL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wZXJmL2ZzbC1pbXgtZGRyLnR4dCBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wZXJmL2ZzbC1pbXgtZGRyLnR4dA0KbmV3IGZpbGUg
bW9kZSAxMDA2NDQNCmluZGV4IDAwMDAwMDAuLjliOWNkYTZhDQotLS0gL2Rldi9udWxsDQorKysg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGVyZi9mc2wtaW14LWRkci50eHQN
CkBAIC0wLDAgKzEsMjIgQEANCisqIEZyZWVzY2FsZShOWFApIElNWDggRERSIHBlcmZvcm1hbmNl
IG1vbml0b3INCisNCitSZXF1aXJlZCBwcm9wZXJ0aWVzOg0KKw0KKy0gY29tcGF0aWJsZTogc2hv
dWxkIGJlIG9uZSBvZjoNCisJImZzbCxpbXg4LWRkci1wbXUiDQorCSJmc2wsaW14OG0tZGRyLXBt
dSINCisNCistIHJlZzogcGh5c2ljYWwgYWRkcmVzcyBhbmQgc2l6ZQ0KKw0KKy0gaW50ZXJydXB0
czogc2luZ2xlIGludGVycnVwdA0KKwlnZW5lcmF0ZWQgYnkgdGhlIGNvbnRyb2wgYmxvY2sNCisN
CitFeGFtcGxlOg0KKw0KKwlkZHItcG11QDVjMDIwMDAwIHsNCisJCWNvbXBhdGlibGUgPSAiZnNs
LGlteDgtZGRyLXBtdSI7DQorCQlyZWcgPSA8MHg1YzAyMDAwMCAweDEwMDAwPjsNCisJCWludGVy
cnVwdC1wYXJlbnQgPSA8JmdpYz47DQorCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTMxIElSUV9U
WVBFX0xFVkVMX0hJR0g+Ow0KKwl9Ow0KKw0KLS0gDQoyLjUuMg0KDQo=

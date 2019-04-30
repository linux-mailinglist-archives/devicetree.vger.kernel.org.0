Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5EBD4101F5
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2019 23:40:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727012AbfD3Vky (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Apr 2019 17:40:54 -0400
Received: from mail-eopbgr140080.outbound.protection.outlook.com ([40.107.14.80]:18614
        "EHLO EUR01-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726412AbfD3Vky (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 30 Apr 2019 17:40:54 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n4gjdGtFWbSQUmTwcnKEg3LEyx1m2hVKOntlI4wlFfI=;
 b=AavYKpOIqISmvld7KnF9MQjfuqSbCkOwgDTznW9VXktCAuriW5UedfSTXZFzUjRkw80sNOxpEFTSl1/RfB175Cqm818O3EMf9SLve0eJB6t/t/mEAQsrhdV3RTGlxQTn+hGisTWdCDuw8gV/RVft3INCzndsWqG1CuhAPtTDbCo=
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com (20.177.49.159) by
 VI1PR04MB6303.eurprd04.prod.outlook.com (20.179.28.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.14; Tue, 30 Apr 2019 21:40:18 +0000
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c]) by VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c%7]) with mapi id 15.20.1856.008; Tue, 30 Apr 2019
 21:40:18 +0000
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
Subject: [PATCH V10 3/4] arm64: dts: imx8qxp: added ddr performance monitor
 nodes
Thread-Topic: [PATCH V10 3/4] arm64: dts: imx8qxp: added ddr performance
 monitor nodes
Thread-Index: AQHU/51NYD7VmA6ZDE+d03NCfNooCg==
Date:   Tue, 30 Apr 2019 21:40:17 +0000
Message-ID: <1556660398-25450-3-git-send-email-Frank.Li@nxp.com>
References: <1556660398-25450-1-git-send-email-Frank.Li@nxp.com>
In-Reply-To: <1556660398-25450-1-git-send-email-Frank.Li@nxp.com>
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
x-ms-office365-filtering-correlation-id: 7a25a50b-77a4-4026-e681-08d6cdb46ff9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);SRVR:VI1PR04MB6303;
x-ms-traffictypediagnostic: VI1PR04MB6303:
x-microsoft-antispam-prvs: <VI1PR04MB6303676698A1B02455FF52BF883A0@VI1PR04MB6303.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:497;
x-forefront-prvs: 00235A1EEF
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(346002)(376002)(366004)(39860400002)(396003)(136003)(189003)(199004)(2501003)(476003)(6116002)(7736002)(36756003)(316002)(50226002)(53936002)(2616005)(66066001)(14454004)(68736007)(6436002)(8936002)(4744005)(6486002)(5660300002)(486006)(3846002)(7416002)(8676002)(25786009)(52116002)(11346002)(99286004)(76176011)(2201001)(81156014)(305945005)(478600001)(81166006)(26005)(4326008)(446003)(71200400001)(102836004)(256004)(386003)(6506007)(86362001)(66556008)(66476007)(2906002)(64756008)(186003)(66446008)(71190400001)(110136005)(66946007)(6512007)(73956011)(32563001)(921003)(1121003);DIR:OUT;SFP:1101;SCL:1;SRVR:VI1PR04MB6303;H:VI1PR04MB4910.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: I91lGrgZwXIsdQ64OifDvPvW+r9J2ZMlx0l3DqNCJyboXMgSKC7/NWsUpqu3lGly5cqHKU9RL5S4t+rTsTvLU0UifnV+gLJSDJ5h8Vp2y1VAZzbSiAi2JxgRucTXV7r01Rmfwo/OCsjiJTCfBobZVxxsNAKHxFOHx4ammuaRrriY+AcHFcH8ka881JVGE2uxvOecW1OvaK86+CmE7oPPIFJKMkGpTRpw4roywulptf7woaY/eh0fH5SJ2zC+h8pekJC0eajTjve0Rz+fMi9/c0ClLGzOVB3HuZiR2vRuUjEuLcXsi/ORZ0qyNRw3RHQTE4RlSAGY4YYMhD0TbCfc8fhmFw4+4DOebC+fCRHLWNBvDVAR26RLbdZ85WYh+pzO4JpimOdV1YivixbH87xUwPl7jOFKYXcvkX4UzUCgvl0=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a25a50b-77a4-4026-e681-08d6cdb46ff9
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2019 21:40:17.9832
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6303
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

QWRkIGRkciBwZXJmb3JtYW5jZSBtb25pdG9yDQoNClNpZ25lZC1vZmYtYnk6IEZyYW5rIExpIDxG
cmFuay5MaUBueHAuY29tPg0KUmV2aWV3ZWQtYnk6IEZhYmlvIEVzdGV2YW0gPGZlc3RldmFtQGdt
YWlsLmNvbT4NCi0tLQ0KTm8gY2hhbmdlIGZyb20gdjkgdG8gdjEwDQoNCkNoYW5nZSBmcm9tIHY4
IHRvIHY5DQoqIHB1dCBkZHItcG11IHVuZGVyIGRkcl9zdWJzeXN0ZW0gYnVzDQoNCkNoYW5nZSBm
cm9tIHYzIHRvIHY4DQoqIG5vbmUNCg0KQ2hhbmdlIGZyb20gdjIgdG8gdjMNCiogZGRyX3BtdTAg
LT4gZGRyLXBtdQ0KDQogYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OHF4cC5kdHNp
IHwgMTQgKysrKysrKysrKysrKysNCiAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKQ0K
DQpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OHF4cC5kdHNp
IGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OHF4cC5kdHNpDQppbmRleCAwNjgz
ZWUyLi5hMzNlMDhjIDEwMDY0NA0KLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUv
aW14OHF4cC5kdHNpDQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4cXhw
LmR0c2kNCkBAIC0zNzgsNiArMzc4LDIwIEBADQogCQl9Ow0KIAl9Ow0KIA0KKwlkZHJfc3Vic3lz
czogYnVzQDVjMDAwMDAwIHsNCisJCWNvbXBhdGlibGUgPSAic2ltcGxlLWJ1cyI7DQorCQkjYWRk
cmVzcy1jZWxscyA9IDwxPjsNCisJCSNzaXplLWNlbGxzID0gPDE+Ow0KKwkJcmFuZ2VzID0gPDB4
NWMwMDAwMDAgMHgwIDB4NWMwMDAwMDAgMHgxMDAwMDAwPjsNCisNCisJCWRkci1wbXVANWMwMjAw
MDAgew0KKwkJCWNvbXBhdGlibGUgPSAiZnNsLGlteDgtZGRyLXBtdSI7DQorCQkJcmVnID0gPDB4
NWMwMjAwMDAgMHgxMDAwMD47DQorCQkJaW50ZXJydXB0LXBhcmVudCA9IDwmZ2ljPjsNCisJCQlp
bnRlcnJ1cHRzID0gPEdJQ19TUEkgMTMxIElSUV9UWVBFX0xFVkVMX0hJR0g+Ow0KKwkJfTsNCisJ
fTsNCisNCiAJbHNpb19zdWJzeXM6IGJ1c0A1ZDAwMDAwMCB7DQogCQljb21wYXRpYmxlID0gInNp
bXBsZS1idXMiOw0KIAkJI2FkZHJlc3MtY2VsbHMgPSA8MT47DQotLSANCjIuNS4yDQoNCg==

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5A85DE2D6
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2019 14:38:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728006AbfD2MiL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Apr 2019 08:38:11 -0400
Received: from mail-eopbgr50041.outbound.protection.outlook.com ([40.107.5.41]:12036
        "EHLO EUR03-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1728044AbfD2MiK (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 29 Apr 2019 08:38:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fSCTAV40wL8S6Ebq9Ksi7darocnOgZxmXG9FjZoRSf4=;
 b=v+lb7AAT5j6offgPFREJJq74+ZtG/DgTtu9zWAlXJBWcMH/3d/pSG6NATcodVNqx57i9HVpl67QFOiXcvSx3iShK/w1JFMqaALpfmpAFAK/+HQ6cgK+j8paRyRr141pECQ5Yzsx1X5VFylih966XJ0UqVF4nBdg7RZKNZJf1tbY=
Received: from VI1PR04MB5040.eurprd04.prod.outlook.com (20.177.50.97) by
 VI1PR04MB4592.eurprd04.prod.outlook.com (20.177.56.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.12; Mon, 29 Apr 2019 12:38:00 +0000
Received: from VI1PR04MB5040.eurprd04.prod.outlook.com
 ([fe80::4d83:33f7:38e7:70ec]) by VI1PR04MB5040.eurprd04.prod.outlook.com
 ([fe80::4d83:33f7:38e7:70ec%4]) with mapi id 15.20.1835.018; Mon, 29 Apr 2019
 12:38:00 +0000
From:   BOUGH CHEN <haibo.chen@nxp.com>
To:     "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "mark.rutland@arm.com" <mark.rutland@arm.com>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
CC:     "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: [PATCH 2/3] ARM: dts: imx7d-sdb: add SD3.0 support for USDHC1
Thread-Topic: [PATCH 2/3] ARM: dts: imx7d-sdb: add SD3.0 support for USDHC1
Thread-Index: AQHU/ohhoJWFRnyEVkmNHm7Ocdo96Q==
Date:   Mon, 29 Apr 2019 12:38:00 +0000
Message-ID: <20190429124547.19928-2-haibo.chen@nxp.com>
References: <20190429124547.19928-1-haibo.chen@nxp.com>
In-Reply-To: <20190429124547.19928-1-haibo.chen@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: HK0P153CA0011.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:18::23) To VI1PR04MB5040.eurprd04.prod.outlook.com
 (2603:10a6:803:59::33)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=haibo.chen@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b02f59af-f719-44d0-4709-08d6cc9f83aa
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);SRVR:VI1PR04MB4592;
x-ms-traffictypediagnostic: VI1PR04MB4592:
x-microsoft-antispam-prvs: <VI1PR04MB45928925467FABD8B268485790390@VI1PR04MB4592.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1360;
x-forefront-prvs: 0022134A87
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(376002)(366004)(136003)(396003)(39860400002)(346002)(189003)(199004)(97736004)(478600001)(2906002)(54906003)(66066001)(110136005)(14454004)(305945005)(6486002)(68736007)(7736002)(99286004)(52116002)(6436002)(5660300002)(36756003)(14444005)(256004)(316002)(26005)(53936002)(1076003)(53346004)(186003)(102836004)(2501003)(446003)(50226002)(486006)(4326008)(6506007)(3846002)(386003)(71200400001)(25786009)(73956011)(476003)(66476007)(2201001)(66946007)(2616005)(76176011)(66556008)(66446008)(8676002)(86362001)(64756008)(81156014)(8936002)(81166006)(6512007)(6116002)(71190400001)(11346002)(473944003);DIR:OUT;SFP:1101;SCL:1;SRVR:VI1PR04MB4592;H:VI1PR04MB5040.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: IjpKw1PJdeNblT0wUrU8N8tOS5pgfbD0i3afx44jlyjxI9DYNjQeKaWbziPgN10FVUqmwC3SD35sge+rWrpMgcZVnClIfSZaarN1NUXE02pdYmjxR4v10cQPLHAY8Fwj9XKIF+y8qjC2tDTLPrAyQ+CO9iopd5e2QoqrJa++jx8iAHB0OOec/us37Xj08nV68jfZJS56xekN4mpgcRiY7EPA4o3HuvratO4pU8UpPP7C9CO2thNPCZspFmCK4rqitkf8A9LSZzchsEmN/gq4toWaVXNXe5afyofK+XaC1qahtazZgU5N64KAVS7BZJi5MtMjet0rcPP+Wri0HyVcvQovalI2z4JfSS1q8HlBMsm1W2p6As7Q2QgjQTMf1Qgcouo7x0EvTJIOqhCPFXcXqpSaC9H5WBcxZCVji+uUqNA=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b02f59af-f719-44d0-4709-08d6cc9f83aa
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2019 12:38:00.2836
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4592
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

aS5NWDdELVNEQiBib2FyZCBzdXBwb3J0IFNEMy4wIGZvciBVU0RIQzEsIHNvIGFkZCBpdCBoZXJl
Lg0KDQpTaWduZWQtb2ZmLWJ5OiBIYWlibyBDaGVuIDxoYWliby5jaGVuQG54cC5jb20+DQotLS0N
CiBhcmNoL2FybS9ib290L2R0cy9pbXg3ZC1zZGIuZHRzIHwgNTMgKysrKysrKysrKysrKysrKysr
KysrKysrKysrKystLS0tDQogMSBmaWxlIGNoYW5nZWQsIDQ4IGluc2VydGlvbnMoKyksIDUgZGVs
ZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9pbXg3ZC1zZGIuZHRz
IGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14N2Qtc2RiLmR0cw0KaW5kZXggNmE2MDM1YjJiYzIyLi5m
NDY4NTU3YzEyMWIgMTAwNjQ0DQotLS0gYS9hcmNoL2FybS9ib290L2R0cy9pbXg3ZC1zZGIuZHRz
DQorKysgYi9hcmNoL2FybS9ib290L2R0cy9pbXg3ZC1zZGIuZHRzDQpAQCAtODcsNiArODcsMTcg
QEANCiAJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDE4MDAwMDA+Ow0KIAl9Ow0KIA0KKwly
ZWdfc2QxX3ZtbWM6IHJlZ3VsYXRvci1zZDEtdm1tYyB7DQorCQljb21wYXRpYmxlID0gInJlZ3Vs
YXRvci1maXhlZCI7DQorCQlyZWd1bGF0b3ItbmFtZSA9ICJWRERfU0QxIjsNCisJCXJlZ3VsYXRv
ci1taW4tbWljcm92b2x0ID0gPDMzMDAwMDA+Ow0KKwkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQg
PSA8MzMwMDAwMD47DQorCQlncGlvID0gPCZncGlvNSAyIEdQSU9fQUNUSVZFX0hJR0g+Ow0KKwkJ
c3RhcnR1cC1kZWxheS11cyA9IDwyMDAwMDA+Ow0KKwkJZW5hYmxlLWFjdGl2ZS1oaWdoOw0KKwl9
Ow0KKw0KKw0KIAlyZWdfYnJjbTogcmVndWxhdG9yLWJyY20gew0KIAkJY29tcGF0aWJsZSA9ICJy
ZWd1bGF0b3ItZml4ZWQiOw0KIAkJZ3BpbyA9IDwmZ3BpbzQgMjEgR1BJT19BQ1RJVkVfSElHSD47
DQpAQCAtNDA4LDEyICs0MTksMTYgQEANCiB9Ow0KIA0KICZ1c2RoYzEgew0KLQlwaW5jdHJsLW5h
bWVzID0gImRlZmF1bHQiOw0KLQlwaW5jdHJsLTAgPSA8JnBpbmN0cmxfdXNkaGMxPjsNCisJcGlu
Y3RybC1uYW1lcyA9ICJkZWZhdWx0IiwgInN0YXRlXzEwMG1oeiIsICJzdGF0ZV8yMDBtaHoiOw0K
KwlwaW5jdHJsLTAgPSA8JnBpbmN0cmxfdXNkaGMxPiwgPCZwaW5jdHJsX3VzZGhjMV9ncGlvPjsN
CisJcGluY3RybC0xID0gPCZwaW5jdHJsX3VzZGhjMV8xMDBtaHo+LCA8JnBpbmN0cmxfdXNkaGMx
X2dwaW8+Ow0KKwlwaW5jdHJsLTIgPSA8JnBpbmN0cmxfdXNkaGMxXzIwMG1oej4sIDwmcGluY3Ry
bF91c2RoYzFfZ3Bpbz47DQogCWNkLWdwaW9zID0gPCZncGlvNSAwIEdQSU9fQUNUSVZFX0xPVz47
DQogCXdwLWdwaW9zID0gPCZncGlvNSAxIEdQSU9fQUNUSVZFX0hJR0g+Ow0KIAl3YWtldXAtc291
cmNlOw0KIAlrZWVwLXBvd2VyLWluLXN1c3BlbmQ7DQorCXZtbWMtc3VwcGx5ID0gPCZyZWdfc2Qx
X3ZtbWM+Ow0KKwlmc2wsdHVuaW5nLXN0ZXAgPSA8Mj47DQogCXN0YXR1cyA9ICJva2F5IjsNCiB9
Ow0KIA0KQEAgLTYzOCw2ICs2NTMsMTUgQEANCiAJCQk+Ow0KIAkJfTsNCiANCisJCXBpbmN0cmxf
dXNkaGMxX2dwaW86IHVzZGhjMV9ncGlvZ3JwIHsNCisJCQlmc2wscGlucyA9IDwNCisJCQkJTVg3
RF9QQURfU0QxX0NEX0JfX0dQSU81X0lPMAkJMHg1OSAvKiBDRCAqLw0KKwkJCQlNWDdEX1BBRF9T
RDFfV1BfX0dQSU81X0lPMQkJMHg1OSAvKiBXUCAqLw0KKwkJCQlNWDdEX1BBRF9TRDFfUkVTRVRf
Ql9fR1BJTzVfSU8yCQkweDU5IC8qIFZNTUMgKi8NCisJCQkJIE1YN0RfUEFEX0dQSU8xX0lPMDhf
X1NEMV9WU0VMRUNUCTB4NTkgLyogVlNFTEVDVCAqLw0KKwkJCT47DQorCQl9Ow0KKw0KIAkJcGlu
Y3RybF91c2RoYzE6IHVzZGhjMWdycCB7DQogCQkJZnNsLHBpbnMgPSA8DQogCQkJCU1YN0RfUEFE
X1NEMV9DTURfX1NEMV9DTUQJCTB4NTkNCkBAIC02NDYsOSArNjcwLDI4IEBADQogCQkJCU1YN0Rf
UEFEX1NEMV9EQVRBMV9fU0QxX0RBVEExCQkweDU5DQogCQkJCU1YN0RfUEFEX1NEMV9EQVRBMl9f
U0QxX0RBVEEyCQkweDU5DQogCQkJCU1YN0RfUEFEX1NEMV9EQVRBM19fU0QxX0RBVEEzCQkweDU5
DQotCQkJCU1YN0RfUEFEX1NEMV9DRF9CX19HUElPNV9JTzAJCTB4NTkgLyogQ0QgKi8NCi0JCQkJ
TVg3RF9QQURfU0QxX1dQX19HUElPNV9JTzEJCTB4NTkgLyogV1AgKi8NCi0JCQkJTVg3RF9QQURf
U0QxX1JFU0VUX0JfX0dQSU81X0lPMgkJMHg1OSAvKiB2bW1jICovDQorCQkJPjsNCisJCX07DQor
DQorCQlwaW5jdHJsX3VzZGhjMV8xMDBtaHo6IHVzZGhjMWdycF8xMDBtaHogew0KKwkJCWZzbCxw
aW5zID0gPA0KKwkJCQlNWDdEX1BBRF9TRDFfQ01EX19TRDFfQ01ECQkweDU5DQorCQkJCU1YN0Rf
UEFEX1NEMV9DTEtfX1NEMV9DTEsJCTB4MTkNCisJCQkJTVg3RF9QQURfU0QxX0RBVEEwX19TRDFf
REFUQTAJCTB4NTkNCisJCQkJTVg3RF9QQURfU0QxX0RBVEExX19TRDFfREFUQTEJCTB4NTkNCisJ
CQkJTVg3RF9QQURfU0QxX0RBVEEyX19TRDFfREFUQTIJCTB4NTkNCisJCQkJTVg3RF9QQURfU0Qx
X0RBVEEzX19TRDFfREFUQTMJCTB4NTkNCisJCQk+Ow0KKwkJfTsNCisNCisJCXBpbmN0cmxfdXNk
aGMxXzIwMG1oejogdXNkaGMxZ3JwXzIwMG1oeiB7DQorCQkJZnNsLHBpbnMgPSA8DQorCQkJCU1Y
N0RfUEFEX1NEMV9DTURfX1NEMV9DTUQJCTB4NWINCisJCQkJTVg3RF9QQURfU0QxX0NMS19fU0Qx
X0NMSwkJMHgxYg0KKwkJCQlNWDdEX1BBRF9TRDFfREFUQTBfX1NEMV9EQVRBMAkJMHg1Yg0KKwkJ
CQlNWDdEX1BBRF9TRDFfREFUQTFfX1NEMV9EQVRBMQkJMHg1Yg0KKwkJCQlNWDdEX1BBRF9TRDFf
REFUQTJfX1NEMV9EQVRBMgkJMHg1Yg0KKwkJCQlNWDdEX1BBRF9TRDFfREFUQTNfX1NEMV9EQVRB
MwkJMHg1Yg0KIAkJCT47DQogCQl9Ow0KIA0KLS0gDQoyLjE3LjENCg0K

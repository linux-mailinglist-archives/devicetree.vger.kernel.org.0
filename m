Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6D5AEE2D4
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2019 14:38:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728054AbfD2MiH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Apr 2019 08:38:07 -0400
Received: from mail-eopbgr00074.outbound.protection.outlook.com ([40.107.0.74]:4185
        "EHLO EUR02-AM5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1728044AbfD2MiG (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 29 Apr 2019 08:38:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gDf6nrCt3LitKUOP3zpZb7jw+jlAux+xbbFVzmO3Ubc=;
 b=qBy7DrBZ7+2vTAzedfKgeIeKMK0Z2o6NcMriKSUoXV0uY888KCJRMcmJ53ii9bTsyt3lBCbTEZUhZeSY2fXUkRaEx4zMTAqfl8W26XdQTVeAjMpTqeyPTgZ5IemY5xiOdliV3KKzpPaz2dL9YMnJesPp+JBZJpqiJoeKtx69LNc=
Received: from VI1PR04MB5040.eurprd04.prod.outlook.com (20.177.50.97) by
 VI1PR04MB4270.eurprd04.prod.outlook.com (52.134.31.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Mon, 29 Apr 2019 12:38:03 +0000
Received: from VI1PR04MB5040.eurprd04.prod.outlook.com
 ([fe80::4d83:33f7:38e7:70ec]) by VI1PR04MB5040.eurprd04.prod.outlook.com
 ([fe80::4d83:33f7:38e7:70ec%4]) with mapi id 15.20.1835.018; Mon, 29 Apr 2019
 12:38:03 +0000
From:   BOUGH CHEN <haibo.chen@nxp.com>
To:     "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "mark.rutland@arm.com" <mark.rutland@arm.com>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
CC:     "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: [PATCH 3/3] ARM: dts: imx7s: set the tuning start tap for USDHC
Thread-Topic: [PATCH 3/3] ARM: dts: imx7s: set the tuning start tap for USDHC
Thread-Index: AQHU/ohj+y3QLFzqbEOJZKIn88AGCg==
Date:   Mon, 29 Apr 2019 12:38:03 +0000
Message-ID: <20190429124547.19928-3-haibo.chen@nxp.com>
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
x-ms-office365-filtering-correlation-id: c4b04bc8-7d12-4b55-b417-08d6cc9f8570
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);SRVR:VI1PR04MB4270;
x-ms-traffictypediagnostic: VI1PR04MB4270:
x-microsoft-antispam-prvs: <VI1PR04MB4270C675C5944D30A1DDE5A890390@VI1PR04MB4270.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1417;
x-forefront-prvs: 0022134A87
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(136003)(366004)(346002)(396003)(376002)(39860400002)(199004)(189003)(97736004)(50226002)(386003)(6506007)(476003)(6512007)(446003)(186003)(3846002)(14454004)(66556008)(64756008)(66946007)(73956011)(6116002)(66446008)(2501003)(25786009)(66476007)(71190400001)(486006)(53936002)(26005)(2616005)(102836004)(6486002)(11346002)(36756003)(8936002)(6436002)(478600001)(68736007)(81156014)(71200400001)(81166006)(8676002)(2906002)(4326008)(99286004)(1076003)(86362001)(4744005)(5660300002)(14444005)(54906003)(110136005)(7736002)(305945005)(2201001)(52116002)(76176011)(66066001)(53346004)(316002)(256004);DIR:OUT;SFP:1101;SCL:1;SRVR:VI1PR04MB4270;H:VI1PR04MB5040.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: JakwbWHdldmOCdMW3TyR7+WG7A7el30jd4h71nPj9jLazB6bg18n35IHRXY8OAKEwGJJoIyatplX1m9fZhiEn7ICWFhqAa55A1oVlwUU3jdPMK5DTbRR0tIOXpvzZaJruuv2NfKMi6qNLemIrwUFIUVjoUqBlGmbMqHazRX5ISjstvv2/Rc3yEpoXA1e/S6IsBw1GsDVCudjwQImTj90nsIyYqvrix73F5sLUILxQw50q0gGO+CdziKk7uuA0PXYbA3ZFPf4KL1ueJW4jR31IKYScc+g9tCT70wiCOZV2pVSihpAJztQ58J9T52mJtHixUkka8U2D/IIUihJvmsGYGwmXjZsG38O3KLkK9NJ6sThfvsp/IelHarqhiiZUQdodxvapwQUfSG13Ab2wqylCCX2ezgFx2PynQEZpO4vt6Q=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c4b04bc8-7d12-4b55-b417-08d6cc9f8570
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2019 12:38:03.4749
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4270
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Rm9yIFVTREhDIHN0YW5kYXJkIHR1bmluZyBtZXRob2QsIGkuTVg3RCByZXF1aXJlIHRoYXQgdGhl
IHN0YXJ0IHRhcA0KcG9pbnQgbXVzdCBiZSBsYXJnZXIgdGhhbiAxMCwgb3RoZXJ3aXNlIHRoZSBp
bnRlcm5hbCBJQyBsb2dpYyBjYW4ndA0Kd29yayBub3JtYWwuIFNvIHRoaXMgcGF0Y2ggc2V0IHRo
ZSB0dW5pbmcgc3RhcnQgdGFwIGFzIDIwIGFjY29yZGluZw0KdG8gSUMgc3VnZ2VzdGlvbi4NCg0K
U2lnbmVkLW9mZi1ieTogSGFpYm8gQ2hlbiA8aGFpYm8uY2hlbkBueHAuY29tPg0KLS0tDQogYXJj
aC9hcm0vYm9vdC9kdHMvaW14N3MuZHRzaSB8IDMgKysrDQogMSBmaWxlIGNoYW5nZWQsIDMgaW5z
ZXJ0aW9ucygrKQ0KDQpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14N3MuZHRzaSBi
L2FyY2gvYXJtL2Jvb3QvZHRzL2lteDdzLmR0c2kNCmluZGV4IDEwNjcxMWQyYzAxYi4uMTA4NjUy
OTE1Zjk5IDEwMDY0NA0KLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14N3MuZHRzaQ0KKysrIGIv
YXJjaC9hcm0vYm9vdC9kdHMvaW14N3MuZHRzaQ0KQEAgLTExMjYsNiArMTEyNiw3IEBADQogCQkJ
CQk8JmNsa3MgSU1YN0RfVVNESEMxX1JPT1RfQ0xLPjsNCiAJCQkJY2xvY2stbmFtZXMgPSAiaXBn
IiwgImFoYiIsICJwZXIiOw0KIAkJCQlidXMtd2lkdGggPSA8ND47DQorCQkJCWZzbCx0dW5pbmct
c3RhcnQtdGFwID0gPDIwPjsNCiAJCQkJc3RhdHVzID0gImRpc2FibGVkIjsNCiAJCQl9Ow0KIA0K
QEAgLTExMzgsNiArMTEzOSw3IEBADQogCQkJCQk8JmNsa3MgSU1YN0RfVVNESEMyX1JPT1RfQ0xL
PjsNCiAJCQkJY2xvY2stbmFtZXMgPSAiaXBnIiwgImFoYiIsICJwZXIiOw0KIAkJCQlidXMtd2lk
dGggPSA8ND47DQorCQkJCWZzbCx0dW5pbmctc3RhcnQtdGFwID0gPDIwPjsNCiAJCQkJc3RhdHVz
ID0gImRpc2FibGVkIjsNCiAJCQl9Ow0KIA0KQEAgLTExNTAsNiArMTE1Miw3IEBADQogCQkJCQk8
JmNsa3MgSU1YN0RfVVNESEMzX1JPT1RfQ0xLPjsNCiAJCQkJY2xvY2stbmFtZXMgPSAiaXBnIiwg
ImFoYiIsICJwZXIiOw0KIAkJCQlidXMtd2lkdGggPSA8ND47DQorCQkJCWZzbCx0dW5pbmctc3Rh
cnQtdGFwID0gPDIwPjsNCiAJCQkJc3RhdHVzID0gImRpc2FibGVkIjsNCiAJCQl9Ow0KIA0KLS0g
DQoyLjE3LjENCg0K

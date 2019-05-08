Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 706301758A
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2019 12:00:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727095AbfEHKAV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 May 2019 06:00:21 -0400
Received: from mail-eopbgr50072.outbound.protection.outlook.com ([40.107.5.72]:19078
        "EHLO EUR03-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726839AbfEHKAV (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 8 May 2019 06:00:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N9NhfFMu93xfl0CWUaGF9oD/zfbeliOHhlwzrPu3zIs=;
 b=e6o4VGiO2fLrB2j2PAiB9REslgfn8P/oLrOjJBaqzsWVpd+aIxYMhgxjngSJnjhnqRZGN2v3e5+dEx092ecHhrP9vEFinWn8E8joUcoGlxhtAKhF8sk+ScDNJJpBnnxvigqurCuBdC2vSLiVMqFmi3bgrhMu60oswBrZ4KtcZJI=
Received: from AM0PR04MB4865.eurprd04.prod.outlook.com (20.176.215.158) by
 AM0PR04MB6083.eurprd04.prod.outlook.com (20.179.34.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Wed, 8 May 2019 10:00:14 +0000
Received: from AM0PR04MB4865.eurprd04.prod.outlook.com
 ([fe80::f496:84c1:30b5:43be]) by AM0PR04MB4865.eurprd04.prod.outlook.com
 ([fe80::f496:84c1:30b5:43be%7]) with mapi id 15.20.1856.012; Wed, 8 May 2019
 10:00:14 +0000
From:   Wen He <wen.he_1@nxp.com>
To:     "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>
CC:     Leo Li <leoyang.li@nxp.com>, Wen He <wen.he_1@nxp.com>
Subject: [v1 2/4] arm64: dts: ls1028a: Add properties for HDP Controller.
Thread-Topic: [v1 2/4] arm64: dts: ls1028a: Add properties for HDP Controller.
Thread-Index: AQHVBYTUFfuSrdU+WUKVfSyKU2yhwQ==
Date:   Wed, 8 May 2019 10:00:14 +0000
Message-ID: <20190508100136.7009-2-wen.he_1@nxp.com>
References: <20190508100136.7009-1-wen.he_1@nxp.com>
In-Reply-To: <20190508100136.7009-1-wen.he_1@nxp.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK0P153CA0043.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:17::31) To AM0PR04MB4865.eurprd04.prod.outlook.com
 (2603:10a6:208:c4::30)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=wen.he_1@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4c2d8f5b-fadd-4371-72c0-08d6d39bf70e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);SRVR:AM0PR04MB6083;
x-ms-traffictypediagnostic: AM0PR04MB6083:
x-microsoft-antispam-prvs: <AM0PR04MB6083900D4837EBEE52796D49E2320@AM0PR04MB6083.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:983;
x-forefront-prvs: 0031A0FFAF
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(396003)(346002)(39860400002)(376002)(136003)(366004)(199004)(189003)(476003)(11346002)(14454004)(316002)(2201001)(256004)(86362001)(4326008)(478600001)(305945005)(8936002)(25786009)(446003)(102836004)(2906002)(66446008)(66476007)(73956011)(66556008)(64756008)(66946007)(6486002)(71200400001)(81156014)(36756003)(81166006)(66066001)(8676002)(71190400001)(53936002)(6506007)(386003)(76176011)(5660300002)(54906003)(3846002)(99286004)(6116002)(52116002)(486006)(110136005)(6436002)(2616005)(68736007)(7736002)(2501003)(50226002)(1076003)(186003)(26005)(6512007);DIR:OUT;SFP:1101;SCL:1;SRVR:AM0PR04MB6083;H:AM0PR04MB4865.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 4iN3shp4gbH89SiK9e8svhT+zE7TtiGDM9MEElCLmoX3qxz5Qsi7C3VeCmjqkxsvEJYwfrb5nb0nvN5gDP6J/7VBU7CQ0JFxQ+dmZM4equqjHkfAXchs8h0g6yApf6bFsQn3iK6dI+3w8kf91yJHcZeym1ZTHzGHzdyi+o2BFGbKiLwzz8pHc6X6zuBZtTJtoFftrO3dIgoAXXHBk7CxODqDXtuz3fJDO/84V3XwWcQp60ZIjYDc4l2KKZgE58/1rsBg+5fgVBlneR4swd2pZtvYkL8MYluqZZV/gIGGHnj6oo+hs2EFXcNjUadzPK3TiDCmp+GP3UOUch5x22to5ZxK+/tQcVQuqbU5yyL3pW558XQ1QHUTB5qLaUlmTb3A2z3dgP1E8wOZChK6JzZSklJj4lBF95RKMTyfKbRJR1w=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c2d8f5b-fadd-4371-72c0-08d6d39bf70e
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2019 10:00:14.0962
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6083
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

VGhpcyBwYXRjaCBlbmFibGVzIHRoZSBIRFAgY29udHJvbGxlciBkcml2ZXIgb24gdGhlIExTMTAy
OEEuDQoNClNpZ25lZC1vZmYtYnk6IEFsaXNvbiBXYW5nIDxhc2xpb24ud2FuZ0BueHAuY29tPg0K
U2lnbmVkLW9mZi1ieTogV2VuIEhlIDx3ZW4uaGVfMUBueHAuY29tPg0KLS0tDQogLi4uL2FybTY0
L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4YS5kdHNpIHwgMjUgKysrKysrKysrKysrKysr
KysrKw0KIDEgZmlsZSBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspDQoNCmRpZmYgLS1naXQgYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4YS5kdHNpIGIvYXJjaC9hcm02
NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEuZHRzaQ0KaW5kZXggYzBhMTNmOWU1Yjk1
Li4xNThmZGYyNmExMTcgMTAwNjQ0DQotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2Fs
ZS9mc2wtbHMxMDI4YS5kdHNpDQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9m
c2wtbHMxMDI4YS5kdHNpDQpAQCAtOTEsNiArOTEsMTMgQEANCiAJCWNsb2NrLW91dHB1dC1uYW1l
cz0gInBjbGsiOw0KIAl9Ow0KIA0KKwloZHBjbGs6IGNsb2NrLWhkcGNvcmUgew0KKwkJY29tcGF0
aWJsZSA9ICJmaXhlZC1jbG9jayI7DQorCQkjY2xvY2stY2VsbHMgPSA8MD47DQorCQljbG9jay1m
cmVxdWVuY3kgPSA8MTYyNTAwMDAwPjsNCisJCWNsb2NrLW91dHB1dC1uYW1lcz0gImhkcGNsayI7
DQorCX07DQorDQogCXJlYm9vdCB7DQogCQljb21wYXRpYmxlID0ic3lzY29uLXJlYm9vdCI7DQog
CQlyZWdtYXAgPSA8JmRjZmc+Ow0KQEAgLTQ2Nyw3ICs0NzQsMjUgQEANCiANCiAJCXBvcnQgew0K
IAkJCWRwMF9vdXQ6IGVuZHBvaW50IHsNCisJCQkJcmVtb3RlLWVuZHBvaW50ID0gPCZkcDFfb3V0
PjsNCisJCQl9Ow0KKwkJfTsNCisJfTsNCiANCisJaGRwOiBkaXNwbGF5QGYyMDAwMDAgew0KKwkJ
Y29tcGF0aWJsZSA9ICJmc2wsbHMxMDI4YS1kcCI7DQorCQlyZWcgPSA8MHgwIDB4ZjFmMDAwMCAw
eDAgMHhmZmZmPiwNCisJCSAgICA8MHgwIDB4ZjIwMDAwMCAweDAgMHhmZmZmZj47DQorCQlpbnRl
cnJ1cHRzID0gPDAgMjIxIElSUV9UWVBFX0xFVkVMX0hJR0g+Ow0KKwkJY2xvY2tzID0gPCZzeXNj
bGs+LCA8JmhkcGNsaz4sIDwmZHBjbGs+LA0KKwkJCSA8JmRwY2xrPiwgPCZkcGNsaz4sIDwmcGNs
az4sIDwmZHBjbGs+Ow0KKwkJY2xvY2stbmFtZXMgPSAiY2xrX2lwZyIsICJjbGtfY29yZSIsICJj
bGtfcHhsIiwNCisJCQkgICAgICAiY2xrX3B4bF9tdXgiLCAiY2xrX3B4bF9saW5rIiwgImNsa19h
cGIiLA0KKwkJCSAgICAgICJjbGtfdmlmIjsNCisNCisJCXBvcnQgew0KKwkJCWRwMV9vdXQ6IGVu
ZHBvaW50IHsNCisJCQkJcmVtb3RlLWVuZHBvaW50ID0gPCZkcDBfb3V0PjsNCiAJCQl9Ow0KIAkJ
fTsNCiAJfTsNCi0tIA0KMi4xNy4xDQoNCg==

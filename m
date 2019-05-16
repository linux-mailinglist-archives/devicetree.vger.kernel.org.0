Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 669FE2061D
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2019 13:59:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727694AbfEPLrK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 07:47:10 -0400
Received: from mail-eopbgr150083.outbound.protection.outlook.com ([40.107.15.83]:38532
        "EHLO EUR01-DB5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1727769AbfEPLrH (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 16 May 2019 07:47:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jzOIwmh2Z3i35IQzF5tBPO+2vDsk3n+TKO85pffU7cc=;
 b=AyePq5BhAgyoHVND7pxza29XwSRaRHpAtKG5BrUThhNblgMspA0coyGxGO1AUYdeFp3O2GF/4vZA+mHxEQTqM4xp429IDOQGPQ5ezTc/Q0tc0aOkcKUk0lPovN7U6Onx8Yq6KZLDWU029J8YBUaR3UDFLDqBgWze6UFHAZt9MF4=
Received: from AM0PR0402MB3556.eurprd04.prod.outlook.com (52.133.43.147) by
 AM0PR0402MB3793.eurprd04.prod.outlook.com (52.133.41.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.24; Thu, 16 May 2019 11:47:04 +0000
Received: from AM0PR0402MB3556.eurprd04.prod.outlook.com
 ([fe80::f891:76d:8a6a:3dfd]) by AM0PR0402MB3556.eurprd04.prod.outlook.com
 ([fe80::f891:76d:8a6a:3dfd%2]) with mapi id 15.20.1900.010; Thu, 16 May 2019
 11:47:04 +0000
From:   Kuldeep Singh <kuldeep.singh@nxp.com>
To:     "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>
CC:     "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
        "broonie@kernel.org" <broonie@kernel.org>,
        Kuldeep Singh <kuldeep.singh@nxp.com>,
        Ashish Kumar <ashish.kumar@nxp.com>
Subject: [PATCH] arm64: dts: ls1012a: Add QSPI support for ls1012a
Thread-Topic: [PATCH] arm64: dts: ls1012a: Add QSPI support for ls1012a
Thread-Index: AQHVC90UTCiz+BGzB0G+bjSJzqfmRA==
Date:   Thu, 16 May 2019 11:47:04 +0000
Message-ID: <20190516114807.30817-1-kuldeep.singh@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PN1PR01CA0117.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c00::33)
 To AM0PR0402MB3556.eurprd04.prod.outlook.com (2603:10a6:208:17::19)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kuldeep.singh@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [92.120.1.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2fe0daaf-8855-498e-089b-08d6d9f4372f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);SRVR:AM0PR0402MB3793;
x-ms-traffictypediagnostic: AM0PR0402MB3793:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <AM0PR0402MB3793B05353A5DEB62647B9F8E00A0@AM0PR0402MB3793.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1468;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(346002)(376002)(39860400002)(136003)(366004)(396003)(199004)(189003)(53936002)(44832011)(476003)(2616005)(486006)(2501003)(6306002)(68736007)(3846002)(73956011)(71190400001)(6116002)(186003)(71200400001)(86362001)(4326008)(64756008)(66556008)(66446008)(66476007)(50226002)(6486002)(66946007)(7736002)(14444005)(6512007)(99286004)(305945005)(256004)(8936002)(36756003)(110136005)(81166006)(81156014)(478600001)(25786009)(1076003)(52116002)(26005)(66066001)(2201001)(8676002)(386003)(966005)(2906002)(102836004)(5660300002)(6506007)(14454004)(316002)(54906003)(6436002);DIR:OUT;SFP:1101;SCL:1;SRVR:AM0PR0402MB3793;H:AM0PR0402MB3556.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: oSXXLbUM3Zyoh4b8rzH6oZlqmErH4f+SmKgOVbuUxXpzTGqOmlCkhvYfIhkyaoq9yOh1IqpcN7wPdc7CSkWa9XGMIli04DLDMxJvTI76zB4A7VSiRpTXkoVW/0DokRIffzU7/MCcPS9aQq5x+Z7FVEuu2RD/zmVwqGVXE5qA5REDoG7AZjaGHsnesfwGyseoWpk2F//x0mU7y1cAhs9QT9jB2HRQeOklvuALgPKBD2R92C6P8QBiLti07mk8HTN+2r4gYYw+VxPtQEhlNcjqlzH07OfqfeZUNcZr8t6L5fUErob5bnJuVloLEvvU0x7EeqNXgMQbd3CXV4WPIWSLyjXpZEoIjoGpXzmijtE85uV/KWptT6fI9zM6zcmTErypHD8eW5jXrNUrAGYDGzb2srIHMzYvkvzWkjBuNJB3/5Y=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2fe0daaf-8855-498e-089b-08d6d9f4372f
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 11:47:04.2419
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0402MB3793
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

UVNQSSBzdXBwb3J0IGlzIGFkZGVkIGZvciBrZXJuZWwgdmVyc2lvbiBncmVhdGVyIHRoYW4gNS4w
IGFuZCBzdXBwb3J0cw0KcXVhZCBtb2RlIGRlZmluZWQgYnkNClRYLVdJRFRIID0gPDQ+LCBSWC1X
SURUSCA9IDw0Pg0KDQpSREIvUURTIGhhcyBvbmUgNjRNQiBmbGFzaCBmcm9tIFNQQU5TSU9OKHMy
NWZzNTEycykNCg0KU2lnbmVkLW9mZi1ieTogQXNoaXNoIEt1bWFyIDxhc2hpc2gua3VtYXJAbnhw
LmNvbT4NClNpZ25lZC1vZmYtYnk6IEt1bGRlZXAgU2luZ2ggPGt1bGRlZXAuc2luZ2hAbnhwLmNv
bT4NCi0tLQ0KRGVwZW5kZW5jeSBvbiBodHRwczovL3BhdGNod29yay5vemxhYnMub3JnL3BhdGNo
LzExMDA0NzEvDQpEZXBlbmRlbmN5IG9uIGh0dHBzOi8vcGF0Y2h3b3JrLm96bGFicy5vcmcvcGF0
Y2gvMTEwMDQ3Mi8NCg0KIC4uLi9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAxMmEt
ZnJkbS5kdHMgfCAxNSArKysrKysrKysrKysrKysNCiAuLi4vYXJtNjQvYm9vdC9kdHMvZnJlZXNj
YWxlL2ZzbC1sczEwMTJhLWZyd3kuZHRzIHwgMTUgKysrKysrKysrKysrKysrDQogYXJjaC9hcm02
NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAxMmEtcWRzLmR0cyB8IDE1ICsrKysrKysrKysr
KysrKw0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMTJhLXJkYi5kdHMg
fCAxNSArKysrKysrKysrKysrKysNCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wt
bHMxMDEyYS5kdHNpICAgIHwgMTUgKysrKysrKysrKysrKysrDQogNSBmaWxlcyBjaGFuZ2VkLCA3
NSBpbnNlcnRpb25zKCspDQoNCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVz
Y2FsZS9mc2wtbHMxMDEyYS1mcmRtLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxl
L2ZzbC1sczEwMTJhLWZyZG0uZHRzDQppbmRleCBmOTBjMDQwZmQ1ZTguLjg4MjYyNzhiMzdiZiAx
MDA2NDQNCi0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMTJhLWZy
ZG0uZHRzDQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDEyYS1m
cmRtLmR0cw0KQEAgLTYxLDYgKzYxLDIxIEBADQogCXN0YXR1cyA9ICJva2F5IjsNCiB9Ow0KIA0K
KyZxc3BpIHsNCisJc3RhdHVzID0gIm9rYXkiOw0KKw0KKwlxZmxhc2gwOiBmbGFzaEAwIHsNCisJ
CWNvbXBhdGlibGUgPSAic3BhbnNpb24sbTI1cDgwIiwgImplZGVjLHNwaS1ub3IiOw0KKwkJI2Fk
ZHJlc3MtY2VsbHMgPSA8MT47DQorCQkjc2l6ZS1jZWxscyA9IDwxPjsNCisJCW0yNXAsZmFzdC1y
ZWFkOw0KKwkJc3BpLW1heC1mcmVxdWVuY3kgPSA8MjAwMDAwMDA+Ow0KKwkJc3BpLXJ4LWJ1cy13
aWR0aCA9IDw0PjsNCisJCXNwaS10eC1idXMtd2lkdGggPSA8ND47DQorCQlyZWcgPSA8MD47DQor
CX07DQorfTsNCisNCiAmaTJjMCB7DQogCXN0YXR1cyA9ICJva2F5IjsNCiANCmRpZmYgLS1naXQg
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDEyYS1mcnd5LmR0cyBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMTJhLWZyd3kuZHRzDQppbmRleCA4
NzQ5NjM0YzU1ZWUuLjAyNDZlOGM5NzYyOCAxMDA2NDQNCi0tLSBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvZnJlZXNjYWxlL2ZzbC1sczEwMTJhLWZyd3kuZHRzDQorKysgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDEyYS1mcnd5LmR0cw0KQEAgLTIwLDYgKzIwLDIxIEBADQog
CXN0YXR1cyA9ICJva2F5IjsNCiB9Ow0KIA0KKyZxc3BpIHsNCisJc3RhdHVzID0gIm9rYXkiOw0K
Kw0KKwlxZmxhc2gwOiBmbGFzaEAwIHsNCisJCWNvbXBhdGlibGUgPSAic3BhbnNpb24sbTI1cDgw
IiwgImplZGVjLHNwaS1ub3IiOw0KKwkJI2FkZHJlc3MtY2VsbHMgPSA8MT47DQorCQkjc2l6ZS1j
ZWxscyA9IDwxPjsNCisJCW0yNXAsZmFzdC1yZWFkOw0KKwkJc3BpLW1heC1mcmVxdWVuY3kgPSA8
MjAwMDAwMDA+Ow0KKwkJc3BpLXJ4LWJ1cy13aWR0aCA9IDw0PjsNCisJCXNwaS10eC1idXMtd2lk
dGggPSA8ND47DQorCQlyZWcgPSA8MD47DQorCX07DQorfTsNCisNCiAmaTJjMCB7DQogCXN0YXR1
cyA9ICJva2F5IjsNCiB9Ow0KZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNj
YWxlL2ZzbC1sczEwMTJhLXFkcy5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9m
c2wtbHMxMDEyYS1xZHMuZHRzDQppbmRleCAyZmIxY2IxZjdkOGYuLmMzMDRmYTIwYzFjOSAxMDA2
NDQNCi0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMTJhLXFkcy5k
dHMNCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMTJhLXFkcy5k
dHMNCkBAIC05MCw2ICs5MCwyMSBAQA0KIAl9Ow0KIH07DQogDQorJnFzcGkgew0KKwlzdGF0dXMg
PSAib2theSI7DQorDQorCXFmbGFzaDA6IGZsYXNoQDAgew0KKwkJY29tcGF0aWJsZSA9ICJzcGFu
c2lvbixtMjVwODAiLCAiamVkZWMsc3BpLW5vciI7DQorCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsN
CisJCSNzaXplLWNlbGxzID0gPDE+Ow0KKwkJbTI1cCxmYXN0LXJlYWQ7DQorCQlzcGktbWF4LWZy
ZXF1ZW5jeSA9IDwyMDAwMDAwMD47DQorCQlzcGktcngtYnVzLXdpZHRoID0gPDQ+Ow0KKwkJc3Bp
LXR4LWJ1cy13aWR0aCA9IDw0PjsNCisJCXJlZyA9IDwwPjsNCisJfTsNCit9Ow0KKw0KICZkdWFy
dDAgew0KIAlzdGF0dXMgPSAib2theSI7DQogfTsNCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDEyYS1yZGIuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0
cy9mcmVlc2NhbGUvZnNsLWxzMTAxMmEtcmRiLmR0cw0KaW5kZXggNWVkYjFlMTM3YTUyLi42MDE3
ZTljZmU0MGEgMTAwNjQ0DQotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wt
bHMxMDEyYS1yZGIuZHRzDQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wt
bHMxMDEyYS1yZGIuZHRzDQpAQCAtMzgsMyArMzgsMTggQEANCiAmc2F0YSB7DQogCXN0YXR1cyA9
ICJva2F5IjsNCiB9Ow0KKw0KKyZxc3BpIHsNCisJc3RhdHVzID0gIm9rYXkiOw0KKw0KKwlxZmxh
c2gwOiBmbGFzaEAwICB7DQorCQljb21wYXRpYmxlID0gInNwYW5zaW9uLG0yNXA4MCIsICJqZWRl
YyxzcGktbm9yIjsNCisJCSNhZGRyZXNzLWNlbGxzID0gPDE+Ow0KKwkJI3NpemUtY2VsbHMgPSA8
MT47DQorCQltMjVwLGZhc3QtcmVhZDsNCisJCXNwaS1tYXgtZnJlcXVlbmN5ID0gPDIwMDAwMDAw
PjsNCisJCXNwaS1yeC1idXMtd2lkdGggPSA8ND47DQorCQlzcGktdHgtYnVzLXdpZHRoID0gPDQ+
Ow0KKwkJcmVnID0gPDA+Ow0KKwl9Ow0KK307DQpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290
L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAxMmEuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJl
ZXNjYWxlL2ZzbC1sczEwMTJhLmR0c2kNCmluZGV4IGVjNjI1N2E1YjI1MS4uMjY4MjY4YzZhMTQ5
IDEwMDY0NA0KLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAxMmEu
ZHRzaQ0KKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAxMmEuZHRz
aQ0KQEAgLTM1MCw2ICszNTAsMjEgQEANCiAJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOw0KIAkJfTsN
CiANCisJCXFzcGk6IHNwaUAxNTUwMDAwIHsNCisJCQljb21wYXRpYmxlID0gImZzbCxsczEwMjFh
LXFzcGkiLCAiZnNsLGxzMTAxMmEtcXNwaSI7DQorCQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47DQor
CQkJI3NpemUtY2VsbHMgPSA8MD47DQorCQkJcmVnID0gPDB4MCAweDE1NTAwMDAgMHgwIDB4MTAw
MDA+LA0KKwkJCQk8MHgwIDB4NDAwMDAwMDAgMHgwIDB4MTAwMDAwMDA+Ow0KKwkJCXJlZy1uYW1l
cyA9ICJRdWFkU1BJIiwgIlF1YWRTUEktbWVtb3J5IjsNCisJCQlpbnRlcnJ1cHRzID0gPEdJQ19T
UEkgOTkgSVJRX1RZUEVfTEVWRUxfSElHSD47DQorCQkJY2xvY2stbmFtZXMgPSAicXNwaV9lbiIs
ICJxc3BpIjsNCisJCQljbG9ja3MgPSA8JmNsb2NrZ2VuIDQgMT4sIDwmY2xvY2tnZW4gNCAxPjsN
CisJCQliaWctZW5kaWFuOw0KKwkJCWZzbCxxc3BpLWhhcy1zZWNvbmQtY2hpcDsNCisJCQlzdGF0
dXMgPSAiZGlzYWJsZWQiOw0KKwkJfTsNCisNCiAJCWR1YXJ0MDogc2VyaWFsQDIxYzA1MDAgew0K
IAkJCWNvbXBhdGlibGUgPSAiZnNsLG5zMTY1NTAiLCAibnMxNjU1MGEiOw0KIAkJCXJlZyA9IDww
eDAwIDB4MjFjMDUwMCAweDAgMHgxMDA+Ow0KLS0gDQoyLjE3LjENCg0K

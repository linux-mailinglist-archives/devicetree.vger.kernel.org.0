Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DB4022061E
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2019 13:59:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727769AbfEPLrN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 07:47:13 -0400
Received: from mail-eopbgr50058.outbound.protection.outlook.com ([40.107.5.58]:33327
        "EHLO EUR03-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1727969AbfEPLrM (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 16 May 2019 07:47:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=emPu4oA7rZGgqt5hkO5rGrxd3tQizlqGGjgta4Lk38M=;
 b=pYAfyi0uP/l4zjYzAkPcLNpZoHZ2IFKK08aVC5B9qVmnrm7rvDNEW5E5SwoIIpq3tO+UIHk2UruDUwXy3SY1ss5u42LGMg5iWr16pGFjezyfReQ6vQ8ZJh03n3kReJA72DzzsS1hXFIW6l8kY4hdlHSumZ3BRZJ+BXMboksL17Y=
Received: from AM0PR0402MB3556.eurprd04.prod.outlook.com (52.133.43.147) by
 AM0PR0402MB3570.eurprd04.prod.outlook.com (52.133.46.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.24; Thu, 16 May 2019 11:47:07 +0000
Received: from AM0PR0402MB3556.eurprd04.prod.outlook.com
 ([fe80::f891:76d:8a6a:3dfd]) by AM0PR0402MB3556.eurprd04.prod.outlook.com
 ([fe80::f891:76d:8a6a:3dfd%2]) with mapi id 15.20.1900.010; Thu, 16 May 2019
 11:47:07 +0000
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
Subject: [PATCH] arm64: dts: ls1088a: Add QSPI support
Thread-Topic: [PATCH] arm64: dts: ls1088a: Add QSPI support
Thread-Index: AQHVC90WsiIcFNyQDEaulymYQxAAng==
Date:   Thu, 16 May 2019 11:47:07 +0000
Message-ID: <20190516114807.30817-3-kuldeep.singh@nxp.com>
References: <20190516114807.30817-1-kuldeep.singh@nxp.com>
In-Reply-To: <20190516114807.30817-1-kuldeep.singh@nxp.com>
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
x-ms-office365-filtering-correlation-id: 5d84c893-f116-4ab0-90cd-08d6d9f4394c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);SRVR:AM0PR0402MB3570;
x-ms-traffictypediagnostic: AM0PR0402MB3570:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <AM0PR0402MB35708CDDA16A47D2C1FF1D03E00A0@AM0PR0402MB3570.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1468;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(39860400002)(346002)(396003)(376002)(366004)(136003)(189003)(199004)(478600001)(5660300002)(6486002)(26005)(73956011)(4326008)(1076003)(6506007)(66066001)(386003)(44832011)(102836004)(2201001)(86362001)(446003)(66556008)(2616005)(486006)(11346002)(64756008)(476003)(53936002)(66476007)(66946007)(66446008)(3846002)(6436002)(71200400001)(71190400001)(52116002)(6116002)(76176011)(99286004)(305945005)(68736007)(2906002)(14444005)(256004)(8676002)(110136005)(6306002)(54906003)(50226002)(81166006)(6512007)(36756003)(7736002)(316002)(25786009)(81156014)(8936002)(186003)(14454004)(966005)(2501003);DIR:OUT;SFP:1101;SCL:1;SRVR:AM0PR0402MB3570;H:AM0PR0402MB3556.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: nOFx24dzIxwzrEC5gl/vwc2bA4dpnf1uRXkJm2kHGGzUtxw6PtY+hkfmr++iLcvoHUhiVS8YqrVbHt3ysKH4vuslrBJCcMAoNhDxGyU6WFVDbb6giKJNSShV/Mn4v7QtNyYgaL6eODMqTr+NJ0dtEbyk6XMeM01ko4rAA+ynu1X/8xqgbkI9PquNnK/GUzXNt+zBAv4q+hcvtmjA6DHJm0IylddSiUEeZ5GrZYoVOtMrDS4oILWBnnE2v2xI8K0aX+NbfKNEjpVK8ctT3PlPyeAqgivd1EN7MkT/Z6VFSxdKz5YWbnAEZiAfkZn1UGh5epj8idfL780ghiAL3y9/dreZgNmIVF06qkzBLZA4Y4YH/7bPdCklMC2KJZ54pZHWaaNEbaGeeLhHUjrvJeK6w/FRvP3K4jaDJDpsz+DbBbM=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d84c893-f116-4ab0-90cd-08d6d9f4394c
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 11:47:07.7879
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0402MB3570
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

UVNQSSBzdXBwb3J0IGlzIGFkZGVkIGZvciBrZXJuZWwgdmVyc2lvbiBncmVhdGVyIHRoYW4gNS4w
IGFuZCBzdXBwb3J0cw0KcXVhZCBtb2RlIGRlZmluZWQgYnkNClRYLVdJRFRIID0gPDQ+LCBSWC1X
SURUSCA9IDw0Pg0KDQpSREIvUURTIGhhcyB0d28gNjRNQiBmbGFzaCBmcm9tIFNQQU5TSU9OKHMy
NWZzNTEycykNCg0KU2lnbmVkLW9mZi1ieTogQXNoaXNoIEt1bWFyIDxhc2hpc2gua3VtYXJAbnhw
LmNvbT4NClNpZ25lZC1vZmYtYnk6IEt1bGRlZXAgU2luZ2ggPGt1bGRlZXAuc2luZ2hAbnhwLmNv
bT4NCi0tLQ0KRGVwZW5kZW5jeSBvbiBodHRwczovL3BhdGNod29yay5vemxhYnMub3JnL3BhdGNo
LzExMDA0NzEvDQpEZXBlbmRlbmN5IG9uIGh0dHBzOi8vcGF0Y2h3b3JrLm96bGFicy5vcmcvcGF0
Y2gvMTEwMDQ3Mi8NCg0KIC4uLi9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTA4OGEtcWRzLmR0
cyAgICB8IDI2ICsrKysrKysrKysrKysrKysrKysNCiAuLi4vYm9vdC9kdHMvZnJlZXNjYWxlL2Zz
bC1sczEwODhhLXJkYi5kdHMgICAgfCAyNiArKysrKysrKysrKysrKysrKysrDQogLi4uL2FybTY0
L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDg4YS5kdHNpIHwgMTMgKysrKysrKysrKw0KIDMg
ZmlsZXMgY2hhbmdlZCwgNjUgaW5zZXJ0aW9ucygrKQ0KDQpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02
NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTA4OGEtcWRzLmR0cyBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwODhhLXFkcy5kdHMNCmluZGV4IDZmNDhkMjFiOTdjMC4u
ZjAxZjdmY2E5ZGY3IDEwMDY0NA0KLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUv
ZnNsLWxzMTA4OGEtcWRzLmR0cw0KKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUv
ZnNsLWxzMTA4OGEtcWRzLmR0cw0KQEAgLTk4LDYgKzk4LDMyIEBADQogCX07DQogfTsNCiANCism
cXNwaSB7DQorCXN0YXR1cyA9ICJva2F5IjsNCisNCisJcWZsYXNoMDogZmxhc2hAMCB7DQorCQlj
b21wYXRpYmxlID0gInNwYW5zaW9uLG0yNXA4MCIsICJqZWRlYyxzcGktbm9yIjsNCisJCSNhZGRy
ZXNzLWNlbGxzID0gPDE+Ow0KKwkJI3NpemUtY2VsbHMgPSA8MT47DQorCQltMjVwLGZhc3QtcmVh
ZDsNCisJCXNwaS1tYXgtZnJlcXVlbmN5ID0gPDIwMDAwMDAwPjsNCisJCXNwaS1yeC1idXMtd2lk
dGggPSA8ND47DQorCQlzcGktdHgtYnVzLXdpZHRoID0gPDQ+Ow0KKwkJcmVnID0gPDA+Ow0KKwl9
Ow0KKw0KKwlxZmxhc2gxOiBmbGFzaEAxIHsNCisJCWNvbXBhdGlibGUgPSAic3BhbnNpb24sbTI1
cDgwIiwgImplZGVjLHNwaS1ub3IiOw0KKwkJI2FkZHJlc3MtY2VsbHMgPSA8MT47DQorCQkjc2l6
ZS1jZWxscyA9IDwxPjsNCisJCW0yNXAsZmFzdC1yZWFkOw0KKwkJc3BpLW1heC1mcmVxdWVuY3kg
PSA8MjAwMDAwMDA+Ow0KKwkJc3BpLXJ4LWJ1cy13aWR0aCA9IDw0PjsNCisJCXNwaS10eC1idXMt
d2lkdGggPSA8ND47DQorCQlyZWcgPSA8MT47DQorCX07DQorfTsNCisNCiAmZHVhcnQwIHsNCiAJ
c3RhdHVzID0gIm9rYXkiOw0KIH07DQpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9m
cmVlc2NhbGUvZnNsLWxzMTA4OGEtcmRiLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNj
YWxlL2ZzbC1sczEwODhhLXJkYi5kdHMNCmluZGV4IDhlOTI1ZGY2YzAxYy4uYmRlYzdlOTk2ZGJl
IDEwMDY0NA0KLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTA4OGEt
cmRiLmR0cw0KKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTA4OGEt
cmRiLmR0cw0KQEAgLTc0LDYgKzc0LDMyIEBADQogCX07DQogfTsNCiANCismcXNwaSB7DQorCXN0
YXR1cyA9ICJva2F5IjsNCisNCisJcWZsYXNoMDogZmxhc2hAMCB7DQorCQljb21wYXRpYmxlID0g
InNwYW5zaW9uLG0yNXA4MCIsICJqZWRlYyxzcGktbm9yIjsNCisJCSNhZGRyZXNzLWNlbGxzID0g
PDE+Ow0KKwkJI3NpemUtY2VsbHMgPSA8MT47DQorCQltMjVwLGZhc3QtcmVhZDsNCisJCXNwaS1t
YXgtZnJlcXVlbmN5ID0gPDIwMDAwMDAwPjsNCisJCXNwaS1yeC1idXMtd2lkdGggPSA8ND47DQor
CQlzcGktdHgtYnVzLXdpZHRoID0gPDQ+Ow0KKwkJcmVnID0gPDA+Ow0KKwl9Ow0KKw0KKwlxZmxh
c2gxOiBmbGFzaEAxICB7DQorCQljb21wYXRpYmxlID0gInNwYW5zaW9uLG0yNXA4MCIsICJqZWRl
YyxzcGktbm9yIjsNCisJCSNhZGRyZXNzLWNlbGxzID0gPDE+Ow0KKwkJI3NpemUtY2VsbHMgPSA8
MT47DQorCQltMjVwLGZhc3QtcmVhZDsNCisJCXNwaS1tYXgtZnJlcXVlbmN5ID0gPDIwMDAwMDAw
PjsNCisJCXNwaS1yeC1idXMtd2lkdGggPSA8ND47DQorCQlzcGktdHgtYnVzLXdpZHRoID0gPDQ+
Ow0KKwkJcmVnID0gPDE+Ow0KKwl9Ow0KK307DQorDQogJmR1YXJ0MCB7DQogCXN0YXR1cyA9ICJv
a2F5IjsNCiB9Ow0KZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2Zz
bC1sczEwODhhLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDg4
YS5kdHNpDQppbmRleCA2NjExMzdmZmEzMTkuLjk2NDI0ZmQ5Y2QyZSAxMDA2NDQNCi0tLSBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwODhhLmR0c2kNCisrKyBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwODhhLmR0c2kNCkBAIC0zMTgsNiArMzE4
LDE5IEBADQogCQkJc3RhdHVzID0gImRpc2FibGVkIjsNCiAJCX07DQogDQorCQlxc3BpOiBzcGlA
MjBjMDAwMCB7DQorCQkJc3RhdHVzID0gImRpc2FibGVkIjsNCisJCQljb21wYXRpYmxlID0gImZz
bCxsczIwODBhLXFzcGkiLCAiZnNsLGxzMTA4OGEtcXNwaSI7DQorCQkJI2FkZHJlc3MtY2VsbHMg
PSA8MT47DQorCQkJI3NpemUtY2VsbHMgPSA8MD47DQorCQkJcmVnID0gPDB4MCAweDIwYzAwMDAg
MHgwIDB4MTAwMDA+LA0KKwkJCSAgICAgIDwweDAgMHgyMDAwMDAwMCAweDAgMHgxMDAwMDAwMD47
DQorCQkJcmVnLW5hbWVzID0gIlF1YWRTUEkiLCAiUXVhZFNQSS1tZW1vcnkiOw0KKwkJCWludGVy
cnVwdHMgPSA8MCAyNSAweDQ+OyAvKiBMZXZlbCBoaWdoIHR5cGUgKi8NCisJCQljbG9ja3MgPSA8
JmNsb2NrZ2VuIDQgMz4sIDwmY2xvY2tnZW4gNCAzPjsNCisJCQljbG9jay1uYW1lcyA9ICJxc3Bp
X2VuIiwgInFzcGkiOw0KKwkJfTsNCisNCiAJCWkyYzA6IGkyY0AyMDAwMDAwIHsNCiAJCQljb21w
YXRpYmxlID0gImZzbCx2ZjYxMC1pMmMiOw0KIAkJCSNhZGRyZXNzLWNlbGxzID0gPDE+Ow0KLS0g
DQoyLjE3LjENCg0K

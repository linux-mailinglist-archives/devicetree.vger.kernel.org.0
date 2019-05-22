Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 761FF25E58
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2019 09:00:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728367AbfEVHAg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 May 2019 03:00:36 -0400
Received: from mail-eopbgr10051.outbound.protection.outlook.com ([40.107.1.51]:19012
        "EHLO EUR02-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1728185AbfEVHAg (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 22 May 2019 03:00:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eioh5KkNw/Y6GFwbL/XF3ZcBYT50iQghQlBw8YeFZyM=;
 b=kEoWkOJYP7b0muK8bLkcgmw+QiWA7z+20N3F6iDHZfa82O5n35etF0P1arpu/c1OrTMv9uCUGJ9uJHSkcB7sTCDso4qiQ2tSYwcOOlJsPeTMKS9yAWTal5mo3qOHECN347hXO5EN7DFazLHP2wWGUFkZXNiklFCXnh8tV+J8BCU=
Received: from AM0PR0402MB3556.eurprd04.prod.outlook.com (52.133.43.147) by
 AM0PR0402MB3668.eurprd04.prod.outlook.com (52.133.39.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Wed, 22 May 2019 07:00:32 +0000
Received: from AM0PR0402MB3556.eurprd04.prod.outlook.com
 ([fe80::f891:76d:8a6a:3dfd]) by AM0PR0402MB3556.eurprd04.prod.outlook.com
 ([fe80::f891:76d:8a6a:3dfd%2]) with mapi id 15.20.1922.016; Wed, 22 May 2019
 07:00:32 +0000
From:   Kuldeep Singh <kuldeep.singh@nxp.com>
To:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
CC:     "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
        "broonie@kernel.org" <broonie@kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
        Kuldeep Singh <kuldeep.singh@nxp.com>,
        Ashish Kumar <ashish.kumar@nxp.com>
Subject: [PATCH v2 1/2] dt-bindings: spi: spi-fsl-qspi: Add bindings of
 ls1088a and ls1012a
Thread-Topic: [PATCH v2 1/2] dt-bindings: spi: spi-fsl-qspi: Add bindings of
 ls1088a and ls1012a
Thread-Index: AQHVEGwMx2ngmFWMGEWadgoFBtUlAQ==
Date:   Wed, 22 May 2019 07:00:32 +0000
Message-ID: <20190522070133.24953-1-kuldeep.singh@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BM1PR01CA0107.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00::23)
 To AM0PR0402MB3556.eurprd04.prod.outlook.com (2603:10a6:208:17::19)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kuldeep.singh@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [92.120.1.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0a3775db-2ef5-4ac0-bc6c-08d6de832e44
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);SRVR:AM0PR0402MB3668;
x-ms-traffictypediagnostic: AM0PR0402MB3668:
x-microsoft-antispam-prvs: <AM0PR0402MB366847D9EECCA8670E69B8D0E0000@AM0PR0402MB3668.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1388;
x-forefront-prvs: 0045236D47
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(366004)(189003)(199004)(6506007)(8936002)(7736002)(305945005)(99286004)(68736007)(386003)(2501003)(2351001)(186003)(81166006)(102836004)(498600001)(6116002)(36756003)(54906003)(86362001)(81156014)(8676002)(14454004)(52116002)(5660300002)(50226002)(3846002)(4744005)(1730700003)(6486002)(2906002)(5640700003)(64756008)(66556008)(6512007)(14444005)(256004)(66446008)(73956011)(66476007)(66946007)(6436002)(71200400001)(71190400001)(476003)(1076003)(53936002)(25786009)(486006)(26005)(6916009)(44832011)(4326008)(2616005)(66066001);DIR:OUT;SFP:1101;SCL:1;SRVR:AM0PR0402MB3668;H:AM0PR0402MB3556.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: FdrzQC8ViHVkbaH1dHm13esu28mawSUss6U49ruurej1zd02acZhtGTXW8sKlDsJApUKNfztjfW8H8kGqwzar8asamlTM46YF4m8OloVPnEoi+tpL2Xu1UIdjUKukTn3ez+2dc7GV6cxCJ5o4JrDA8K5MPWaXCqwpBkAWvFaRQOjO/70rJ7FPBiutT0m2jpmo9+XrZntjQkeMrktUr6VuaXRe1CkcecDokMWurIValmY8gQNnV8gGZX3Ifc114W4Mkm8OxR1/WjGemaAnLSRayLsz8Ue0yA6EMs9Xcuso2xVKyxgSDxAW0cLU9u2a7wlb8JTFjPwatd2L0X2pMTueo0VG+/XQLUjeMX6x+6wL0WKjhg6sIOA4rcPlp9Eq8WlsN35SKmp1tks+nkPvMZft6Y7CqoIZwx2tWX8Z/DLqzo=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a3775db-2ef5-4ac0-bc6c-08d6de832e44
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2019 07:00:32.1690
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0402MB3668
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

U2lnbmVkLW9mZi1ieTogQXNoaXNoIEt1bWFyIDxhc2hpc2gua3VtYXJAbnhwLmNvbT4NClNpZ25l
ZC1vZmYtYnk6IEt1bGRlZXAgU2luZ2ggPGt1bGRlZXAuc2luZ2hAbnhwLmNvbT4NCi0tLQ0KVXBk
YXRlIHYyOg0KCUNvbnZlcnQgdG8gcGF0Y2ggc2VyaWVzIGFuZCByZWJhc2luZyBkb25lIG9uIHRv
cCBvZiB0cmVlDQoNCiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc3BpL3NwaS1m
c2wtcXNwaS50eHQgfCAyICsrDQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQ0KDQpk
aWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NwaS9zcGktZnNs
LXFzcGkudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NwaS9zcGktZnNs
LXFzcGkudHh0DQppbmRleCBlOGYxZDYyN2QyODguLmE3MjYxNmExYWQyZCAxMDA2NDQNCi0tLSBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zcGkvc3BpLWZzbC1xc3BpLnR4dA0K
KysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NwaS9zcGktZnNsLXFzcGku
dHh0DQpAQCAtNyw2ICs3LDggQEAgUmVxdWlyZWQgcHJvcGVydGllczoNCiAJCSBvcg0KIAkJICJm
c2wsbHMyMDgwYS1xc3BpIiBmb2xsb3dlZCBieSAiZnNsLGxzMTAyMWEtcXNwaSIsDQogCQkgImZz
bCxsczEwNDNhLXFzcGkiIGZvbGxvd2VkIGJ5ICJmc2wsbHMxMDIxYS1xc3BpIg0KKwkJICJmc2ws
bHMxMDEyYS1xc3BpIiBmb2xsb3dlZCBieSAiZnNsLGxzMTAyMWEtcXNwaSINCisJCSAiZnNsLGxz
MTA4OGEtcXNwaSIgZm9sbG93ZWQgYnkgImZzbCxsczIwODBhLXFzcGkiDQogICAtIHJlZyA6IHRo
ZSBmaXJzdCBjb250YWlucyB0aGUgcmVnaXN0ZXIgbG9jYXRpb24gYW5kIGxlbmd0aCwNCiAgICAg
ICAgICAgdGhlIHNlY29uZCBjb250YWlucyB0aGUgbWVtb3J5IG1hcHBpbmcgYWRkcmVzcyBhbmQg
bGVuZ3RoDQogICAtIHJlZy1uYW1lczogU2hvdWxkIGNvbnRhaW4gdGhlIHJlZyBuYW1lcyAiUXVh
ZFNQSSIgYW5kICJRdWFkU1BJLW1lbW9yeSINCi0tIA0KMi4xNy4xDQoNCg==

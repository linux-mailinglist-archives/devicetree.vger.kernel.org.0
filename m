Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E5B612061C
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2019 13:59:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728018AbfEPLrK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 07:47:10 -0400
Received: from mail-eopbgr50058.outbound.protection.outlook.com ([40.107.5.58]:33327
        "EHLO EUR03-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1727694AbfEPLrJ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 16 May 2019 07:47:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cgamqRJKxDGJCXG/V7p20bWg8zrStnC+feCOFLnUJzY=;
 b=Vsk6yYNLtjYWgRUtmapb6Ww+hBsKE3Tc5C98s8rztWYn9avTtCjUoMyf6MFKFkKBxrqeqzlU3XVjNRhvXWkgI8Smq8T9FQbANhK1JrS3Pbqv5g3w3EX1XOxtAmqyrZTyrH4iNOlchWVdSDUbL+g2V0JsQSUf9hJOWySamRZ9XUQ=
Received: from AM0PR0402MB3556.eurprd04.prod.outlook.com (52.133.43.147) by
 AM0PR0402MB3570.eurprd04.prod.outlook.com (52.133.46.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.24; Thu, 16 May 2019 11:47:06 +0000
Received: from AM0PR0402MB3556.eurprd04.prod.outlook.com
 ([fe80::f891:76d:8a6a:3dfd]) by AM0PR0402MB3556.eurprd04.prod.outlook.com
 ([fe80::f891:76d:8a6a:3dfd%2]) with mapi id 15.20.1900.010; Thu, 16 May 2019
 11:47:06 +0000
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
Subject: [PATCH] arm64: dts: ls1046a: Fast read m25p60
Thread-Topic: [PATCH] arm64: dts: ls1046a: Fast read m25p60
Thread-Index: AQHVC90Vhs3xRNLmzkqBmm1mmiRMhQ==
Date:   Thu, 16 May 2019 11:47:06 +0000
Message-ID: <20190516114807.30817-2-kuldeep.singh@nxp.com>
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
x-ms-office365-filtering-correlation-id: 6542b39a-d5f1-465e-0bb9-08d6d9f4383c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);SRVR:AM0PR0402MB3570;
x-ms-traffictypediagnostic: AM0PR0402MB3570:
x-microsoft-antispam-prvs: <AM0PR0402MB35701B45DDD8CB931A18B139E00A0@AM0PR0402MB3570.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1284;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(39860400002)(346002)(396003)(376002)(366004)(136003)(189003)(199004)(478600001)(5660300002)(6486002)(26005)(73956011)(4326008)(1076003)(6506007)(66066001)(386003)(44832011)(102836004)(2201001)(86362001)(446003)(66556008)(2616005)(486006)(11346002)(64756008)(476003)(53936002)(66476007)(66946007)(66446008)(3846002)(6436002)(71200400001)(71190400001)(52116002)(6116002)(76176011)(99286004)(305945005)(68736007)(2906002)(256004)(8676002)(110136005)(54906003)(50226002)(81166006)(6512007)(36756003)(7736002)(316002)(25786009)(81156014)(8936002)(186003)(14454004)(2501003);DIR:OUT;SFP:1101;SCL:1;SRVR:AM0PR0402MB3570;H:AM0PR0402MB3556.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: LzkgiD1K4oStx79ILikWSj0rJHa+8fLS3quhmy2sRA4PdFPdx4OlxCGtLya984uTEtIgPSzpo8tzFn8d3kjRTVeBSv8+7FHJIJpDHotpcW9pxjpcnaMSv8yIINhat4wA45Y82sJEXwxgh6PwHIve/2PnmgVonkfZBa5K7nbRPCP457LOoAjlLBzr7vpCKrApgFQ4koRnzS+zNEa9UJkIy1H9yCSE3SVxW5YOhpbgRjE/p6adcCZdPXmgT/xEsE8ZglHcgpUdC7FMwo3Y/pROIlF4V94a0HgmC5zqN1gOB+EHNXZeQf8U7Ks22DwYqjBkkT32QSugsd0Kv8GFn0jj1VkOn/DYhUOEuru4sLZ02zcvZs7JDBIqdYGebAqLHJRjUOYUMdrViNpt3qLv4anBLb1bbs40DFKvVc8LX6f/DBU=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6542b39a-d5f1-465e-0bb9-08d6d9f4383c
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 11:47:06.0289
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
bT4NCi0tLQ0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwNDZhLXFkcy5k
dHMgfCAzICsrLQ0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwNDZhLXJk
Yi5kdHMgfCA2ICsrKystLQ0KIDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAzIGRl
bGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUv
ZnNsLWxzMTA0NmEtcWRzLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1s
czEwNDZhLXFkcy5kdHMNCmluZGV4IGVlYzYyYzYzZGFmZS4uNDNhNWVmNjM1N2Q1IDEwMDY0NA0K
LS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTA0NmEtcWRzLmR0cw0K
KysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTA0NmEtcWRzLmR0cw0K
QEAgLTE2Niw5ICsxNjYsMTAgQEANCiAJc3RhdHVzID0gIm9rYXkiOw0KIA0KIAlxZmxhc2gwOiBm
bGFzaEAwIHsNCi0JCWNvbXBhdGlibGUgPSAic3BhbnNpb24sbTI1cDgwIjsNCisJCWNvbXBhdGli
bGUgPSAic3BhbnNpb24sbTI1cDgwIiwgImplZGVjLHNwaS1ub3IiOw0KIAkJI2FkZHJlc3MtY2Vs
bHMgPSA8MT47DQogCQkjc2l6ZS1jZWxscyA9IDwxPjsNCisJCW0yNXAsZmFzdC1yZWFkOw0KIAkJ
c3BpLW1heC1mcmVxdWVuY3kgPSA8MjAwMDAwMDA+Ow0KIAkJc3BpLXJ4LWJ1cy13aWR0aCA9IDw0
PjsNCiAJCXNwaS10eC1idXMtd2lkdGggPSA8ND47DQpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9i
b290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTA0NmEtcmRiLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvZnJlZXNjYWxlL2ZzbC1sczEwNDZhLXJkYi5kdHMNCmluZGV4IDZhNjUxNGQwZTVhOS4uODUx
MDVhMjBmYzA0IDEwMDY0NA0KLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNs
LWxzMTA0NmEtcmRiLmR0cw0KKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNs
LWxzMTA0NmEtcmRiLmR0cw0KQEAgLTEwMiw5ICsxMDIsMTAgQEANCiAJc3RhdHVzID0gIm9rYXki
Ow0KIA0KIAlxZmxhc2gwOiBmbGFzaEAwIHsNCi0JCWNvbXBhdGlibGUgPSAic3BhbnNpb24sbTI1
cDgwIjsNCisJCWNvbXBhdGlibGUgPSAic3BhbnNpb24sbTI1cDgwIiwgImplZGVjLHNwaS1ub3Ii
Ow0KIAkJI2FkZHJlc3MtY2VsbHMgPSA8MT47DQogCQkjc2l6ZS1jZWxscyA9IDwxPjsNCisJCW0y
NXAsZmFzdC1yZWFkOw0KIAkJc3BpLW1heC1mcmVxdWVuY3kgPSA8MjAwMDAwMDA+Ow0KIAkJc3Bp
LXJ4LWJ1cy13aWR0aCA9IDw0PjsNCiAJCXNwaS10eC1idXMtd2lkdGggPSA8ND47DQpAQCAtMTEy
LDkgKzExMywxMCBAQA0KIAl9Ow0KIA0KIAlxZmxhc2gxOiBmbGFzaEAxIHsNCi0JCWNvbXBhdGli
bGUgPSAic3BhbnNpb24sbTI1cDgwIjsNCisJCWNvbXBhdGlibGUgPSAic3BhbnNpb24sbTI1cDgw
IiwgImplZGVjLHNwaS1ub3IiOw0KIAkJI2FkZHJlc3MtY2VsbHMgPSA8MT47DQogCQkjc2l6ZS1j
ZWxscyA9IDwxPjsNCisJCW0yNXAsZmFzdC1yZWFkOw0KIAkJc3BpLW1heC1mcmVxdWVuY3kgPSA8
MjAwMDAwMDA+Ow0KIAkJc3BpLXJ4LWJ1cy13aWR0aCA9IDw0PjsNCiAJCXNwaS10eC1idXMtd2lk
dGggPSA8ND47DQotLSANCjIuMTcuMQ0KDQo=

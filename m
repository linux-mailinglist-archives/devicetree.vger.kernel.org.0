Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 90925E807
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2019 18:44:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728629AbfD2Qop (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Apr 2019 12:44:45 -0400
Received: from mail-eopbgr10072.outbound.protection.outlook.com ([40.107.1.72]:18916
        "EHLO EUR02-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1728841AbfD2Qoo (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 29 Apr 2019 12:44:44 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LaN4K7Ljl7NrL5u9OgXh16npo5By6z7HoyeHqyXAF0I=;
 b=dno+0ZpNN8V8kjuXgYOwY68hBCy8uaYKO7Gqvt/bz7xdqGi8FBMa/vD2jWdL+R/cjdnthw8iuGuuPSrzjX5GJ3jWhd/GLVzSp7gs68ZnBrTXr2rxy0iuW06i8xi1V42/qsklqmcTjFMkJ/hmLseOPvdylylzm0xyEq6CPjhQnfA=
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com (20.177.49.159) by
 VI1PR04MB5791.eurprd04.prod.outlook.com (20.178.127.225) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.12; Mon, 29 Apr 2019 16:44:35 +0000
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c]) by VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c%7]) with mapi id 15.20.1835.018; Mon, 29 Apr 2019
 16:44:35 +0000
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
Subject: [PATCH V9 3/4] arm64: dts: imx8qxp: added ddr performance monitor
 nodes
Thread-Topic: [PATCH V9 3/4] arm64: dts: imx8qxp: added ddr performance
 monitor nodes
Thread-Index: AQHU/qrTq/C0isgdyEqfhmtsVBA3aw==
Date:   Mon, 29 Apr 2019 16:44:34 +0000
Message-ID: <1556556252-22868-3-git-send-email-Frank.Li@nxp.com>
References: <1556556252-22868-1-git-send-email-Frank.Li@nxp.com>
In-Reply-To: <1556556252-22868-1-git-send-email-Frank.Li@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SN6PR01CA0009.prod.exchangelabs.com (2603:10b6:805:b6::22)
 To VI1PR04MB4910.eurprd04.prod.outlook.com (2603:10a6:803:56::31)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=frank.li@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.5.2
x-originating-ip: [64.157.242.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f8aad9f7-ffc1-4039-b056-08d6ccc1f5e3
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);SRVR:VI1PR04MB5791;
x-ms-traffictypediagnostic: VI1PR04MB5791:
x-microsoft-antispam-prvs: <VI1PR04MB5791B86C801763FD79AC074188390@VI1PR04MB5791.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:497;
x-forefront-prvs: 0022134A87
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(39860400002)(376002)(366004)(396003)(136003)(346002)(199004)(189003)(68736007)(102836004)(7736002)(305945005)(7416002)(2201001)(86362001)(25786009)(4326008)(99286004)(186003)(110136005)(316002)(3846002)(66946007)(66476007)(66556008)(6512007)(6486002)(26005)(6116002)(76176011)(64756008)(66446008)(73956011)(52116002)(386003)(6506007)(6436002)(2906002)(53936002)(36756003)(2616005)(476003)(97736004)(11346002)(2501003)(486006)(81156014)(8676002)(50226002)(81166006)(8936002)(446003)(71190400001)(5660300002)(71200400001)(478600001)(14454004)(256004)(4744005)(66066001)(921003)(32563001)(1121003);DIR:OUT;SFP:1101;SCL:1;SRVR:VI1PR04MB5791;H:VI1PR04MB4910.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: X/JTJxaPN6w1KsUMWojkAiCNKy0spK54O+oIyd+pQFaU7GHEUlz9iTyT5beCFUcishb1jlSmwta5WCFdzIbuuV2J8+6IkzvPJMoVTaq2ovmGqCqbV/uOXBzTf2R8ojFfgBLmLRD4XARWx/juz0KNI89CWypZy+pxcYNA/f7mfhNgTImRnSMBDT4vBMLtwF98z6jXQOQ5j1wFH3R4jk0A4A3EehcjfaMgS2Oz1HyMLAvlU5i4byozVvgKZc/s8iu5uVZdx/oi71SFSZzA8omqECxK8QZQR8m4A9XrD75rXUyr8rapqFgvH/GrGNJDyWZOTSpbL76/LsMbNc6jEn6CKNxnmCTZRvlEz3ikjG/T8uTWUHf7dU0amkZbOuxoxXwfE/DI7v7fgTWjPpH2v+TZ/SLP54oaxL/jRM/RFoyPUz4=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f8aad9f7-ffc1-4039-b056-08d6ccc1f5e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2019 16:44:34.9901
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5791
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

QWRkIGRkciBwZXJmb3JtYW5jZSBtb25pdG9yDQoNClNpZ25lZC1vZmYtYnk6IEZyYW5rIExpIDxG
cmFuay5MaUBueHAuY29tPg0KUmV2aWV3ZWQtYnk6IEZhYmlvIEVzdGV2YW0gPGZlc3RldmFtQGdt
YWlsLmNvbT4NCi0tLQ0KQ2hhbmdlIGZyb20gdjggdG8gdjkNCiogcHV0IGRkci1wbXUgdW5kZXIg
ZGRyX3N1YnN5c3RlbSBidXMNCg0KQ2hhbmdlIGZyb20gdjMgdG8gdjgNCiogbm9uZQ0KDQpDaGFu
Z2UgZnJvbSB2MiB0byB2Mw0KKiBkZHJfcG11MCAtPiBkZHItcG11DQoNCiBhcmNoL2FybTY0L2Jv
b3QvZHRzL2ZyZWVzY2FsZS9pbXg4cXhwLmR0c2kgfCAxNCArKysrKysrKysrKysrKw0KIDEgZmls
ZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspDQoNCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL2ZyZWVzY2FsZS9pbXg4cXhwLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVz
Y2FsZS9pbXg4cXhwLmR0c2kNCmluZGV4IDA2ODNlZTIuLmI2NmY3MTMgMTAwNjQ0DQotLS0gYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4cXhwLmR0c2kNCisrKyBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhxeHAuZHRzaQ0KQEAgLTM3OCw2ICszNzgsMjAgQEAN
CiAJCX07DQogCX07DQogDQorCWRkcl9zdWJzeXNzOiBidXNANWMwMDAwMDAgew0KKwkJY29tcGF0
aWJsZSA9ICJzaW1wbGUtYnVzIjsNCisJCSNhZGRyZXNzLWNlbGxzID0gPDE+Ow0KKwkJI3NpemUt
Y2VsbHMgPSA8MT47DQorCQlyYW5nZXMgPSA8MHg1YzAwMDAwMCAweDAgMHg1YzAwMDAwMCAweDEw
MDAwMDA+Ow0KKw0KKwkgICAgICAgIGRkci1wbXVANWMwMjAwMDAgew0KKwkJCWNvbXBhdGlibGUg
PSAiZnNsLGlteDgtZGRyLXBtdSI7DQorCQkJcmVnID0gPDB4NWMwMjAwMDAgMHgxMDAwMD47DQor
CQkJaW50ZXJydXB0LXBhcmVudCA9IDwmZ2ljPjsNCisJCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkg
MTMxIElSUV9UWVBFX0xFVkVMX0hJR0g+Ow0KKwkJfTsNCisJfTsNCisNCiAJbHNpb19zdWJzeXM6
IGJ1c0A1ZDAwMDAwMCB7DQogCQljb21wYXRpYmxlID0gInNpbXBsZS1idXMiOw0KIAkJI2FkZHJl
c3MtY2VsbHMgPSA8MT47DQotLSANCjIuNS4yDQoNCg==

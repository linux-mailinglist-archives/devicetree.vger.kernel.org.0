Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8DA7B109E7
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2019 17:21:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726646AbfEAPVH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 May 2019 11:21:07 -0400
Received: from mail-eopbgr60085.outbound.protection.outlook.com ([40.107.6.85]:27961
        "EHLO EUR04-DB3-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726473AbfEAPVG (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 1 May 2019 11:21:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g1k81Au6NHZOSPxU5vdWMbjZpKb0B96nblGADGM9cTI=;
 b=DK2lANYT9BAsCZJFWicFiuG5o2dOzvZ9BMlW2WgQRndILFJZ8kX0DmoZz2UYJ2DSuW3K4vdfC2RMPgM9vryPwWkYo4jZn+PTi5RxZyZzAiBHnT2Ccsm+hFX1+YbK3Q9G+UcwPzYl23YtGo94We+pvkRKQre9R9jpIprxDwM8d9M=
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com (20.177.49.159) by
 VI1PR04MB6045.eurprd04.prod.outlook.com (20.179.24.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Wed, 1 May 2019 15:21:03 +0000
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c]) by VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c%7]) with mapi id 15.20.1856.008; Wed, 1 May 2019
 15:21:03 +0000
From:   Frank Li <frank.li@nxp.com>
To:     "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
        "mark.rutland@arm.com" <mark.rutland@arm.com>,
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
Subject: [PATCH V11 3/4] arm64: dts: imx8qxp: added ddr performance monitor
 nodes
Thread-Topic: [PATCH V11 3/4] arm64: dts: imx8qxp: added ddr performance
 monitor nodes
Thread-Index: AQHVADF9JlgXnFCsHUe1blU7ekSpRw==
Date:   Wed, 1 May 2019 15:21:02 +0000
Message-ID: <1556724043-3961-3-git-send-email-Frank.Li@nxp.com>
References: <1556724043-3961-1-git-send-email-Frank.Li@nxp.com>
In-Reply-To: <1556724043-3961-1-git-send-email-Frank.Li@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SN4PR0501CA0010.namprd05.prod.outlook.com
 (2603:10b6:803:40::23) To VI1PR04MB4910.eurprd04.prod.outlook.com
 (2603:10a6:803:56::31)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=frank.li@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.5.2
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6acb05e9-89a4-489f-3b10-08d6ce489f58
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);SRVR:VI1PR04MB6045;
x-ms-traffictypediagnostic: VI1PR04MB6045:
x-microsoft-antispam-prvs: <VI1PR04MB60458332875FB6A1B1E6D4E7883B0@VI1PR04MB6045.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:497;
x-forefront-prvs: 00246AB517
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(346002)(396003)(366004)(376002)(39860400002)(136003)(189003)(199004)(81156014)(478600001)(5660300002)(6512007)(6116002)(2501003)(7416002)(25786009)(316002)(305945005)(99286004)(256004)(110136005)(14454004)(3846002)(4326008)(7736002)(53936002)(446003)(386003)(476003)(102836004)(71190400001)(66446008)(50226002)(73956011)(64756008)(11346002)(6486002)(26005)(52116002)(2906002)(4744005)(76176011)(36756003)(2201001)(66066001)(6436002)(71200400001)(8676002)(68736007)(86362001)(8936002)(486006)(81166006)(66946007)(186003)(6506007)(2616005)(66556008)(66476007)(921003)(32563001)(1121003);DIR:OUT;SFP:1101;SCL:1;SRVR:VI1PR04MB6045;H:VI1PR04MB4910.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: bhNUnkuacMusuzi866VAy18POcz2st5N7Pgd72/yttiU9FNGOc87sIEcYIRk/PdLHXOCicEsFmIcyq2fDLjm+5bSrsqexHsgbV8ftSQ7XHm4ENw+UIUgwrlinpg4ZApFNBdKcPN9UcdQkhPXenYGhl39TQv5qk2uVe7rszAZgtvvoq2HLQblHnUYRM6lUUvmOcTTM7DyLmjgu/6QoheufBcAD5/Ai4dsHzypvZ76Ubi0FZjv+G5E9cLWPxtRv12Khm8FxlA6DkOReHLg+xsyS/dP+tCTYSJUx2ViLLDVp/Jcca0bMDPOTUgLIXQevPyRUNtJMh05zPEGNgYl4awPcLJ3L9Y40iVNHhmcY4R2PCriN4ZtuVjqxT2F55n2ZZScdTrpAEUxXYQjyMN3bcbgrkQW3rcYIfgQRdVN1g5PdcY=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6acb05e9-89a4-489f-3b10-08d6ce489f58
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2019 15:21:02.9203
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6045
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

QWRkIGRkciBwZXJmb3JtYW5jZSBtb25pdG9yDQoNClNpZ25lZC1vZmYtYnk6IEZyYW5rIExpIDxG
cmFuay5MaUBueHAuY29tPg0KUmV2aWV3ZWQtYnk6IEZhYmlvIEVzdGV2YW0gPGZlc3RldmFtQGdt
YWlsLmNvbT4NCi0tLQ0KDQpOb3RlczoNCiAgICBObyBjaGFuZ2UgZnJvbSB2OSB0byB2MTENCiAg
ICANCiAgICBDaGFuZ2UgZnJvbSB2OCB0byB2OQ0KICAgICogcHV0IGRkci1wbXUgdW5kZXIgZGRy
X3N1YnN5c3RlbSBidXMNCiAgICANCiAgICBDaGFuZ2UgZnJvbSB2MyB0byB2OA0KICAgICogbm9u
ZQ0KICAgIA0KICAgIENoYW5nZSBmcm9tIHYyIHRvIHYzDQogICAgKiBkZHJfcG11MCAtPiBkZHIt
cG11DQoNCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4cXhwLmR0c2kgfCAxNCAr
KysrKysrKysrKysrKw0KIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspDQoNCmRpZmYg
LS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4cXhwLmR0c2kgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4cXhwLmR0c2kNCmluZGV4IDA2ODNlZTIuLmEz
M2UwOGMgMTAwNjQ0DQotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4cXhw
LmR0c2kNCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhxeHAuZHRzaQ0K
QEAgLTM3OCw2ICszNzgsMjAgQEANCiAJCX07DQogCX07DQogDQorCWRkcl9zdWJzeXNzOiBidXNA
NWMwMDAwMDAgew0KKwkJY29tcGF0aWJsZSA9ICJzaW1wbGUtYnVzIjsNCisJCSNhZGRyZXNzLWNl
bGxzID0gPDE+Ow0KKwkJI3NpemUtY2VsbHMgPSA8MT47DQorCQlyYW5nZXMgPSA8MHg1YzAwMDAw
MCAweDAgMHg1YzAwMDAwMCAweDEwMDAwMDA+Ow0KKw0KKwkJZGRyLXBtdUA1YzAyMDAwMCB7DQor
CQkJY29tcGF0aWJsZSA9ICJmc2wsaW14OC1kZHItcG11IjsNCisJCQlyZWcgPSA8MHg1YzAyMDAw
MCAweDEwMDAwPjsNCisJCQlpbnRlcnJ1cHQtcGFyZW50ID0gPCZnaWM+Ow0KKwkJCWludGVycnVw
dHMgPSA8R0lDX1NQSSAxMzEgSVJRX1RZUEVfTEVWRUxfSElHSD47DQorCQl9Ow0KKwl9Ow0KKw0K
IAlsc2lvX3N1YnN5czogYnVzQDVkMDAwMDAwIHsNCiAJCWNvbXBhdGlibGUgPSAic2ltcGxlLWJ1
cyI7DQogCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsNCi0tIA0KMi41LjINCg0K

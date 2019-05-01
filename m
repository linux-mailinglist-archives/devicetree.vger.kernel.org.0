Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1618810CD2
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2019 20:43:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726196AbfEASnl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 May 2019 14:43:41 -0400
Received: from mail-eopbgr10087.outbound.protection.outlook.com ([40.107.1.87]:13989
        "EHLO EUR02-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726183AbfEASnk (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 1 May 2019 14:43:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sKmqgfUeA+Pvh7XUoqEZpieIG+gFsQv7jjA4yDLe7/k=;
 b=lVb69dXhPEOebdUZkyclVGjiHnLTgjOA5fmVdv38Oyn8yV9FDFBv4i8mogvFsJTVORwgSNkppeTGyJ39+G7KqGP29ALe8cQDdTELKaPFXw7yHe5OrRwatNdygk3l7QFC3bkvSOHg9cUEUJvCDdCwIVfYw5h7uYxEWSoc8IH9CHk=
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com (20.177.49.159) by
 VI1PR04MB4093.eurprd04.prod.outlook.com (52.133.12.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Wed, 1 May 2019 18:43:32 +0000
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c]) by VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c%7]) with mapi id 15.20.1856.008; Wed, 1 May 2019
 18:43:32 +0000
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
Subject: [PATCH V12 3/4] arm64: dts: imx8qxp: added ddr performance monitor
 nodes
Thread-Topic: [PATCH V12 3/4] arm64: dts: imx8qxp: added ddr performance
 monitor nodes
Thread-Index: AQHVAE3GEjqL0w/qSkWq9sVitoSq+g==
Date:   Wed, 1 May 2019 18:43:32 +0000
Message-ID: <1556736193-29411-3-git-send-email-Frank.Li@nxp.com>
References: <1556736193-29411-1-git-send-email-Frank.Li@nxp.com>
In-Reply-To: <1556736193-29411-1-git-send-email-Frank.Li@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SN4PR0501CA0013.namprd05.prod.outlook.com
 (2603:10b6:803:40::26) To VI1PR04MB4910.eurprd04.prod.outlook.com
 (2603:10a6:803:56::31)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=frank.li@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.5.2
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 16c47f0f-9241-4fa0-cc8e-08d6ce64e8fc
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);SRVR:VI1PR04MB4093;
x-ms-traffictypediagnostic: VI1PR04MB4093:
x-microsoft-antispam-prvs: <VI1PR04MB4093C85CEEA43DDC884553C9883B0@VI1PR04MB4093.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:497;
x-forefront-prvs: 00246AB517
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(39860400002)(136003)(366004)(396003)(346002)(376002)(199004)(189003)(52116002)(446003)(305945005)(7736002)(316002)(66066001)(110136005)(99286004)(386003)(66946007)(66446008)(66476007)(2201001)(66556008)(4744005)(64756008)(81156014)(50226002)(8936002)(73956011)(36756003)(81166006)(8676002)(71190400001)(6436002)(476003)(4326008)(2616005)(7416002)(26005)(102836004)(76176011)(256004)(486006)(14454004)(11346002)(478600001)(25786009)(86362001)(68736007)(6506007)(6116002)(6486002)(2501003)(186003)(5660300002)(3846002)(2906002)(6512007)(71200400001)(53936002)(32563001)(921003)(1121003);DIR:OUT;SFP:1101;SCL:1;SRVR:VI1PR04MB4093;H:VI1PR04MB4910.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: DDpbxmISQHvHBXDtTV9NoM31zaQsLov2Hy4IZCb4CV5c+rdW0kNDyr5andXPDWXxvaar1t9/Q7MJTR++wwfry0HM3XXjMmN2qljBMy7zppNyuHGUcyQkZy2JLHPwVDZU2uVNxeiC8yR2/wLFU4QHaabIGRXEAIEIHlxJ+FxCx/PSCfzZQZTfVZUhmQvQwrgK/Dylvetv1Ip4LTaq1f5L96aytFLJVDE1Qdde4JjovRNtrNvL4M77Osv2VwamqdRtUOqyEUcaUbus1oFx5J9tfImY85Js352YDKITq8/5Mji3R7hj3g+13VsBxobKgfAOgK69rZ/9gF5R0CpPdZRsG/HnKpEV4sLx2lWbL1/FjFdSKzjsoKzd5q/Fps8ECn1q+i7IUpMWSlRZ78QDoTyC0O/ZIjs0Vo4ME8qOgJuYT0w=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16c47f0f-9241-4fa0-cc8e-08d6ce64e8fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2019 18:43:32.3649
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4093
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

QWRkIGRkciBwZXJmb3JtYW5jZSBtb25pdG9yDQoNClNpZ25lZC1vZmYtYnk6IEZyYW5rIExpIDxG
cmFuay5MaUBueHAuY29tPg0KUmV2aWV3ZWQtYnk6IEZhYmlvIEVzdGV2YW0gPGZlc3RldmFtQGdt
YWlsLmNvbT4NCi0tLQ0KDQpOb3RlczoNCiAgICBObyBjaGFuZ2UgZnJvbSB2OSB0byB2MTINCg0K
ICAgIENoYW5nZSBmcm9tIHY4IHRvIHY5DQogICAgKiBwdXQgZGRyLXBtdSB1bmRlciBkZHJfc3Vi
c3lzdGVtIGJ1cw0KDQogICAgQ2hhbmdlIGZyb20gdjMgdG8gdjgNCiAgICAqIG5vbmUNCg0KICAg
IENoYW5nZSBmcm9tIHYyIHRvIHYzDQogICAgKiBkZHJfcG11MCAtPiBkZHItcG11DQoNCiBhcmNo
L2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4cXhwLmR0c2kgfCAxNCArKysrKysrKysrKysr
Kw0KIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspDQoNCmRpZmYgLS1naXQgYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4cXhwLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL2ZyZWVzY2FsZS9pbXg4cXhwLmR0c2kNCmluZGV4IDA2ODNlZTIuLmEzM2UwOGMgMTAwNjQ0
DQotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4cXhwLmR0c2kNCisrKyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhxeHAuZHRzaQ0KQEAgLTM3OCw2ICsz
NzgsMjAgQEANCiAJCX07DQogCX07DQogDQorCWRkcl9zdWJzeXNzOiBidXNANWMwMDAwMDAgew0K
KwkJY29tcGF0aWJsZSA9ICJzaW1wbGUtYnVzIjsNCisJCSNhZGRyZXNzLWNlbGxzID0gPDE+Ow0K
KwkJI3NpemUtY2VsbHMgPSA8MT47DQorCQlyYW5nZXMgPSA8MHg1YzAwMDAwMCAweDAgMHg1YzAw
MDAwMCAweDEwMDAwMDA+Ow0KKw0KKwkJZGRyLXBtdUA1YzAyMDAwMCB7DQorCQkJY29tcGF0aWJs
ZSA9ICJmc2wsaW14OC1kZHItcG11IjsNCisJCQlyZWcgPSA8MHg1YzAyMDAwMCAweDEwMDAwPjsN
CisJCQlpbnRlcnJ1cHQtcGFyZW50ID0gPCZnaWM+Ow0KKwkJCWludGVycnVwdHMgPSA8R0lDX1NQ
SSAxMzEgSVJRX1RZUEVfTEVWRUxfSElHSD47DQorCQl9Ow0KKwl9Ow0KKw0KIAlsc2lvX3N1YnN5
czogYnVzQDVkMDAwMDAwIHsNCiAJCWNvbXBhdGlibGUgPSAic2ltcGxlLWJ1cyI7DQogCQkjYWRk
cmVzcy1jZWxscyA9IDwxPjsNCi0tIA0KMi41LjINCg0K

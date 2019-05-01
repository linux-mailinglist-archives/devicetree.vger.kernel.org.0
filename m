Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AE5C610CD3
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2019 20:43:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726197AbfEASnn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 May 2019 14:43:43 -0400
Received: from mail-eopbgr10087.outbound.protection.outlook.com ([40.107.1.87]:13989
        "EHLO EUR02-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726183AbfEASnn (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 1 May 2019 14:43:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SOLyFZZe7cO/bAwB4tYoNjB7hsGNj10EssbsSHFYIIM=;
 b=U40YRaqUNlJxEouIqMUoPklY2vtjWsf1k4Q6VYt6G9220HsE4fneZirDnJA4xJwDonHdibkr7ziKqfpzMIXJ25M4bdLsOUPYZ/xBwl+57b+JYz6eGxe7cnP0vPVm+9gnen2P+y1Cw1HYoRpqIpLnnsMv1pOmJ+guCm2RywVx4Cs=
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com (20.177.49.159) by
 VI1PR04MB4093.eurprd04.prod.outlook.com (52.133.12.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Wed, 1 May 2019 18:43:35 +0000
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c]) by VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c%7]) with mapi id 15.20.1856.008; Wed, 1 May 2019
 18:43:35 +0000
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
Subject: [PATCH V12 4/4] MAINTAINERS: Added imx DDR performonitor driver
 maintainer information
Thread-Topic: [PATCH V12 4/4] MAINTAINERS: Added imx DDR performonitor driver
 maintainer information
Thread-Index: AQHVAE3IRQU2FnQ6+Uq0+05FyWAIOA==
Date:   Wed, 1 May 2019 18:43:35 +0000
Message-ID: <1556736193-29411-4-git-send-email-Frank.Li@nxp.com>
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
x-ms-office365-filtering-correlation-id: 4c0229c6-e36e-4368-9e95-08d6ce64eaac
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);SRVR:VI1PR04MB4093;
x-ms-traffictypediagnostic: VI1PR04MB4093:
x-microsoft-antispam-prvs: <VI1PR04MB409375BE0B381043F13DA98F883B0@VI1PR04MB4093.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:421;
x-forefront-prvs: 00246AB517
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(39860400002)(136003)(366004)(396003)(346002)(376002)(199004)(189003)(52116002)(446003)(305945005)(7736002)(316002)(66066001)(110136005)(99286004)(386003)(66946007)(66446008)(66476007)(2201001)(66556008)(4744005)(64756008)(81156014)(50226002)(8936002)(73956011)(36756003)(81166006)(8676002)(71190400001)(6436002)(476003)(4326008)(2616005)(7416002)(26005)(102836004)(76176011)(256004)(486006)(14454004)(11346002)(478600001)(25786009)(86362001)(68736007)(6506007)(6116002)(6486002)(2501003)(186003)(5660300002)(3846002)(2906002)(6512007)(71200400001)(53936002)(921003)(1121003);DIR:OUT;SFP:1101;SCL:1;SRVR:VI1PR04MB4093;H:VI1PR04MB4910.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: o88e6jgXY7yzo4L/1l27yfJdTD6ouReo2fmiK10/XOsZADAEXTkFJQfBJk/czEg6E0FtRXaEPkuy7+76855xl1HQFNR7WHc2uQ4TexCZo0xbMDcc4E/I0DMu+317RbXJZh3moF71b9rF1Qcq0OfG2oOQDnfgcWLxg3WTHB7nWmTkJcHzp3cFmDR0m9CsEF6u67KTAWcc3kFEuiKLRQMF2TgFPwRZLA5Y6mEV0utI158uf8Og/g2+HZt4qjDNJqEmuFaU20Cp+rrjqlOJGzkz6UuWCdACE/8/jY13N+x30WcEs/8PfZ72BdWQEOfPsr+2ZznniFuu10hN0VudsGzNm+athy1r9ZsbY5DYbkYvTwqpvPxQMP9kXWErJs4++RM27eJtEVBW5OAjeT0po+/99e8eDNfB2ZzbUczZ5VnowXo=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c0229c6-e36e-4368-9e95-08d6ce64eaac
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2019 18:43:35.2048
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4093
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

QWRkIEREUiBwZXJmIGNvdW50ZXIgZHJpdmVyIG1haW50YWluZXIgaW5mb3JtYXRpb24NCg0KU2ln
bmVkLW9mZi1ieTogRnJhbmsgTGkgPEZyYW5rLkxpQG54cC5jb20+DQotLS0NCg0KTm90ZXM6DQog
ICAgTm8gY2hhbmdlIGZyb20gdjEgdG8gdjEyDQoNCiBNQUlOVEFJTkVSUyB8IDcgKysrKysrKw0K
IDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykNCg0KZGlmZiAtLWdpdCBhL01BSU5UQUlO
RVJTIGIvTUFJTlRBSU5FUlMNCmluZGV4IDJjN2Q0ZTEuLjZhOTg2OGIgMTAwNjQ0DQotLS0gYS9N
QUlOVEFJTkVSUw0KKysrIGIvTUFJTlRBSU5FUlMNCkBAIC02MjY0LDYgKzYyNjQsMTMgQEAgTDoJ
bGludXgtaTJjQHZnZXIua2VybmVsLm9yZw0KIFM6CU1haW50YWluZWQNCiBGOglkcml2ZXJzL2ky
Yy9idXNzZXMvaTJjLWNwbS5jDQogDQorRlJFRVNDQUxFIElNWCBERFIgUGVyZm9ybWFuY2UgTW9u
aXRvciBEUklWRVINCitNOglGcmFuayBMaSA8RnJhbmsubGlAbnhwLmNvbT4NCitMOglsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcNCitTOglNYWludGFpbmVkDQorRjoJZHJpdmVy
cy9wZXJmL2ZzbF9pbXg4X2Rkcl9wZXJmLmMNCitGOglEb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvcGVyZi9mc2wtaW14LWRkci50eHQNCisNCiBGUkVFU0NBTEUgSU1YIExQSTJDIERS
SVZFUg0KIE06CURvbmcgQWlzaGVuZyA8YWlzaGVuZy5kb25nQG54cC5jb20+DQogTDoJbGludXgt
aTJjQHZnZXIua2VybmVsLm9yZw0KLS0gDQoyLjUuMg0KDQo=

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C82FE109E8
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2019 17:21:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726677AbfEAPVJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 May 2019 11:21:09 -0400
Received: from mail-eopbgr150054.outbound.protection.outlook.com ([40.107.15.54]:60134
        "EHLO EUR01-DB5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726473AbfEAPVJ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 1 May 2019 11:21:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CQAGhxRObBtZ6xtkTywA7qHX2Tw6wchYZRoLvESKZG8=;
 b=JG0Dz3SEnkAx7MRheA+3GvBG+uSi9oFTZGpqJeWwcZpaEaEH0W+gDdbMFs7QJ0MBThjCE5ADiQiygqIqAi+MDkL1FjTnT7T1uy11Y0jqQKkLUq8iYuJ/0sepS8zYA6ozEXjf8NLSawjzEF00Kei64pgP5xJ+sXmFxX/17A1Mz0o=
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com (20.177.49.159) by
 VI1PR04MB6045.eurprd04.prod.outlook.com (20.179.24.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Wed, 1 May 2019 15:21:06 +0000
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c]) by VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c%7]) with mapi id 15.20.1856.008; Wed, 1 May 2019
 15:21:06 +0000
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
Subject: [PATCH V11 4/4] MAINTAINERS: Added imx DDR performonitor driver
 maintainer information
Thread-Topic: [PATCH V11 4/4] MAINTAINERS: Added imx DDR performonitor driver
 maintainer information
Thread-Index: AQHVADF+30cjAxK9vEKXkM+muXaTHQ==
Date:   Wed, 1 May 2019 15:21:05 +0000
Message-ID: <1556724043-3961-4-git-send-email-Frank.Li@nxp.com>
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
x-ms-office365-filtering-correlation-id: 816d1385-7475-4cd0-773f-08d6ce48a10e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);SRVR:VI1PR04MB6045;
x-ms-traffictypediagnostic: VI1PR04MB6045:
x-microsoft-antispam-prvs: <VI1PR04MB6045BBA64DEFAFD3A7B2235F883B0@VI1PR04MB6045.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:421;
x-forefront-prvs: 00246AB517
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(346002)(396003)(366004)(376002)(39860400002)(136003)(189003)(199004)(81156014)(478600001)(5660300002)(6512007)(6116002)(2501003)(7416002)(25786009)(316002)(305945005)(99286004)(256004)(110136005)(14454004)(3846002)(4326008)(7736002)(53936002)(446003)(386003)(476003)(102836004)(71190400001)(66446008)(50226002)(73956011)(64756008)(11346002)(6486002)(26005)(52116002)(2906002)(4744005)(76176011)(36756003)(2201001)(66066001)(6436002)(71200400001)(8676002)(68736007)(86362001)(8936002)(486006)(81166006)(66946007)(186003)(6506007)(2616005)(66556008)(66476007)(921003)(1121003);DIR:OUT;SFP:1101;SCL:1;SRVR:VI1PR04MB6045;H:VI1PR04MB4910.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: RxIUzIUatXABEQ4aIaESg9urz+VGI8iJFPfMCmymQXjf95iCCbajRQAuuD6akAfKrAZ58U9boVI2A7t59P3k9hA5hsHQjqgTUp43wU8Mr+Wm567R8ntRbkCpktkm8r+CSr0IAQ5L7SwTdX0FJH/IywPOGXj0yTV1kegNo51a5OzgS0hSnDh1x7fALRtFN5xXyzV/SPZ++9W9JeQ9bH7HML5uVxu2+CXCRjM8ykBWov8UQntr6qFmSj6Tvjjn84DqiRqZV8In3qW74Q5H8+nW3QEtJLwdiPlccrc7RwTc0j1okKqF1ZbJfSmMjj4127GP76muDVUMkhxPWtjwsa64/iJe93X5lLJvj3ZF53uEckZU7h7Ep/5qLYURP28r+rjL3jtpG1KuBx1YlE48IFiROrpOGXIHGrebRK2AadEEVRo=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 816d1385-7475-4cd0-773f-08d6ce48a10e
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2019 15:21:05.9164
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6045
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

QWRkIEREUiBwZXJmIGNvdW50ZXIgZHJpdmVyIG1haW50YWluZXIgaW5mb3JtYXRpb24NCg0KU2ln
bmVkLW9mZi1ieTogRnJhbmsgTGkgPEZyYW5rLkxpQG54cC5jb20+DQotLS0NCg0KTm90ZXM6DQog
ICAgTm8gY2hhbmdlIGZyb20gdjEgdG8gdjExDQoNCiBNQUlOVEFJTkVSUyB8IDcgKysrKysrKw0K
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

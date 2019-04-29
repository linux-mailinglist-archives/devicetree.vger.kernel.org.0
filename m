Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 97D20E802
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2019 18:44:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728681AbfD2Qom (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Apr 2019 12:44:42 -0400
Received: from mail-eopbgr20078.outbound.protection.outlook.com ([40.107.2.78]:55366
        "EHLO EUR02-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1728760AbfD2Qom (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 29 Apr 2019 12:44:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P5Fcj63ZxLJBXBRZvo/zOWz3bF5Gowdk6G4dTIzG0H0=;
 b=ZK7idqVDDWnYMRDNbHJ4dqX+RgJhZLyUcdtMn0iQTrsxZw5/Yj9dmxZUxrquSfp1L0m8Gtu6WOoytq3eAzedTOI/fgsCO9zXgsX+ZNX9/3+bSgweEhEs40rjorQlnxAZZMmAjssGZdlZbAKKwt3PNtHn7neNZUfhLgsbl7ewn4g=
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com (20.177.49.159) by
 VI1PR04MB4000.eurprd04.prod.outlook.com (10.171.182.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Mon, 29 Apr 2019 16:44:37 +0000
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c]) by VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c%7]) with mapi id 15.20.1835.018; Mon, 29 Apr 2019
 16:44:37 +0000
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
Subject: [PATCH V9 4/4] MAINTAINERS: Added imx DDR performonitor driver
 maintainer information
Thread-Topic: [PATCH V9 4/4] MAINTAINERS: Added imx DDR performonitor driver
 maintainer information
Thread-Index: AQHU/qrV4EH7OwlV1E21FEPgHnlu7Q==
Date:   Mon, 29 Apr 2019 16:44:37 +0000
Message-ID: <1556556252-22868-4-git-send-email-Frank.Li@nxp.com>
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
x-ms-office365-filtering-correlation-id: 432830e9-4da9-4d92-9ea1-08d6ccc1f799
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);SRVR:VI1PR04MB4000;
x-ms-traffictypediagnostic: VI1PR04MB4000:
x-microsoft-antispam-prvs: <VI1PR04MB4000F616DF88EB89D91103C588390@VI1PR04MB4000.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:421;
x-forefront-prvs: 0022134A87
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(39860400002)(396003)(366004)(376002)(136003)(346002)(199004)(189003)(110136005)(6486002)(316002)(68736007)(81156014)(53936002)(73956011)(305945005)(7416002)(6512007)(8676002)(71200400001)(71190400001)(476003)(8936002)(86362001)(4744005)(52116002)(7736002)(386003)(6506007)(81166006)(50226002)(5660300002)(99286004)(76176011)(486006)(2201001)(36756003)(478600001)(97736004)(186003)(4326008)(2501003)(256004)(66556008)(66946007)(66446008)(64756008)(66476007)(11346002)(446003)(2906002)(14454004)(2616005)(6436002)(6116002)(3846002)(26005)(102836004)(66066001)(25786009)(921003)(1121003);DIR:OUT;SFP:1101;SCL:1;SRVR:VI1PR04MB4000;H:VI1PR04MB4910.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: k3tEOdcz48ZCa6Piv/thlYigUInBJdcf9knvq0nk7/FDL5RegprTOUtandnmyLDtbOyfup+3ptcCFpOB5enXrRhhi8q1BISWfUthCDvvx2agnMB9C4/os5es+QBiZc+1aXV0RYnDA6QkQJnOJP3Od1I6IpvpYDNZC3tLKn4kiOv7ekpndH2KNMHoAnhcPN5d55kGK2sT+q0mrrwzNDjXX+96TPwwHezGFTH6LPfulH5Xsv++qS2KtZ9chrPNx/zoSjO4o1P8mASjK1R4ijX6kh4SOe11Re/paCArP7oyEDtcHHYyfxhtXcamGXtviUSz3DwL/5O9sWpYWAqHqAm/sFBmyiuN9H96CYaFNOI+t/XQnxMSCbp/7oUAkm1qirdJCEzudaiE+licaZ9Nq/RQjSF4rHLP4n0jDtpz4UhoguY=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 432830e9-4da9-4d92-9ea1-08d6ccc1f799
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2019 16:44:37.8731
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4000
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

QWRkIEREUiBwZXJmIGNvdW50ZXIgZHJpdmVyIG1haW50YWluZXIgaW5mb3JtYXRpb24NCg0KU2ln
bmVkLW9mZi1ieTogRnJhbmsgTGkgPEZyYW5rLkxpQG54cC5jb20+DQotLS0NCk5vIGNoYW5nZSBm
cm9tIHYxIHRvIHY5DQoNCiBNQUlOVEFJTkVSUyB8IDcgKysrKysrKw0KIDEgZmlsZSBjaGFuZ2Vk
LCA3IGluc2VydGlvbnMoKykNCg0KZGlmZiAtLWdpdCBhL01BSU5UQUlORVJTIGIvTUFJTlRBSU5F
UlMNCmluZGV4IDJjN2Q0ZTEuLjZhOTg2OGIgMTAwNjQ0DQotLS0gYS9NQUlOVEFJTkVSUw0KKysr
IGIvTUFJTlRBSU5FUlMNCkBAIC02MjY0LDYgKzYyNjQsMTMgQEAgTDoJbGludXgtaTJjQHZnZXIu
a2VybmVsLm9yZw0KIFM6CU1haW50YWluZWQNCiBGOglkcml2ZXJzL2kyYy9idXNzZXMvaTJjLWNw
bS5jDQogDQorRlJFRVNDQUxFIElNWCBERFIgUGVyZm9ybWFuY2UgTW9uaXRvciBEUklWRVINCitN
OglGcmFuayBMaSA8RnJhbmsubGlAbnhwLmNvbT4NCitMOglsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcNCitTOglNYWludGFpbmVkDQorRjoJZHJpdmVycy9wZXJmL2ZzbF9pbXg4
X2Rkcl9wZXJmLmMNCitGOglEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGVyZi9m
c2wtaW14LWRkci50eHQNCisNCiBGUkVFU0NBTEUgSU1YIExQSTJDIERSSVZFUg0KIE06CURvbmcg
QWlzaGVuZyA8YWlzaGVuZy5kb25nQG54cC5jb20+DQogTDoJbGludXgtaTJjQHZnZXIua2VybmVs
Lm9yZw0KLS0gDQoyLjUuMg0KDQo=

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AA8E7E7FF
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2019 18:44:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728621AbfD2Qof (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Apr 2019 12:44:35 -0400
Received: from mail-eopbgr10072.outbound.protection.outlook.com ([40.107.1.72]:18916
        "EHLO EUR02-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1728520AbfD2Qof (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 29 Apr 2019 12:44:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AMmmQPuqH/XRAvEAXW/x/sIIOOwlI3/Lupf9OP8IpXc=;
 b=i8nUtuLjQL8S12GXsWmClE4jrq/9bD9fozpS1fWB7IaMDfMH98SxKtAWyUtKtGx7EcvCkB3g3kq8l9Hs0djvasBIitSdPiH1g15gAwT11QKgtNbdhGMdb7Bn2PeHyKwKDVUCpi4kMyRALNYSeE213ZMtzWIySGJvrBpBFYCmm58=
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com (20.177.49.159) by
 VI1PR04MB5791.eurprd04.prod.outlook.com (20.178.127.225) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.12; Mon, 29 Apr 2019 16:44:29 +0000
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c]) by VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c%7]) with mapi id 15.20.1835.018; Mon, 29 Apr 2019
 16:44:29 +0000
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
Subject: [PATCH V9 1/4] dt-bindings: perf: imx8-ddr: add imx8qxp ddr
 performance monitor
Thread-Topic: [PATCH V9 1/4] dt-bindings: perf: imx8-ddr: add imx8qxp ddr
 performance monitor
Thread-Index: AQHU/qrQR8RpP0mpdUi4M319EAtCOQ==
Date:   Mon, 29 Apr 2019 16:44:29 +0000
Message-ID: <1556556252-22868-1-git-send-email-Frank.Li@nxp.com>
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
x-ms-office365-filtering-correlation-id: db6d3080-2df7-4cbc-b87c-08d6ccc1f271
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);SRVR:VI1PR04MB5791;
x-ms-traffictypediagnostic: VI1PR04MB5791:
x-microsoft-antispam-prvs: <VI1PR04MB57915FACF2CE885CD56B118788390@VI1PR04MB5791.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 0022134A87
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(39860400002)(376002)(366004)(396003)(136003)(346002)(199004)(189003)(68736007)(102836004)(7736002)(305945005)(7416002)(2201001)(86362001)(25786009)(4326008)(99286004)(186003)(110136005)(316002)(3846002)(66946007)(66476007)(66556008)(6512007)(6486002)(26005)(6116002)(64756008)(66446008)(73956011)(52116002)(386003)(6506007)(6436002)(2906002)(53936002)(36756003)(2616005)(476003)(97736004)(2501003)(486006)(81156014)(8676002)(50226002)(81166006)(8936002)(71190400001)(5660300002)(71200400001)(478600001)(14454004)(256004)(66066001)(21314003)(921003)(32563001)(1121003);DIR:OUT;SFP:1101;SCL:1;SRVR:VI1PR04MB5791;H:VI1PR04MB4910.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: xHeDq/qEMRJxclGrYbo9SzOYRVNm6f6GPpX7d2huIF9tgF3PbR0yOtCbofN7NCSh5SM1Tzpwfv1Igp4zSJdMmF34hRH702BNVzn8arvEjzz4Jfr1sE9JwdPGtJ9AFs4T+f+ilrnj0vhdw5ms34vtay0tbFg3S/BNL7YJXZURn6zNsoShcvYkS0vJv+95MbzHxgCKjPPbMR/VrZph6ect1GyHj6nT4N4/OlT23EvdyvaRYiYXS1wawEm0PeNPAzd5ybgjFptBGD/8vWALP10UdFjnoOoy3gwD1sgLg94NrOGSjJg4VukFolucw6f+JVCU8f6phdvtgbQJXGzFzxkFZHzcvYJt3mcNSc9rK2V1nrlwGB1NAouqpedvEToscMwPoj27VlU+QK40vMv988ro1apK6PfRGZDUvw8fo9eKKc0=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: db6d3080-2df7-4cbc-b87c-08d6ccc1f271
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2019 16:44:29.2090
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5791
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

QWRkZWQgYmluZGluZyBkb2MgZm9yIGlteDhxeHAgZGRyIHBlcmZvcm1hbmNlIG1vbml0b3INCg0K
U2lnbmVkLW9mZi1ieTogRnJhbmsgTGkgPEZyYW5rLkxpQG54cC5jb20+DQpSZXZpZXdlZC1ieTog
Um9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4NCi0tLQ0KQ2hhbmdlIGZyb20gdjggdG8gdjkN
CiogdXNlIDMyYml0IGFkZHJlc3Mgd2lkdGggDQoNCk5vIGNoYW5nZSBmcm9tIHY0IHRvIHY4DQoN
CkNoYW5nZSBmcm9tIHY0IHRvIHY0DQoqIHJlbW92ZSAic3RhbmRhcmQgeHh4Ig0KDQpDaGFuZ2Ug
ZnJvbSB2MiB0byB2Mw0KKiBkZHJfcG11MCAtPiBkZHItcG11DQoNCg0KIC4uLi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3BlcmYvZnNsLWlteC1kZHIudHh0ICAgICAgIHwgMjIgKysrKysrKysrKysrKysr
KysrKysrKw0KIDEgZmlsZSBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspDQogY3JlYXRlIG1vZGUg
MTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wZXJmL2ZzbC1pbXgtZGRy
LnR4dA0KDQpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bl
cmYvZnNsLWlteC1kZHIudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bl
cmYvZnNsLWlteC1kZHIudHh0DQpuZXcgZmlsZSBtb2RlIDEwMDY0NA0KaW5kZXggMDAwMDAwMC4u
OWI5Y2RhNmENCi0tLSAvZGV2L251bGwNCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9wZXJmL2ZzbC1pbXgtZGRyLnR4dA0KQEAgLTAsMCArMSwyMiBAQA0KKyogRnJlZXNj
YWxlKE5YUCkgSU1YOCBERFIgcGVyZm9ybWFuY2UgbW9uaXRvcg0KKw0KK1JlcXVpcmVkIHByb3Bl
cnRpZXM6DQorDQorLSBjb21wYXRpYmxlOiBzaG91bGQgYmUgb25lIG9mOg0KKwkiZnNsLGlteDgt
ZGRyLXBtdSINCisJImZzbCxpbXg4bS1kZHItcG11Ig0KKw0KKy0gcmVnOiBwaHlzaWNhbCBhZGRy
ZXNzIGFuZCBzaXplDQorDQorLSBpbnRlcnJ1cHRzOiBzaW5nbGUgaW50ZXJydXB0DQorCWdlbmVy
YXRlZCBieSB0aGUgY29udHJvbCBibG9jaw0KKw0KK0V4YW1wbGU6DQorDQorCWRkci1wbXVANWMw
MjAwMDAgew0KKwkJY29tcGF0aWJsZSA9ICJmc2wsaW14OC1kZHItcG11IjsNCisJCXJlZyA9IDww
eDVjMDIwMDAwIDB4MTAwMDA+Ow0KKwkJaW50ZXJydXB0LXBhcmVudCA9IDwmZ2ljPjsNCisJCWlu
dGVycnVwdHMgPSA8R0lDX1NQSSAxMzEgSVJRX1RZUEVfTEVWRUxfSElHSD47DQorCX07DQorDQot
LSANCjIuNS4yDQoNCg==

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6D58F17588
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2019 12:00:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726658AbfEHKAU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 May 2019 06:00:20 -0400
Received: from mail-eopbgr150071.outbound.protection.outlook.com ([40.107.15.71]:40162
        "EHLO EUR01-DB5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1727095AbfEHKAT (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 8 May 2019 06:00:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4JDZ1ndfxZ/LGMLKjgHn4vd5N+Bi7zALvX8htPO3b/k=;
 b=QK+DwTEzbULxHGbGBY8mykw4rRk6uedySzE8Z2inTpAk2TfkwB6Asm/5OiuUWzXFISFNr/qINKWWJd9XjKJyHXZh6xkjv9oxfJ2XzTEKbsoxdezUmgX+PLj8gRWhwJ2dho66UA+dZr4MjMWMaCmM0ryPqNYbBbgtN0u5190fGVw=
Received: from AM0PR04MB4865.eurprd04.prod.outlook.com (20.176.215.158) by
 AM0PR04MB4354.eurprd04.prod.outlook.com (52.134.90.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Wed, 8 May 2019 10:00:17 +0000
Received: from AM0PR04MB4865.eurprd04.prod.outlook.com
 ([fe80::f496:84c1:30b5:43be]) by AM0PR04MB4865.eurprd04.prod.outlook.com
 ([fe80::f496:84c1:30b5:43be%7]) with mapi id 15.20.1856.012; Wed, 8 May 2019
 10:00:16 +0000
From:   Wen He <wen.he_1@nxp.com>
To:     "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>
CC:     Leo Li <leoyang.li@nxp.com>, Wen He <wen.he_1@nxp.com>
Subject: [v1 3/4] arm64: ls1028aqds: Add support DP nodes for LS1028AQDS
Thread-Topic: [v1 3/4] arm64: ls1028aqds: Add support DP nodes for LS1028AQDS
Thread-Index: AQHVBYTWe75GjNxblEGmRUZupS7m9g==
Date:   Wed, 8 May 2019 10:00:16 +0000
Message-ID: <20190508100136.7009-3-wen.he_1@nxp.com>
References: <20190508100136.7009-1-wen.he_1@nxp.com>
In-Reply-To: <20190508100136.7009-1-wen.he_1@nxp.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK0P153CA0043.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:17::31) To AM0PR04MB4865.eurprd04.prod.outlook.com
 (2603:10a6:208:c4::30)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=wen.he_1@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 341078f6-462e-49f5-bd4c-08d6d39bf8a0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);SRVR:AM0PR04MB4354;
x-ms-traffictypediagnostic: AM0PR04MB4354:
x-microsoft-antispam-prvs: <AM0PR04MB4354421C3F24C0AF794E19CDE2320@AM0PR04MB4354.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0031A0FFAF
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(39860400002)(376002)(366004)(396003)(346002)(136003)(189003)(199004)(66446008)(2501003)(26005)(81156014)(66556008)(110136005)(71190400001)(53936002)(2201001)(99286004)(52116002)(76176011)(316002)(54906003)(2616005)(3846002)(6116002)(2906002)(71200400001)(102836004)(256004)(478600001)(386003)(6506007)(186003)(14454004)(486006)(11346002)(476003)(446003)(50226002)(305945005)(66066001)(66946007)(7736002)(64756008)(73956011)(86362001)(8936002)(8676002)(81166006)(6436002)(25786009)(6486002)(5660300002)(68736007)(1076003)(66476007)(6512007)(4326008)(36756003);DIR:OUT;SFP:1101;SCL:1;SRVR:AM0PR04MB4354;H:AM0PR04MB4865.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: MwZOEBeaRrJI5Ml+4IbpJRA+TLRPMG/8jPLFDyRQIUatRzEc3iED6e3oNsa34e8LgMNLAIZgas0NiWE6C45vhRxNF+QE360U+ytcqnAVQmh3OM1TJTKRaLrsAaYs4BtmK38/nxn3Bum45mpNvM6F+7gI9Wy0rzgqZ4Kwssyoyj38vW3Qqn+J0Og9gzKYqh1IgpPp7GdpX3Tjhi6BVqbY/mtyzcNdsY6IanGG2OaMELchtujNFAIGtFyAdQRcGwd6bL+ZtLek0IxsNCBZmKJnqudIYvefAXuZaMv3Er2aV5ki6Y37ZDjFG1/yMUB/kV2qDTvhlnx9z86PhlSKGFASXCe6E5rMscxPYq8RL1OdadSBuOUvAbU2qbTF5uZAMxp+Cx6jUURyeYJGUQ2rIZ+lRG9TtHNm9/A562P5dgAabw4=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 341078f6-462e-49f5-bd4c-08d6d39bf8a0
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2019 10:00:16.9036
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4354
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

VGhpcyBwYXRjaCBhZGQgSERQIFBIWSBDb250cm9sbGVyIHJlbGF0ZWQgbm9kZXMgb24gdGhlIExT
MTAyOEFRRFMuDQpOb3cgTFMxMDI4QVFEUyBvbiBEUCBoYXMgZm9sbG93aW5nIGZlYXR1cmVzOg0K
LSBTdXBwb3J0cyA0IGRwIGxhbmUgY2hhbm5lbCBhbmQgbGFuZSBtYXBwaW5nIGlzIDEtMC0zLTIu
DQotIEJ5IGRlZmF1bHQsIHRoZSBwaXhlbCBsaW5rIHJhdGUgdmFsdWUncyAyN01oei4NCi0gQnkg
ZGVmYXVsdCwgc3VwcG9ydCB0aGUgcmVzb2x1aW9ucyBhcmUgNGtANjAsMTA4MHBANjAsNzIwcEA2
MCwNCjQ4MHBANjAuIGFsc28gdXNlciBjYW4gc3BlY2lmeSBhbnkgY29tYmluYXRpb24gb2YgbW9u
aXRvciBzdXBwb3J0ZWQNCnJlc29sdWlvbnMgYnkgd3JpdHRlbiBpbiB0aGUgbm9kZSAncmVzb2x1
aW9uJy4NCi0gQnkgZGVmYXVsdCwgdGhlIGVkaWQgZnVuY3Rpb24gaXMgbm90IGluIHVzZS4NCg0K
U2lnbmVkLW9mZi1ieTogQWxpc29uIFdhbmcgPGFsaXNvbi53YW5nQG54cC5jb20+DQpTaWduZWQt
b2ZmLWJ5OiBXZW4gSGUgPHdlbi5oZV8xQG54cC5jb20+DQotLS0NCiBhcmNoL2FybTY0L2Jvb3Qv
ZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4YS1xZHMuZHRzIHwgMTIgKysrKysrKysrKysrDQogMSBm
aWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKykNCg0KZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLXFkcy5kdHMgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4YS1xZHMuZHRzDQppbmRleCBiMzU5MDY4ZDk2MDUuLmM4
YTkyZDRjNDk2NCAxMDA2NDQNCi0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2Zz
bC1sczEwMjhhLXFkcy5kdHMNCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2Zz
bC1sczEwMjhhLXFkcy5kdHMNCkBAIC0xNTMsMyArMTUzLDE1IEBADQogJnNhaTEgew0KIAlzdGF0
dXMgPSAib2theSI7DQogfTsNCisNCismaGRwIHsNCisJZnNsLG5vX2VkaWQ7DQorCXJlc29sdXRp
b24gPSAiMzg0MHgyMTYwQDYwIiwNCisJCSAgICIxOTIweDEwODBANjAiLA0KKwkJICAgIjEyODB4
NzIwQDYwIiwNCisJCSAgICI3MjB4NDgwQDYwIjsNCisJbGFuZV9tYXBwaW5nID0gPDB4NGU+Ow0K
KwllZHBfbGlua19yYXRlID0gPDB4Nj47DQorCWVkcF9udW1fbGFuZXMgPSA8MHg0PjsNCisJc3Rh
dHVzID0gIm9rYXkiOw0KK307DQotLSANCjIuMTcuMQ0KDQo=

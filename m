Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DA2EF1758B
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2019 12:00:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726839AbfEHKAY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 May 2019 06:00:24 -0400
Received: from mail-eopbgr50072.outbound.protection.outlook.com ([40.107.5.72]:19078
        "EHLO EUR03-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726916AbfEHKAY (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 8 May 2019 06:00:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4B9htAaDGUQ7lU1VuL1ilAsP5SxQSsXz3AVv8b1ZTvw=;
 b=nx0OZaT7n/hS+RgVnil46siHX5F1rtQ8uXOD8V4DJ2HnGhloqPaGJEz/lFlda6/WGicmTweYo7gRoCC9WD4U2YbSyBzen+d+tTx4QFdoGoYqEro4cKJm3P9hC3xIb9bbt1heY8eYeyI//BnviOA7p6+y+jWHZIVN+hM0+O3lukg=
Received: from AM0PR04MB4865.eurprd04.prod.outlook.com (20.176.215.158) by
 AM0PR04MB6083.eurprd04.prod.outlook.com (20.179.34.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Wed, 8 May 2019 10:00:19 +0000
Received: from AM0PR04MB4865.eurprd04.prod.outlook.com
 ([fe80::f496:84c1:30b5:43be]) by AM0PR04MB4865.eurprd04.prod.outlook.com
 ([fe80::f496:84c1:30b5:43be%7]) with mapi id 15.20.1856.012; Wed, 8 May 2019
 10:00:19 +0000
From:   Wen He <wen.he_1@nxp.com>
To:     "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>
CC:     Leo Li <leoyang.li@nxp.com>, Wen He <wen.he_1@nxp.com>
Subject: [v1 4/4] arm64: ls1028ardb: Add support DP nodes for LS1028ARDB
Thread-Topic: [v1 4/4] arm64: ls1028ardb: Add support DP nodes for LS1028ARDB
Thread-Index: AQHVBYTYyPYgW7vI8E6GQ5gNiL+aow==
Date:   Wed, 8 May 2019 10:00:19 +0000
Message-ID: <20190508100136.7009-4-wen.he_1@nxp.com>
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
x-ms-office365-filtering-correlation-id: 89b90a52-674c-49b0-a68a-08d6d39bfa4c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);SRVR:AM0PR04MB6083;
x-ms-traffictypediagnostic: AM0PR04MB6083:
x-microsoft-antispam-prvs: <AM0PR04MB608390974C41FE75EE6D2EA7E2320@AM0PR04MB6083.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0031A0FFAF
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(396003)(346002)(39860400002)(376002)(136003)(366004)(199004)(189003)(476003)(11346002)(14454004)(316002)(2201001)(256004)(86362001)(4326008)(478600001)(305945005)(8936002)(25786009)(446003)(102836004)(2906002)(66446008)(66476007)(73956011)(66556008)(64756008)(66946007)(6486002)(71200400001)(81156014)(36756003)(81166006)(66066001)(8676002)(71190400001)(53936002)(6506007)(386003)(76176011)(5660300002)(54906003)(3846002)(99286004)(6116002)(52116002)(486006)(110136005)(6436002)(2616005)(68736007)(7736002)(2501003)(50226002)(1076003)(186003)(26005)(6512007);DIR:OUT;SFP:1101;SCL:1;SRVR:AM0PR04MB6083;H:AM0PR04MB4865.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: tA3SY4cEmlQDYVisuH6teirySgBI/0SK2YkdcfyeKZBpTnSwzjiYwajDrcgwDWJ0mPe8mspN+u9I9Fyi6Pxnk6u+dSgOBvA1FZucJP0Bx14VLAXEZDRCRwejsUICw9ZYt3EyVE2Se2RSY//ljoDuCxXL9qvmYMEvz9hmfVmnSXkzWJH44TrreO7Zkx0+VixfiWCT3AREJuTS8jgBp6MCA11qVvYY/k/0+9gSSnqdHnpXkSic4IXE8nzq5nx+YwvEeNqi3V68RKVG82e1RP7y687aO+qkWo80u3xeJNRbjRun0H3GSGAcmcVx+xFg8090lWisFk9vkTbfyCxUh4CzP0vTdN2UNFD1/ls4PH0EfReTSf1dZGGplPDyjvdEQgFR1UfLKKnryRp95JYv+JRZ7P60PL7R3Wk+MvLFdNl/Cq0=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 89b90a52-674c-49b0-a68a-08d6d39bfa4c
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2019 10:00:19.6730
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6083
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

VGhpcyBwYXRjaCBhZGQgSERQIFBIWSBDb250cm9sbGVyIHJlbGF0ZWQgbm9kZXMgb24gdGhlIExT
MTAyOEFSREIuDQpOb3cgTFMxMDI4QVJEQiBvbiBEUCBoYXMgZm9sbG93aW5nIGZlYXR1cmVzOg0K
LSBTdXBwb3J0cyA0IGRwIGxhbmUgY2hhbm5lbCBhbmQgbGFuZSBtYXBwaW5nIGlzIDEtMC0zLTIu
DQotIEJ5IGRlZmF1bHQsIHRoZSBwaXhlbCBsaW5rIHJhdGUgdmFsdWUncyAyN01oei4NCi0gQnkg
ZGVmYXVsdCwgc3VwcG9ydCB0aGUgcmVzb2x1aW9ucyBhcmUgNGtANjAsMTA4MHBANjAsNzIwcEA2
MCwNCjQ4MHBANjAuIGFsc28gdXNlciBjYW4gc3BlY2lmeSBhbnkgY29tYmluYXRpb24gb2YgbW9u
aXRvciBzdXBwb3J0ZWQNCnJlc29sdWlvbnMgYnkgd3JpdHRlbiBpbiB0aGUgbm9kZSAncmVzb2x1
aW9uJy4NCi0gQnkgZGVmYXVsdCwgdGhlIGVkaWQgZnVuY3Rpb24gaXMgbm90IGluIHVzZS4NCg0K
U2lnbmVkLW9mZi1ieTogQWxpc29uIFdhbmcgPGFsaXNvbi53YW5nQG54cC5jb20+DQpTaWduZWQt
b2ZmLWJ5OiBXZW4gSGUgPHdlbi5oZV8xQG54cC5jb20+DQotLS0NCiBhcmNoL2FybTY0L2Jvb3Qv
ZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4YS1yZGIuZHRzIHwgMTIgKysrKysrKysrKysrDQogMSBm
aWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKykNCg0KZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLXJkYi5kdHMgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4YS1yZGIuZHRzDQppbmRleCBmOWMyNzJmYjA3MzguLjUx
M2IwZTM3ZWExMyAxMDA2NDQNCi0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2Zz
bC1sczEwMjhhLXJkYi5kdHMNCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2Zz
bC1sczEwMjhhLXJkYi5kdHMNCkBAIC0xNTEsMyArMTUxLDE1IEBADQogJnNhaTQgew0KIAlzdGF0
dXMgPSAib2theSI7DQogfTsNCisNCismaGRwIHsNCisJZnNsLG5vX2VkaWQ7DQorCXJlc29sdXRp
b24gPSAiMzg0MHgyMTYwQDYwIiwNCisJCSAgICIxOTIweDEwODBANjAiLA0KKwkJICAgIjEyODB4
NzIwQDYwIiwNCisJCSAgICI3MjB4NDgwQDYwIjsNCisJbGFuZV9tYXBwaW5nID0gPDB4NGU+Ow0K
KwllZHBfbGlua19yYXRlID0gPDB4Nj47DQorCWVkcF9udW1fbGFuZXMgPSA8MHg0PjsNCisJc3Rh
dHVzID0gIm9rYXkiOw0KK307DQotLSANCjIuMTcuMQ0KDQo=

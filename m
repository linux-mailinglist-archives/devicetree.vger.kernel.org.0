Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A56D3203B4
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2019 12:39:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727109AbfEPKjr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 06:39:47 -0400
Received: from mail-eopbgr50061.outbound.protection.outlook.com ([40.107.5.61]:36422
        "EHLO EUR03-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726838AbfEPKjq (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 16 May 2019 06:39:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6GGn8BfSWxOY/vB9Q0JJqn5M73/wKbDQ2Fs5M/Z2JKQ=;
 b=nfl0L7u69Vs6thNXjUO0afldS+7m6QSJ1yjlhh9j5HNb+cqEyJoR7WwFBIGU6klEFJulu5U6Z8fYMXhrjZw7UnkiNNPj0CJpePQmh3s9R57QLVod4gF5aVSpQomzjqwBHU5UkPxadJYbvdFlhDIMCPiud6iiFYqQxnEzduOdthY=
Received: from AM0PR0402MB3556.eurprd04.prod.outlook.com (52.133.43.147) by
 AM0PR0402MB3460.eurprd04.prod.outlook.com (52.133.48.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.21; Thu, 16 May 2019 10:39:44 +0000
Received: from AM0PR0402MB3556.eurprd04.prod.outlook.com
 ([fe80::f891:76d:8a6a:3dfd]) by AM0PR0402MB3556.eurprd04.prod.outlook.com
 ([fe80::f891:76d:8a6a:3dfd%2]) with mapi id 15.20.1900.010; Thu, 16 May 2019
 10:39:44 +0000
From:   Kuldeep Singh <kuldeep.singh@nxp.com>
To:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
CC:     "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
        "broonie@kernel.org" <broonie@kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
        Kuldeep Singh <kuldeep.singh@nxp.com>,
        Ashish Kumar <ashish.kumar@nxp.com>
Subject: [PATCH] dt-bindings: spi: spi-fsl-qspi: Add bindings of ls1088a and
 ls1012a
Thread-Topic: [PATCH] dt-bindings: spi: spi-fsl-qspi: Add bindings of ls1088a
 and ls1012a
Thread-Index: AQHVC9OshF0uyEzNyEaAYx9P/97pXg==
Date:   Thu, 16 May 2019 10:39:44 +0000
Message-ID: <20190516104046.23830-1-kuldeep.singh@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BMXPR01CA0083.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:54::23) To AM0PR0402MB3556.eurprd04.prod.outlook.com
 (2603:10a6:208:17::19)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kuldeep.singh@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [92.120.1.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a7fd8b2c-ce41-4ee9-9311-08d6d9eacf04
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);SRVR:AM0PR0402MB3460;
x-ms-traffictypediagnostic: AM0PR0402MB3460:
x-microsoft-antispam-prvs: <AM0PR0402MB34609EABE42D5A61E2D4824CE00A0@AM0PR0402MB3460.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:862;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(396003)(39860400002)(376002)(346002)(136003)(366004)(189003)(199004)(305945005)(1076003)(4326008)(71190400001)(71200400001)(8676002)(26005)(4744005)(6116002)(53936002)(3846002)(8936002)(81156014)(81166006)(1730700003)(99286004)(256004)(25786009)(6512007)(50226002)(52116002)(6486002)(6436002)(68736007)(2906002)(5640700003)(14454004)(86362001)(6506007)(6916009)(386003)(44832011)(2616005)(476003)(316002)(7736002)(186003)(478600001)(66066001)(2501003)(36756003)(486006)(5660300002)(54906003)(73956011)(66946007)(102836004)(66476007)(66556008)(66446008)(64756008)(2351001);DIR:OUT;SFP:1101;SCL:1;SRVR:AM0PR0402MB3460;H:AM0PR0402MB3556.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: uXze1UnNr2vHRFI5mSFvbVCLYazhM27p0wSURkPGJGhKsrQp69XzUYwVNOBeN8JDj4S76xaHewfPLaBzbx8JMU1ioIwX0C9UC+O8oCSnQQ3OlcuxHTkZXUaUDGvnhHV+XtXNNkCZ44gozg9B8H+vc3/f5wifxXMtz1Sxsaiwjvw0kM/T1r6trsZAr8notKxyMUPWu5V0deRqpQM/4cJpc64NP1fbDr7zYCihXC5JQJ3I+uZfr4iasHiGgaM4l+f6CAuWpyx/f9pUUukDsZYYO0Wi07SlFvBbC/hX3BpBPa56BEQFB73De3C4cGkhJsLbsHK/T62ObwYwyU2V5MniWRCypJyyQQKEMvKJc1zSGD6NXG5OAl/3MwXF5rxyOwO4FalismU6M3XG8WFXo6lpjH1LFZZynu2pol3wYdtSzKs=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a7fd8b2c-ce41-4ee9-9311-08d6d9eacf04
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 10:39:44.1680
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0402MB3460
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

U2lnbmVkLW9mZi1ieTogQXNoaXNoIEt1bWFyIDxhc2hpc2gua3VtYXJAbnhwLmNvbT4NClNpZ25l
ZC1vZmYtYnk6IEt1bGRlZXAgU2luZ2ggPGt1bGRlZXAuc2luZ2hAbnhwLmNvbT4NCi0tLQ0KIERv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zcGkvc3BpLWZzbC1xc3BpLnR4dCB8IDIg
KysNCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspDQoNCmRpZmYgLS1naXQgYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc3BpL3NwaS1mc2wtcXNwaS50eHQgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc3BpL3NwaS1mc2wtcXNwaS50eHQNCmluZGV4
IGU4ZjFkNjI3ZDI4OC4uYTcyNjE2YTFhZDJkIDEwMDY0NA0KLS0tIGEvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3NwaS9zcGktZnNsLXFzcGkudHh0DQorKysgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc3BpL3NwaS1mc2wtcXNwaS50eHQNCkBAIC03LDYgKzcs
OCBAQCBSZXF1aXJlZCBwcm9wZXJ0aWVzOg0KIAkJIG9yDQogCQkgImZzbCxsczIwODBhLXFzcGki
IGZvbGxvd2VkIGJ5ICJmc2wsbHMxMDIxYS1xc3BpIiwNCiAJCSAiZnNsLGxzMTA0M2EtcXNwaSIg
Zm9sbG93ZWQgYnkgImZzbCxsczEwMjFhLXFzcGkiDQorCQkgImZzbCxsczEwMTJhLXFzcGkiIGZv
bGxvd2VkIGJ5ICJmc2wsbHMxMDIxYS1xc3BpIg0KKwkJICJmc2wsbHMxMDg4YS1xc3BpIiBmb2xs
b3dlZCBieSAiZnNsLGxzMjA4MGEtcXNwaSINCiAgIC0gcmVnIDogdGhlIGZpcnN0IGNvbnRhaW5z
IHRoZSByZWdpc3RlciBsb2NhdGlvbiBhbmQgbGVuZ3RoLA0KICAgICAgICAgICB0aGUgc2Vjb25k
IGNvbnRhaW5zIHRoZSBtZW1vcnkgbWFwcGluZyBhZGRyZXNzIGFuZCBsZW5ndGgNCiAgIC0gcmVn
LW5hbWVzOiBTaG91bGQgY29udGFpbiB0aGUgcmVnIG5hbWVzICJRdWFkU1BJIiBhbmQgIlF1YWRT
UEktbWVtb3J5Ig0KLS0gDQoyLjE3LjENCg0K

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 05F8D17589
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2019 12:00:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727099AbfEHKAU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 May 2019 06:00:20 -0400
Received: from mail-eopbgr50072.outbound.protection.outlook.com ([40.107.5.72]:19078
        "EHLO EUR03-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726658AbfEHKAT (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 8 May 2019 06:00:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zuyGBdsvb1ZSS+ut8oGSo82qb7LY29W3sX+054MBzfY=;
 b=kDsPDxEfQwnS8mRzufWBPldwgaHOWafZYgzRxoGk6QLxilVT02C0sxH4xT/tUDVFwugGnNth3Ca6K/t98m2o9r1ViEinXXr47vGv6Y1i/3J6f5Nn10g3SjyEMs9nUiK/runqUbEqdddTHovLiy8C9/zBmqh3Pki7sSxGPd4Sd/I=
Received: from AM0PR04MB4865.eurprd04.prod.outlook.com (20.176.215.158) by
 AM0PR04MB6083.eurprd04.prod.outlook.com (20.179.34.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Wed, 8 May 2019 10:00:11 +0000
Received: from AM0PR04MB4865.eurprd04.prod.outlook.com
 ([fe80::f496:84c1:30b5:43be]) by AM0PR04MB4865.eurprd04.prod.outlook.com
 ([fe80::f496:84c1:30b5:43be%7]) with mapi id 15.20.1856.012; Wed, 8 May 2019
 10:00:11 +0000
From:   Wen He <wen.he_1@nxp.com>
To:     "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>
CC:     Leo Li <leoyang.li@nxp.com>, Wen He <wen.he_1@nxp.com>
Subject: [v1 1/4] dt-bindings: display: Add DT bindings for LS1028A HDP-TX
 PHY.
Thread-Topic: [v1 1/4] dt-bindings: display: Add DT bindings for LS1028A
 HDP-TX PHY.
Thread-Index: AQHVBYTTSfT/ttgrPkqRu69OGY9k8w==
Date:   Wed, 8 May 2019 10:00:11 +0000
Message-ID: <20190508100136.7009-1-wen.he_1@nxp.com>
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
x-ms-office365-filtering-correlation-id: 92b5c72a-581c-4e5c-eabb-08d6d39bf585
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);SRVR:AM0PR04MB6083;
x-ms-traffictypediagnostic: AM0PR04MB6083:
x-microsoft-antispam-prvs: <AM0PR04MB60839490159B6DB4B91717FEE2320@AM0PR04MB6083.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0031A0FFAF
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(396003)(346002)(39860400002)(376002)(136003)(366004)(199004)(189003)(476003)(14454004)(316002)(2201001)(256004)(86362001)(14444005)(4326008)(478600001)(305945005)(8936002)(25786009)(102836004)(2906002)(66446008)(66476007)(73956011)(66556008)(64756008)(66946007)(6486002)(71200400001)(81156014)(36756003)(81166006)(66066001)(8676002)(71190400001)(53936002)(6506007)(386003)(5660300002)(54906003)(3846002)(99286004)(6116002)(52116002)(486006)(110136005)(6436002)(2616005)(68736007)(7736002)(2501003)(50226002)(1076003)(186003)(26005)(6512007);DIR:OUT;SFP:1101;SCL:1;SRVR:AM0PR04MB6083;H:AM0PR04MB4865.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: cVyPtA4MdK222TgXRGlD6wa4U/akQ/4EFhDxVZ6BBEMH+8XuH591YPLyhsLoFAmxxhGLRiQjZHqBBH6Bc4UAimSyGnjBrC3/xTheqg4Xg28M1ZJ4nBhsyx1X+CG2Hv4URKP+5aODZOG5bxaCwnSRSUojtmI5Dz205xDz9eVAXZuyx+0YEixSGraZEjsOPWogUVf+Pu7zou+D0VW6w1tiNMzVCMXseYZxLSNPnzsHliOJ5+ZWG7zcXHEJ4eRFW/W/sDaZDqDRtgQzVDKqGUJQVswNLZBVHn/3F43bT52ocxQadAJi9zkWolsvfU4fGIPV+CerVbUS8dvrjtVtSBBObfQ3BS0Ffjh4UnoshVmQ/MlaXDScYUwideRviR+x8VG/1NSiBY0B5WA71uJ2nXk7iiBtdCEn6Msz/eBlM3G5p4Y=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 92b5c72a-581c-4e5c-eabb-08d6d39bf585
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2019 10:00:11.4848
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6083
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

QWRkIERUIGJpbmRpbmdzIGRvY3VtZW50bWF0aW9uIGZvciB0aGUgSERQLVRYIFBIWSBjb250cm9s
bGVyLiBUaGUgZGVzY3JpYmVzDQp3aGljaCBjb3VsZCBiZSBmb3VuZCBvbiBOWFAgTGF5ZXJzY2Fw
ZSBsczEwMjhhIHBsYXRmb3JtLg0KDQpTaWduZWQtb2ZmLWJ5OiBXZW4gSGUgPHdlbi5oZV8xQG54
cC5jb20+DQotLS0NCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L2ZzbCxoZHAudHh0
ICAgfCA1NiArKysrKysrKysrKysrKysrKysrDQogMSBmaWxlIGNoYW5nZWQsIDU2IGluc2VydGlv
bnMoKykNCiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2Rpc3BsYXkvZnNsLGhkcC50eHQNCg0KZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L2ZzbCxoZHAudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvZnNsLGhkcC50eHQNCm5ldyBmaWxlIG1vZGUgMTAwNjQ0
DQppbmRleCAwMDAwMDAwMDAwMDAuLjM2YjU2ODdhMTI2MQ0KLS0tIC9kZXYvbnVsbA0KKysrIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvZnNsLGhkcC50eHQNCkBA
IC0wLDAgKzEsNTYgQEANCitOWFAgTGF5ZXJzY3BhZSBsczEwMjhhIEhEUC1UWCBQSFkgQ29udHJv
bGxlcg0KKz09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09DQorDQor
VGhlIGZvbGxvd2luZyBiaW5kaW5ncyBkZXNjcmliZSB0aGUgQ2FkZW5jZSBIRFAgVFggUEhZIG9u
IGxzMTAyOGEgdGhhdA0KK29mZmVyIG11bHRpLXByb3RvY29sIHN1cHBvcnQgb2Ygc3RhbmRhcnMg
c3VjaCBhcyBlRFAgYW5kIERpc3BsYXlwb3J0LA0KK3N1cHBvcnRzIGZvciAyNS02MDBNSHogcGl4
ZWwgY2xvY2sgYW5kIHVwIHRvIDRrMmsgYXQgNjBNSHogcmVzb2x1dGlvbi4NCitUaGUgSERQIHRy
YW5zbWl0dGVyIGlzIGEgQ2FkZW5jZSBIRFAgVFggY29udHJvbGxlciBJUCB3aXRoIGEgY29tcGFu
aW9uDQorUEhZIElQLg0KKw0KK1JlcXVpcmVkIHByb3BlcnRpZXM6DQorICAtIGNvbXBhdGlibGU6
ICAgU2hvdWxkIGJlICJmc2wsbHMxMDI4YS1kcCIgZm9yIGxzMTAyOGEuDQorICAtIHJlZzogICAg
ICAgICAgUGh5c2ljYWwgYmFzZSBhZGRyZXNzIGFuZCBzaXplIG9mIHRoZSBibG9jayBvZiByZWdp
c3RlcnMgdXNlZA0KKyAgYnkgdGhlIHByb2Nlc3Nvci4NCisgIC0gaW50ZXJydXB0czogICBIRFAg
aG90cGx1ZyBpbi9vdXQgZGV0ZWN0IGludGVycnVwdCBudW1iZXINCisgIC0gY2xvY2tzOiAgICAg
ICBBIGxpc3Qgb2YgcGhhbmRsZSArIGNsb2NrLXNwZWNpZmllciBwYWlycywgb25lIGZvciBlYWNo
IGVudHJ5DQorICBpbiAnY2xvY2stbmFtZXMnDQorICAtIGNsb2NrLW5hbWVzOiAgQSBsaXN0IG9m
IGNsb2NrIG5hbWVzLiBJdCBzaG91bGQgY29udGFpbjoNCisgICAgICAtICJjbGtfaXBnIjogaW50
ZXItSW50ZWdyYXRlZCBjaXJjdWl0IGNsb2NrDQorICAgICAgLSAiY2xrX2NvcmUiOiBmb3IgdGhl
IE1haW4gRGlzcGxheSBUWCBjb250cm9sbGVyIGNsb2NrDQorICAgICAgLSAiY2xrX3B4bCI6IGZv
ciB0aGUgcGl4ZWwgY2xvY2sgZmVlZGluZyB0aGUgb3V0cHV0IFBMTCBvZiB0aGUgcHJvY2Vzc29y
DQorICAgICAgLSAiY2xrX3B4bF9tdXgiOiBmb3IgdGhlIGhpZ2ggUGVyZlBMTCBieXBhc3MgY2xv
Y2sNCisgICAgICAtICJjbGtfcHhsX2xpbmsiOiBmb3IgdGhlIGxpbmsgcmF0ZSBwaXhlbCBjbG9j
aw0KKyAgICAgIC0gImNsa19hcGIiOiBmb3IgdGhlIEFQQiBpbnRlcmZhY2UgY2xvY2sNCisgICAg
ICAtICJjbGtfdmlmIjogZm9yIHRoZSBWaWRlbyBwaXhlbCBjbG9jaw0KKw0KK1JlcXVpcmVkIHN1
Yi1ub2RlczoNCisgIC0gcG9ydDogVGhlIEhEUCBjb25uZWN0aW9uIHRvIGFuIGVuY29kZXIgb3V0
cHV0IHBvcnQuIFRoZSBjb25uZWN0aW9uDQorICAgIGlzIG1vZGVsbGVkIHVzaW5nIHRoZSBPRiBn
cmFwaCBiaW5kaW5ncyBzcGVjaWZpZWQgaW4NCisgICAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2dyYXBoLnR4dA0KKw0KKw0KK0V4YW1wbGU6DQorDQorLyB7DQorICAgICAgICAu
Li4NCisNCisJaGRwOiBkaXNwbGF5QGYyMDAwMDAgew0KKyAgICAgICAgICAgICAgICBjb21wYXRp
YmxlID0gImZzbCxsczEwMjhhLWRwIjsNCisJCXJlZyA9IDwweDAgMHhmMWYwMDAwIDB4MCAweGZm
ZmY+LA0KKwkJICAgIDwweDAgMHhmMjAwMDAwIDB4MCAweGZmZmZmPjsNCisgICAgICAgICAgICAg
ICAgaW50ZXJydXB0cyA9IDwwIDIyMSBJUlFfVFlQRV9MRVZFTF9ISUdIPjsNCisJCWNsb2NrcyA9
IDwmc3lzY2xrPiwgPCZoZHBjbGs+LCA8JmRwY2xrPiwNCisgICAgICAgICAgICAgICAgICAgICAg
ICAgPCZkcGNsaz4sIDwmZHBjbGs+LCA8JnBjbGs+LCA8JmRwY2xrPjsNCisJCWNsb2NrLW5hbWVz
ID0gImNsa19pcGciLCAiY2xrX2NvcmUiLCAiY2xrX3B4bCIsDQorICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgImNsa19weGxfbXV4IiwgImNsa19weGxfbGluayIsICJjbGtfYXBiIiwNCisg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiY2xrX3ZpZiI7DQorDQorCQlwb3J0IHsNCisJ
CQlkcDFfb3V0cHV0OiBlbmRwb2ludCB7DQorCQkJCXJlbW90ZS1lbmRwb2ludCA9IDwmZHAwX2lu
cHV0PjsNCisJCQl9Ow0KKwkJfTsNCisgICAgICAgIH07DQorDQorICAgICAgICAuLi4NCit9Ow0K
LS0gDQoyLjE3LjENCg0K

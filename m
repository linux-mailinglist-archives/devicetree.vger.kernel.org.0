Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EFC5F12612
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2019 03:34:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725995AbfECBen (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 May 2019 21:34:43 -0400
Received: from mail-eopbgr70081.outbound.protection.outlook.com ([40.107.7.81]:23494
        "EHLO EUR04-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726150AbfECBen (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 2 May 2019 21:34:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m+oyjylI89WOdiEJe1vxtVTeRifl01vyRdMgmrLAUBE=;
 b=U3eaj5wpAhp01sDwgwt0zI7moq6a4bF0aZl6Uh5+NsePLFXaOFargipI1LBQF3i0Qbo3Su47ANEMlT1DVe4Wly2I05UV8JXvcf3dHcIOhunl70LgruRvpvAqtX4s/ubgDruLxB2FqQA7uNbPTTSHIym8wSYwH+aP6xpZw1ZgrQs=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB4963.eurprd04.prod.outlook.com (20.176.215.224) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.15; Fri, 3 May 2019 01:34:35 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13%6]) with mapi id 15.20.1856.008; Fri, 3 May 2019
 01:34:35 +0000
From:   Aisheng Dong <aisheng.dong@nxp.com>
To:     Aisheng Dong <aisheng.dong@nxp.com>
CC:     Rob Herring <robh+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <kernel@pengutronix.de>,
        Michael Turquette <mturquette@baylibre.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: [PATCH V2 2/2] dt-bindings: clock: imx-lpcg: add support to parse
 clocks from device tree
Thread-Topic: [PATCH V2 2/2] dt-bindings: clock: imx-lpcg: add support to
 parse clocks from device tree
Thread-Index: AQHVAVBdWqUIsdPvA0i25nEbTE5g6w==
Date:   Fri, 3 May 2019 01:34:35 +0000
Message-ID: <1556846821-8581-3-git-send-email-aisheng.dong@nxp.com>
References: <1556846821-8581-1-git-send-email-aisheng.dong@nxp.com>
In-Reply-To: <1556846821-8581-1-git-send-email-aisheng.dong@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR03CA0093.apcprd03.prod.outlook.com
 (2603:1096:203:72::33) To AM0PR04MB4211.eurprd04.prod.outlook.com
 (2603:10a6:208:5b::30)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 637eba19-77c2-4d0e-0b53-08d6cf677fda
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);SRVR:AM0PR04MB4963;
x-ms-traffictypediagnostic: AM0PR04MB4963:
x-microsoft-antispam-prvs: <AM0PR04MB496308D8024EC433E28B409780350@AM0PR04MB4963.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0026334A56
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(366004)(376002)(396003)(39860400002)(346002)(136003)(54534003)(189003)(199004)(186003)(50226002)(7736002)(8936002)(52116002)(2616005)(4326008)(446003)(11346002)(486006)(6862004)(476003)(44832011)(81156014)(26005)(386003)(68736007)(6506007)(6512007)(81166006)(66066001)(102836004)(8676002)(5660300002)(25786009)(76176011)(7049001)(478600001)(53936002)(6116002)(3846002)(6436002)(86362001)(2906002)(73956011)(64756008)(66476007)(66556008)(66446008)(71190400001)(71200400001)(66946007)(316002)(37006003)(99286004)(6486002)(14444005)(256004)(54906003)(36756003)(6200100001)(305945005)(14454004);DIR:OUT;SFP:1101;SCL:1;SRVR:AM0PR04MB4963;H:AM0PR04MB4211.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: zkehlw6blqXsf5pVcBjCWQpCOMw5SW37zCqJrdYCeDm/HM4YVp6ebHsqEXHelUIztXsZzdHle8SJatDS9KRp00A8V/wsGOv7LReZyuB31jwXW1E5URDtmCrlgV5RZ7uu1a0235B1+OnblrF5mJUXva6kIO/sH7CmKrrcRfQzG76iz4/f+0IMcgRLket1BzxvNlkloC/LV3hU2wTJVpSHwbqx+mz+Ap57ebSaNaMDdSjO13Ktt6fqxsEbMKKOoQFnOuvq6R3CdE2NlieAtvjVYReRYbQhUUqOSZ4w6ROZSHzB6CIm69ErdSX4WSsYZgVDDcXrqDeUSwU5w746OboyvyOzgv5tN7Vpr1JHzo9oStnm+JMILg6d5CMGCtygJjDcaQkGjtrwv8yCRfqks9mGAa8yqc4Ma4CnaKKSs30OkQc=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 637eba19-77c2-4d0e-0b53-08d6cf677fda
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2019 01:34:35.6149
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4963
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

TVg4UU0gYW5kIE1YOFFYUCBMUENHIENsb2NrcyBhcmUgbW9zdGx5IHRoZSBzYW1lIGV4Y2VwdCB0
aGV5IG1heSByZXNpZGUNCmluIGRpZmZlcmVudCBzdWJzeXN0ZW1zIGFjcm9zcyBDUFVzIGFuZCBh
bHNvIHZhcnkgYSBiaXQgb24gdGhlIGF2YWlsYWJpbGl0eS4NCg0KU2FtZSBhcyBTQ1UgY2xvY2ss
IHdlIHdhbnQgdG8gbW92ZSB0aGUgY2xvY2sgZGVmaW5pdGlvbiBpbnRvIGRldmljZSB0cmVlDQp3
aGljaCBjYW4gZnVsbHkgZGVjb3VwbGUgdGhlIGRlcGVuZGVuY3kgb2YgQ2xvY2sgSUQgZGVmaW5p
dGlvbiBmcm9tIGRldmljZQ0KdHJlZSBhbmQgbWFrZSB1cyBiZSBhYmxlIHRvIHdyaXRlIGEgZnVs
bHkgZ2VuZXJpYyBscGNnIGNsb2NrIGRyaXZlci4NCg0KQW5kIHdlIGNhbiBhbHNvIHVzZSB0aGUg
ZXhpc3RlbmNlIG9mIGNsb2NrIG5vZGVzIGluIGRldmljZSB0cmVlIHRvIGFkZHJlc3MNCnRoZSBk
ZXZpY2UgYW5kIGNsb2NrIGF2YWlsYWJpbGl0eSBkaWZmZXJlbmNlcyBhY3Jvc3MgZGlmZmVyZW50
IFNvQ3MuDQoNCkNjOiBSb2IgSGVycmluZyA8cm9iaCtkdEBrZXJuZWwub3JnPg0KQ2M6IFN0ZXBo
ZW4gQm95ZCA8c2JveWRAa2VybmVsLm9yZz4NCkNjOiBTaGF3biBHdW8gPHNoYXduZ3VvQGtlcm5l
bC5vcmc+DQpDYzogU2FzY2hhIEhhdWVyIDxrZXJuZWxAcGVuZ3V0cm9uaXguZGU+DQpDYzogTWlj
aGFlbCBUdXJxdWV0dGUgPG10dXJxdWV0dGVAYmF5bGlicmUuY29tPg0KQ2M6IGRldmljZXRyZWVA
dmdlci5rZXJuZWwub3JnDQpTaWduZWQtb2ZmLWJ5OiBEb25nIEFpc2hlbmcgPGFpc2hlbmcuZG9u
Z0BueHAuY29tPg0KLS0tDQpDaGFuZ2VMb2c6DQp2MS0+djI6DQogKiBVcGRhdGUgZXhhbXBsZQ0K
ICogQWRkIHBvd2VyIGRvbWFpbiBwcm9wZXJ0eQ0KLS0tDQogLi4uL2RldmljZXRyZWUvYmluZGlu
Z3MvY2xvY2svaW14OHF4cC1scGNnLnR4dCAgICAgfCAzNCArKysrKysrKysrKysrKysrKystLS0t
DQogMSBmaWxlIGNoYW5nZWQsIDI4IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQoNCmRp
ZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvY2xvY2svaW14OHF4
cC1scGNnLnR4dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9jbG9jay9pbXg4
cXhwLWxwY2cudHh0DQppbmRleCA5NjVjZmE0Li42ZmMyZmQ4IDEwMDY0NA0KLS0tIGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2NrL2lteDhxeHAtbHBjZy50eHQNCisrKyBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9jbG9jay9pbXg4cXhwLWxwY2cudHh0
DQpAQCAtMTEsNiArMTEsMjEgQEAgZW5hYmxlZCBieSB0aGVzZSBjb250cm9sIGJpdHMsIGl0IG1p
Z2h0IHN0aWxsIG5vdCBiZSBydW5uaW5nIGJhc2VkDQogb24gdGhlIGJhc2UgcmVzb3VyY2UuDQog
DQogUmVxdWlyZWQgcHJvcGVydGllczoNCistIGNvbXBhdGlibGU6CQlTaG91bGQgYmUgb25lIG9m
Og0KKwkJCSAgImZzbCxpbXg4cXhwLWxwY2ciDQorCQkJICAiZnNsLGlteDhxbS1scGNnIiBmb2xs
b3dlZCBieSAiZnNsLGlteDhxeHAtbHBjZyIuDQorLSByZWc6CQkJQWRkcmVzcyBhbmQgbGVuZ3Ro
IG9mIHRoZSByZWdpc3RlciBzZXQuDQorLSAjY2xvY2stY2VsbHM6CQlTaG91bGQgYmUgMS4gT25l
IExQQ0cgc3VwcG9ydHMgbXVsdGlwbGUgY2xvY2tzLg0KKy0gY2xvY2tzOgkJSW5wdXQgcGFyZW50
IGNsb2NrcyBwaGFuZGxlIGFycmF5IGZvciBlYWNoIGNsb2NrLg0KKy0gYml0LW9mZnNldDoJCUFu
IGludGVnZXIgYXJyYXkgaW5kaWNhdGluZyB0aGUgYml0IG9mZnNldCBmb3IgZWFjaCBjbG9jay4N
CistIGh3LWF1dG9nYXRlOgkJQm9vbGVhbiBhcnJheSBpbmRpY2F0aW5nIHdoZXRoZXIgc3VwcG9y
dHMgSFcgYXV0b2dhdGUgZm9yDQorCQkJZWFjaCBjbG9jay4NCistIGNsb2NrLW91dHB1dC1uYW1l
czoJU2hhbGwgYmUgdGhlIGNvcnJlc3BvbmRpbmcgbmFtZXMgb2YgdGhlIG91dHB1dHMuDQorCQkJ
Tk9URSB0aGlzIHByb3BlcnR5IG11c3QgYmUgc3BlY2lmaWVkIGluIHRoZSBzYW1lIG9yZGVyDQor
CQkJYXMgdGhlIGNsb2NrIGJpdC1vZmZzZXQgYW5kIGh3LWF1dG9nYXRlIHByb3BlcnR5Lg0KKy0g
cG93ZXItZG9tYWluczoJU2hvdWxkIGNvbnRhaW4gdGhlIHBvd2VyIGRvbWFpbiB1c2VkIGJ5IHRo
aXMgY2xvY2suDQorDQorTGVnYWN5IGJpbmRpbmcgKERFUFJFQ0FURUQpOg0KIC0gY29tcGF0aWJs
ZToJU2hvdWxkIGJlIG9uZSBvZjoNCiAJCSAgImZzbCxpbXg4cXhwLWxwY2ctYWRtYSIsDQogCQkg
ICJmc2wsaW14OHF4cC1scGNnLWNvbm4iLA0KQEAgLTMzLDEwICs0OCwxNyBAQCBFeGFtcGxlczoN
CiANCiAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvY2xvY2svaW14OHF4cC1jbG9jay5oPg0KIA0KLWNv
bm5fbHBjZzogY2xvY2stY29udHJvbGxlckA1YjIwMDAwMCB7DQotCWNvbXBhdGlibGUgPSAiZnNs
LGlteDhxeHAtbHBjZy1jb25uIjsNCi0JcmVnID0gPDB4NWIyMDAwMDAgMHhiMDAwMD47DQorc2Ro
YzBfbHBjZzogY2xvY2stY29udHJvbGxlckA1YjIwMDAwMCB7DQorCWNvbXBhdGlibGUgPSAiZnNs
LGlteDhxeHAtbHBjZyI7DQorCXJlZyA9IDwweDViMjAwMDAwIDB4MTAwMDA+Ow0KIAkjY2xvY2st
Y2VsbHMgPSA8MT47DQorCWNsb2NrcyA9IDwmc2RoYzBfY2xrIElNWF9TQ19QTV9DTEtfUEVSPiwN
CisJCSA8JmNvbm5faXBnX2Nsaz4sIDwmY29ubl9heGlfY2xrPjsNCisJYml0LW9mZnNldCA9IDww
IDE2IDIwPjsNCisJY2xvY2stb3V0cHV0LW5hbWVzID0gInNkaGMwX2xwY2dfcGVyX2NsayIsDQor
CQkJICAgICAic2RoYzBfbHBjZ19pcGdfY2xrIiwNCisJCQkgICAgICJzZGhjMF9scGNnX2FoYl9j
bGsiOw0KKwlwb3dlci1kb21haW5zID0gPCZwZCBJTVhfU0NfUl9TREhDXzA+Ow0KIH07DQogDQog
dXNkaGMxOiBtbWNANWIwMTAwMDAgew0KQEAgLTQ0LDggKzY2LDggQEAgdXNkaGMxOiBtbWNANWIw
MTAwMDAgew0KIAlpbnRlcnJ1cHQtcGFyZW50ID0gPCZnaWM+Ow0KIAlpbnRlcnJ1cHRzID0gPEdJ
Q19TUEkgMjMyIElSUV9UWVBFX0xFVkVMX0hJR0g+Ow0KIAlyZWcgPSA8MHg1YjAxMDAwMCAweDEw
MDAwPjsNCi0JY2xvY2tzID0gPCZjb25uX2xwY2cgSU1YOFFYUF9DT05OX0xQQ0dfU0RIQzBfSVBH
X0NMSz4sDQotCQkgPCZjb25uX2xwY2cgSU1YOFFYUF9DT05OX0xQQ0dfU0RIQzBfUEVSX0NMSz4s
DQotCQkgPCZjb25uX2xwY2cgSU1YOFFYUF9DT05OX0xQQ0dfU0RIQzBfSENMSz47DQorCWNsb2Nr
cyA9IDwmc2RoYzBfbHBjZyAxPiwNCisJCSA8JnNkaGMwX2xwY2cgMD4sDQorCQkgPCZzZGhjMF9s
cGNnIDI+Ow0KIAljbG9jay1uYW1lcyA9ICJpcGciLCAicGVyIiwgImFoYiI7DQogfTsNCi0tIA0K
Mi43LjQNCg0K

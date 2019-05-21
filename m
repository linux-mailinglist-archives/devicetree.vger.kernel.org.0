Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BC4962525D
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 16:43:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727999AbfEUOnC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 May 2019 10:43:02 -0400
Received: from mail-eopbgr10066.outbound.protection.outlook.com ([40.107.1.66]:36141
        "EHLO EUR02-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1727534AbfEUOnC (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 21 May 2019 10:43:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bAe9D7hevjHlYHPyoDMgrvMn9mfWUeel6DvzUcwfE18=;
 b=F4YwiU3QF3zbomZfR9IY+vjKBxtNsWaln1n3TkehQUE9p+SQGgnNBnYpkKkpGXYsRzW+5GS91sYZjU56Xt1usyX92gaAk9tFBYaxeOAyRJC3bVxEuegq1WzDP6IDLZHLMuQ1jfbgx4YDtCnOVQjULmUjtGFDZkjPYcE6Hf6Ff2E=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3930.eurprd04.prod.outlook.com (52.134.71.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.15; Tue, 21 May 2019 14:42:58 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1900.020; Tue, 21 May 2019
 14:42:58 +0000
From:   Anson Huang <anson.huang@nxp.com>
To:     Marc Gonzalez <marc.w.gonzalez@free.fr>,
        Leonard Crestez <leonard.crestez@nxp.com>
CC:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        DT <devicetree@vger.kernel.org>
Subject: RE: [PATCH V4 1/2] soc: imx: Add SCU SoC info driver support
Thread-Topic: [PATCH V4 1/2] soc: imx: Add SCU SoC info driver support
Thread-Index: AQHVDHRAx0Mm9bAN6USp/nK7XaFMrKZ1igmAgAAjXCA=
Date:   Tue, 21 May 2019 14:42:58 +0000
Message-ID: <DB3PR0402MB3916EED0DD292956887E839DF5070@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1558071840-841-1-git-send-email-Anson.Huang@nxp.com>
 <AM0PR04MB6434643CA1A6807347DCAAF8EE070@AM0PR04MB6434.eurprd04.prod.outlook.com>
 <61fb2d82-67e7-ab2d-961e-78d018cf3272@free.fr>
In-Reply-To: <61fb2d82-67e7-ab2d-961e-78d018cf3272@free.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b6168bb3-4ffe-44e2-deec-08d6ddfa9e27
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);SRVR:DB3PR0402MB3930;
x-ms-traffictypediagnostic: DB3PR0402MB3930:
x-microsoft-antispam-prvs: <DB3PR0402MB39303DD3C926656395D9CC79F5070@DB3PR0402MB3930.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:883;
x-forefront-prvs: 0044C17179
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(376002)(396003)(346002)(39860400002)(366004)(136003)(13464003)(199004)(189003)(66946007)(76176011)(66446008)(73956011)(26005)(66556008)(64756008)(110136005)(316002)(76116006)(6636002)(66476007)(55016002)(229853002)(44832011)(14444005)(256004)(9686003)(68736007)(2906002)(99286004)(54906003)(11346002)(6506007)(476003)(14454004)(53546011)(446003)(7696005)(6436002)(186003)(71190400001)(6116002)(71200400001)(4326008)(3846002)(478600001)(53936002)(102836004)(86362001)(52536014)(74316002)(8936002)(305945005)(7736002)(33656002)(66066001)(8676002)(5660300002)(81166006)(81156014)(6246003)(25786009)(486006)(15866825006);DIR:OUT;SFP:1101;SCL:1;SRVR:DB3PR0402MB3930;H:DB3PR0402MB3916.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Jon27ZC59QlF8oPWc1tstJgF1BSiCVvz7GSJzcHaVXeL8TRz7DD0doPdsNk+i32bj0X2xemqtgs7elrUm5/XsvlmG/vaTRjtxQyl5pwvQT009JNz+Jar5RZEy/KxKYCPaARwm+47JV33u0JxXUn9VBe43tJ5wzRsvimA1TLDcsmivn9Ff3ZbBg7wmoeqQFk0Wti/RqLv9DOhs5n8/781+4qWolZJGYuh85zLaaH7WGnvbJyiYM6ABiuII9Xa+WwZEkeu85Tg/G6DO1br5ERDplPAzi7L9LxLG502zM9oXgk44LgCN7kFbyaU8U/u1CHm2Gh9Qyc0FYFCOj8k7Zt+YYlvBWOh1zSOQuQH1V1WCtjiSAuH8Swc5w/9hgP5wKtntooNn4nytzs2w6+hSuz8LXd8Pc+xc5/yXNFsCBX4nPU=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6168bb3-4ffe-44e2-deec-08d6ddfa9e27
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2019 14:42:58.3230
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3930
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SGksIE1hcmMvTGVvbmFyZA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206
IE1hcmMgR29uemFsZXogW21haWx0bzptYXJjLncuZ29uemFsZXpAZnJlZS5mcl0NCj4gU2VudDog
VHVlc2RheSwgTWF5IDIxLCAyMDE5IDg6MzQgUE0NCj4gVG86IExlb25hcmQgQ3Jlc3RleiA8bGVv
bmFyZC5jcmVzdGV6QG54cC5jb20+OyBBbnNvbiBIdWFuZw0KPiA8YW5zb24uaHVhbmdAbnhwLmNv
bT4NCj4gQ2M6IE1hcmsgUnV0bGFuZCA8bWFyay5ydXRsYW5kQGFybS5jb20+OyBSb2IgSGVycmlu
Zw0KPiA8cm9iaCtkdEBrZXJuZWwub3JnPjsgTGludXggQVJNIDxsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmc+Ow0KPiBEVCA8ZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc+DQo+
IFN1YmplY3Q6IFJlOiBbUEFUQ0ggVjQgMS8yXSBzb2M6IGlteDogQWRkIFNDVSBTb0MgaW5mbyBk
cml2ZXIgc3VwcG9ydA0KPiANCj4gT24gMjEvMDUvMjAxOSAxMzo1NiwgTGVvbmFyZCBDcmVzdGV6
IHdyb3RlOg0KPiANCj4gPiBPbiA1LzE3LzIwMTkgODo0OSBBTSwgQW5zb24gSHVhbmcgd3JvdGU6
DQo+ID4NCj4gPj4gKwlyb290ID0gb2ZfZmluZF9ub2RlX2J5X3BhdGgoIi8iKTsNCj4gPj4gKw0K
PiA+PiArCW5wID0gb2ZfZmluZF9jb21wYXRpYmxlX25vZGUoTlVMTCwgTlVMTCwgImZzbCxpbXgt
c2N1Iik7DQo+ID4NCj4gPiBJdCdzIHBvc3NpYmx5IG5vdCB2ZXJ5IGltcG9ydGFudCBmb3Igcm9v
dCBvciBGVyBjb21tdW5pY2F0aW9uIG5vZGVzDQo+ID4gYnV0IHlvdSBzaG91bGQgcHJvYmFibHkg
b2Zfbm9kZV9wdXQgdGhvc2UgYmFjay4NCj4gDQo+IElzbid0IGl0IGJldHRlci9zaW1wbGVyIHRv
IHVzZSBvZl9yb290Pw0KPiANCj4gZXh0ZXJuIHN0cnVjdCBkZXZpY2Vfbm9kZSAqb2Zfcm9vdDsN
Cg0KWW91IGFyZSByaWdodCwgSSB3aWxsIGFkZCBiZWxvdyBjaGFuZ2VzIGludG8gVjUsIG9uZSBj
aGFuZ2UgaXMgdG8gdXNlIGV4dGVybiBvZl9yb290DQpkaXJlY3RseSwgdGhlIG90aGVyIGlzIHRv
IGFkZCBvZl9wdXRfbm9kZSgpIGFmdGVyICJmc2wsaW14LXNjdSIgaXMgZm91bmQuDQoNCkBAIC01
Niw3ICs1Niw2IEBAIHN0YXRpYyBpbnQgaW14X3NjdV9zb2NfcHJvYmUoc3RydWN0IHBsYXRmb3Jt
X2RldmljZSAqcGRldikNCiB7DQogICAgICAgIHN0cnVjdCBzb2NfZGV2aWNlX2F0dHJpYnV0ZSAq
c29jX2Rldl9hdHRyOw0KICAgICAgICBzdHJ1Y3Qgc29jX2RldmljZSAqc29jX2RldjsNCi0gICAg
ICAgc3RydWN0IGRldmljZV9ub2RlICpyb290Ow0KICAgICAgICB1MzIgaWQsIHZhbDsNCiAgICAg
ICAgaW50IHJldDsNCg0KQEAgLTcyLDggKzcxLDcgQEAgc3RhdGljIGludCBpbXhfc2N1X3NvY19w
cm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQ0KDQogICAgICAgIHNvY19kZXZfYXR0
ci0+ZmFtaWx5ID0gIkZyZWVzY2FsZSBpLk1YIjsNCg0KLSAgICAgICByb290ID0gb2ZfZmluZF9u
b2RlX2J5X3BhdGgoIi8iKTsNCi0gICAgICAgcmV0ID0gb2ZfcHJvcGVydHlfcmVhZF9zdHJpbmco
cm9vdCwNCisgICAgICAgcmV0ID0gb2ZfcHJvcGVydHlfcmVhZF9zdHJpbmcob2Zfcm9vdCwNCiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIm1vZGVsIiwNCiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgJnNvY19kZXZfYXR0ci0+bWFjaGluZSk7DQogICAg
ICAgIGlmIChyZXQpDQpAQCAtMTMyLDYgKzEzMCw4IEBAIHN0YXRpYyBpbnQgX19pbml0IGlteF9z
Y3Vfc29jX2luaXQodm9pZCkNCiAgICAgICAgaWYgKCFucCkNCiAgICAgICAgICAgICAgICByZXR1
cm4gLUVOT0RFVjsNCg0KKyAgICAgICBvZl9ub2RlX3B1dChucCk7DQorDQogICAgICAgIHJldCA9
IHBsYXRmb3JtX2RyaXZlcl9yZWdpc3RlcigmaW14X3NjdV9zb2NfZHJpdmVyKTsNCiAgICAgICAg
aWYgKHJldCkNCiAgICAgICAgICAgICAgICByZXR1cm4gcmV0Ow0KDQp0aGFua3MsDQpBbnNvbg0K
DQo+IA0KPiBSZWdhcmRzLg0K

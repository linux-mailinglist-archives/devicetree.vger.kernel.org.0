Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 82B35288095
	for <lists+devicetree@lfdr.de>; Fri,  9 Oct 2020 05:00:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730102AbgJIDAj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Oct 2020 23:00:39 -0400
Received: from mail-vi1eur05on2076.outbound.protection.outlook.com ([40.107.21.76]:51968
        "EHLO EUR05-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1728854AbgJIDAj (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 8 Oct 2020 23:00:39 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NJhY/QekA9eEATnmqugbZQpXtb0l8r4JW4T5Tqzc9zgoYn86SCIlADrhSFmpUk9y+gzMNJl4WADp4fa1iuC6LWJXBH+gtTvkx3VKjbDQnG5HfGtIgiRc7EtkTShm9JU583xoAdkaSWYu4oEbbcbmmByOR/UXXbIB7c/SgMSrQKx/ykxboRqzoDBhZTvSSi+UwHCWGI+R5nPS4SpynW9jrxIR54g5jf49J8gXZUnkvh82ATaTK7D67GxBeucu0bMbn9/VJVHQBl6eQyiSs8aGs1SB0o2ET/2zWoEaUmhpX7/f8yfMcy7K/Dg7gdWJv1EpZz6kxrkZk/aH40v5ZXKN5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FhHJZkfGrZGpe1j1NUjV+VvffZ55csx0R1RxRdzy1YA=;
 b=WLiiW6c5O/jbc14y7EOR0JeIl6o5dc5jI5IAhFfVo3zfvN4Luwgw1d+KBYcAysKj3fGA+pEAwNH0zoG2XMI62WNNUmXJbJotswd0kE+xj9JrwL9L3fOplOqPv1Q5ulRYJunLiA8emQmoeXF9F22IZHidrMWYHlRmNydFgn+cZxHzgx98owpG+dosTWmFkJkvwkUWRoKvwQwETGFkvCzE8AayUqnFkp3H1RiAVIC1dnjLX0z3UFhbBcs2ZUuUTEXlA15tsUkwUpINDhWFarOUlLyekS6QK0tO7xBpK/94C5L2FxVrZzXQGd6ZoJ36BJImYV0kP9MW1S8QPNtAMV2nwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FhHJZkfGrZGpe1j1NUjV+VvffZ55csx0R1RxRdzy1YA=;
 b=SK11dS8MeAZr83QhiU3tltNtHI3P3D/qj8ye3XRIlbZ/SncwsTRoM5UzxOCIEupP3kkwbLB/iebQH4A1/uZ0iTWJViYSpYcr7+1a5pZc+jEKg3TxVyN41icfNDIwuYNj9wS6bMIBvyiIqxo+/sFetgMMaqtNCqI8s7hbW5/Xa8Q=
Received: from AM0PR04MB4915.eurprd04.prod.outlook.com (2603:10a6:208:c5::20)
 by AM0PR0402MB3508.eurprd04.prod.outlook.com (2603:10a6:208:1b::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.26; Fri, 9 Oct
 2020 03:00:35 +0000
Received: from AM0PR04MB4915.eurprd04.prod.outlook.com
 ([fe80::8de5:80f:f11a:5fa3]) by AM0PR04MB4915.eurprd04.prod.outlook.com
 ([fe80::8de5:80f:f11a:5fa3%7]) with mapi id 15.20.3455.024; Fri, 9 Oct 2020
 03:00:35 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     Lucas Stach <l.stach@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
CC:     dl-linux-imx <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Marek Vasut <marex@denx.de>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "patchwork-lst@pengutronix.de" <patchwork-lst@pengutronix.de>
Subject: RE: [PATCH 00/11] i.MX8MM power domain support
Thread-Topic: [PATCH 00/11] i.MX8MM power domain support
Thread-Index: AQHWl0FkTzBVb3KnEk2aqvMQdW3DvKmOnJmA
Date:   Fri, 9 Oct 2020 03:00:34 +0000
Message-ID: <AM0PR04MB4915267F67FFEA311E9B79F087080@AM0PR04MB4915.eurprd04.prod.outlook.com>
References: <20200930155006.535712-1-l.stach@pengutronix.de>
In-Reply-To: <20200930155006.535712-1-l.stach@pengutronix.de>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: da7d8f7a-e6a4-4336-efb6-08d86bff7e42
x-ms-traffictypediagnostic: AM0PR0402MB3508:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR0402MB3508B2862202D1B23503C44887080@AM0PR0402MB3508.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: X2f9hYjEamjicfQ1pPV16OISUEa8ynyp3BrATHmVZAw2ydoogQLu8pwF1rtT40IZ4h9XZbVTwMieu+vB5ujxXElLgom6ulEn9mLhejntEwiajCOapjLGylBhsaOPtdpDzsAiMZatKrz1BwVNUnVoyuEJFdg3ojYhP2YdPiNjMcdkS6sMhp5wqzFPN/9WPm5Y2H7Kp/qo5WYSYxlQkqxyVwBBHleFS24cxKdSA6Ubu2GCd8Xr9YKRyH8xysJjl1Lmtd+SonvXhpGK7VqDoqZvJU8nc9zJKVFhHLDcw1O44JC/wPu1hWtnI5M+ciB8lJpSO5l8uiXtBHFcjrNIeAwsUw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB4915.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(366004)(39860400002)(376002)(346002)(136003)(2906002)(9686003)(76116006)(110136005)(83380400001)(316002)(7696005)(66946007)(66476007)(66446008)(478600001)(64756008)(8936002)(66556008)(8676002)(55016002)(71200400001)(26005)(54906003)(33656002)(186003)(4326008)(7416002)(6506007)(53546011)(52536014)(5660300002)(86362001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: Xmax0ZbuqNaKSYdbuRmMKHYv2ajPdwmVm2geSVyzq2XXsR88+C8jld3WMlWHMn//8PA9IbfXS4Sw8Nct1gOxlhPGsIfbehdkauP29FqXMgTcQrUXfMKwF922EdAbjEvqc+f3czZ37ZxQXR5eC0KFcHRivtQfDJM5ROcmepVDUxN9guhx7qrFfkyOMZXccb9DUtGuoH4t+W2UvDEw44LMfDE/dwuadO/tK0nlzec1ePdsC4sFibIC+gw6IXZUxoCrySa1Kgnyd1ZtnysC86sqM8txmk7+2+a36Onlpwk3EfaMIkg5D/j1nOXJNSLknlaYHE/lXbPf3Z9+0cE5ZNXoBOFsA7Df44B328GLMtNVfuLqGvRhE3gGbAUTouC/ypU+ssiIDt5s37LDS3KkfcWfNHgqrXWQlELozed/J5hBv/wQRpFuyM0VzK9XWAOUo3AMATbhaN5l0FwPAIdbsHzqh/1QXMO8GLwnuLnzjP+AxHwbrUJP0TNHj+e2pazS8Za2Kuilqe8Rsxshe6fbhyytYBfzBizdCobU50omaAL6a7fP+nDIcPeXkGJ/rV5JEQSou/F/jqbU/XlPpj3L+B+9zSjxO0CsqBOZxCFDl6zP5DdzxFBFbnus9Sl1/9cRDoJCubvGdXRFuOLTc+bnwxyvFw==
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB4915.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da7d8f7a-e6a4-4336-efb6-08d86bff7e42
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2020 03:00:35.0574
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0c5G2548mFtjxhBxxbYksY2EGlB54Rjfo5MFp+iTFjsWrxUsj6ZRoTaCVwVhDsqJej83IKwCv+wujV3D8z/3UQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0402MB3508
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBMdWNhcyBTdGFjaCBbbWFpbHRv
Omwuc3RhY2hAcGVuZ3V0cm9uaXguZGVdDQo+IFNlbnQ6IFdlZG5lc2RheSwgU2VwdGVtYmVyIDMw
LCAyMDIwIDExOjUwIFBNDQo+IFRvOiBTaGF3biBHdW8gPHNoYXduZ3VvQGtlcm5lbC5vcmc+OyBS
b2IgSGVycmluZyA8cm9iaCtkdEBrZXJuZWwub3JnPg0KPiBDYzogZGwtbGludXgtaW14IDxsaW51
eC1pbXhAbnhwLmNvbT47IEZhYmlvIEVzdGV2YW0NCj4gPGZlc3RldmFtQGdtYWlsLmNvbT47IEZy
aWVkZXIgU2NocmVtcGYgPGZyaWVkZXIuc2NocmVtcGZAa29udHJvbi5kZT47DQo+IE1hcmVrIFZh
c3V0IDxtYXJleEBkZW54LmRlPjsgbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Ow0KPiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsga2VybmVsQHBlbmd1dHJvbml4LmRlOw0K
PiBwYXRjaHdvcmstbHN0QHBlbmd1dHJvbml4LmRlDQo+IFN1YmplY3Q6IFtQQVRDSCAwMC8xMV0g
aS5NWDhNTSBwb3dlciBkb21haW4gc3VwcG9ydA0KPiANCj4gSGkgYWxsLA0KPiANCj4gdGhpcyBh
ZGRzIHBvd2VyIGRvbWFpbiBzdXBwb3J0IGZvciB0aGUgaS5NWDhNTSB0byB0aGUgZXhpc3Rpbmcg
R1BDdjIgZHJpdmVyLg0KPiBJdCBpcyBub3QgY29tcGxldGUgeWV0LCBhcyBpdCBpcyBzdGlsbCBt
aXNzaW5nIHRoZSBWUFUgYW5kIGRpc3BsYXkgcG93ZXIgZG9tYWlucywNCj4gYXMgdGhvc2UgcmVx
dWlyZSBzdXBwb3J0IGZvciB0aGUgQkxLX0NUTCByZWdpb25zIG9mIHRoZSBWUFVNSVggYW5kDQo+
IERJU1BMQVlNSVggZG9tYWlucy4gQSBMaW51eCBkcml2ZXIgZm9yIHRob3NlIHJlZ2lvbnMgb24g
dGhlIGkuTVg4TVAgaXMNCj4gY3VycmVudGx5IHVuZGVyIGRldmVsb3BtZW50IGFuZCB3ZSBwbGFu
IHRvIHVzZSB0aGlzIGFzIGEgdGVtcGxhdGUgZm9yIHRoZQ0KPiBpLk1YOE1NIHdoZW4gdGhlIGR1
c3QgaGFzIHNldHRsZWQuIFRoZSBjaGFuZ2VzIGluIHRoaXMgc2VyaWVzIGhhdmUgYmVlbg0KPiBt
YWRlIHdpdGggdGhpcyBpbiBtaW5kLCBzbyBvbmNlIHRoZSBCTEtfQ1RMIGRyaXZlciBleGlzdHMg
aXQgc2hvdWxkIGJlIGENCj4gbWF0dGVyIG9mIGhvb2tpbmcgdGhpbmdzIHRvZ2V0aGVyIHZpYSBE
VCwgd2l0aCBubyBmdXJ0aGVyIGNoYW5nZXMgcmVxdWlyZWQgb24NCj4gdGhlIEdQQ3YyIGRyaXZl
ciBzaWRlIChmYW1vdXMgbGFzdCB3b3JkcykuDQo+IA0KPiBTcGVjaWFsIHRoYW5rcyB0byBNYXJl
ayBWYXN1dCB3aG8gaGVscGVkIHdpdGggdGVzdGluZyBhbmQgZGVidWdnaW5nIG9mIGVhcmx5DQo+
IHZlcnNpb25zIG9mIHRoaXMgY29kZS4NCj4gDQoNCkx1Y2FzLA0KDQp0aGFua3MgZm9yIHdvcmtp
bmcgb24gdGhpcywgYnV0IEkgdGhpbmsgY3VycmVudCBzdXBwb3J0IGZvciA4TU0gY2FuIE5PVCAx
MDAlIHdvcmsgZHVlIHRvIEhXIGxpbWl0YXRpb24uDQpNYXliZSwgd2UgbmVlZCBmdXJ0aGVyIGRp
c2N1c3Npb24gYmVmb3JlIG1vdmluZyBmb3J3YXJkLCBvdGhlcndpc2UsIHdlIHdpbGwgbWVldCBh
d2t3YXJkIHNpdHVhdGlvbiB3aGVuIE5YUA0KZG9pbmcgTFRTIHVwZ3JhZGUuIEJlbG93IGFyZSBz
b21lIGluZm8gc2hhcmVkLg0KDQoxLiBUaGUgR1BVICYgVlBVIHJlbGF0ZWQgcG93ZXIgZG9tYWlu
cyBuZWVkIHRvIGRvIHNwZWNpYWwgaGFuZGxpbmcgZHVlIHRvIEhXIGxpbWl0YXRpb24sIGNhbiBy
ZWZlciB0byB0aGUgcG93ZXIgZG9tYWluIHNlcXVlbmNlDQogIEluIE5YUCByZWxlYXNlLg0KMi4g
YW5vdGhlciByZWFzb24gdGhhdCB3ZSBkbyBwb3dlciBkb21haW4gY29udHJvbCBpbiBURi1BIGlu
IE5YUCByZWxlYXNlIGlzIHRoYXQgTUFJTiBOT0MgcG93ZXIgZG9tYWluIGNhbiBvbmx5IGJlIGNv
bnRyb2xsZWQgYnkNCiAgVEYtQSwgYW5kIGJlZm9yZSBNQUlOIE5PQyBwb3dlciBkb21haW4sIHdl
IG5lZWQgdG8gY2hlY2sgb3RoZXIgTUlYcycgcG93ZXIgc3RhdHVzLiBJZiBvdGhlciBwb3dlciBk
b21haW4gaXMgY29udHJvbGxlZCBieSBsaW51eCBzaWRlLA0KICBJdCBpcyBub3QgZWFzeSB0byBj
cm9zcyB3b3JsZCBzdGF0dXMgc3luYy4NCjMuIGVpdGhlciA4TU0sIDhNTiwgb3IgOE1QLCB0aGUg
cG93ZXIgZG9tYWluIGRlc2lnbiBpcyBkaWZmZXJlbnQsIEkgYW0gbm90IHN1cmUgaWYgaXQgaXMg
dGhlIGdvb2QgdG8gYWRkIGh1bmRyZWRzIGxpbmUgb2YgY29kZSBpbiBHUEN2MiBlYWNoIHRpbWUN
CiAgYSBuZXcgU09DIGlzIGFkZGVkLg0KDQpCUg0KSmFja3kgQmFpDQoNCj4gUmVnYXJkcywNCj4g
THVjYXMNCj4gDQo+IEx1Y2FzIFN0YWNoICgxMSk6DQo+ICAgc29jOiBpbXg6IGdwY3YyOiBtb3Zl
IHRvIG1vcmUgaWRlb21hdGljIGVycm9yIGhhbmRsaW5nIGluIHByb2JlDQo+ICAgc29jOiBpbXg6
IGdwY3YyOiBtb3ZlIGRvbWFpbiBtYXBwaW5nIHRvIGRvbWFpbiBkcml2ZXIgcHJvYmUNCj4gICBz
b2M6IGlteDogZ3BjdjI6IHNwbGl0IHBvd2VyIHVwIGFuZCBwb3dlciBkb3duIHNlcXVlbmNlIGNv
bnRyb2wNCj4gICBzb2M6IGlteDogZ3BjdjI6IHdhaXQgZm9yIEFEQjQwMCBoYW5kc2hha2UNCj4g
ICBzb2M6IGlteDogZ3BjdjI6IGFkZCBydW50aW1lIFBNIHN1cHBvcnQgZm9yIHBvd2VyLWRvbWFp
bnMNCj4gICBzb2M6IGlteDogZ3BjdjI6IGFsbG93IGRvbWFpbnMgd2l0aG91dCBwb3dlci1zZXF1
ZW5jZSBjb250cm9sDQo+ICAgc29jOiBpbXg6IGdwY3YyOiBhZGQgc3VwcG9ydCBmb3Igb3B0aW9u
YWwgcmVzZXRzDQo+ICAgZHQtYmluZGluZ3M6IGFkZCBkZWZpbmVzIGZvciBpLk1YOE1NIHBvd2Vy
IGRvbWFpbnMNCj4gICBzb2M6IGlteDogZ3BjdjI6IGFkZCBzdXBwb3J0IGZvciBpLk1YOE1NIHBv
d2VyIGRvbWFpbnMNCj4gICBhcm02NDogZHRzOiBpbXg4bW06IGFkZCBHUEMgbm9kZSBhbmQgcG93
ZXIgZG9tYWlucw0KPiAgIGFybTY0OiBkdHM6IGlteDhtbTogcHV0IFVTQiBjb250cm9sbGVycyBp
bnRvIHBvd2VyLWRvbWFpbnMNCj4gDQo+ICAuLi4vYmluZGluZ3MvcG93ZXIvZnNsLGlteC1ncGN2
Mi55YW1sICAgICAgICAgfCAgIDggKw0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUv
aW14OG1tLmR0c2kgICAgIHwgIDU5ICsrKw0KPiAgZHJpdmVycy9zb2MvaW14L2dwY3YyLmMgICAg
ICAgICAgICAgICAgICAgICAgIHwgNTAxDQo+ICsrKysrKysrKysrKysrKy0tLQ0KPiAgaW5jbHVk
ZS9kdC1iaW5kaW5ncy9wb3dlci9pbXg4bW0tcG93ZXIuaCAgICAgIHwgIDIyICsNCj4gIDQgZmls
ZXMgY2hhbmdlZCwgNTE2IGluc2VydGlvbnMoKyksIDc0IGRlbGV0aW9ucygtKSAgY3JlYXRlIG1v
ZGUgMTAwNjQ0DQo+IGluY2x1ZGUvZHQtYmluZGluZ3MvcG93ZXIvaW14OG1tLXBvd2VyLmgNCj4g
DQo+IC0tDQo+IDIuMjAuMQ0KDQo=

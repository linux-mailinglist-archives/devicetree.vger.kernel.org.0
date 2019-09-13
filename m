Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EE0BEB244B
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2019 18:44:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728666AbfIMQnr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Sep 2019 12:43:47 -0400
Received: from mail-eopbgr50080.outbound.protection.outlook.com ([40.107.5.80]:1671
        "EHLO EUR03-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1725777AbfIMQnq (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 13 Sep 2019 12:43:46 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RCJ0XxoAuDKZsGCH4d8Ui+0vATILCTg2ho2l/SqXodxxBu0crDPEXhFVdX5cA5tSHtEKd3XjgOGSx27p6e1L5XFwI89KTF+3zUlzmeJmHM0dx8BQ6tYHUvaubktCvR65rsvEVQdkg0a3DehA+Xif7z1z4ajH7XLdP+of53ig2ZfwVk7GfEQyKVVcJh3iW8C+lIYSiu9NvPx4+LMhbL6NmP8nL7gI9+rnAZi9x93DrTgH+n2aTsakf8SI2l/db0x28U6ef7lzm2ShALa3FcOgKl76gHqabrz52OKVwcGoOBwU5YP7lkl5enQZkZqtM0Fo7f83IyejgCuoMs8rX3NBAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y94NUq3+pXhhVAFZQB3GhRduKnenwZemOn3W6V36pIs=;
 b=TEdwlx+qwUAAFtXILtGzqbJL4v1c3HZoMz2aPPERIkYxzCnisnw8GvhRCaP3MPTv3+N4MijdP9n8SEIWYbuO6XHijF8c7a6K46a1l093vZFbvQHx+7kabRZnvryQOmyohb1u4SExIJ2xrk5nsKyjOrrgveeN4nsFAYL3blm/0iCpFgfdT6mP67rvva3CVWyaOQ8nUfqy2NQHqVku6lC6dTrg7EuH36iZ6/mLmv6uhKDG8+KFcXizGan8FzkPsRlScKyMYhdJxK0tLAoOp1TCnvLa50im3l0hrzCUYVfoZZlToJJaq3dEuRfhqNb2sGjeOJ7FZOYffZXl2RG1fXAhyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y94NUq3+pXhhVAFZQB3GhRduKnenwZemOn3W6V36pIs=;
 b=dVw/238Qei6xoPkC2S1YczktmmTBxa5mzNQmACBTOMDmSdBJw856DnRA7lFbgJqpWhn6JwxtWiTDm2dVFJz/byzJHHBYYcgsDNYIfro/9QgJ5IERu7OOr7O7K4GL1prOZq264ZmJD46UaiG8gyAYXeivXXOEoaO2jhfbneVA0cU=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB4372.eurprd04.prod.outlook.com (52.135.149.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.18; Fri, 13 Sep 2019 16:43:38 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::44b4:2932:8e73:d707]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::44b4:2932:8e73:d707%7]) with mapi id 15.20.2263.021; Fri, 13 Sep 2019
 16:43:38 +0000
From:   Aisheng Dong <aisheng.dong@nxp.com>
To:     Oliver Graute <oliver.graute@gmail.com>
CC:     "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "dongas86@gmail.com" <dongas86@gmail.com>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        Fabio Estevam <fabio.estevam@nxp.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
        "will.deacon@arm.com" <will.deacon@arm.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        dl-linux-imx <linux-imx@nxp.com>
Subject: RE: [PATCH V3 00/15] arm64: dts: imx8: architecture improvement and
 adding imx8qm support
Thread-Topic: [PATCH V3 00/15] arm64: dts: imx8: architecture improvement and
 adding imx8qm support
Thread-Index: AQHVaX89Q12GIVUt40ahO+NXfkEyIKcphw0AgABIqUA=
Date:   Fri, 13 Sep 2019 16:43:38 +0000
Message-ID: <AM0PR04MB42117BD6A60E4FEA1456954080B30@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <1568302252-28066-1-git-send-email-aisheng.dong@nxp.com>
 <20190913121608.GD16292@optiplex>
In-Reply-To: <20190913121608.GD16292@optiplex>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [180.172.160.231]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 89aa38b6-5617-4ac5-0cdf-08d738698730
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);SRVR:AM0PR04MB4372;
x-ms-traffictypediagnostic: AM0PR04MB4372:|AM0PR04MB4372:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4372FCC02589F14FD90C952780B30@AM0PR04MB4372.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:935;
x-forefront-prvs: 0159AC2B97
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(39860400002)(376002)(396003)(346002)(366004)(136003)(189003)(199004)(476003)(55016002)(2906002)(316002)(11346002)(66446008)(64756008)(486006)(6306002)(66556008)(66476007)(4326008)(8936002)(446003)(102836004)(66946007)(7696005)(9686003)(54906003)(76116006)(6246003)(81156014)(8676002)(81166006)(6436002)(44832011)(53546011)(6506007)(71190400001)(76176011)(71200400001)(7736002)(25786009)(26005)(33656002)(53936002)(99286004)(186003)(305945005)(52536014)(966005)(86362001)(74316002)(256004)(14444005)(5024004)(6116002)(3846002)(229853002)(66066001)(14454004)(5660300002)(6916009)(478600001)(45080400002)(32563001);DIR:OUT;SFP:1101;SCL:1;SRVR:AM0PR04MB4372;H:AM0PR04MB4211.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: pCkqUa6DrAMEUe135bP0OQlpqTqjm6UrW9/r5zb0hlb9WsUDX9XkJ/epjOiiUkE7CBCkBB20bwnR9fw2G0Vr+A1ZKsQmPEMc6D6phj23uQlEGoZnk3U9zg6jXjY2joRMmCyZtkfMK/QHT/8ddvqRTW0q6A5+WvkzPXTKb6RGANjxJWnz4LS70V4+c+ui/xB0/Gnhtjfutt5UY1wXMS3yDghq3swAvXtZx0DZqjXK7p8cEM37YeohagMZIUDTz8w8f3ilvmVjVB+5+Vf/xGx+riOL9I/zvfK8PYW5YgY6RFImlzSD5jd71eCu1ipM+GxydTEPct3CT6o0MJ1NHWK21jar79d89L1GLSjWBC3PmG+qJiHIp16JcqguNbYdyOpU1GnJXDfGVyLruNzaxrvVdDrVCn/sWfv767Vng13krWc=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 89aa38b6-5617-4ac5-0cdf-08d738698730
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2019 16:43:38.5879
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t+G0YzPfOiPBqDYN2f1CVYr3ihfkxl7IVqasoRsM1uavwphnY5wUf9gIIFB8m3wrYH/cGY59YboJ9drsryQ1+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4372
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

PiBGcm9tOiBPbGl2ZXIgR3JhdXRlIDxvbGl2ZXIuZ3JhdXRlQGdtYWlsLmNvbT4NCj4gU2VudDog
RnJpZGF5LCBTZXB0ZW1iZXIgMTMsIDIwMTkgODoxNiBQTQ0KPiANCj4gT24gMTIvMDkvMTksIERv
bmcgQWlzaGVuZyB3cm90ZToNCj4gPiBJTVggU0NVIGJhc2VkIHBsYXRmb3JtcyAoZS5nLiBNWDhR
TS9NWDhRWFApIGFyZSBjb21wcmlzZWQgb2YgYQ0KPiBudW1iZXINCj4gPiBvZiBTUyAoU3Vic3lz
dGVtcyksIHRob3NlIFNTIG1heSBiZSBzaGFyZWQgYmV0d2VlbiBkaWZmZXJlbnQgU29Dcw0KPiA+
IHdoaWxlIG1vc3Qgb2YgdGhlbSBjYW4gYmUgcmV1c2VkIGxpa2UgRGV2aWNlcyBSZXNvdXJjZXMs
IENsb2NrcywgUG93ZXINCj4gZG9tYWlucyBhbmQgZXRjLg0KPiA+DQo+ID4gVGhpcyBwYXRjaCBz
ZXJpZXMgYWltcyB0byBpbXByb3ZlIHRoZSBNWDggYXJjaGl0ZWN0dXJlIHRvIGNvbXBseSB3aXRo
DQo+ID4gdGhlIEhXIGRlc2lnbiB0byBzYXZlIGEgbG90IG9mIGR1cGxpY2F0ZWQgY29kZXMgYW5k
IGJlbmVmaXRzIHVzIGENCj4gPiBiZXR0ZXIgbWFpbnRhaW5hYmlsaXR5IGFuZCBzY2FsYWJpbGl0
eSBpbiB0aGUgZnV0dXJlLg0KPiA+DQo+ID4gVGhpcyBwYXRjaCBzZXJpZXMgZGVwZW5kcyBvbiBh
bm90aGVyIGNsayBuZXcgYmluZGluZyBzZXJpZXM6DQo+ID4gaHR0cHM6Ly9ldXIwMS5zYWZlbGlu
a3MucHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0dHBzJTNBJTJGJTJGcGF0Yw0KPiA+DQo+
IGh3b3JrLmtlcm5lbC5vcmclMkZjb3ZlciUyRjExMDQ2Mjg3JTJGJmFtcDtkYXRhPTAyJTdDMDEl
N0NhaXNoZW4NCj4gZy5kb25nDQo+ID4gJTQwbnhwLmNvbSU3QzJkZmZlNGIyYTA3MzRjNWEwMzE0
MDhkNzM4NDQ3ODc2JTdDNjg2ZWExZDNiYzJiDQo+IDRjNmZhOTJjZDkNCj4gPg0KPiA5YzVjMzAx
NjM1JTdDMCU3QzElN0M2MzcwMzk3MzkwMzU5NzEyOTAmYW1wO3NkYXRhPUpzQXk4dlVra0NwDQo+
IG41SFloNzlvQw0KPiA+IHZla0gzU0pBSUNnN1ZRbkxNUDAxTzNjJTNEJmFtcDtyZXNlcnZlZD0w
DQo+IA0KPiBUaHggZm9yIHlvdXIgdXBkYXRlIG9mIHRoaXMgcGF0Y2ggc2VyaWVzLiBJJ2FtIHJ1
bm5pbmcgaW50byB0aGUgaXNzdWUgdGhhdCBteQ0KPiBsaW51eCBuZXh0LTIwMTkwOTA0IHVuZm9y
dHVuYXRlbHkgaXMgbm90IGJvb3Rpbmcgd2l0aCBpdCBvbiBteSBpbXg4UU0NCj4gYm9hcmQuIEtl
cm5lbCBpcyBqdXN0IHN0dWNrIGR1cmluZyBib290IHNlZSBiZWxvdy4NCj4gDQo+IEkgYXBwbGll
ZCB5b3VyIHY1IG9mIHlvdXIgY2xvY2sgYmluZGluZyBwYXRjaGVzIHNlcmllcyBhbmQgYXBwbGll
ZCB0aGlzIHNlcmllcyBpbg0KPiB2My4gWW91ciBmb3JtZXIgdHdvIHBhdGNoIHNlcmllcyB3b3Jr
ZWQgd2VsbCB3aXRoIG5leHQtMjAxOTA3MTYuDQo+IA0KPiBUaGUgbGFzdCBtZXNzYWdlcyBmcm9t
IHRoZSBrZXJuZWwgYXJlOg0KPiANCj4gWyAgICAxLjAxOTIwOF0gaW14LXNjdSBzY3U6IG1ib3hf
cmVxdWVzdF9jaGFubmVsX2J5bmFtZSgpIGNvdWxkIG5vdA0KPiBsb2NhdGUgY2hhbm5lbCBuYW1l
ZCAiZ2lwMyINCj4gWyAgICAxLjAyNzMxNl0gaW14LXNjdSBzY3U6IGZhaWxlZCB0byByZXF1ZXN0
IG1ib3ggY2hhbiBnaXAzLCByZXQgLTIyDQo+IFsgICAgMS4wMzM0ODBdIGlteC1zY3Ugc2N1OiBm
YWlsZWQgdG8gZW5hYmxlIGdlbmVyYWwgaXJxIGNoYW5uZWw6IC0yMg0KPiBbICAgIDEuMDM5NjQ2
XSBpbXgtc2N1IHNjdTogTlhQIGkuTVggU0NVIEluaXRpYWxpemVkDQo+IFsgICAgMS4wNDc0MTRd
IGEzNV9jbGs6IGZhaWxlZCB0byBnZXQgY2xvY2sgcmF0ZSAtMjINCj4gWyAgICAxLjA1ODY4Ml0g
IGxjZDAtcHdtMDogZmFpbGVkIHRvIHBvd2VyIHVwIHJlc291cmNlIDE4OCByZXQgLTIyDQo+IFsg
ICAgMS4wNjQzMTRdIGlteC1zY3UtY2xrOiBwcm9iZSBvZiBwd21fY2xrIGZhaWxlZCB3aXRoIGVy
cm9yIC0yMg0KPiBbICAgIDEuMDcwNTM4XSAgbGNkMDogZmFpbGVkIHRvIHBvd2VyIHVwIHJlc291
cmNlIDE4NyByZXQgLTIyDQo+IFsgICAgMS4wNzU2OTBdIGlteC1zY3UtY2xrOiBwcm9iZSBvZiBs
Y2RfY2xrIGZhaWxlZCB3aXRoIGVycm9yIC0yMg0KPiBbICAgIDEuMDg1OTY1XSBtaXBpX2NzaTBf
Y29yZV9jbGs6IGZhaWxlZCB0byBhdHRhY2hlZCB0aGUgcG93ZXIgZG9tYWluIC0yDQo+IFsgICAg
MS4wOTIzNTldIG1pcGlfY3NpMF9lc2NfY2xrOiBmYWlsZWQgdG8gYXR0YWNoZWQgdGhlIHBvd2Vy
IGRvbWFpbiAtMg0KPiBbICAgIDEuMDk4Nzc3XSBtaXBpX2NzaTBfaTJjMF9jbGs6IGZhaWxlZCB0
byBhdHRhY2hlZCB0aGUgcG93ZXIgZG9tYWluIC0yDQo+IFsgICAgMS4xMDUyNzhdIG1pcGlfY3Np
MF9wd20wX2NsazogZmFpbGVkIHRvIGF0dGFjaGVkIHRoZSBwb3dlciBkb21haW4gLTINCj4gWyAg
ICAxLjExNTc0NF0gaW14OHFtLXBpbmN0cmwgc2N1OnBpbmN0cmw6IGluaXRpYWxpemVkIElNWCBw
aW5jdHJsIGRyaXZlcg0KPiBbICAgIDEuMTIzOTIzXSBncGlvLW14YyA1ZDA4MDAwMC5ncGlvOiBJ
UlEgaW5kZXggMSBub3QgZm91bmQNCj4gWyAgICAxLjEzMDI3Nl0gZ3Bpby1teGMgNWQwOTAwMDAu
Z3BpbzogSVJRIGluZGV4IDEgbm90IGZvdW5kDQo+IA0KPiBJIHNlZSBzaW1pbGFyIG1lc3NhZ2Vz
IGFsc28gd2l0aCB5b3VyIG9sZGVyIHdvcmtpbmcgcGF0Y2hlcywgb25seSB0aGUgbGFzdCB0d28N
Cj4gbGluZXMgYXJlIG5ldyBlcnJvcnMuDQo+IA0KDQpUaG9zZSB3YXJuaW5ncyBhcmUgYmVjYXVz
ZSB3ZSBhcmUgc3RpbGwgbWlzc2luZyBzb21lIGRvbWFpbnMgYWRkZWQgaW50byB0aGUNCnBkIGRy
aXZlciBzdXBwb3J0LCBpdCBkb2VzIG5vdCBibG9jayB0aGUgYm9vdGluZy4NCg0KQnV0IEkgZGlk
IG1pc3MgdG8gc2VuZCBhbm90aGVyIHBvd2VyIGRvbWFpbiBwYXRjaCB0byBhdm9pZCBnYXRlIG9m
IGNvbnNvbGUgZG9tYWluDQp3aGljaCBtYXkgcmVzdWx0IGluIHRoZSBjb25zb2xlIGhhbmcuDQoN
ClBsZWFzZSB0cnkgYmVsb3cgcGF0Y2g6DQpGcm9tIDQ2ODVmNjA0OTM4YjJhOGQ5MWQ5YjE0MDgx
YzE1Y2I1NTRjNTcxMWYgTW9uIFNlcCAxNyAwMDowMDowMCAyMDAxDQpGcm9tOiBEb25nIEFpc2hl
bmcgPGFpc2hlbmcuZG9uZ0BueHAuY29tPg0KRGF0ZTogU3VuLCA3IEp1bCAyMDE5IDE5OjM3OjMz
ICswODAwDQpTdWJqZWN0OiBbUEFUQ0ggMS8xXSBmaXJtd2FyZTogaW14OiBzY3UtcGQ6IGRvIG5v
dCBwb3dlciBvZmYgY29uc29sZSBkb21haW4NCg0KRG8gbm90IHBvd2VyIG9mZiBjb25zb2xlIGRv
bWFpbiBpbiBydW50aW1lIHBtLg0KDQpTaWduZWQtb2ZmLWJ5OiBEb25nIEFpc2hlbmcgPGFpc2hl
bmcuZG9uZ0BueHAuY29tPg0KLS0tDQogZHJpdmVycy9maXJtd2FyZS9pbXgvc2N1LXBkLmMgfCAy
OCArKysrKysrKysrKysrKysrKysrKysrKysrKystDQogMSBmaWxlIGNoYW5nZWQsIDI3IGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZmlybXdhcmUv
aW14L3NjdS1wZC5jIGIvZHJpdmVycy9maXJtd2FyZS9pbXgvc2N1LXBkLmMNCmluZGV4IGI1NTY2
MTIuLjc3MGUzNjggMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2Zpcm13YXJlL2lteC9zY3UtcGQuYw0K
KysrIGIvZHJpdmVycy9maXJtd2FyZS9pbXgvc2N1LXBkLmMNCkBAIC04NSw2ICs4NSw4IEBAIHN0
cnVjdCBpbXhfc2NfcGRfc29jIHsNCiAJdTggbnVtX3JhbmdlczsNCiB9Ow0KIA0KK2ludCBpbXhf
Y29uX3JzcmM7DQorDQogc3RhdGljIGNvbnN0IHN0cnVjdCBpbXhfc2NfcGRfcmFuZ2UgaW14OHF4
cF9zY3VfcGRfcmFuZ2VzW10gPSB7DQogCS8qIExTSU8gU1MgKi8NCiAJeyAicHdtIiwgSU1YX1ND
X1JfUFdNXzAsIDgsIHRydWUsIDAgfSwNCkBAIC0xNzMsNiArMTc1LDIzIEBAIHRvX2lteF9zY19w
ZChzdHJ1Y3QgZ2VuZXJpY19wbV9kb21haW4gKmdlbnBkKQ0KIAlyZXR1cm4gY29udGFpbmVyX29m
KGdlbnBkLCBzdHJ1Y3QgaW14X3NjX3BtX2RvbWFpbiwgcGQpOw0KIH0NCiANCitzdGF0aWMgdm9p
ZCBpbXhfc2NfcGRfZ2V0X2NvbnNvbGVfcnNyYyh2b2lkKQ0KK3sNCisJc3RydWN0IG9mX3BoYW5k
bGVfYXJncyBzcGVjczsNCisJaW50IHJldDsNCisNCisJaWYgKCFvZl9zdGRvdXQpDQorCQlyZXR1
cm47DQorDQorCXJldCA9IG9mX3BhcnNlX3BoYW5kbGVfd2l0aF9hcmdzKG9mX3N0ZG91dCwgInBv
d2VyLWRvbWFpbnMiLA0KKwkJCQkJICIjcG93ZXItZG9tYWluLWNlbGxzIiwNCisJCQkJCSAwLCAm
c3BlY3MpOw0KKwlpZiAocmV0KQ0KKwkJcmV0dXJuOw0KKw0KKwlpbXhfY29uX3JzcmMgPSBzcGVj
cy5hcmdzWzBdOw0KK30NCisNCiBzdGF0aWMgaW50IGlteF9zY19wZF9wb3dlcihzdHJ1Y3QgZ2Vu
ZXJpY19wbV9kb21haW4gKmRvbWFpbiwgYm9vbCBwb3dlcl9vbikNCiB7DQogCXN0cnVjdCBpbXhf
c2NfbXNnX3JlcV9zZXRfcmVzb3VyY2VfcG93ZXJfbW9kZSBtc2c7DQpAQCAtMjMzLDYgKzI1Miw3
IEBAIGlteF9zY3VfYWRkX3BtX2RvbWFpbihzdHJ1Y3QgZGV2aWNlICpkZXYsIGludCBpZHgsDQog
CQkgICAgICBjb25zdCBzdHJ1Y3QgaW14X3NjX3BkX3JhbmdlICpwZF9yYW5nZXMpDQogew0KIAlz
dHJ1Y3QgaW14X3NjX3BtX2RvbWFpbiAqc2NfcGQ7DQorCWJvb2wgaXNfb2ZmID0gdHJ1ZTsNCiAJ
aW50IHJldDsNCiANCiAJc2NfcGQgPSBkZXZtX2t6YWxsb2MoZGV2LCBzaXplb2YoKnNjX3BkKSwg
R0ZQX0tFUk5FTCk7DQpAQCAtMjUxLDYgKzI3MSwxMCBAQCBpbXhfc2N1X2FkZF9wbV9kb21haW4o
c3RydWN0IGRldmljZSAqZGV2LCBpbnQgaWR4LA0KIAkJCSAiJXMiLCBwZF9yYW5nZXMtPm5hbWUp
Ow0KIA0KIAlzY19wZC0+cGQubmFtZSA9IHNjX3BkLT5uYW1lOw0KKwlpZiAoaW14X2Nvbl9yc3Jj
ID09IHNjX3BkLT5yc3JjKSB7DQorCQlzY19wZC0+cGQuZmxhZ3MgPSBHRU5QRF9GTEFHX1JQTV9B
TFdBWVNfT047DQorCQlpc19vZmYgPSBmYWxzZTsNCisJfQ0KIA0KIAlpZiAoc2NfcGQtPnJzcmMg
Pj0gSU1YX1NDX1JfTEFTVCkgew0KIAkJZGV2X3dhcm4oZGV2LCAiaW52YWxpZCBwZCAlcyByc3Jj
IGlkICVkIGZvdW5kIiwNCkBAIC0yNjAsNyArMjg0LDcgQEAgaW14X3NjdV9hZGRfcG1fZG9tYWlu
KHN0cnVjdCBkZXZpY2UgKmRldiwgaW50IGlkeCwNCiAJCXJldHVybiBOVUxMOw0KIAl9DQogDQot
CXJldCA9IHBtX2dlbnBkX2luaXQoJnNjX3BkLT5wZCwgTlVMTCwgdHJ1ZSk7DQorCXJldCA9IHBt
X2dlbnBkX2luaXQoJnNjX3BkLT5wZCwgTlVMTCwgaXNfb2ZmKTsNCiAJaWYgKHJldCkgew0KIAkJ
ZGV2X3dhcm4oZGV2LCAiZmFpbGVkIHRvIGluaXQgcGQgJXMgcnNyYyBpZCAlZCIsDQogCQkJIHNj
X3BkLT5uYW1lLCBzY19wZC0+cnNyYyk7DQpAQCAtMzI2LDYgKzM1MCw4IEBAIHN0YXRpYyBpbnQg
aW14X3NjX3BkX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpDQogCWlmICghcGRf
c29jKQ0KIAkJcmV0dXJuIC1FTk9ERVY7DQogDQorCWlteF9zY19wZF9nZXRfY29uc29sZV9yc3Jj
KCk7DQorDQogCXJldHVybiBpbXhfc2N1X2luaXRfcG1fZG9tYWlucygmcGRldi0+ZGV2LCBwZF9z
b2MpOw0KIH0NCiANCi0tIA0KMi43LjQNCg0KDQpSZWdhcmRzDQpBaXNoZW5nDQoNCj4gQmVzdCBy
ZWdhcmRzLA0KPiANCj4gT2xpdmVyDQo=

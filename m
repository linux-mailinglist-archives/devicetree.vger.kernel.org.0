Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4AD8428809A
	for <lists+devicetree@lfdr.de>; Fri,  9 Oct 2020 05:05:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731416AbgJIDFR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Oct 2020 23:05:17 -0400
Received: from mail-eopbgr70075.outbound.protection.outlook.com ([40.107.7.75]:52035
        "EHLO EUR04-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1728854AbgJIDFR (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 8 Oct 2020 23:05:17 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J+ltqT98Bqzj0QFQwWOuJ8R2FaeroWP6/aSswxKRSdmJLnj6USgie31caMkDYiUJY7DLyFgid/8/uXyxI3VP+5X9osI1LsZYOT3wps9VbVHG/BnN5tQCxrBTWfeoWy+QiEcy5kU0+VGq7mhvK+8GmsheKrNlI/Mx8R+07WdzcEP3+Do8lTM+Z9XM5mKZesZZqF85/tFKhfEvMh+LNvQ53ZhKZDCA/q9PXHGh6otiDEgLDILYkm94DDP+/8AEISfkGq33SaUrbyRd2L+AzJLA3i3dFbQ4LTPfeoVy7GJQnJmeXb28gGL9LDTFJQxuivGbS46vuuAB5/tzahTCUSa7fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mGWGGMSrFwi710nqqBgvbgW76HaNwymbhAlhgDpnwuc=;
 b=fvbHfRDqfJwqLHFGKms8ytAqcFkTbhxEcUmOynIJgG0P80gtrtCdwdgqf8VzDwpf+80SUlj04/m7dJDGR8DpM+8JQ6/5Odyp8QLQ2gJQfcKFgWSETf202SWNTdClFEbGi7dZelcy2xcN1a3eI3i/iPliTX470QwBkXcB0yfQVKZQ9PS043kGEwg9Y7nLQZd/fn9ibTTKXFaIe25GB8trPVtDzDpO4gaaSurB8oNxk3VMIkoy64FK8GJ44kKZIWVJ7etFFbMsXYVaS/5s07Qh1wwMM7XHhfjFK6Hk5ApKa1LuRrfjl8V7fcXEJuz1dwJYRR+k967K0fuCVfUgPjJZfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mGWGGMSrFwi710nqqBgvbgW76HaNwymbhAlhgDpnwuc=;
 b=dHVl9CiNi4rV8L5X1VYTMc8S/0jeVu/153jGnayV4H8856ZxFsGm7/+boV4WJ2pe8rGVtA3pUlYl7SvPi51CwTyozLkj8yUxR0iCfaVKFIynJ19zOlgkzXNM9VPdnek26MGt9xFy42keYTr7VP4Shnbubra1EeqckNKgBihxHnc=
Received: from AM0PR04MB4915.eurprd04.prod.outlook.com (2603:10a6:208:c5::20)
 by AM0PR04MB4321.eurprd04.prod.outlook.com (2603:10a6:208:67::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.26; Fri, 9 Oct
 2020 03:05:11 +0000
Received: from AM0PR04MB4915.eurprd04.prod.outlook.com
 ([fe80::8de5:80f:f11a:5fa3]) by AM0PR04MB4915.eurprd04.prod.outlook.com
 ([fe80::8de5:80f:f11a:5fa3%7]) with mapi id 15.20.3455.024; Fri, 9 Oct 2020
 03:05:11 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     Marek Vasut <marex@denx.de>, Lucas Stach <l.stach@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        "patchwork-lst@pengutronix.de" <patchwork-lst@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH 04/11] soc: imx: gpcv2: wait for ADB400 handshake
Thread-Topic: [PATCH 04/11] soc: imx: gpcv2: wait for ADB400 handshake
Thread-Index: AQHWl0FkywkQIHCrGU2Snqt9jDz3LqmBWkWAgAACP4CAAAEEgIANRTvA
Date:   Fri, 9 Oct 2020 03:05:11 +0000
Message-ID: <AM0PR04MB4915964704698912AC3AEFF487080@AM0PR04MB4915.eurprd04.prod.outlook.com>
References: <20200930155006.535712-1-l.stach@pengutronix.de>
 <20200930155006.535712-5-l.stach@pengutronix.de>
 <818925c0-b45f-67b4-02a1-8db49ccc491e@denx.de>
 <9533c2b81a9866aec45d2604befe7cdda79d0679.camel@pengutronix.de>
 <de6d73ea-c7dc-6405-29fb-7975368424c0@denx.de>
In-Reply-To: <de6d73ea-c7dc-6405-29fb-7975368424c0@denx.de>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: denx.de; dkim=none (message not signed)
 header.d=none;denx.de; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 8416d7f0-c6d1-4173-5145-08d86c0022c6
x-ms-traffictypediagnostic: AM0PR04MB4321:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB43218841B08399B3C14A1E6A87080@AM0PR04MB4321.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: m+faZ4CtCpbuAIvF8kzsuiBUaKjJ+W9r0FHKaNkbUZRf4XRBJlBtgqRXwtnU1gWvK1YRpHfteg/HOwnTvOgjqzjthLrGn8th/3BRwFIXCfCckO9PxNRW+QLBZl9sLSdtifg+LaVD0YCg4hAWmhLUS+88wfhvNIOWH9hXyo07WEKsU4ZD87cyXK1UOa2u9noH7Oy7/+VfMkM025WRrtWq9OvsO/uy+0/cBrIP05sZqiSNM2IwwLAUUPv9N3KSuFcHjjXQ2GKatQUiDRoT0nKyeRxprhaBD2sXPEd8dhED3B6BeoIYHA3Mm/OZBVkHtzRvtq0vv8PQQ4SkFDXu4UL0vA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB4915.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(376002)(39860400002)(136003)(346002)(396003)(83380400001)(2906002)(66946007)(33656002)(8936002)(71200400001)(7696005)(8676002)(53546011)(5660300002)(316002)(54906003)(4326008)(478600001)(110136005)(6506007)(9686003)(76116006)(66446008)(64756008)(66556008)(66476007)(52536014)(186003)(86362001)(7416002)(55016002)(26005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: oRfERoYxrlDcZJgmh5SosZByuzYV2GOEYIP74HB0uQD56FUC++iyQdKpadiYINHdeOhh2qEJ9ikDHTeva4guhm6/dFKoBvdxnByz6SDlFrRUP5grQ0D34zlbMWmjhdOojm4WDE81gpxrvC7GEzZQ+3NXCgkvbs1j4+nC+3KMTrJj57HVDt5Jg8X6HBAzfEt4MU9amkil8mfawz5Tur05gTQU/ONkBVHUgPZFNrzEwkUdlBGwOIriHw7nm7ZzJsfVoA/h1zlf7B5ZBjnYTFT3sqY45RJrpL+yElQLWVtuYDb7rC7fayHMzQ29MeFKdWMYfCkXGtkWvgNcF4JPF0IzxW7KVoiSwi5cc7dXyHjTRl69z426yW/BB9Yk0ZSyvfy1ZLwqrkfixavJieRfQxUTOlPzKQ/Tt8RokTzpVZm4jujwekXU9oTWfn/fIA9ZiXHcbO4+AvnjKNiYcbHb5eObtKapBEfXNmZ2VlYoHIuVDcvrN/wdg5UWrvDv4SdeddfrlWR97QaL0lKvu9QrwsQqf27/xFKkV+tSzP1MvZ0sBBQYypeyj8x6L6VQHNWJYEcLZXr1gyF0VYzCE89hoYTGzfAUaz1gpuD+47YyDZzTz/Ew0qVtpHKep9mhKUhVpsWglKvmodj+Wv3zfAFdfNfahA==
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB4915.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8416d7f0-c6d1-4173-5145-08d86c0022c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2020 03:05:11.0887
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PspJEHp9exNroxY6g3Y9bZpd3ipf2foZK9MZEePQFlqnYcL7Hk/X98nf8ZxQ5zSR1xfwYaUBo2subm4P8YxHUA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4321
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBNYXJlayBWYXN1dCBbbWFpbHRv
Om1hcmV4QGRlbnguZGVdDQo+IFNlbnQ6IFRodXJzZGF5LCBPY3RvYmVyIDEsIDIwMjAgMTI6MjMg
QU0NCj4gVG86IEx1Y2FzIFN0YWNoIDxsLnN0YWNoQHBlbmd1dHJvbml4LmRlPjsgU2hhd24gR3Vv
DQo+IDxzaGF3bmd1b0BrZXJuZWwub3JnPjsgUm9iIEhlcnJpbmcgPHJvYmgrZHRAa2VybmVsLm9y
Zz4NCj4gQ2M6IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnOyBGcmllZGVyIFNjaHJlbXBmDQo+
IDxmcmllZGVyLnNjaHJlbXBmQGtvbnRyb24uZGU+OyBwYXRjaHdvcmstbHN0QHBlbmd1dHJvbml4
LmRlOyBkbC1saW51eC1pbXgNCj4gPGxpbnV4LWlteEBueHAuY29tPjsga2VybmVsQHBlbmd1dHJv
bml4LmRlOyBGYWJpbyBFc3RldmFtDQo+IDxmZXN0ZXZhbUBnbWFpbC5jb20+OyBsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcNCj4gU3ViamVjdDogUmU6IFtQQVRDSCAwNC8xMV0g
c29jOiBpbXg6IGdwY3YyOiB3YWl0IGZvciBBREI0MDAgaGFuZHNoYWtlDQo+IA0KPiBPbiA5LzMw
LzIwIDY6MTkgUE0sIEx1Y2FzIFN0YWNoIHdyb3RlOg0KPiA+IE9uIE1pLCAyMDIwLTA5LTMwIGF0
IDE4OjExICswMjAwLCBNYXJlayBWYXN1dCB3cm90ZToNCj4gPj4gT24gOS8zMC8yMCA1OjQ5IFBN
LCBMdWNhcyBTdGFjaCB3cm90ZToNCj4gPj4NCj4gPj4gWy4uLl0NCj4gPj4NCj4gPj4+IEBAIC0x
NzYsOSArMTgwLDE5IEBAIHN0YXRpYyBpbnQgaW14X3BnY19wb3dlcl91cChzdHJ1Y3QNCj4gZ2Vu
ZXJpY19wbV9kb21haW4gKmdlbnBkKQ0KPiA+Pj4gIAkJCSAgIEdQQ19QR0NfQ1RSTF9QQ1IsIDAp
Ow0KPiA+Pj4NCj4gPj4+ICAJLyogcmVxdWVzdCB0aGUgQURCNDAwIHRvIHBvd2VyIHVwICovDQo+
ID4+PiAtCWlmIChkb21haW4tPmJpdHMuaHNrKQ0KPiA+Pj4gKwlpZiAoZG9tYWluLT5iaXRzLmhz
a3JlcSkgew0KPiA+Pj4gIAkJcmVnbWFwX3VwZGF0ZV9iaXRzKGRvbWFpbi0+cmVnbWFwLCBHUENf
UFVfUFdSSFNLLA0KPiA+Pj4gLQkJCQkgICBkb21haW4tPmJpdHMuaHNrLCBkb21haW4tPmJpdHMu
aHNrKTsNCj4gPj4+ICsJCQkJICAgZG9tYWluLT5iaXRzLmhza3JlcSwgZG9tYWluLT5iaXRzLmhz
a3JlcSk7DQo+ID4+PiArDQo+ID4+PiArCQlyZXQgPSByZWdtYXBfcmVhZF9wb2xsX3RpbWVvdXQo
ZG9tYWluLT5yZWdtYXAsDQo+IEdQQ19QVV9QV1JIU0ssDQo+ID4+PiArCQkJCQkgICAgICAgcmVn
X3ZhbCwNCj4gPj4+ICsJCQkJCSAgICAgICAocmVnX3ZhbCAmIGRvbWFpbi0+Yml0cy5oc2thY2sp
LA0KPiA+Pj4gKwkJCQkJICAgICAgIDAsIFVTRUNfUEVSX01TRUMpOw0KPiA+Pj4gKwkJaWYgKHJl
dCkgew0KPiA+Pj4gKwkJCWRldl9lcnIoZG9tYWluLT5kZXYsICJmYWlsZWQgdG8gcG93ZXIgdXAg
QURCNDAwXG4iKTsNCj4gPj4NCj4gPj4gVGhlIEFEQjQwMCBpcyBhIGJ1cyBicmlkZ2UsIHNvIHRo
ZSBidXMgaXMgYmVpbmcgYXR0YWNoZWQgaGVyZSwgbm90DQo+ID4+IHBvd2VyZWQgdXAsIHJpZ2h0
ID8NCj4gPg0KPiA+IFRoZSBiaXRzIGluIHRoZSBQV1JIU0sgcmVnaXN0ZXIgYXJlIGNhbGxlZCAi
cG93ZXIgZG93biIgYml0cywgc28gSQ0KPiA+IGtlcHQgdGhpcyBub21lbmNsYXR1cmUuIEFsc28g
SSB0aGluayB0aGUgQURCNDAwIGlzIG1vc3RseSBpc29sYXRpbmcNCj4gPiB0aGUgYnVzIGluIHRo
ZSBwb3dlciBkb21haW5zIGZyb20gdGhlIHJlc3Qgb2YgdGhlIE5vQywgImF0dGFjaGluZyIgb2YN
Cj4gPiB0aGUgYnVzIGlzIHJlYWxseSBkaXNhYmxpbmcgdGhlIGlzb2xhdGlvbi4NCj4gPg0KPiA+
IEFzIHRoZXJlIGFyZSBtdWx0aXBsZSB2YWxpZCBuYW1pbmcgY2hvaWNlcyBJIGtlcHQgdGhlIG5h
bWluZyBmcm9tIHRoZQ0KPiA+IFJNLg0KPiANCj4gTWF5YmUgTlhQIGNhbiBmaW5hbGx5IGV4cGxh
aW4gd2hhdCB0aGVzZSBiaXRzIHJlYWxseSBkbyA/DQoNClRoaXMgYml0IGlzIHVzZWQgdG8gc3lu
YyB0aGUgQURCNDAwIGJyaWRnZSB0byBhIGtub3duIHN0YXR1cyBiZWZvcmUgTUlYIHNpZGUgcG93
ZXIgZG93biAmIGlzb2xhdGlvbi4NCkRldGFpbGVkIGluZm8gY2FuIGJlIGZpbmQgaW4gQVJNJ3Mg
QURCNDAwIFRSTS4NCg0KQlINCkphY2t5IEJhaQ0KDQo=

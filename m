Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 05DEE39D606
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 09:30:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229545AbhFGHcr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 03:32:47 -0400
Received: from mail-eopbgr130080.outbound.protection.outlook.com ([40.107.13.80]:15748
        "EHLO EUR01-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S229436AbhFGHcr (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 7 Jun 2021 03:32:47 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HNnRBjBN4AAXNrfHGP7gmsosv/kEqoa3lKvaRYRSYRH4UoVF+K2VhaXc1hZYiiYCbfuKXKcQwbrddun26EYuaRrneqDqqx2t836/+7fsey/ZCnj2/jmExHswCsKm1fnc+ZLMqdhCfQIwZWCR6YYnAbYQIsDfoTIjIYubhR+ul728cCf2/AbXJvMs5bjP8qeaZh6B9/9WOKut4yRfxha+FxAe3dsB0XSa6fzPSs11TzKwdsqQJK9kFRmz3ppKdEF+9xpSRmn3peNf+Cto3pyZFc6BiItmgyOjVCnTlOabbiIrxFZisuSrciC0sBMXdaebWCE5dvDjE9JG2AfiSUVavA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wCn4KOpPy0pSpzAQyA1LFwy4udDB5hDpEjVc68po9lM=;
 b=aDMFZhUeZlBoJaG1pmhfMCMnV47vDyrZe26agEQRNBz1IivwgjAj9Fc2aB17Yu03Q+QFG3aq9HwqxwZZ2/r2H9UTZct524+RTTY/UXKgemmhcUj6GhYvQp99qXRwidwS4ChKt6LetBBLSRs47MYc5LCx7VIrrlf+CEIVKtsx7EPem7CqTfNxnCYDgAwH7JVx/D15SoDOksNJr3QIjZcr6XaMeRyBt33hp5zZlVKtPZ4isoJBWNNze8dBqd4nzPaz4uZxyWlOmDncr3ohZ6CRauf+siRRXzszAj6zj5/0qmxHb26jCiCXUOTIqWKpEMTZCu/mSW1T0pXP+rKDMf9cXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wCn4KOpPy0pSpzAQyA1LFwy4udDB5hDpEjVc68po9lM=;
 b=P6sb/V/8d9ahyZafnwuTs8JaHrg77m+nI0aYcU9jRJUpSdcWmpyA4oV5g88zGzo3UqmWjqqcveInHOAWOrEs44pdQLtuB525hgNyYiUrnTbMtuYSOS4NMPjT4xRRM3fxgfhZlhpoIqEMR8G9wP3wzzMtV8CUu79mr/05r6JDhV0=
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DBBPR04MB7563.eurprd04.prod.outlook.com (2603:10a6:10:206::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.24; Mon, 7 Jun
 2021 07:30:53 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3921:acd6:3201:b209]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3921:acd6:3201:b209%4]) with mapi id 15.20.4195.030; Mon, 7 Jun 2021
 07:30:53 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     Frieder Schrempf <frieder.schrempf@kontron.de>,
        "tharvey@gateworks.com" <tharvey@gateworks.com>
CC:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH 1/4] arm64: dts: imx8mm-venice-gw700x: override thermal
 cfg for industrial temp
Thread-Topic: [PATCH 1/4] arm64: dts: imx8mm-venice-gw700x: override thermal
 cfg for industrial temp
Thread-Index: AQHXV35zi/pMuFSs7UW3ckNnL7FgcqsEAVWAgAQq6YCAAAGUgA==
Date:   Mon, 7 Jun 2021 07:30:53 +0000
Message-ID: <DBBPR04MB79303661E07409B4B65F3EF487389@DBBPR04MB7930.eurprd04.prod.outlook.com>
References: <20210601174917.1979-1-tharvey@gateworks.com>
 <b63300e8-3739-fcc6-6d37-952f93cfd17b@kontron.de>
 <CAJ+vNU0mBQJ_ZLsKOiY0k7+drYvmw+bsHfeX4+Mg=s4_fxSUYA@mail.gmail.com>
 <5eba4438-239c-71d1-56ec-4edd70e87ec3@kontron.de>
In-Reply-To: <5eba4438-239c-71d1-56ec-4edd70e87ec3@kontron.de>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kontron.de; dkim=none (message not signed)
 header.d=none;kontron.de; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: db5187e5-1460-4b8a-193a-08d929862ea1
x-ms-traffictypediagnostic: DBBPR04MB7563:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DBBPR04MB756316E6BDAE297CF6D7E29687389@DBBPR04MB7563.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WC4XJphG+u9aDVOR8i2IB6yTm3Q7hdvUfg1bGp4x2WvO4pY5woLrlhV/L3GjEVk2XEmmj5Lgh8Plaoyv19fM50LBDlrhtDApfIhrzamJpaJVVJDPn6DZ97D8rRtPVonFv9PQCTOOo44nRJ42UsACRubEuI9qz1KF7SpPdS5CTca99kPZEi7PsdgtqpP5xE8ghGwRJxdJFcUwEw2iT0rBlP64OKLrYuPhd8DZX1xr0ez8ZPH1SBbXhz3yIsLsL4DGZEvAXe9hoAv+qIDZtVuJdwUJGA97mjTsIKCCMfH1KyiCiOxTRB0jMrSjU7xGSYBrJGiDuPXnAtERqwVW3SA62pDSqX6vaJvNxspKj1bAb48zgd20d+m489QGUUvpbjKMuUvbvzwjdQ+f1Tif4mLM02r3gxaJob3OHZlz8HR43Va4sAtdS4/EBBZh0l9rVYoGa4N4Okj0lFwkaOeYLJbyY2HUCh1lNFas01HZt3c9g++0/mOOdpOlJfpD/aRKH2yHC5w0ZyFPxW83d68TlWyXQ/GmfpXkX2DWzqzajwmg0WykvY/hvpjjP+0NtEYQWjgOyWUAGbEKinpNLzcq5GIGaY1uk3N6bzIcyX/HuLDKY1CaC8igmOXZCUCACn8Ty+GN4IiNy+i3xRrg3JJb70nQPw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(346002)(376002)(366004)(39860400002)(396003)(83380400001)(2906002)(4326008)(38100700002)(55016002)(53546011)(6506007)(316002)(71200400001)(110136005)(54906003)(33656002)(52536014)(5660300002)(86362001)(7696005)(478600001)(8936002)(64756008)(66446008)(26005)(66556008)(76116006)(9686003)(66946007)(66476007)(8676002)(122000001)(186003)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?utf-8?B?eU9CTEpjMlZ4STZTVUdVMFlQU0x3MWZUcG9JMldFYkwyMXdpL0dHRlZpTjRz?=
 =?utf-8?B?NXpXWUx4VjUwanhTa3V5SWRWZEpCVER1dXY0Q0ZVSlYrbTBZNnJZWEFReXdS?=
 =?utf-8?B?NkhKR0RXUlpoQjAwK2QrbzEvMTVEOW02TkpIa0ZvVE5RMDVxVnovUTB4bFNW?=
 =?utf-8?B?M25kSURSWTVua3dTNjVLQ3d4OUpaTkFXUXZSOVpTU0ZFZDFxZ3lFQStpWTdK?=
 =?utf-8?B?RjlscU83QzF3VlE0UkRQbmJaTVdYRGYwcEdqNmVRSWIvb25wOGRzVVQ1Vmh6?=
 =?utf-8?B?UXpRbXJndmdxUEJ1WVYwdUxpVlhJc0Z5SW1DYnU0UCtIeGxZeWcrMldNK2dt?=
 =?utf-8?B?WUh3YnBQQS9VRDdNNTIxNWRoUnBWdVJzemxjR3RXbGlTSlliY1EveXJLb3g3?=
 =?utf-8?B?OU9uNmVFdFdDU2NZUThNVU00UWR4ZWhLNjF6bmtoZCtYKzQ1aXF2VkFYbVFi?=
 =?utf-8?B?UEhqT3Z4ZzZXRisxeDE0ZEpIV3U0eHpjeGsrNmM1clc5S1lBWVhIL0FaZ2dF?=
 =?utf-8?B?OTh5KzVveDI4bXBkYkRRZ3pjcVJoNWFhNDM3Zi9Vc2tyaVg2N3RYbThoTlNh?=
 =?utf-8?B?ZHdwVGVPN0sxSEsyWGlyQmVUVXJxNjlQTnZaT1NTRHc3S010ZlJWYXNPTkts?=
 =?utf-8?B?OUtrbkNuS2M0MGZkckx3TVR6bFc5SWRVNVNDVmVPamFlNnh4WldLSVE1bG1K?=
 =?utf-8?B?eDBFNVZ1eisyaC9haXJaU0lPWUtnZDhTQmhuWGpYZW1kcFhLbEIxVExSMUxX?=
 =?utf-8?B?OHJLQk9nNFNxcDB5Q0FaMlJjNmdjY0c3WC9BZE5LdWVscm9UMmxqbHRjczg2?=
 =?utf-8?B?SDhjNXlmWUVUSHNwUTdoL3puM3dMQnFUMDczdVRaZXlWMzFFaHVIbnVaOVda?=
 =?utf-8?B?SkQ3RkN1TDZCUXd6angvWllpOXcralNKbm94L1YraFo2MGo4Z0VHUUE0OVZI?=
 =?utf-8?B?cXEwYk4va3M5eVFXU0g1Q0JwUTRabHdjVTUrajN2a0RDWUZuNlhWN29aU1pM?=
 =?utf-8?B?WkZYZXBwQ3JDNHlpYnRkZGcwNkNiZk1jUnV4dGdGOEtPN1VGY0t3V25CQ1h6?=
 =?utf-8?B?Znh0MWRVSUtMejFVR3VhQkIxa2R3Y2tPcUt4a2hGV2Q0SWJ1bFAxNzRMek9t?=
 =?utf-8?B?NC9UNUx1RjYya1JSMTkzNjdXdUhPZVFmMVcyNU5LRVZ2WmFwSHMyZU5zdU5F?=
 =?utf-8?B?VGZmK29lZ1NmckZiUkJMNlh2R3FJWi93cjlNUGxuYzdoV3Bmb1EyZkplL25Z?=
 =?utf-8?B?OTZibHFxYXhrZWMrLzBYYWx4bWdnV0Y2c1h3akxpLzU2T21rUzlsNzczSjVI?=
 =?utf-8?B?ek9Hb2puY3VZbytkeDBuMlpCcnpoZmRKWVI0MC9lWEk2OXRFb1IxTzZaV1li?=
 =?utf-8?B?ZXlqMGdQYWZ4Z0UxN0F5eC81aitGZ29PTTdHQkpOU3pCQ0Z5b2hKZjIzMVdW?=
 =?utf-8?B?UnFwellGY1NZTHQrZXJZSUtWRmZVTGVnL2FYcGxXMGkrajdoNTNUR2hxZStO?=
 =?utf-8?B?TDFqMkYyb1U1S1hiS0tjRmUyaGZjY1gvd1EvUG1pcWJQNzlEU3ZtQTB4T25D?=
 =?utf-8?B?d1ZzbzZrNVN5S1p0aWRCKzVoWEw5NFpFRjlCRWwrMmg5eS8yVmlMaUZCOU9S?=
 =?utf-8?B?NWtjSU53T3Q5NnlUY1IveFo5R2cwd1BhTExXZDNlUDJVY3hxM0p3U3BkVGhR?=
 =?utf-8?B?ZWVycEd2Z3NWbGhpVkZmREhxUXVaZUxUM3FiVzM0N3llMmhWSVgvbTJ1elQ2?=
 =?utf-8?Q?2BXTFHo2M7ZCwgrRhnrxQDp4A77xvQc3iia0TuJ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: db5187e5-1460-4b8a-193a-08d929862ea1
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2021 07:30:53.3445
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AJ3yZ1on8MMMgyNLO9qfIYPpjwfyYFgD8C7QpDqZJtNsdJUBSLQgrxiVxmbEoP6M+psH6fXZpad4GCqJhfuziQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7563
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

PiBTdWJqZWN0OiBSZTogW1BBVENIIDEvNF0gYXJtNjQ6IGR0czogaW14OG1tLXZlbmljZS1ndzcw
MHg6IG92ZXJyaWRlDQo+IHRoZXJtYWwgY2ZnIGZvciBpbmR1c3RyaWFsIHRlbXANCj4gDQo+IE9u
IDA0LjA2LjIxIDE3OjQyLCBUaW0gSGFydmV5IHdyb3RlOg0KPiA+IE9uIFdlZCwgSnVuIDIsIDIw
MjEgYXQgMTI6MTEgQU0gRnJpZWRlciBTY2hyZW1wZg0KPiA+IDxmcmllZGVyLnNjaHJlbXBmQGtv
bnRyb24uZGU+IHdyb3RlOg0KPiA+Pg0KPiA+PiBPbiAwMS4wNi4yMSAxOTo0OSwgVGltIEhhcnZl
eSB3cm90ZToNCj4gPj4+IE92ZXJyaWRlIHRoZSBkZWZhdWx0IHRlbXBlcmF0dXJlIGFsZXJ0L2Ny
aXQgZm9yIEluZHVzdHJpYWwgdGVtcA0KPiA+Pj4gSU1YOE0gTWluaS4NCj4gPj4+DQo+ID4+PiBT
aWduZWQtb2ZmLWJ5OiBUaW0gSGFydmV5IDx0aGFydmV5QGdhdGV3b3Jrcy5jb20+DQo+ID4+PiAt
LS0NCj4gPj4+ICAuLi4vYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtbS12ZW5pY2UtZ3c3MDB4LmR0
c2kgICAgIHwgMTINCj4gKysrKysrKysrKysrDQo+ID4+PiAgMSBmaWxlIGNoYW5nZWQsIDEyIGlu
c2VydGlvbnMoKykNCj4gPj4+DQo+ID4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0
cy9mcmVlc2NhbGUvaW14OG1tLXZlbmljZS1ndzcwMHguZHRzaQ0KPiA+Pj4gYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bW0tdmVuaWNlLWd3NzAweC5kdHNpDQo+ID4+PiBpbmRl
eCBjNzY5ZmFkYmQwMDguLjUxMmI3NmNkN2MzYiAxMDA2NDQNCj4gPj4+IC0tLSBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtbS12ZW5pY2UtZ3c3MDB4LmR0c2kNCj4gPj4+ICsr
KyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtbS12ZW5pY2UtZ3c3MDB4LmR0
c2kNCj4gPj4+IEBAIC00OTMsMyArNDkzLDE1IEBADQo+ID4+PiAgICAgICAgICAgICAgID47DQo+
ID4+PiAgICAgICB9Ow0KPiA+Pj4gIH07DQo+ID4+PiArDQo+ID4+PiArJmNwdV9hbGVydDAgew0K
PiA+Pj4gKyAgICAgdGVtcGVyYXR1cmUgPSA8OTUwMDA+Ow0KPiA+Pj4gKyAgICAgaHlzdGVyZXNp
cyA9IDwyMDAwPjsNCj4gPj4+ICsgICAgIHR5cGUgPSAicGFzc2l2ZSI7DQo+ID4+PiArfTsNCj4g
Pj4+ICsNCj4gPj4+ICsmY3B1X2NyaXQwIHsNCj4gPj4+ICsgICAgIHRlbXBlcmF0dXJlID0gPDEw
NTAwMD47DQo+ID4+PiArICAgICBoeXN0ZXJlc2lzID0gPDIwMDA+Ow0KPiA+Pj4gKyAgICAgdHlw
ZSA9ICJjcml0aWNhbCI7DQo+ID4+PiArfTsNCj4gPj4NCj4gPj4gQXMgdGhpcyBpcyBub3QgcmVh
bGx5IGJvYXJkLXNwZWNpZmljLCBJIHRoaW5rIHRoZSBwcm9wZXIgd2F5IHRvIGhhbmRsZSB0aGlz
IGZvcg0KPiBhbGwgYm9hcmRzIGlzIHRvIGxldCB0aGUgdGhlcm1hbCBkcml2ZXIgcmVhZCB0aGUg
dGVtcGVyYXR1cmUgZ3JhZGluZyBmcm9tIHRoZQ0KPiBPVFAgZnVzZXMgYW5kIHNldCB0aGUgdHJp
cC1wb2ludHMgYWNjb3JkaW5nbHksIHNpbWlsYXIgdG8gd2hhdCBpcyBkb25lIG9uIGkuTVg2DQo+
IFsxXS4NCj4gPj4NCi4uLg0KPiA+DQo+ID4gRnJpZWRlciwNCj4gPg0KPiA+IFllcywgSSB0aG91
Z2h0IGFib3V0IGFkZGluZyB0aGF0IGtpbmQgb2Ygc3VwcG9ydCB0byBpbXg4bW1fdGhlcm1hbC5j
DQo+ID4gYnV0IHRoZSBkaWZmZXJlbmNlIGlzIHRoYXQgaW14OG1tIGhhcyBhbGVydHMgZGVmaW5l
ZCBieSBkdCBhbmQgaW14Ng0KPiA+IGRvZXMgbm90IHNvIGlzIGl0IHJpZ2h0IHRvIG92ZXJyaWRl
IGR0IGFsZXJ0cyBvbiBpbXg4bT8gV2hhdCBpZg0KPiA+IHNvbWVvbmUgZGVzaWducyBhIGJvYXJk
IHRoYXQgdGhleSBzcGVjaWZpY2FsbHkgd2FudCBhIGxvd2VyIGFsZXJ0IHRoYW4NCj4gPiB0aGUg
Y3B1IGdyYWRlIHRoZXkgYXJlIHVzaW5nIGJhc2VkIG9uIHNvbWV0aGluZyBlbHNlIG9uIHRoZSBi
b2FyZD8NCj4gPg0KPiA+IE15IGFwcHJvYWNoIHRvIHRoaXMgd2FzIHRvIGV2ZW50dWFsbHkgYWN0
dWFsbHkgYWRqdXN0IHRoZSBpbXg4bSBkdA0KPiA+IGFsZXJ0cyBpbiBib290IGZpcm13YXJlIGJh
c2VkIG9uIHNvbWUgYm9vdCBmaXJtd2FyZSBzZXR0aW5nIG9yDQo+ID4gc3BlY2lmaWMgYm9hcmQg
c3VwcG9ydCBhbmQgbGVhdmUgdGhlIGtlcm5lbCBhbG9uZS4NCj4gDQo+IEFsbG93aW5nIGJvYXJk
LXNwZWNpZmljIHRyaXAgcG9pbnRzIHNvdW5kcyBsaWtlIGEgdmFsaWQgcmVxdWVzdCwgYnV0IEkg
c3RpbGwgdGhpbmsNCj4gd2UgbmVlZCBhIHdheSB0byBoYW5kbGUgdGhlIHRlbXBlcmF0dXJlIGdy
YWRpbmcgaW4gdGhlIGRyaXZlciBpZiBubw0KPiBib2FyZC1zcGVjaWZpYyB0cmlwLXBvaW50cyBh
cmUgZ2l2ZW4uDQo+IA0KPiBXaGF0IGlmIHdlIGp1c3Qgc2V0IHRoZSB0ZW1wZXJhdHVyZSBwcm9w
ZXJ0eSBpbiB0aGUgdHJpcCBub2RlcyBpbiBpbXg4bW0uZHRzaQ0KPiB0byB6ZXJvPyBUaGUgdGhl
cm1hbCBkcml2ZXIgd291bGQgZGV0ZWN0IHRoaXMgYW5kIHNldHVwIHRoZSBjb3JyZWN0IHZhbHVl
cw0KPiBhY2NvcmRpbmcgdG8gdGhlIGdyYWRpbmcuIElmIHRoZSBkdCBhbHJlYWR5IHByb3ZpZGVz
IG5vbi16ZXJvIHRlbXBlcmF0dXJlDQo+IHZhbHVlcyAodGhyb3VnaCB0aGUgYm9hcmQgZHRzKSB0
aGUgZHJpdmVyIHdpbGwganVzdCBsZWF2ZSB0aGUgdmFsdWVzIGFuZA0KPiBkaXNyZWdhcmQgdGhl
IGdyYWRpbmcuDQo+IA0KPiBJIHRoaW5rIHRoaXMgc29sdXRpb24gd291bGQgYmUgY292ZXJpbmcg
YWxsIG5lZWRzLg0KDQpJIHRob3VnaHQgdG8gYWRkIHRoZSBncmFkaW5nIGNoZWNrIGluIHRoZSBp
bXg4bW1fdGhlcm1hbC5jIHRvIGR5bmFtaWNhbGx5IHNldCB0aGUgdHJpcCBwb2ludHMNCnRlbXAs
IGJ1dCBpdCBzZWVtcyBoYXJkIHRvIGRvIGl0IGR1ZSB0byB0aGUgZmFjdCBvZl90aGVybWFsIGlz
IHVzZWQsIGFzIG5vIGhlbHBlciBBUEkgaXMgZXhwb3J0ZWQgYnkNCm9mX3RoZXJtYWwsIG5vIGJl
dHRlciB3YXkgdG8gb3ZlcnJpZGUgdGhlIHRyaXAgcG9pbnQgdGVtcC4NCg0KZ2xhZCB0byBzZWUg
YW55IGdvb2Qgc3VnZ2VzdGlvbnMuDQoNCkJSDQpKYWNreSBCYWkgDQoNCg==

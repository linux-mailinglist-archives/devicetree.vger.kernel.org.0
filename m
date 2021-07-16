Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6F9363CB0A7
	for <lists+devicetree@lfdr.de>; Fri, 16 Jul 2021 04:03:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230523AbhGPCGl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jul 2021 22:06:41 -0400
Received: from mail-eopbgr80084.outbound.protection.outlook.com ([40.107.8.84]:25764
        "EHLO EUR04-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S230417AbhGPCGk (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 15 Jul 2021 22:06:40 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=irjgrwKW35q7xymCa/RNzsjkwcEodP6Ur7PND5/ydeYBA/z1Bd0CTqg9L82A1fp0kiXuHvDWYgnzg1JR1HSnlxQ1hd2grqKLm/zdEVk7csoRIo9ibraEEb6Gbot8+GFq+hF0eGyvoBayc2mtlVHCWycJuBXwm0SRd++r4/feN2Jcj7hFOjqmDYZfiuqolbW8CtS7c8LOScS2H8aqHboYF4g0cQEC5g4z+uh3bupp+iPOMWGgAvlbxvppZOOejoxfnc8g5ctZHW5DPdCAnkR4ddcsTcooLiRjilVa3DzW5LzOwPSyq+XfNYNKev34eYN3N/IRs87+Bu6AL6Fm9y/DGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=63j8yV0947CC8cs9DBa71ka3va65jEeABI+C9Wm7mEk=;
 b=m5YEaKxh6bizfxALKb7tiBlderQDFdQyo51Fq8IT+Nh0QboR8Ok2YM5OVjXsiQCFuIXKeL9+ZGfTYQ5fL6L6ARIFSDY9gbPdXWXCQl9S9+UvXKsIro8up52b+dYKFQpd2oEyuETezkelXnFbJJd8Rd3CxU9OIwbNDOFLxnwdtI0D5NvKaIkdt9dntxSjfxSNbXCJpOYVx0V0nZwzb9c8L9WFbrV3gqsYkwoSCsbMJMtpduflsEt3ckVZ3slhsvWtolWHGGaXRCpMovQwJyAc1mJl5PMxSuyN83U6pzwE3LipQvb4ps9QfZNDKRF8Wv7TFhgqRYArj6d+3BzcIeva4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=63j8yV0947CC8cs9DBa71ka3va65jEeABI+C9Wm7mEk=;
 b=sYSbrbzZ0XJLU6Cyp2fpVpSqQsdLQWBz1i6fc9xWgaazPZNjVDlyzCtZ5fpGqY9M95yJPkrk9v7XJG/lwp1RoB2PnekFhUNQnmvUGhtzpy+vObCqujmAMv9j1AgCUdPc1p3wB5h068ddP8etBdgpUMVge/yx6L+j0Rwpy+644Ww=
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB7PR04MB5129.eurprd04.prod.outlook.com (2603:10a6:10:1f::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.25; Fri, 16 Jul
 2021 02:03:44 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::9c70:fd2f:f676:4802]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::9c70:fd2f:f676:4802%9]) with mapi id 15.20.4331.021; Fri, 16 Jul 2021
 02:03:44 +0000
From:   Joakim Zhang <qiangqing.zhang@nxp.com>
To:     Marc Kleine-Budde <mkl@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
CC:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Sascha Hauer <kernel@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Aisheng Dong <aisheng.dong@nxp.com>
Subject: RE: [PATCH] arm64: dts: imx8mp: remove fallback compatible string for
 FlexCAN
Thread-Topic: [PATCH] arm64: dts: imx8mp: remove fallback compatible string
 for FlexCAN
Thread-Index: AQHXeW99DhOQxs5xtk2rV7Lk6P2enatD8BmAgAADKwCAAOJyYA==
Date:   Fri, 16 Jul 2021 02:03:44 +0000
Message-ID: <DB8PR04MB679527BB056BC918FE6D2E53E6119@DB8PR04MB6795.eurprd04.prod.outlook.com>
References: <20210715114953.24393-1-qiangqing.zhang@nxp.com>
 <CAOMZO5Dz1J01Auv5MXc+WajT4AaxHWKStw6RxX3_+LY+9wiimg@mail.gmail.com>
 <20210715121516.pjhbjhf6htds6n65@pengutronix.de>
In-Reply-To: <20210715121516.pjhbjhf6htds6n65@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5f1a62e0-1c6c-4524-993e-08d947fdf0dd
x-ms-traffictypediagnostic: DB7PR04MB5129:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB5129480C16D962762E2848E6E6119@DB7PR04MB5129.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: N6IqP8lUnrXJmb2Bl+4AvnHWUsxsZeYE41/wcqnehroK0zcDX9wwaJKxPBNfEodzVro/RpbK7N5glADux09aZ3F7F3qx54IArZXbu7h9WBLjafCwdlTYMBzfMwLLSxr2hywYOElUgrhKN0P/hIz3K34JumvEBwCE9iM/YJfN74sMqcDDuXWz4zea8l1NBKJ2H8rpOPiQeAT6LZyvP7SOw0L6Ui7FDJ7YmeXBBsgRPIWAvfkfZMXU/ICP+jjOEKyDD8aLKwu8KJqHTIGPQ0bLtQAGTHZx8dawj08wj2ftDc0Bd6QAdhU3I9SSiT/lxd/QOroXrC4ewFKZj4ybwbaoHQjPSbVxmnXroLI32jT8CfIx7w4CFgvSXyBiVcEi07dVzdOsc21myc7ulMxWB6ooJtCLP6h0tPVu4nCH+e+b6oY04g6yuTPULWLYH4NMVFHSA4S2AF/2bHmftihT85pvIlZ+pH8x+7M6wQYjuCzFzxrdwg3JvwNzoJ7acnD9DfjqPpYycNIiBwojqniPxfeXWHjCsf2fb49lxytWZ1pN7GVY5hmsvTn4xrhTbMS/NI7W1VbS9ZUdC3H6gXdIXoDosyBDXiY3YGtZr850r797Afyt7Q9P66W9SjKuOvBsrVbd38/fNQCUCAD598YGD8O1ja7fRPgACj9ggS8sGJei8JqHR6rKxvNnc/uD9WWJ4Smwpnt25RWRm899b2uFDIBF1MTE7VG53FSaL4A6ncISoSCbhlHOBHn4J+Dfrjnhmsg5wsLE+0hmSV1n9CUYicS0/d3E8aEq822B3csNMqTzVoK8crhvP+oiFYaPI2GaJW49
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6795.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(346002)(376002)(396003)(366004)(136003)(2906002)(86362001)(54906003)(8936002)(33656002)(110136005)(316002)(71200400001)(478600001)(76116006)(9686003)(966005)(55016002)(8676002)(53546011)(52536014)(6506007)(83380400001)(5660300002)(7696005)(66446008)(66946007)(66476007)(66556008)(64756008)(26005)(186003)(4326008)(38100700002)(122000001)(32563001)(38070700004);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MWJyK0lRandKRG4vNCtCdTZGYW1ZdGNvdFdGQS9ncEozaHZ2bFJ3V0lXeEti?=
 =?utf-8?B?K1JnM3BKdFVMMklRZEI1cXdZTmdXR3pPSXNKZUVWaEg4aUlOV3c4QmxSU0p4?=
 =?utf-8?B?SXVQTUF3bHA3SGxsb3pFaGhUSmJrWlFyTEkyM05BVUJYQndlMTFpMnExb0Ft?=
 =?utf-8?B?YjJ5a2FXNnZxQnRLVkU1UHdVcFRRY0pMclEzSE53dEUwcllNV3g5UXp4N0pL?=
 =?utf-8?B?RXdFL3V2eGJWekVYalQvOVY1TnhxbE0vb0dGQ3ZMaHZXdXhodHp1blpVVGRh?=
 =?utf-8?B?V0Q2ZlQ4K1hYeHd6TmFmKzh0bWVHeUpJSzNqOTJhZjFRTjllb1RNUGMyWkxP?=
 =?utf-8?B?eDl1WjJjdlBOSmhaK1luTUtJNm4zVGlQcHdZYmIrUFQwSkZhOWhmejZGekp5?=
 =?utf-8?B?aTMzQnNzT2xFMUdmMFRxcVQrdUdUUnRTNFpBSEJPSDQ1dEowWEYwNFpnc1hL?=
 =?utf-8?B?RmN5dm9YczRyM1BXNHB3d0o4SEdiMTZaMWlFUzJZWklTUytCYy9hWHFDYitj?=
 =?utf-8?B?OFk5ZzB1RmtIaGZud0dMU0lRK3Z0L1JFdDNUVTZzR2dSNjFaZGF6SGVENEtr?=
 =?utf-8?B?dEthdGxqQVVienhmTHhsMW1pWThyeGt6aUMrekdTbVdFelBmTXg1czZJMWRG?=
 =?utf-8?B?MzMzMGVVNnJIcVdmTllSZ1ZpU3lXMUtIdzViOStBMnZCYTJhZWZSWVdWWXRM?=
 =?utf-8?B?MDl5NmY0UTMvQWVEU3VEVnZGVUU1NjNSaG93SWRRZTJTRU4vbjY5VlF0eC9m?=
 =?utf-8?B?NHo1azdVZEhKR0dGSFdEZ1h1a2Z1bUNpazFDcUJzTGY2NUthV0xSSjFvV1BB?=
 =?utf-8?B?a3pEN3Z1UnR0cWgwbTRaMU1QeFZuSHlFYUdRS3pOTnNqNEp5M1UrWHNEbzQv?=
 =?utf-8?B?cnVXck9aZEU1TlpLODg0bmQ1WDRxejBOVDd6d1o2dzY4ZGtzZUhQd2U5YTI2?=
 =?utf-8?B?UjZxaDhHai9nVHZ1eTJSbnVyMU1vL3dGcmI5Q2c3WjJDWjdTMkcyTGJUbEN4?=
 =?utf-8?B?eFk3ZXNsUHEyekZSTnZNQXFyb3QvUUdSSk9HdnVJS0orVjFXWXgvNGkydVl0?=
 =?utf-8?B?dG5iVzhCNHF4azUwTEhxaHFYQWlxaStGVkQ4Qk1iWEUzZVZ0NmVpZmFPMWpj?=
 =?utf-8?B?Yy93R3Zyem5aMm1oaml4bkd2U2ltMEROZWlMSitmZVBaVWY3KzZDQTMxTzB1?=
 =?utf-8?B?eEpzMi8vNnhjT3pNdVBOQmQvekg2aFhjd1p2VkpOOWhyenlaTk9KbDBZL2k2?=
 =?utf-8?B?UGZpMUd4blFqcHJ1aUpNV2xYZlJ6cDZadyt4SUY3enN6d3JQeEZKQjBFdGYx?=
 =?utf-8?B?ODY2KzZjQm9KaEFxeDAvbXVzOFBhQlFyYzBDVHpSOG1pN2wrUGJFejdhK3BW?=
 =?utf-8?B?ZWdqWHBUcC96bGlFejFhN3I5UFo0a2tQWlAzZHV0VktBclVjbm9BVjg5UFcz?=
 =?utf-8?B?dmc4M0F3T2QvelBHK1Z2NzVFL2JPd2RVcllOTWhrSGE2NmplVGtnbE55bDhX?=
 =?utf-8?B?YzVrZHZGSG9CK2pqdmd0VHdKRmF0US9xT1BnZGltZnI3emlZbnpFQXIvWHAx?=
 =?utf-8?B?SVlhYkdyY1hkUlJWcmtmYXFMNi84bzJoaGtpYmhtNzBHb0MwZzNxbXFWR2d0?=
 =?utf-8?B?SDZuazV3VWJWdmsrNzBlVkRwOXBGbC9makJacVNadnJZRitzUlllYWc3MjVw?=
 =?utf-8?B?NHo4VHBJMkNyMllMcmVvb0MyRXZxdjlUQVp5RjBlVjNKRWZVb1lBT3VXMkVD?=
 =?utf-8?Q?DlXkq6fIb7KECB4IRU=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB6795.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f1a62e0-1c6c-4524-993e-08d947fdf0dd
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2021 02:03:44.1823
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dsR9N1WlPXt0GsDHs8XlbiWlGJxseDMtvhK32rm9oaR1rvI8AaKSKcjvGKyDHa1ZEVk/FJ1+EfnlHgf4/tTy1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5129
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DQpIaSBNYWMsIEZhYmlvLA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206
IE1hcmMgS2xlaW5lLUJ1ZGRlIDxta2xAcGVuZ3V0cm9uaXguZGU+DQo+IFNlbnQ6IDIwMjHlubQ3
5pyIMTXml6UgMjA6MTUNCj4gVG86IEZhYmlvIEVzdGV2YW0gPGZlc3RldmFtQGdtYWlsLmNvbT4N
Cj4gQ2M6IEpvYWtpbSBaaGFuZyA8cWlhbmdxaW5nLnpoYW5nQG54cC5jb20+OyBSb2IgSGVycmlu
Zw0KPiA8cm9iaCtkdEBrZXJuZWwub3JnPjsgU2hhd24gR3VvIDxzaGF3bmd1b0BrZXJuZWwub3Jn
PjsgU2FzY2hhIEhhdWVyDQo+IDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPjsgU2FzY2hhIEhhdWVy
IDxrZXJuZWxAcGVuZ3V0cm9uaXguZGU+Ow0KPiBkbC1saW51eC1pbXggPGxpbnV4LWlteEBueHAu
Y29tPjsgb3BlbiBsaXN0Ok9QRU4gRklSTVdBUkUgQU5EIEZMQVRURU5FRA0KPiBERVZJQ0UgVFJF
RSBCSU5ESU5HUyA8ZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc+OyBBaXNoZW5nIERvbmcNCj4g
PGFpc2hlbmcuZG9uZ0BueHAuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIXSBhcm02NDogZHRz
OiBpbXg4bXA6IHJlbW92ZSBmYWxsYmFjayBjb21wYXRpYmxlIHN0cmluZw0KPiBmb3IgRmxleENB
Tg0KPiANCj4gT24gMTUuMDcuMjAyMSAwOTowMzo1NSwgRmFiaW8gRXN0ZXZhbSB3cm90ZToNCj4g
PiBIaSBKb2FraW0sDQo+ID4NCj4gPiBPbiBUaHUsIEp1bCAxNSwgMjAyMSBhdCA4OjQ5IEFNIEpv
YWtpbSBaaGFuZyA8cWlhbmdxaW5nLnpoYW5nQG54cC5jb20+DQo+IHdyb3RlOg0KPiA+ID4NCj4g
PiA+IEZsZXhDQU4gb24gaS5NWDhNUCBpcyBub3QgZGVyaXZlZCBmcm9tIGkuTVg2USwgaW5zdGVh
ZCByZXN1ZXMgZnJvbQ0KPiA+ID4gaS5NWDhRTSB3aXRoIGV4dHJhIEVDQyBhZGRlZC4gV2l0aCAi
ZnNsLGlteDZxLWZsZXhjYW4iIGNvbXBhdGlibGUNCj4gPiA+IHN0cmluZywgaS5NWDhNUCBGbGV4
Q0FOIHdvdWxkIG5vdCB3b3JrLCBzbyByZW1vdmUgdGhpcyBmYWxsYmFjaw0KPiBjb21wYXRpYmxl
IHN0cmluZy4NCj4gPg0KPiA+IEkgYWdyZWUgd2l0aCB0aGUgcmVtb3ZhbCBvZiAiZnNsLGlteDZx
LWZsZXhjYW4iLCBidXQgSSBkb24ndA0KPiA+IHVuZGVyc3RhbmQgeW91ciBjb21tZW50IHNheWlu
ZyB0aGF0Og0KPiA+DQo+ID4gIldpdGggImZzbCxpbXg2cS1mbGV4Y2FuIiBjb21wYXRpYmxlIHN0
cmluZywgaS5NWDhNUCBGbGV4Q0FOIHdvdWxkIG5vdA0KPiB3b3JrIg0KPiA+DQo+ID4gV2h5Pw0K
PiANCj4gRG9uJ3QgcmVtZW1iZXIgZXhhY3RseSB3aHkgSXQgZG9lc24ndCB3b3JrLiBJIHRoaW5r
IGl0IHdhcyBhIG1pc3NpbmcgcXVpcmsgdGhhdA0KPiB0aGUgaW14NiBkb2Vzbid0IG5lZWQuDQoN
CkkgY291bGQgZXhwbGFpbiBtb3JlIGlmIEkgcmVtZW1iZXIgY29ycmVjdGx5LCBpLk1YOE1QIHdp
dGggRUNDIGFkZGVkIGFuZCBkZWZhdWx0IGlzIGVuYWJsZWQsIHdpdGhvdXQgRkxFWENBTl9RVUlS
S19ESVNBQkxFX01FQ1IgcXVpcmssDQpGbGV4Q0FOIGRvZXNuJ3Qgd29yaywgaXQgd2lsbCBwdXQg
ZGV2aWNlIGluIGZyZWV6ZSBtb2RlLiBIb3dldmVyLCBhcyBNYWMgZGVzY3JpYmVkLCBpLk1YNlEg
ZG9lc24ndCBuZWVkIGl0Lg0KDQo+ID4gImZzbCxpbXg4bXAtZmxleGNhbiIgaXMgcGFzc2VkIGFz
IHRoZSBtb3JlIHNwZWNpZmljIGNvbXBhdGlibGUgc3RyaW5nDQo+ID4gYW5kIGl0IHNob3VsZCBt
YXRjaCBhZ2FpbnN0IGl0IGZpcnN0Lg0KPiANCj4gQUNLIC0gYnV0IHdoeSBzcGVjaWZ5IHRoZSBp
bXg2IGluIHRoZSBjb21wYXRpYmxlIGxpc3QgaWYgdGhlIGZsZXhjYW4gSVAgY29yZSBpc24ndA0K
PiBjb21wYXRpYmxlIHdpdGggdGhlIG9uZSBvZiB0aGUgaW14Nj8NCg0KQmVzdCBSZWdhcmRzLA0K
Sm9ha2ltIFpoYW5nDQo+IHJlZ2FyZHMsDQo+IE1hcmMNCj4gDQo+IC0tDQo+IFBlbmd1dHJvbml4
IGUuSy4gICAgICAgICAgICAgICAgIHwgTWFyYyBLbGVpbmUtQnVkZGUgICAgICAgICAgIHwNCj4g
RW1iZWRkZWQgTGludXggICAgICAgICAgICAgICAgICAgfCBodHRwczovL3d3dy5wZW5ndXRyb25p
eC5kZSAgfA0KPiBWZXJ0cmV0dW5nIFdlc3QvRG9ydG11bmQgICAgICAgICB8IFBob25lOiArNDkt
MjMxLTI4MjYtOTI0ICAgICB8DQo+IEFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2IHwg
RmF4OiAgICs0OS01MTIxLTIwNjkxNy01NTU1IHwNCg==

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 989213AAF47
	for <lists+devicetree@lfdr.de>; Thu, 17 Jun 2021 11:03:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231382AbhFQJFl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Jun 2021 05:05:41 -0400
Received: from mail-eopbgr150050.outbound.protection.outlook.com ([40.107.15.50]:6036
        "EHLO EUR01-DB5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S230028AbhFQJFi (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 17 Jun 2021 05:05:38 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nGoxhIYG6m5cZhp3jtv/RM2XJkJioCt9gHl8fi7WZNNMLUkamsreYotVLsh4cp2d8Zrku8M0ZdwQRADYYjG6ouLwxegvKShvRHOK4ElFCI5do2FEcBzLxrJ3KoAffecEsUr1wzQc8hc7riTPNcOAiYFC9TggCyYrOx/WqGYPRb8EQxSAkRtg3odf8C7f7gqBR+8GxtWZuWHlgVt3ok4wbZcwgf1RFUxQFm/AHqSlFEyFsU7BWLpLosVUIYNFlGIowcT7hf8umoes7Vdo3DDy2rmDXhOBwxrI2L9+Gk9CknWwKnk9fTG1fpHj4JHiw+2PDkAui9b+iXrcbLPnE0wRug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AznxHAbs2LAlKGDrUFyNceZRUDG9hLPEq0isX4HR/nc=;
 b=MswqeUf+90ztvrbUbK8TBqCjXekgTfx9whG80x6NMnH0jZItin5/MMYDuOoOLlQYpt2bYFSWq8/vyMaph1kWT9cKsZDrQBkUhJNb0+8owsKGkZmJDQ8ZFllQrqmIjz9oqwvsDAJjGFqxprVDuXiTwUZnRt3TxKAouoM2VEdkosXpqqtJoQX9hJ2HHRmgsOfg4zH07aUlLZ+7LJ0QDcsiWq48ocokahWTMiR9gZurhQFZqQVVth1/LxWyeXDQwVxkWrPashKCSL1JLxjkADK1GX33Vh0utCcwHHybvS5K3kXaG3MFExryqvOiWPQ8NqaLXgEyBqjetM8CwyforFf2nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AznxHAbs2LAlKGDrUFyNceZRUDG9hLPEq0isX4HR/nc=;
 b=ef3SnJfm70ow45Gb5dQ5PRQ7zIRzbUKmTReahYp+glTER9BeApmRK1VpEzm9skKcAR3Sr6j679p4SBPGz4rG9rX3ZZM6HnHOpxDd50chX+FyArWARX2c3M+ERKPlHNC+EE0vvNI1JgRyaKkWm7p7eM/BSnPydssd9RcRmKLSZ3o=
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.25; Thu, 17 Jun
 2021 09:03:29 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f%7]) with mapi id 15.20.4219.026; Thu, 17 Jun 2021
 09:03:29 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     Rob Herring <robh@kernel.org>
CC:     "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "sboyd@kernel.org" <sboyd@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
        Aisheng Dong <aisheng.dong@nxp.com>,
        "festevam@gmail.com" <festevam@gmail.com>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH 10/11] arm64: dts: imx8ulp: Add the basic dtsi file for
 imx8ulp
Thread-Topic: [PATCH 10/11] arm64: dts: imx8ulp: Add the basic dtsi file for
 imx8ulp
Thread-Index: AQHXW3dhtwkR0OiIlUGYwWN82zQfNasXXiiAgACYhkA=
Date:   Thu, 17 Jun 2021 09:03:29 +0000
Message-ID: <DBBPR04MB7930670926DD2CB2A474DDAD870E9@DBBPR04MB7930.eurprd04.prod.outlook.com>
References: <20210607083921.2668568-1-ping.bai@nxp.com>
 <20210607083921.2668568-11-ping.bai@nxp.com>
 <20210616235137.GA311711@robh.at.kernel.org>
In-Reply-To: <20210616235137.GA311711@robh.at.kernel.org>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6e8addd7-7994-4d7c-c4c3-08d9316ec65a
x-ms-traffictypediagnostic: DBBPR04MB7930:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DBBPR04MB79308DC2B36BACFE111D84EA870E9@DBBPR04MB7930.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: krGlNItrsJgn2Beo3omAgMVNKssaibOgHthxpLyfNfYGpWM5Ywd/6MNcswXo7hyvJG+AncTAeOI9HRUZDf4hsddLeUt4Sh/Pol/Q1HlF3c9tOiYcGEcxpU+OqF4w9LysNWrY6wz6BmxpIu81hQuihge2fheE6XwUTqdGs55XWnbrEF/VQ4S1swTZxg3jNbgsXWK/O+kLpQjOxBldmTjqG9AiOKZr1u0QQ9+Mp5p0xZdIyeoXpQxtahnlVf0n+ZSCdq0sZBUvfyv8v19bdNSwUjW2vyGz2i5ejCOpJpWX1Nb6uHg5+zUiHDgQM+PaH//EwcyBXugnq+Rjhbd0PIWqZPs9mbrpHdvEuW/MfnCmNUnbWXyuY3Ah01Or7Lsolsz6zJueBTrpu0myWuBMewsX3vFUMCRYY//93/X1z7vYQ+fpLUD+DxxgyWwJbsJYcYKYSbpgmsvW/nOrsDZr0Q5PxBAVuvwUFTRWf52t63ED/HXu9rmQcoKgjnJfDRyAAsN0SvlVlGGEvn6SpwVYhDvZ7a0KJPkAR3ilwhk/bJqZBiFkGlKwnt4EmfxXJOMjhP9W8vS2V0WbbZC+uo5+spYmW51Qt/vUKCMJLUksBJ1QufG08lt06n2R9iVfU1jwE6VGF1DSiM78q5BTwzz57b5fgg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(376002)(136003)(39860400002)(366004)(8676002)(76116006)(33656002)(66556008)(64756008)(66476007)(7696005)(4326008)(8936002)(66446008)(66946007)(54906003)(71200400001)(52536014)(478600001)(5660300002)(316002)(122000001)(86362001)(55016002)(2906002)(26005)(186003)(83380400001)(6916009)(38100700002)(6506007)(9686003)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UFRmYmZCUTlWWnAzNSttYlFGYWk3ekx3ZzhTTHFDaldVZCtCWTBRRjhISDVL?=
 =?utf-8?B?eGNrMzBYUU9uZ0Q0aUlJbFNWeGh4OGZRL3Z3U0tTMllmL2tyTktzQnk1V3cr?=
 =?utf-8?B?Z2g0UXgvSUdQcXg1aDdJdHdYbzRMOENkSGlRcGQweFNFZGZFWVZXb2dXQUxT?=
 =?utf-8?B?Sy9FUDdQRENBY3ptZWFib016R25uYnJxN25CT0pheVV5QzFsZXkxaG1wWjE2?=
 =?utf-8?B?MUppeDM0SVdjWmpzK1BoRjhzeXE2b1BrSXJJd0c5S01QQmN4UkkwYklXbHd1?=
 =?utf-8?B?YlVHazRnVXhXYlB0enVmWWVORjdyVGNxRnRVa0JPZ28rU29vdTJSNU9qK05q?=
 =?utf-8?B?aUVETEp1d2xMSzBmOTlpSW9NWkRZQ1RBSzdRY1lkVWhkb21uM1oyQjVsUzBJ?=
 =?utf-8?B?NFNnT0FqeWtUZ0NsbjlqQmxuNXhIb2xMellqWVZVL0k2eDQyWWE2dkJmZjR6?=
 =?utf-8?B?a0VKV0l0clFaeVZWS0llTVZrb1hNd2Q0L0tRVHNqR3IrYkpVUGNSdnZJbFJQ?=
 =?utf-8?B?UHF2MFhQQXVpWWxpaTd3b3laTXNwd3VUZnp5TG1GNkIySXpaVUYrUzZ2ZkZ2?=
 =?utf-8?B?Yk1MS0t6RTlUQ2xkd2dtVlcwRHlyN0ZPQUJyM2hhRWpiTnA0OXVEUEZTemRH?=
 =?utf-8?B?cnRjQTBsRnlUOTdxR1lUVzRKQ2dVbFdZWW9sR3prSHdxUlU1MEJ1NmlnMGVj?=
 =?utf-8?B?MHNCYzF6WWRsQkdyVE4veE9EbjIxWTBqdVN5NVcwRkRsOUhRcmhrRGdkK3R6?=
 =?utf-8?B?U3JUbWVDbTRJNDRaYXFJRk0xaVlxd25YWFlic0k3TG5TU2g2cmY3YXI4eHdS?=
 =?utf-8?B?d1R0alhqdjh5UEg3OTA3ODJFTkdqV2ZiTUxKR2FPY0EydHBFQzJTeHhJbFdo?=
 =?utf-8?B?Smg5TW1QeUtQWjYzMWg1VkF4UDh1STE3SjRCRGJ2VE5ZVzhCdEFLSVJybG14?=
 =?utf-8?B?c0Fub2dnWkdibC8wMFN5Tnpyeko5eUFPaVdBSFpBV0ZhZFhlbi9oakp0b3pI?=
 =?utf-8?B?RGpSM2JGaHlFT0M4U2U2c3ZJRVR4SUVZVFYxcFhrc2tQZGxhREVoOTV3U1pl?=
 =?utf-8?B?T0ZaWTM4THYxM1VFUTBSQ1BJMHRFTURRTmpwcGF1c1JDdmRCOGFJSHVpZWtK?=
 =?utf-8?B?MjZMcmVwT3lsZ21EV25rMnd3UVhrVEdxV1dTdUovZHk0TVRFRTdlRG5pM2l1?=
 =?utf-8?B?NTVDM3lZYzdESStyeC9ld0YzUmFZZE9TVkpXa0dKalh4WXNwVXdyNGRHbkV4?=
 =?utf-8?B?Y1lhNUt4dzdRampDdUM5Q2UyUm1Vc0JYdmFkd3B1Z21ENnNUeG1ra1MrdDFi?=
 =?utf-8?B?cmYrTTJqOXpURWoxTVg5N2NtUEh3RUJtdlM2ZThMZ3pSN29obnEwUzR1RFk5?=
 =?utf-8?B?K3RaL0hSWlJ1elAyNHcxNlFGY1M2MXJ5Rlh5R0xKQnRUUTJlemdqemNKUFUv?=
 =?utf-8?B?NEVaa1dkdGhlN1ZLZUtITkhRUDZKdFNiR21CbzNsNGdJT3ZjOUVPR1QvOW5p?=
 =?utf-8?B?OStwZjFmcU9DOXUzQmJRT1U3RlhVd053dy9DUDVESzQyTDUxRTBiMlQ1SE9P?=
 =?utf-8?B?WmdSZlVub1g2YU15dWVVRWZhU29TYld3bUZQM2RqM0lqL2VTcjVXaUNHQXRI?=
 =?utf-8?B?TFozN1p5NFVCaHM5bmFjWWN1YkthZC96dDdqWiswRHd2YXpXUE1IUEFEL2VH?=
 =?utf-8?B?VEJ1Qk1JWUhESnBFTGxIVGQvSk8yQWs1ZGpRYUdLaGhycXQwanpaN3lYQkZM?=
 =?utf-8?Q?5TIvmLJk7UIKBBhT084Rgt257ip5lYwj8Z3NM4U?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e8addd7-7994-4d7c-c4c3-08d9316ec65a
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2021 09:03:29.2422
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xN0fLKFmavOYopOI/dagXjqWEv5pRx8jkbjGhYzOZZabyWF5GG2ASjiUzH+Ryh+rNbk7CkuIAxcniwLQj6v6Ww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7930
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

PiBTdWJqZWN0OiBSZTogW1BBVENIIDEwLzExXSBhcm02NDogZHRzOiBpbXg4dWxwOiBBZGQgdGhl
IGJhc2ljIGR0c2kgZmlsZSBmb3INCj4gaW14OHVscA0KPiANCj4gT24gTW9uLCBKdW4gMDcsIDIw
MjEgYXQgMDQ6Mzk6MjBQTSArMDgwMCwgSmFja3kgQmFpIHdyb3RlOg0KPiA+IEFkZCB0aGUgYmFz
aWMgZHRzaSBzdXBwb3J0IGZvciBpLk1YOFVMUC4NCj4gPg0KPiA+IGkuTVggOFVMUCBpcyBwYXJ0
IG9mIHRoZSBVTFAgZmFtaWx5IHdpdGggZW1waGFzaXMgb24gZXh0cmVtZSBsb3ctcG93ZXINCj4g
PiB0ZWNobmlxdWVzIHVzaW5nIHRoZSAyOCBubSBmdWxseSBkZXBsZXRlZCBzaWxpY29uIG9uIGlu
c3VsYXRvcg0KPiA+IHByb2Nlc3MuIExpa2UgaS5NWCA3VUxQLCBpLk1YIDhVTFAgY29udGludWVz
IHRvIGJlIGJhc2VkIG9uIGFzeW1tZXRyaWMNCj4gPiBhcmNoaXRlY3R1cmUsIGhvd2V2ZXIgd2ls
bCBhZGQgYSB0aGlyZCBEU1AgZG9tYWluIGZvciBhZHZhbmNlZA0KPiA+IHZvaWNlL2F1ZGlvIGNh
cGFiaWxpdHkgYW5kIGEgR3JhcGhpY3MgZG9tYWluIHdoZXJlIGl0IGlzIHBvc3NpYmxlIHRvDQo+
ID4gYWNjZXNzIGdyYXBoaWNzIHJlc291cmNlcyBmcm9tIHRoZSBhcHBsaWNhdGlvbiBzaWRlIG9y
IHRoZSByZWFsdGltZQ0KPiA+IHNpZGUuDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBKYWNreSBC
YWkgPHBpbmcuYmFpQG54cC5jb20+DQo+ID4gLS0tDQo+ID4gIC4uLi9ib290L2R0cy9mcmVlc2Nh
bGUvaW14OHVscC1waW5mdW5jLmggICAgICB8IDk3OA0KPiArKysrKysrKysrKysrKysrKysNCj4g
PiAgYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OHVscC5kdHNpICAgIHwgNDc0ICsr
KysrKysrKw0KPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDE0NTIgaW5zZXJ0aW9ucygrKQ0KPiA+ICBj
cmVhdGUgbW9kZSAxMDA3NTUgYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OHVscC1w
aW5mdW5jLmgNCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJl
ZXNjYWxlL2lteDh1bHAuZHRzaQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvZnJlZXNjYWxlL2lteDh1bHAtcGluZnVuYy5oDQo+ID4gYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL2ZyZWVzY2FsZS9pbXg4dWxwLXBpbmZ1bmMuaA0KPiA+IG5ldyBmaWxlIG1vZGUgMTAwNzU1
DQo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi5mYWE3MDI2MzRhMzgNCj4gPiAtLS0gL2Rldi9udWxs
DQo+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OHVscC1waW5mdW5j
LmgNCj4gPiBAQCAtMCwwICsxLDk3OCBAQA0KPiA+ICsvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmll
cjogR1BMLTIuMCsgKi8NCj4gDQo+IA0KPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL2ZyZWVzY2FsZS9pbXg4dWxwLmR0c2kNCj4gPiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJl
ZXNjYWxlL2lteDh1bHAuZHRzaQ0KPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+ID4gaW5kZXgg
MDAwMDAwMDAwMDAwLi40NjljMmRjZDQ2MzYNCj4gPiAtLS0gL2Rldi9udWxsDQo+ID4gKysrIGIv
YXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OHVscC5kdHNpDQo+ID4gQEAgLTAsMCAr
MSw0NzQgQEANCj4gPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wKyBPUiBN
SVQpDQo+IA0KPiBIb3cgY2FuIEkgdXNlIE1JVCB3aGVuIEdQTCBvbmx5IGhlYWRlciBpcyBpbmNs
dWRlZD8gRHVhbCBsaWNlbnNlIHRoZSBoZWFkZXINCj4gcGxlYXNlLg0KPiANCg0KT2ssIHdpbGwg
YWRkIER1YWwgbGljZW5zZSBpbiB0aGUgYWJvdmUgZmlsZS4NCg0KPiBBbmQgTlhQIGlzIGdvb2Qg
d2l0aCBHUEx2MywgR1BMdjQsIGV0Yy4/DQoNCkl0IHNlZW1zIG5vIGZpbGUgdXNlIEdQTHYzIGlu
IGxhdGVzdCBrZXJuZWwsIEkgd2lsbCBrZWVwIHVzZSBHUEx2MiBmb3Igbm93LCBpcyBpdCBvaz8N
Cg0KQlINCkphY2t5IEJhaQ0KPiANCj4gPiArLyoNCj4gPiArICogQ29weXJpZ2h0IDIwMjEgTlhQ
DQo+ID4gKyAqLw0KPiA+ICsNCj4gPiArI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2Nsb2NrL2lteDh1
bHAtY2xvY2suaD4NCj4gPiArI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2dwaW8vZ3Bpby5oPg0KPiA+
ICsjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvYXJtLWdpYy5oPg0K
PiA+ICsNCj4gPiArI2luY2x1ZGUgImlteDh1bHAtcGluZnVuYy5oIg0K

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 37BED3F53ED
	for <lists+devicetree@lfdr.de>; Tue, 24 Aug 2021 01:59:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233263AbhHWX7o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Aug 2021 19:59:44 -0400
Received: from mail-db8eur05on2052.outbound.protection.outlook.com ([40.107.20.52]:41566
        "EHLO EUR05-DB8-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S233260AbhHWX7n (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 23 Aug 2021 19:59:43 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nplrBl9IyyOB/l6pJHLvf93jEcQ4p0jO+1Bf0nV79adD4WLY22fTPf0bGDeiYmt5I6wNSxTVDaWn9DqPI+OEqli1/2sR1EQ0uhdnpUi5BDkw2kHM+CuMAqjGzcH9cKWBXuy2nUzjWguP5VlcksClUmxS4R3RhkOFDUC3eEHhKOR9rnavfcLIRvVs1XlRkFLExo7f1rrT1aijxGjsVvoY2TvUxDAQ1fZYrpVtx+dpg4dBVbE4b8khPT84vxfLmrPrXWI/xb+DQrfGRKpw/CtCOVrBuGskU/TNO0WmqipsVWPxTLOvRcRnoyYZC57SttmgGnLLY8BaZx3Iqkeg2yLW7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ktvGrOhaOsEQOvav/iq+B5QkoVDKPnh31ku4z9YyvMU=;
 b=gB/mxsZUsZXHDU5WWY2xPQSR1NwK064M+86bfqlZZEQjUw4CN2JelM2k69AEuyEP/OmdrXuS/fPJcrKbtACM2E3DBLoJuwwhTqtkdNRCP3WjpH7oAQnScDc5XOAylvOszxqFBaBzWNsOkTcxaHSRikTuqICnwy/RRZYwGiClXLZ2l6SB4uU9CCJ2Z8YSRXOVD7aLR38mm4dNIBPEFQ3RI/PIqAB/w0AGYX45vDCKxmiqkbK9nnGSZ1OtBEuxAVCeKj3QAPAKxykPl+pQWNhB7ZQ3q2c9JXq9EyGf9xXy8GRU4EwDrfdRiy6p6yjltfWR2u+TiWzntkiATSR+o1d7Dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ktvGrOhaOsEQOvav/iq+B5QkoVDKPnh31ku4z9YyvMU=;
 b=qnQdsEvpzE+VGpi4s+BWJ3VfrH5t2Z/BmAwa5ER5Sr3ynM/IoCj1NrQct1PCNF49dYqQ9ThBZDPTAOKfcoZi7e6dV7HeB8ilauU2eKAiGSlAy8p5NrlWtR8OXigfEyOsC4Ra/9THBUyeg2/zcCg8kVr8uNfNZPy+e9ZaI0q8Vfc=
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DB8PR04MB6619.eurprd04.prod.outlook.com (2603:10a6:10:108::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19; Mon, 23 Aug
 2021 23:58:53 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::20b9:1038:c018:97db]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::20b9:1038:c018:97db%7]) with mapi id 15.20.4436.025; Mon, 23 Aug 2021
 23:58:53 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     Philipp Zabel <p.zabel@pengutronix.de>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        Abel Vesa <abel.vesa@nxp.com>,
        "sboyd@kernel.org" <sboyd@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
CC:     "kernel@pengutronix.de" <kernel@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: RE: [PATCH v2 9/9] clk: imx: Add the pcc reset controller support on
 imx8ulp
Thread-Topic: [PATCH v2 9/9] clk: imx: Add the pcc reset controller support on
 imx8ulp
Thread-Index: AQHXja+CkJfX/ecE4U+31k62gsHBS6uBBz6AgADRfCA=
Date:   Mon, 23 Aug 2021 23:58:53 +0000
Message-ID: <DBBPR04MB7930A3180885701E13D34F1487C49@DBBPR04MB7930.eurprd04.prod.outlook.com>
References: <20210810062820.1062884-1-ping.bai@nxp.com>
         <20210810062820.1062884-10-ping.bai@nxp.com>
 <197a021684ea01ba50b3ab86f71525878042a8ee.camel@pengutronix.de>
In-Reply-To: <197a021684ea01ba50b3ab86f71525878042a8ee.camel@pengutronix.de>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4023de2c-f8af-40cc-d78f-08d96691f5e7
x-ms-traffictypediagnostic: DB8PR04MB6619:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB661985B641BC9033743805FE87C49@DB8PR04MB6619.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:962;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QhXfTN9CmdwMoag44lYD1dwcbivFQqhtLwXwtxvQ+FR8GkgZJqhpyykIQ41Tk/d1TlGNPe9zT+BKmCwV85R19pmZkCav/+omyyxNKDulqR/72wjG9Z+EmepAFUABx98sB0Bo5CWI1cM2N28YaTfmVcc6yczxgW2ebWPyQT7nqcaecsw40/bhzI6WeTB0iCuUBcxT/RfihnAIxsWcGrHz0PQI7P26dFizkMvVHvJVJ3Zwh0lokp1eAEKFaLAsxR47bm2lySEtbYcg5UtqftiGwPchaB5Jp+pAh9u0+ksbBsg6M7NBUCXMic1tbZYKfpEj6F0K+ueq8LN172OWBXm1wJ8RIyWXhvOBcV+lflEvh8YGPb1oO5UekFlA2MD5mfH+37RKFkcBfItz4GXBNIFBkkreQ4AUDKcp/Gg77WA0MP8KrFYF4g3jE6HdoNB4EQzEEFwWRkFKoM2isb76gA19b5Q/w0Jqbk1NfRthWQhj4frCeqwdldfQoN6vfsAB2x6avs3YS1PSBDAZnJ4UT+kWMXSwh8iphB9mfMzpF9siX32r+Qun67Zzl7QFiUNTOWHgwE6JBaA6YSAeSaZ/j7AViYb3XXxhwnXUehGdSmkaipuzzJxC2GzzLwNzVYX3N1JWJUtIks68+GCvifk4T9PV/n/n3PMbcxG/GcWKBt3E9XUdlMazPb9xI5/uQPctQtl8OqAS+hRAuCgqm+LbiWOnC665LIteR/xz+nzfvhta45g=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(66946007)(86362001)(38100700002)(66476007)(66556008)(83380400001)(64756008)(122000001)(6506007)(76116006)(316002)(2906002)(4326008)(33656002)(8676002)(9686003)(66446008)(5660300002)(186003)(508600001)(110136005)(71200400001)(26005)(54906003)(38070700005)(55016002)(8936002)(52536014)(7696005)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TEhzM1JjL1I1TWh1YnBER0MvSUVHVTUvWnk4bTVUR1pGSVpQek9VOFU3bHE2?=
 =?utf-8?B?Um52TkRxTHVOdklCUnJaUE12MWJFRit0YTJHUzA3Rm1EckJ4UjlWaGIwYkhn?=
 =?utf-8?B?YU1NMm1uSk5MOW8zMkdYOUxMQ0o2Z2FxQm50R09GUFQ0YnVROVY4VUtqaWZL?=
 =?utf-8?B?b2VIYVlxZUJmWW41WE1vaHJJZDlBbkxYN055bXhRWStTSjdHNzJtaEJkUGRF?=
 =?utf-8?B?aUNVaHhwVEkvWU5iaitaaEZ6bWJNUVdwSnNkaE1uT1NDdWZJZzk1dEx6czNW?=
 =?utf-8?B?OTg3c1l2S0RmRGlkbUF2OEdmY1BpT09sZEJhN0ZoTE9DMnlYazk4SmE4OHRL?=
 =?utf-8?B?L2pldzNTa2ZxbGE0TzNxRCtsTmVKQXVBc0JQaU9qRzFZeEVjb3FZZzFVTEtP?=
 =?utf-8?B?d3FqQlNXNEVOdS9hUkYyZXZsK0N6SU5yZDlkZERIR3Z3SnNjTUVkOVV2YVhu?=
 =?utf-8?B?aWtjRjNRRjloaGlxQ3FlMFRJODAwb1JoOWRoYStDZjgzWWZPdDAvbmQ5N3dZ?=
 =?utf-8?B?M2k1bk9wU3pCMEZVeFJzR052OGt0OVR3a1pjZzB0TVZ6N1J0dDhVRjRSbG5z?=
 =?utf-8?B?THBndFhxSmRGa0NsSWJOVGJQUUd2SXgyWk1UV1k1TXBhdm1JcjJLR1FuWXhu?=
 =?utf-8?B?UThzelhJMWxuZHZhYzJQWER0YUVvZVdBekdtRCtJNUNwTHF0Nm1Ldzh1VjZL?=
 =?utf-8?B?QzdmZCtpaHl2Y2VSZVNvUVp4b2ZiTFRzTWZJaEdFWVRSU2tNTUwxNjVIeFZM?=
 =?utf-8?B?NzBjaTh0cml5Q1VWays1SVlWYm1VclJZWm4vakQ1WW52MlZ4NXdhWGo1SEJ3?=
 =?utf-8?B?NlAwZFlpa1hVNm1zeFBiamZ3R2U2YjJUcmNpWWdZUW5mSk9HNUoveXcwUWRn?=
 =?utf-8?B?MWJtbzIyUVZBakdnRWxVMVZOWEIzSkNtMHVTWlU1Sld2eXZEKzFqRG8rWmtx?=
 =?utf-8?B?QmVxbXhWYTI2QWQrWTczUFF0MnVjR2J0UUZOcEswMkQwbTVsbjZyS2l1SVJi?=
 =?utf-8?B?L01KUVhZMnVEdlN2WVc1THk0U2ZWb29FUlhoWGZRT2ljM0owY1J2V3BramZL?=
 =?utf-8?B?WFdVVnBJZHRNRUZ4Skw3Ty8yVjc3UkVYOGRoNmpoMHlwR1BGZDBBTlArcWQz?=
 =?utf-8?B?OVVVL09RTmpaOFVGTEo3QTZUR3pmWVZaUDM1dURTQmM4T3c0QzVEaEVkV1Iw?=
 =?utf-8?B?Mm1DV0ppL2JLODQwcUZxUW1ReU9sbEF4RHV3ZEIwNE40bk5uRmVZL0dvYnhr?=
 =?utf-8?B?bzIrU0hHZWx5L3NzM3F5V1orQitPV2MwQVJmRExPYTRJcTRic0NDYmllcFNV?=
 =?utf-8?B?NmxicStReE5ObXhrTHRpc3FMV2xsaTVyc0VnOHFnbHMxMU13ZHFSYzA5VnJ3?=
 =?utf-8?B?L3lNdU56MnlsWStBNWYxdFhzTW9NZkc4dGJSWllFYTRJeDh1V3ZQNFc1SUh0?=
 =?utf-8?B?Zytsb0VMZ2I3QXJtU3lNdThiYTNLOWE5Q0VSdU9ZZ3JjbUgwYWVOcyt6RUVi?=
 =?utf-8?B?Y3NHamlXQnZFZWw3NFBlM0hvcGVoOVBNYnNpbzgrRUFQZ1lMODI2VklxS2Vn?=
 =?utf-8?B?Tk9DZzNUQk9rWkVOL1U5czNIZWZFeUpmNlFkeUlnQ3Q1L1REUmRQWGhRZWZ3?=
 =?utf-8?B?YU5tY0N1cnJVTlAyenYvTGI5bjYzSWxPM1p1aGlyWWVkek4wcEgyNU55RDYw?=
 =?utf-8?B?MVlxL0lZQzd4MndoTFRPblNxaWJhZmswUFpsS2loSUFRbFQ4Wm1YaEZrREZk?=
 =?utf-8?Q?Id0ZDCedmbc+SVlatXR5oBmLee7CE/U4KpXLjhk?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4023de2c-f8af-40cc-d78f-08d96691f5e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Aug 2021 23:58:53.1070
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bjdnvUQaOJWvO73D09d0ZovEA8Bocz/hKASj7eVwnfl8PisFrIaaopJIhmt9cGyEkW7B/nB2T3rfdIkT+F1qBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6619
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

PiBTdWJqZWN0OiBSZTogW1BBVENIIHYyIDkvOV0gY2xrOiBpbXg6IEFkZCB0aGUgcGNjIHJlc2V0
IGNvbnRyb2xsZXIgc3VwcG9ydCBvbg0KPiBpbXg4dWxwDQo+IA0KPiBIaSBKYWNreSwNCj4gDQo+
IE9uIFR1ZSwgMjAyMS0wOC0xMCBhdCAxNDoyOCArMDgwMCwgSmFja3kgQmFpIHdyb3RlOg0KPiA+
IE9uIGkuTVg4VUxQLCBmb3Igc29tZSBvZiB0aGUgUENDcywgaXQgaGFzIGEgcGVyaXBoZXJhbCBT
VyBSU1QgYml0DQo+ID4gcmVzaWRlcyBpbiB0aGUgc2FtZSByZWdpc3RlcnMgYXMgdGhlIGNsb2Nr
IGNvbnRyb2xsZXIuIFNvIGFkZCB0aGlzIFNXDQo+ID4gUlNUIGNvbnRyb2xsZXIgc3VwcG9ydCBh
bG9uZ3Mgd2l0aCB0aGUgcGNjIGNsb2NrIGluaXRpYWxpemF0aW9uLg0KPiA+DQo+ID4gdGhlIHJl
c2V0IGFuZCBjbG9jayBzaGFyZWQgdGhlIHNhbWUgcmVnaXN0ZXIsIHRvIGF2b2lkICBhY2Nlc3Np
bmcgdGhlDQo+ID4gc2FtZSByZWdpc3RlciBieSByZXNldCBjb250cm9sIGFuZCBjbG9jayBjb250
cm9sIGNvbmN1cnJlbnRseSwgbG9ja2luZw0KPiA+IGlzIG5lY2Vzc2FyeSwgc28gcmV1c2UgdGhl
IGlteF9jY21fbG9jayBzcGlubG9jayB0byBzaW1wbGlmeSB0aGUgY29kZS4NCj4gPg0KPiA+IFN1
Z2dlc3RlZC1ieTogTGl1IFlpbmcgPHZpY3Rvci5saXVAbnhwLmNvbT4NCj4gPiBTaWduZWQtb2Zm
LWJ5OiBKYWNreSBCYWkgPHBpbmcuYmFpQG54cC5jb20+DQo+ID4gLS0tDQo+ID4gICB2MiBjaGFu
Z2VzOg0KPiA+ICAgICAtIGFkZCAnU3VnZ2VzdGVkLWJ5JyBhcyBzdWdnZXN0ZWQgYnkgVmljdG9y
IExpdQ0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2Nsay9pbXgvS2NvbmZpZyAgICAgICAgICAgICAg
fCAgIDEgKw0KPiA+ICBkcml2ZXJzL2Nsay9pbXgvY2xrLWNvbXBvc2l0ZS03dWxwLmMgfCAgMTAg
KysrDQo+ID4gIGRyaXZlcnMvY2xrL2lteC9jbGstaW14OHVscC5jICAgICAgICB8IDExNQ0KPiAr
KysrKysrKysrKysrKysrKysrKysrKysrKy0NCj4gPiAgMyBmaWxlcyBjaGFuZ2VkLCAxMjMgaW5z
ZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2Nsay9pbXgvS2NvbmZpZyBiL2RyaXZlcnMvY2xrL2lteC9LY29uZmlnIGluZGV4DQo+ID4gYjgx
ZDY0MzdlZDk1Li4wZDFlM2E2YWMzMmEgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9jbGsvaW14
L0tjb25maWcNCj4gPiArKysgYi9kcml2ZXJzL2Nsay9pbXgvS2NvbmZpZw0KPiA+IEBAIC0xMDIs
NSArMTAyLDYgQEAgY29uZmlnIENMS19JTVg4UVhQICBjb25maWcgQ0xLX0lNWDhVTFANCj4gPiAg
CXRyaXN0YXRlICJJTVg4VUxQIENDTSBDbG9jayBEcml2ZXIiDQo+ID4gIAlkZXBlbmRzIG9uIEFS
Q0hfTVhDIHx8IENPTVBJTEVfVEVTVA0KPiA+ICsJc2VsZWN0IFJFU0VUX0NPTlRST0xMRVINCj4g
DQo+IFRoaXMgc2hvdWxkbid0IGJlIHJlcXVpcmVkIGFueW1vcmUsIGRldm1fcmVzZXRfY29udHJv
bGxlcl9yZWdpc3RlcigpIGhhcyBhDQo+IHN0dWIgc2luY2UgY29tbWl0IDQ4YTc0YjExNDdmNyAo
InJlc2V0OiBBZGQgY29tcGlsZS10ZXN0IHN0dWJzIikuDQo+IA0KDQpTbyB3ZSBkb24ndCBuZWVk
IHRvIHNlbGVjdCAnUkVTRVRfQ09OVFJPTExFUicgZXhwbGljaXRseSwgcmlnaHQ/DQoNCj4gWy4u
Ll0NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvaW14L2Nsay1pbXg4dWxwLmMNCj4gPiBi
L2RyaXZlcnMvY2xrL2lteC9jbGstaW14OHVscC5jIGluZGV4IDZhYWQwNDExNDY1OC4uZWE1OTZj
ZDY4NTVhDQo+ID4gMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9jbGsvaW14L2Nsay1pbXg4dWxw
LmMNCj4gPiArKysgYi9kcml2ZXJzL2Nsay9pbXgvY2xrLWlteDh1bHAuYw0KPiA+IEBAIC05LDYg
KzksNyBAQA0KPiA+ICAjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+DQo+ID4gICNpbmNsdWRlIDxs
aW51eC9vZl9kZXZpY2UuaD4NCj4gPiAgI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2RldmljZS5o
Pg0KPiA+ICsjaW5jbHVkZSA8bGludXgvcmVzZXQtY29udHJvbGxlci5oPg0KPiA+ICAjaW5jbHVk
ZSA8bGludXgvc2xhYi5oPg0KPiA+DQo+ID4gICNpbmNsdWRlICJjbGsuaCINCj4gPiBAQCAtNDgs
NiArNDksOTggQEAgc3RhdGljIGNvbnN0IGNoYXIgKiBjb25zdCBuaWNfcGVyX2RpdnBsYXRbXSA9
IHsNCj4gPiAibmljX3Blcl9kaXZwbGF0IiB9OyAgc3RhdGljIGNvbnN0IGNoYXIgKiBjb25zdCBs
cGF2X2F4aV9kaXZbXSA9IHsNCj4gPiAibHBhdl9heGlfZGl2IiB9OyAgc3RhdGljIGNvbnN0IGNo
YXIgKiBjb25zdCBscGF2X2J1c19kaXZbXSA9IHsNCj4gPiAibHBhdl9idXNfZGl2IiB9Ow0KPiA+
DQo+ID4gK3N0cnVjdCBwY2NfcmVzZXRfZGV2IHsNCj4gPiArCXZvaWQgX19pb21lbSAqYmFzZTsN
Cj4gPiArCXN0cnVjdCByZXNldF9jb250cm9sbGVyX2RldiByY2RldjsNCj4gPiArCWNvbnN0IHUz
MiAqcmVzZXRzOw0KPiA+ICsJc3BpbmxvY2tfdCAqbG9jazsNCj4gDQo+IEknZCBhZGQgYSBjb21t
ZW50IHRvIHRoaXMgbG9jaywgc3RhdGluZyB0aGF0IGl0IGlzIHNldCB0byBpbXhfY2NtX2xvY2sg
YW5kDQo+IHByb3RlY3RzIGFjY2VzcyB0byByZWdpc3RlcnMgc2hhcmVkIHdpdGggY2xvY2sgY29u
dHJvbC4NCj4gDQoNCk9rLCB3aWxsIGFkZCBzb21lIGNvbW1lbnRzLCB0aHguDQoNCkJSDQpKYWNr
eSBCYWkNCg0KPiBXaXRoIHRoZXNlIGFkZHJlc3NlZCwNCj4gDQo+IFJldmlld2VkLWJ5OiBQaGls
aXBwIFphYmVsIDxwLnphYmVsQHBlbmd1dHJvbml4LmRlPg0KPiANCj4gcmVnYXJkcw0KPiBQaGls
aXBwDQo=

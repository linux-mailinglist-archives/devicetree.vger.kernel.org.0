Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0062B5DA84
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2019 03:15:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727036AbfGCBPO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Jul 2019 21:15:14 -0400
Received: from mail-eopbgr30078.outbound.protection.outlook.com ([40.107.3.78]:51268
        "EHLO EUR03-AM5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726150AbfGCBPO (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 2 Jul 2019 21:15:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2QMl4mn9XvnD+kNUZmZIixF2/Efto757pHwhMg3y+RU=;
 b=NmIEK1aDDH3GUda0fhjVROGxzim5bg4uBDtZbJXGEyIllfg/cYQ8Ao7xfNXMEck/a/UeUGn46FF9b0lGSBPvEbsxbOPthrvOVuu7dqbER4NiKenfNAfhZXlxShjbYFq4I9qzWn3g9HBFVvzKp2zJEiiWI4YAvPqTrYEMRvFOh54=
Received: from DB7PR04MB5178.eurprd04.prod.outlook.com (20.176.236.22) by
 DB7PR04MB4249.eurprd04.prod.outlook.com (52.135.131.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Wed, 3 Jul 2019 01:15:08 +0000
Received: from DB7PR04MB5178.eurprd04.prod.outlook.com
 ([fe80::2c71:9f2f:8db1:a290]) by DB7PR04MB5178.eurprd04.prod.outlook.com
 ([fe80::2c71:9f2f:8db1:a290%4]) with mapi id 15.20.2032.019; Wed, 3 Jul 2019
 01:15:07 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     Sudeep Holla <sudeep.holla@arm.com>
CC:     "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "festevam@gmail.com" <festevam@gmail.com>,
        Leonard Crestez <leonard.crestez@nxp.com>,
        Aisheng Dong <aisheng.dong@nxp.com>,
        Peng Fan <peng.fan@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        dl-linux-imx <linux-imx@nxp.com>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>
Subject: RE: [RESEND PATCH 2/3] soc: imx: Add power domain driver support for
 i.mx8m family
Thread-Topic: [RESEND PATCH 2/3] soc: imx: Add power domain driver support for
 i.mx8m family
Thread-Index: AQHVML1wLIWac2ockUGz1Qzhn3QBCKa3KweAgADk7KA=
Date:   Wed, 3 Jul 2019 01:15:07 +0000
Message-ID: <DB7PR04MB517878DA360BD39B82DF1AD487FB0@DB7PR04MB5178.eurprd04.prod.outlook.com>
References: <20190702100832.29718-1-ping.bai@nxp.com>
 <20190702100832.29718-3-ping.bai@nxp.com> <20190702110653.GA7329@e107155-lin>
In-Reply-To: <20190702110653.GA7329@e107155-lin>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ping.bai@nxp.com; 
x-originating-ip: [92.121.36.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f24eb2f2-3039-4926-16f5-08d6ff53e342
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);SRVR:DB7PR04MB4249;
x-ms-traffictypediagnostic: DB7PR04MB4249:
x-microsoft-antispam-prvs: <DB7PR04MB424942F67D507D60A92D695D87FB0@DB7PR04MB4249.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 00872B689F
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(396003)(346002)(376002)(136003)(39860400002)(366004)(13464003)(189003)(199004)(52314003)(229853002)(5660300002)(4326008)(3846002)(76176011)(52536014)(6116002)(9686003)(186003)(476003)(55016002)(6436002)(68736007)(81166006)(81156014)(8676002)(99286004)(66946007)(73956011)(8936002)(26005)(486006)(76116006)(446003)(53546011)(71190400001)(11346002)(7696005)(256004)(6506007)(14444005)(102836004)(71200400001)(66446008)(25786009)(6916009)(14454004)(86362001)(316002)(74316002)(54906003)(305945005)(7736002)(66066001)(33656002)(478600001)(6246003)(53936002)(64756008)(2906002)(66556008)(66476007);DIR:OUT;SFP:1101;SCL:1;SRVR:DB7PR04MB4249;H:DB7PR04MB5178.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: eGA8MvK5HkGzpu3Dftg8euki/dGF1pr1m9avYHjCoupWeH4kIRvPiZSbjfn+QZv/LMJjo94oLaOOiWhZkz5JAqVAmuluhV68EVueR4/Es/wSwPFd9ZViQ38+8hpGns/Fg4ahJ8x6MbzgcQ7e9+MRq6NHZvRV6Qb9QeN1mG20Vfbkb/Ti01eK/giqEwlW37zj4hg75v79UpE60gSI6THGfs3b6nZxk5mgQc+5LgURLRlvsD3fRa95ZoMmOhA+J0nYh8RR+hvuR+E1rRVzPVF+NoDXU3eGsCY+zyC4oj2B9j0AnpdKUpH71Uu+xR4fMHajhzVY/2VcXCMGsLDLpibMK8mQlqmcDMnXiRnWdnM5NkM5UiKVh4X/uiorOl/FlKNF4djiT6lmJ2qpZDvVUb0RL3AMVGWFuJ/DEpTr68h/jeU=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f24eb2f2-3039-4926-16f5-08d6ff53e342
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jul 2019 01:15:07.8692
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ping.bai@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4249
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBTdWRlZXAgSG9sbGEgW21haWx0
bzpzdWRlZXAuaG9sbGFAYXJtLmNvbV0NCj4gU2VudDogVHVlc2RheSwgSnVseSAyLCAyMDE5IDc6
MDcgUE0NCj4gVG86IEphY2t5IEJhaSA8cGluZy5iYWlAbnhwLmNvbT4NCj4gQ2M6IHJvYmgrZHRA
a2VybmVsLm9yZzsgbC5zdGFjaEBwZW5ndXRyb25peC5kZTsgc2hhd25ndW9Aa2VybmVsLm9yZzsN
Cj4gZmVzdGV2YW1AZ21haWwuY29tOyBMZW9uYXJkIENyZXN0ZXogPGxlb25hcmQuY3Jlc3RlekBu
eHAuY29tPjsgQWlzaGVuZw0KPiBEb25nIDxhaXNoZW5nLmRvbmdAbnhwLmNvbT47IFBlbmcgRmFu
IDxwZW5nLmZhbkBueHAuY29tPjsNCj4gZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7IGRsLWxp
bnV4LWlteCA8bGludXgtaW14QG54cC5jb20+Ow0KPiBrZXJuZWxAcGVuZ3V0cm9uaXguZGU7IFN1
ZGVlcCBIb2xsYSA8c3VkZWVwLmhvbGxhQGFybS5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUkVTRU5E
IFBBVENIIDIvM10gc29jOiBpbXg6IEFkZCBwb3dlciBkb21haW4gZHJpdmVyIHN1cHBvcnQNCj4g
Zm9yIGkubXg4bSBmYW1pbHkNCj4gDQo+IE9uIFR1ZSwgSnVsIDAyLCAyMDE5IGF0IDEwOjAzOjQ2
QU0gKzAwMDAsIEphY2t5IEJhaSB3cm90ZToNCj4gPiBUaGUgaS5NWDhNIGZhbWlseSBpcyBhIHNl
dCBvZiBOWFAgcHJvZHVjdCBmb2N1cyBvbiBkZWxpdmVyaW5nIHRoZQ0KPiA+IGxhdGVzdCBhbmQg
Z3JlYXRlc3QgdmlkZW8gYW5kIGF1ZGlvIGV4cGVyaWVuY2UgY29tYmluaW5nDQo+ID4gc3RhdGUt
b2YtdGhlLWFydCBtZWRpYS1zcGVjaWZpYyBmZWF0dXJlcyB3aXRoIGhpZ2gtcGVyZm9ybWFuY2UN
Cj4gPiBwcm9jZXNzaW5nIHdoaWxlIG9wdGltaXplZCBmb3IgbG93ZXN0IHBvd2VyIGNvbnN1bXB0
aW9uLg0KPiA+DQo+ID4gaS5NWDhNUSwgaS5NWDhNTSwgaS5NWDhNTiwgZXZlbiB0aGUgZnVydHVy
ZSBpLk1YOE1QIGFyZSBhbGwgYmVsb25nIHRvDQo+ID4gdGhpcyBmYW1pbHkuIEEgR1BDIG1vZHVs
ZSBpcyB1c2VkIHRvIG1hbmFnZSBhbGwgdGhlIFBVIHBvd2VyIGRvbWFpbg0KPiA+IG9uL29mZi4g
QnV0IHRoZSBzaXR1YXRpb24gaXMgdGhhdCB0aGUgbnVtYmVyIG9mIHBvd2VyIGRvbWFpbnMgJiB0
aGUNCj4gPiBwb3dlciB1cCBzZXF1ZW5jZSBoYXMgc2lnbmlmaWNhdGUgZGlmZmVyZW5jZSBvbiB0
aG9zZSBTb0NzLiBFdmVuIG9uDQo+ID4gdGhlIHNhbWUgU29DLiBUaGUgcG93ZXIgdXAgc2VxdWVu
Y2Ugc3RpbGwgaGFzIGJpZyBkaWZmZXJlbmNlLiBJdCBtYWtlcw0KPiA+IHVzIGhhcmQgdG8gcmV1
c2UgdGhlIEdQQ3YyIGRyaXZlciB0byBjb3ZlciB0aGUgd2hvbGUgaS5NWDhNIGZhbWlseS4NCj4g
PiBFYWNoIHRpbWUgYSBuZXcgU29DIGlzIHN1cHBvcnRlZCBpbiB0aGUgbWFpbmxpbmUga2VybmVs
LCB3ZSBuZWVkIHRvDQo+ID4gbW9kaWZ5IHRoZSBHUEN2MiBkcml2ZXIgdG8gc3VwcG9ydCBpdC4g
V2UgbmVlZCB0byBhZGQgb3IgbW9kaWZ5DQo+ID4gaHVuZHJlZCBsaW5lcyBvZiBjb2RlIGluIHdv
cnN0IGNhc2UuDQo+ID4gSXQgaXMgYSBiYWQgcHJhY3RpY2UgZm9yIHRoZSBkcml2ZXIgbWFpbnRh
aW5hYmlsaXR5Lg0KPiA+DQo+ID4gVGhpcyBkcml2ZXIgYWRkIGEgbW9yZSBnZW5lcmljIHBvd2Vy
IGRvbWFpbiBkcml2ZXIgdGhhdCB0aGUgYWN0dWFsDQo+ID4gcG93ZXIgb24vb2ZmIGlzIGRvbmUg
YnkgVEYtQSBjb2RlLiB0aGUgYWJzdHJhY3Rpb24gZ2l2ZSB1cyB0aGUNCj4gPiBwb3NzaWJpbGl0
eSB0aGF0IHVzaW5nIG9uZSBkcml2ZXIgdG8gY292ZXIgdGhlIHdob2xlIGkuTVg4TSBmYW1pbHkg
aW4NCj4gPiBrZXJuZWwgc2lkZS4NCj4gPg0KPiANCj4gVEYtQSBoYXMgU0NNSSBzdXBwb3J0LCB3
aHkgY2FuJ3QgdGhhdCBiZSB1c2VkIGFzIGFic3RyYWN0aW9uIGluc3RlYWQgb2YNCj4gaW52ZW50
aW5nIG5ldy4gUGVuZyBGYW4gaGFzIGJlZW4gd29ya2luZyB0byBnZXQgU01DIG1haWxib3guDQo+
IA0KPiBVbmxlc3MgeW91IGdpdmUgbWUgc3Ryb25nIHJlYXNvbnMgZm9yIG5vdCBhYmxlIHRvIHB1
cnN1ZSB0aGF0IHBhdGgsIE5BQ0sgZm9yDQo+IHRoaXMgcGF0Y2guIEkgaGF2ZSB0b2xkIHRoaXMg
aW4gdGhlIHJlY2VudCBwYXN0Lg0KPiANCg0KRm9yIHNvbWUgb2YgdGhlIHBvd2VyIGRvbWFpbnMs
IHdlIG5lZWQgdG8gaGFuZGxlIHRoZSBleHRlcm5hbCByZWd1bGF0b3IuDQpJbiBjdXJyZW50IFND
TUkgcG93ZXIgZG9tYWluIGRyaXZlciwgdGhlcmUgaXMgbm90IHN1Y2ggc3VwcG9ydC4gSWYgd2Ug
dXNlDQp0aGUgU0NNSSBwb3dlciBkb21haW4gZHJpdmVyLCBob3cgdG8gaGFuZGxlIHJlZ3VsYXRv
ciBvbi9vZmYsIGluIFRGLUE/DQpjdXJyZW50bHksIGFsbCB0aGUgcmVndWxhdG9yIGlzIG1hbmFn
ZWQgYnkga2VybmVsIHNpZGUuIG1vc3Qgb2YgdGhlIHJlZ3VsYXRvcg0KaXMgY29udHJvbGxlZCBi
eSBJMkMgYnVzLiBBY2Nlc3NpbmcgdGhlIEkyQyBmcm9tIGtlcm5lbCAmIFRGLUEgYm90aCBpcyBu
b3QgZmVhc2libGUuDQppZiByZWd1bGF0b3IgbmVlZCB0byBiZSBoYW5kbGVkIGluIFRGLUEsIEkg
YW0gbm90IHN1cmUgaWYgaXQgaXMgbmVjZXNzYXJ5IHRvIGV4dGVuZCB0aGUNClNDTUkgc3BlYyB0
byBpbmNsdWRlIGEgcmVndWxhdG9yIHByb3RvY29sLg0KDQpBbm90aGVyIGNvbmNlcm4gaXMgdGhh
dCBtb3ZpbmcgYWxsIGN1cnJlbnRseSBpbXBsZW1lbnRhdGlvbiB0byBTQ01JIGNvbXBhdGlibGUg
aXMNCmEgaHVnZSB3b3JrLCB3YWl0aW5nIGZvciBTQ01JIGltcGxlbWVudGF0aW9uIHJlYWR5IHdp
bGwgYmxvY2sgb3RoZXIgcGVyaXBoZXJhbHMNCnVwc3RyZWFtIGZvciBhIHZlcnkgbG9uZyB0aW1l
Lg0KDQpBbnl3YXksIGlmIGN1cnJlbnQgaW1wbGVtZW50YXRpb24gY2FuIE5PVCBiZSBhY2NlcHRl
ZCwgd2UgY2FuIHRyeSB0byBzd2l0Y2ggU0NNSQ0KaW1wbGVtZW50YXRpb24uDQoNCj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBKYWNreSBCYWkgPHBpbmcuYmFpQG54cC5jb20+DQo+ID4gLS0tDQo+ID4gIGRy
aXZlcnMvc29jL2lteC9LY29uZmlnICAgICAgICAgICAgfCAgIDYgKw0KPiA+ICBkcml2ZXJzL3Nv
Yy9pbXgvTWFrZWZpbGUgICAgICAgICAgIHwgICAxICsNCj4gPiAgZHJpdmVycy9zb2MvaW14L2lt
eDhtX3BtX2RvbWFpbnMuYyB8IDIyNA0KPiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKw0K
PiA+ICBpbmNsdWRlL3NvYy9pbXgvaW14X3NpcC5oICAgICAgICAgIHwgIDEyICsrDQo+ID4gIDQg
ZmlsZXMgY2hhbmdlZCwgMjQzIGluc2VydGlvbnMoKykNCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0
IGRyaXZlcnMvc29jL2lteC9pbXg4bV9wbV9kb21haW5zLmMNCj4gPiAgY3JlYXRlIG1vZGUgMTAw
NjQ0IGluY2x1ZGUvc29jL2lteC9pbXhfc2lwLmgNCj4gDQo+IFsuLi5dDQo+IA0KPiA+ICsNCj4g
PiArCW11dGV4X2xvY2soJmdwY19wZF9tdXRleCk7DQo+ID4gKwlhcm1fc21jY2Nfc21jKElNWF9T
SVBfR1BDLCBJTVhfU0lQX0NPTkZJR19HUENfUE1fRE9NQUlOLA0KPiBkb21haW4tPmRvbWFpbl9p
bmRleCwNCj4gPiArCQkgICAgICBQRF9TVEFURV9PTiwgMCwgMCwgMCwgMCwgJnJlcyk7DQo+ID4g
KwltdXRleF91bmxvY2soJmdwY19wZF9tdXRleCk7DQo+ID4gKw0KPiA+ICsJcmV0dXJuIDA7DQo+
ID4gK30NCj4gPiArDQo+ID4gK3N0YXRpYyBpbnQgaW14OG1fcGRfcG93ZXJfb2ZmKHN0cnVjdCBn
ZW5lcmljX3BtX2RvbWFpbiAqZ2VucGQpIHsNCj4gPiArCXN0cnVjdCBpbXg4bV9wbV9kb21haW4g
KmRvbWFpbiA9IHRvX2lteDhtX3BtX2RvbWFpbihnZW5wZCk7DQo+ID4gKwlzdHJ1Y3QgYXJtX3Nt
Y2NjX3JlcyByZXM7DQo+ID4gKwlpbnQgaW5kZXgsIHJldCA9IDA7DQo+ID4gKw0KPiA+ICsJbXV0
ZXhfbG9jaygmZ3BjX3BkX211dGV4KTsNCj4gPiArCWFybV9zbWNjY19zbWMoSU1YX1NJUF9HUEMs
IElNWF9TSVBfQ09ORklHX0dQQ19QTV9ET01BSU4sDQo+IGRvbWFpbi0+ZG9tYWluX2luZGV4LA0K
PiA+ICsJCSAgICAgIFBEX1NUQVRFX09GRiwgMCwgMCwgMCwgMCwgJnJlcyk7DQo+IA0KPiBIb3cg
YmlnIGlzIHRoaXMgSU1YIFNNQyBTSVAgPyBJIGtlZXAgc2VlaW5nIHRoYXQgaXQncyBldmVyIGdy
b3dpbmcuDQo+IEkgZG9uJ3Qgd2FudCB0byBzZWUgdGhpcyBmb3IgYW55IGZ1dHVyZSBwcm9kdWN0
cyBhcyB0aGV5IHNlZW0gdG8gYmUgZGVzaWduZWQNCj4gIk9OIFRIRSBHTyIgYXMgYW5kIHdoZW4g
bmVlZGVkIHJhdGhlciB0aGFuIGNvbXBsZXRlbHkgdGhvdWdodCB0aHJvdWdoLg0KPiANCj4gLS0N
Cj4gUmVnYXJkcywNCj4gU3VkZWVwDQo=

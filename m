Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 556D740AE95
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 15:07:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233086AbhINNJM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 09:09:12 -0400
Received: from mail-eopbgr70072.outbound.protection.outlook.com ([40.107.7.72]:32464
        "EHLO EUR04-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S232964AbhINNJL (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 14 Sep 2021 09:09:11 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SbTsFEimSxqlf4L7WhjNDRU6G/6/rwv/6XDDJxkQwEYOg3SNYJsilRuciKL85vCbIZb7MWdt0OjHkNtn1QRB2SF2GQ2jukvbeYnZFusWSIBQ+CE5XF2lmrjgpAx24EAaTjVf3HVYaYXZLo3kj/+wJWBmyZdYRtuanRSG9We7XR1dzK7rO4OHrAsWFaxGWvpabwBrRWWswK9/UjgHG+zoMu4/OfyJXbf97HTXz1q1j/ItLF3YgPkFsyXHhIyGm34VgTOXTsRSt4B9bOKy85YgN/1IF6UkWMcZUoUeRmveBMuxXoJDSEEKpJG8h1f+mfQeVjiGxtx0nQQVr/kCyQUYXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=oEVwebOHLhUx7OGlR/TS61vVxB3Ie9cJ0VxtkO60jsw=;
 b=mCuoY1UK7S+Cs+Ggh9xgTWLaCawEtQ6EuPyTiZ1gYQYyGddiblSODAHFC9dAqqM8ghFafPpHW0Xf3xDUCSzRk/qhJchqvsLfF+q3qZer27pzZMBnx+XraAYDNaYdmX3J0I1orpKaXFPND6W/Gbi7IVV8Kpk+L0zZtpWDQbTRX4xwDC6QKkksYeKC/9OAOIpt1KaYEFVHdBI2gj65NsJzObnNvcsl6727Cd3lfl5a0t2CAQUo7NMSzmQK4TUog2eFIAssBUn1AL+rGQ6W6eIFEzZCKhFXFR9PF2otcGICHez9xyCw987erV99N9UMU4Bzgds7RFQUxRiMylNJrip9jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oEVwebOHLhUx7OGlR/TS61vVxB3Ie9cJ0VxtkO60jsw=;
 b=nwGFmRt8AWcOwcQmdzUezybzzb2GejZqAQ6u1RTM7Vyta4s/wBGkWWK+xI0RFnUaNzAOGI92JLq6M5jsYqC+M7QBWuVc8LLd6zxsiECZOMgbf5VAWICi6NjqOZfO0KyvOcD4qHP5apF6vBXjGCMrVon1SEuKJhaH7eEHEwTRDpQ=
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DB9PR04MB8314.eurprd04.prod.outlook.com (2603:10a6:10:249::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14; Tue, 14 Sep
 2021 13:07:50 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::55b5:93f6:50b1:a49e]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::55b5:93f6:50b1:a49e%3]) with mapi id 15.20.4500.018; Tue, 14 Sep 2021
 13:07:50 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     Abel Vesa <abel.vesa@nxp.com>
CC:     "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "sboyd@kernel.org" <sboyd@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: RE: [PATCH v3 9/9] clk: imx: Add the pcc reset controller support on
 imx8ulp
Thread-Topic: [PATCH v3 9/9] clk: imx: Add the pcc reset controller support on
 imx8ulp
Thread-Index: AQHXqTOVJ6b5wGkvEUWynGm+VUz9aaujcGQAgAANUZA=
Date:   Tue, 14 Sep 2021 13:07:50 +0000
Message-ID: <DBBPR04MB7930B6AFF9299954C0DCC6AA87DA9@DBBPR04MB7930.eurprd04.prod.outlook.com>
References: <20210914065208.3582128-1-ping.bai@nxp.com>
 <20210914065208.3582128-10-ping.bai@nxp.com> <YUCRBtdgDMs3WeQk@ryzen>
In-Reply-To: <YUCRBtdgDMs3WeQk@ryzen>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a87045da-3841-4f1d-d36b-08d97780a801
x-ms-traffictypediagnostic: DB9PR04MB8314:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB9PR04MB831440BAC5F9F6131FF99C2A87DA9@DB9PR04MB8314.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0kicbSEX2MLRW4sAqm6stFhhk8UOBtkUaoVI3RV9TLa+CpHpA/dIx9WGd8vRNT9Ff9rhEMMBxz/DApL5DDLkvXywcD+7L6Mo2hePl5EaahO3fl2o0E6KRkKzZMcpFuTAc03WbCAKgNfiq8tQaGXJyiCJtd0hZ9qnrN68z5D26dnf3mcllhp7YrgTsH386v5djGsX0sM3Qs+r8PvW47oJ8c+z96gFsIF5KPK3514RRCRLuEVSaSK9cd+ap5XLtTrJbBvq6cu2UTYxLKaXZiyyN1pxP+HMLrsS5xZFu8zMt/4y9gfMy15YgMiWBySx+lddD4tGvW9+972kMDJvtoCV4fX1kNtCoH34N4uwLAHsj8tOzRuDkXh0KENl1jj9fQWWvcBE2aWp7csXszTyon1xACyeEBf9ekE/e48AihyXfe0aOcQWWk4FD6AZldvFDn3OTKd1CjyMEgXChB9N4/UKyNjmcQRkPeVK1ljIVrsdC5Pllypr3Ok5EZ1Ek6kOrLGuAwFgCUA4zr7VQqbfOJxyRF9TYV6/GfH/+wNU6legKLp1nnNU5RoinrZjX49qmR1OmgWwlxtnKEbqda9ETPDIKA5N3zq9oaW4qf0exUMFPgbzlIbGz0xxEkQjR6GvfewK2Cm9VpWDdGD5OgkcWcTwGd4LMkX2boASpYgN+nvKhjjdSvKgUGrXYgaomw0CpY+y0yzbnIN75tv/1xkPxiuMWQ9n2LeMo6VRnmRjmwoFTLo=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(508600001)(71200400001)(76116006)(33656002)(64756008)(66476007)(5660300002)(66946007)(66556008)(4326008)(86362001)(26005)(186003)(38100700002)(122000001)(38070700005)(66446008)(2906002)(9686003)(6862004)(8936002)(52536014)(8676002)(6636002)(54906003)(6506007)(316002)(53546011)(55016002)(83380400001)(7696005)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SjRlZkFBUzlwRWlxMUZTSFBzU2owMEtsdk8vRXd4UkxHRlg3QmExZ0UxMHUx?=
 =?utf-8?B?TkNuNDR5L3pnUWMzVG5wSWxBaFhHazBmYzJmMmZTMUMrU3VCaTNjVndHR3lq?=
 =?utf-8?B?aFVhcTJTMWY0MWlNMkhJRXJ0SW8xTGkyZVZFWE9RaFliYndmeVJ2cnBhVi81?=
 =?utf-8?B?Y3VtaUMxMmNwMTcrNXZ6cE90TzhoV2RWSkJVN0ZHbVhkN2VmOHJoK2k0NUp2?=
 =?utf-8?B?VzN4b0dMeVVYOUVZWllqVVNBWDR4d1dwNGdQUFZUa1ROMGE3aHN3K2pKYkVD?=
 =?utf-8?B?Z1RqaGU3emJsTHRJK2djMVhxSStpNzg4d1g1U0pweDg5aUFiK0t4azZzRnhy?=
 =?utf-8?B?dW5GQUpqT1lWa0dua2E1aGN2OGdJdDByYUQ5dy9wMHRlY1NKV1RjQTVWWlEz?=
 =?utf-8?B?TENXdzFvci9Vckp5MzRXbTNhWEJ1N2U5SU5IZXhIeU9OeEp4T1QyZjN0UmIr?=
 =?utf-8?B?ZDVCcGtJUFpUVVJSZ1VjT01pb1BQOWZvNlg0bjBZR0ZtV0xqU0lKYlQrNjhU?=
 =?utf-8?B?RGpkZ2lmaktjcDVvUHloOVd3WVZDWmdXbVVnQzFsWVlDb3FLaTFEUW4rQ1ov?=
 =?utf-8?B?TnNOTnlXN1lXOXVFZ2ZlcEVPZFJWdDJFRTVxT0pPQS9KallNNVZXOHJNdXNR?=
 =?utf-8?B?dDduRDhGR3VreVF3b20yUm9aTFdybWNtNk9NV3ZNVUtXOXJZRDh3VllVNVN0?=
 =?utf-8?B?dnI5K3JQNXJpU05NbmZDd1RLdVBYSk1ncjdtWUxEcUVITWFFQ1VuZXJDK0cy?=
 =?utf-8?B?dVlad3QxemxreGdFeVhjVUk5SG1nNFBBaGs0VkhJZ29kVlYwQUxWL00wRWVD?=
 =?utf-8?B?MkcyQmNIY3hPUG1xSUh0RHhwSC9aRm9VNGhjamMxS1FkUHRmbjhJSHI2ZWk3?=
 =?utf-8?B?My9qRUhUUnZpNTBjZnFkdXhlUFo0K3F6S2lvWloweE1MWTByTmVFNW5SOTFJ?=
 =?utf-8?B?K2pVYUI3S2R5WnlzTzJHVHpuaGljd3VnRzFySG8rQzM0MVNJZ3dydHBEY2Jq?=
 =?utf-8?B?c0dtNHBPMEdySW5QT2NVemlyRVlxV2lRN1FuckhicDNRMHZ0NFRkbTdwT2xF?=
 =?utf-8?B?TkhMZWRtZDQ5TXkxL1E2OEFZY2FyYUtNTDNwQXlBVzg4RTE1VUVpUWxrcmFH?=
 =?utf-8?B?Y3kvUUNENEtrUWtHRGQycnEvYkFJUXJhdmFzU1BDVGdiUkowRURKQVd4R1di?=
 =?utf-8?B?bjJWMTFOUEVVZEh1aFczaDVrcHRycm1DUHBaQjVZd1lBTDMxMVlWdEdSWlh2?=
 =?utf-8?B?V01NL3AzN1R1OTJqZjQ2WW4rRnN4TmRselpWMlpnRjFWekZSc3ppMEh3aGY5?=
 =?utf-8?B?cnpnOFRSWFhrRGpMdFNEclBqUmJaZDJHZDJwUXZ5a2xPUDU4QXlobjFsbUZt?=
 =?utf-8?B?UkVvU1FQQllXV0JWbnVzSGlLMEROUjBJRmlmTmRSZ2tEc0dLNFFDNmpXZmlp?=
 =?utf-8?B?UU0vbkJuTUpaa1VDTWgwbXNyWWRwWVpDdHpJWUorVHo0dkorSHdPR3B4eFh2?=
 =?utf-8?B?MkR5bXpXRHBRLzE5YXhFWHNaenBsYUViKzlDY3lETytFNE5qSGIyWEhBVTF6?=
 =?utf-8?B?N2xrMGh4S2dia3NnNjhnMXlPcVIyc25iWHRTODV3SHVpdkhVRjBvWjdVc3Fa?=
 =?utf-8?B?QTNsUU9ZeFRMQi9TUE5PeWZkT2xpeEt3MmFTVmJUb2NtS2U4WTdRZjM5bmNB?=
 =?utf-8?B?MjdLUVNNU0pnWHYzMUlja2FqYUx0ckM5OHlEUGxJWFd6VDB4T1Z2RmQvZXp6?=
 =?utf-8?Q?9ZSpQsWpzhVd6e/K7e3pQpmAbd5P8XExeUbFqWk?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a87045da-3841-4f1d-d36b-08d97780a801
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Sep 2021 13:07:50.6731
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D54IN0UbHwdAwUQOpO0Aod/dlF/wvVXaXYxkn7oX1a2yyL67ainVTNiM+tnfscBukLNmfNn6PMADZRLktAsQCw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB8314
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

PiBTdWJqZWN0OiBSZTogW1BBVENIIHYzIDkvOV0gY2xrOiBpbXg6IEFkZCB0aGUgcGNjIHJlc2V0
IGNvbnRyb2xsZXIgc3VwcG9ydCBvbg0KPiBpbXg4dWxwDQo+IA0KPiBPbiAyMS0wOS0xNCAxNDo1
MjowOCwgSmFja3kgQmFpIHdyb3RlOg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsay9pbXgv
Y2xrLWlteDh1bHAuYw0KPiA+IGIvZHJpdmVycy9jbGsvaW14L2Nsay1pbXg4dWxwLmMgaW5kZXgg
NmFhZDA0MTE0NjU4Li42Njk5NDM3ZTE3YjgNCj4gPiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJz
L2Nsay9pbXgvY2xrLWlteDh1bHAuYw0KPiA+ICsrKyBiL2RyaXZlcnMvY2xrL2lteC9jbGstaW14
OHVscC5jDQo+ID4gQEAgLTksNiArOSw3IEBADQo+ID4gICNpbmNsdWRlIDxsaW51eC9tb2R1bGUu
aD4NCj4gPiAgI2luY2x1ZGUgPGxpbnV4L29mX2RldmljZS5oPg0KPiA+ICAjaW5jbHVkZSA8bGlu
dXgvcGxhdGZvcm1fZGV2aWNlLmg+DQo+ID4gKyNpbmNsdWRlIDxsaW51eC9yZXNldC1jb250cm9s
bGVyLmg+DQo+ID4gICNpbmNsdWRlIDxsaW51eC9zbGFiLmg+DQo+ID4NCj4gPiAgI2luY2x1ZGUg
ImNsay5oIg0KPiA+IEBAIC00OCw2ICs0OSw5OSBAQCBzdGF0aWMgY29uc3QgY2hhciAqIGNvbnN0
IG5pY19wZXJfZGl2cGxhdFtdID0gew0KPiA+ICJuaWNfcGVyX2RpdnBsYXQiIH07ICBzdGF0aWMg
Y29uc3QgY2hhciAqIGNvbnN0IGxwYXZfYXhpX2RpdltdID0gew0KPiA+ICJscGF2X2F4aV9kaXYi
IH07ICBzdGF0aWMgY29uc3QgY2hhciAqIGNvbnN0IGxwYXZfYnVzX2RpdltdID0gew0KPiA+ICJs
cGF2X2J1c19kaXYiIH07DQo+ID4NCj4gPiArc3RydWN0IHBjY19yZXNldF9kZXYgew0KPiA+ICsJ
dm9pZCBfX2lvbWVtICpiYXNlOw0KPiA+ICsJc3RydWN0IHJlc2V0X2NvbnRyb2xsZXJfZGV2IHJj
ZGV2Ow0KPiA+ICsJY29uc3QgdTMyICpyZXNldHM7DQo+ID4gKwkvKiBTZXQgdG8gaW14X2NjbV9s
b2NrIHRvIHByb3RlY3QgcmVnaXN0ZXIgYWNjZXNzIHNoYXJlZCB3aXRoIGNsb2NrDQo+IGNvbnRy
b2wgKi8NCj4gPiArCXNwaW5sb2NrX3QgKmxvY2s7DQo+ID4gK307DQo+ID4gKw0KPiA+ICsjZGVm
aW5lIFBDQ19TV19SU1QJQklUKDI4KQ0KPiA+ICsjZGVmaW5lIHRvX3BjY19yZXNldF9kZXYoX3Jj
ZGV2KQljb250YWluZXJfb2YoX3JjZGV2LCBzdHJ1Y3QNCj4gcGNjX3Jlc2V0X2RldiwgcmNkZXYp
DQo+ID4gKw0KPiA+ICtzdGF0aWMgY29uc3QgdTMyIHBjYzNfcmVzZXRzW10gPSB7DQo+ID4gKwkw
eGE4LCAweGFjLCAweGM4LCAweGNjLCAweGQwLA0KPiA+ICsJMHhkNCwgMHhkOCwgMHhkYywgMHhl
MCwgMHhlNCwNCj4gPiArCTB4ZTgsIDB4ZWMsIDB4ZjANCj4gPiArfTsNCj4gPiArDQo+ID4gK3N0
YXRpYyBjb25zdCB1MzIgcGNjNF9yZXNldHNbXSA9IHsNCj4gPiArCTB4NCwgMHg4LCAweGMsIDB4
MTAsIDB4MTQsDQo+ID4gKwkweDE4LCAweDFjLCAweDIwLCAweDI0LCAweDM0LA0KPiA+ICsJMHgz
OCwgMHgzYywgMHg0MCwgMHg0NCwgMHg0OCwNCj4gPiArCTB4NGMsIDB4NTQNCj4gPiArfTsNCj4g
PiArDQo+ID4gK3N0YXRpYyBjb25zdCB1MzIgcGNjNV9yZXNldHNbXSA9IHsNCj4gPiArCTB4YTAs
IDB4YTQsIDB4YTgsIDB4YWMsIDB4YjAsDQo+ID4gKwkweGI0LCAweGJjLCAweGMwLCAweGM4LCAw
eGNjLA0KPiA+ICsJMHhkMCwgMHhmMCwgMHhmNCwgMHhmOA0KPiA+ICt9Ow0KPiA+ICsNCj4gDQo+
IEkgYmVsaWV2ZSB0aGlzIGNvdWxkIGJlIGF2b2lkZWQgZW50aXJlbHkgYnkgaGF2aW5nIHNvbWV0
aGluZyBsaWtlOg0KPiANCj4gUENDeF9SRVNFVFNfT0ZGU0VUICsgKGluZGV4ICogNCkNCj4gDQo+
IGFuZCB0aGVuOg0KPiANCj4gI2RlZmluZSBQQ0MzX1JFU0VUU19PRkZTRVQJMHhhOA0KPiAjZGVm
aW5lIFBDQzRfUkVTRVRTX09GRlNFVAkweDQNCj4gI2RlZmluZSBQQ0M1X1JFU0VUU19PRkZTRVQJ
MHhhMA0KPiANCj4gI2RlZmluZSBQQ0MzX1JFU0VUU19OVU0JCTEzDQo+ICNkZWZpbmUgUENDNF9S
RVNFVFNfTlVNCQkxNw0KPiAjZGVmaW5lIFBDQzVfUkVTRVRTX05VTQkJMTQNCj4gDQo+IFRoZW4g
d2UgY291bGQgcGFzcyBvbiB0aGUgUENDeF9SRVNFVFNfT0ZGU0VUIGFuZCB0aGUNCj4gUENDeF9S
RVNFVFNfTlVNIGFuZCB0aGF0J3MgaXQuDQo+IA0KDQpBcyB5b3UgY2FuIHNlZSB0aGF0IHRoZSBQ
Q0Mgb2Zmc2V0IHRoYXQgaGFzIHJlc2V0IGlzIG5vdCBjb25zZWN1dGl2ZSBpbiB0aGUgcmVnaXN0
ZXIgcmVnaW9uLg0KU28gaXQgd2lsbCBpbnRyb2R1Y2UgaG9sZSBpbiB0aGUgaW5kZXguIEFuZCB3
ZSBjYW4gTk9UIHVzZSBsaW5lYXIgZm9ybXVsYSB0byBjYWxjdWxhdGUgdGhlIG9mZnNldCBkaXJl
Y3RseS4NCg0KQlINCkphY2t5IEJhaQ0KDQo+ID4gK3N0YXRpYyBpbnQgaW14OHVscF9wY2NfYXNz
ZXJ0KHN0cnVjdCByZXNldF9jb250cm9sbGVyX2RldiAqcmNkZXYsDQo+ID4gK3Vuc2lnbmVkIGxv
bmcgaWQpIHsNCj4gPiArCXN0cnVjdCBwY2NfcmVzZXRfZGV2ICpwY2NfcmVzZXQgPSB0b19wY2Nf
cmVzZXRfZGV2KHJjZGV2KTsNCj4gPiArCXUzMiBvZmZzZXQgPSBwY2NfcmVzZXQtPnJlc2V0c1tp
ZF07DQo+ID4gKwl1bnNpZ25lZCBsb25nIGZsYWdzOw0KPiA+ICsJdTMyIHZhbDsNCj4gPiArDQo+
ID4gKwlzcGluX2xvY2tfaXJxc2F2ZShwY2NfcmVzZXQtPmxvY2ssIGZsYWdzKTsNCj4gPiArDQo+
ID4gKwl2YWwgPSByZWFkbChwY2NfcmVzZXQtPmJhc2UgKyBvZmZzZXQpOw0KPiA+ICsJdmFsICY9
IH5QQ0NfU1dfUlNUOw0KPiA+ICsJd3JpdGVsKHZhbCwgcGNjX3Jlc2V0LT5iYXNlICsgb2Zmc2V0
KTsNCj4gPiArDQo+ID4gKwlzcGluX3VubG9ja19pcnFyZXN0b3JlKHBjY19yZXNldC0+bG9jaywg
ZmxhZ3MpOw0KPiA+ICsNCj4gPiArCXJldHVybiAwOw0KPiA+ICt9DQo+ID4gKw0KPiA+ICtzdGF0
aWMgaW50IGlteDh1bHBfcGNjX2RlYXNzZXJ0KHN0cnVjdCByZXNldF9jb250cm9sbGVyX2RldiAq
cmNkZXYsDQo+ID4gK3Vuc2lnbmVkIGxvbmcgaWQpIHsNCj4gPiArCXN0cnVjdCBwY2NfcmVzZXRf
ZGV2ICpwY2NfcmVzZXQgPSB0b19wY2NfcmVzZXRfZGV2KHJjZGV2KTsNCj4gPiArCXUzMiBvZmZz
ZXQgPSBwY2NfcmVzZXQtPnJlc2V0c1tpZF07DQo+ID4gKwl1bnNpZ25lZCBsb25nIGZsYWdzOw0K
PiA+ICsJdTMyIHZhbDsNCj4gPiArDQo+ID4gKwlzcGluX2xvY2tfaXJxc2F2ZShwY2NfcmVzZXQt
PmxvY2ssIGZsYWdzKTsNCj4gPiArDQo+ID4gKwl2YWwgPSByZWFkbChwY2NfcmVzZXQtPmJhc2Ug
KyBvZmZzZXQpOw0KPiA+ICsJdmFsIHw9IFBDQ19TV19SU1Q7DQo+ID4gKwl3cml0ZWwodmFsLCBw
Y2NfcmVzZXQtPmJhc2UgKyBvZmZzZXQpOw0KPiA+ICsNCj4gPiArCXNwaW5fdW5sb2NrX2lycXJl
c3RvcmUocGNjX3Jlc2V0LT5sb2NrLCBmbGFncyk7DQo+ID4gKw0KPiA+ICsJcmV0dXJuIDA7DQo+
ID4gK30NCj4gPiArDQo+ID4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgcmVzZXRfY29udHJvbF9vcHMg
aW14OHVscF9wY2NfcmVzZXRfb3BzID0gew0KPiA+ICsJLmFzc2VydCA9IGlteDh1bHBfcGNjX2Fz
c2VydCwNCj4gPiArCS5kZWFzc2VydCA9IGlteDh1bHBfcGNjX2RlYXNzZXJ0LA0KPiA+ICt9Ow0K
PiA+ICsNCj4gPiArc3RhdGljIGludCBpbXg4dWxwX3BjY19yZXNldF9pbml0KHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYsIHZvaWQNCj4gX19pb21lbSAqYmFzZSwNCj4gPiArCSBjb25zdCB1
MzIgKnJlc2V0cywgdW5zaWduZWQgaW50IG5yX3Jlc2V0cykgew0KPiA+ICsJc3RydWN0IGRldmlj
ZV9ub2RlICpucCA9IHBkZXYtPmRldi5vZl9ub2RlOw0KPiA+ICsJc3RydWN0IGRldmljZSAqZGV2
ID0gJnBkZXYtPmRldjsNCj4gPiArCXN0cnVjdCBwY2NfcmVzZXRfZGV2ICpwY2NfcmVzZXQ7DQo+
ID4gKw0KPiA+ICsJcGNjX3Jlc2V0ID0gZGV2bV9remFsbG9jKGRldiwgc2l6ZW9mKCpwY2NfcmVz
ZXQpLCBHRlBfS0VSTkVMKTsNCj4gPiArCWlmICghcGNjX3Jlc2V0KQ0KPiA+ICsJCXJldHVybiAt
RU5PTUVNOw0KPiA+ICsNCj4gPiArCXBjY19yZXNldC0+YmFzZSA9IGJhc2U7DQo+ID4gKwlwY2Nf
cmVzZXQtPmxvY2sgPSAmaW14X2NjbV9sb2NrOw0KPiA+ICsJcGNjX3Jlc2V0LT5yZXNldHMgPSBy
ZXNldHM7DQo+ID4gKwlwY2NfcmVzZXQtPnJjZGV2Lm93bmVyID0gVEhJU19NT0RVTEU7DQo+ID4g
KwlwY2NfcmVzZXQtPnJjZGV2Lm5yX3Jlc2V0cyA9IG5yX3Jlc2V0czsNCj4gPiArCXBjY19yZXNl
dC0+cmNkZXYub3BzID0gJmlteDh1bHBfcGNjX3Jlc2V0X29wczsNCj4gPiArCXBjY19yZXNldC0+
cmNkZXYub2Zfbm9kZSA9IG5wOw0KPiA+ICsNCj4gPiArCXJldHVybiBkZXZtX3Jlc2V0X2NvbnRy
b2xsZXJfcmVnaXN0ZXIoZGV2LCAmcGNjX3Jlc2V0LT5yY2Rldik7IH0NCj4gPiArDQo+IA0KPiAu
Li4NCj4gDQo+ID4gLS0NCj4gPiAyLjI2LjINCj4gPg0K

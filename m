Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 235E0BC0C9
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2019 05:41:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391692AbfIXDlL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Sep 2019 23:41:11 -0400
Received: from mail-eopbgr80078.outbound.protection.outlook.com ([40.107.8.78]:55365
        "EHLO EUR04-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S2394624AbfIXDlK (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 23 Sep 2019 23:41:10 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IqqwcTIJKt5/VXBlnfOAUX5DIh0huPbDEJ2iSBSQnLG09flD02IHL16vXOD3gibE6Ht80VeKyu9gxZWEyT2AI7NVpNTI/tpbnoSs/CqX5dV5tNpbNe11rIpChGm2e0tcd5THYO0vBeJWcaFFvIwdMr85KzlEurjP4L8d5QFY+lrRaG/+aE/NjAIXvwOI3TNSR80BLsju22ZTP24YLW58jq5wuU+QYG9K7D6zJ7qpGBuwOFd2NYLqDpLYNfWs0H6FD09qxqcjXIVPvRWlwWbtYRa+0lpY77Yeh2fjerqCIAYcyccNKjGkL67//1AR37dGD469V6eY34UX1WH/QDW8fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=252/gCK12tsBE8sBB7TGgtYFBce4YbAxAeF2MyfYb3Y=;
 b=eyvZ4Z0OqSz6jSkolYKEMl82v/9prrezas1o2Lao8BNFrk2IBJC38P91SBmz5ZOHekHXDR0o6shOw0iaXEn83+uk3DYefZZL2IAOKo9vyxW6x3k0VjsmUGT5efW7+5reNiX03QN8UHiMC81aRbUJY8smDT1b8XNdR3F1JX9G8+yDk+oJHATycBDLiOq6G6glJ1Dr9qAo8qHlevN+H1qS4csqErb/96HJg1fV+l6FwUH0TkVhq3aS5erqfoQE5YWuwwxfOmTiL3Sr4KMzxgNdC9luGmGw+v/Wc/LQ8WREnYXpg7UVn4tCZzjGRet1SuT95m4c+mZlJMsX8gQdc7CvSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=252/gCK12tsBE8sBB7TGgtYFBce4YbAxAeF2MyfYb3Y=;
 b=n0JFWJWYYgtuDxQ+bzJmc7KmOrFpH01bYN+Py4YYgWgVKeFZnKnVwO9xlLJh2tn5jFaON61amWdTrTXwDzA4qgElpguev5qGOfeGMwA4vBw42ObJSg/OoqwAyEnjp+iisrMdMoi5yCE8SjKyW8vq8glTrxqnX8LjaH1cco/Ocwk=
Received: from AM0PR04MB6676.eurprd04.prod.outlook.com (20.179.255.161) by
 AM0PR04MB5473.eurprd04.prod.outlook.com (20.178.112.224) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.18; Tue, 24 Sep 2019 03:41:05 +0000
Received: from AM0PR04MB6676.eurprd04.prod.outlook.com
 ([fe80::5c26:3c5f:17e0:8038]) by AM0PR04MB6676.eurprd04.prod.outlook.com
 ([fe80::5c26:3c5f:17e0:8038%7]) with mapi id 15.20.2284.023; Tue, 24 Sep 2019
 03:41:05 +0000
From:   Leo Li <leoyang.li@nxp.com>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Russell King <rmk+kernel@armlinux.org.uk>
CC:     Robin Murphy <robin.murphy@arm.com>,
        dann frazier <dann.frazier@canonical.com>,
        Will Deacon <will.deacon@arm.com>,
        Nicolin Chen <nicoleotsuka@gmail.com>,
        "Y.b. Lu" <yangbo.lu@nxp.com>, Christoph Hellwig <hch@lst.de>,
        Mark Rutland <mark.rutland@arm.com>,
        DTML <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH 3/3] arm64: dts: mark lx2160a esdhc controllers dma
 coherent
Thread-Topic: [PATCH 3/3] arm64: dts: mark lx2160a esdhc controllers dma
 coherent
Thread-Index: AQHVcTBTLQw+Flwg30aARc+RzydJIKc5yMSAgABn0oA=
Date:   Tue, 24 Sep 2019 03:41:05 +0000
Message-ID: <AM0PR04MB66766AC0807A85B3E5428E028F840@AM0PR04MB6676.eurprd04.prod.outlook.com>
References: <20190922102341.GO25745@shell.armlinux.org.uk>
 <E1iBz55-0008Mj-CX@rmk-PC.armlinux.org.uk>
 <CAPDyKFpQn+O-M60q-Tc4QOBM+WhFhmnkU6_-t5hnQcndLo==YA@mail.gmail.com>
In-Reply-To: <CAPDyKFpQn+O-M60q-Tc4QOBM+WhFhmnkU6_-t5hnQcndLo==YA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leoyang.li@nxp.com; 
x-originating-ip: [136.49.234.194]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bcb60290-8d47-4aa3-d4e0-08d740a10763
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);SRVR:AM0PR04MB5473;
x-ms-traffictypediagnostic: AM0PR04MB5473:|AM0PR04MB5473:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5473D1C7E8D571ECA025FDF98F840@AM0PR04MB5473.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0170DAF08C
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(39860400002)(376002)(396003)(136003)(346002)(366004)(199004)(13464003)(189003)(6246003)(476003)(5660300002)(6116002)(7736002)(9686003)(6306002)(55016002)(71200400001)(305945005)(7416002)(6506007)(2906002)(3846002)(256004)(6436002)(86362001)(53546011)(102836004)(74316002)(7696005)(33656002)(66556008)(446003)(11346002)(71190400001)(966005)(66946007)(81166006)(186003)(8676002)(4326008)(54906003)(81156014)(229853002)(52536014)(76116006)(316002)(66476007)(486006)(478600001)(66446008)(8936002)(64756008)(66066001)(110136005)(76176011)(14454004)(25786009)(26005)(99286004);DIR:OUT;SFP:1101;SCL:1;SRVR:AM0PR04MB5473;H:AM0PR04MB6676.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: faoTRWCj5fvWyVTQzQnPbhs2Hom14dvMtRt7NoNNd3S8bgg4VVvVJsHgZBUyODf1mMpOd7eMGoB6fUWi7M1QBUHihhis6xpB9EwxPKHpGWxCcCKTyoxODxK7AGKUDc0yR4dyg7GNkatFJ/+IlAwE14gv/4ygddRarIVnOhE4n8mgf/1YXjV+l3GsTlTK6lNeH9Ibzl4DDYkOg1VL80BtuEo3U+plPy4GMW3ihS8f9uM7jaMyC6XlxX9n7IxGsqNeQ/O8XgVS/GR0QEDKlDHy5i3HTBIitMBzqMWo5eFAOn8tg68h+w7Q280uoPL6u9wbNrkZhEq+MKd8jX1SBMQr3gffpWTjvLPlAie/5HOtIIVWsUe82EpuQVUPG5UMLE4IfMGcfmwY6S4ERwSKbuz+rdKwBJTyj/DSUJbRyktKY9U=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bcb60290-8d47-4aa3-d4e0-08d740a10763
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2019 03:41:05.3290
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C+s8eVNbI9wvu+cMqbIUrxv9QlZkvrVaWHzMSZ1UUqqvtHfspKPcBlq8edk0gJCDvBRaK8CJuJwkYmU2Cbx5Rg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5473
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVWxmIEhhbnNzb24gPHVs
Zi5oYW5zc29uQGxpbmFyby5vcmc+DQo+IFNlbnQ6IE1vbmRheSwgU2VwdGVtYmVyIDIzLCAyMDE5
IDQ6MjcgUE0NCj4gVG86IFJ1c3NlbGwgS2luZyA8cm1rK2tlcm5lbEBhcm1saW51eC5vcmcudWs+
DQo+IENjOiBSb2JpbiBNdXJwaHkgPHJvYmluLm11cnBoeUBhcm0uY29tPjsgZGFubiBmcmF6aWVy
DQo+IDxkYW5uLmZyYXppZXJAY2Fub25pY2FsLmNvbT47IFdpbGwgRGVhY29uIDx3aWxsLmRlYWNv
bkBhcm0uY29tPjsNCj4gTmljb2xpbiBDaGVuIDxuaWNvbGVvdHN1a2FAZ21haWwuY29tPjsgWS5i
LiBMdSA8eWFuZ2JvLmx1QG54cC5jb20+Ow0KPiBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGxzdC5k
ZT47IE1hcmsgUnV0bGFuZCA8bWFyay5ydXRsYW5kQGFybS5jb20+Ow0KPiBEVE1MIDxkZXZpY2V0
cmVlQHZnZXIua2VybmVsLm9yZz47IExlbyBMaSA8bGVveWFuZy5saUBueHAuY29tPjsgUm9iDQo+
IEhlcnJpbmcgPHJvYmgrZHRAa2VybmVsLm9yZz47IFNoYXduIEd1byA8c2hhd25ndW9Aa2VybmVs
Lm9yZz47IExpbnV4DQo+IEFSTSA8bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Pg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIDMvM10gYXJtNjQ6IGR0czogbWFyayBseDIxNjBhIGVz
ZGhjIGNvbnRyb2xsZXJzIGRtYQ0KPiBjb2hlcmVudA0KPiANCj4gT24gU3VuLCAyMiBTZXAgMjAx
OSBhdCAxMjoyOSwgUnVzc2VsbCBLaW5nIDxybWsra2VybmVsQGFybWxpbnV4Lm9yZy51az4NCj4g
d3JvdGU6DQo+ID4NCj4gPiBUaGUgTFgyMTYwQSBlc2RoYyBjb250cm9sbGVycyBhcmUgc2V0dXAg
YnkgdGhlIGRyaXZlciB0byBiZSBETUENCj4gPiBjb2hlcmVudCwgYnV0IHdpdGhvdXQgbWFya2lu
ZyB0aGVtIGFzIHN1Y2ggaW4gRFQsIExpbnV4IHRoaW5rcyB0aGV5DQo+ID4gYXJlIG5vdC4gIFRo
aXMgY2FuIGxlYWQgdG8gcmFuZG9tIHNwb3JhZGljIERNQSBlcnJvcnMsIGV2ZW4gdG8gdGhlDQo+
ID4gZXh0ZW50IG9mIHByZXZlbnRpbmcgYm9vdCwgc3VjaCBhczoNCj4gPg0KPiA+IG1tYzA6IEFE
TUEgZXJyb3INCj4gPiBtbWMwOiBzZGhjaTogPT09PT09PT09PT09IFNESENJIFJFR0lTVEVSIERV
TVAgPT09PT09PT09PT0NCj4gPiBtbWMwOiBzZGhjaTogU3lzIGFkZHI6ICAweDAwMDAwMDAwIHwg
VmVyc2lvbjogIDB4MDAwMDIyMDINCj4gPiBtbWMwOiBzZGhjaTogQmxrIHNpemU6ICAweDAwMDAw
MDA4IHwgQmxrIGNudDogIDB4MDAwMDAwMDENCj4gPiBtbWMwOiBzZGhjaTogQXJndW1lbnQ6ICAw
eDAwMDAwMDAwIHwgVHJuIG1vZGU6IDB4MDAwMDAwMTMNCj4gPiBtbWMwOiBzZGhjaTogUHJlc2Vu
dDogICAweDAxZjUwMDA4IHwgSG9zdCBjdGw6IDB4MDAwMDAwMzgNCj4gPiBtbWMwOiBzZGhjaTog
UG93ZXI6ICAgICAweDAwMDAwMDAzIHwgQmxrIGdhcDogIDB4MDAwMDAwMDANCj4gPiBtbWMwOiBz
ZGhjaTogV2FrZS11cDogICAweDAwMDAwMDAwIHwgQ2xvY2s6ICAgIDB4MDAwMDQwZDgNCj4gPiBt
bWMwOiBzZGhjaTogVGltZW91dDogICAweDAwMDAwMDAzIHwgSW50IHN0YXQ6IDB4MDAwMDAwMDEN
Cj4gPiBtbWMwOiBzZGhjaTogSW50IGVuYWI6ICAweDAzN2YxMDhmIHwgU2lnIGVuYWI6IDB4MDM3
ZjEwOGINCj4gPiBtbWMwOiBzZGhjaTogQUNtZCBzdGF0OiAweDAwMDAwMDAwIHwgU2xvdCBpbnQ6
IDB4MDAwMDIyMDINCj4gPiBtbWMwOiBzZGhjaTogQ2FwczogICAgICAweDM1ZmEwMDAwIHwgQ2Fw
c18xOiAgIDB4MDAwMGFmMDANCj4gPiBtbWMwOiBzZGhjaTogQ21kOiAgICAgICAweDAwMDAzMzNh
IHwgTWF4IGN1cnI6IDB4MDAwMDAwMDANCj4gPiBtbWMwOiBzZGhjaTogUmVzcFswXTogICAweDAw
MDAwOTIwIHwgUmVzcFsxXTogIDB4MDAxZDhhMzMNCj4gPiBtbWMwOiBzZGhjaTogUmVzcFsyXTog
ICAweDMyNWI1OTAwIHwgUmVzcFszXTogIDB4M2Y0MDBlMDANCj4gPiBtbWMwOiBzZGhjaTogSG9z
dCBjdGwyOiAweDAwMDAwMDAwDQo+ID4gbW1jMDogc2RoY2k6IEFETUEgRXJyOiAgMHgwMDAwMDAw
OSB8IEFETUEgUHRyOiAweDAwMDAwMDIzNmQ0MzgyMGMNCj4gPiBtbWMwOiBzZGhjaTogPT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0NCj4gPiBtbWMwOiBlcnJvciAt
NSB3aGlsc3QgaW5pdGlhbGlzaW5nIFNEIGNhcmQNCj4gPg0KPiA+IFRoZXNlIGFyZSBjYXVzZWQg
YnkgdGhlIGRldmljZSdzIGRlc2NyaXB0b3IgZmV0Y2ggaGl0dGluZw0KPiA+IHNwZWN1bGF0aXZl
bHkgbG9hZGVkIENQVSBjYWNoZSBsaW5lcyB0aGF0IHRoZSBDUFUgZG9lcyBub3Qgc2VlIHRocm91
Z2gNCj4gPiB0aGUgbm9ybWFsLCBub24tY2FjaGVhYmxlIERNQSBjb2hlcmVudCBtYXBwaW5nIHRo
YXQgaXQgdXNlcyBmb3INCj4gPiBub24tY29oZXJlbnQgZGV2aWNlcy4NCj4gPg0KPiA+IERUIGFu
ZCB0aGUgZGV2aWNlIG11c3QgYWdyZWUgd3J0IHdoZXRoZXIgdGhlIGRldmljZSBpcyBETUEgY29o
ZXJlbnQgb3INCj4gPiBub3QuDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBSdXNzZWxsIEtpbmcg
PHJtaytrZXJuZWxAYXJtbGludXgub3JnLnVrPg0KPiANCj4gQXMgSSBhbSBwaWNraW5nIHVwIHBh
dGNoMSBhbmQgcGF0Y2gyIGZyb20gdGhpcyBzZXJpZXMsIEkgY2FuIGFsc28gaGVscCBvdXQgYW5k
DQo+IHBpY2sgdXAgdGhpcyBvbmUsIGlmIHRoYXQgaXMgb2theSBieSBwZW9wbGU/DQoNClRoZXJl
IGlzIHNvbWUgY29uY2VybiByZWNlbnRseSBmcm9tIGxpbnV4LW5leHQgbWFpbnRhaW5lciBhYm91
dCB0aGlzIGNhdXNpbmcgcG90ZW50aWFsIGNvbmZsaWN0cy4gIGh0dHBzOi8vbGttbC5vcmcvbGtt
bC8yMDE5LzkvMTUvMjI1DQoNClJlZ2FyZHMsDQpMZW8NCg==

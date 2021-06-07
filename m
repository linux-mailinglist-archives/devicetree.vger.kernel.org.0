Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EDAD839D69C
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 10:00:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230177AbhFGICh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 04:02:37 -0400
Received: from mail-eopbgr60042.outbound.protection.outlook.com ([40.107.6.42]:11585
        "EHLO EUR04-DB3-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S229966AbhFGICf (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 7 Jun 2021 04:02:35 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HVDSEg/pgEFNj9e3+MtjZAWkflJhNj7rNlGU7jytV1AD66c7xnOSCUdQYuNJQqnti230/U6bCB7beHxPpwWS8OUq1by9ZD4bUFkS9j3uLRQGY8M2I+RjJihQE+3BtiNZPUHRyUhtPGpa0AKggOKrE41fs0WurwwRkjym6HRX6FEGl9GUKdMUgJCsxVLu0L5EC2kplCdjPbnvvPG37lIlGtiW2VfUWbGWM/yMHy7pT25fFi1VJ/3bWSopxCyiOX6rbK0xGmGR9LE3PAxg4IP6ggSZZZMxT+aeQnimWN8HkELHVH9VPzUOsUIUSw4fEfCFDIUnPcPeDIu13qttHxtd+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fS/X4YIrD48LeF7cpk5rLXS8cEeNJkuiQ1DV6HtN1lE=;
 b=dhuwxv89f3NBMngAM4YHHuDkrEBKioDDYRo43jEOHP2cyVxLgqvqHURkAWyywf3JEVNfX+6Ug9B6VlNtQk0msG8z+kb79r4ZGq3G+TZpK1k6HZ+4+kHWvg8zlhAhUuubCJu5XFQI5wJ/fshvM325xbTbz8bRrdj/FXfgvDVob8OS+T5yOzUBNMoaPn4C68nj+DGlh5U9VqCYXgOwL9CxUxLxhOTWIZHXQrIHvFHa7JyX2+oUoQEJzfNuqQcImm9e/nWoaj09s/nSbrH+G3MtTlmpDC3R8RtEE+xPwiauZxkjQGr+jZVT30XBGxgXbxpFGBtcIqqmpwrpXOBpCVNR0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fS/X4YIrD48LeF7cpk5rLXS8cEeNJkuiQ1DV6HtN1lE=;
 b=nF6ahkI4khRaDZ7XLpUa2oRQoFZlQ9oEjwGc+CqCil1SFuCKO7EvSsLLZMN+PcitJWkPsEHFztEO8XiSQZsE/hcyc4h8tF6zZDxLlwGnKuPYHnHm8PmDT9QYms2xvIVKAQsz6ibL+pgTiPcnAcL84vqImX3N6+MxLIP6SFy9wBs=
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DB6PR0401MB2536.eurprd04.prod.outlook.com (2603:10a6:4:36::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.29; Mon, 7 Jun
 2021 08:00:42 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3921:acd6:3201:b209]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3921:acd6:3201:b209%4]) with mapi id 15.20.4195.030; Mon, 7 Jun 2021
 08:00:42 +0000
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
Thread-Index: AQHXV35zi/pMuFSs7UW3ckNnL7FgcqsEAVWAgAQq6YCAAAGUgIAAB3YAgAAARtA=
Date:   Mon, 7 Jun 2021 08:00:42 +0000
Message-ID: <DBBPR04MB7930943628D1E80C17237D8187389@DBBPR04MB7930.eurprd04.prod.outlook.com>
References: <20210601174917.1979-1-tharvey@gateworks.com>
 <b63300e8-3739-fcc6-6d37-952f93cfd17b@kontron.de>
 <CAJ+vNU0mBQJ_ZLsKOiY0k7+drYvmw+bsHfeX4+Mg=s4_fxSUYA@mail.gmail.com>
 <5eba4438-239c-71d1-56ec-4edd70e87ec3@kontron.de>
 <DBBPR04MB79303661E07409B4B65F3EF487389@DBBPR04MB7930.eurprd04.prod.outlook.com>
 <273e2859-7874-e273-9599-139274891023@kontron.de>
In-Reply-To: <273e2859-7874-e273-9599-139274891023@kontron.de>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kontron.de; dkim=none (message not signed)
 header.d=none;kontron.de; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5a330afd-1e0e-48ea-766e-08d9298a58f0
x-ms-traffictypediagnostic: DB6PR0401MB2536:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0401MB25368D7A8E64847399FF42E287389@DB6PR0401MB2536.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pVUZulOwpU6HcPexoNOJTDddvBjSa1jBimwFEzmBt8ob3cpAmE8TW5BENvgGeCccAI2fOcQV3XCdpTK4coVv0EG1Sm+0XxQ+lCvzMDXExgkV/piDJ00R0We8jTN8lHF2mg+LpxUvtSRip+AYJlsLCQajTuyqSwWindeTdk83i75bkR6XIPK8/JvnlTqqpcEg/HBV5Zf/qSFF/rcWvwct446ZdpGVD1XT/AUalBG3zdcKylD+dCC/CoyBbpA/kK42CvHd7KfJOEdgYskz0/pJur8ELAHapULGBDMArp1BLXlMY4KHcmhkOb/jONL5aVSr17Spmr9rKNp60sODmy0TYLXfcxhSwFjrY3phSaKc8XOUrHkVa6uM1EDpudbMh3lexaLKKixkbtmKjPp2xEfwFAbu3HAPlP7orsSsOP8d0MawFNEY6eH79MhFkbGA41Z6sJJp628oWllu4F9jVAAJZRtgKZ3hUkIQwPd6MkFdzN47eC7vbIC/yX8PeYttQI+QB3q+8J+OjZaEnfOWEjmtFq4XhtHz0j5P5UvdX5fosvoy63S+ln5Ulab5O3nG0TDnLvvB/gGa5+jy5v7w7Xzt0plku/Vd3w8hzKmKlIH7VsltWqLZzcEAndR4+sVvsHReZbrdRp0oW7nddGx35Aevmg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(346002)(39860400002)(376002)(396003)(136003)(86362001)(110136005)(2906002)(66946007)(186003)(5660300002)(6506007)(53546011)(38100700002)(52536014)(4326008)(8936002)(54906003)(33656002)(83380400001)(55016002)(8676002)(71200400001)(9686003)(478600001)(26005)(66476007)(76116006)(64756008)(66556008)(66446008)(316002)(122000001)(7696005)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?utf-8?B?bmFpRWw2TlAwOFZHQ2ZRQ3JDdmRxZkVCM3hOVG54dFlQVHZTc2pqK2NkWFk5?=
 =?utf-8?B?WmRocUNWcC9KdExFM2R2b0hFaXVsaEVMbkVFT083dTV3dUJoeDRCYzhzNzFW?=
 =?utf-8?B?SW5lUW16ZjBLUzZlY0ttTDdrWnhSQ1dmYmRMRXZLbVROS0JzQTZETnJlUHJ2?=
 =?utf-8?B?WUlTaVN3bm1DRENpYU9tTk9vUnl6eGlRZnhJdk5FWkxaejh5Z1NhS2hUUXo3?=
 =?utf-8?B?WGJkN3pNdGhwQzlBOEJKSmdxMGNVbCt4d3J2RCtSTlkzeTRNNEFtV3JxSk1P?=
 =?utf-8?B?bHRqc3ZVVm5kUDZraGtFc2FTSzdOZHVjazdFa0wxbDVaZlFIZmMySkhNZjVq?=
 =?utf-8?B?YVBQeEUxZnRqWXlBdmJCZ0V1TzlqRDM1dzlWaFBEL25VUEFwbU91dFAyUzAv?=
 =?utf-8?B?K2dPSFJjVElOdVlpQmJNVm4vV2FjOExvV0o2b0lYWUh0TFZhSjNzblZxUkVV?=
 =?utf-8?B?ZWhoOGVwVUNFYlROMkpVS3Z6WFByR2dUNGE1UWY1QmdNd3RjTjg1YnhaOGlI?=
 =?utf-8?B?N1BMNmw0OWxFcWdBNmdpSEFseUVjN1lMZHlGeVE3OFlTdEtsczlyQ2xNTnZh?=
 =?utf-8?B?a0V5V0NNOUdSbXBMYmlPL3BwR0grYkdzaDdWNlQ0VXhZb21Rc3FFaUxDeEg2?=
 =?utf-8?B?NHFLUUtyTmR2V0ZEd2x4OStmNG5BZ2JKTTFCUFBCYVdMczJjSXJRSzBCUTd4?=
 =?utf-8?B?RFFPTlVrcEpEaVpRRjhzejY1VFNheG1KSTgyTXNwRFZzSDhlQXp0blFudjNr?=
 =?utf-8?B?THJwbkpxZk50UmdkNEFCZmtkZE1WNGlsc1VpKzM0akJwNW1nRjMyL3BFVy9o?=
 =?utf-8?B?VUpOYUNMbE5MQXBwbTZ4ZkU2TE9lUWhyTDYrOEVHaVBuQzJLN01tM2pYVkJV?=
 =?utf-8?B?SnBJT2EwK05GTldnb0kzYmxyT1FUSnJIaTZkRjYxWDl5LzBrcHdqWlJ6T0I0?=
 =?utf-8?B?akNTUU1iSlVoOWZ0VEllQy9JOGh4WVZFUEVtY01HRzF3REh4M1hjQzRMa2lT?=
 =?utf-8?B?bGRvZ2Q3Mk5seG9FODJvYkNmUWJUR3lyOWxZM1YxcjVuVmNXdXBRRWlRYTh2?=
 =?utf-8?B?UTRTZkRIb0JWanUwdTN2T08rd0h1aG1aSWRMdUk5NnRIMTI5OGFxbmZ0aHBN?=
 =?utf-8?B?VnYzZ0dsYW5XRTBBYWFTR05Qdm5DWjY2TnkvUC8vUFRFV2F0Vm9qR0lmd3hp?=
 =?utf-8?B?eWwrL0I0eTdhRHI4K1UvSDQ0RW5aRldjdkd4ZXE1UzhIVzlnM1hCQlMrUGtK?=
 =?utf-8?B?UC9SZFJOdWNsVmp1UHZhVnhabXk1dEFEOHIzWGhyVGNKeE9FSyttV0tpMjRM?=
 =?utf-8?B?QWkveGxmYzY5MDE5dENESzg1OEd0S2JMWlpVNkFvZzJaRDVuNnlxWjl5bmM2?=
 =?utf-8?B?YkxMalRnWjlnOXc3WEI3VWF5dVRlZzAxam1zVHkxOGcrczV2TStxL2FHT09K?=
 =?utf-8?B?Zmg5bmJ5MktVWlV6ZWNXZ3JlVlhGVXhGNW9aR1lPM1c5Qmxnd3pXVU9nRHB6?=
 =?utf-8?B?ODR2K0dHN1FJYkFPdFJBd3NTSTB3ZnRObjVQZlVFd3pHcmlOY3dmOWhqVDMr?=
 =?utf-8?B?ZlNPc09xdDlpQ1pNL3YrYmIyQVFTelFHTE5BZHBVNXZQZDdtVjV4WE9Hdm90?=
 =?utf-8?B?UWM2d3Bvc0xCUXJFZE9rYjVSZE9MbnUyVW1IRlc0aDBVU0lhdEdYVVdVRzcx?=
 =?utf-8?B?ZW1qR2ZDUzFGSXprNXhSblVBV3VvUFlydFZvOVFCVkEyM0ZsOHhlZ3BCbTNR?=
 =?utf-8?Q?q8tGe3u1QARlsm7uisz3bA4krmty9xiTxVQMhyO?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a330afd-1e0e-48ea-766e-08d9298a58f0
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2021 08:00:42.3238
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QS3LoyclS/7AoiLlXV991QLxfbdgdJLqJnkLFVPR53xw1X4y4zImk6CJzJtAw/jt5QRrUzT4jv22vhysSPbDJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0401MB2536
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

PiBTdWJqZWN0OiBSZTogW1BBVENIIDEvNF0gYXJtNjQ6IGR0czogaW14OG1tLXZlbmljZS1ndzcw
MHg6IG92ZXJyaWRlDQo+IHRoZXJtYWwgY2ZnIGZvciBpbmR1c3RyaWFsIHRlbXANCj4gDQo+IE9u
IDA3LjA2LjIxIDA5OjMwLCBKYWNreSBCYWkgd3JvdGU6DQo+ID4+IFN1YmplY3Q6IFJlOiBbUEFU
Q0ggMS80XSBhcm02NDogZHRzOiBpbXg4bW0tdmVuaWNlLWd3NzAweDogb3ZlcnJpZGUNCj4gPj4g
dGhlcm1hbCBjZmcgZm9yIGluZHVzdHJpYWwgdGVtcA0KPiA+Pg0KPiA+PiBPbiAwNC4wNi4yMSAx
Nzo0MiwgVGltIEhhcnZleSB3cm90ZToNCj4gPj4+IE9uIFdlZCwgSnVuIDIsIDIwMjEgYXQgMTI6
MTEgQU0gRnJpZWRlciBTY2hyZW1wZg0KPiA+Pj4gPGZyaWVkZXIuc2NocmVtcGZAa29udHJvbi5k
ZT4gd3JvdGU6DQo+ID4+Pj4NCj4gPj4+PiBPbiAwMS4wNi4yMSAxOTo0OSwgVGltIEhhcnZleSB3
cm90ZToNCj4gPj4+Pj4gT3ZlcnJpZGUgdGhlIGRlZmF1bHQgdGVtcGVyYXR1cmUgYWxlcnQvY3Jp
dCBmb3IgSW5kdXN0cmlhbCB0ZW1wDQo+ID4+Pj4+IElNWDhNIE1pbmkuDQo+ID4+Pj4+DQo+ID4+
Pj4+IFNpZ25lZC1vZmYtYnk6IFRpbSBIYXJ2ZXkgPHRoYXJ2ZXlAZ2F0ZXdvcmtzLmNvbT4NCj4g
Pj4+Pj4gLS0tDQo+ID4+Pj4+ICAuLi4vYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtbS12ZW5pY2Ut
Z3c3MDB4LmR0c2kgICAgIHwgMTINCj4gPj4gKysrKysrKysrKysrDQo+ID4+Pj4+ICAxIGZpbGUg
Y2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKQ0KPiA+Pj4+Pg0KPiA+Pj4+PiBkaWZmIC0tZ2l0DQo+
ID4+Pj4+IGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1tLXZlbmljZS1ndzcw
MHguZHRzaQ0KPiA+Pj4+PiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtbS12
ZW5pY2UtZ3c3MDB4LmR0c2kNCj4gPj4+Pj4gaW5kZXggYzc2OWZhZGJkMDA4Li41MTJiNzZjZDdj
M2IgMTAwNjQ0DQo+ID4+Pj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lt
eDhtbS12ZW5pY2UtZ3c3MDB4LmR0c2kNCj4gPj4+Pj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0
cy9mcmVlc2NhbGUvaW14OG1tLXZlbmljZS1ndzcwMHguZHRzaQ0KPiA+Pj4+PiBAQCAtNDkzLDMg
KzQ5MywxNSBAQA0KPiA+Pj4+PiAgICAgICAgICAgICAgID47DQo+ID4+Pj4+ICAgICAgIH07DQo+
ID4+Pj4+ICB9Ow0KPiA+Pj4+PiArDQo+ID4+Pj4+ICsmY3B1X2FsZXJ0MCB7DQo+ID4+Pj4+ICsg
ICAgIHRlbXBlcmF0dXJlID0gPDk1MDAwPjsNCj4gPj4+Pj4gKyAgICAgaHlzdGVyZXNpcyA9IDwy
MDAwPjsNCj4gPj4+Pj4gKyAgICAgdHlwZSA9ICJwYXNzaXZlIjsNCj4gPj4+Pj4gK307DQo+ID4+
Pj4+ICsNCj4gPj4+Pj4gKyZjcHVfY3JpdDAgew0KPiA+Pj4+PiArICAgICB0ZW1wZXJhdHVyZSA9
IDwxMDUwMDA+Ow0KPiA+Pj4+PiArICAgICBoeXN0ZXJlc2lzID0gPDIwMDA+Ow0KPiA+Pj4+PiAr
ICAgICB0eXBlID0gImNyaXRpY2FsIjsNCj4gPj4+Pj4gK307DQo+ID4+Pj4NCj4gPj4+PiBBcyB0
aGlzIGlzIG5vdCByZWFsbHkgYm9hcmQtc3BlY2lmaWMsIEkgdGhpbmsgdGhlIHByb3BlciB3YXkg
dG8NCj4gPj4+PiBoYW5kbGUgdGhpcyBmb3INCj4gPj4gYWxsIGJvYXJkcyBpcyB0byBsZXQgdGhl
IHRoZXJtYWwgZHJpdmVyIHJlYWQgdGhlIHRlbXBlcmF0dXJlIGdyYWRpbmcNCj4gPj4gZnJvbSB0
aGUgT1RQIGZ1c2VzIGFuZCBzZXQgdGhlIHRyaXAtcG9pbnRzIGFjY29yZGluZ2x5LCBzaW1pbGFy
IHRvDQo+ID4+IHdoYXQgaXMgZG9uZSBvbiBpLk1YNiBbMV0uDQo+ID4+Pj4NCj4gPiAuLi4NCj4g
Pj4+DQo+ID4+PiBGcmllZGVyLA0KPiA+Pj4NCj4gPj4+IFllcywgSSB0aG91Z2h0IGFib3V0IGFk
ZGluZyB0aGF0IGtpbmQgb2Ygc3VwcG9ydCB0byBpbXg4bW1fdGhlcm1hbC5jDQo+ID4+PiBidXQg
dGhlIGRpZmZlcmVuY2UgaXMgdGhhdCBpbXg4bW0gaGFzIGFsZXJ0cyBkZWZpbmVkIGJ5IGR0IGFu
ZCBpbXg2DQo+ID4+PiBkb2VzIG5vdCBzbyBpcyBpdCByaWdodCB0byBvdmVycmlkZSBkdCBhbGVy
dHMgb24gaW14OG0/IFdoYXQgaWYNCj4gPj4+IHNvbWVvbmUgZGVzaWducyBhIGJvYXJkIHRoYXQg
dGhleSBzcGVjaWZpY2FsbHkgd2FudCBhIGxvd2VyIGFsZXJ0DQo+ID4+PiB0aGFuIHRoZSBjcHUg
Z3JhZGUgdGhleSBhcmUgdXNpbmcgYmFzZWQgb24gc29tZXRoaW5nIGVsc2Ugb24gdGhlIGJvYXJk
Pw0KPiA+Pj4NCj4gPj4+IE15IGFwcHJvYWNoIHRvIHRoaXMgd2FzIHRvIGV2ZW50dWFsbHkgYWN0
dWFsbHkgYWRqdXN0IHRoZSBpbXg4bSBkdA0KPiA+Pj4gYWxlcnRzIGluIGJvb3QgZmlybXdhcmUg
YmFzZWQgb24gc29tZSBib290IGZpcm13YXJlIHNldHRpbmcgb3INCj4gPj4+IHNwZWNpZmljIGJv
YXJkIHN1cHBvcnQgYW5kIGxlYXZlIHRoZSBrZXJuZWwgYWxvbmUuDQo+ID4+DQo+ID4+IEFsbG93
aW5nIGJvYXJkLXNwZWNpZmljIHRyaXAgcG9pbnRzIHNvdW5kcyBsaWtlIGEgdmFsaWQgcmVxdWVz
dCwgYnV0DQo+ID4+IEkgc3RpbGwgdGhpbmsgd2UgbmVlZCBhIHdheSB0byBoYW5kbGUgdGhlIHRl
bXBlcmF0dXJlIGdyYWRpbmcgaW4gdGhlDQo+ID4+IGRyaXZlciBpZiBubyBib2FyZC1zcGVjaWZp
YyB0cmlwLXBvaW50cyBhcmUgZ2l2ZW4uDQo+ID4+DQo+ID4+IFdoYXQgaWYgd2UganVzdCBzZXQg
dGhlIHRlbXBlcmF0dXJlIHByb3BlcnR5IGluIHRoZSB0cmlwIG5vZGVzIGluDQo+ID4+IGlteDht
bS5kdHNpIHRvIHplcm8/IFRoZSB0aGVybWFsIGRyaXZlciB3b3VsZCBkZXRlY3QgdGhpcyBhbmQg
c2V0dXANCj4gPj4gdGhlIGNvcnJlY3QgdmFsdWVzIGFjY29yZGluZyB0byB0aGUgZ3JhZGluZy4g
SWYgdGhlIGR0IGFscmVhZHkNCj4gPj4gcHJvdmlkZXMgbm9uLXplcm8gdGVtcGVyYXR1cmUgdmFs
dWVzICh0aHJvdWdoIHRoZSBib2FyZCBkdHMpIHRoZQ0KPiA+PiBkcml2ZXIgd2lsbCBqdXN0IGxl
YXZlIHRoZSB2YWx1ZXMgYW5kIGRpc3JlZ2FyZCB0aGUgZ3JhZGluZy4NCj4gPj4NCj4gPj4gSSB0
aGluayB0aGlzIHNvbHV0aW9uIHdvdWxkIGJlIGNvdmVyaW5nIGFsbCBuZWVkcy4NCj4gPg0KPiA+
IEkgdGhvdWdodCB0byBhZGQgdGhlIGdyYWRpbmcgY2hlY2sgaW4gdGhlIGlteDhtbV90aGVybWFs
LmMgdG8NCj4gPiBkeW5hbWljYWxseSBzZXQgdGhlIHRyaXAgcG9pbnRzIHRlbXAsIGJ1dCBpdCBz
ZWVtcyBoYXJkIHRvIGRvIGl0IGR1ZQ0KPiA+IHRvIHRoZSBmYWN0IG9mX3RoZXJtYWwgaXMgdXNl
ZCwgYXMgbm8gaGVscGVyIEFQSSBpcyBleHBvcnRlZCBieSBvZl90aGVybWFsLA0KPiBubyBiZXR0
ZXIgd2F5IHRvIG92ZXJyaWRlIHRoZSB0cmlwIHBvaW50IHRlbXAuDQo+ID4NCj4gPiBnbGFkIHRv
IHNlZSBhbnkgZ29vZCBzdWdnZXN0aW9ucy4NCj4gDQo+IFJpZ2h0LCB0aGUgZHJpdmVyIGRvZXNu
J3QgaGFuZGxlIHRoZSB0cmlwLXBvaW50cyBkaXJlY3RseS4gVGhpcyBpcyBhbGwgaGlkZGVuIGlu
IHRoZQ0KPiBmcmFtZXdvcmsuIFNvIHRoaXMgbWlnaHQgbm90IGJlIHNvIGVhc3kgdG8gaW1wbGVt
ZW50Lg0KPiANCj4gV2hhdCBhYm91dCB0aGlzIG90aGVyIGFwcHJvYWNoOiBBZGRpbmcgYWxsIHRo
ZSBwb3NzaWJsZSB0cmlwLXBvaW50cyBmb3IgdGhlDQo+IGRpZmZlcmVudCBncmFkaW5ncyB0byB0
aGUgU29DLWRldmljZXRyZWUgYW5kIHRoZW4gbGV0IHRoZSB0aGVybWFsIGRyaXZlcg0KPiByZW1v
dmUgdGhlIHRyaXAgbm9kZXMgZnJvbSB0aGUgZHQgdGhhdCBhcmUgbm90IHZhbGlkIGZvciB0aGUg
ZGV0ZWN0ZWQgZ3JhZGluZywNCj4ganVzdCBiZWZvcmUgdGhlIGRyaXZlciByZWdpc3RlcnMgdGhl
IHNlbnNvci96b25lLg0KDQpJdCBpcyBtb3JlIHJlYXNvbmFibGUgZm9yIHRoZSBmaXJtd2FyZS9i
b290bG9hZGVyIHRvIGhhbmRsZSB0aGlzIGJ5IGNoZWNraW5nIHRoZSBncmFkaW5nLg0KDQpCUg0K
SmFja3kgQmFpDQo=

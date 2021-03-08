Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E3D63305E5
	for <lists+devicetree@lfdr.de>; Mon,  8 Mar 2021 03:30:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230272AbhCHC3i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 Mar 2021 21:29:38 -0500
Received: from mail-eopbgr60067.outbound.protection.outlook.com ([40.107.6.67]:17044
        "EHLO EUR04-DB3-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S231134AbhCHC3U (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 7 Mar 2021 21:29:20 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WhtlgnL8PAQ4xOW1B9xPREEZApYdW3tbDcv8rZjVJ+vK2/cdsig6l5XfnQuRjQFKBGMV3YIkHVIimawbQ2Swm5hV+thOkH9C0ymKW2U9fDTO1Kq2byQuzZXX1w/PNSca7T8czLvKInwvtx3CFe+KcUSkqs6J3vGAUCJRWGPZoSZux69mlb0sRwzvdYAYBogEkM23SC0KGRHdX9SkEkRrbJZdeqhxdC99kYHF/zMnlXP98T1xqG8JljGKRjfC+q1YpN5hDxnjsCZyKsOpweXUNl65yVcTHvJreGuGtDynJCXcBNMsMfYD6h7na16Tm1t2K5C1HP695eolEmSbnoUr+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9hJkL6s8w0xHhu1GJdhZsM0K95KoabDmiijqZUHXt8M=;
 b=YJRc/9va3rt+ezwzuzCSLYnAYmCAVPh8MjqJTSERePOrqCwv2aWpvQqrxIzZkw7VinKe2WgT7kcAGtywfafwkQqwjXFWorgGMSeDPLyxvis5p+QWgNiffos5TzyyUg+zgXlpfZRqzFlJ1+XxalIBxHonOZtUA4Q1vD+WS+D94O75SyL1KdJEi/odsusbQFszvTt3DzA3BkGT7HHW6dkwr9PSV7lOemdTKghm6H4o86O4jfQVPk5Ls2t/cTNo7toD+wl2wxpNp2DjaHRZdjq5fEq6IHh6wVQZ/rDLUq0G/0YaxFL5WibFe1qmgEqOOk4KmTMYIgrHKPh1noGYbXLGvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9hJkL6s8w0xHhu1GJdhZsM0K95KoabDmiijqZUHXt8M=;
 b=XiphgbQdbJFJjwOW+EU/mCVIFF3EOFAd7OHg+5KNfgkWqxp/7QwYywqEzgqLmdl8m26roLs97YnUGG1usVh+F/uTDDGTu9Br6QZ73oTpr+Ql1IhhfifbUHnpG8jjpr/AYug70Q+OYvDwcHH1kXTB4KUcqTfCYbIPiDvNJwTEbOE=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB5511.eurprd04.prod.outlook.com (2603:10a6:20b:98::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.28; Mon, 8 Mar
 2021 02:29:15 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::ecad:ebb8:8eb0:d359]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::ecad:ebb8:8eb0:d359%7]) with mapi id 15.20.3890.037; Mon, 8 Mar 2021
 02:29:15 +0000
From:   Aisheng Dong <aisheng.dong@nxp.com>
To:     Shawn Guo <shawnguo@kernel.org>
CC:     "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "dongas86@gmail.com" <dongas86@gmail.com>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        dl-linux-imx <linux-imx@nxp.com>,
        "jan.kiszka@siemens.com" <jan.kiszka@siemens.com>
Subject: RE: [PATCH v5 00/18] arm64: dts: imx8: architecture improvement and
 adding imx8qm support
Thread-Topic: [PATCH v5 00/18] arm64: dts: imx8: architecture improvement and
 adding imx8qm support
Thread-Index: AQHXEcO+zbBRaXnuEEGFx+NLWsbBc6p5WemAgAAHjLA=
Date:   Mon, 8 Mar 2021 02:29:15 +0000
Message-ID: <AM6PR04MB4966DFCB257F402BD9B0A5DA80939@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1614950268-22073-1-git-send-email-aisheng.dong@nxp.com>
 <20210308015949.GZ543@dragon>
In-Reply-To: <20210308015949.GZ543@dragon>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.67]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6f5ee529-5f25-4a5e-5fd3-08d8e1d9f80f
x-ms-traffictypediagnostic: AM6PR04MB5511:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB5511538ED259C0778B3BA6B880939@AM6PR04MB5511.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:800;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Sd6w6Ws06yCBvSmX02aSd4+5H80/M/uDwSopD+Uv75dv89JnyWvts+IRWfiaSu2TVmS2ZeN85RLx2dNBjv3O2IM6uKXLhrlh10tBR1hpfvBaNPyugjDdJNs9m/2gIisbpYalVQ/+eFbyrbM0nZ+l35VjN2Lu2I9tXg7nPxYneGXDYnQSgv1bsSy8gChPXxE9P/GtNMWxYX7m1Bg9RA6SMHtM+MwKHHDu5OaIIi9Wqb73yza998z9EUEh2Q15cXNniyn3b7ZLWcFfaAGI387iwIh9+5oUMmcU4kmrYtNFyac+cK4rQDKmBDuQsMElV+6hA7LYAFfGY7S/pq07kIt5RVjyZt5ohcKmUyN1tZ9Be2NbPp0bHJfjlEQK1vRyny9+uApJJih4j7sA+/GFVo9Q0eXN5d8iXNZkOPybWgPZBy5HT50/S1LsnT5W6G187OJVs+h3aQpmHeMkd7XkTtN5jPqV6osywY/KM4ZRaZ3yg/6JNWFmFYaqRl1qMSc89bMKBy6zVyCqaunPQtWnpPf7n+JDbwJDg+f5gMlXfDpeZVfNBsSXCx0Dwi9IVHDevmQX
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR04MB4966.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(376002)(396003)(366004)(346002)(39860400002)(2906002)(86362001)(8676002)(7696005)(71200400001)(66946007)(44832011)(4326008)(66476007)(64756008)(33656002)(66446008)(9686003)(66556008)(76116006)(52536014)(6506007)(26005)(83380400001)(6916009)(186003)(55016002)(5660300002)(8936002)(54906003)(478600001)(316002)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?utf-8?B?WUI5eGZqQmhHOE80K0hDcXgvbFQ1R2NTMGlsanlSN1ZyaXhnN3RWZWVMdEYy?=
 =?utf-8?B?YnlEcE1CUW9ZUkZ5RlA2RXNYdXhwUEZ6TjJXa3M5eWpSU1Z3SFpCTko3UFZw?=
 =?utf-8?B?eXZHUUtPeEp1WWRmZzYzNEkwNXhoK2JwaU5FTDIyTzdrNGNCVTVKY1ZMUC9K?=
 =?utf-8?B?VURSN2ljTUw1bUQ3MllTNmhLSS9PNEtvRTZmdWs2aVk0aTAxOGxmbFdmT3lU?=
 =?utf-8?B?UFNZcWlWSXhHQjNuYzNjZmhHU3VJL1RsZmUxRWJQa2tUdElYbHlDVXNQV21D?=
 =?utf-8?B?RC95YzRrUytSMFZxL3FzUFVWa2VGVUVzVVZhSnRCYlJHN3JRSElGNGZhbmtj?=
 =?utf-8?B?WjRnWWNFMDkxRGZ4WlYvdFl0ekdnYURCU2tkTHdFUUlJN0lzSlJ0czM4bTRt?=
 =?utf-8?B?RFcreDZ5NWkySStGbFNtNXhtVElvU2R2ZkdyQkNmdWJtTTVtSjRCcVViU1da?=
 =?utf-8?B?bm5ZT2hVZHJ1c24vNDFBKzVOZm51aDkwcUpSOUxaMGp5M0lua1BaWVczcE5P?=
 =?utf-8?B?M0xmSWRuOTlhTk5XSXYwQ3RwYzZLL1pJL0w3NnNZZURtSlV2SVR0SVZlQjZK?=
 =?utf-8?B?MDZFamZhdVF5a3NZMFVMa3FhZWxaTEJwc1JpekEzRHZJenQ5ek52eEswNXJa?=
 =?utf-8?B?cGV1WHJ6cElWMGNScU5MT0RjS1NNWUVRcEhVMVRpRk5PNW43VGtER1VoRVdK?=
 =?utf-8?B?Nlp3d3F0bTlDN0xNODgrOWh5RTB6SWwzR2toZXZGNE5xQ3lCd1hnUTZGTGdz?=
 =?utf-8?B?MnJlQkpydDdSaXhQZUs1aWNiTm1qVDlGVkRZTVlEVG5BUnFaZDhIeVg1cENN?=
 =?utf-8?B?NTZHdjQ2WG5pekZRMGJmYnp3ZEVsZEFPQ1dRLzU2RytvMTdqdFIvVXZaTHV2?=
 =?utf-8?B?VlBlbytIUEVCeTJjM2E0eGZpRXpndm05eDVidHozS2xoVXBKNjFsWmFHSXV0?=
 =?utf-8?B?cm1nRXNmUTBYM3RMU2oyNXQ5eUl4RE9tUFB4c0l5czd4eE1PY3RVdVpMTlFL?=
 =?utf-8?B?aFE5MGVGbUlYRmUyaU9PbGpvNnZEemtqTVVKeHZkYUQzakhPT3JGbGUxMGV5?=
 =?utf-8?B?dEZMQnl0Uy93REJibWZJL1hCOVQ4QlF4UDMxUWE4OGdOSXNtRnlITitWVXhy?=
 =?utf-8?B?UHVVZTI5aWpndkdpSVNEZWdLTFlTbXIrcEpRdGRoQmUzOGhGdDZSbCs0NElV?=
 =?utf-8?B?djZUMG1GZHY0MjRxMGt4dktKVnBvVjl5QSsrVFpEa2VtZVZ0TXc5RjcyRmI3?=
 =?utf-8?B?R0FyeUpQNDN0b003dkFjelBWK3RMVkU4K3IvUE9zTUFtYjIxbFA4MmhRcGRJ?=
 =?utf-8?B?YzJVemYwTi9PT2xVWTB1djE4VGtBSEVSZ2txV3UwWW5XT2x0bExNSENaWVdV?=
 =?utf-8?B?OFZZM3pyRGNwZmkzSlpaZ1lycTNEY1ZneTFpejhjV0xVc2I4Qnd6NG9CY0dD?=
 =?utf-8?B?M1hTRFV2VXlTN0YyUWtseGdyK212T1FCK1EyeXZlbldGSzQ1Mm9EOUlCcWtF?=
 =?utf-8?B?SzFkdkNTeWl0NThwYlBMaUFLMDBudWQ1NC83bVlqblhPb09BSFJUN1ZoaWEz?=
 =?utf-8?B?enFNM1ovcU9ISXZQVjR5eVpjRmtmbkorVXRidysrcW8wRXIxeE50ckxReWx5?=
 =?utf-8?B?Ym0veGRMbE1rVjVhZ0ZsdW9kR3N1QkdCcEoxa2FzMTN0SUNwb2FuZ0o5WGRk?=
 =?utf-8?B?SmZTTWhCLzdyZWhXVnZaTVgzd1lWL2hMaStJelpzS0t5OHQ1Zmt5NXZBbTgw?=
 =?utf-8?Q?5DRO6Othxah3zqp8/D+IQUK5ULZifK99OUQvdWo?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM6PR04MB4966.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f5ee529-5f25-4a5e-5fd3-08d8e1d9f80f
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2021 02:29:15.7442
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qkqjoSWJM2XojkuzLe1pTiMytnzXIfHLAQNOsJRpxqj6LBTBw3jFdakqMWk516eNa/YJ1cqBGIdb/c/LGbzY8g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5511
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

PiBGcm9tOiBTaGF3biBHdW8gPHNoYXduZ3VvQGtlcm5lbC5vcmc+DQo+IFNlbnQ6IE1vbmRheSwg
TWFyY2ggOCwgMjAyMSAxMDowMCBBTQ0KPiANCj4gT24gRnJpLCBNYXIgMDUsIDIwMjEgYXQgMDk6
MTc6MjlQTSArMDgwMCwgRG9uZyBBaXNoZW5nIHdyb3RlOg0KPiA+IElNWCBTQ1UgYmFzZWQgcGxh
dGZvcm1zIChlLmcuIE1YOFFNL01YOFFYUCkgYXJlIGNvbXByaXNlZCBvZiBhDQo+IG51bWJlcg0K
PiA+IG9mIFNTIChTdWJzeXN0ZW1zKSwgdGhvc2UgU1MgbWF5IGJlIHNoYXJlZCBiZXR3ZWVuIGRp
ZmZlcmVudCBTb0NzDQo+ID4gd2hpbGUgbW9zdCBvZiB0aGVtIGNhbiBiZSByZXVzZWQgbGlrZSBE
ZXZpY2VzIFJlc291cmNlcywgQ2xvY2tzLCBQb3dlcg0KPiBkb21haW5zIGFuZCBldGMuDQo+ID4N
Cj4gPiBUaGlzIHBhdGNoIHNlcmllcyBhaW1zIHRvIGltcHJvdmUgdGhlIE1YOCBhcmNoaXRlY3R1
cmUgdG8gY29tcGx5IHdpdGgNCj4gPiB0aGUgSFcgZGVzaWduIHRvIHNhdmUgYSBsb3Qgb2YgZHVw
bGljYXRlZCBjb2RlcyBhbmQgYmVuZWZpdHMgdXMgYQ0KPiA+IGJldHRlciBtYWludGFpbmFiaWxp
dHkgYW5kIHNjYWxhYmlsaXR5IGluIHRoZSBmdXR1cmUuDQo+ID4NCj4gPiBDaGFuZ2VMb2c6DQo+
ID4gdjU6DQo+ID4gICogcmViYXNlIHRvIGxhdGVzdCBzaGF3bi9mb3ItbmV4dA0KPiA+ICAqIG1h
a2UgbXg4cW0gdXNkaGMgY29tcGF0aWJsZSB3aXRoIGlteDhxeHANCj4gPiB2NC1yZXNlbmQ6DQo+
ID4gICogbm8gY2hhbmdlIGV4Y2VwdCBwdXQgdGhyZWUgbW9kdWxlIGJpbmRpbmcgcGF0Y2hlcyBm
aXJzdCB3aGljaCBhcmUgdXNlZA0KPiA+ICAgIGJ5IHRoaXMgcGF0Y2hzZXQuDQo+ID4gdjMtPnY0
Og0KPiA+ICAqIG1haW5seSByZWJhc2UgdG8gbGF0ZXN0IGtlcm5lbCBleGNlcHQgYSBmZXcgdmVy
eSBtaW5vciBjaGFuZ2VzIGxpa2UNCj4gY2hhbmdlIHRvIHVzZQ0KPiA+ICAgIG5ldyBzY3UgcHJv
dG9jb2wgYmluZGluZyB3aGljaCB3YXMgbm90IHN1cHBvcnRlZCBpbiBsYXN0IHZlcnNpb24NCj4g
PiB2Mi0+djM6DQo+ID4gICogdXNlIGNsb2NrLWluZGljZXMgcHJvcGVydHkgaW5zdGVhZCBvZiBi
aXQtb2Zmc2V0IHByb3BlcnR5IHN1Z2dlc3RlZA0KPiA+IGJ5IFNoYXduIEd1bw0KPiA+ICAqIHJl
YmFzZSB0byBsYXRlc3Qgc2hhd24vZm9yLW5leHQNCj4gPiB2MS0+djI6DQo+ID4gICogY2hhbmdl
IHRvIHRoZSBuZXcgdHdvIGNlbGxzIHNjdSBjbG9jayBiaW5kaW5nLCBzbyBvcmlnaW5hbCBhZGRp
bmcgc2N1DQo+IGNsb2Nrcw0KPiA+ICAgIHBhdGNoZXMgd2VyZSByZW1vdmVkLg0KPiA+ICAqIE1v
dmUgc2N1IHBkIG5vZGUgYWJvdmUgY2xrIG5vZGUNCj4gPg0KPiA+DQo+ID4gRG9uZyBBaXNoZW5n
ICgxOCk6DQo+ID4gICBkdC1iaW5kaW5nczogYXJtOiBmc2w6IGFkZCBpbXg4cW0gYm9hcmRzIGNv
bXBhdGlibGUgc3RyaW5nDQo+ID4gICBkdC1iaW5kaW5nczogbWFpbGJveDogbXU6IGFkZCBpbXg4
cW0gc3VwcG9ydA0KPiA+ICAgYXJtNjQ6IGR0czogaW14OHF4cDogYWRkIGZhbGxiYWNrIGNvbXBh
dGlibGUgc3RyaW5nIGZvciBzY3UgcGQNCj4gPiAgIGFybTY0OiBkdHM6IGlteDhxeHA6IG1vdmUg
c2N1IHBkIG5vZGUgYmVmb3JlIHNjdSBjbG9jayBub2RlDQo+ID4gICBhcm02NDogZHRzOiBpbXg4
cXhwOiBvcmdpbml6ZSBkdHMgaW4gc3Vic3lzdGVtcw0KPiANCj4gVGhlIGR0cyBwYXRjaGVzIHN0
b3AgYXBwbHlpbmcgZm9yIG1lIGF0IHRoaXMgb25lLiAgUGxlYXNlIHJlYmFzZSBhbmQgcmVzZW5k
DQo+IHRoZW0uDQoNCkl0IHdhcyBjYXVzZWQgYnkgYmVsb3cgcGF0Y2ggeW91IGp1c3QgYXBwbGll
ZC4NCg0KY29tbWl0IGY1YTA2OWNhNGY0MjA4NzI4NjEwMzVlZjMwNGU3NTEwOGJiNWVjNmUNCkF1
dGhvcjogUGVuZyBGYW4gPHBlbmcuZmFuQG54cC5jb20+DQpEYXRlOiAgIFRodSBGZWIgMjUgMTE6
MTA6MDIgMjAyMSArMDgwMA0KDQogICAgYXJtNjQ6IGR0czogaW14OHF4cDogY29ycmVjdCB1c2Ro
YyBjbG9jay1uYW1lcyBzZXF1ZW5jZQ0KICAgIA0KICAgIFBlciBkdC1iaW5kaW5ncywgdGhlIGNs
b2NrLW5hbWVzIHNlcXVlbmNlIHNob3VsZCBiZSBpcGcgYWhiIHBlciB0byBwYXNzDQogICAgZHRi
c19jaGVjay4NCiAgICANCiAgICBTaWduZWQtb2ZmLWJ5OiBQZW5nIEZhbiA8cGVuZy5mYW5Abnhw
LmNvbT4NCiAgICBTaWduZWQtb2ZmLWJ5OiBTaGF3biBHdW8gPHNoYXduZ3VvQGtlcm5lbC5vcmc+
DQoNCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4cXhwLmR0c2kgfCAxOCArKysr
KysrKystLS0tLS0tLS0NCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA5IGRlbGV0
aW9ucygtKQ0KDQpJIHdpbGwgcmViYXNlIGFuZCByZXNlbmQuIFRoYW5rcw0KDQpSZWdhcmRzDQpB
aXNoZW5nDQoNCj4gDQo+IFNoYXduDQo+IA0KPiA+ICAgYXJtNjQ6IGR0czogaW14ODogYWRkIGxz
aW8gbHBjZyBjbG9ja3MNCj4gPiAgIGFybTY0OiBkdHM6IGlteDg6IGFkZCBjb25uIGxwY2cgY2xv
Y2tzDQo+ID4gICBhcm02NDogZHRzOiBpbXg4OiBhZGQgYWRtYSBscGNnIGNsb2Nrcw0KPiA+ICAg
YXJtNjQ6IGR0czogaW14ODogc3dpdGNoIHRvIHR3byBjZWxsIHNjdSBjbG9jayBiaW5kaW5nDQo+
ID4gICBhcm02NDogZHRzOiBpbXg4OiBzd2l0Y2ggdG8gbmV3IGxwY2cgY2xvY2sgYmluZGluZw0K
PiA+ICAgYXJtNjQ6IGR0czogaW14OHFtOiBhZGQgbHNpbyBzcyBzdXBwb3J0DQo+ID4gICBhcm02
NDogZHRzOiBpbXg4cW06IGFkZCBjb25uIHNzIHN1cHBvcnQNCj4gPiAgIGFybTY0OiBkdHM6IGlt
eDg6IHNwbGl0IGFkbWEgc3MgaW50byBkbWEgYW5kIGF1ZGlvIHNzDQo+ID4gICBhcm02NDogZHRz
OiBpbXg4cW06IGFkZCBkbWEgc3Mgc3VwcG9ydA0KPiA+ICAgYXJtNjQ6IGR0czogaW14OiBhZGQg
aW14OHFtIGNvbW1vbiBkdHMgZmlsZQ0KPiA+ICAgYXJtNjQ6IGR0czogaW14OiBhZGQgaW14OHFt
IG1layBzdXBwb3J0DQo+ID4gICBhcm02NDogZGVmY29uZmlnOiBhZGQgaW14OHFtIG1layBzdXBw
b3J0DQo+ID4gICBmaXJtd2FyZTogaW14OiBzY3UtcGQ6IGRvIG5vdCBwb3dlciBvZmYgY29uc29s
ZSBkb21haW4NCj4gPg0KPiA+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vZnNsLnlhbWwg
ICAgICAgICAgfCAgIDYgKw0KPiA+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9tYWlsYm94L2Zz
bCxtdS55YW1sICAgfCAgIDUgKy0NCj4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUv
TWFrZWZpbGUgICAgICAgIHwgICAxICsNCj4gPiAgLi4uL2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4
LXNzLWFkbWEuZHRzaSAgICAgIHwgICA4ICsNCj4gPiAgLi4uL2Jvb3QvZHRzL2ZyZWVzY2FsZS9p
bXg4LXNzLWF1ZGlvLmR0c2kgICAgIHwgIDY4ICsrKw0KPiA+ICAuLi4vYm9vdC9kdHMvZnJlZXNj
YWxlL2lteDgtc3MtY29ubi5kdHNpICAgICAgfCAxODQgKysrKysrKysNCj4gPiAgLi4uL2FybTY0
L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4LXNzLWRkci5kdHNpIHwgIDE4ICsNCj4gPiAuLi4vYXJt
NjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDgtc3MtZG1hLmR0c2kgfCAyMDIgKysrKysrKysrDQo+
ID4gIC4uLi9ib290L2R0cy9mcmVlc2NhbGUvaW14OC1zcy1sc2lvLmR0c2kgICAgICB8IDMxMSAr
KysrKysrKysrKysrDQo+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhxbS1t
ZWsuZHRzICB8IDE0NCArKysrKysNCj4gPiAgLi4uL2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4cW0t
c3MtY29ubi5kdHNpICAgIHwgIDIxICsNCj4gPiAgLi4uL2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4
cW0tc3MtZG1hLmR0c2kgICAgIHwgIDUxICsrKw0KPiA+ICAuLi4vYm9vdC9kdHMvZnJlZXNjYWxl
L2lteDhxbS1zcy1sc2lvLmR0c2kgICAgfCAgNjEgKysrDQo+ID4gIGFyY2gvYXJtNjQvYm9vdC9k
dHMvZnJlZXNjYWxlL2lteDhxbS5kdHNpICAgICB8IDE3NiArKysrKysrKw0KPiA+ICAuLi4vYm9v
dC9kdHMvZnJlZXNjYWxlL2lteDhxeHAtYWlfbWwuZHRzICAgICAgfCAgMjAgKy0NCj4gPiAgLi4u
L2ZyZWVzY2FsZS9pbXg4cXhwLWNvbGlicmktZXZhbC12My5kdHNpICAgIHwgICA4ICstDQo+ID4g
IC4uLi9ib290L2R0cy9mcmVlc2NhbGUvaW14OHF4cC1jb2xpYnJpLmR0c2kgICB8ICAxMiArLQ0K
PiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4cXhwLW1lay5kdHMgfCAgNTAg
Ky0tDQo+ID4gIC4uLi9ib290L2R0cy9mcmVlc2NhbGUvaW14OHF4cC1zcy1hZG1hLmR0c2kgICB8
ICAzNyArKw0KPiA+ICAuLi4vYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhxeHAtc3MtY29ubi5kdHNp
ICAgfCAgMjUgKysNCj4gPiAgLi4uL2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4cXhwLXNzLWxzaW8u
ZHRzaSAgIHwgIDYxICsrKw0KPiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4
cXhwLmR0c2kgICAgfCA0MjMgKystLS0tLS0tLS0tLS0tLS0tDQo+ID4gIGFyY2gvYXJtNjQvY29u
Zmlncy9kZWZjb25maWcgICAgICAgICAgICAgICAgICB8ICAgMSArDQo+ID4gIGRyaXZlcnMvZmly
bXdhcmUvaW14L3NjdS1wZC5jICAgICAgICAgICAgICAgICB8ICAyOCArLQ0KPiA+ICAyNCBmaWxl
cyBjaGFuZ2VkLCAxNDgxIGluc2VydGlvbnMoKyksIDQ0MCBkZWxldGlvbnMoLSkgIGNyZWF0ZSBt
b2RlDQo+ID4gMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDgtc3MtYWRt
YS5kdHNpDQo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVz
Y2FsZS9pbXg4LXNzLWF1ZGlvLmR0c2kNCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJt
NjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDgtc3MtY29ubi5kdHNpDQo+ID4gIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4LXNzLWRkci5kdHNpDQo+
ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4
LXNzLWRtYS5kdHNpDQo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRz
L2ZyZWVzY2FsZS9pbXg4LXNzLWxzaW8uZHRzaQ0KPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJj
aC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OHFtLW1lay5kdHMNCj4gPiAgY3JlYXRlIG1v
ZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhxbS1zcy1jb25uLmR0
c2kNCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxl
L2lteDhxbS1zcy1kbWEuZHRzaQ0KPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9i
b290L2R0cy9mcmVlc2NhbGUvaW14OHFtLXNzLWxzaW8uZHRzaQ0KPiA+ICBjcmVhdGUgbW9kZSAx
MDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OHFtLmR0c2kNCj4gPiAgY3Jl
YXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhxeHAtc3Mt
YWRtYS5kdHNpDQo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL2Zy
ZWVzY2FsZS9pbXg4cXhwLXNzLWNvbm4uZHRzaQ0KPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJj
aC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OHF4cC1zcy1sc2lvLmR0c2kNCj4gPg0KPiA+
IC0tDQo+ID4gMi4yNS4xDQo+ID4NCg==

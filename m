Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B44AF2C82AE
	for <lists+devicetree@lfdr.de>; Mon, 30 Nov 2020 11:58:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727571AbgK3K43 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Nov 2020 05:56:29 -0500
Received: from mail-eopbgr60063.outbound.protection.outlook.com ([40.107.6.63]:29846
        "EHLO EUR04-DB3-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726345AbgK3K43 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 30 Nov 2020 05:56:29 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V0DZRGUbbU6N9iVtBty4bGHxRbED62BYythKPUt2lpOCMfBTIXyIV5UYAp/FuvFwxwplfCAzDg8sY925b40P1HKC06tFZidRayKV4+gL+md39bt8gbEts1OV2Y+77iq5+8MeVeSsBiueat0CBp28vQuZmmDSw843NkS1YdMcMVQlUUfs6CQ3yZ8gqhisfJCHCVCPNinTdUVBMXr8ztFmNAY0glQBWbjSjm4gNPt4HC78YR+DptJpTjz0RPsV+fRx/zj4P36MrkUUqXqTbjxVGra5O6MZUrsLZh5AA1wKTCE+khjYsPDt3j1GR3BSmp4nS9gg+NJ4xISatlsialS7QA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hbzuPS028Mzixp5wMnoEdtQUEBUQr0atln0RGJZ8Fdk=;
 b=aM6Qo6l+BPoIuiZTWmNEUTqV6j+nyehGEnG/uGgTG+FUNOQmkTVw53e074hLdkd1ezPUMjp7FECIfdoztQCyuL+lfFN0evjx6oIbEo5Lwf4XK1aCPSRLTOgp5cKLU9xQcnpEwky8k/sWHvxy48JoEfrmwaA9+4TqSwZGLEqlhWaGsG4VnNyM+p2s/AMobjGGxUJ9tw6Y5zw3x6Q+Q7vY2x0v+YEC0gZk5v58UU7NcHHP7YbW/LItGlKPw6guGQhFTkKtGsCiW4+QOk5rz4LmHOI/4m+XhMO6Oqt2/WrgBoWCUgX1IlpJ1ydlQ6dytqVtlq4Fzi9Ba7bnG+vlvn1Wyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hbzuPS028Mzixp5wMnoEdtQUEBUQr0atln0RGJZ8Fdk=;
 b=BhOgUsrMybzj+TP3PDQEumstNh1TSgz0t3//0AAeZwUJ6DxOxbrCJVQ1rL3JWtYCKjoCw/jW/6/5wdcuuT4PMFpsIgsskB7MUl8byTZ1l263nORSMOLgr3BilXkdxcqpcwNWhRus4AG0P5ZxZLkiHGDE9lG02OpQq6gUWovIcsI=
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB6PR0401MB2327.eurprd04.prod.outlook.com (2603:10a6:4:48::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.25; Mon, 30 Nov
 2020 10:55:35 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666%4]) with mapi id 15.20.3611.025; Mon, 30 Nov 2020
 10:55:35 +0000
From:   Joakim Zhang <qiangqing.zhang@nxp.com>
To:     John Garry <john.garry@huawei.com>,
        "will@kernel.org" <will@kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        dl-linux-imx <linux-imx@nxp.com>, Frank Li <frank.li@nxp.com>
Subject: RE: [PATCH 2/2] perf/imx_ddr: Add system PMU identifier for userspace
Thread-Topic: [PATCH 2/2] perf/imx_ddr: Add system PMU identifier for
 userspace
Thread-Index: AQHWxUhiP6wJZ/Iu4EGI1EzR83PFS6ngcKkAgAATHZA=
Date:   Mon, 30 Nov 2020 10:55:35 +0000
Message-ID: <DB8PR04MB6795E671D4A8BEF3F2BB1E54E6F50@DB8PR04MB6795.eurprd04.prod.outlook.com>
References: <20201128053627.7971-1-qiangqing.zhang@nxp.com>
 <20201128053627.7971-3-qiangqing.zhang@nxp.com>
 <6b4e567b-4b94-4c21-d506-829b5a7ec15e@huawei.com>
In-Reply-To: <6b4e567b-4b94-4c21-d506-829b5a7ec15e@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: huawei.com; dkim=none (message not signed)
 header.d=none;huawei.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 86ef376d-173d-4ce3-68fa-08d8951e776d
x-ms-traffictypediagnostic: DB6PR0401MB2327:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0401MB23272A9E23D80AEDE73EF4E3E6F50@DB6PR0401MB2327.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /7pIAT5ThEeN0Z/aLhrlNy8yDsYo1SdtjI2efZrg+Gd4vWfxiSzpPCRY1SxuR+9L+m6vVRGaL8YHebHARONFpThAs8gxvT6cZh9agUnOLMk/8jNeZYQ0zvtsx06wFByOM6i62aB/XRcCzZPd9UYxl1ZWQjNardbiTahIydzL/UMWHAQst27svScAeI94tzLQwr1cI1LS4S3VabelHdR0IkpZJctLpx5SdBDveyR7l1IiZTcOzQEpI5tRmZjv3AkBBHPX+5QZ6cJNMPqfeZLVucU2ugEpkvWWWG1TwGO+Q/kN+lzzNp6wHrZsdJQdqpVHb8y8keNivtlnrlrMMXImXw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6795.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(346002)(136003)(396003)(366004)(39860400002)(33656002)(64756008)(66476007)(316002)(76116006)(5660300002)(52536014)(9686003)(478600001)(66946007)(66556008)(55016002)(66446008)(4326008)(186003)(26005)(83380400001)(8936002)(110136005)(54906003)(8676002)(53546011)(86362001)(6506007)(71200400001)(7696005)(2906002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?utf-8?B?ZUwyclJBSXJMZmhYUGNSY0NDaGtLMVFsMmNBWUVLTjcrQjhDUzNGTXN2VDJ4?=
 =?utf-8?B?a0lmS1hKKzhjdGlPYWJHZkRXV280ZVZLN0lhNUpvUUIxT3RaWlZMVUJ6MjFI?=
 =?utf-8?B?T3VQczg5Qnh0bmgyR2lQRHV0VTF6WTdyN1pjcXZvQXJBaVQ3NGs4RWwyMmhq?=
 =?utf-8?B?ZWorWVRFamNkUmszUTI1bm10Tk5ocG0xdXlXaTRjNjRFVGtLWS9lRVg3Z2d4?=
 =?utf-8?B?anB5SnpnYysvek9ZVUFkM1FRMzBKMU0rUWFJb2FNQjcxOXlGQ3pFdDFTT08x?=
 =?utf-8?B?bW9xcVRHK2pWYnJ1MXRMRTgyQlBKUHVuOEQ0WlZvZnJnYWR0RWhhNDcrNFJT?=
 =?utf-8?B?QWhvdGlsZEZ2WXVzK0F2bkd2WTVUWXdhYzVtcjRZSmhPQmRjRXI1TEtjQjRF?=
 =?utf-8?B?YURseFp1bmRtYXJEOXJMNDM4VGxFdjl1ZHo0aUhEWUxqQ1R0VFlhWjV6Y2tS?=
 =?utf-8?B?ZDNSWENwMDk5UXphaXNZdGxydDlCVnF6QzIzNndaajgrMmUwd1BMVFpuL3hW?=
 =?utf-8?B?QUhlam1KalZWaDNMeml4VWZGanpaRmFLdXp2RHg4Q21pZDNvMG9GbWVIb2g3?=
 =?utf-8?B?M28yOXM4SkxYTm15SDNlaC9yREpvUzZOcHI4RUw1eVQrSzhtM2Z0SUlqTHFW?=
 =?utf-8?B?UVdDUTRxNjlGbzlKZVVKeHpONmxldjVkbGJ6ZnJ4eW0wdGNxdlpFaVZMWkI1?=
 =?utf-8?B?QXhXcjNpa0hza2lrTW1EOE9NZ040blpCRVB3U1YxaW00djdsNXZWWWExR0o3?=
 =?utf-8?B?ZGVtMlZaWnZMeXhmZ3JYVUxsSkxxWkNudnRCRXQzdHBZK0xjZ0VwSVNMZmFm?=
 =?utf-8?B?UTlyODFYWHBGdEd0QjBDTlBndnFoTVB0YkRlUnMyR2FraVdFWlhOWTZOSUpY?=
 =?utf-8?B?ZFhJSmpoSDROb1ZydzZLUXVkMUZiTlRLdzQwcXNhWUhQWWthNWNodlhPWXJT?=
 =?utf-8?B?SS9LWjhobkRodTZBVTJIVlk3MFVWcXc4M0JFZUJmdTRMRGxXVy9yRzl5ckRS?=
 =?utf-8?B?bnc2SlFubk5INGNwYVc3WTBaWmErdlEvWDllSEppcUV0UXFDQmZZcU5aK0Vi?=
 =?utf-8?B?SHFqeDN2Y1VKanhydldhcHRNUWRQWVJnZllReCs4OTVWRG0ycExzU29OZlB0?=
 =?utf-8?B?RDBjWVQvdWZuUkJMQ1M2N3IvcDJVN3V5VlpKN252eStqVDU2RXlYNTkvTE9l?=
 =?utf-8?B?QStRWElHRTdwMnJZYWYyMHVyNk1OeUpJZ00zYXQ2UzNabHpzMzhvSjBTbjBh?=
 =?utf-8?B?bUdxVGl0NlVOV2M5K3JXdi9mUjlFT0pEMGN1eE9PTmE0V3BoY3BmNDhkRnFo?=
 =?utf-8?Q?0LLAa19AYiRWo=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB6795.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 86ef376d-173d-4ce3-68fa-08d8951e776d
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Nov 2020 10:55:35.6837
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KWqgDVwC4SLnYMSavxKlgRf+7vIAKdXeLi32pJ290rtguOqFYMRlpGXeP5QZjgAkVTUkmK8pJ/p4IKNqCcQ4IA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0401MB2327
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEpvaG4gR2FycnkgPGpvaG4u
Z2FycnlAaHVhd2VpLmNvbT4NCj4gU2VudDogMjAyMOW5tDEx5pyIMzDml6UgMTc6NDYNCj4gVG86
IEpvYWtpbSBaaGFuZyA8cWlhbmdxaW5nLnpoYW5nQG54cC5jb20+OyB3aWxsQGtlcm5lbC5vcmc7
DQo+IHJvYmgrZHRAa2VybmVsLm9yZw0KPiBDYzogZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7
IGRsLWxpbnV4LWlteCA8bGludXgtaW14QG54cC5jb20+OyBGcmFuayBMaQ0KPiA8ZnJhbmsubGlA
bnhwLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSCAyLzJdIHBlcmYvaW14X2RkcjogQWRkIHN5
c3RlbSBQTVUgaWRlbnRpZmllciBmb3INCj4gdXNlcnNwYWNlDQo+IA0KPiBPbiAyOC8xMS8yMDIw
IDA1OjM2LCBKb2FraW0gWmhhbmcgd3JvdGU6DQo+ID4gVGhlIEREUiBQZXJmIGZvciBpLk1YOCBp
cyBhIHN5c3RlbSBQTVUgd2hvc2UgQVhJIElEIHdvdWxkIGRpZmZlcmVudA0KPiA+IGZyb20gU29D
IHRvIFNvQy4gTmVlZCBleHBvc2Ugc3lzdGVtIFBNVSBpZGVudGlmaWVyIGZvciB1c2Vyc3BhY2Ug
d2hpY2gNCj4gPiByZWZlciB0byAvc3lzL2J1cy9ldmVudF9zb3VyY2UvZGV2aWNlcy88UE1VIERF
VklDRT4vaWRlbnRpZmllci4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvYWtpbSBaaGFuZyA8
cWlhbmdxaW5nLnpoYW5nQG54cC5jb20+DQo+ID4gLS0tDQo+ID4gICBkcml2ZXJzL3BlcmYvZnNs
X2lteDhfZGRyX3BlcmYuYyB8IDQyDQo+ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
DQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgNDIgaW5zZXJ0aW9ucygrKQ0KPiA+DQo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvcGVyZi9mc2xfaW14OF9kZHJfcGVyZi5jDQo+ID4gYi9kcml2ZXJzL3Bl
cmYvZnNsX2lteDhfZGRyX3BlcmYuYw0KPiA+IGluZGV4IDRmMDYzZmIxYzZiNC4uMzUxN2QyZmIx
NDY5IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvcGVyZi9mc2xfaW14OF9kZHJfcGVyZi5jDQo+
ID4gKysrIGIvZHJpdmVycy9wZXJmL2ZzbF9pbXg4X2Rkcl9wZXJmLmMNCj4gPiBAQCAtNTAsNiAr
NTAsNyBAQCBzdGF0aWMgREVGSU5FX0lEQShkZHJfaWRhKTsNCj4gPg0KPiA+ICAgc3RydWN0IGZz
bF9kZHJfZGV2dHlwZV9kYXRhIHsNCj4gPiAgIAl1bnNpZ25lZCBpbnQgcXVpcmtzOyAgICAvKiBx
dWlya3MgbmVlZGVkIGZvciBkaWZmZXJlbnQgRERSIFBlcmYgY29yZQ0KPiAqLw0KPiA+ICsJY29u
c3QgY2hhciAqaWRlbnRpZmllcjsJLyogc3lzdGVtIFBNVSBpZGVudGlmaWVyIGZvciB1c2Vyc3Bh
Y2UgKi8NCj4gDQo+IHNvIGlmIHRoaXMgaXMgbm90IHNldCwgdGhlbiB3aGF0IGRvZXMgdGhlIHN5
c2ZzIGlkZW50aWZpZXIgZmlsZSBzaG93Pw0KDQpTZWVtcyB0byBiZSAobnVsbCkuDQoNCj4gSXQg
c2VlbXMgdG8gYmUgbm90IHNldCBmb3IgImZzbCxpbXg4LWRkci1wbXUiIG9yICJmc2wsaW14OG0t
ZGRyLXBtdSINCj4gbWF0Y2hpbmcuDQo+IA0KPiBNYXliZSBpdCdzIGJldHRlciBkbyBsaWtlIEkg
ZGlkIGZvciBTTU1VIFBNQ0csIGFuZCBub3Qgc2hvdyB0aGUgZmlsZSBpZiBub3Qgc2V0Lg0KDQpP
SywgSSB3aWxsIGltcHJvdmUgaXQuIFRoYW5rcy4NCg0KQmVzdCBSZWdhcmRzLA0KSm9ha2ltIFpo
YW5nDQo+IFRoYW5rcywNCj4gSm9obg0KPiANCj4gPiAgIH07DQo+ID4NCj4gPiAgIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgZnNsX2Rkcl9kZXZ0eXBlX2RhdGEgaW14OF9kZXZ0eXBlX2RhdGE7IEBADQo+
ID4gLTU4LDEzICs1OSwzMiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGZzbF9kZHJfZGV2dHlwZV9k
YXRhDQo+IGlteDhtX2RldnR5cGVfZGF0YSA9IHsNCj4gPiAgIAkucXVpcmtzID0gRERSX0NBUF9B
WElfSURfRklMVEVSLA0KPiA+ICAgfTsNCj4gPg0KPiA+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGZz
bF9kZHJfZGV2dHlwZV9kYXRhIGlteDhtcV9kZXZ0eXBlX2RhdGEgPSB7DQo+ID4gKwkucXVpcmtz
ID0gRERSX0NBUF9BWElfSURfRklMVEVSLA0KPiA+ICsJLmlkZW50aWZpZXIgPSAiaS5NWDhNUSIs
DQo+ID4gK307DQo+ID4gKw0KPiA+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGZzbF9kZHJfZGV2dHlw
ZV9kYXRhIGlteDhtbV9kZXZ0eXBlX2RhdGEgPSB7DQo+ID4gKwkucXVpcmtzID0gRERSX0NBUF9B
WElfSURfRklMVEVSLA0KPiA+ICsJLmlkZW50aWZpZXIgPSAiaS5NWDhNTSIsDQo+ID4gK307DQo+
ID4gKw0KPiA+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGZzbF9kZHJfZGV2dHlwZV9kYXRhIGlteDht
bl9kZXZ0eXBlX2RhdGEgPSB7DQo+ID4gKwkucXVpcmtzID0gRERSX0NBUF9BWElfSURfRklMVEVS
LA0KPiA+ICsJLmlkZW50aWZpZXIgPSAiaS5NWDhNTiIsDQo+ID4gK307DQo+ID4gKw0KPiA+ICAg
c3RhdGljIGNvbnN0IHN0cnVjdCBmc2xfZGRyX2RldnR5cGVfZGF0YSBpbXg4bXBfZGV2dHlwZV9k
YXRhID0gew0KPiA+ICAgCS5xdWlya3MgPSBERFJfQ0FQX0FYSV9JRF9GSUxURVJfRU5IQU5DRUQs
DQo+ID4gKwkuaWRlbnRpZmllciA9ICJpLk1YOE1QIiwNCj4gPiAgIH07DQo+ID4NCj4gPiAgIHN0
YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGlteF9kZHJfcG11X2R0X2lkc1tdID0gew0K
PiA+ICAgCXsgLmNvbXBhdGlibGUgPSAiZnNsLGlteDgtZGRyLXBtdSIsIC5kYXRhID0gJmlteDhf
ZGV2dHlwZV9kYXRhfSwNCj4gPiAgIAl7IC5jb21wYXRpYmxlID0gImZzbCxpbXg4bS1kZHItcG11
IiwgLmRhdGEgPQ0KPiAmaW14OG1fZGV2dHlwZV9kYXRhfSwNCj4gPiArCXsgLmNvbXBhdGlibGUg
PSAiZnNsLGlteDhtcS1kZHItcG11IiwgLmRhdGEgPSAmaW14OG1xX2RldnR5cGVfZGF0YX0sDQo+
ID4gKwl7IC5jb21wYXRpYmxlID0gImZzbCxpbXg4bW0tZGRyLXBtdSIsIC5kYXRhID0gJmlteDht
bV9kZXZ0eXBlX2RhdGF9LA0KPiA+ICsJeyAuY29tcGF0aWJsZSA9ICJmc2wsaW14OG1uLWRkci1w
bXUiLCAuZGF0YSA9ICZpbXg4bW5fZGV2dHlwZV9kYXRhfSwNCj4gPiAgIAl7IC5jb21wYXRpYmxl
ID0gImZzbCxpbXg4bXAtZGRyLXBtdSIsIC5kYXRhID0NCj4gJmlteDhtcF9kZXZ0eXBlX2RhdGF9
LA0KPiA+ICAgCXsgLyogc2VudGluZWwgKi8gfQ0KPiA+ICAgfTsNCj4gPiBAQCAtODQsNiArMTA0
LDI3IEBAIHN0cnVjdCBkZHJfcG11IHsNCj4gPiAgIAlpbnQgaWQ7DQo+ID4gICB9Ow0KPiA+DQo+
ID4gK3N0YXRpYyBzc2l6ZV90IGRkcl9wZXJmX2lkZW50aWZpZXJfc2hvdyhzdHJ1Y3QgZGV2aWNl
ICpkZXYsDQo+ID4gKwkJCQkJc3RydWN0IGRldmljZV9hdHRyaWJ1dGUgKmF0dHIsDQo+ID4gKwkJ
CQkJY2hhciAqcGFnZSkNCj4gPiArew0KPiA+ICsJc3RydWN0IGRkcl9wbXUgKnBtdSA9IGRldl9n
ZXRfZHJ2ZGF0YShkZXYpOw0KPiA+ICsNCj4gPiArCXJldHVybiBzcHJpbnRmKHBhZ2UsICIlc1xu
IiwgcG11LT5kZXZ0eXBlX2RhdGEtPmlkZW50aWZpZXIpOyB9DQo+ID4gKw0KPiA+ICtzdGF0aWMg
c3RydWN0IGRldmljZV9hdHRyaWJ1dGUgZGRyX3BlcmZfaWRlbnRpZmllcl9hdHRyID0NCj4gPiAr
CV9fQVRUUihpZGVudGlmaWVyLCAwNDQ0LCBkZHJfcGVyZl9pZGVudGlmaWVyX3Nob3csIE5VTEwp
Ow0KPiA+ICsNCj4gPiArc3RhdGljIHN0cnVjdCBhdHRyaWJ1dGUgKmRkcl9wZXJmX2lkZW50aWZp
ZXJfYXR0cnNbXSA9IHsNCj4gPiArCSZkZHJfcGVyZl9pZGVudGlmaWVyX2F0dHIuYXR0ciwNCj4g
PiArCU5VTEwsDQo+ID4gK307DQo+ID4gKw0KPiA+ICtzdGF0aWMgc3RydWN0IGF0dHJpYnV0ZV9n
cm91cCBkZHJfcGVyZl9pZGVudGlmaWVyX2F0dHJfZ3JvdXAgPSB7DQo+ID4gKwkuYXR0cnMgPSBk
ZHJfcGVyZl9pZGVudGlmaWVyX2F0dHJzLA0KPiA+ICt9Ow0KPiA+ICsNCj4gPiAgIGVudW0gZGRy
X3BlcmZfZmlsdGVyX2NhcGFiaWxpdGllcyB7DQo+ID4gICAJUEVSRl9DQVBfQVhJX0lEX0ZJTFRF
UiA9IDAsDQo+ID4gICAJUEVSRl9DQVBfQVhJX0lEX0ZJTFRFUl9FTkhBTkNFRCwNCj4gPiBAQCAt
MjM3LDYgKzI3OCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgYXR0cmlidXRlX2dyb3VwICphdHRy
X2dyb3Vwc1tdID0gew0KPiA+ICAgCSZkZHJfcGVyZl9mb3JtYXRfYXR0cl9ncm91cCwNCj4gPiAg
IAkmZGRyX3BlcmZfY3B1bWFza19hdHRyX2dyb3VwLA0KPiA+ICAgCSZkZHJfcGVyZl9maWx0ZXJf
Y2FwX2F0dHJfZ3JvdXAsDQo+ID4gKwkmZGRyX3BlcmZfaWRlbnRpZmllcl9hdHRyX2dyb3VwLA0K
PiA+ICAgCU5VTEwsDQo+ID4gICB9Ow0KPiA+DQo+ID4NCg0K

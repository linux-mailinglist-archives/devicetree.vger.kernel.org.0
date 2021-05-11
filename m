Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4B7AC37A47A
	for <lists+devicetree@lfdr.de>; Tue, 11 May 2021 12:22:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231372AbhEKKXq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 May 2021 06:23:46 -0400
Received: from mail-eopbgr70081.outbound.protection.outlook.com ([40.107.7.81]:15404
        "EHLO EUR04-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S231338AbhEKKXo (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 11 May 2021 06:23:44 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aclivCINwEUn4Ok5mp81BbOVQteP2g1AmuK9I04A2AUqq6B6dMYh8WD4q9fiKMEFBnQdyFMf7YbMAhcNas9T8hxXh4boiGd48MAHD85wAuz16cQxDJxsDsaxbzn/7x6Mu4eYTOmRu/CIqiNTkwASQoEDRBubApWQho5/Vi4IIEVoPdy81PPBJd/kZjKhPV/0K8bB0fycf5t5QWmxbFz3QfWuQ6yvIN7dPra9MoVdvmAP1sIhozTS901najMELSaAhlCygLXRfhd/vvrDcOgAb0hMKyOSgXqHHP8p4zfE3eU3VnRGargAPF4powrDda8bpzxDYAsHvvCl4qvSFy0yYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dSv2IVBcJW9TWHG1dXtUoesufm1ZONn6KMTWF6z3TkY=;
 b=R91UqVjpt2BOhxUFu+wF0dq8cvgV44uHFZlu/8chJA6Bkc9USVik3CMbh0VI61VvfytdGBopIvkb7d16lfCUNlGOmZ9ujqxVXKrvC9N0U/VtepahBBSIlEbUcWNt0OpaQhOVY+sBUCLTMPbLhabQqRzlcGIVe4+VGvs48Ssq2RyIf3ywDiDOwz60s1N/ttnTdsgfURZaYvLvSx7TzdKmb3MLy0bNn5bCzmunc6bRf0gqnA2uyyhZ7V27Q3jlg1+oTZmylkVVtijvyKathRhVgzmfB0EML4eFgLqJrb4qEf6myplhIewQr1WwIg8mo9u8elNWNuy2HVTpE5DopjO+mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dSv2IVBcJW9TWHG1dXtUoesufm1ZONn6KMTWF6z3TkY=;
 b=nGqzeDjPV8Fc58EQuzRu+qk3T0ilMTIABLdLWvLQbUFV3WjkVBdipflf2Jn/vc+3xrILcCm/2Sf0ql0aI+XAgDgX5RxrG9Ovfch42SVQaR2qhlZTP347UdJgVBSTjFyf0dn7+5ujivHYA/VqRTtWqvU+4EP4aBWfaLKceYO0ijc=
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB3PR0402MB3769.eurprd04.prod.outlook.com (2603:10a6:8:f::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4108.25; Tue, 11 May
 2021 10:22:16 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::3400:b139:f681:c8cf]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::3400:b139:f681:c8cf%9]) with mapi id 15.20.4108.031; Tue, 11 May 2021
 10:22:16 +0000
From:   Joakim Zhang <qiangqing.zhang@nxp.com>
To:     "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>
CC:     dl-linux-imx <linux-imx@nxp.com>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: RE: [PATCH] arm64: dts: imx8mp-evk: enable EQOS ethernet
Thread-Topic: [PATCH] arm64: dts: imx8mp-evk: enable EQOS ethernet
Thread-Index: AQHXOmqwBGi+3980tEaeaq+vyHo246reKgVg
Date:   Tue, 11 May 2021 10:22:16 +0000
Message-ID: <DB8PR04MB67953C26FDE8ADE22E93B981E6539@DB8PR04MB6795.eurprd04.prod.outlook.com>
References: <20210426070654.8703-1-qiangqing.zhang@nxp.com>
In-Reply-To: <20210426070654.8703-1-qiangqing.zhang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4d18217c-7132-4e86-461f-08d91466a6a5
x-ms-traffictypediagnostic: DB3PR0402MB3769:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB376960A02688E8CE5B630BC9E6539@DB3PR0402MB3769.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:267;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tTuHmOHuSdrXdh9iv7wr/7NKULtXeo6f2DsxDz9C9VupD/JgrizkqL322wdqZFC/Lip0TK71PGoBQsuDslkMJAzzl1CxnDFnjFXl9JCLSgLm7Uof5BWqvBbJpi/af99C8VV5W1tfyDIuGT1x8QtP0R0HWZkkjcxHDpBAGBhtjTbAdHOjyECgOvsIMLMpvbqW/xOEmNFy/DKdJ2j5o4UZOmZd+12WgKx5taNEBowJ9vuVeNO4vkU6vQtRe1CtkxqyqCXOKeZIgwHEPqykiJ7TAKKxzBWzqxQsCd+eeb3IhRuzVdNQLXOT/GgaU7Z3rBx7dpzORXd2rzRtL9+yE91fsV+AL41JsqigtuRP+/8PDVzVyOk2U0zZWNR32UHJ+y0Xxz4zLuAo/lKH9C2u/3nN9usz/xIrvNQLjKXroO555vzNnIIIehh55+Omr9Cd/nVQKR3AxYcEYB9ZgkwgQD91kGdWcRfxfp+R/Lk7vMHqwLqjzmUEKOyZUwpgDB4iApUt9Fxss+JLSsX36Cw3xIPijxoZBDqJyoz5tAJjWoq7+SUR3cy30gejJW/9FWj+cI4i/Wjn8gpjjREjy0PxC+OTVSlvDGJ+sFLr35CeOIUNlxFK80FfYqf7Hg6y88exnSV2Khoe35REPgkNtrE88ITLCw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6795.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(396003)(376002)(136003)(39850400004)(346002)(86362001)(7696005)(53546011)(4326008)(38100700002)(6506007)(8676002)(5660300002)(122000001)(8936002)(26005)(478600001)(71200400001)(2906002)(66446008)(9686003)(64756008)(54906003)(76116006)(66556008)(110136005)(66476007)(66946007)(33656002)(316002)(186003)(55016002)(83380400001)(52536014)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?gb2312?B?U01KejZiclV3d0FLaUFNOE5WN2Qxb2tRUlJMWVJkaGNzdVBJMTg5aDZZd21Q?=
 =?gb2312?B?eVJUczVObzBQTkhaVjVvMGh4L0hqRnpZT0huRmt1WjMrbjgvcDRoUjBIcFlm?=
 =?gb2312?B?dnQ5ZXA3V1FtajhTT1VCL2htcjFnVXlsQ2ZQREN4QnJBQzZtOXNkQk9MaC9X?=
 =?gb2312?B?Z0t0NzFmbWdYNnk5cEd4aHg4TDkwRFRoaTBYK0IvRjVNVCtmMnkxTUE1a3Q5?=
 =?gb2312?B?MW8rSElCL09WL3IzMlYrbEt1MFRMbktsRTY1cjlDWnlaci82SXlUWG9Qdkpr?=
 =?gb2312?B?UElEdEcwMVhobDRtUDFXdkZuZVc5MTJiMHByYlBzKzB3Nmhxdklmc1BEc2s5?=
 =?gb2312?B?Z3VNNGQ5YTcvQ0p4b1l3WjV3Mk1HWUd6ckJkbmRWNmlFUVNPUFZpSzZwakNq?=
 =?gb2312?B?S2o0VGVaanZHZVdrcCtOTHNudUJjK21RemF4blEzNTJFWi9xdW9lUE53Qk9O?=
 =?gb2312?B?N0xhRm9OWkhHSjB6MXNUWUNKdTZ4LzVQUzdENUluNHFZUVdycWozRktiR3E0?=
 =?gb2312?B?NmR4NkxCcFQxeTU4cEZ4alV5ZGM4Y3VONHVJaWJjQW9sWDlWQm9BZjM0QlA5?=
 =?gb2312?B?SHpYNzk3UzBPdENkNU05bGNhV0lhejUyeEUwdXdySFplZjlQV0k5MFpwc0Jn?=
 =?gb2312?B?SExia3JpRWUyTmw1cXdkT0VWTXNLemlKT0IvU1hjMitHTFJJRVhFMEZkS3N1?=
 =?gb2312?B?NGtFN3hNQ1pQWE96RDMzYVEwT045SlRsUmNTVTYxZjdndE11R09ELzRncHdl?=
 =?gb2312?B?RDRDTmlxRFpqVDU4a3RHUjNXNHNucWN6dzFrTEVyT2NSdVlxTFd5T21YSFd0?=
 =?gb2312?B?MytuRW9SYTJYVkNFaENvZjBwQms4bTRoSzl1VmIzaWNCNVc3OVVPeC9KeWlH?=
 =?gb2312?B?UHJmT1piTkpyS3lpMjB3a2s0WVNzbkd1bXRScEIvOU1ReEVIdDlKRmMrOU1H?=
 =?gb2312?B?dmNpK0RSZHdkeWtUVDRmdGUvQklKNmZqZUpDcXpLL2RFKzJ0UnNoU0ZILzgr?=
 =?gb2312?B?NmlackpMaUprSzR0dmFtaTgxZkJLYjJoS1VTcS96cnh6RUlheW05Yjc5WUhj?=
 =?gb2312?B?QkRvdEJDRS8vUlRzTmlDbGJYcm1rYnhCZE5kYWZVUm1WUU5MaFVFOENhd25l?=
 =?gb2312?B?QWowTG5yYzhiaEx1bXZVSzZZbFZRVUNYUVU1S2hVd1p1MDRBRmwxQTF4VHB5?=
 =?gb2312?B?aWVITmVLODMvemtRVUNSSWhvWFA2SGgvQkdGSXZRdkFReDBZSm1YV2U0ZFFq?=
 =?gb2312?B?VS80SWZ1WC83Y3JEa1IxMTU1ZE5Da1Y4SjBJZk9sczFia01HaFYvcTVtTVpq?=
 =?gb2312?B?UjZWR3hodmFuNmhqUzBwT3Bya09sQVVLZ0RORDFWUlhuVmxScm1PVmw4Wmhl?=
 =?gb2312?B?MGNPd2c3MjlPemlxSlNWemlpYStLZEUwQzJqdGdvaFVuR0N2c3ZDUWVmOTBR?=
 =?gb2312?B?UHluMkFpbDRLaFh6VnZ0Z1NiWE56aVR2RUhmaFVxeXNDNXlhcUVpd0F6emRX?=
 =?gb2312?B?RUREL2lnYlltK0xpN2tZV05TVmRweW1zRVFnYnU3Vm1MNjQ4VmxLVVZabUN2?=
 =?gb2312?B?Smljb2R5cFBXMWNITUdxMjRBTDBmK1d1ZnVUbmFtd3RSWDJObFZhOE55bThl?=
 =?gb2312?B?V0orcDRtSUlUTE1QQjA1bi85MGRsZ2tjUUJiL3JNNldZRlN0Z2JpaE1Bdyth?=
 =?gb2312?B?dXJNQ01oOSsrS2pZUFB5ZWQxNE8rNjBTTVdWVmthMGlHVEtoTnBvcmUwTW9j?=
 =?gb2312?Q?2iJWTnoZb4fE8xIiI7xsuKvbXxMKEfxIfAzfNUU?=
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB6795.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d18217c-7132-4e86-461f-08d91466a6a5
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2021 10:22:16.3639
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dgmaBRot+yw0gtsYMmhdaIGCW7aAIJ8JRAfcCtnvJeGPDg/36qwPnrEE/043xvNjuyZUn/cQ+puN9OaWa8xuoQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3769
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DQpLaW5kbHkgcGluZ2luZy4uLg0KDQpCZXN0IFJlZ2FyZHMsDQpKb2FraW0gWmhhbmcNCg0KPiAt
LS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBKb2FraW0gWmhhbmcgPHFpYW5ncWlu
Zy56aGFuZ0BueHAuY29tPg0KPiBTZW50OiAyMDIxxOo01MIyNsjVIDE1OjA3DQo+IFRvOiByb2Jo
K2R0QGtlcm5lbC5vcmc7IHNoYXduZ3VvQGtlcm5lbC5vcmc7IHMuaGF1ZXJAcGVuZ3V0cm9uaXgu
ZGU7DQo+IGZlc3RldmFtQGdtYWlsLmNvbQ0KPiBDYzogZGwtbGludXgtaW14IDxsaW51eC1pbXhA
bnhwLmNvbT47IGtlcm5lbEBwZW5ndXRyb25peC5kZTsNCj4gZGV2aWNldHJlZUB2Z2VyLmtlcm5l
bC5vcmcNCj4gU3ViamVjdDogW1BBVENIXSBhcm02NDogZHRzOiBpbXg4bXAtZXZrOiBlbmFibGUg
RVFPUyBldGhlcm5ldA0KPiANCj4gRW5hYmxlIEVRT1MgZXRoZXJuZXQgb24gaS5NWDhNUCBFVksg
Ym9hcmQuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKb2FraW0gWmhhbmcgPHFpYW5ncWluZy56aGFu
Z0BueHAuY29tPg0KPiAtLS0NCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDht
cC1ldmsuZHRzIHwgNDAgKysrKysrKysrKysrKysrKysrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCA0
MCBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9m
cmVlc2NhbGUvaW14OG1wLWV2ay5kdHMNCj4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2Fs
ZS9pbXg4bXAtZXZrLmR0cw0KPiBpbmRleCAyYzI4ZTU4OTY3N2UuLmZhZTZhYTRjNmI3YiAxMDA2
NDQNCj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1wLWV2ay5kdHMN
Cj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1wLWV2ay5kdHMNCj4g
QEAgLTgxLDYgKzgxLDI2IEBADQo+ICAJc3RhdHVzID0gImRpc2FibGVkIjsvKiBjYW4yIHBpbiBj
b25mbGljdCB3aXRoIHBkbSAqLyAgfTsNCj4gDQo+ICsmZXFvcyB7DQo+ICsJcGluY3RybC1uYW1l
cyA9ICJkZWZhdWx0IjsNCj4gKwlwaW5jdHJsLTAgPSA8JnBpbmN0cmxfZXFvcz47DQo+ICsJcGh5
LW1vZGUgPSAicmdtaWktaWQiOw0KPiArCXBoeS1oYW5kbGUgPSA8JmV0aHBoeTA+Ow0KPiArCXN0
YXR1cyA9ICJva2F5IjsNCj4gKw0KPiArCW1kaW8gew0KPiArCQljb21wYXRpYmxlID0gInNucHMs
ZHdtYWMtbWRpbyI7DQo+ICsJCSNhZGRyZXNzLWNlbGxzID0gPDE+Ow0KPiArCQkjc2l6ZS1jZWxs
cyA9IDwwPjsNCj4gKw0KPiArCQlldGhwaHkwOiBldGhlcm5ldC1waHlAMSB7DQo+ICsJCQljb21w
YXRpYmxlID0gImV0aGVybmV0LXBoeS1pZWVlODAyLjMtYzIyIjsNCj4gKwkJCXJlZyA9IDwxPjsN
Cj4gKwkJCWVlZS1icm9rZW4tMTAwMHQ7DQo+ICsJCX07DQo+ICsJfTsNCj4gK307DQo+ICsNCj4g
ICZmZWMgew0KPiAgCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7DQo+ICAJcGluY3RybC0wID0g
PCZwaW5jdHJsX2ZlYz47DQo+IEBAIC0xNzcsNiArMTk3LDI2IEBADQo+ICB9Ow0KPiANCj4gICZp
b211eGMgew0KPiArCXBpbmN0cmxfZXFvczogZXFvc2dycCB7DQo+ICsJCWZzbCxwaW5zID0gPA0K
PiArCQkJTVg4TVBfSU9NVVhDX0VORVRfTURDX19FTkVUX1FPU19NREMNCj4gCTB4Mw0KPiArCQkJ
TVg4TVBfSU9NVVhDX0VORVRfTURJT19fRU5FVF9RT1NfTURJTw0KPiAJMHgzDQo+ICsJCQlNWDhN
UF9JT01VWENfRU5FVF9SRDBfX0VORVRfUU9TX1JHTUlJX1JEMA0KPiAJMHg5MQ0KPiArCQkJTVg4
TVBfSU9NVVhDX0VORVRfUkQxX19FTkVUX1FPU19SR01JSV9SRDENCj4gCTB4OTENCj4gKwkJCU1Y
OE1QX0lPTVVYQ19FTkVUX1JEMl9fRU5FVF9RT1NfUkdNSUlfUkQyDQo+IAkweDkxDQo+ICsJCQlN
WDhNUF9JT01VWENfRU5FVF9SRDNfX0VORVRfUU9TX1JHTUlJX1JEMw0KPiAJMHg5MQ0KPiArDQo+
IAlNWDhNUF9JT01VWENfRU5FVF9SWENfX0NDTV9FTkVUX1FPU19DTE9DS19HRU5FUkFURV9SWF8N
Cj4gQ0xLCTB4OTENCj4gKwkJCU1YOE1QX0lPTVVYQ19FTkVUX1JYX0NUTF9fRU5FVF9RT1NfUkdN
SUlfUlhfQ1RMDQo+IAkJMHg5MQ0KPiArCQkJTVg4TVBfSU9NVVhDX0VORVRfVEQwX19FTkVUX1FP
U19SR01JSV9URDANCj4gCTB4MWYNCj4gKwkJCU1YOE1QX0lPTVVYQ19FTkVUX1REMV9fRU5FVF9R
T1NfUkdNSUlfVEQxDQo+IAkweDFmDQo+ICsJCQlNWDhNUF9JT01VWENfRU5FVF9URDJfX0VORVRf
UU9TX1JHTUlJX1REMg0KPiAJMHgxZg0KPiArCQkJTVg4TVBfSU9NVVhDX0VORVRfVEQzX19FTkVU
X1FPU19SR01JSV9URDMNCj4gCTB4MWYNCj4gKwkJCU1YOE1QX0lPTVVYQ19FTkVUX1RYX0NUTF9f
RU5FVF9RT1NfUkdNSUlfVFhfQ1RMDQo+IAkJMHgxZg0KPiArDQo+IAlNWDhNUF9JT01VWENfRU5F
VF9UWENfX0NDTV9FTkVUX1FPU19DTE9DS19HRU5FUkFURV9UWF8NCj4gQ0xLCTB4MWYNCj4gKwkJ
CU1YOE1QX0lPTVVYQ19TQUkyX1JYQ19fR1BJTzRfSU8yMgkJCQkweDE5DQo+ICsJCT47DQo+ICsJ
fTsNCj4gKw0KPiAgCXBpbmN0cmxfZmVjOiBmZWNncnAgew0KPiAgCQlmc2wscGlucyA9IDwNCj4g
IAkJCU1YOE1QX0lPTVVYQ19TQUkxX1JYRDJfX0VORVQxX01EQwkJMHgzDQo+IC0tDQo+IDIuMTcu
MQ0KDQo=

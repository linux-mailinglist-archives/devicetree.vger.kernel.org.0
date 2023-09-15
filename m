Return-Path: <devicetree+bounces-343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 092027A13F3
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 04:46:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C46302821AB
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 02:46:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C1A6EC8;
	Fri, 15 Sep 2023 02:46:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79008A2C
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 02:46:44 +0000 (UTC)
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (mail-db5eur01on2047.outbound.protection.outlook.com [40.107.15.47])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6A2E2700
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 19:46:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kqcFddbEn0v3ptepLKa+lYVGCXq16+pzXBpRr8ZSimZ362GSt3ctot8rVZfGTqZxVirjYM9HxpWms9mCOY90TMGyXO83sh6Pgf5xhSHPer0ExrlrnHGndjg4PB7eXr4EI37+d5Z1WDbtSePdflhFsyJpQswNOe1cWvjQdhusSf80mTFW3KTx1wdK3+cNSFOHbsgM8wXhrh5Ead1TQys5Z6YqHb5Rlv0Qaes/miU9RRHDrdMTtap23kPwckl7nNv2cnLfI+Ci1mgM4Z5JNahSslDCIxYk+KuLyiS3vDeoZFCs8gLdNDwMQHqycZdhSDeTMgYU47aC2NAe8kVyqdjl3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=atXV0iX/5QymnpKRNOePvRgDsJamyvBp9uQs/r71VmA=;
 b=VwqcBP7XODM+tk7ZLAPObfhXyyk8eCFEGTSUkkiLGoGanRfC9CBPOqHB/2khfmpM35wxIbywUNf7YZ8/lfl7CM3tLzwmxvQoZ99bMIHCfjcXL2YC+R02YwwlZGmqtXUynltlGvvozfRrX6HnUC4vdn+wl0CGbofq8z2g8KL2uF8VrBk0mpLaQ1m9aDxrPAzT85awewKfhFIvnL/Js2m+E7kQWps1VE6PRl3n3PYtzkrfdnbqBMYwYbvAEHJsUjFMhKdBvD/xzYwWwP6oBOR7yCMG6qaCyOUH35gpWaalRM2WcR3HaMqlZR/lELbifwOwPiIz+dE6BBxt2Z8/riQUEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=atXV0iX/5QymnpKRNOePvRgDsJamyvBp9uQs/r71VmA=;
 b=UD7iQv5hDYm9I2voWUUKngVQJJh9So7UL0tf5Dcxqu5rWxZD+p5scoDinqjfw4lX++WGoHtbXGWs+9Fyy0cE386pTovgfCfJxn2qHjmyeCcUYrRoxGnsPlV5+QZtDlwmESzDkLKlhO8GckUGLprAWPCy4mvc3LH18L5bPHMyQx0=
Received: from DB7PR04MB4505.eurprd04.prod.outlook.com (2603:10a6:5:39::26) by
 AM9PR04MB8383.eurprd04.prod.outlook.com (2603:10a6:20b:3ed::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6792.19; Fri, 15 Sep 2023 02:46:41 +0000
Received: from DB7PR04MB4505.eurprd04.prod.outlook.com
 ([fe80::6444:e07a:e7f7:3923]) by DB7PR04MB4505.eurprd04.prod.outlook.com
 ([fe80::6444:e07a:e7f7:3923%7]) with mapi id 15.20.6792.020; Fri, 15 Sep 2023
 02:46:41 +0000
From: Xu Yang <xu.yang_2@nxp.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, "will@kernel.org"
	<will@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>, "shawnguo@kernel.org"
	<shawnguo@kernel.org>
CC: "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, dl-linux-imx
	<linux-imx@nxp.com>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, Ye Li <ye.li@nxp.com>
Subject: RE: [EXT] Re: [PATCH 1/2] perf: imx9_ddr_perf: resolve resource map
 conflict
Thread-Topic: [EXT] Re: [PATCH 1/2] perf: imx9_ddr_perf: resolve resource map
 conflict
Thread-Index: AQHZ5vR3PjBRwJP0k0Cn43kkI2W1GrAaHJAAgAER3+A=
Date: Fri, 15 Sep 2023 02:46:41 +0000
Message-ID:
 <DB7PR04MB45054E40510B0A356F94A8C98CF6A@DB7PR04MB4505.eurprd04.prod.outlook.com>
References: <20230914102038.2944844-1-xu.yang_2@nxp.com>
 <334c70fd-31f0-6ebb-e7e2-9f428da97cfa@linaro.org>
In-Reply-To: <334c70fd-31f0-6ebb-e7e2-9f428da97cfa@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB7PR04MB4505:EE_|AM9PR04MB8383:EE_
x-ms-office365-filtering-correlation-id: 02053c57-60ec-44c5-3927-08dbb595fdd9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 pashT1pD3vKA5RkYT9QQ9z+Ad6lTdf6magIfgXpVvcTtTIIOH6fmBy0QXlc3rHXBfe6k6t1Nabs40D5wJUaRqhzHi2YHzQKP9CtuvxaCRuLyoCe+iFyiuV8xoc93hpYnhttNBOat85SGvRgxLF+Dw4zDoSUBaAIqtRiSe4fayHObifjRaRsN0Y3kPAhU88Z3YvLlrDuMq1iNs5gn4OIZFSbK2YWiNL0dc2RjQ+v4TtxiGdlNC6wFtFX4pZ8+7rKkVq55k64Fh2s3pai8FJuOmkSCKaxNdwU8inYUu0tfjwEvK73TRUuZGwHAnKjfKoGB1fjSijwFY3E3ZjMFaatOQEU2vSywEKmIZseMv36hnu8NDmCvA9tDOJh6RPD9R+8WV56IkMaKdELCYDyHsTi7OCSDWYJ6WaR43yeeRoauH6T39wT/sdVyD8BUCs4/nQdOVgSSeajyZmqRmUcElrM9SOi347ltXcs3dbnekKByJBWo1YQjig3OmqwVcgk2cuJ7YNMAtMiN/mV+CAvXZ774gwrXoAobUTU3rVxtO9jOkXpyEFVqN0uHt2Pine1jmXkmpjXO00HRI7DOeRuKfUzmzvcrR7JaaGziF3vvkmonhPI2e04HEgQvpXf7bnyDMdd9
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB4505.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(136003)(396003)(346002)(366004)(39860400002)(186009)(451199024)(1800799009)(9686003)(6506007)(7696005)(53546011)(478600001)(71200400001)(83380400001)(26005)(76116006)(41300700001)(66556008)(66476007)(316002)(64756008)(52536014)(54906003)(66446008)(8676002)(5660300002)(8936002)(4326008)(2906002)(86362001)(33656002)(66946007)(122000001)(38100700002)(38070700005)(110136005)(55016003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?bG1icHIwLzFlNmNhdEZmYTRjQ1UrczNPck9xSWFscHMxRmo2UnZNL0lXMlUz?=
 =?utf-8?B?V3pZMEZhT25ORTA3YXZyN3dDUjNXak91ajl4OGduekx6Kzljc3N5KzQwU3ZX?=
 =?utf-8?B?MGJjYTNjR2VVR3hSMzVNT0pML3E0QlJVS1ZsQjFGZXFqQWUxZ1ZTT3oyejUv?=
 =?utf-8?B?TytsajBGMk54dzFkRUpRemJPVHlkM0xpMGlpSU8yVHArTjYrQXlmOWpMRVlk?=
 =?utf-8?B?bFk3Y3pXZFlITTBTcGF3MGw5MmNPak53cHpEbCtKcktsdTZzM0NCZ3I0T01J?=
 =?utf-8?B?ZjlkczNSTnJVbVdMOVh0S3Z4cG9ha3NqNTNNcjF2alRsK0E1a0hSTUs3NTBr?=
 =?utf-8?B?M1ovNFNYb1FtK1l1dkdaZ0JBNkNpV01JVmRoZGx0TGNxRm9iemgrKzJxOHJP?=
 =?utf-8?B?UEdBMkVRTm1vN1I3NWc2WDdFT0UvQ3FybE85R2xTZ01FckZzajVKYyt6REtC?=
 =?utf-8?B?UDdpWTNaclJiRVBzU010S01vaEdvUkJ5bW9BOFMzdW9zUUkxekVnbjkrRUU3?=
 =?utf-8?B?WllMQTVrQjQ0bUJnSWtObUthL1Y1bXhMbWFXdG1OM0w0aUVJMGFjMHBabWZH?=
 =?utf-8?B?MkJjcUVsemMzUkh3dWUxTDdyR3lOdXpDMStDOHpmdTZUUzZscVhRQ0xvRHV5?=
 =?utf-8?B?Ly82NG12OFM3TGMvaFZJYkdyRFVjbmUrdWkyUXBBQUpSTnI4a1l4ekFjYUtx?=
 =?utf-8?B?djlnVGcyZ0ZYVHJQUDh0MERXcXREcm9wYTRPalRveko2cEs2WWpiK1lZMld4?=
 =?utf-8?B?V2Q0QUYzTXNVU2VSNXI3VXo2MVpSVkNYN21RYkRPUHlILzd6TCtZTUJGQklF?=
 =?utf-8?B?SlE4M0VDQzl4SnNra3RHRmpaeXM4NFJQVW8wVUkrMHpicVV3T2NBcStEa2R4?=
 =?utf-8?B?d3BPMU1Wc3B1dlI2bkthRTM3dmJXL3BFN3R6cXpDb1NUbmtRT2tsVUtTZXdi?=
 =?utf-8?B?NGxNVFVURDM2RlF5clcwNnliV0Y0ZlZVRXEwRkkzdDF0WnF4UEMrajNkWHRi?=
 =?utf-8?B?MVNLU3VoLzBQUDZob0ViMW9iQk9YSDB0dklqOW9MeXc3V1l5MU9RWmMwMUl0?=
 =?utf-8?B?ZlJMeldaVU91MEJreTF5bllJcVJCTU9uZlBxZDVpbjBxaS9WbmRZK2UxcG5E?=
 =?utf-8?B?Q3RPdldrZnJvdkgxbFEzUWt4VHJzWjJXaGF3N1lhc2Z3ZnJJNEZhL0pIeVU0?=
 =?utf-8?B?TVVpZEVhVGovNThEV1NkL2t6RGpvUXlObEs5TmRzT0JFM2dWNGk0Kzd2VVlN?=
 =?utf-8?B?L2gvZDVFZ09lME1VZlAyb2pkamUzRmFpUzRKUm9GN1JvYUphM0k4djM4N2R2?=
 =?utf-8?B?WllONlhPamh1Mi92N0lJb0F3SnI5Q0Z1U3lhUVEycTJLeFBtMklUeVdxYWFt?=
 =?utf-8?B?dmlvS0lkelhFcVpVRFBkbjBZVk9RelgzK21BQnQ3SFRkV2ZtQk9CSmgySlVY?=
 =?utf-8?B?MFRvNGxrekhrb3JBeVd0UmhidnJpenRYK3pCOFc3cnFzVGlmeTI1VnpVb1F2?=
 =?utf-8?B?d1FsejVnd1p1Rk5IOGFrVDk1WC9xeVUwMk9kV1pIcjJiZE1RQ2ZZYlRkZXhC?=
 =?utf-8?B?eHJjM1JDYXFEYUMvVVhjYk1IRlJtSW93cjRTVWFjUEFSaEtaVy94M2dLNVo1?=
 =?utf-8?B?VjRVdUdCa0szQTA4K1l6WE8zN3hlR3pPY005YWFRSWdhZTA2L2dtd3dCeGhC?=
 =?utf-8?B?L0d6ZDYxY2lsUzM2WXNLTDQ5dUhRUk4rcXFCLy9LUTBoeEc0VFNQcS9hZlpw?=
 =?utf-8?B?OWJEbXdRN2pJTGxhOE8yYjNXS1pHVW9vODJWYktKQUY0WGllTFQybUpqYlpa?=
 =?utf-8?B?RWpkeEpKNWJPWXFGL2FKRXF2R29JZXZad01ZOTJwbTdwdTJjc2hxWkRMNDB1?=
 =?utf-8?B?aS9RUlBQN0I4M0hSQjErNHZHbnV4a1UyejJoSnplbU9CcXBZK1dDNFBvTXN4?=
 =?utf-8?B?dEw4b2g5QjU2UTNTTkR0OEs4YmFDMWNTaGZLYXljdnc2ZzRHaHlHVHFGQnJi?=
 =?utf-8?B?dWVPZ2ZSeVdabmZCSXBwSkRzenQ5bnR2TnhZVVpFVHNwblp1VWN0R1JjVmw4?=
 =?utf-8?B?aFM4SnBPck9wRXA4MjZ4UDJxMHcvR3pjekduMDE1VmpmMjVuVkdkcVNyL0Zx?=
 =?utf-8?Q?tP+8=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB4505.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02053c57-60ec-44c5-3927-08dbb595fdd9
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2023 02:46:41.6434
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fwYTMz0Lc8gXVU/3A6HXAFQCqOcSuJB9Cbgiy/tbbj+DzPlDhOMm5vR6zpV/FrFG6aW0GDj9WeeLLwCDPnYyFg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8383

SGkgS3J6eXN6dG9mLA0KDQo+IE9uIDE0LzA5LzIwMjMgMTI6MjAsIFh1IFlhbmcgd3JvdGU6DQo+
ID4gVXN1YWxseSwgdGhlIGRkciBwbXUgbm9kZSB3aWxsIGJlIGEgc3Vibm9kZSBvZiBERFIgY29u
dHJvbGxlciwgdGhlbiB1c2luZw0KPiA+IGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZSB3
aWxsIHJlcG9ydCBjb25mbGljdCB3aXRoIEREUiBjb250cm9sbGVyDQo+ID4gcmVzb3VyY2UuIFNv
IHVwZGF0ZSB0aGUgZHJpdmVyIHRvIHVzZSBkZXZtX2lvcmVtYXAgdG8gYXZvaWQgc3VjaA0KPiA+
IHJlc291cmNlIGNoZWNrLg0KPiA+DQo+IA0KPiBXaHkgd291bGQgeW91IGxpa2UgdG8gbWFwIHNh
bWUgcmVnaW9uIHR3aWNlPyBUaGUgcmVzb3VyY2UgY2hlY2sgaXMgZm9yDQo+IHB1cnBvc2UgdGhl
cmUuLi4NCj4gDQoNCkJlY2F1c2UgdGhlIGRkciBwbXUgcmVnaW9uIGlzIGEgc3Vic2V0IG9mIGRk
ciBjb250cm9sbGVyIHJlZ2lvbi4gV2hlbg0KZWRhYyBkcml2ZXIgaXMgZW5hYmxlZCwgaXQgd2ls
bCBtYXAgdGhlIHdob2xlIHJlZ2lvbiBmaXJzdGx5LiBJIHdpbGwgY2hlY2sNCmlmIHRoaXMgY2Fu
IGJlIGNoYW5nZWQuDQoNCj4gPiBTaWduZWQtb2ZmLWJ5OiBZZSBMaSA8eWUubGlAbnhwLmNvbT4N
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBYdSBZYW5nIDx4dS55YW5nXzJAbnhwLmNvbT4NCj4gPiAtLS0N
Cj4gPiAgZHJpdmVycy9wZXJmL2ZzbF9pbXg5X2Rkcl9wZXJmLmMgfCA5ICsrKysrKysrLQ0KPiA+
ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4NCj4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wZXJmL2ZzbF9pbXg5X2Rkcl9wZXJmLmMgYi9kcml2ZXJz
L3BlcmYvZnNsX2lteDlfZGRyX3BlcmYuYw0KPiA+IGluZGV4IDVjZjc3MGExYmMzMS4uODg1MDI0
NjY1OTY4IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvcGVyZi9mc2xfaW14OV9kZHJfcGVyZi5j
DQo+ID4gKysrIGIvZHJpdmVycy9wZXJmL2ZzbF9pbXg5X2Rkcl9wZXJmLmMNCj4gPiBAQCAtNjAy
LDggKzYwMiwxNSBAQCBzdGF0aWMgaW50IGRkcl9wZXJmX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYpDQo+ID4gICAgICAgdm9pZCBfX2lvbWVtICpiYXNlOw0KPiA+ICAgICAgIGlu
dCByZXQsIGlycTsNCj4gPiAgICAgICBjaGFyICpuYW1lOw0KPiA+ICsgICAgIHN0cnVjdCByZXNv
dXJjZSAqcjsNCj4gPg0KPiA+IC0gICAgIGJhc2UgPSBkZXZtX3BsYXRmb3JtX2lvcmVtYXBfcmVz
b3VyY2UocGRldiwgMCk7DQo+ID4gKyAgICAgciA9IHBsYXRmb3JtX2dldF9yZXNvdXJjZShwZGV2
LCBJT1JFU09VUkNFX01FTSwgMCk7DQo+ID4gKyAgICAgaWYgKCFyKSB7DQo+ID4gKyAgICAgICAg
ICAgICBkZXZfZXJyKCZwZGV2LT5kZXYsICJwbGF0Zm9ybV9nZXRfcmVzb3VyY2UoKSBmYWlsZWRc
biIpOw0KPiA+ICsgICAgICAgICAgICAgcmV0dXJuIC1FTk9NRU07DQo+ID4gKyAgICAgfQ0KPiA+
ICsNCj4gPiArICAgICBiYXNlID0gZGV2bV9pb3JlbWFwKCZwZGV2LT5kZXYsIHItPnN0YXJ0LCBy
ZXNvdXJjZV9zaXplKHIpKTsNCj4gDQo+IFlvdSBuZWVkIHRvIGRvY3VtZW50IHRoaXMsIG90aGVy
d2lzZSBzb21lb25lIHdpbGwgcmV2ZXJ0IHlvdXIgY29tbWl0IHNvb24uDQo+IA0KPiANCj4gQmVz
dCByZWdhcmRzLA0KPiBLcnp5c3p0b2YNCg0KVGhhbmtzLA0KWHUgWWFuZw0K


Return-Path: <devicetree+bounces-414-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E53F27A1789
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 09:33:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9A40A282C7C
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 07:33:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F4A8D294;
	Fri, 15 Sep 2023 07:33:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 691D5D284
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 07:33:13 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2066.outbound.protection.outlook.com [40.107.21.66])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94579A1
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 00:33:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vl/TFggDu0ICrcv5FiZYOG0dZ4zKXtplcdLj4Q8c0j3nBx1MPLRmAd6PVNHkink1g7NzNqpVi4sc5qKqToxf7rMrZfeQTCpsFcl9TZtVl8aK6XqY7emztrw2pQffW6R1itB7eB4+kAiBVw0FECzyZb+QDo3e8WtypXt8dYwx+ajKxPWOpxMyjYrbHj66jFzGr3YvUiWYpLmxLZTZ3xdySOYTktvDv3Y57ulKzcX6E+fgx+SMSpXw88+YGzWMhS2jGBRS4P6XSRsNgs5U3Bwrg0akSjJ6de2qNzPlkl2ixq8Kr1jrAWVazB03vETQ3wItn/5YQFzW7dvvx+e+afSBfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pNA8sQqhWyj+XcJ4zISHW87gzAteyVatQ7s85xuAuko=;
 b=jA6cmI/a1u6dDKo2oaqh7WXnK05usAVuBHhjDED+wboVnSAnTM3Vv10D14XtFOvhD6VyPACtRlYus7J2DIVWz6ZeIBhHtVFKlI7ACUHrtSvnq/P0zWHvG3BhNiZ44Ptg1ox3QopE8UjP1zxOHDBWQGyuuPKBlp012VXEYY2KSVz3ZbcgvkT9qarVn7Wpvc0QjeexdUpZtS3ipWk4OXZRU1Dh51AAzK5k4e0/12oU+NfGx+cWaCysu6PuD+ODAxd1CCtRZO3n5As5aFcnam7Wob7flQZsE7rym462ax11JpSpa+K4zoFeH9vhmJFQsTnZsrrI6PYOjpKVo7sE0ognHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pNA8sQqhWyj+XcJ4zISHW87gzAteyVatQ7s85xuAuko=;
 b=Yzk+EVj6VwjjulqE0ZIkmQPewCHjM301O7aerNnVWgxbTxdE5lVY5INWNhHC3sR3tmKkRjDcSBPjFZKXqCIEVoL3VHqpvm+KrSjvhR6fP11uC3SYwy4qNBMrdHPOybq7mxIBrSA6R9yQPZu5ph+eNKsplhynscB36VYxs81xGh0=
Received: from DB7PR04MB4505.eurprd04.prod.outlook.com (2603:10a6:5:39::26) by
 DU0PR04MB9634.eurprd04.prod.outlook.com (2603:10a6:10:31c::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6768.34; Fri, 15 Sep 2023 07:33:08 +0000
Received: from DB7PR04MB4505.eurprd04.prod.outlook.com
 ([fe80::6444:e07a:e7f7:3923]) by DB7PR04MB4505.eurprd04.prod.outlook.com
 ([fe80::6444:e07a:e7f7:3923%7]) with mapi id 15.20.6792.020; Fri, 15 Sep 2023
 07:33:02 +0000
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
Subject: RE: [EXT] Re: [PATCH 2/2] arm64: dts: imx93: add DDR controller node
Thread-Topic: [EXT] Re: [PATCH 2/2] arm64: dts: imx93: add DDR controller node
Thread-Index: AQHZ5vR5OpTfldGE/keJ7ypkhZxOQLAaG/GAgAEQtMCAAEhfgIAACfUg
Date: Fri, 15 Sep 2023 07:33:02 +0000
Message-ID:
 <DB7PR04MB45053CEF2A0FEF7CAE58EDB78CF6A@DB7PR04MB4505.eurprd04.prod.outlook.com>
References: <20230914102038.2944844-1-xu.yang_2@nxp.com>
 <20230914102038.2944844-2-xu.yang_2@nxp.com>
 <3e0df2c9-f4c5-ce7b-5b19-de8530a25d95@linaro.org>
 <DB7PR04MB45055334986EFB4EBE31AB1D8CF6A@DB7PR04MB4505.eurprd04.prod.outlook.com>
 <ea5456fb-082c-1c1b-c233-5827bdafe8d0@linaro.org>
In-Reply-To: <ea5456fb-082c-1c1b-c233-5827bdafe8d0@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB7PR04MB4505:EE_|DU0PR04MB9634:EE_
x-ms-office365-filtering-correlation-id: aa437566-7114-4d80-100b-08dbb5bdfea5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 2b9nFkoPAio1/LHaB8QGh0OO7NlwDiBaWhJGexLW+rGQ5Nxx7DZcI2aCnpGm+9GqBr8ArBTmOVu4kKkwocVIijhY3w5YufSuuoCIqsW/zThd1K5vHpFENHkrkKSD1JLL+fIhz563kVQSOGe+yBWY1OrsIYBEVHFBh3UXCqN4v1hvzxbgaEMVnJggGiD0IRbPuA1n5AHbBaFok9GUMhxhVsviN9kVriXjt24dIyMqfKblT7gcDys5rxO4RSax914HLil71OdVIQ4DbNxgXCc3CSEL/I8wxk7zNGYU2But1lYv0gatNbOhZT+zk0OBeiwK4HhFuHbxj36JHEsaP7U71ZTBHIWiJ9mcN8+BKd+RThtZltIrkjosN0JL9OdnWqydetBAn9cads/9pqMuiB2/EWhpH5yC/1s59xLU8yIPNB8J4QI2w+TZ/AMvUKQEr6VwSab3jmBugONMd1WqR1OalWeuKm6v4Q+BIKToeUSh1o6wv/KawSAR5S2AhdOBxKmFaFi/qU5M1GYpkwTNNN59BQqrfp1bDY7MG/W1ps6adjLGioyE/H3tYybL7BjRvHFG8sBZ1Jo8ChPScbOv88v4xRJSPFrbND6sBMEk/KcRQXvBnHGGCAegAuJnQOVBRQK6
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB4505.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(366004)(39860400002)(396003)(136003)(346002)(451199024)(186009)(1800799009)(122000001)(26005)(53546011)(71200400001)(6506007)(7696005)(110136005)(86362001)(38100700002)(38070700005)(33656002)(83380400001)(9686003)(478600001)(66446008)(2906002)(316002)(41300700001)(8676002)(66556008)(52536014)(55016003)(54906003)(8936002)(4326008)(5660300002)(64756008)(66946007)(66476007)(76116006);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?dVlvSytzbFpPZUQ5UFJzUEFsV3FtOEJpbXZpUUtHUFJ1Y1dER0dHb0sweHF5?=
 =?utf-8?B?L3FFMUY1Rks3dzRqeFRLT1FINkF4S2JHaHZCSmlmU0JTb0Z5dmYwSWpPVDFS?=
 =?utf-8?B?L21TTE90aGhmdklZK1Q0QjBaZzJ1TGhPWkcvdVh3aTlqMGtHNTZGSElFSUNa?=
 =?utf-8?B?RFhQamJtRlFvMHN5V28vS2VQbmNUMTF3ZkhKejZZKzl1Vkk1WlhhWG5Zelp0?=
 =?utf-8?B?RnNWblRGdERzZVJFd2krMGk1aFg4SUpiSGd4VUtKMXFsMldqTnQ5MTRWRUNR?=
 =?utf-8?B?b09zSzVXNVFuSEtYNUVUMzBUbG1abVVobFNCZVdEUU4zaHg1TkU3SWRWSWNn?=
 =?utf-8?B?bkJwcFdNeEJreGZ4clVlaHhubWFWcVRQY0J0OXErbGI2TCtVT1V2My9EUnhN?=
 =?utf-8?B?THFPS1NsOXEzb2gxZzdJYWF2WTJpMXdvRWNkczN5NGpjS0tCamtHaTlRcGY4?=
 =?utf-8?B?UjRjZUVkcC9oK2hrQldZaWpBem92YzFQR2F1KzV5Rm1NQkhCZzRmTEkwVkpl?=
 =?utf-8?B?Q0pZd3ByYlBieXVGZVJJRlptZTQ3MUZudzZnTmtVZUxVV004YlFiaXhvd095?=
 =?utf-8?B?TU85V0VWeHY3MGM1UmFLazJkM2NNcFRzWkZaSVZ3K1lvUW5TdksxTFZXSEdz?=
 =?utf-8?B?S3gyWmc2RWJncUk3VU5GbWxaWWlXbUFucGFOK09WMmhkdktoZ2xEKy9vRHgw?=
 =?utf-8?B?OXY4ZkVkODUvelhWdnh1ZFlsclpGazN1aDdjZlQwZC9QNHF4NjRJYUNaeDc2?=
 =?utf-8?B?OVFVTWVQQU9kRkxvMXYyUlNISlY1WUxVUTl2R3l3TWI4YndLblUwdHFXblZ1?=
 =?utf-8?B?S3BQV040NTFiaUZxOWdjdlBwNDhPZjNGTmZaQU9IN3RRcFROL25ZL0RrcUNz?=
 =?utf-8?B?MHFYZ1JJNU5uRUx0ZWhidE4vcys1b0tpZENSMWNaNTFDZUNKclQ1TTU4dmNT?=
 =?utf-8?B?SGVUd0NDQWNDN3dJZ1pjd2NZZHN4VVBBT1NzVkRKODY2VXZxcFlqRHl2WlF2?=
 =?utf-8?B?YWtjMXErUEZxdGRkSS9VVHZweHlpWDQ2czNlWEhMK0JsVWxRT2xGTlE4MVNW?=
 =?utf-8?B?S3RJS0RaK3JHR1BFMno4Ui9oMENnMkw3Q0FZd1d6T1d4Wi93MmtrdDNOb1RE?=
 =?utf-8?B?VTRWUmFFclRCMEo3RjcrVSt1LzhrMWd3YWg0STB6SklHM3FiUkRaVEVUeDBU?=
 =?utf-8?B?ekVXVlVublVkUzNVUWdLclpIMDFCalYvUTYwaXlzVmtpUGNRWURmL05IdEdm?=
 =?utf-8?B?ejZraldsU3VuamltU3VPUWRHQTAxSExVT0RGenZhbzNwNHdHaUQydFR4R2g2?=
 =?utf-8?B?SVFud1pNc0d3clY0SU0wS0tMSXVSRkZYSkowdnQ5dEpCOWw2L3k3TE9Wd04w?=
 =?utf-8?B?byt2STNLcjRkamFpdmNXVEM2RmltaXhzVW82MFRDRGYzd3NROC9tQmovMU1s?=
 =?utf-8?B?SEExN2Y0ZzdlR2xwNTJ6NFhocE1OSDVxOFJlU0Y0Q2prcDhsdlZGbG4zSU1I?=
 =?utf-8?B?c0hnM0I1Z0FqM0dPRHFadEFqdEcrcm8vR1E0anJyODhxQ21uWDRZRDhhNjFi?=
 =?utf-8?B?K011VVNZdGNBUXNmc01wQldBbXZLVjlNbStIOUtaYmlIWXVEUG5IeFlmaHZ0?=
 =?utf-8?B?RWJWMm0velpBUm8wNTd6VEc1UkRmcjVHdElFQWs5NmYwR2lEaWh2QjNqKzNy?=
 =?utf-8?B?Zzh1NUxuWmEzc0lzRXg2KzZ1WEVDKzBTalJRMUZxdWRUY3diTnR4L0QxUUJm?=
 =?utf-8?B?bjRKT1hBZFJiQ0FUeW41NXpObWpUTnFLQkdvaHhzY3gvd2t3akh6ckhEQ1JZ?=
 =?utf-8?B?SktMRndzbXF5blIySVRJeXBGU3dSZzRZL205TnMvQjJHVGljTXJrcTFma2FU?=
 =?utf-8?B?OWhxWmpVS2x0Wm1QdGpnNVBRR1d4Si9oTXhybFdxdEFUd0tMSGFWdUVobVgv?=
 =?utf-8?B?RGtrRnBBeWtjSlBteE5JMFcwU083aU9wNUlqeUVWZWU3ZTk2Zm9XZVYwZkM3?=
 =?utf-8?B?c25RYWVBRWQyL2d0ZWFpQzhia2FvQkFIUTdGTENkMURoU2pPN1E3QWdoeml3?=
 =?utf-8?B?Y1NaRDNQVzh0UVhaTXJkZWhabVF5U2JqVGY5SUJsdndpRm9KTzA5YVVVM1Mz?=
 =?utf-8?Q?/Rys=3D?=
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
X-MS-Exchange-CrossTenant-Network-Message-Id: aa437566-7114-4d80-100b-08dbb5bdfea5
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2023 07:33:02.8355
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: H+4YhY1mLx8JGlt4kwu0RTkMJdVhW/Sar82Bc+/Ds8xgisk33M5SOUO/EsR6bIjjnyfLUmAhQnd2XytbjpyMSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR04MB9634
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

DQo+IE9uIDE1LzA5LzIwMjMgMDQ6MzksIFh1IFlhbmcgd3JvdGU6DQo+ID4gSGkgS3J6eXN6dG9m
LA0KPiA+DQo+ID4+IE9uIDE0LzA5LzIwMjMgMTI6MjAsIFh1IFlhbmcgd3JvdGU6DQo+ID4+PiBB
ZGQgRERSIGNvbnRyb2xsZXIgbm9kZSB3aGljaCB3aWxsIGJlIHVzZWQgYnkgRURBQyBkcml2ZXIg
bGF0ZXIsIGFsc28NCj4gPj4+IG1vdmUgdGhlIEREUiBQTVUgbm9kZSBhcyB0aGUgc3Vibm9kZSBv
ZiB0aGUgRERSIGNvbnRyb2xsZXIuDQo+ID4+Pg0KPiA+Pj4gU2lnbmVkLW9mZi1ieTogWWUgTGkg
PHllLmxpQG54cC5jb20+DQo+ID4+PiBTaWduZWQtb2ZmLWJ5OiBYdSBZYW5nIDx4dS55YW5nXzJA
bnhwLmNvbT4NCj4gPj4+IC0tLQ0KPiA+Pj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxl
L2lteDkzLmR0c2kgfCAxOCArKysrKysrKysrKysrKy0tLS0NCj4gPj4+ICAxIGZpbGUgY2hhbmdl
ZCwgMTQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCj4gPj4+DQo+ID4+PiBkaWZmIC0t
Z2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OTMuZHRzaSBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDkzLmR0c2kNCj4gPj4+IGluZGV4IDZmODVhMDVlZTdl
MS4uOTkyYmRlZWY3MGNkIDEwMDY0NA0KPiA+Pj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9m
cmVlc2NhbGUvaW14OTMuZHRzaQ0KPiA+Pj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVl
c2NhbGUvaW14OTMuZHRzaQ0KPiA+Pj4gQEAgLTkxNywxMCArOTE3LDIwIEBAIG1lZGlhX2Jsa19j
dHJsOiBzeXN0ZW0tY29udHJvbGxlckA0YWMxMDAwMCB7DQo+ID4+PiAgICAgICAgICAgICAgICAg
ICAgICAgc3RhdHVzID0gImRpc2FibGVkIjsNCj4gPj4+ICAgICAgICAgICAgICAgfTsNCj4gPj4+
DQo+ID4+PiAtICAgICAgICAgICAgIGRkci1wbXVANGUzMDBkYzAgew0KPiA+Pj4gLSAgICAgICAg
ICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiZnNsLGlteDkzLWRkci1wbXUiOw0KPiA+Pj4gLSAg
ICAgICAgICAgICAgICAgICAgIHJlZyA9IDwweDRlMzAwZGMwIDB4MjAwPjsNCj4gPj4+IC0gICAg
ICAgICAgICAgICAgICAgICBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgOTAgSVJRX1RZUEVfTEVWRUxf
SElHSD47DQo+ID4+PiArICAgICAgICAgICAgIGRkcjogbWVtb3J5LWNvbnRyb2xsZXJANGUzMDAw
MDAgew0KPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAic2ltcGxlLW1m
ZCI7DQo+ID4+DQo+ID4+IE5vLCB0aGF0J3Mgbm90IGFsbG93ZWQgYWxvbmUuDQo+ID4NCj4gPiBX
ZWxsLCB0aGVuIGhvdyBzaG91bGQgSSBtb2RpZnkgdGhpcyBjb21wYXRpYmxlPw0KPiANCj4gWW91
IG5lZWQgc3BlY2lmaWMgY29tcGF0aWJsZSwganVzdCBsaWtlIGV2ZXJ5d2hlcmUgZWxzZS4gWW91
IGNhbiB1c2UNCj4gImdpdCBncmVwIHNpbXBsZS1tZmQiIG9yICJnaXQgZ3JlcCBzaW1wbGUtbWZk
IC0tIGFyY2gvYXJtKiIgb3Igb24NCj4gYmluZGluZ3MgdG8gZmlndXJlIHRoaXMgb3V0Lg0KPiAN
Cj4gSnVzdCByZW1lbWJlciB0aGF0IHNpbXBsZS1tZmQgbWVhbnMgY2hpbGRyZW4gZG8gbm90IGRl
cGVuZCBvbiBhbnl0aGluZw0KPiBwcm92aWRlZCBieSB0aGUgcGFyZW50LiBZb3UgY2Fubm90IGxh
dGVyIHJlbW92ZSBpdCAianVzdCBiZWNhdXNlIiBvcg0KPiAib2gsIG5vdyBJIHdhbnQgZHJpdmVy
Ii4gVGhhdCB3b3VsZCBhZmZlY3QgdXNlcnMgb2YgRFRTLg0KDQpJIHNlZS4gVGhhbmtzIGZvciB5
b3VyIGV4cGxhbmF0aW9uLg0KDQpCZXN0IFJlZ2FyZHMsDQpYdSBZYW5nDQoNCj4gDQo+ID4NCj4g
Pj4NCj4gPj4gSXQgZG9lcyBub3QgbG9vayBsaWtlIHlvdSB0ZXN0ZWQgdGhlIERUUyBhZ2FpbnN0
IGJpbmRpbmdzLiBQbGVhc2UgcnVuDQo+ID4+IGBtYWtlIGR0YnNfY2hlY2sgVz0xYA0KPiA+Pg0K
PiA+DQo+ID4gSSBqdXN0IHJ1biB0aGUgY2hlY2sgc2NyaXB0LCBpdCBzZWVtcyBubyB3YXJuaW5n
cyBmb3IgdGhpcyBub2RlLg0KPiANCj4gUmlnaHQsIEkgYWx3YXlzIGZvcmdldCB3ZSBkaWQgbm90
IGNvbnZlcnQgc2ltcGxlLW1mZCB0byBEVCBzY2hlbWEsIHNvDQo+IHRoZSB3YXJuaW5ncyBhcmUg
b25seSBmb3Igc3lzY29uLg0KPiANCj4gQmVzdCByZWdhcmRzLA0KPiBLcnp5c3p0b2YNCg0K


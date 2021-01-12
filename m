Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 98A862F2D16
	for <lists+devicetree@lfdr.de>; Tue, 12 Jan 2021 11:43:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726098AbhALKnK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jan 2021 05:43:10 -0500
Received: from mail-db8eur05on2083.outbound.protection.outlook.com ([40.107.20.83]:35297
        "EHLO EUR05-DB8-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1725971AbhALKnJ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 12 Jan 2021 05:43:09 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fc31m/7Id1w6UxEmR4RV+slkXP6vRnSPYbo9Z6lIoNtvMi9yShdpAUYFKnH4s3DIO/ksR9FSGNoVVlhCLd3cj13RUWX9LjOcy6pknczNkMT1JhVQ9dcwxNcxnHQUE9uCXZHzmhklDdzAFyQG6o0LaVidTwb681RrfUYYZWMyuaqRS0z9fE8S0CmLfROCTihyhrk38Rs+M32nTgiUo/vep9gtC+2Crzspk+QLjbcovdbIKnCuRC2QODuJWm9i3spjfkIr9mdCgZKXJ1kDxY4GDHZVR4kktPcEg9ALp+FRzqDBwM24f+P+Exv5pGl11adBTs5NTGmeEfHMx2rdPQOUGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qJbsEszSsfME0cCPm2u/0GPP+1MRqchxlvjdcDf4fw4=;
 b=cv3LAuGO48sdJaNnoiDhy/V/ObACgJHR7KBbbNeRySkv+FQegSC1+aNoS9avBKq6EtFRbeR8KVWhsBniBhd1vVuoIOUa+LuEHhJJGZ0wc9hXjIkXzh1YOeGg5DRV3HKizONTU0ZI7wGGB6VhNtU2DjfXb9ub8EsvJDmmWefMBB5MeG0KqdpPR1351vRexzSgMzKLVuEOb7xj6O+zBXXSX4YR7905Jc6yGJLAYWfENKqEoLm0nxZcJPIu09jprUz0gWooQQCx+tVOcP+7PGQreE/qiFSa0p0RO9q1WiTIalCsiy6HQXkxQXepk8puxJCr9146wDI8Qxib7sgjowoHpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qJbsEszSsfME0cCPm2u/0GPP+1MRqchxlvjdcDf4fw4=;
 b=MPRO8LTVuKMCWevs4qQEcsbpg2+xbfvXPD0aqGQk4pnb1cv0L1PlV4+MgTc2K3/+0AIuBAr6h+tQvSlbyOvZi629PIjxWFph1QdNxYXW8PqO42UCu+3QiErkHx0wBa8CjfGiZxu+wAM7cSFxmFDcTRGmY3bsFexPoBnX8OMAJhI=
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB3PR0402MB3850.eurprd04.prod.outlook.com (2603:10a6:8:3::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.7; Tue, 12 Jan
 2021 10:42:20 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666%5]) with mapi id 15.20.3742.012; Tue, 12 Jan 2021
 10:42:19 +0000
From:   Joakim Zhang <qiangqing.zhang@nxp.com>
To:     Shawn Guo <shawnguo@kernel.org>
CC:     "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        dl-linux-imx <linux-imx@nxp.com>, Andy Duan <fugang.duan@nxp.com>
Subject: RE: [PATCH 4/5] arch: arm64: dts: imx8mq/m/n/p: add mac address for
 FEC
Thread-Topic: [PATCH 4/5] arch: arm64: dts: imx8mq/m/n/p: add mac address for
 FEC
Thread-Index: AQHWvlm6HdLF4mWymkOZ+U/DlQYBkqoYeI0AgAupGmA=
Date:   Tue, 12 Jan 2021 10:42:19 +0000
Message-ID: <DB8PR04MB6795D05432EC545786ADD880E6AA0@DB8PR04MB6795.eurprd04.prod.outlook.com>
References: <20201119095249.25911-1-qiangqing.zhang@nxp.com>
 <20201119095249.25911-5-qiangqing.zhang@nxp.com>
 <20210105003511.GD4142@dragon>
In-Reply-To: <20210105003511.GD4142@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 107668f4-290b-4b6a-1297-08d8b6e6bcbf
x-ms-traffictypediagnostic: DB3PR0402MB3850:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3850B1F17AF5E868FCFAD2B3E6AA0@DB3PR0402MB3850.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: B7SmjYuY1ca89jktIbl5In5soRQjzHN7ymcBp75uhqmRTRJ2WBEmWdh2M5W9CXBj+uOe52VtHuDa8/reuepKbOU5EXe0Hc7sK/w69uVpoj2iFh3rEMrZzIEB1xGpXWTPwJ8YVg3PDnsVboHoQy558SKazZ2FLxSsXlBMkugC79OwVQ0MmqYlCeNxhDVvQjtgR3Ef1kfmeEv18aZYN4CNIBAEyDu82WaqHvgTtgLCfep/1AQT5FKnVQRyDFNWwziGTh3ye+ikiH5xbCAgZ21y1/3j6t+aaAzPT8EMF/2P4WAaCXdEKbU+Kdee1bc2U6t2uP41O32n6Qm2OxKVo54K5E0nPUFhCqEMRecjDt/7vGQ3ZtHoKF2HsqrRhx/k6uEmkbiq7pPgBmZurpt01XY3zbGgYZmUrCR9hJeEE42rn1Lc31c9JT0Vtave68UEdHT6
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6795.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(4326008)(86362001)(53546011)(71200400001)(83380400001)(186003)(26005)(33656002)(2906002)(55016002)(6506007)(66556008)(66946007)(66476007)(5660300002)(76116006)(7696005)(52536014)(9686003)(66446008)(64756008)(8936002)(54906003)(498600001)(6916009)(8676002)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?gb2312?B?S2puWS9VbkNERk5sTXhMSnIxNjVtbUU4Nkl5OVkzVEI0dFVaaVA1dDFCdkRZ?=
 =?gb2312?B?QVBiT1NTcFpOcEczUG03a3AxN1JWZGh3a0h4Y0owK0VrZ05md2pzQlVEWnBQ?=
 =?gb2312?B?cktCOFUxeDBqMDJ3UUg3aDd0QUpjVFQwMk5oSXZsTFF3SGt0WU1ldDdTclpJ?=
 =?gb2312?B?L0REZnZqRUVCV1BlUnNLWW1HZnFtWHRBVE1lT0xpTCtZM0cxcmdlUTlwemtq?=
 =?gb2312?B?eEdJeVZRV3ovMzBDZ0Y5YVlZSmxycm5tVXhaUHcwalowVzdIbUVHR2lYaXc0?=
 =?gb2312?B?TVk4U0JlTWloS1V3VE9jVHJLS2UrMXJWdkdpSFh5VTdQbXRTaE5kaWNTZlJr?=
 =?gb2312?B?QnAwaWNyMHJzUzF3MS9zNStiTFlHVmtOb2tPbFpJWFo4ZFhWb0Rsd2NUV21p?=
 =?gb2312?B?aTAzRVBtb3ZjdkFYRllVUFArdG92Q1Uyd3pHZEhCdFMvbDdjZ1NFTkpKYUdI?=
 =?gb2312?B?K3VKcGRMTVEwckpvUFhYYkFMNS9kRFNNWGppcVlXOWlTcWo4K1NTdWV4Wnc2?=
 =?gb2312?B?VTFNSGZVbjlmWlZMVTJhQXFOR0xubTBnclBaMUM2VHp1ZXN2U1pUUVMvZ29H?=
 =?gb2312?B?d3JLT2ZrRmpyZnJvSVQvcDlEZ05rQzFzMloydDhRM2lCcTdzYkx1bWJwd0hG?=
 =?gb2312?B?TVI5U1NoK09CcWVBaEJMK2tOQU82WDlETUJGbTVkb25TVmNNN3FsMTJXeGVR?=
 =?gb2312?B?MWVzd3p6YnJNMWRuMlo2YkJ0QWlVbDFGa3ZRZFZud1BYYW5vZjRueTc1bnlO?=
 =?gb2312?B?TXNTUmM3MU0rUlNGV0E1VWZ3QzVRcnJuTjFBL1lUZXVHZFZSZFNIN3NnbFpp?=
 =?gb2312?B?SmZUVEhQOWpzaGdjeVc3citlWHpya1RnS1lHK2lGZnpreDJlZkNCT3FrZjJs?=
 =?gb2312?B?UXRQVXd2d2Yydkw3NjUvMWh6V3M4RmNZQndtSzhXNXhITUtwakxTQmhXUVFZ?=
 =?gb2312?B?S2toMkR2Tm5TdTE2S09nVGUrcDB3cWJCSVhPUXZXaGZnZ0ROQWZMM2RwL3hl?=
 =?gb2312?B?c2xKaGtlcDAveTgvaUtwZndWOVVQTENlRTdrUXBmOTVZR1pHNHlkNW1qajFy?=
 =?gb2312?B?S0ZJcjdWVXNwL1gzazY0QUVlMzhvWW5IcUtOeVlIV0RSMldlaWpmM1ZOU0Nr?=
 =?gb2312?B?d0d6SWg4YXhkNmljdXZJejdxK29LUEVhSnBrQlZmV0ZjTTczY1kwM0d5bW1O?=
 =?gb2312?B?ZmY2eUozMDJMR3E1NUFtS0ViWmd3aE4rdlNsOWhUcW5GZTJXc25oNHFDYytw?=
 =?gb2312?B?c3dtMkNUOFNUUlJhS2pkN2tvRmU2TkMzdGoxaTZlSXRuS3E4eHFIT3pPeENU?=
 =?gb2312?Q?MUCoTJ0jbqFSE=3D?=
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB6795.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 107668f4-290b-4b6a-1297-08d8b6e6bcbf
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2021 10:42:19.7411
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xfHbWkKmjsbc8EurylgSxB5g3ZJc8oeLN+sRzQ335SX8k8mrtEX9WaUoMeC9rwqvHgp6LeW+ktP7aJS3KB1IkQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3850
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFNoYXduIEd1byA8c2hhd25n
dW9Aa2VybmVsLm9yZz4NCj4gU2VudDogMjAyMcTqMdTCNcjVIDg6MzUNCj4gVG86IEpvYWtpbSBa
aGFuZyA8cWlhbmdxaW5nLnpoYW5nQG54cC5jb20+DQo+IENjOiBzLmhhdWVyQHBlbmd1dHJvbml4
LmRlOyBmZXN0ZXZhbUBnbWFpbC5jb207DQo+IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnOyBk
bC1saW51eC1pbXggPGxpbnV4LWlteEBueHAuY29tPjsgQW5keSBEdWFuDQo+IDxmdWdhbmcuZHVh
bkBueHAuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIDQvNV0gYXJjaDogYXJtNjQ6IGR0czog
aW14OG1xL20vbi9wOiBhZGQgbWFjIGFkZHJlc3MNCj4gZm9yIEZFQw0KPiANCj4gT24gVGh1LCBO
b3YgMTksIDIwMjAgYXQgMDU6NTI6NDhQTSArMDgwMCwgSm9ha2ltIFpoYW5nIHdyb3RlOg0KPiA+
IEFkZCBtYWMgYWRkcmVzcyBpbiBlZnVzZSwgc28gdGhhdCBGRUMgZHJpdmVyIGNhbiBwYXJzZSBp
dCBmcm9tIG52bWVtDQo+ID4gY2VsbC4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvYWtpbSBa
aGFuZyA8cWlhbmdxaW5nLnpoYW5nQG54cC5jb20+DQo+ID4gLS0tDQo+ID4gIGFyY2gvYXJtNjQv
Ym9vdC9kdHMvZnJlZXNjYWxlL2lteDhtbS5kdHNpIHwgNyArKysrKysrDQo+ID4gYXJjaC9hcm02
NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1uLmR0c2kgfCA3ICsrKysrKysNCj4gPiBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXAuZHRzaSB8IDcgKysrKysrKw0KPiA+IGFyY2gv
YXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS5kdHNpIHwgNyArKysrKysrDQo+ID4gIDQg
ZmlsZXMgY2hhbmdlZCwgMjggaW5zZXJ0aW9ucygrKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtbS5kdHNpDQo+ID4gYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bW0uZHRzaQ0KPiA+IGluZGV4IDM2NzE3NDAzMWE5MC4u
MGZiZmYxM2E5NjI5IDEwMDY0NA0KPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNj
YWxlL2lteDhtbS5kdHNpDQo+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUv
aW14OG1tLmR0c2kNCj4gPiBAQCAtNTIxLDYgKzUyMSwxMCBAQA0KPiA+ICAJCQkJY3B1X3NwZWVk
X2dyYWRlOiBzcGVlZC1ncmFkZUAxMCB7DQo+ID4gIAkJCQkJcmVnID0gPDB4MTAgND47DQo+ID4g
IAkJCQl9Ow0KPiA+ICsNCj4gPiArCQkJCWZlY19tYWNfYWRkcmVzczogbWFjLWFkZHJlc3NANjQw
IHsNCj4gDQo+IFNob3VsZG4ndCB0aGUgdW5pdC1hZGRyZXNzIGJlIEA5MCByYXRoZXIgdGhhbiBA
NjQwPw0KDQoNCkhpIFNoYW5uLCBAOTAgaXMgYSBvZmZzZXQsIEA2NDAgaXMgYW4gYWJzb2x1dGUg
YWRkcmVzcywgd2hpY2ggb25lIGlzIHByZWZlciB0byB5b3U/IFRoYW5rcy4NCg0KQmVzdCBSZWdh
cmRzLA0KSm9ha2ltIFpoYW5nDQo+IFNoYXduDQo=

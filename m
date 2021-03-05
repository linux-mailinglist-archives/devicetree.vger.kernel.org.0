Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 038DF32EC43
	for <lists+devicetree@lfdr.de>; Fri,  5 Mar 2021 14:34:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230214AbhCENdc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Mar 2021 08:33:32 -0500
Received: from mail-db8eur05on2070.outbound.protection.outlook.com ([40.107.20.70]:34209
        "EHLO EUR05-DB8-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S229646AbhCENd1 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 5 Mar 2021 08:33:27 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kDvWm8XyFbP2WQYNqup410UA+iKLg+THkHrCpScZnTrPyLzMczSCKvGT8+c2Y82LAFvDmGXgZedDg6MJUa7+6iQ31fT4LJnIeLU4sSWrEqB+IGxRjXYgSvkq8fSa2n7mW0qDrV1sEOw+eVYGcHvypaGIaFJttPxDpEbWAKQVd3QFClHGfOQg0d8AdXZFkGedE8TUlFgWEaWK0kpjBLvytQ+5GtIJVIPGajBOF+9b7ezOpCoBduGtiz3wHZJmdeJOiRKvOYiHuodO/sAVEcTO9E029tLudnWEI7qo9m/WgPBfgIRir2GhJUL+eB5DJqlyvPVGdXxZQRiFRx9CAN99Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kl1283usxTH5IjOBnRzSV2w+73TuhpDYlqKF/xRMADA=;
 b=A6GCAoGdW/bBvc1UtS0OAt1QG5TIaYspViIAZ0bQGvhCFf2AYS691+Sjk5/qIQD4IShowpeBweqcY0gMba4Izod5ou6xh8djRswiwL3nkjpAzPpGSGqsFgXJ/OItogXcI7xKDpuzsvosL87hSVu8lAfESfsoqDIJz//QTxJp9ey5fHhpJaMfevmyKzWgO5F2sitL4S0608xg95e/usntYZfgme+gydEpNr818p0eMll7LLcQBx1kx+zuroDhlT5W3KOLv1LKxSrmrF1o+LlgVNlIDO/ekO3AQspHac3KhkDmjKxouyn6dkPxL376Oc6Kj0FjITywBvJoLGjEVMTTPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kl1283usxTH5IjOBnRzSV2w+73TuhpDYlqKF/xRMADA=;
 b=OudW8AMHk2/c4Uw9XZInFzr/imJFB8klIVbQOjvcSd4Tp8V3MUSst+ducleSK/Ss5oR2bJLO8VlKdVUWPrXl/U1sa6Qf19XCUa2BUdUqyUUewCO6kYczFFojcBhwaPv+Jl0I28d1Ajg/83lUrrvUedu3evoV0pkmJHi6nqRNZEg=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB6648.eurprd04.prod.outlook.com (2603:10a6:20b:f9::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.19; Fri, 5 Mar
 2021 13:33:25 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::ecad:ebb8:8eb0:d359]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::ecad:ebb8:8eb0:d359%7]) with mapi id 15.20.3890.033; Fri, 5 Mar 2021
 13:33:25 +0000
From:   Aisheng Dong <aisheng.dong@nxp.com>
To:     Aisheng Dong <aisheng.dong@nxp.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
CC:     "dongas86@gmail.com" <dongas86@gmail.com>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        dl-linux-imx <linux-imx@nxp.com>,
        "jan.kiszka@siemens.com" <jan.kiszka@siemens.com>
Subject: RE: [PATCH 1/1] firmware: imx: scu-pd: do not power off console
 domain
Thread-Topic: [PATCH 1/1] firmware: imx: scu-pd: do not power off console
 domain
Thread-Index: AQHXEcO+pggukGcltUSaTzzASzS6Jap1ZFRQ
Date:   Fri, 5 Mar 2021 13:33:25 +0000
Message-ID: <AM6PR04MB4966077221C3CA833253490880969@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1614950268-22073-1-git-send-email-aisheng.dong@nxp.com>
 <1614950268-22073-3-git-send-email-aisheng.dong@nxp.com>
In-Reply-To: <1614950268-22073-3-git-send-email-aisheng.dong@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.67]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 924224c1-31ce-4e07-e2cd-08d8dfdb40e5
x-ms-traffictypediagnostic: AM6PR04MB6648:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB66487CF0A61C8BC0B539FA0180969@AM6PR04MB6648.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:913;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: T06+5IGCsbH0sNhRTT5HvHVnMz5NbvLJzinM4C5F6hJ2pFZG8AkZ65BP/1pz5gyxz+ZWznz38wZcxhbinoSwlsbSgU2ryVv0JxaTtgpkDnr7ef8SZsWUSNbIcz1/sLzc9yrjbhzntmKqK2CwlhYozcA/tj8NJKD4nuN1K1VlBSiKbYsObf7/ubJjOoXmxIVtUA3DNbqYOx51zc6fp7rVaTu90hwgoeAFLD8IKGUCocASsSYUfqcS5Sd+O6JO5UGwi9kPq4r3KinEcLzYhQAIiK5oCozlnynmX2r8kPLcX3LVub8b5+byKSYWufA6VrE9L8w+EMXHVHcpICqZ+3vnWvdPbS54NcwSgrPRZTXjbXzG9ejLSgQkpnsB3Mo3KebWSG3tChtoAQxysnmcigWNDNjRuBcZBDleZX+iVdwSXGBVxlGq2Y5G8VsvU35JNnfny74/w7DXng3JkNPA6gIJ0YB38hkiW8EsO8LLSSKIRRA498Ny3JeLSyuispz2uMy6PUzUHZAQfc3SvL/kU6znnw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR04MB4966.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(346002)(396003)(39850400004)(376002)(366004)(110136005)(76116006)(2906002)(54906003)(8936002)(44832011)(66476007)(66556008)(8676002)(186003)(66446008)(316002)(9686003)(4326008)(86362001)(55016002)(66946007)(6506007)(71200400001)(52536014)(64756008)(26005)(5660300002)(7696005)(33656002)(478600001)(83380400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?utf-8?B?QmN4SmYxdVNyNlpxVS8zWmYwU2RPdGRUby93MXlUR2ErK0h0c3EwK3gvWGVQ?=
 =?utf-8?B?MHhlYzlqRjQvUE8yU2M5d3ZkeExNWUFwRnZpVC94aXA5UnBwZXJhUnk2WVA2?=
 =?utf-8?B?Und6RWl0cUNRTXNxZEZQdFBwSXVhWGR3aGhOdTBTNHlWL0p1VGx2YnJ4YjZk?=
 =?utf-8?B?eEpEcnB1cVJGaTllWVp6UE0veGhUWEIrZmNqejVNSVlhMVpzWGhrMVRUMElH?=
 =?utf-8?B?OUtsZy9QeGo3NktlVnJKQW5QZzJ0bGVtSkFadWlWRlgwL0I2cFZXOEZxTnQy?=
 =?utf-8?B?bFoyaFFMbmZDaTVlZEtiUmVrVDdlQ3p4RVAvZkJUU3FiTW9OdWVpWUp4dEx0?=
 =?utf-8?B?QkxvYzk3R2VUSGtMd1BkWnR3eGs1dnZ5TXNVemt1OXEzTGN1d0s5dWVtM2dH?=
 =?utf-8?B?Z1VqUjZoN3ZJM3pEazFHTHQxNzJYaUt5c1k5bm1hc1EwMzFPYjJOS0tOcHV1?=
 =?utf-8?B?ZnJEWXZmOWhmQWhsVjl2YVRXTy9nWllJd0VLcVNPZkpHd2N0cm1SNC9tVXp5?=
 =?utf-8?B?dW9UUXdkMGRkc2FCS2I0RVo0YytvWHN0ejhRMnBUd1UrK2JzbkdiVmVheDRC?=
 =?utf-8?B?M1pncUtGU1lMYXpOQ3Z1K2hJMVVGUTZvVUdlL1Znam1qUm9uUmNqalU1OFB4?=
 =?utf-8?B?eGdOT3c2dmVkZ3Z0ck1hMDFKYXNjeTArbEZJeHhzUUhZVit3dTNWMDNiei9z?=
 =?utf-8?B?NHdYdm9na2lqSG0rZjRqcTR2eUVDU1Y4MUthZ1c1TkR3VHpRTHo1T0RQNWk2?=
 =?utf-8?B?T1JoeXhQblprMWlsQXRIQmhGZWllNXZ4TXRRcTZMYXlpWTFlck5Ua3hKM3c2?=
 =?utf-8?B?RTdoTXFGU09yTUZEbEFHK0c4bURDU0QwRnhzYUlrUHViVEJmMUd6cnMwVjJY?=
 =?utf-8?B?K0c0VlpUTWlUZTV5akN1Wnl5cWEvWXNNWk9MQk81SUU3K1JtZXlySVRtN2N2?=
 =?utf-8?B?dDM3N1kvL0dpZkNTQTNLRml4WHVHV0ZjSVNUK1JIMjNMSU5QcmFISTEzVW9Z?=
 =?utf-8?B?endRZUtkaVVpbnRFN0o2bldRVDBHaGd5c0xzajVrVklPUzdjMWRWbzR2ekl2?=
 =?utf-8?B?Z2pMeldKU1NpWWY0OTBWVjc4ckdTVnAwSlcrSjF2UUs1VW5qc3VuSURVZXFD?=
 =?utf-8?B?S3NKSVV3bzR6Q3paK280Z0tMc1o5TWxUY1VPeFBKVXZkdDMwNlIvT2pqN25N?=
 =?utf-8?B?ZlpLUWhzMURoK2cydVpzUUhOaFJyZXo2UUxrYnI3M1p5UFZEVnIxL01lYnlV?=
 =?utf-8?B?RnU5Y282K0ViQ3k0SmhmREpJdllBMG0vcE1GMVN2R1NCbzVsSzFjUG5WTW05?=
 =?utf-8?B?ZUJuS2lDdVhWNjZmaklDVmhHeVcvaHpMOHBNMmszVGMvVUR1NEg5aVp5VDAv?=
 =?utf-8?B?S2pHQ3Z6UXBrWkVpeUwwbTJlbzlHaHJNL0xBWTdQN3NPdDBpU1BiRmZ6N1RX?=
 =?utf-8?B?MU4xUTNMNklpU0xzbldmYXZ2QUFOeFBuc08wR0wzYXBoWllZQ0F0RjFNOWF3?=
 =?utf-8?B?bWZ0Vk5mNFdJOVpXcElXRjQvTDMrNUx2T2JEWlZndzFGQlB1YUxSektCei9i?=
 =?utf-8?B?QldVTmpsclNSekl0WnErSEhBWXVxeTg4d3Y0ODA5N1NIQ2hZMVZyVnZLUVR4?=
 =?utf-8?B?VWxObUtZMXhUZmhIWTdTQ0hPNEIrSUpyUWhBYnhYZXFEbkJycUt5YzlUcWdN?=
 =?utf-8?B?RStEVzlzems3dWRqRWxpSWpUK3hMRE1FNXN2ZG9FKytucmxJMEp4WVNBV2Z4?=
 =?utf-8?Q?J5GTiymvlvztjG3IBL2CpNrWn1r2RVUCkWczGY0?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM6PR04MB4966.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 924224c1-31ce-4e07-e2cd-08d8dfdb40e5
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Mar 2021 13:33:25.1546
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VsjRY3NOfolkQcXbBb8mbwtMEuywO/zfxVNDrXXWRMZvo8qgV1+vKQ149gjMlhemanErYaLDhCdzl2Hus1WGgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6648
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

PiBGcm9tOiBEb25nIEFpc2hlbmcgPGFpc2hlbmcuZG9uZ0BueHAuY29tPg0KPiBTZW50OiBGcmlk
YXksIE1hcmNoIDUsIDIwMjEgOToxOCBQTQ0KPiANCj4gRG8gbm90IHBvd2VyIG9mZiBjb25zb2xl
IGRvbWFpbiBpbiBydW50aW1lIHBtLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogRG9uZyBBaXNoZW5n
IDxhaXNoZW5nLmRvbmdAbnhwLmNvbT4NCg0KU29ycnksIFNoYXduLCBwbGVhc2UgaWdub3JlIHRo
aXMgb25lIHdoaWNoIHdhcyBhbHJlYWR5IGluY2x1ZGVkIGluDQpbUEFUQ0ggdjUgMTgvMThdIGZp
cm13YXJlOiBpbXg6IHNjdS1wZDogZG8gbm90IHBvd2VyIG9mZiBjb25zb2xlIERvbWFpbg0KDQpS
ZWdhcmRzDQpBaXNoZW5nDQoNCj4gLS0tDQo+ICBkcml2ZXJzL2Zpcm13YXJlL2lteC9zY3UtcGQu
YyB8IDI3ICsrKysrKysrKysrKysrKysrKysrKysrKysrLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDI2
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2Zpcm13YXJlL2lteC9zY3UtcGQuYyBiL2RyaXZlcnMvZmlybXdhcmUvaW14L3NjdS1wZC5jDQo+
IGluZGV4IDUzYjQ5ZWYyMDAxNC4uYjM4NDgwODBkYjc1IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2Zpcm13YXJlL2lteC9zY3UtcGQuYw0KPiArKysgYi9kcml2ZXJzL2Zpcm13YXJlL2lteC9zY3Ut
cGQuYw0KPiBAQCAtODYsNiArODYsNyBAQCBzdHJ1Y3QgaW14X3NjX3BkX3NvYyB7DQo+ICAJdTgg
bnVtX3JhbmdlczsNCj4gIH07DQo+IA0KPiAraW50IGlteF9jb25fcnNyYzsNCj4gIGJvb2wgaW14
X3NjdV9wZF9pbml0aWFsaXplZDsNCj4gDQo+ICAvKg0KPiBAQCAtMjA5LDYgKzIxMCwyMyBAQCB0
b19pbXhfc2NfcGQoc3RydWN0IGdlbmVyaWNfcG1fZG9tYWluICpnZW5wZCkNCj4gIAlyZXR1cm4g
Y29udGFpbmVyX29mKGdlbnBkLCBzdHJ1Y3QgaW14X3NjX3BtX2RvbWFpbiwgcGQpOyAgfQ0KPiAN
Cj4gK3N0YXRpYyB2b2lkIGlteF9zY19wZF9nZXRfY29uc29sZV9yc3JjKHZvaWQpIHsNCj4gKwlz
dHJ1Y3Qgb2ZfcGhhbmRsZV9hcmdzIHNwZWNzOw0KPiArCWludCByZXQ7DQo+ICsNCj4gKwlpZiAo
IW9mX3N0ZG91dCkNCj4gKwkJcmV0dXJuOw0KPiArDQo+ICsJcmV0ID0gb2ZfcGFyc2VfcGhhbmRs
ZV93aXRoX2FyZ3Mob2Zfc3Rkb3V0LCAicG93ZXItZG9tYWlucyIsDQo+ICsJCQkJCSAiI3Bvd2Vy
LWRvbWFpbi1jZWxscyIsDQo+ICsJCQkJCSAwLCAmc3BlY3MpOw0KPiArCWlmIChyZXQpDQo+ICsJ
CXJldHVybjsNCj4gKw0KPiArCWlteF9jb25fcnNyYyA9IHNwZWNzLmFyZ3NbMF07DQo+ICt9DQo+
ICsNCj4gIHN0YXRpYyBpbnQgaW14X3NjX3BkX3Bvd2VyKHN0cnVjdCBnZW5lcmljX3BtX2RvbWFp
biAqZG9tYWluLCBib29sDQo+IHBvd2VyX29uKSAgew0KPiAgCXN0cnVjdCBpbXhfc2NfbXNnX3Jl
cV9zZXRfcmVzb3VyY2VfcG93ZXJfbW9kZSBtc2c7IEBAIC0yNjksNg0KPiArMjg3LDcgQEAgaW14
X3NjdV9hZGRfcG1fZG9tYWluKHN0cnVjdCBkZXZpY2UgKmRldiwgaW50IGlkeCwNCj4gIAkJICAg
ICAgY29uc3Qgc3RydWN0IGlteF9zY19wZF9yYW5nZSAqcGRfcmFuZ2VzKSAgew0KPiAgCXN0cnVj
dCBpbXhfc2NfcG1fZG9tYWluICpzY19wZDsNCj4gKwlib29sIGlzX29mZiA9IHRydWU7DQo+ICAJ
aW50IHJldDsNCj4gDQo+ICAJaWYgKCFpbXhfc2Nfcm1faXNfcmVzb3VyY2Vfb3duZWQocG1faXBj
X2hhbmRsZSwgcGRfcmFuZ2VzLT5yc3JjICsgaWR4KSkNCj4gQEAgLTI5MCw2ICszMDksMTAgQEAg
aW14X3NjdV9hZGRfcG1fZG9tYWluKHN0cnVjdCBkZXZpY2UgKmRldiwgaW50IGlkeCwNCj4gIAkJ
CSAiJXMiLCBwZF9yYW5nZXMtPm5hbWUpOw0KPiANCj4gIAlzY19wZC0+cGQubmFtZSA9IHNjX3Bk
LT5uYW1lOw0KPiArCWlmIChpbXhfY29uX3JzcmMgPT0gc2NfcGQtPnJzcmMpIHsNCj4gKwkJc2Nf
cGQtPnBkLmZsYWdzID0gR0VOUERfRkxBR19SUE1fQUxXQVlTX09OOw0KPiArCQlpc19vZmYgPSBm
YWxzZTsNCj4gKwl9DQo+IA0KPiAgCWlmIChzY19wZC0+cnNyYyA+PSBJTVhfU0NfUl9MQVNUKSB7
DQo+ICAJCWRldl93YXJuKGRldiwgImludmFsaWQgcGQgJXMgcnNyYyBpZCAlZCBmb3VuZCIsIEBA
IC0yOTksNyArMzIyLDcNCj4gQEAgaW14X3NjdV9hZGRfcG1fZG9tYWluKHN0cnVjdCBkZXZpY2Ug
KmRldiwgaW50IGlkeCwNCj4gIAkJcmV0dXJuIE5VTEw7DQo+ICAJfQ0KPiANCj4gLQlyZXQgPSBw
bV9nZW5wZF9pbml0KCZzY19wZC0+cGQsIE5VTEwsIHRydWUpOw0KPiArCXJldCA9IHBtX2dlbnBk
X2luaXQoJnNjX3BkLT5wZCwgTlVMTCwgaXNfb2ZmKTsNCj4gIAlpZiAocmV0KSB7DQo+ICAJCWRl
dl93YXJuKGRldiwgImZhaWxlZCB0byBpbml0IHBkICVzIHJzcmMgaWQgJWQiLA0KPiAgCQkJIHNj
X3BkLT5uYW1lLCBzY19wZC0+cnNyYyk7DQo+IEBAIC0zNjUsNiArMzg4LDggQEAgc3RhdGljIGlu
dCBpbXhfc2NfcGRfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZQ0KPiAqcGRldikNCj4gIAlp
ZiAoIXBkX3NvYykNCj4gIAkJcmV0dXJuIC1FTk9ERVY7DQo+IA0KPiArCWlteF9zY19wZF9nZXRf
Y29uc29sZV9yc3JjKCk7DQo+ICsNCj4gIAlyZXQgPSBpbXhfc2N1X2luaXRfcG1fZG9tYWlucygm
cGRldi0+ZGV2LCBwZF9zb2MpOw0KPiAgCWlmICghcmV0KQ0KPiAgCQlpbXhfc2N1X3BkX2luaXRp
YWxpemVkID0gdHJ1ZTsNCj4gLS0NCj4gMi4yMy4wDQoNCg==

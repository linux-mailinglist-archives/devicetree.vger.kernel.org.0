Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 304FC3CB0AC
	for <lists+devicetree@lfdr.de>; Fri, 16 Jul 2021 04:05:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231766AbhGPCIc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jul 2021 22:08:32 -0400
Received: from mail-am6eur05on2072.outbound.protection.outlook.com ([40.107.22.72]:22497
        "EHLO EUR05-AM6-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S230417AbhGPCIc (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 15 Jul 2021 22:08:32 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VvL2cW4D3hmDaN814jXkG3djcNZo5b9fk94Qz0nDJwlWXlZKkBC8Vf6fF0CRd4ll/Y9Bmy72/2UAXvXAu1tqOKxnL8MffH2i2M5g+yG0a6KyCZ8B4jLQ/53HbS5m9r3FkwQx4JSJYNEtfSIwgp5/wjK1jX39Aty00SN/nszbDUsPF6QRq0tmIrO4O5DkuEpFG03MNpNnGfjepmIddVpW13apGb+NkuWOzpYFCHaCIXxLOSCes5ti67q1a4XOr5PYZ4rnJ3dEk0/mr3/VDQHl+XRC5AbYFjvNuwWyHwqxq/9CDaRgCtMyqI21GrUOjs9fV7ShPA6uHP5GFRCFonw1HA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PtiLZbO7bvPfjAghmYcnMDLE6V9utRQfuezjKOMRGkc=;
 b=M2yYp1CuynpSBEPkLuc6R+f0M0w1/f6fOvTR4W8Jad3bogvV263AiGH25aJl/DXWoYFSAfEpjel4Vnrej5lNrXL4/KuLUAGfOa60333LPBOJ0tDEHA/27TVEBs3we2ZmV+qxOBpizwsNK2wvY8XJiE1n0Bg54DfikyQs1iusB3/uKQHClwO7PbyQGOxOw/Qz5WN5xY8G/ZrSfCgmC6LuSM1bFAUlsOLhefl7Lr1m9ja668tsKqBdm/bVB1aRP3VMr7xHxZSBO94et1aM8+KjTZ/2sLCsR4LVKuJAgr5GWN+0mP1SdEPQlkhBxQaTljx9XtGrOrLn3rEJb9eL1wQ/Qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PtiLZbO7bvPfjAghmYcnMDLE6V9utRQfuezjKOMRGkc=;
 b=lr2/0YY3r8af041yfOUDYSSMjbQsUC92l4LBq90u97fcxxQOj/2pkpmJXq//5ipwsl5W7e5uHdwBfhs/RNhu3J15iX3rCp51vdIJ/Mb/3Q4vRtV2NKAKGa1qkHkzKvXub9gEdUxqIhijhlRKbvxeTCsuk/8FjRnMR6iYqnzU6cM=
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB7PR04MB5129.eurprd04.prod.outlook.com (2603:10a6:10:1f::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.25; Fri, 16 Jul
 2021 02:05:36 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::9c70:fd2f:f676:4802]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::9c70:fd2f:f676:4802%9]) with mapi id 15.20.4331.021; Fri, 16 Jul 2021
 02:05:36 +0000
From:   Joakim Zhang <qiangqing.zhang@nxp.com>
To:     Fabio Estevam <festevam@gmail.com>,
        Marc Kleine-Budde <mkl@pengutronix.de>
CC:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Sascha Hauer <kernel@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Aisheng Dong <aisheng.dong@nxp.com>
Subject: RE: [PATCH] arm64: dts: imx8mp: remove fallback compatible string for
 FlexCAN
Thread-Topic: [PATCH] arm64: dts: imx8mp: remove fallback compatible string
 for FlexCAN
Thread-Index: AQHXeW99DhOQxs5xtk2rV7Lk6P2enatD8BmAgAADKwCAAAb7gIAA4CKQ
Date:   Fri, 16 Jul 2021 02:05:36 +0000
Message-ID: <DB8PR04MB6795FC7F16A4E7F2E46E18C1E6119@DB8PR04MB6795.eurprd04.prod.outlook.com>
References: <20210715114953.24393-1-qiangqing.zhang@nxp.com>
 <CAOMZO5Dz1J01Auv5MXc+WajT4AaxHWKStw6RxX3_+LY+9wiimg@mail.gmail.com>
 <20210715121516.pjhbjhf6htds6n65@pengutronix.de>
 <CAOMZO5DJgC7LTgoYKaMxvFpg8fm89iivQbFfe3VUA0T5Hhqy=A@mail.gmail.com>
In-Reply-To: <CAOMZO5DJgC7LTgoYKaMxvFpg8fm89iivQbFfe3VUA0T5Hhqy=A@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 42fa7fb4-4ee0-46e4-2d84-08d947fe33bb
x-ms-traffictypediagnostic: DB7PR04MB5129:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB5129285F0A2BA4C9DC812A27E6119@DB7PR04MB5129.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:348;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8RQ5XL5vJuR09av3ph2ZDO5XE6EEaqBi4mV01fT/Aib2Ggd8YUSjd+HItmHvAd89BZWQc8d3F6h1F+Y2OXBYSdvu/iQN20GvvbB3r6hur2tkTG5CuXuYlLeVhgTn2km7tBtaMXbPNNXZqGytXWz4solmdASwHBwyxl8wlp+EfRmLPnCTF0YQaXzk2lpdmxqPd0v2FquajGr7B0rwfbSee5q5syG4pnY9/xTIXAjpAf+u0ImN8Q1zALplp+3eqDuEA4Y6wIcAKiKQoO3OfUZTg28Ezeax8nwFk7HJqAmow8YhhNgIxGVLCHCFdVhnUucaERMBkWEux2Q6x9FJknVrVAO6GGcH0g8qAZDR8aRSl4x2HLp4mZV9LrMsaMtVY0MWqawl28E0P2hRXARROLQE0wfmGpOTSQd+arnVrtvmtZnVPWQAhi7PabLYxQVJsaCzunEAFtUSXrw47QLM16gFCoG4TGN868DkULxR0ic1ryjYCMLY1TWD+b1uJIyo+q5WF6fwUBMgQ/mfrpBMHTc7WENybTLZz0Wd3eF5TUhRS9f3QkZ+OJL27I8Dot2LgpksouIBp7iLNvO6hmFDsoZlECs4CfhCAe+klmR99wyGjC/0gF4W2LuG3kHrIqBEUk6J/KFY1FattQmzI8jNw/m6fi//Lk/il91GE630YJzm4DmkT3oDj1FkA2irgiXfOcmndxOpScvnTNUuSQsYZLZ+Y0vAv0oBMdik9sJnEh/NrI0=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6795.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(346002)(376002)(396003)(366004)(136003)(2906002)(86362001)(54906003)(8936002)(33656002)(110136005)(316002)(71200400001)(478600001)(76116006)(9686003)(55016002)(8676002)(53546011)(52536014)(6506007)(83380400001)(5660300002)(7696005)(66446008)(66946007)(66476007)(66556008)(64756008)(26005)(186003)(4326008)(38100700002)(122000001)(32563001)(38070700004);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d0lPV2VEMmRSZjRCa3Z0QzlHUUJqZmY5WERKUFpVUlRGTW5oT0RJK2hKeTN0?=
 =?utf-8?B?ZlMwUmJqL2QxWm1sdUJrOHRsWE4vSWd2S1hoTXlrY0orTTViNjVpdEtyYzd6?=
 =?utf-8?B?cjhNOXpVVmtOMGVxVWt4NUpwaGlMcG16K1c5R1R3SGRGOXBMZFRSV3p5UVQy?=
 =?utf-8?B?aVJBVFN1UGlodWdsS1JKWU5xQU14UmlnQlRUZExoZHhjRmZWTlU1d1JZMFhn?=
 =?utf-8?B?ZjJqQ2NiSGwvVU1JdXczcnhMT01xSEtIbmZSdGpjbkxqOWhWckIvRnZkRXE5?=
 =?utf-8?B?NmEzcnAycWs0RVRHcWhvdE14cjRacGYzR3paSDJHMHU0LzlSTXdoTUdLSStQ?=
 =?utf-8?B?Nmh3RncyNEtYZm1jNjAzN3lQSlllYnZ0Rk9OMGVQYWVvR3IwN0RsajV3Uk8r?=
 =?utf-8?B?YmU3Z3hJZCtLZWtOV2VmYkdkM3FJendQaDBTdklyUU9jVkNveFgyZlVZcVFZ?=
 =?utf-8?B?aFdLcytsNTJGR0hXN1psVVFSV1pvL083NnNUQzNscE8yMjYvOXMvZ29yTTVk?=
 =?utf-8?B?M3RubWFaVHlHRFE2TlB0R1Z4V3JuTWVUZ1hra3BMRzR6RUFJdEkwQ0VtUDYr?=
 =?utf-8?B?Y0I2UmQ1UVJpaE9mbGlYcVNSOGJReVlwNmd2Z2xmRWtlVVh3QUxzcnZ4RStE?=
 =?utf-8?B?TmU0TTZiUytVdUFHSU5zTG15MTlLa003WmFDMkhHMWJjelBrbm1td244UXJu?=
 =?utf-8?B?aitHWnBNVWQ5Wm1WR2NZdko2eDNmbWpnd09pc0NaOFlRbGFMZ0lvaHF0S0tj?=
 =?utf-8?B?dnpISVVvVFdSbXBtMkFteFRPOStISXBrNXZLc2p2T2xEOEFsYVJBek4zUXk3?=
 =?utf-8?B?bjQ5ZmtMdmNIUGh0cWR5LzE5VkVMbFVYSFVUS3RTNFpMcXhJMUZNRTdEVGxR?=
 =?utf-8?B?aysrbk5MWUp0UWJheGQ5TVk5S0R4NGtQVWNIWDRaUjVYcUJLRzVFdkRqM3I4?=
 =?utf-8?B?NzJVNC9pZ3dpZUt3d0JKK0RPVS9DNUNzYWhpV3pkRUttdFZUVlhsMnBCUGRk?=
 =?utf-8?B?SHoxTnNaZGlZWWFKM01WNkZlQmtENTVaZ01GRG1xMm1MQkY1QURSdjlONUtO?=
 =?utf-8?B?WFJRNEFrc1lvQ0dKc0g4bzFydXhGZDA3ay85NkRjeHRITDVQRFp3NXBpVGZs?=
 =?utf-8?B?NGNIZHpjZ0RQMUYvZmNkRVFrdjVJSGxpeGJZWW9OcVpaeWFmd2pIWjdLV2FD?=
 =?utf-8?B?L0V5d2N6aGtBS1F3K1ZHRjlwTHdiWWk0QUhpWWNhNW1DNDBOZytEeFN4UlJS?=
 =?utf-8?B?SnkrYmJmMGwwaFZkaFlzQkV2QWJkWGQ4dEZYVFFsZG1MTUh0Y1prWGdHeVlN?=
 =?utf-8?B?QUFDRVBUQzZEbGY2VStQcUtkSHphOU1xMVl3UVRpU0lkd1Y1azNjTncrVEth?=
 =?utf-8?B?eUpmMWdRN0k5eUdkYllPVXpaNUt3NlIvcmZLd3BxNDU3NGJJMnArTGxkb0JC?=
 =?utf-8?B?Ylo3SXdJclVqOWIxbVNmS1RPcnN1QTN4TTh5clRIRDAxVCt2L2pPUmp2MS9X?=
 =?utf-8?B?bDJiR1E1WmlRNlFsb096c2MwTzZ1U2QraFBFa1Z3RkNVY1ZHWDNrbE5SYjNB?=
 =?utf-8?B?NEFZb0c1ZnJvSytlOWZ1ZUo3c2x3UVYzcWM2a3NHSEVsSUp5UjZzdEVmTzFx?=
 =?utf-8?B?NHlwNFlYY3JKdU1IRjIzQm4xaklGeWFJc2E2VFpKZENNUzBnV0s4b1p0Q3ZX?=
 =?utf-8?B?UnBBS0NQWUNqemsyZ3AvbWdhQlFqWWdiVEFtRG4xZk5hTEFzeE1Od09sTXlh?=
 =?utf-8?Q?bnTFYc26H1l0FxUMXE=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB6795.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 42fa7fb4-4ee0-46e4-2d84-08d947fe33bb
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2021 02:05:36.4109
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YMktWmVfrkHeIRTn9DbhzGUpsqP24gpI0SrO34WrVc52q6ZTGTo8EpaMuJv3JgP5LJHaoIa2brhkeewUYC2Pgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5129
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEZhYmlvIEVzdGV2YW0gPGZl
c3RldmFtQGdtYWlsLmNvbT4NCj4gU2VudDogMjAyMeW5tDfmnIgxNeaXpSAyMDo0MA0KPiBUbzog
TWFyYyBLbGVpbmUtQnVkZGUgPG1rbEBwZW5ndXRyb25peC5kZT4NCj4gQ2M6IEpvYWtpbSBaaGFu
ZyA8cWlhbmdxaW5nLnpoYW5nQG54cC5jb20+OyBSb2IgSGVycmluZw0KPiA8cm9iaCtkdEBrZXJu
ZWwub3JnPjsgU2hhd24gR3VvIDxzaGF3bmd1b0BrZXJuZWwub3JnPjsgU2FzY2hhIEhhdWVyDQo+
IDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPjsgU2FzY2hhIEhhdWVyIDxrZXJuZWxAcGVuZ3V0cm9u
aXguZGU+Ow0KPiBkbC1saW51eC1pbXggPGxpbnV4LWlteEBueHAuY29tPjsgb3BlbiBsaXN0Ok9Q
RU4gRklSTVdBUkUgQU5EIEZMQVRURU5FRA0KPiBERVZJQ0UgVFJFRSBCSU5ESU5HUyA8ZGV2aWNl
dHJlZUB2Z2VyLmtlcm5lbC5vcmc+OyBBaXNoZW5nIERvbmcNCj4gPGFpc2hlbmcuZG9uZ0BueHAu
Y29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIXSBhcm02NDogZHRzOiBpbXg4bXA6IHJlbW92ZSBm
YWxsYmFjayBjb21wYXRpYmxlIHN0cmluZw0KPiBmb3IgRmxleENBTg0KPiANCj4gSGkgTWFyYywN
Cj4gDQo+IE9uIFRodSwgSnVsIDE1LCAyMDIxIGF0IDk6MzMgQU0gTWFyYyBLbGVpbmUtQnVkZGUg
PG1rbEBwZW5ndXRyb25peC5kZT4NCj4gd3JvdGU6DQo+IA0KPiA+ID4gV2h5Pw0KPiA+DQo+ID4g
RG9uJ3QgcmVtZW1iZXIgZXhhY3RseSB3aHkgSXQgZG9lc24ndCB3b3JrLiBJIHRoaW5rIGl0IHdh
cyBhIG1pc3NpbmcNCj4gPiBxdWlyayB0aGF0IHRoZSBpbXg2IGRvZXNuJ3QgbmVlZC4NCj4gPg0K
PiA+ID4gImZzbCxpbXg4bXAtZmxleGNhbiIgaXMgcGFzc2VkIGFzIHRoZSBtb3JlIHNwZWNpZmlj
IGNvbXBhdGlibGUNCj4gPiA+IHN0cmluZyBhbmQgaXQgc2hvdWxkIG1hdGNoIGFnYWluc3QgaXQg
Zmlyc3QuDQo+ID4NCj4gPiBBQ0sgLSBidXQgd2h5IHNwZWNpZnkgdGhlIGlteDYgaW4gdGhlIGNv
bXBhdGlibGUgbGlzdCBpZiB0aGUgZmxleGNhbg0KPiA+IElQIGNvcmUgaXNuJ3QgY29tcGF0aWJs
ZSB3aXRoIHRoZSBvbmUgb2YgdGhlIGlteDY/DQo+IA0KPiBDb3JyZWN0LiBUaGUgY2hhbmdlIGlu
IHRoaXMgcGF0Y2ggbG9va3MgZ29vZC4NCj4gDQo+IFRoZSBjb21taXQgbG9nIG5lZWRzIGltcHJv
dmVtZW50IHRob3VnaC4NCg0KT2ssIEkgd2lsbCBpbXByb3ZlIHRoZSBjb21taXQgbWVzc2FnZSBh
bmQgdGhlbiByZXNlbmQgdGhlIHBhdGNoLg0KDQpCZXN0IFJlZ2FyZHMsDQpKb2FraW0gWmhhbmcN
Cg==

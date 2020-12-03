Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 61C1C2CD40F
	for <lists+devicetree@lfdr.de>; Thu,  3 Dec 2020 11:55:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389016AbgLCKzV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Dec 2020 05:55:21 -0500
Received: from mail-eopbgr00084.outbound.protection.outlook.com ([40.107.0.84]:18060
        "EHLO EUR02-AM5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S2387662AbgLCKzU (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 3 Dec 2020 05:55:20 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NVwAPA7774aJSixzFqMf7RYfhyvCvel55rRhjGASVPYAi4u0VeSIPpSxBd9LNyBfhx5QQs7+NOxe9j5VeKPkEz021+tQfvucZxlFlLxqyZOm/iRkimk2ms6B+n0e79Ccz8fxCdGTx9e1eg4Ob/mpTcPfJ2CIy+aF/vjAG3qo5j7bzo+zKR1ylS8ZNks5SQwBHSuI1GI2N/tS4uSHtdBt4K/nttNdLTwhMWLB/bBN+zVpaG7VxO2K2MLMNyeJpPINZ12mofIA3YPiS54angVPalVbAVHuzuvDqc8+/rdu1j0doWAHngvtV0Jle/d7cFN5uQtE3/tX2i4Lrww3gwnyTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WsverUswVvCyljudyDWUx+03W8Uev/NgYkB4JZBy3/k=;
 b=SgC78pTEVS4+DotRRT9ecEgaEEEFPb4OUqx3aJ5K7tHicVR6KFMFtGNxHNi6yT/0eIxvm9cpZlNBiALii++q1H4+8o9wkZNYa1BZsksihSdWL4esPNgi5ijb2TJrzP+52vZwtXRvJzNDYP6zauPU0rpKTMcw8+psW9QGiQGcXvBfO6Ox85uy41Ukn0GR+GYuxWCkoKu8rMTKZ9zifTzVvXZTSTcogUw31dN/Z1wL5c2I1h7tV5Wvu/LJ8Q4xV4GrzkR+FHPv7+Sbi8WOmGhQSnl7Oa4RUbZHsStQGplrR1ggq8COlzlLh5Ukun9ocJsEj1jCnjomXUAHknyni9/daQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WsverUswVvCyljudyDWUx+03W8Uev/NgYkB4JZBy3/k=;
 b=l4B3yzovLlgt0yeE2gZSBrqgkfAFGDu3P2ejpo9jfxnWPmuOYBp+mB3Bcv5inyZ/0/3wmcFVsy4Z6f0EVwBfJQ8RFczYfsuCbb8k9kueVrJJf93BnHfbuyq7T+uTR3CDBQboMqMWiCX/2JJoKERxUlUfPYu1BKrsFBjAl+Gdz0k=
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB7PR04MB5498.eurprd04.prod.outlook.com (2603:10a6:10:80::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.25; Thu, 3 Dec
 2020 10:54:30 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666%4]) with mapi id 15.20.3632.021; Thu, 3 Dec 2020
 10:54:30 +0000
From:   Joakim Zhang <qiangqing.zhang@nxp.com>
To:     "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        dl-linux-imx <linux-imx@nxp.com>
Subject: =?utf-8?B?UkU6IFtQQVRDSCAwLzVdIGFyY2g6IGFybTY0OiBpbXjvvJpwYXRjaGVzIGZv?=
 =?utf-8?Q?r_FEC?=
Thread-Topic: =?utf-8?B?W1BBVENIIDAvNV0gYXJjaDogYXJtNjQ6IGlteO+8mnBhdGNoZXMgZm9yIEZF?=
 =?utf-8?Q?C?=
Thread-Index: AQHWvlm0O1YlYazdzEOOTuLdO5JlXanlSH5g
Date:   Thu, 3 Dec 2020 10:54:30 +0000
Message-ID: <DB8PR04MB67957C62626106E03D144E14E6F20@DB8PR04MB6795.eurprd04.prod.outlook.com>
References: <20201119095249.25911-1-qiangqing.zhang@nxp.com>
In-Reply-To: <20201119095249.25911-1-qiangqing.zhang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a9231b59-dadd-4516-8647-08d89779cfd2
x-ms-traffictypediagnostic: DB7PR04MB5498:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB54982FC32B6246DBD07823F3E6F20@DB7PR04MB5498.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1265;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xA/YnFLSy1iaq5vL2ovAt1Vi1Z8u1JimkPGL5sXhQMZBDn7YjUNroSH0HyKpXta+pT/6awrLMDcVUY5IXaOR0nbKAYDxh5APCbaCh83wH32/LfBtE4MKrskjCHTLBovAAalsCGUJOBS+ce9QkG/G5hO54uE3lwuP3EqegL2eUEQrRQoMxWYPI1srelFN/QJZAP8BGStDF2QDvpw2OV7vxO/TvvF0QN+5K/CoaXVZD5xSdGsUNUeav8JJf58VgCWyUZDCDgBeJUjfI8KdPukrWJC/lQuNEJutOgcmuGz0a1HR979sYpRsAnfhuHLPls2tA+VC8lSrVVrTyrAKPsh0Sw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6795.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(376002)(346002)(39860400002)(136003)(366004)(66556008)(53546011)(66476007)(33656002)(66446008)(83380400001)(7696005)(2906002)(55016002)(6506007)(478600001)(66946007)(8936002)(64756008)(9686003)(110136005)(54906003)(76116006)(86362001)(4326008)(316002)(186003)(52536014)(5660300002)(26005)(71200400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?utf-8?B?SmFiY2RjVElKZE1uSW5XZXhJSnB1Nkd5Q0NSOUQvWGc5WWFnemk0ejJ6Rno5?=
 =?utf-8?B?NkFKZ1k5SXR3Z0g4WGV2MklvWFNUNFdCSGFuQmhQdFZITnNDUjBaWGhKMDBG?=
 =?utf-8?B?UldPSnZpWDVXbE5URlZBVytkQmI2MU1URUwxSnVtcUd5STFIeGNuRmdxRkwx?=
 =?utf-8?B?STZSK2t3L2lHZ0x0emdvWmVpUC9UanZIYmdQQlozKyt2SkFDQUJLTmtYUXFa?=
 =?utf-8?B?eFBOaGp1bitXSzMwM1VvM1U0MCtMWWwzTksrK2Y5clVDcFFPZFNLYm0zeXRR?=
 =?utf-8?B?M0l0TTM3LzgwejVvQlVQT04raGlkK0JCMUpabXU0UzRNOWR3cFpzL0xvdDNx?=
 =?utf-8?B?dUZ6RDdtRGZwOW1xUmk5RDZGdm1SQkw2RnhqMS9xY1BmelhSOWxKMDJSaFFr?=
 =?utf-8?B?eXJnaXZWSm5WMHZpTjVoSGVmSVBMRndnazBTMFNvRnU4V0NJQmhxZTUrTkZU?=
 =?utf-8?B?MHRka1hObC9LOHk4Y3c1ellpSXpYcXlYRWtwdmdNT0Z4SmZHbEZZcGlFVmtW?=
 =?utf-8?B?SjhtSzAxcFg0RlBON3pMaTFsZkNCQ004SXdwRGxOT0N4Qk5oS1pjeUpaTWJ5?=
 =?utf-8?B?MytlZDNLb0Q4SENFQmJrWXFtT2tIa3pITTRyM3Vuc256SXhkUUY0RXFwU0ZV?=
 =?utf-8?B?Sm1DdmFDM01jK1lST3VUR2JXV2k0dUVhU253bGlLclFtZjZpS3MwejhXNE9G?=
 =?utf-8?B?K2tSbWIvN3hWU2lycVRrb2gxS3E5Z2laaXNObXlKaDVTSXQvZG1TcFFjZE1D?=
 =?utf-8?B?WWFobzdCOGU3Z1FPS2hLSDZURXdCeVp3d2hPVTgvd2hJOVptNWNPcER1SXVZ?=
 =?utf-8?B?N3dWbnFKWHpHQjczR2luM1ZTSDh2Mm9zK1V1Z25CUjFsYk9DUkVjbHlOZ2ZX?=
 =?utf-8?B?alVqeHlGS2MvNHJ1R1JNcFllRkZEemd3SDBnN2pUaTN5QllJcHVzOHcvUWcx?=
 =?utf-8?B?dTI4dEEyNTFIbVZJWVlWS0xtUjA2K0RhWUp2RlJnYXdrUjhqRTN6a25pWERY?=
 =?utf-8?B?eWJZeGZsaVpzaDJmenozZXRIQytPMUxUSlFIZWJIWFcwWGhVc1F6VXZUTE1s?=
 =?utf-8?B?YTc1d3gyM2JsMDBtcE5hSStKekpVQkdHQldGS290c25VRmtkQWRqcXg2aUJL?=
 =?utf-8?B?S1k4UnFtSUsrQ3Z2cmE3ei91S0RzTlhLaVNrczJlSXF0b25VTFJFRXJvMUtH?=
 =?utf-8?B?ZzkrRnVqZ0lyUHd6dlA5b3d6d2pKeC9HbHZpTTdQYTRHL0R3bVdOU0NYRmhD?=
 =?utf-8?B?eHBDMTBLMzVhV0dyNTFZMUZjZkxSZFZLd1dHTzJ0Q3lnNXhMYTdpSjJJaTFM?=
 =?utf-8?Q?jJV2nUlP7fpto=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB6795.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a9231b59-dadd-4516-8647-08d89779cfd2
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2020 10:54:30.5586
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: COJk92fRUayRB0oB7LIhU0YjklllwWMxgsua+lKb2Rk5BdrFkIUkbPiSLAfRXw0I9IGu+xUMSxxIfXghvOw2tg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5498
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DQpHZW50bGUgUGluZy4uLg0KDQpCZXN0IFJlZ2FyZHMsDQpKb2FraW0gWmhhbmcNCg0KPiAtLS0t
LU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBKb2FraW0gWmhhbmcgPHFpYW5ncWluZy56
aGFuZ0BueHAuY29tPg0KPiBTZW50OiAyMDIw5bm0MTHmnIgxOeaXpSAxNzo1Mw0KPiBUbzogc2hh
d25ndW9Aa2VybmVsLm9yZzsgcy5oYXVlckBwZW5ndXRyb25peC5kZTsgZmVzdGV2YW1AZ21haWwu
Y29tDQo+IENjOiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgZGwtbGludXgtaW14IDxsaW51
eC1pbXhAbnhwLmNvbT47IEFuZHkgRHVhbg0KPiA8ZnVnYW5nLmR1YW5AbnhwLmNvbT4NCj4gU3Vi
amVjdDogW1BBVENIIDAvNV0gYXJjaDogYXJtNjQ6IGlteO+8mnBhdGNoZXMgZm9yIEZFQw0KPiAN
Cj4gU29tZSBpbXByb3ZlIHBhdGNoZXMgZm9yIGkuTVggRkVDLg0KPiANCj4gSm9ha2ltIFpoYW5n
ICg1KToNCj4gICBhcmNoOiBhcm02NDogaW14NnVsL3N4L3FkbDogYWRkIHdha2V1cCBzdXBwb3J0
IHZpYSBtYWdpYyBwYWNrZXQNCj4gICBhcmNoOiBhcm02NDogaW14OG1tL24vcDogY29ycmVjdCBh
c3NpZ25lZCBjbG9ja3MgZm9yIEZFQw0KPiAgIGFyY2g6IGFybTY0OiBkdHM6IGlteDhtcTogYXNz
aWduIGNsb2NrIHBhcmVudHMgZm9yIEZFQw0KPiAgIGFyY2g6IGFybTY0OiBkdHM6IGlteDhtcS9t
L24vcDogYWRkIG1hYyBhZGRyZXNzIGZvciBGRUMNCj4gICBhcmNoOiBhcm02NDogZHRzOiBpbXg4
bXEvbS9uL3A6IGFkZCBmc2wsc3RvcC1tb2RlIHByb3BlcnR5IGZvciBGRUMNCj4gDQo+ICBhcmNo
L2FybS9ib290L2R0cy9pbXg2cWRsLXNhYnJlYXV0by5kdHNpICB8ICAxICsNCj4gIGFyY2gvYXJt
L2Jvb3QvZHRzL2lteDZzeC1zZGIuZHRzaSAgICAgICAgIHwgIDIgKysNCj4gIGFyY2gvYXJtL2Jv
b3QvZHRzL2lteDZ1bC5kdHNpICAgICAgICAgICAgIHwgIDIgKysNCj4gIGFyY2gvYXJtNjQvYm9v
dC9kdHMvZnJlZXNjYWxlL2lteDhtbS5kdHNpIHwgMTUgKysrKysrKysrKysrLS0tDQo+IGFyY2gv
YXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtbi5kdHNpIHwgMTUgKysrKysrKysrKysrLS0t
DQo+IGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcC5kdHNpIHwgMTUgKysrKysr
KysrKysrLS0tDQo+IGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS5kdHNpIHwg
MTcgKysrKysrKysrKysrKysrKysNCj4gIDcgZmlsZXMgY2hhbmdlZCwgNTggaW5zZXJ0aW9ucygr
KSwgOSBkZWxldGlvbnMoLSkNCj4gDQo+IC0tDQo+IDIuMTcuMQ0KDQo=

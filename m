Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 425E33BE5FE
	for <lists+devicetree@lfdr.de>; Wed,  7 Jul 2021 11:53:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230489AbhGGJzz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Jul 2021 05:55:55 -0400
Received: from mail-eopbgr10071.outbound.protection.outlook.com ([40.107.1.71]:54397
        "EHLO EUR02-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S230462AbhGGJzy (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 7 Jul 2021 05:55:54 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m4+sCOk9WTaANm6mQkmDBBeQwR3SOTRuomDCkOxgrQzT+N4qTXDBmcVoOu8eptS1/t39szAVTJ1hVfX0bCyb01KNLIxQaPwp968SwhzA2i9Tdz83C2+2Ebox21TNYSHSAesSnqJos/PeBmuA+k09z30bVtnaxHsukxfH9FOPT1fmC81frdzzZnoljy2Hb5T112SnGiycauPYuoVV3MpUD4KqQr0OqlFNalc++hxgMF1EoL8Vt1KXC+Prveh89AvWijT0EAik3fdFFKEMWgWsACYTcAN73BpkwwaTCVbchsVy07hnbSE2eAB15/m5gOvHU1UnvfyNOePHXk1lCo77pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rvNXdV1oOK15DITncN9yK1wm5hqNLaVBGSxlf/t53T4=;
 b=BT9bGuhD2YBXba95YdrmByOaWdk1tj8A2k425CQmBxND8pg/uAF8bVzero7pJjSDT/O7pD37DnoGopc7pnC7S02nOXpVVJehJPsfpZVs0g2dyAx16rvcBMxHPdAnkXUNysItm0jXl9IfypRw5wTMOCdXuP6u5jy+BC4642H+C1y54IKCfWpiHA6fowMp8+4I5tRn9N1xg4H3W+geXbHL+UjHlor/ebmG6jH7rdJE+KnTmQOdgq3aMQw45CsNMQ2MD/Mc58f94nXbtZ0gec4PexNoaGFx4j8LrJHgmnvFR5I8fwiyK4sCENSYXAIyDipGPr+S1uJ4RumFyfzbz8Q8/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rvNXdV1oOK15DITncN9yK1wm5hqNLaVBGSxlf/t53T4=;
 b=QaglWPqWKxAEba5NtNuf41/9eW6BpREp6h2gDSJWyVYliaOWd6N6Ze1Ny/su1RobTmAP3KKltRM6sCwhG+xIG5NqNIwHT8fOjapiX3LWBpftzDSD3ANM7O8H/TB/jfHv4hjNFProbGnpan1gSQC05hFc/aFmISCzYboEhvWQjmQ=
Received: from DB9PR04MB8477.eurprd04.prod.outlook.com (2603:10a6:10:2c3::11)
 by DU2PR04MB8824.eurprd04.prod.outlook.com (2603:10a6:10:2e3::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.23; Wed, 7 Jul
 2021 09:53:13 +0000
Received: from DB9PR04MB8477.eurprd04.prod.outlook.com
 ([fe80::9daa:ab21:f749:36d2]) by DB9PR04MB8477.eurprd04.prod.outlook.com
 ([fe80::9daa:ab21:f749:36d2%9]) with mapi id 15.20.4308.021; Wed, 7 Jul 2021
 09:53:13 +0000
From:   Aisheng Dong <aisheng.dong@nxp.com>
To:     Jacky Bai <ping.bai@nxp.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "sboyd@kernel.org" <sboyd@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "linus.walleij@linaro.org" <linus.walleij@linaro.org>
CC:     "festevam@gmail.com" <festevam@gmail.com>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH v3 11/11] arm64: dts: imx8ulp: Add the basic dts for
 imx8ulp evk board
Thread-Topic: [PATCH v3 11/11] arm64: dts: imx8ulp: Add the basic dts for
 imx8ulp evk board
Thread-Index: AQHXaV4QjgfEnZQMqEyggbja4JAewas3WPnQ
Date:   Wed, 7 Jul 2021 09:53:13 +0000
Message-ID: <DB9PR04MB84773164EEBA9D6EDE7DA4D5801A9@DB9PR04MB8477.eurprd04.prod.outlook.com>
References: <20210625011355.3468586-1-ping.bai@nxp.com>
 <20210625011355.3468586-12-ping.bai@nxp.com>
In-Reply-To: <20210625011355.3468586-12-ping.bai@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ab1b2bfa-1b9a-408f-101e-08d9412d092c
x-ms-traffictypediagnostic: DU2PR04MB8824:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DU2PR04MB8824B76BD6B932A0EE55047B801A9@DU2PR04MB8824.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:765;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TCuGVfD2fhxwcGMHp5gr/c0+90ZNhsRFble9LezZRUBQhoL+RGEpPNJoaFxmM0o8EQ/5GJ6Ju3C6qEgqQ0JqCk3ANajqGy9FX+WTNAmfsrU5f1VuSKAdJ5BvlTdbgOk/Puh3iRXd81HAaTA1xcNjyh2SPAPGGQJfv5fCAl9bus3FfeuIp1jK9moGv9w6sqUvBJ0jduUCC8YVtdKFLDrECqlZibRChSoSW99CAYD1E1MKaTSIRXN2U2/xnzG0dI79yDV0dRe6Nq5uKZSUvbFiEjjDtW0xa6oC4qw/wwUmHDEgn/QnkPUR+BWWh+UsfOA3Ccu/wMITkxv0cEmKcXTxxbPo1Oz2kzThwbSCpedOjQISkTFww2xtai87U0QTmNoKB3T4pYVDAr9p4TRLcChZKAO2sLA+KTpgybT/kLpmGFjz5rWU2BXvrFI3JxPS/oA65CyFsERReY7HAwEs+XfvXBwYAhUglrz7bcvpWgwX+H/GpUHzW0ruOWVPELcsuTzYNJfg1LIyHk3oVtFViY11vAOk6MY4qYoCjRUvhdtBLeF4VeYocet/j8prdSmLBAN5aYmL1p5+GhXbsPetWj6gkdO/Lwt7RSSbh00c9TtJ7lAPxS2glnXIlCF630f9O/Qd7NWjjJSxE9FEr/adBz2drQR23uAtSpzRFDxINitN38VPEWOsP/BY/fiHbuZ+i9bX39XvAZiMB2C/Lon486+RSA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR04MB8477.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(376002)(366004)(136003)(396003)(39860400002)(38100700002)(26005)(8676002)(7696005)(122000001)(2906002)(4744005)(66476007)(8936002)(52536014)(66946007)(66446008)(33656002)(316002)(71200400001)(64756008)(5660300002)(66556008)(186003)(478600001)(86362001)(55016002)(76116006)(9686003)(4326008)(6506007)(110136005)(54906003)(44832011)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L2dCQWtsTFFNZXRSS256b0x5WmdEbmJ0WU1INmZ0WGZ1Qm82dlpQVFVDbjZo?=
 =?utf-8?B?YXAxNFovOGVVU09Gb1VZNnNEaXprbGFpdGQ3NGRoeXlXWWFTOTczdHJyRVI1?=
 =?utf-8?B?VmxpUE5kNGhoWkp6N2ZBbFFwWlFqdkYwNG8yamdHcm5DYmtmN0RaRXEwdVY4?=
 =?utf-8?B?VFpwWnRFMmxlS3F4Uitxd2l5b0tyU21CTFg3Ui9qdEw1ZTRMM0twWjl0WHd0?=
 =?utf-8?B?K015OTlHRFhzRlc4czNzVlpEM2puMVBkalZwZ1ZJR083dld2cDM4ekM1ZnAr?=
 =?utf-8?B?cGFkUytNK0Z6eHZORnk1RFc1SXpZZ2x2YjY3V1luSjhaeVAvaVFKeDlDQ25Y?=
 =?utf-8?B?QUxLNklyRVhXdXZlb1dnMTlCeEczRkZDTnM5clV1K1J3OG9CRkU5K21lak5S?=
 =?utf-8?B?T01CeUd1VnVYTmhockVZaFpWazA2Qi9BYmxPaDZOS1ZlNk9VM3ZDNWxBQXFM?=
 =?utf-8?B?dE83ZzRhWHZnSUV1K0M0Zlk4dEppOWFVQnFEeVpNQzdOa2NUK3AzVUxaVW5K?=
 =?utf-8?B?T1pCSExlVGhqckFaSm9QMHFZbTM1cDZKZ0hxaWs2ZkUvdjRxS2RGaW16T1JY?=
 =?utf-8?B?UmJuemQxb2Fta2NPUWN2TU9sUUVKenR0WjV5Mk4wL3Q4NzJsM3loYmF6Y1RG?=
 =?utf-8?B?Vmo5WkEzOXAzZ0ZpbTkybytNMjlaZ0ZQMnRJVTNpY1RrdUVuT0VCcHdxbURV?=
 =?utf-8?B?dGhybEtjc1NIaWhoc3Y3ZjVLVWRZL0VqQUQzZE1EYVR2T1h0UTRHOGdzOE9K?=
 =?utf-8?B?Tm55dUM5OHg5WU9KWXVKOEdXVkhoTkRJczZkVnAycmlLK3hsdEJmOVQwQmJE?=
 =?utf-8?B?QzVMTDR5TS9pbThjSHpiR2trWm5pK0xyeG5FYVpOa3B5eFJiR2I5eXhYdENj?=
 =?utf-8?B?SXd3OG04b1NUQnpLcTJPTDY4cThTK0hnT1QvR2FYa1VhZHRnMDUwbmdxQ2Uw?=
 =?utf-8?B?TGpiV3RrbkwxelJya1JSRSt3dnpNVlI0YWYrbWpLU0I2K1dpRmQ4bWVDM2xx?=
 =?utf-8?B?T0NyMStnNzBkV2JNbW1rOUpTV0J3Y2orRFU0UWZLL1hsRWV3RTliYTMvc3Mw?=
 =?utf-8?B?VmRiYVBVVzJ5MTVkR2hZRTFyQXlXZ2lTUlA4VlVTaFdXdnpKejlMQWR3ZHpk?=
 =?utf-8?B?MGFGU20rRUdYUlg5bTdMVU40WnhzcHNFS3kxM09zb1FLbHNaaWFBcjVhR1Yz?=
 =?utf-8?B?Q2NPOTV0WXdvQ3B6MmdjazdZdlJjTkZRcUYvV3lCbEYyR2FnUE00NTREZitU?=
 =?utf-8?B?MENtcysybGZaL01LNzZrVlphYS8wOWhSWS8vQ2ZpeDNEL0F1emxMai9zZnFM?=
 =?utf-8?B?OVdDRGh1eHlNUmlURUlyR3M3OWdndlFYRmlaYlRwSlVna0h2cnpMbkRQdndx?=
 =?utf-8?B?ZTQ2K0ZDL082U3pKMEtqUExTcjJ3ZmZxV1RlcTdEVnprUVp3ckxGMElrVlRK?=
 =?utf-8?B?N0VkSFlMOUg0N0ZNN1hJRVptb0RKNUhpMzFKbGE2WFNxV05xNjJJRVMyR3Na?=
 =?utf-8?B?eTFQQUhhZ3FJdElNNGJPQzEzbTZYai9KajdSbG5GSmdDbWova2tFb1B2b2F1?=
 =?utf-8?B?Z1VjQm5ELy9xYVZtbjl1ZSs0cnBPT2xxbmV0MVNBKzEyd2tyZ0RUTDlzOE1x?=
 =?utf-8?B?WlRYcHkrNnRuNG1Od0xmK09rMlJtSWd4MEdRcnBZYXYyeTlnRUFyNUVuQ0NC?=
 =?utf-8?B?YXp3SHpFb0hUamtQRCsyU2tValFzYWlCKzZRWTlBNE40SElFNlc5d0crOUJR?=
 =?utf-8?Q?nD5nDrQh1Wp1eIcvsc=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB9PR04MB8477.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab1b2bfa-1b9a-408f-101e-08d9412d092c
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jul 2021 09:53:13.0691
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /LJHWlhy+wWjEtnNZkTKyS/7TAiypansg9RLyF+g7wZvoY1vyuwzjh4hS9CC3pHh3woCT1b8dvqEFS5mczxkOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8824
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

PiBGcm9tOiBKYWNreSBCYWkgPHBpbmcuYmFpQG54cC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgSnVu
ZSAyNSwgMjAyMSA5OjE0IEFNDQo+IA0KPiBBZGQgdGhlIGJhc2ljIGR0cyBmaWxlIGZvciBpLk1Y
OFVMUCBFVksgYm9hcmQuDQo+IE9ubHkgdGhlIG5lY2Vzc2FyeSBkZXZpY2VzIGZvciBtaW5pbWFs
IHN5c3RlbSBib290IHVwIGFyZSBlbmFibGVkOg0KPiBlbmV0LCBlbW1jLCB1c2IsIGNvbnNvbGUg
dWFydC4NCj4gDQo+IHNvbWUgb2YgdGhlIGRldmljZXMnIHBpbiBzdGF0dXMgbWF5IGxvc3QgZHVy
aW5nIGxvdyBwb3dlciBtb2RlLCBzbyBhZGRpdGlvbmFsDQo+IHNsZWVwIHBpbmN0cmwgcHJvcGVy
dGllcyBhcmUgaW5jbHVkZWQgYnkgZGVmYXVsdC4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEphY2t5
IEJhaSA8cGluZy5iYWlAbnhwLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IERvbmcgQWlzaGVuZyA8YWlz
aGVuZy5kb25nQG54cC5jb20+DQoNClJlZ2FyZHMNCkFpc2hlbmcNCg==

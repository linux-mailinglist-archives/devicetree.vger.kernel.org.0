Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6517664F82F
	for <lists+devicetree@lfdr.de>; Sat, 17 Dec 2022 09:21:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229806AbiLQIVi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Dec 2022 03:21:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229469AbiLQIVg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Dec 2022 03:21:36 -0500
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-vi1eur04on2085.outbound.protection.outlook.com [40.107.8.85])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 023CC2B60D
        for <devicetree@vger.kernel.org>; Sat, 17 Dec 2022 00:21:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UToYWo/xZPFj1bCJoaCL6trjWOpwiD0UD+3J6nAYY20BNcylRSIDxvW+Zy62lcft0DlCiRHtyLNQ8eMZvYVday//1Ge/qCqsQrN1EoJQFesqIcdSvkY3gaf3gIMWZaqRKSx2LBrtnMdQby2Jr3kgfhrNy7PWTrGfUzsbmhCYACcYtNFQz/rLTadXLYjzTBF+0ezLuxYalKPduZnht/Ng1r8FfHThhhW7NWLGrMwD5bJFNCRfWn+M8tW/rcZQnBAL8U9+e4u16HrKGrxyWj+JYxNQrjqq22StZ/DL3hMpTS1gXY2fYG3Hmf+HX5UVQEzCs/urLHY0Oqar70BkpU2iLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6QS53uPn6oEn3lc9AkcRWAzalVb5yCCPOkG/lnrky68=;
 b=QurLFh++RftQBseJdx1mbbS++5d5Z0TW+0xSvf4lVyyT2hGNNwzCqnWavyHcne9Ebbs5nmuLv/6e0/1utQw0XjaOfSGG2mtLx+zDdwZ9InZSzPWTMcntxOt+wBd3pz4Vqr2tSdm31bjb/qllPwJr7L+CbXL49n5TTEZF/Gg2sfVjFV+EF1G7IhuVzmSZoOjHeq1z8KGhkeFOVspVEJObLY7PVywzYMwiiIep0wgHjl4O5s/iVDoOml5FLdDEyfFLYFSEsFNc5sm/QZwH2XnIkAUJgwfV1U2VP/bGMUnYKVeQAUaxSXs28T3RSAfypbztdIZl9pif4ja3HH+DCdsDhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6QS53uPn6oEn3lc9AkcRWAzalVb5yCCPOkG/lnrky68=;
 b=U3I2p+iUdtQfEc6GoYBTm6lwrd/v0vTe2YYmnHHYaO+uvKlWR7x0BA1B2MwAu/J5obAVkVJSQx2OOKKjLdMB2wEQC9pcieNE1tigVpcXEhijA0cA5fjMIgfzd6zkqMLbCGgykDAGFbKYm752DtvZA9JtRgH2qVI9rdCjtyh4OLg=
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com (2603:10a6:20b:42b::10)
 by AM9PR04MB7649.eurprd04.prod.outlook.com (2603:10a6:20b:2d8::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Sat, 17 Dec
 2022 08:21:31 +0000
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::f135:ec2c:8528:d866]) by AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::f135:ec2c:8528:d866%8]) with mapi id 15.20.5880.019; Sat, 17 Dec 2022
 08:21:31 +0000
From:   Hongxing Zhu <hongxing.zhu@nxp.com>
To:     Lucas Stach <l.stach@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>
CC:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        "tharvey@gateworks.com" <tharvey@gateworks.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "patchwork-lst@pengutronix.de" <patchwork-lst@pengutronix.de>
Subject: RE: [PATCH] arm64: dts: imx8mp: move PCIe controller clock config to
 SoC dtsi
Thread-Topic: [PATCH] arm64: dts: imx8mp: move PCIe controller clock config to
 SoC dtsi
Thread-Index: AQHZEYjsoOj7W+ir80y+jR9i8BwIB65xvNvw
Date:   Sat, 17 Dec 2022 08:21:31 +0000
Message-ID: <AS8PR04MB86765E8DA93A390931BA749E8CE79@AS8PR04MB8676.eurprd04.prod.outlook.com>
References: <20221216195932.3228998-1-l.stach@pengutronix.de>
In-Reply-To: <20221216195932.3228998-1-l.stach@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR04MB8676:EE_|AM9PR04MB7649:EE_
x-ms-office365-filtering-correlation-id: 1d857ef4-59b8-4263-d5c0-08dae007b3f1
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bzA0kckwdfsrVSHNe8K5exieKiMwAlQPxA9L7rVthSsBgtAoaGIw60KTaqgUeStwDiiVAL9IRkcDu/KjmzQ2O/CLoqvDMyeVcyE9I8HWWn3xC0IVcmZLuZFVaBqzp8t7hP26o5VW13/3zwPaA5YhNTVw640bRWN9XtwM0/Uj7XQgD8Py6rErGmZNOUFEJ4R7dqkOZ6OYfAa645rKnB+rCWzUHYrQm/TEtNkIWVLxnJHIjSZUfIpZMn18gmYUwqOMlctFiF4Ns+nRFxcIIsCYJqvQ76WyGiCC7hOAmSUe4qCFFirUjxOfF8tOxxfu7FB0wZs6Nd9nEEjRLG84ieWyzSv4GRBz7J17tjDI3IyMKBH/9JCD5BbttfAnLToigpUmKkScP7QbLNYM/oCkZgAsxWfbYdH4sNKKHG+smUUdF92Czg8X89g6q39gEfOtEhXut3eJlcLbAB9quFoTOyRrECOFkB2O9iSfs+inT0Dd7Mt+V9tQBEzWvvTkA9MQFLAmSA34t8+LbfTqFK8SeU8fGxgg+VgJJi8gWCoho/AKd0TlLEi+hygPSqD/hklPi7I3wp5ZQVM2C2NwtwJKXo9iwBADr19sHtysvyeo037A0qMbx+wdLbZY/3poFWiVeP3hqaIXVFQU9fbAfNgyHZyQnDRRyZZH1SZagj441i8SPAdip4nTHBHIcY3EihNF1X+rZEu92VsxxhZra0I28k3m78ittz5Vnl3CtolNIrPPRas=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8676.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(376002)(396003)(39860400002)(366004)(136003)(451199015)(38100700002)(86362001)(53546011)(71200400001)(2906002)(9686003)(186003)(26005)(7696005)(6506007)(478600001)(44832011)(33656002)(52536014)(316002)(122000001)(8936002)(55016003)(110136005)(54906003)(76116006)(4326008)(66946007)(8676002)(66556008)(66476007)(66446008)(64756008)(41300700001)(5660300002)(83380400001)(38070700005)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?gb2312?B?Yys4UlM5R3NtR0JuMVF3VkFlMFdvc2loY29hTnVVQ09HOXlkc3dwcXZiK2lm?=
 =?gb2312?B?MlhLZHlxdS80RnJCbGlXQjcyWndEeGZRTGZNSjhSdDZtckNRbUNsdU5nNnUv?=
 =?gb2312?B?NERNYjlqcktBTGR1dEY1WTQrMHdjWDVwREJ2N0lyQ0p1MElTS2dHVDZHamRU?=
 =?gb2312?B?bldyZzlwdEMyWVFBWFZYeXBqTTdzYU5YclU5Wjc1Y2hQeUNpTkhZbGEySW1m?=
 =?gb2312?B?bStNZEZER1A4UDdRdDBIelUxelJvOTJvckZYbGFDV0pFRlhDWG9PcXBTVi9E?=
 =?gb2312?B?NGNCY29ZVysva1lFcFdMQzM4QlMxaTVRYkZRN3krTjRuNEhobVNZOG1EWUJB?=
 =?gb2312?B?WnZmYWtUaWdHYXp4OUVZU1oydzVzVUJhYjNMNENKMjE3UitGUEhEQ09UM0Q0?=
 =?gb2312?B?RnJXaWZIakxEaHl4ZitHREZSb0p5Wk9QQ21NSXZBZW1wQmNzaS9YWjJsaHdo?=
 =?gb2312?B?U0ROOUZ4VlYxbldqaDBzRUhLbFRjaVpmRjlMakkzMWxrRXQxZ081bzZnYmRr?=
 =?gb2312?B?cG9wYWNSWHFuY054d2o1cTROZWRYV0dRVWxlbitRcUk3U01tSjJoR1hnZnFQ?=
 =?gb2312?B?NTlpazZCNVRkcTU5WjdSVEcvRzhOR3ptVW9PbjJrMU01MGNLNytSUUpmdmNq?=
 =?gb2312?B?bFJ1Q2RtREhYbnhOY1hVVmd2VzNPNXZkTXVwSEdjZVkvRVZNK2xHenFxWWMx?=
 =?gb2312?B?VEVqcGdCU2JObkNNb0pyNjZoMC9zdG4vZ3RwL24yQ0p3VWRRU3N6eUg2N05E?=
 =?gb2312?B?K0kzaERJOFVSbG5LSVdxWHZnS01EaHpvRThvWUNOQmVQWmxiQnFxUzcvWUlT?=
 =?gb2312?B?d3cxYUxkZFJNSDFkVEZmTGxnUEd2NThpbjk4MThmWW1PMkw3Z25HZ0NrWHBT?=
 =?gb2312?B?LzVJQ2NWeWY5Yms5WjAreUgzYzNBZm4vSXRzTVd2N3piamhtUEZ4TEUvYnNJ?=
 =?gb2312?B?UkJ0dU95cDdrVE1OcDN6NktDNkVvM0hpRkN6dEJWcTlhY3dFVDFHSmdtQ0pB?=
 =?gb2312?B?azdQMUx2ZzIzbGRtYUQra09CeTZweE14RVlNdVRLYlJqWWxKVjRteVJYeDJV?=
 =?gb2312?B?OXJZNG14MlkzaEQwWlp6b3lwMHR3TiszM0hvL0NjOU9QRW5qVEVTbjBSQytC?=
 =?gb2312?B?NkFXY1A2RkoweUgxUHhYRUZjMzJNeGZkZVh1WTJkTDgwV2dJT1lwU3UwNjhy?=
 =?gb2312?B?bWRrWVhWWGxhWjlUampCUVpkVnNNMHhUYVJwWHVjZDZnK0hFSjNKcVpKbVB1?=
 =?gb2312?B?ZFE4UVNjc3Q4MG1BTGJCMnNMVmZsSGxsanF2TDkrdlJ4VDl4a3pBZTJKQmYy?=
 =?gb2312?B?K1NUMzFSdjJ2bXhqakNUL3hWSlA5Qm5RRS9pdCt4cS8vU1E5WkxTOXdtcUtk?=
 =?gb2312?B?bEJSQ0x5NXJjeDhyenpPd0ZIRWoxSVNkNmwxS2Jybm1QL0Zha2YxU2trMi9v?=
 =?gb2312?B?Y0xmSXFkb0tYYXI1TnE3N3ZaeS8wbUlUT3NLNUhrUjZnZk8vTHhXZVU0M1M0?=
 =?gb2312?B?WG1TL25MUmZabUxjeDZTSWJTRWozZW8wc1hMU2xCbnYrMG1Fc1NuVXlkcFZ2?=
 =?gb2312?B?NisyS2RRS1JyM01jQUE4Y2JhblYwQVhNTjByZU5TcCtDZHRxem9GOWtOaUZ4?=
 =?gb2312?B?Z09FZEZudWJIUkcxMzJRSnY0SlJwYjlDQ1pjazgvbDhHZTRuU08zVkRMcDVr?=
 =?gb2312?B?VUxHb2RyR0RvOUZucVh2cGx5WE94clpNWElFc3h3ZG9BNWZBNlBxT2JZeGcy?=
 =?gb2312?B?b2FWeTlDdG5GVnJmaUtydHR0LzVjOWc3S2U4Z3FoRTBnR2pXazVzUHUwS0NV?=
 =?gb2312?B?cmNmWHJJaUZrR3plM25JNm9ZVDVXV1F6M0h1UXYvL3JPdWE5QXhVSW5XKzYz?=
 =?gb2312?B?WGpTWkN0YjNUV2xIY2pqdWlKNEdMUG1MMS9YUFZMVmJmZHZqcjhLTElZS1Rq?=
 =?gb2312?B?dnpqanppY3A2Nm83NDU3MU53ODJUdkdJUHZmSjNGbzZPS1dYRGdzS3dIZThz?=
 =?gb2312?B?TEQyUEV0KzNLZVNGb0IzYjlXTUZWNlhCa2xiVW1NVUYvZk5McGtsTTlIVmtF?=
 =?gb2312?B?bHpsSDMveFliNkZZcUJPK0dBU3hTemIxZ2FTcjVQbzd3bW5zUE1MUm5rTFlB?=
 =?gb2312?Q?osiLJ9fLEbCWtSfaf11bYWMdl?=
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8676.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d857ef4-59b8-4263-d5c0-08dae007b3f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2022 08:21:31.4397
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hDsmb35s6K+uxgUceo4vUnziGCfcHyRIkL1YNLFZTFCSjAD2jdqq0W/hp/4tD1GqbA5PV3QwhxDQ9zaypyo9uQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB7649
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBMdWNhcyBTdGFjaCA8bC5zdGFj
aEBwZW5ndXRyb25peC5kZT4NCj4gU2VudDogMjAyMsTqMTLUwjE3yNUgNDowMA0KPiBUbzogU2hh
d24gR3VvIDxzaGF3bmd1b0BrZXJuZWwub3JnPg0KPiBDYzogUGVuZ3V0cm9uaXggS2VybmVsIFRl
YW0gPGtlcm5lbEBwZW5ndXRyb25peC5kZT47IGRsLWxpbnV4LWlteA0KPiA8bGludXgtaW14QG54
cC5jb20+OyB0aGFydmV5QGdhdGV3b3Jrcy5jb207IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3Jn
Ow0KPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7IHBhdGNod29yay1sc3RA
cGVuZ3V0cm9uaXguZGUNCj4gU3ViamVjdDogW1BBVENIXSBhcm02NDogZHRzOiBpbXg4bXA6IG1v
dmUgUENJZSBjb250cm9sbGVyIGNsb2NrIGNvbmZpZyB0byBTb0MNCj4gZHRzaQ0KPiANCj4gVGhl
IG9ubHkgZGlmZmVyZW5jZSBpbiBQQ0llIGNsb2NrIGNvbmZpZ3VyYXRpb24gYmV0d2VlbiBib2Fy
ZHMgaXMgaG93IHRoZSBQQ0llDQo+IHJlZmVyZW5jZSBjbG9jayBpcyBnZW5lcmF0ZWQuIFRoZSBy
ZWZjbG9jayBjb25maWd1cmF0aW9uIGlzIGZ1bGx5IGNvbnRhaW5lZCBpbg0KPiB0aGUgUENJZSBQ
SFkgbm9kZSwgc28gdGhlIFBDSWUgY29udHJvbGxlciBjbG9ja3MgY2FuIGJlIHNldCB1cCBpbiB0
aGUgU29DIGR0c2ksDQo+IGFzIHRoZXJlIGlzIG5vIHJlYXNvbiBmb3IgYW55IGJvYXJkIHRvIHVz
ZSBhIGRpZmZlcmVudCBjb25maWd1cmF0aW9uLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogTHVjYXMg
U3RhY2ggPGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU+DQoNCkFncmVlLg0KUmV2aWV3ZWQtYnk6IFJp
Y2hhcmQgWmh1IDxob25neGluZy56aHVAbnhwLmNvbT4NCg0KQmVzdCBSZWdhcmRzDQpSaWNoYXJk
IFpodQ0KDQo+IC0tLQ0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1wLWV2
ay5kdHMgICAgICAgICAgIHwgNyAtLS0tLS0tDQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVz
Y2FsZS9pbXg4bXAtdmVuaWNlLWd3NzR4eC5kdHMgfCA3IC0tLS0tLS0NCj4gIGFyY2gvYXJtNjQv
Ym9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcC5kdHNpICAgICAgICAgICAgICB8IDcgKysrKysrKw0K
PiAgMyBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcC1ldmsu
ZHRzDQo+IGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1wLWV2ay5kdHMNCj4g
aW5kZXggZTJlMTg5OGQzZDEyLi5mYWVkMWQxNzkyMzggMTAwNjQ0DQo+IC0tLSBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcC1ldmsuZHRzDQo+ICsrKyBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcC1ldmsuZHRzDQo+IEBAIC00MDAsMTMgKzQwMCw2IEBA
ICZwY2llIHsNCj4gIAlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOw0KPiAgCXBpbmN0cmwtMCA9
IDwmcGluY3RybF9wY2llMD47DQo+ICAJcmVzZXQtZ3BpbyA9IDwmZ3BpbzIgNyBHUElPX0FDVElW
RV9MT1c+Ow0KPiAtCWNsb2NrcyA9IDwmY2xrIElNWDhNUF9DTEtfSFNJT19ST09UPiwNCj4gLQkJ
IDwmY2xrIElNWDhNUF9DTEtfUENJRV9ST09UPiwNCj4gLQkJIDwmY2xrIElNWDhNUF9DTEtfSFNJ
T19BWEk+Ow0KPiAtCWNsb2NrLW5hbWVzID0gInBjaWUiLCAicGNpZV9hdXgiLCAicGNpZV9idXMi
Ow0KPiAtCWFzc2lnbmVkLWNsb2NrcyA9IDwmY2xrIElNWDhNUF9DTEtfUENJRV9BVVg+Ow0KPiAt
CWFzc2lnbmVkLWNsb2NrLXJhdGVzID0gPDEwMDAwMDAwPjsNCj4gLQlhc3NpZ25lZC1jbG9jay1w
YXJlbnRzID0gPCZjbGsgSU1YOE1QX1NZU19QTEwyXzUwTT47DQo+ICAJdnBjaWUtc3VwcGx5ID0g
PCZyZWdfcGNpZTA+Ow0KPiAgCXN0YXR1cyA9ICJva2F5IjsNCj4gIH07DQo+IGRpZmYgLS1naXQg
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXAtdmVuaWNlLWd3NzR4eC5kdHMN
Cj4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXAtdmVuaWNlLWd3NzR4eC5k
dHMNCj4gaW5kZXggY2VlY2E0OTY2ZmM1Li4wMDdkZDg1ZmEwODYgMTAwNjQ0DQo+IC0tLSBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcC12ZW5pY2UtZ3c3NHh4LmR0cw0KPiAr
KysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXAtdmVuaWNlLWd3NzR4eC5k
dHMNCj4gQEAgLTU5MywxMyArNTkzLDYgQEAgJnBjaWUgew0KPiAgCXBpbmN0cmwtbmFtZXMgPSAi
ZGVmYXVsdCI7DQo+ICAJcGluY3RybC0wID0gPCZwaW5jdHJsX3BjaWUwPjsNCj4gIAlyZXNldC1n
cGlvID0gPCZncGlvMiAxNyBHUElPX0FDVElWRV9MT1c+Ow0KPiAtCWNsb2NrcyA9IDwmY2xrIElN
WDhNUF9DTEtfSFNJT19ST09UPiwNCj4gLQkJIDwmY2xrIElNWDhNUF9DTEtfUENJRV9ST09UPiwN
Cj4gLQkJIDwmY2xrIElNWDhNUF9DTEtfSFNJT19BWEk+Ow0KPiAtCWNsb2NrLW5hbWVzID0gInBj
aWUiLCAicGNpZV9hdXgiLCAicGNpZV9idXMiOw0KPiAtCWFzc2lnbmVkLWNsb2NrcyA9IDwmY2xr
IElNWDhNUF9DTEtfUENJRV9BVVg+Ow0KPiAtCWFzc2lnbmVkLWNsb2NrLXJhdGVzID0gPDEwMDAw
MDAwPjsNCj4gLQlhc3NpZ25lZC1jbG9jay1wYXJlbnRzID0gPCZjbGsgSU1YOE1QX1NZU19QTEwy
XzUwTT47DQo+ICAJc3RhdHVzID0gIm9rYXkiOw0KPiAgfTsNCj4gDQo+IGRpZmYgLS1naXQgYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXAuZHRzaQ0KPiBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcC5kdHNpDQo+IGluZGV4IDdhNmU2MjIxZjQyMS4uNGVm
MzZlYmM2YmZlIDEwMDY0NA0KPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9p
bXg4bXAuZHRzaQ0KPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXAu
ZHRzaQ0KPiBAQCAtMTE4Myw2ICsxMTgzLDEzIEBAIHBjaWU6IHBjaWVAMzM4MDAwMDAgew0KPiAg
CQkJY29tcGF0aWJsZSA9ICJmc2wsaW14OG1wLXBjaWUiOw0KPiAgCQkJcmVnID0gPDB4MzM4MDAw
MDAgMHg0MDAwMDA+LCA8MHgxZmYwMDAwMCAweDgwMDAwPjsNCj4gIAkJCXJlZy1uYW1lcyA9ICJk
YmkiLCAiY29uZmlnIjsNCj4gKwkJCWNsb2NrcyA9IDwmY2xrIElNWDhNUF9DTEtfSFNJT19ST09U
PiwNCj4gKwkJCQkgPCZjbGsgSU1YOE1QX0NMS19QQ0lFX1JPT1Q+LA0KPiArCQkJCSA8JmNsayBJ
TVg4TVBfQ0xLX0hTSU9fQVhJPjsNCj4gKwkJCWNsb2NrLW5hbWVzID0gInBjaWUiLCAicGNpZV9h
dXgiLCAicGNpZV9idXMiOw0KPiArCQkJYXNzaWduZWQtY2xvY2tzID0gPCZjbGsgSU1YOE1QX0NM
S19QQ0lFX0FVWD47DQo+ICsJCQlhc3NpZ25lZC1jbG9jay1yYXRlcyA9IDwxMDAwMDAwMD47DQo+
ICsJCQlhc3NpZ25lZC1jbG9jay1wYXJlbnRzID0gPCZjbGsgSU1YOE1QX1NZU19QTEwyXzUwTT47
DQo+ICAJCQkjYWRkcmVzcy1jZWxscyA9IDwzPjsNCj4gIAkJCSNzaXplLWNlbGxzID0gPDI+Ow0K
PiAgCQkJZGV2aWNlX3R5cGUgPSAicGNpIjsNCj4gLS0NCj4gMi4zMC4yDQoNCg==

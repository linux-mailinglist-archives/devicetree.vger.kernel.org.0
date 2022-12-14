Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0271D64C518
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 09:30:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237746AbiLNIaj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 03:30:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237569AbiLNIaV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 03:30:21 -0500
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (mail-am7eur03on2048.outbound.protection.outlook.com [40.107.105.48])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1EB61EEC6
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 00:30:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q2dvE3ENsbxtup6F6rJUJtsZZbMfUaE7n2/tT0BYnTNCLBeBMARlgc4Ldgg3XN6sHZiMQRx62lvQyIAhjHLzPJJblM1eb9a5wjIRkctNCe8lRpHR5lCRiY58lZspABDHtDFcJZAZlyr9s/0VLjRyyndC5i6sCrzdwfsuO2QdaWVW8nblIztJ3mAc0Cq2rvfJlHCGhU9U4YyFAn5zEp2fbWwREzKnv28L22v4sujwhCdpPQ0Ew3pTVwOvTydDA6FkUe70hI5TugaH4UeLpcXb4m74pa8hQJj2NRORGxfIzIZJotptiJ82ArfTFuRvYxSaqoCxF8DqIN1Suxku/9aiqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OoWOs2yALXlH/3ihm1nDIAdYHZYiZl7h9CcK+H6gZoU=;
 b=hJgDR48pmxtGpY9+Bxar9tJjswiJRo0KOW9wwVkDj31ySrd6p0caSRt51grV75GloLc9ebNJWud10nBmNAgaBIJW7SddykjtOhHStLifJBuk4DKKawWGsY1lx+zlV9unYLj1z1glLKhoT3KnO3//e6b4Z790HieFylgiYlr99jDoB7/FJBMnmQDuJhWcY38LXTHHaB+fAleqoDGtZSm1PVNxWfWkVEYAzrxqH0RgvC2P2Cm2tF7YWBVKDtW1sdFNWf5i00knuEMUPb1YaaqI4ScP5EPEznPOPDsyQax6PqJFR8XmGAH2fqEnlxSUskj0e/rXUyBwfO9JVGui+apqxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OoWOs2yALXlH/3ihm1nDIAdYHZYiZl7h9CcK+H6gZoU=;
 b=jGTBVJwwKHfff5X28zjRBzzdeRoUTPVSEJWTsTQAcfTeWNj6FEQYsfjnoXuLn5YE3v9X0UiactmueFi7+SPUB1msQCwK2dVbLoPbRIiQTzR50l3UJqbKjBTyckIDjCqubMHSLTTU82k3uO9agIKHXCwQCSk4kFVy8fK6QtlOv7Y=
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com (2603:10a6:20b:42b::10)
 by DB9PR04MB9305.eurprd04.prod.outlook.com (2603:10a6:10:36f::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.11; Wed, 14 Dec
 2022 08:30:15 +0000
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::f135:ec2c:8528:d866]) by AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::f135:ec2c:8528:d866%8]) with mapi id 15.20.5880.019; Wed, 14 Dec 2022
 08:30:15 +0000
From:   Hongxing Zhu <hongxing.zhu@nxp.com>
To:     Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>
CC:     dl-linux-imx <linux-imx@nxp.com>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "richard.leitner@linux.dev" <richard.leitner@linux.dev>,
        "alexander.stein@ew.tq-group.com" <alexander.stein@ew.tq-group.com>,
        "patchwork-lst@pengutronix.de" <patchwork-lst@pengutronix.de>,
        "tharvey@gateworks.com" <tharvey@gateworks.com>,
        "marex@denx.de" <marex@denx.de>,
        "lukas@mntre.com" <lukas@mntre.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH 1/4] dt-bindings: soc: imx8mp-hsio-blk-ctrl: add clock
 cells
Thread-Topic: [PATCH 1/4] dt-bindings: soc: imx8mp-hsio-blk-ctrl: add clock
 cells
Thread-Index: AQHZDwwkD0j+LbMUmESP4yNQGT3qe65s37dAgAAK/YCAACN7oA==
Date:   Wed, 14 Dec 2022 08:30:15 +0000
Message-ID: <AS8PR04MB86766EBDA6168D457927277D8CE09@AS8PR04MB8676.eurprd04.prod.outlook.com>
References: <20221213160112.1900410-1-l.stach@pengutronix.de>
         <AS8PR04MB86764B14D25C555AC048223C8CE09@AS8PR04MB8676.eurprd04.prod.outlook.com>
 <b94b30174661f3d56ee535bd8e80f23e0e2a7e13.camel@toradex.com>
In-Reply-To: <b94b30174661f3d56ee535bd8e80f23e0e2a7e13.camel@toradex.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR04MB8676:EE_|DB9PR04MB9305:EE_
x-ms-office365-filtering-correlation-id: 0a5975fa-8f7f-4924-e159-08daddad6ce6
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AjDVLOG87B4cQ+nIN5qZnYP0BMTjfjuEp59wYwRK42hnY0lXoI7M8LSpIvZhOgX7KA0c8pY3pM8JGMAfs/UVbaPaaEFxqJoCUuEmn0vylqvtElaLjDHDr/93qUqSRr07fjKOmk4nEtAUGXoOWBdnblZKQKKQTC42xzhO/ztNlMmCIGi23GIbjs8h6ocMa+9XGWNMriG15eYL8Bw72LZmT46QF69ew3g+GtropoU8BD/o+VlS5syxa+W6idg2/sXxW6Mfb3ssStSdbzbrKFS9FzyPW6ydRjJoq0He9hR8w4zbJCfUHCILSwYb5iIuiauVG2hKo8liS57DXfggrWCWbDRijDqlhTuxqhUFxMikMVS4pBKnrW8Nl32HJvNAajgam1KD8CKM4FIwad4dB5BtD/wPGEhcVTEqBJymKb6LKSgfOOX3mJ73NhuCHkoTz0+JeAJ/BfrswE/3jBz5gXLAEt2zNqY0PtLUc8RSZ/tp1t6w4Ehej5x4GEbLUcsEyu4AOnLAQh7db2Bw6a67uGt+F2zjUNWA5C4aiCOAEfzxGehPL0vJtPpYcv+bYoNjR6vAhpyP/AnYH/ZblrlnDjK4Er4y8YYoBC7kaE6d7b+QEwTWsFQKyHKTJhUvVYaQNjWKz8ZG0nUkZatoaGx14kRKuuWSVGEnR97I+bx8ImJaZ894Afx+GI5taBClyC/8e++D/xKcyTQmWYFmW5C88XRuVd1Qnp5x1DTH5yo8W7CUt1mzlHrdeqlasw070Zf3Aspn
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8676.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(346002)(396003)(376002)(366004)(136003)(451199015)(26005)(478600001)(966005)(186003)(53546011)(7696005)(6506007)(54906003)(316002)(110136005)(86362001)(45080400002)(122000001)(38070700005)(55016003)(38100700002)(9686003)(33656002)(83380400001)(71200400001)(66446008)(44832011)(52536014)(8936002)(41300700001)(2906002)(4001150100001)(5660300002)(7416002)(66476007)(66556008)(4326008)(8676002)(64756008)(76116006)(66946007)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OC9wRFpzVU1YVnByY0FZcXBOZmdnb2FSMjYrU1RRZFRrQXROSVg5ZEdVMjZX?=
 =?utf-8?B?S2NHeVRXMWFQRHRYWDNHakNCZDg1dEYvRzBnL0VzYTNzYk8zczQyUk0xcTZ6?=
 =?utf-8?B?WGMyeXBIY3BMTG4xWU9oZ0dsZFMxYjIzN3g4VzROdWZVTGFnZ01iUThEdkJV?=
 =?utf-8?B?amhETmRWOVNjYjJZU3h4OS96eXUzMjlOdy9CSTRnUGIvcXZsd2JCRFdkYXE1?=
 =?utf-8?B?SWExdVJCSm1SUDEvL1RyQ0Q1b1pYalRhNUJaSVJhUWlVSVdCNURWM1VXMjc3?=
 =?utf-8?B?NXF0cFVacUZKSUx1MTV5RWRQNkkzWFkyYXgvclRKLy9OMG5WRnkwWmEydk1v?=
 =?utf-8?B?djNmL0FTTzBNaEJFYlluQ3l2Tm1FV2xWbHNTTkg1ZDlzRURYQUxiczhFeWtO?=
 =?utf-8?B?YnZRU1lTMzh2RnVDbGJCMkRDdy81cWJ5ZUMvZlh5MDlKeVdwSWZIWXNtNm54?=
 =?utf-8?B?dkpFbUVqTTRGRFkwRjN3Z1hzSVFxbm53UWNhNTdKVzhGQVF6dm1QL1NUL2Jj?=
 =?utf-8?B?VzJXSE5OeDhsRjJTSG5nSXpoV0RybUdUQnhyYkZia01zMkhkTnlSMU5OSy91?=
 =?utf-8?B?aUxxV1FCTnhQcjQrUzl5YTQ0WkRBTW43SXpQaVZiRlZLSEJLd2tkVktxMWhZ?=
 =?utf-8?B?akRPUVlpTDZ3bG9WSnArblR0ZE4xWlU0TlNHU3JjWk5pMitaYU0wTW9LdHFr?=
 =?utf-8?B?ZmNkOGt2VmREOWlSU2p1M1N5Rk9BdTdMSWVCc05KUEl3U3dUcG5YUVNYeldL?=
 =?utf-8?B?VFZ5WHlRN0s5WHZNWXlUK29CSFp2UWtvZU1jS3FJcEZ2L2QzQVI2WVhlNnQv?=
 =?utf-8?B?bnNnYlJERUh3SEs1QzkvNlMrYnNVdTVoRWVOdEltRVovVUt2T0pJcFQ0K3Jy?=
 =?utf-8?B?TkdSTDZUUGRCbHpHUlpXNHJ1SGtzSEJJRUZiMWk1WTVjaWp0bzZaZHV5TXk5?=
 =?utf-8?B?NmFKQ2N2U1VjYkJ0blk1RWtndkl4bnpJaFU2Tk96bWhacCsyNFRiNnlsWkVt?=
 =?utf-8?B?QWxVV2g1KzUvc0xRYm1wbXdrb013eEU2Tzdpc25MY1RlNHUzWDFYTDVaZ3Fu?=
 =?utf-8?B?MGxMaEJ3NGd2UU9HWk91akhMT2hwWEZpQUhZWlFBMDJFQnBpbWlPbCtEL2R3?=
 =?utf-8?B?WnhPdXZTckU1OGYraThQYUR5dmVZRDkxUklEQ1dPUGhJYStrdnBQRkdGU3Fw?=
 =?utf-8?B?TTlrRXJhbmJlWVVNR1RjQjFDQ2pxcVIzeVRNR294QWZrWkdVQXYvSFVPcFYz?=
 =?utf-8?B?RFE4bnRKYWcxd3ZqYmJ2SGh2NzExTWwxK2JpMFdWQXFuSlY3eEorY1ppTXpz?=
 =?utf-8?B?RG84TXUxQzcwb2pVUnpEQVBnSzBEbG9ML2ZZWjJmVk9Xd0VrWXF6WTFUem16?=
 =?utf-8?B?QUdwbUt4cnFsRXo4a1FlSklFRWIrbDFzajI5aEZvSndkSUJhQnFwVEdwZTIr?=
 =?utf-8?B?ZU92c3FxWFVtM1VHWnJhTEhZbDZvRG5Yc3kzc1BEeXBONjl2MG8ybDVkZjgx?=
 =?utf-8?B?d3lwWnp6engyV2grRlpFMzZYWEtGcDdZRDIvckk2YlBjOFhzSjIyQnEwT3lK?=
 =?utf-8?B?cGFSNkhMTkVLYWNWQ1JyOXhwRmNVQVdHWUFsM3J1dm1wUGJkZzZlTi9HY1o5?=
 =?utf-8?B?b0RpUThYUk5oS3ovRmZFVU9WdVYzSFREZGhpNm9PeGxPbEZKbkFtRS83QXZD?=
 =?utf-8?B?QXl0dzE0cDRpRk1nTTlVZTdIMGY2MEs3UVg2Y2VScTRlTktSMDZ6Y0JZUTJj?=
 =?utf-8?B?RXZpbFBCWlJrUFFPR0F6WUVURlR5U2xJb3JKUWw4eEpQZmlJTHVlWjVaSWlz?=
 =?utf-8?B?R3JKSE4rT0VFYkRrd0xYTDBuQVVBZHNKV1gzcXBtQ2xrd3dNSmw4aWNhaTAx?=
 =?utf-8?B?YnA2VTNPSlpjTVRUV3R0c2svNXBvZGJuK1NWblBvNmorTmYxTVNQQkZRZStX?=
 =?utf-8?B?YjZoYkQyNkFwd0FXWGFyT2c2MGlGZjlPQ1BMa2NWSXA4ZmZjbEZocUZkZTln?=
 =?utf-8?B?dHZuUHJhS0IreXRIemNQWE85WXg2aTJTbzdtK1p2MXlkK2FKNlorWTVjSUgz?=
 =?utf-8?B?cXIxWmhlck9KakVJcXhUL1NySVM5MjYzNzAvdjZLR3FwSDZZeTNuUWxBTHlB?=
 =?utf-8?Q?tRS3eIZZoeg6W4BoRqDfNsrc7?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8676.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a5975fa-8f7f-4924-e159-08daddad6ce6
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2022 08:30:15.2028
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O/8ILTreyfXnt2MeMHJj+LMTASGkwcqBw0KuHGqdrBQFU7p9JbK6u2JKm8d5YijFdQqgsOzrPHA/GqVKuTvDBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB9305
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBNYXJjZWwgWmlzd2lsZXIgPG1h
cmNlbC56aXN3aWxlckB0b3JhZGV4LmNvbT4NCj4gU2VudDogMjAyMuW5tDEy5pyIMTTml6UgMTQ6
MjINCj4gVG86IGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU7IGtyenlzenRvZi5rb3psb3dza2krZHRA
bGluYXJvLm9yZzsgSG9uZ3hpbmcgWmh1DQo+IDxob25neGluZy56aHVAbnhwLmNvbT47IHJvYmgr
ZHRAa2VybmVsLm9yZzsgc2hhd25ndW9Aa2VybmVsLm9yZw0KPiBDYzogZGwtbGludXgtaW14IDxs
aW51eC1pbXhAbnhwLmNvbT47IGtlcm5lbEBwZW5ndXRyb25peC5kZTsNCj4gcmljaGFyZC5sZWl0
bmVyQGxpbnV4LmRldjsgYWxleGFuZGVyLnN0ZWluQGV3LnRxLWdyb3VwLmNvbTsNCj4gcGF0Y2h3
b3JrLWxzdEBwZW5ndXRyb25peC5kZTsgdGhhcnZleUBnYXRld29ya3MuY29tOyBtYXJleEBkZW54
LmRlOw0KPiBsdWthc0BtbnRyZS5jb207IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnOw0KPiBs
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcNCj4gU3ViamVjdDogUmU6IFtQQVRD
SCAxLzRdIGR0LWJpbmRpbmdzOiBzb2M6IGlteDhtcC1oc2lvLWJsay1jdHJsOiBhZGQgY2xvY2sg
Y2VsbHMNCj4gDQo+IE9uIFdlZCwgMjAyMi0xMi0xNCBhdCAwNTo1MSArMDAwMCwgSG9uZ3hpbmcg
Wmh1IHdyb3RlOg0KPiA+IEhpIEx1Y2FzOg0KPiA+IFRoYW5rcyBhIGxvdCBmb3IgeW91ciBoZWxw
IGFib3V0IHRoaXMgc2VyaWVzLg0KPiA+DQo+ID4gU2hvdWxkIHRoZSBjbG9ja3Mgb2YgdGhlIHBj
aWVfcGh5IHNob3VsZCBiZSBjaGFuZ2VkIGFzIGJlbG93IHdoZW4NCj4gPiBpbnRlcm5hbA0KPiA+
IMKgUExMIGlzIHVzZWQgYXMgUENJZSByZWZlcmVuY2UgY2xvY2sgb24gaS5NWDhNUCBFVksgYm9h
cmQ/DQo+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1wLWV2ay5k
dHMNCj4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXAtZXZrLmR0
cw0KPiA+IEBAIC0zNzAsNyArMzcwLDcgQEAgJmkyYzUgew0KPiA+DQo+ID4gwqAmcGNpZV9waHkg
ew0KPiA+IMKgwqDCoMKgwqDCoMKgIGZzbCxyZWZjbGstcGFkLW1vZGUgPSA8SU1YOF9QQ0lFX1JF
RkNMS19QQURfSU5QVVQ+Ow0KPiA+IC3CoMKgwqDCoMKgwqAgY2xvY2tzID0gPCZwY2llMF9yZWZj
bGs+Ow0KPiA+ICvCoMKgwqDCoMKgwqAgY2xvY2tzID0gPCZoc2lvX2Jsa19jdHJsPjsNCj4gDQo+
IFllcywgZXhhY3RseS4gU2VlIGUuZy4gYWxzbyBbMV0uIEJ1dCBkb24ndCBmb3JnZXQgdG8gYWxz
byBjaGFuZ2UgdGhlDQo+IGZzbCxyZWZjbGstcGFkLW1vZGUgdG8gSU1YOF9QQ0lFX1JFRkNMS19Q
QURfT1VUUFVUICg7LXApLg0KPiANCkdvdCB0aGF0Lg0KVGhhbmtzIGZvciB5b3VyIHJlbWluZGVy
Lg0KDQpCZXN0IFJlZ2FyZHMNClJpY2hhcmQgWmh1DQoNCj4gWzFdDQo+IGh0dHBzOi8vZXVyMDEu
c2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRwcyUzQSUyRiUyRmxvcmUu
a2VyDQo+IG5lbC5vcmclMkZhbGwlMkYyMDIyMTIxNDA2MTM1NC4xNzQwNzItMS1tYXJjZWwlNDB6
aXN3aWxlci5jb20lMkYmYW0NCj4gcDtkYXRhPTA1JTdDMDElN0Nob25neGluZy56aHUlNDBueHAu
Y29tJTdDYWNjN2MxNDcxOGZlNDUwMjhjMjgwOA0KPiBkYWRkOWI4YWU3JTdDNjg2ZWExZDNiYzJi
NGM2ZmE5MmNkOTljNWMzMDE2MzUlN0MwJTdDMCU3QzYzODA2DQo+IDU5NTczNjExNDE2MTAlN0NV
bmtub3duJTdDVFdGcGJHWnNiM2Q4ZXlKV0lqb2lNQzR3TGpBd01EQWlMQw0KPiBKUUlqb2lWMmx1
TXpJaUxDSkJUaUk2SWsxaGFXd2lMQ0pYVkNJNk1uMCUzRCU3QzMwMDAlN0MlN0MlN0MmYW0NCj4g
cDtzZGF0YT1qSzd0JTJCazZFWlJTOG9xSHpSenNIUiUyRkltTTJSR1lScDdkSXdjOXBYMmZxRSUz
RCZhbXA7DQo+IHJlc2VydmVkPTANCj4gDQo+ID4gwqDCoMKgwqDCoMKgwqAgY2xvY2stbmFtZXMg
PSAicmVmIjsNCj4gPiDCoMKgwqDCoMKgwqDCoCBzdGF0dXMgPSAib2theSI7DQo+ID4gwqB9Ow0K
PiA+DQo+ID4gQmVzdCBSZWdhcmRzDQo+ID4gUmljaGFyZCBaaHUNCj4gPg0KPiA+ID4gLS0tLS1P
cmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+IEZyb206IEx1Y2FzIFN0YWNoIDxsLnN0YWNoQHBl
bmd1dHJvbml4LmRlPg0KPiA+ID4gU2VudDogMjAyMuW5tDEy5pyIMTTml6UgMDowMQ0KPiA+ID4g
VG86IFJvYiBIZXJyaW5nIDxyb2JoK2R0QGtlcm5lbC5vcmc+OyBLcnp5c3p0b2YgS296bG93c2tp
DQo+ID4gPiA8a3J6eXN6dG9mLmtvemxvd3NraStkdEBsaW5hcm8ub3JnPjsgU2hhd24gR3VvDQo+
ID4gPiA8c2hhd25ndW9Aa2VybmVsLm9yZz47IEhvbmd4aW5nIFpodSA8aG9uZ3hpbmcuemh1QG54
cC5jb20+DQo+ID4gPiBDYzogZGwtbGludXgtaW14IDxsaW51eC1pbXhAbnhwLmNvbT47IFBlbmd1
dHJvbml4IEtlcm5lbCBUZWFtDQo+ID4gPiA8a2VybmVsQHBlbmd1dHJvbml4LmRlPjsgTWFyY2Vs
IFppc3dpbGVyDQo+ID4gPiA8bWFyY2VsLnppc3dpbGVyQHRvcmFkZXguY29tPjsgbWFyZXhAZGVu
eC5kZTsNCj4gdGhhcnZleUBnYXRld29ya3MuY29tOw0KPiA+ID4gYWxleGFuZGVyLnN0ZWluQGV3
LnRxLWdyb3VwLmNvbTsgcmljaGFyZC5sZWl0bmVyQGxpbnV4LmRldjsNCj4gPiA+IGx1a2FzQG1u
dHJlLmNvbTsgcGF0Y2h3b3JrLWxzdEBwZW5ndXRyb25peC5kZTsNCj4gPiA+IGRldmljZXRyZWVA
dmdlci5rZXJuZWwub3JnOyBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcNCj4g
PiA+IFN1YmplY3Q6IFtQQVRDSCAxLzRdIGR0LWJpbmRpbmdzOiBzb2M6IGlteDhtcC1oc2lvLWJs
ay1jdHJsOiBhZGQNCj4gPiA+IGNsb2NrIGNlbGxzDQo+ID4gPg0KPiA+ID4gVGhlIEhTSU8gYmxr
LWN0cmwgaGFzIGEgaW50ZXJuYWwgUExMLCB3aGljaCBjYW4gYmUgdXNlZCBhcyBhDQo+ID4gPiBy
ZWZlcmVuY2UgY2xvY2sgZm9yIHRoZSBQQ0llIFBIWS4gQWRkIGNsb2NrLWNlbGxzIHRvIHRoZSBi
aW5kaW5nIHRvDQo+ID4gPiBhbGxvdyB0aGUgZHJpdmVyIHRvIGV4cG9zZSB0aGlzIFBMTC4NCj4g
PiA+DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBTdGFjaCA8bC5zdGFjaEBwZW5ndXRyb25p
eC5kZT4NCj4gPiA+IC0tLQ0KPiA+ID4gwqAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9zb2MvaW14
L2ZzbCxpbXg4bXAtaHNpby1ibGstY3RybC55YW1sIHwgNA0KPiA+ID4gKysrKw0KPiA+ID4gwqAx
IGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspDQo+ID4gPg0KPiA+ID4gZGlmZiAtLWdpdA0K
PiA+ID4gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc29jL2lteC9mc2wsaW14
OG1wLWhzaW8tYmxrLWN0cmwNCj4gPiA+IC55YW1sDQo+ID4gPiBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9zb2MvaW14L2ZzbCxpbXg4bXAtaHNpby1ibGstY3RybA0KPiA+ID4g
LnlhbWwgaW5kZXggYzI5MTgxYTk3NDViLi4xY2M3YzJiZGYyYmIgMTAwNjQ0DQo+ID4gPiAtLS0N
Cj4gPiA+IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy9pbXgvZnNsLGlt
eDhtcC1oc2lvLWJsay1jdHJsDQo+ID4gPiAueWFtbA0KPiA+ID4gKysrIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy9pbXgvZnNsLGlteDhtcC1oc2lvLWJsay0NCj4gPiA+
ICsrKyBjdHJsDQo+ID4gPiArKysgLnlhbWwNCj4gPiA+IEBAIC0zOSw2ICszOSw5IEBAIHByb3Bl
cnRpZXM6DQo+ID4gPiDCoMKgwqDCoMKgwqAgLSBjb25zdDogcGNpZQ0KPiA+ID4gwqDCoMKgwqDC
oMKgIC0gY29uc3Q6IHBjaWUtcGh5DQo+ID4gPg0KPiA+ID4gK8KgICcjY2xvY2stY2VsbHMnOg0K
PiA+ID4gK8KgwqDCoCBjb25zdDogMQ0KPiA+ID4gKw0KPiA+ID4gwqDCoCBjbG9ja3M6DQo+ID4g
PiDCoMKgwqDCoCBtaW5JdGVtczogMg0KPiA+ID4gwqDCoMKgwqAgbWF4SXRlbXM6IDINCj4gPiA+
IEBAIC04NSw0ICs4OCw1IEBAIGV4YW1wbGVzOg0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoCBwb3dl
ci1kb21haW4tbmFtZXMgPSAiYnVzIiwgInVzYiIsICJ1c2ItcGh5MSIsDQo+ID4gPiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJ1c2It
cGh5MiIsICJwY2llIiwNCj4gInBjaWUtcGh5IjsNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqAgI3Bv
d2VyLWRvbWFpbi1jZWxscyA9IDwxPjsNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoCAjY2xvY2stY2Vs
bHMgPSA8MD47DQo+ID4gPiDCoMKgwqDCoCB9Ow0KPiA+ID4gLS0NCj4gPiA+IDIuMzAuMg0K

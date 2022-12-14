Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A510D64C398
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 06:51:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229454AbiLNFvi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 00:51:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229446AbiLNFvh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 00:51:37 -0500
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-vi1eur04on2075.outbound.protection.outlook.com [40.107.8.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E027A1FF8B
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 21:51:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b/ADGr4vV2DWyVwJ5IKwmIko6v3yr5zPkFRQWwaf4WLkBl5yScgRdiqOozmOk9KaIaFF/wTlj0UGWJrw6U4sGI0Or6R9VkEQK5+2Uv3lPL64KaRUkpK8m6tEUc4Kl43kl8GUIyXlcgHsnbEObg3QNj3PCmpivg3c8S0aGjyaYxNN7Vh24v5K24WReLMv0uw0m/CoRrM4i8/ordHsgqYdMy3ebaDJJHvN1/HvG0ZL0g7mGkoUB9garCIwhlgXOSWK8IeYSEQYcRsLzKWOp2sl9p7ZCEJBSoQx6qc1Xmoy2pqo2eUktt4KbLKM2NL13hpbkfmGbEJ9WN+obAX3FgfIzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kWo/yiEoPfJWDithXy7brObhfi6aMUixrPdN1xEOPxk=;
 b=bhUiimLvWJMQWDGdLatGIoQcMkh9lAVqS1Jei+QOUeJpfPiOxFkUUrzgD4ZOKdd3NpaJGaeUGFvCxTtIf2MUHpjJYYOgzx21NoD0hY9iN1hGfycqktv4zZxGGFEyLyZ+GmmUrl3IITTgKwZP4U5nQ+xeYEHbm2d+GCd9nVNzNKy9hFhWVF30kSZDzIfZvVFvcNvXQy4smC69hXddwQKoWwmagxRV0IkcDYZnBGUpYg46rWf3gURyt3W1jtMmW1OVgn4EG5T3K6decVm18ASV+DPBohzgFy4V0GTcfuVIFvgwuX1WAxuSDSPcXFPPu9EZ1y2/hFVAxkaZiYlhm/uocg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kWo/yiEoPfJWDithXy7brObhfi6aMUixrPdN1xEOPxk=;
 b=ASRddpITHQRxMIaYHTf4lzI6tT9EOdYO1DpIvx6DJQJPQuAqcY0pRSINw5zy5Uyplx31/6OxAzuKhl6h3zn8tH4ZLumOyA/t/vjJXHPVPK8nvTCDbH7+rqxv39Nba4IAsDsMqFTjbLxhaCaR1zBFYKO1yESAualamM7uAtku9Bk=
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com (2603:10a6:20b:42b::10)
 by DB9PR04MB9377.eurprd04.prod.outlook.com (2603:10a6:10:36b::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Wed, 14 Dec
 2022 05:51:32 +0000
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::f135:ec2c:8528:d866]) by AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::f135:ec2c:8528:d866%8]) with mapi id 15.20.5880.019; Wed, 14 Dec 2022
 05:51:32 +0000
From:   Hongxing Zhu <hongxing.zhu@nxp.com>
To:     Lucas Stach <l.stach@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>
CC:     dl-linux-imx <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        "marex@denx.de" <marex@denx.de>,
        "tharvey@gateworks.com" <tharvey@gateworks.com>,
        "alexander.stein@ew.tq-group.com" <alexander.stein@ew.tq-group.com>,
        "richard.leitner@linux.dev" <richard.leitner@linux.dev>,
        "lukas@mntre.com" <lukas@mntre.com>,
        "patchwork-lst@pengutronix.de" <patchwork-lst@pengutronix.de>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH 1/4] dt-bindings: soc: imx8mp-hsio-blk-ctrl: add clock
 cells
Thread-Topic: [PATCH 1/4] dt-bindings: soc: imx8mp-hsio-blk-ctrl: add clock
 cells
Thread-Index: AQHZDwwkD0j+LbMUmESP4yNQGT3qe65s37dA
Date:   Wed, 14 Dec 2022 05:51:32 +0000
Message-ID: <AS8PR04MB86764B14D25C555AC048223C8CE09@AS8PR04MB8676.eurprd04.prod.outlook.com>
References: <20221213160112.1900410-1-l.stach@pengutronix.de>
In-Reply-To: <20221213160112.1900410-1-l.stach@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR04MB8676:EE_|DB9PR04MB9377:EE_
x-ms-office365-filtering-correlation-id: 1c144a94-bed9-416c-212a-08dadd9740c7
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9H9t3mwQt8Nft8zjklN/eRMlApUZGkb/QnFOzhakKGrszPyVZXBb1xRUTC7NNpeT6UdK7ei6W4MFRSqyHvl2EaJ/vqIUJydWuGI/1r/Mzm/OAtp4olCf2Wnw7uhOhT3OYR2bTP7BuUXLfRZGL0Bns9JT3E/nLvz52l6zPG4kv1RZPnfrar8F0g57UG0WKX+Zyw/92Ei5p7H0z2QSCwqX2Edq67Ld/iAlkGoIe3i+X8ZwzxeiXg5JDsmAN8mLJ17rdgsK9W9HRpDEpzUkDm8Sm1pp915dXBaTzVfu15NLsMkWUMBzFaTc2Jm3Uhw+g/pNAWxcIKAKaA5sI5m6nBkwNYswj8eq0HtLwggU9/JelYu6LuFclthNmP+CrTzxQhA+yZybaZoxYcBkw+Qu+60GjAPIJYPXlqhgVJ+Vmnov75gwF1WD+LAXHdruPc74xNoCRh4+S7c5nh/cvoEONUGUcIMFFlziJtB8cyeHlr2INRafb9zAsnCGX1++eFeI656HLVyQvskbNHZCvIgj9xtOIwY2VToqBOncHhMC9aEjtPOv6epFiLIpbNscgh73b8YrmR4BlYPDqgHQOPC6gBxsT8mbmc4v0rI6MqXTTEQPFE+0bZp4SNGmrk4ptziZk7ocmzo0qsmC/HTR6Oth2SdKkNZehs90DgrtNlGzStzHoS7/8t+QpfgdtHbkSd5s58VKErOwAdT+VG7ChblS021/cVLi7J5NJS0lmkn6lqwJ2yk=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8676.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(396003)(366004)(39860400002)(346002)(136003)(451199015)(7416002)(8936002)(9686003)(52536014)(2906002)(44832011)(33656002)(54906003)(316002)(186003)(110136005)(55016003)(38100700002)(122000001)(83380400001)(478600001)(26005)(6506007)(86362001)(71200400001)(53546011)(7696005)(41300700001)(8676002)(64756008)(66946007)(66446008)(76116006)(66556008)(38070700005)(66476007)(4326008)(5660300002)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?gb2312?B?Qkp4N2hDb2cwdWZTV1FoQi9MYzA1UUUzdm5POWkwZERMWVB2MlNRRXRQdmM5?=
 =?gb2312?B?UERwL01NSGpIOFdtMVMyMHdPTWVRWjZSYWg3THl4cFNlQ1J1UndBR2N0Yk1n?=
 =?gb2312?B?Z0xTdi9OMy9NNk1nRXRuOGVxZzlLVldDUVBWY29JT1JXejMrd2FOeVJwSjJK?=
 =?gb2312?B?Z0NIbzNOdEpmMWsvWFYveDVwNnRRYkpWMk9ONUszbUtoQ0kxYWExUk1UVThX?=
 =?gb2312?B?Z3plYk9ZOVVmYUtUZXg1V1k2Y08zMmh3Y2xmeTh2VEo5ZGdlRXBibzVFVG9z?=
 =?gb2312?B?UWdMeHVrMXVlRStwYnljZzdlWHQrUi8waFpXbHpZdjNOTlNTb3B2RDNMSVNy?=
 =?gb2312?B?Ri9Gb2lCaE4wSnpQRVkrSGMwUm8za21MRVovTVA4OG55dWczdE5haldlUG0v?=
 =?gb2312?B?K29aQ3l1S2NTQ2hSZndGU0N1S2RVMXZQcnRBdVZNanE4a3pzYnZnRFhRWEha?=
 =?gb2312?B?c1EyalpCeVhFbFdpRmdhbFFsbW5FdmVBNy9Gbk5UajlyeEFSenJUUEVEenp5?=
 =?gb2312?B?T0V6Z0lDMG0veXhRQXRKZWZwa3lTT3pveUsrOC9ZSkRJYjFNcjI5ajk3NHpw?=
 =?gb2312?B?RGEwUzA2ZlY0b081OE9kNy84ck8xcHZ5eG9EMHB2ZTBQbmlSdUZnM29VblRn?=
 =?gb2312?B?endyNUlzR1I2d1I1QXdiZXlnMEpXTjIxdTdCSjl0UkRjYXByekYyZWZpTVdi?=
 =?gb2312?B?UDRSUWxIcnVNbm1JbTY4VmxjcFVKbW9ZNEV1SFltS2g5RFdkZmpYa3VDWEN4?=
 =?gb2312?B?a0t4b1lodUxPUUV0UXZaNGdMUFI3eTUwMVRNT05obEgrRVRWUlc3Lzd4Y2p0?=
 =?gb2312?B?dTBTc29TVVRSKzhmbWFEWis4SWJFMGp6TDQzSWwrdDJLaTNBeldqamtvN1JQ?=
 =?gb2312?B?aUFPY0JWLzRDWG5FdDRjYzU3UDZ6c0tkOTFnZEt4WEtvWGpkeGsvYlpyN1lR?=
 =?gb2312?B?NW1QeHVzUldmMmY1TWhrTytEUmhPYmxUbFdHSllnQjNycGJxSHlBL1JXRzlD?=
 =?gb2312?B?eGxjbGFVOFNEcDlYYWVOWW01cU1CbHRKUFo0c2lRUkhDMEI0bEhhM2NoMjZq?=
 =?gb2312?B?dWFJL29Qbm05TnZZbUhXa29vS3NTYVBuaUtVYjdjL01Ycjc3Qkp2Z2ViRDd3?=
 =?gb2312?B?Slc3dmVaOElRTExSVUpYZ1Z3R2ZWdDh0YXlVbXJHYmRaRUpTVUE1cEhKaGdO?=
 =?gb2312?B?Z2RqOUMrYmNGYVgyaDNqKzZ5TU1ueTRaM0sxbUxBRU9Cb3J5OTFjYWRmakZx?=
 =?gb2312?B?MGkrQjJONHdTY2lTSldOMUowb0t0VlVLTGZJRW9sU1QvQWg1QU1TZ2pFL1dO?=
 =?gb2312?B?VHI5dk4zK2VLRzlYOFZVT2RrVDVxTGFWc3c5OHhGUDRwQmtqRnM1M3dSdHp2?=
 =?gb2312?B?MVlhZ2lLcWtPOXFTdGd3NU83THRwOXhaWjFtR3lNNHBURWJtUXNuZVFucXZO?=
 =?gb2312?B?ZHRxOUVUOERUbUJhd2F1Rzd1ZlBYamJycms1SDJrMDhuNUIxKzFIWmhWYk9i?=
 =?gb2312?B?QWwxL1BSUGk1OUdiSTVrTStvKzdKODJFVXJlTVpsV2tLLzdzTEs1ckxaWW5n?=
 =?gb2312?B?RVBDY3h3M2h6R0RBaGtSQU1zSXB6Y1BiaW0rZ3NBT2xVYnl0Q2JPUWM5WmFM?=
 =?gb2312?B?TXV4R2dieVZmVXpURUlKUFU4NmVCZFljWklTSTRFcCt1SUVwRElHMXluNGM2?=
 =?gb2312?B?MHNRMDNMOElyM0tHU29HNkNtNDVYQTRkQXU0NmRGalFNSHZTN2xvVXZLbEFn?=
 =?gb2312?B?RUZBdXkveEZmbWJJemxZc2p0ekN2QzhJWmNDU0g5eXBuVEY1dkc1U3JYeEJZ?=
 =?gb2312?B?bFJ3cjJZVnlMeVZtL0tEQ3ZhS3lBc3huQ3Q2cjAxbmE1eENuQThhQmhZT3Rp?=
 =?gb2312?B?dWZ4MjR0WWxyRkRKYnRDQnJHb3hUU0pFUVY5NzZFSlZqb2VqVDZuT2sxQTh1?=
 =?gb2312?B?V3VnQ1FSTVVDbCtsUnRTN3BJQVB3MkdMWXhSVEVQSDM1dW9haU9EdmthaU0v?=
 =?gb2312?B?QTlVQWQrbGlJMEVuSHpjZ3VON0JrMk5yMWJaMG85SWVXcW9CbWR2eHdVMDF0?=
 =?gb2312?B?MUpnNjRFZ245V0p2UkN2RDFWK0RNWlcyMFdVTzRDWmJIWUlWK3ZBaWRVaEFl?=
 =?gb2312?Q?j354PHwdbEVTapkY0NIBPBGul?=
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8676.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c144a94-bed9-416c-212a-08dadd9740c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2022 05:51:32.2469
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fK2vxRIJrc2LL+shIw+3Jn4/OXHAeHmL9NdOeYKQzo6JJ/RKbd3lzI+3ESwFxPdkbwUCBgFIcKkluIjmteoYUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB9377
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SGkgTHVjYXM6DQpUaGFua3MgYSBsb3QgZm9yIHlvdXIgaGVscCBhYm91dCB0aGlzIHNlcmllcy4N
Cg0KU2hvdWxkIHRoZSBjbG9ja3Mgb2YgdGhlIHBjaWVfcGh5IHNob3VsZCBiZSBjaGFuZ2VkIGFz
IGJlbG93IHdoZW4gaW50ZXJuYWwNCiBQTEwgaXMgdXNlZCBhcyBQQ0llIHJlZmVyZW5jZSBjbG9j
ayBvbiBpLk1YOE1QIEVWSyBib2FyZD8NCi0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNj
YWxlL2lteDhtcC1ldmsuZHRzDQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9p
bXg4bXAtZXZrLmR0cw0KQEAgLTM3MCw3ICszNzAsNyBAQCAmaTJjNSB7DQoNCiAmcGNpZV9waHkg
ew0KICAgICAgICBmc2wscmVmY2xrLXBhZC1tb2RlID0gPElNWDhfUENJRV9SRUZDTEtfUEFEX0lO
UFVUPjsNCi0gICAgICAgY2xvY2tzID0gPCZwY2llMF9yZWZjbGs+Ow0KKyAgICAgICBjbG9ja3Mg
PSA8JmhzaW9fYmxrX2N0cmw+Ow0KICAgICAgICBjbG9jay1uYW1lcyA9ICJyZWYiOw0KICAgICAg
ICBzdGF0dXMgPSAib2theSI7DQogfTsNCg0KQmVzdCBSZWdhcmRzDQpSaWNoYXJkIFpodQ0KDQo+
IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEx1Y2FzIFN0YWNoIDxsLnN0YWNo
QHBlbmd1dHJvbml4LmRlPg0KPiBTZW50OiAyMDIyxOoxMtTCMTTI1SAwOjAxDQo+IFRvOiBSb2Ig
SGVycmluZyA8cm9iaCtkdEBrZXJuZWwub3JnPjsgS3J6eXN6dG9mIEtvemxvd3NraQ0KPiA8a3J6
eXN6dG9mLmtvemxvd3NraStkdEBsaW5hcm8ub3JnPjsgU2hhd24gR3VvIDxzaGF3bmd1b0BrZXJu
ZWwub3JnPjsNCj4gSG9uZ3hpbmcgWmh1IDxob25neGluZy56aHVAbnhwLmNvbT4NCj4gQ2M6IGRs
LWxpbnV4LWlteCA8bGludXgtaW14QG54cC5jb20+OyBQZW5ndXRyb25peCBLZXJuZWwgVGVhbQ0K
PiA8a2VybmVsQHBlbmd1dHJvbml4LmRlPjsgTWFyY2VsIFppc3dpbGVyIDxtYXJjZWwuemlzd2ls
ZXJAdG9yYWRleC5jb20+Ow0KPiBtYXJleEBkZW54LmRlOyB0aGFydmV5QGdhdGV3b3Jrcy5jb207
IGFsZXhhbmRlci5zdGVpbkBldy50cS1ncm91cC5jb207DQo+IHJpY2hhcmQubGVpdG5lckBsaW51
eC5kZXY7IGx1a2FzQG1udHJlLmNvbTsgcGF0Y2h3b3JrLWxzdEBwZW5ndXRyb25peC5kZTsNCj4g
ZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0ggMS80XSBkdC1iaW5kaW5nczogc29jOiBpbXg4bXAt
aHNpby1ibGstY3RybDogYWRkIGNsb2NrIGNlbGxzDQo+IA0KPiBUaGUgSFNJTyBibGstY3RybCBo
YXMgYSBpbnRlcm5hbCBQTEwsIHdoaWNoIGNhbiBiZSB1c2VkIGFzIGEgcmVmZXJlbmNlIGNsb2Nr
IGZvcg0KPiB0aGUgUENJZSBQSFkuIEFkZCBjbG9jay1jZWxscyB0byB0aGUgYmluZGluZyB0byBh
bGxvdyB0aGUgZHJpdmVyIHRvIGV4cG9zZSB0aGlzDQo+IFBMTC4NCj4gDQo+IFNpZ25lZC1vZmYt
Ynk6IEx1Y2FzIFN0YWNoIDxsLnN0YWNoQHBlbmd1dHJvbml4LmRlPg0KPiAtLS0NCj4gIC4uLi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy9pbXgvZnNsLGlteDhtcC1oc2lvLWJsay1jdHJsLnlhbWwg
fCA0ICsrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYg
LS1naXQNCj4gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc29jL2lteC9mc2ws
aW14OG1wLWhzaW8tYmxrLWN0cmwueWFtbA0KPiBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9zb2MvaW14L2ZzbCxpbXg4bXAtaHNpby1ibGstY3RybC55YW1sDQo+IGluZGV4IGMy
OTE4MWE5NzQ1Yi4uMWNjN2MyYmRmMmJiIDEwMDY0NA0KPiAtLS0NCj4gYS9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3Mvc29jL2lteC9mc2wsaW14OG1wLWhzaW8tYmxrLWN0cmwueWFt
bA0KPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc29jL2lteC9mc2ws
aW14OG1wLWhzaW8tYmxrLWN0cmwNCj4gKysrIC55YW1sDQo+IEBAIC0zOSw2ICszOSw5IEBAIHBy
b3BlcnRpZXM6DQo+ICAgICAgICAtIGNvbnN0OiBwY2llDQo+ICAgICAgICAtIGNvbnN0OiBwY2ll
LXBoeQ0KPiANCj4gKyAgJyNjbG9jay1jZWxscyc6DQo+ICsgICAgY29uc3Q6IDENCj4gKw0KPiAg
ICBjbG9ja3M6DQo+ICAgICAgbWluSXRlbXM6IDINCj4gICAgICBtYXhJdGVtczogMg0KPiBAQCAt
ODUsNCArODgsNSBAQCBleGFtcGxlczoNCj4gICAgICAgICAgcG93ZXItZG9tYWluLW5hbWVzID0g
ImJ1cyIsICJ1c2IiLCAidXNiLXBoeTEiLA0KPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAidXNiLXBoeTIiLCAicGNpZSIsICJwY2llLXBoeSI7DQo+ICAgICAgICAgICNwb3dlci1kb21h
aW4tY2VsbHMgPSA8MT47DQo+ICsgICAgICAgICNjbG9jay1jZWxscyA9IDwwPjsNCj4gICAgICB9
Ow0KPiAtLQ0KPiAyLjMwLjINCg0K

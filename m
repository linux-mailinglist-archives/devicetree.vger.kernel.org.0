Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0013D578A53
	for <lists+devicetree@lfdr.de>; Mon, 18 Jul 2022 21:08:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235139AbiGRTIf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jul 2022 15:08:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234653AbiGRTIe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jul 2022 15:08:34 -0400
Received: from EUR02-AM5-obe.outbound.protection.outlook.com (mail-eopbgr00075.outbound.protection.outlook.com [40.107.0.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 113632FFC6
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 12:08:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lnvth0z4D5d63v51qigcN8GqcSIlwDpV9aewrAUGgJKAy+Nn5KvkdP4WQRrDMQwxaodSgsLlK+sJYmlCOxu3S1csRbjqJf+1O+SdX25iAlkfj8vARiP4e94mmnMmoa6NXFsxnWCHu/hLdiO+AEVXlRjK93HUq6Eytg03dCbG8nUHc2JyihOwTI21yIf2M6as2c8pA+tSVN4ZDBT+6FzZR5wISFMK55iR2N0cHSJzTzamj3JKIt3rwvyhv4bI4QmX9AX+W0IwBwIe8S2OuhY/SGXtXy6n0gxTIHY+Tr87PC2DI3wQ/KpSJfWAU091Cq1e7ULAKwoF4k/XWHYoR/yHeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ClDMVCdgTryTknQpfkefGbm5sCdnhglJj5CMDGJsbjg=;
 b=BvbGdNYYSMXZarJk02izOJ5iDfvM2ZQU2WweGueA0wIiUnjx7We1eYWEwxc6vpGXgClcveLrhl04wa41ZUcTFWPn5YNUES9Vxkod5VCX28YCGTFfhYsEpRtFwRo3AP36ugQMETSER3UpCQMV75WlFCDnkmUY1PwABNg4hQsVfHCleIVkAwOYK+BK6+omEn8ieVxZSNum8J64PJ9WrVjuPyb2DNh5su2LkrXzjbLZIEvPb+15vH98ruz9Z2pWAjowGg4E2N33d1GiHU1WhHXvgE006+feaO98h+yFrs0cozZAofyp9JDOiHKZcMRkAxZ3+jsvXF6wBXuiN/QGsflupQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ClDMVCdgTryTknQpfkefGbm5sCdnhglJj5CMDGJsbjg=;
 b=a/Zq9WDmMpSrpLCarQyup0sTqY+LfAcAFhAPx0hIodmRKj6/nulJAtW9+5JsWi/ATO0c48FPHacvD6jDKE+bBhZhE5t+CJmv/xJSIHYWJvXg3smvUAwqpTrNEgY7dq42yTqTqqKz3YVuAbGAJFRAp3p6FflOZRoyXfP3au2NV54=
Received: from AM9PR04MB8274.eurprd04.prod.outlook.com (2603:10a6:20b:3e8::23)
 by DB7PR04MB5307.eurprd04.prod.outlook.com (2603:10a6:10:1e::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.21; Mon, 18 Jul
 2022 19:08:28 +0000
Received: from AM9PR04MB8274.eurprd04.prod.outlook.com
 ([fe80::f46c:5b09:72eb:638c]) by AM9PR04MB8274.eurprd04.prod.outlook.com
 ([fe80::f46c:5b09:72eb:638c%5]) with mapi id 15.20.5438.023; Mon, 18 Jul 2022
 19:08:28 +0000
From:   Shenwei Wang <shenwei.wang@nxp.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Peng Fan <peng.fan@nxp.com>
CC:     dl-linux-imx <linux-imx@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: RE: [EXT] Re: [PATCH 1/3] arm64: dts: imx: add imx8dxl support
Thread-Topic: [EXT] Re: [PATCH 1/3] arm64: dts: imx: add imx8dxl support
Thread-Index: AQHYlvDbtc+ZRltIJ0aLh8309XRJHq19v/4AgAH6ysCABGBxgIAAXgJg
Date:   Mon, 18 Jul 2022 19:08:27 +0000
Message-ID: <AM9PR04MB827453674A7D832E06CAA63F898C9@AM9PR04MB8274.eurprd04.prod.outlook.com>
References: <20220713194331.95971-1-shenwei.wang@nxp.com>
 <20220713194331.95971-2-shenwei.wang@nxp.com>
 <2631b0be-76a4-98b1-04cb-c4b70f99ca93@linaro.org>
 <AM9PR04MB8274E1AE88FCD501F9DCA621898B9@AM9PR04MB8274.eurprd04.prod.outlook.com>
 <13bc292a-6043-b916-7d29-5c4784877c0b@linaro.org>
In-Reply-To: <13bc292a-6043-b916-7d29-5c4784877c0b@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e3316d53-3dec-4c7e-673d-08da68f0e591
x-ms-traffictypediagnostic: DB7PR04MB5307:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ei3W9HFdrIbQ37ftYIedrZv1mgZUfCZGeQoeKTv7EhDeeu0w4NOefOu37uu60v3GnVwys/Vdi7nFogilm8cLcChwlntMoQSUOKP0l+h3bLVV7aDWIcuzQ2mMJJaf7/7salbClDKn5CLqzNM3mScQuufkX9PCWEBFUNw6nJcZOL1B9ZadJnvSjNNp4jiG5uHuPrqiNCbaDM508xfJiNzKI3gnPHdbIfBt5M5ItY/q+QNWbXygKzG/tfkp7kYKVLJ6gt+l1Mv+HEYxvvLRE6/V6sQCEA8kNgaryPwSAovjn4ehXrTY4alnIL3nAXm/qTUNyoXXYv1IdB3teiiEM09/p+o7+Hy/3VQCoBBs40fHSDGM1cFD5Vg+r1H4+PbRwlFp8cP4bhoFQXYs9hPYsdpPQvQ04hqv8zEZeeRWll7cjE6ZObh9466U2puhu0PsgDCoS4DlBkd3FwSLu0AKRUdqXmpo1yYoyUT00inRPDxQgIVftdqQ0KL3PyodAuW6dRgbt03ePaGv6rBab6H6VV2R6vziajGZJXtFKy4cxsBlIi6MgKS9nJwdnBmnk39MFil6OF1KLLlsaa/be57BEdXfI0EYwA2mAn09TM+XZYu9vGUjHsQKZEm8FApPitAuAq73uau2UJLmTO5TC0Jvlc4wEO7FyT/l/nE4AeHa92pGaE2YSe/wEKG+6hUDIfvouWf/zRkNwc09EDEh70d92t24a3/GDxofigEtGkhvcSFdYN8W107Hx3sc3CmAEbxJDZdbW7e2yOFQuA9H7Cv1wqocrW6KhtXcPf2xErMc2kiNdd+wbeU3bqPW3V3KiElHUWHlT+upSNPijvIyWidJlFgujQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8274.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(136003)(376002)(346002)(39860400002)(366004)(396003)(38100700002)(7696005)(6506007)(38070700005)(9686003)(53546011)(71200400001)(186003)(110136005)(55236004)(26005)(122000001)(54906003)(478600001)(41300700001)(316002)(6636002)(5660300002)(33656002)(44832011)(52536014)(76116006)(66446008)(64756008)(66476007)(66946007)(8936002)(66556008)(8676002)(4326008)(86362001)(2906002)(83380400001)(55016003)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UUhyZ0l0ZkJTaTUzVWovZkF2VHJEYlhwYk1lNlBhS2ZodVFVSDc2aE5nZlRL?=
 =?utf-8?B?WnlSNmtmaTBJZk9odVY1TGY1WVhsUDU1Q3NkbFBXaTdNZ0hBdENVUnRTSHY2?=
 =?utf-8?B?OEJaVXRRQThPYXp5SngrRklzbFhuVjh5OS9CWGV4L05tdWpVUm5JaEx5NHZr?=
 =?utf-8?B?UmhKKzFLWmdPMy9CYmI4cEY2Q0dLTlJSU2grM2FveW9WQlVwLzRaQzBPbjZR?=
 =?utf-8?B?VzBMYkZXc1R5TjRSbHpGODdlZElxc25JS21maENDSU1BcVVqWTVibUVYN2Jr?=
 =?utf-8?B?SkhTQ3ZNMWJQVGJGSUtYMWlxYTdFMTU5a3UvY0FyRXArR2dPZVJIZS9KU0hN?=
 =?utf-8?B?eXYwc1VXTjFoQk02UzJISGZadDE2RzEvWmJ6Y01HcEpTb2xmZEVLSGdld05G?=
 =?utf-8?B?bGdWZ2JFTlhyVjJ4YVYwRWt1V0JKSXpKbmswQ3pWZHpoU0VZc0w4cUVITkky?=
 =?utf-8?B?dzMxVmpWaG4vZ0d3N0gyYzBYN0JMaUhwbkVPODh3bmYxUUtjTFZramNtSnJv?=
 =?utf-8?B?WUVoY0d5WXBFQmdBRHMvSFN6VkZpT3Zaa1p1aDR6UnZsTFZSTmN1cEc0dnFn?=
 =?utf-8?B?M1NHK3ZsVGpWTkN0ejFrV3g5TldnSFVNVVQ1QmNxMUU0ZFlUdWpQSnZQakh4?=
 =?utf-8?B?eTV3SjNnbmJ6RWVIcm9yemppUWg2MlpuRlM2cFdXamk3Z3hHak1jbXhiZ0I3?=
 =?utf-8?B?Vnl2d0QzNkJid1lPVWtZN21PM1pmTG5obGxIaXNEUURMaUtyUS82Q0tnNE1y?=
 =?utf-8?B?cVZYTHpoT2ZFaVBzT0h1R2ZGQjJTNmtvWVpobUlrSXEyY0kwMzJGd1dXdlRZ?=
 =?utf-8?B?cW5zbzlFMGdoRlBjcFBSVHF5b3NJSUVBV0Y2cFUzR1d3Z2YySlAvUG04MEho?=
 =?utf-8?B?ZEdiNVpGNjFGRVBFdHE5cWM3UzI4aFkrblNsZUJldzY2eDFWc0xYYm9WMDlM?=
 =?utf-8?B?ZHpHSlh6WU1XN3JyVEtRM2VrS01hQUpESmwrM2hqWFM2MTR1SnNycmFVcGU0?=
 =?utf-8?B?WTk4Zmd4b09sN0lsOWoxVjdGM0dLa0NJRlFwTGg4YkQ5V3dzSWprUU5GcEdE?=
 =?utf-8?B?ZXE1M0hlUmR3VURNNERTMXJkQTBhNzJ5ODVwVWRyRmIvMEk2dGVweXBzZjZN?=
 =?utf-8?B?RWtodWdKNXMxYzhRRHJheG0zeWtkTlltV0xhMTJ3N1lhV0taRmhBc01VcXhR?=
 =?utf-8?B?b1ZFRG42bWZrclZ2QzFJYkVwVVRxaExXVUxTZmd3NmF0Z1VYOTdaeERUVW5t?=
 =?utf-8?B?R01DVGJNMldINUpiUHh0TUpnOU5VZ3kxakxhOVZ6UnBaTFprWi91VWlLYnJ4?=
 =?utf-8?B?dFZ1UFhsbDM3d0ZOcExXOHBTbklWcjNYMk12WnhBY2Zub2krbzNyKzRPYlU2?=
 =?utf-8?B?Q3lzRDVNRFFmNHNxaHZrNlgrenVSQmc4TUZTUXZMUHFWL1l0bnF4VGFpbDNr?=
 =?utf-8?B?QmRlN1FKUElFUDcrNVJLMGNMdmVhTkcvOHJoZ2hNY1VOQ3k4dEJaWDAyV3JQ?=
 =?utf-8?B?VnNad3lSSlNBSmJBM3hBMjhsYTU2a24waFc3OGJqcFgxUTFrN1dsTW1vUEJN?=
 =?utf-8?B?NlZvR2p2ckxWMityR3gxV2ZYQXdYc0Ird0dwOFhaejRJRjBsMngrZjYyQnRj?=
 =?utf-8?B?QzBZOXUwTW5NejVLOS9UYnBIRUgrWXhhWmV3ZkxQdW1zbVpLUk1EK3BvUmFF?=
 =?utf-8?B?OVU4UmJQbWpEamhJWENXZU9HV0R3THQ1clZCdTZyT282QXhMSUtIdGZwMzZr?=
 =?utf-8?B?Y3FwZkc0bjhETit5SDQ0eWkyMWdud0RnekE0NHlhTXIrOGFxQU41M3U2RmNn?=
 =?utf-8?B?bG53eVUyeTdVMTRHVU8rRGZrSno4RmVRaHEyMkx5cWJPOUxsQkpaM0g1T2ds?=
 =?utf-8?B?dE40OVRVS09xM21LTElMQTYvVE5QZ1NYUGl3emZnbzRyNkFUbnNtUEYyR2p5?=
 =?utf-8?B?NXBpWkZIblgrMTVuRC93amozanlSQTY0MTBGbkNFVHZEZUFQWWxpdThJMll1?=
 =?utf-8?B?YUdMWGdyVlZFQzZ2d1Jkd1lDUStFTkhzM2VmWUVLTFU3YmRVMEV5MVE2VXUy?=
 =?utf-8?B?YWlTQ3B0cDJqcWVocVpwbVRwL0VKUTVDbGpGREZ3V0tYQ0tOY0pxc2hQREQ5?=
 =?utf-8?Q?zTR5LJLeQJNhK4kxt1Jc0Fm+s?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8274.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3316d53-3dec-4c7e-673d-08da68f0e591
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2022 19:08:27.8985
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i2SigDJCm0GdsYfFeFdrMl09c50RGc0+1naD0XbiLwHWsEuEVh8ZOZJcmTAWg+zW6dRI5qF9DpWKKSe6asajzw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5307
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS3J6eXN6dG9mIEtvemxv
d3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPg0KPiBTZW50OiBNb25kYXksIEp1
bHkgMTgsIDIwMjIgNzo0OCBBTQ0KPiBUbzogU2hlbndlaSBXYW5nIDxzaGVud2VpLndhbmdAbnhw
LmNvbT47IFJvYiBIZXJyaW5nDQo+IDxyb2JoK2R0QGtlcm5lbC5vcmc+OyBLcnp5c3p0b2YgS296
bG93c2tpDQo+IDxrcnp5c3p0b2Yua296bG93c2tpK2R0QGxpbmFyby5vcmc+OyBTaGF3biBHdW8g
PHNoYXduZ3VvQGtlcm5lbC5vcmc+Ow0KPiBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9u
aXguZGU+OyBQZW5ndXRyb25peCBLZXJuZWwgVGVhbQ0KPiA8a2VybmVsQHBlbmd1dHJvbml4LmRl
PjsgUGVuZyBGYW4gPHBlbmcuZmFuQG54cC5jb20+DQo+IENjOiBkbC1saW51eC1pbXggPGxpbnV4
LWlteEBueHAuY29tPg0KPiBTdWJqZWN0OiBSZTogW0VYVF0gUmU6IFtQQVRDSCAxLzNdIGFybTY0
OiBkdHM6IGlteDogYWRkIGlteDhkeGwgc3VwcG9ydA0KPiANCj4gQ2F1dGlvbjogRVhUIEVtYWls
DQo+IA0KPiBPbiAxNS8wNy8yMDIyIDIwOjA0LCBTaGVud2VpIFdhbmcgd3JvdGU6DQo+ID4gSGkg
S3J6eXN6dG9yZg0KPiA+DQo+ID4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4+IEZy
b206IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4N
Cj4gPj4gU2VudDogVGh1cnNkYXksIEp1bHkgMTQsIDIwMjIgNjo0NCBBTQ0KPiA+PiBUbzogU2hl
bndlaSBXYW5nIDxzaGVud2VpLndhbmdAbnhwLmNvbT47IFJvYiBIZXJyaW5nDQo+ID4+IDxyb2Jo
K2R0QGtlcm5lbC5vcmc+OyBLcnp5c3p0b2YgS296bG93c2tpDQo+ID4+IDxrcnp5c3p0b2Yua296
bG93c2tpK2R0QGxpbmFyby5vcmc+OyBTaGF3biBHdW8gPHNoYXduZ3VvQGtlcm5lbC5vcmc+Ow0K
PiA+PiBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+OyBQZW5ndXRyb25peCBL
ZXJuZWwgVGVhbQ0KPiA+PiA8a2VybmVsQHBlbmd1dHJvbml4LmRlPjsgUGVuZyBGYW4gPHBlbmcu
ZmFuQG54cC5jb20+DQo+ID4+IENjOiBkbC1saW51eC1pbXggPGxpbnV4LWlteEBueHAuY29tPg0K
PiA+PiBTdWJqZWN0OiBbRVhUXSBSZTogW1BBVENIIDEvM10gYXJtNjQ6IGR0czogaW14OiBhZGQg
aW14OGR4bCBzdXBwb3J0DQo+ID4+DQo+ID4+IENhdXRpb246IEVYVCBFbWFpbA0KPiA+Pg0KPiA+
Pj4gKzxkdC1iaW5kaW5ncy9maXJtd2FyZS9pbXgvcnNyYy5oPg0KPiA+Pj4gKyNpbmNsdWRlIDxk
dC1iaW5kaW5ncy9ncGlvL2dwaW8uaD4NCj4gPj4+ICsjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW50
ZXJydXB0LWNvbnRyb2xsZXIvYXJtLWdpYy5oPg0KPiA+Pj4gKyNpbmNsdWRlIDxkdC1iaW5kaW5n
cy9pbnB1dC9pbnB1dC5oPiAjaW5jbHVkZQ0KPiA+Pj4gKzxkdC1iaW5kaW5ncy9waW5jdHJsL3Bh
ZHMtaW14OGR4bC5oPg0KPiA+Pj4gKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy90aGVybWFsL3RoZXJt
YWwuaD4NCj4gPj4+ICsNCj4gPj4+ICsvIHsNCj4gPj4+ICsgICAgIGludGVycnVwdC1wYXJlbnQg
PSA8JmdpYz47DQo+ID4+PiArICAgICAjYWRkcmVzcy1jZWxscyA9IDwyPjsNCj4gPj4+ICsgICAg
ICNzaXplLWNlbGxzID0gPDI+Ow0KPiA+Pj4gKw0KPiA+Pj4gKyAgICAgYWxpYXNlcyB7DQo+ID4+
PiArICAgICAgICAgICAgIGV0aGVybmV0MCA9ICZmZWMxOw0KPiA+Pj4gKyAgICAgICAgICAgICBl
dGhlcm5ldDEgPSAmZXFvczsNCj4gPj4+ICsgICAgICAgICAgICAgZ3BpbzAgPSAmbHNpb19ncGlv
MDsNCj4gPj4+ICsgICAgICAgICAgICAgZ3BpbzEgPSAmbHNpb19ncGlvMTsNCj4gPj4+ICsgICAg
ICAgICAgICAgZ3BpbzIgPSAmbHNpb19ncGlvMjsNCj4gPj4+ICsgICAgICAgICAgICAgZ3BpbzMg
PSAmbHNpb19ncGlvMzsNCj4gPj4+ICsgICAgICAgICAgICAgZ3BpbzQgPSAmbHNpb19ncGlvNDsN
Cj4gPj4+ICsgICAgICAgICAgICAgZ3BpbzUgPSAmbHNpb19ncGlvNTsNCj4gPj4+ICsgICAgICAg
ICAgICAgZ3BpbzYgPSAmbHNpb19ncGlvNjsNCj4gPj4+ICsgICAgICAgICAgICAgZ3BpbzcgPSAm
bHNpb19ncGlvNzs+ICsgICAgICAgICBpMmMyID0gJmkyYzI7DQo+ID4+PiArICAgICAgICAgICAg
IGkyYzMgPSAmaTJjMzsNCj4gPj4NCj4gPj4gQm9hcmQgYWxpYXNlcywgbm90IFNvQy4NCj4gPg0K
PiA+IFdlIHRha2UgdGhlc2UgYXMgIHRoZSBTb0MgYWxpYXNlcyBiZWNhdXNlIHdlIHdhbnQgdG8g
aGF2ZSB0aGUgc2FtZSBhbGlhcyBmb3INCj4gdGhlIHNwZWNpZmljIElQIGluc3RhbmNlIGluZGVw
ZW5kZW50IG9mIHRoZSBib2FyZCBkZXNpZ24uIEFsbCB0aGUgaS5teCBTb0NzIHVzZQ0KPiB0aGUg
c2FtZSBydWxlLg0KPiANCj4gVUFSVCwgbW9zdCBsaWtlbHkgYWxzbyBJMkMgYW5kIFNQSSBhcmUg
Ym9hcmQgZGVzaWduIGRlcGVuZGVudC4gSnVzdCBiZWNhdXNlDQo+IGVycm9yIHdhcyBtYWRlIGlu
IHNldmVyYWwgb3RoZXIgZmlsZXMsIGl0IGlzIG5vdCBhIHJlYXNvbiB0byBtYWtlIGl0IGFnYWlu
LCBzbyB0aGUNCj4gbGFzdCBhcmd1bWVudCBpcyBpcnJlbGV2YW50Lg0KPiANCg0KVGhlIFNvQyBh
bGlhcyBoZXJlIGNhbiBnaXZlIGEgc3BlY2lmaWMgSVAgbW9kdWxlIGEgdW5pZm9ybSBkZXZpY2Ug
ZmlsZSBuYW1lIGluZGVwZW5kZW50IG9mIGJvYXJkIGRlc2lnbi4gIENhbiB5b3UgcGxlYXNlIGxl
dCBtZSBrbm93IHdoYXQgcHJvYmxlbXMgYXJlIGRpc2NvdmVyZWQgd2l0aCB0aGUgU29DIGFsaWFz
IHRha2luZyB0aGUgVUFSVCBhcyBhbiBleGFtcGxlPw0KDQpUaGFua3MNClNoZW53ZWkNCg0KDQo+
IA0KPiBCZXN0IHJlZ2FyZHMsDQo+IEtyenlzenRvZg0K

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A1ACA57A840
	for <lists+devicetree@lfdr.de>; Tue, 19 Jul 2022 22:33:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233670AbiGSUdh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jul 2022 16:33:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238532AbiGSUdg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jul 2022 16:33:36 -0400
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (mail-eopbgr150057.outbound.protection.outlook.com [40.107.15.57])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FAD4509EC
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 13:33:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xp4czz046eIYuz8mBfhVBQS8jFZXy1LeL87nYAcV0GHLhmowsiseSZ5V3QNe+htp5OghvGDM/peT809tSunfoEKtAWqYLuMQngc7doEL8jVmXS/Jiaq6iV25hszyz+v8DLhtyC9wIqZNGKx07nFjn0drcBIrdPsYAhf5cJVcZt8di5pRCZbkuleknE1ve0fqiqrI/kGOrF5DRZfX2diKPl9YpllwXzCyex5HPvc4puuBRE63vzd8JXctAUlXZG08b/pLKGDzOuqMSPMFi6FediWP63PiPtCZQe0ZnjD2Q/4V6CSWg4eKLqdwBtZPBjVm+u/bNRibmACXK2Qa49DQgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5h074zGGv+qgPejO/33/8Bk2nnCeAhT7TtwWFr4FbDg=;
 b=UXtda4yXnuFj+wDXdYswNo6bW/GZJC8i7GwZyEHO7RkFpKQ/cTSubeehlIT0db6CRkQQOAlByuwW2dUDox4AkTeaidT4wzBXLE1WTkVtafl6L0z5fgj8ESJ4Zj5Jtbziv0VlaCdr7Uw5QJyq2rAADClfkJUqSkw92JZTkUwf9Z7CRip6y9i/Yy8o0IR+V/aP5rAOqv3ZGqg4jTLkMxjM9qqOJnhcgFHuniVKMxy6poywYwNQFnD9xpvEaNauLxN8NRTSvvRYmVbg4SgrhsY/jC2HdSGhX2saN0I7F+OsJHFXWH80q/V+KS2CFnNkE/Zs6mpCccCI3qruPeueENRIUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5h074zGGv+qgPejO/33/8Bk2nnCeAhT7TtwWFr4FbDg=;
 b=lpVS3ZkWGBD2JwSPSaNGzTiN+kR40MSfSHzeVu0h8QkN2uf6WTjUNJvkJUv+OgxmpgIyjgu3zhVcNC4eZCcLKff9/4p6Hc/S586uSDJ7nVF/9IqExR4ILbXmQ483O6fuZAekfOLM1Wc5vFT/wyhT4NrAdMEbL2D7fWq1iIOOQcs=
Received: from AM9PR04MB8274.eurprd04.prod.outlook.com (2603:10a6:20b:3e8::23)
 by AM0PR04MB6803.eurprd04.prod.outlook.com (2603:10a6:208:187::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.23; Tue, 19 Jul
 2022 20:33:33 +0000
Received: from AM9PR04MB8274.eurprd04.prod.outlook.com
 ([fe80::f46c:5b09:72eb:638c]) by AM9PR04MB8274.eurprd04.prod.outlook.com
 ([fe80::f46c:5b09:72eb:638c%4]) with mapi id 15.20.5438.025; Tue, 19 Jul 2022
 20:33:33 +0000
From:   Shenwei Wang <shenwei.wang@nxp.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Peng Fan <peng.fan@nxp.com>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        dl-linux-imx <linux-imx@nxp.com>
Subject: RE: [EXT] Re: [PATCH RESEND v3 3/3] arm64: dts: imx: add imx8dxl
 support
Thread-Topic: [EXT] Re: [PATCH RESEND v3 3/3] arm64: dts: imx: add imx8dxl
 support
Thread-Index: AQHYmKBxPZCj+ntgHkKeXvZY+rvraa2EG4WAgAA3ClCAAO/oAIAA060wgAAQ1YCAAAEgkA==
Date:   Tue, 19 Jul 2022 20:33:33 +0000
Message-ID: <AM9PR04MB82743D98F111A5DE3DC7832E898F9@AM9PR04MB8274.eurprd04.prod.outlook.com>
References: <20220715231241.346778-1-shenwei.wang@nxp.com>
 <20220715231241.346778-4-shenwei.wang@nxp.com>
 <bdaa01d4-4d0d-5c22-4918-637225177140@linaro.org>
 <AM9PR04MB8274425DC0C302488354F31C898C9@AM9PR04MB8274.eurprd04.prod.outlook.com>
 <26c7b6e9-ee4b-9112-d975-2523940c57c8@linaro.org>
 <AM9PR04MB82743C17EADBFB1CD970BFB0898F9@AM9PR04MB8274.eurprd04.prod.outlook.com>
 <1bc74bc7-22e8-3fef-b4e2-a5570cfa93c2@linaro.org>
In-Reply-To: <1bc74bc7-22e8-3fef-b4e2-a5570cfa93c2@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0d98a33f-21e8-4d91-31de-08da69c5f32a
x-ms-traffictypediagnostic: AM0PR04MB6803:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rnBFooW5dF+15Td7l1KXYaNcPjwJ/lRGpEQhcJswINTPCSM4v5t4KdDIKpVQncqioA7cCk06wWdA+Mmcz8vzXf3DN6y439tKy/mQLF268mdxgt7E1f4C7Lr5zS1bbL+8gNBkfY0hlDP5dQ2xk3pJLXaiZd8Vm/Hzy9pRVXHBXI+SWhvNEsly0vE2EFJLSMaBBH/110pSOfDzIQhMnDH0OTjpQiJV6j4CU5T9ThK/QaGsshFFOU+VVowYc3crtu5Xuuno2bNYV6LsxCouFwji6W8d4dYGpqP+ZyilHv5jq76tiscjzq3Q+Cb/xISX90RZz1uPk+d2NUEdgIVbq40j8oM2TS3MnGvFtkYka/MxW9Rh0TdMKWRv3VJYAEuxGIcz4/32Nu5lIf5L37Vl4l+QxBXH+O54rTY4jua67uc8fJqgQYrUKigJ02Zbsm6vEvyFTRPvNMxKQ1di+/c+DnfjG4i0hvrJxlglHVCkC0cyPF0wG8Ca593tBGTeAMI2AxaWDhY3e0xqddmsOZUfy6Xn13BFhn0EuzqeCyjgDkk/Nicv3wOdGAIRet3V7Dx+1s9F1HWROAXnM+1cUBDN3PPqZvrqgSRCWU1MoY0DXLbRBGBavyyT7NxjCJfmebVK9EAqxq4GGSz1WmVF8R/Vex1S+rR0rM+HKzdchQ6xY/gorwN5QtYWNEiAlOa5jqCNiOb4f3/xTBatefX3R7Mm072XFRCFAHqNjq0hzDf01LtoPe2AD8TOQnFlEOasl8u09feHhTZTJD4nrdyvUGhnWHwKC0n5kH04hAOm+O8sDGxOEHnQgGSXgmW132FRnkhrNm812A/S3OUPyhGvGJfi3pXKaQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8274.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(366004)(376002)(346002)(39860400002)(136003)(6636002)(7696005)(55016003)(478600001)(86362001)(122000001)(38070700005)(316002)(41300700001)(6506007)(54906003)(33656002)(71200400001)(83380400001)(26005)(110136005)(9686003)(53546011)(2906002)(55236004)(64756008)(66446008)(5660300002)(66946007)(8936002)(66476007)(8676002)(66556008)(44832011)(76116006)(4326008)(186003)(52536014)(38100700002)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MVBXK0NqWWtpaFNha1hWR3dtbHVDd0lEeXExUWNGRGMvNGFLaEpiYTRmYXFC?=
 =?utf-8?B?bnpiN1lFNWs3SzRvbi90cGdXYVBwdzJIbjhRZWltL0hEU0IwNTBhdW5QbFkv?=
 =?utf-8?B?OEdwYTdFc0NrTVM5WlFoQzgzYWIrRml2MExGdG0vVkt2Sm1OQkJvcmg4bmRE?=
 =?utf-8?B?TG12cGlUWVQxWWdkV2lTc1ZwY1BqdzVqRjc1N2pnYTYzb1hncjNmZWJvNDRi?=
 =?utf-8?B?NHAwRFNGRXV4Z0FRNnB4UXBxSjU1RksxQWZJN2FUbm04S1JQZ2grNFVYZkdJ?=
 =?utf-8?B?MFdTZDRGOHl0V2E1Q1p5bkYvVU9wT0tuRTdPbHA1aFJHZ0U4VXZHOFVxeDl4?=
 =?utf-8?B?RUdKVTVaQUFNN2kvV2UxaXFGNWV5aWRVdTcwMUtmVUYzSytzNWdsd3FUTW0z?=
 =?utf-8?B?K2trVnA2UlJpRzBLQ20wU2pTTlAxM0FzN1pCS090a0hyc2N1ckdiQUlqWFhn?=
 =?utf-8?B?WmRwZUt4M0JMcWZrY1lEdlh1NnZrdW9hUVV5VW1OL1NUZ3BZeUVnYW9LUU5V?=
 =?utf-8?B?N2kwNVMvYkdWUGhBd3hxVm1pYjBocHI3dU9SUUc4SUFxUkYyenI2c2JqSDFy?=
 =?utf-8?B?VGNpV2picDFDQ3V3VTFuUHBiNjB0MmhOamFUNEEwekpHQUg4UVIxOStQdEpQ?=
 =?utf-8?B?UnMyd0szYTljdGo3am5PWW54Z2tPYnpLRDZveUlESTg1MHgvdHBNN1FOOWJU?=
 =?utf-8?B?YTdGOWRUS0UvNExadkZGTXl1bEg3ait0aUEyaE9HTFpYYm5JazlpVkRiTUEx?=
 =?utf-8?B?VGgyaHBHVU1qNlpCZWV0SCt0SGhEV0lBMGRic1FCTmhtVm5KUUFtWEtnckJa?=
 =?utf-8?B?OHl4TjN3OHZMa0xhbGtHampBUzZERDg0VktQcUxYdStrWm1kcUpwa1BMQUll?=
 =?utf-8?B?L0JJbGlJRXlQQVBSQ0IxMGZXTVV0elRzRUNublB0d05Ncko4b1Z6UUdLbEc5?=
 =?utf-8?B?QUdYVlRIcnN3bUpTcWcxWC9lTUFFUFAxaTNhUlhDQlFwRXJNbTMvUGdkRFpv?=
 =?utf-8?B?LytCNHd1NTJMTElZU2N3c3ZoWDVFTFpqUDlsN3FOL0R0TW96eGF1N3p5NEt5?=
 =?utf-8?B?d21OVW5EVlcwWFBpZDhsWVJySFRHWGJYQmdWMENkWTJ5NjJWbHlsQ3llMVN5?=
 =?utf-8?B?MGZ2OENhSlRXT0NLelVSV29PVVFJYisrREJlZ2RVTkE2WDdwNE1ZRXNkTUlo?=
 =?utf-8?B?ZHVnbjR1bEZ2bjdpQ05YeS8zUnBlMUxEb3NGV282TUFEVTdQL1AxcmVWeWFk?=
 =?utf-8?B?Z1NqU3p6QTBmOFdCRHpZVVE1cFJqcDZKQjZwN25WeHR3S3lkWjFibVpQdFg1?=
 =?utf-8?B?cU9UZUpmWGZ6bGJRVzY3T3ZvOTFsdDhyZ21sLzg0VFExaUlmQUlOSU1Ebmdy?=
 =?utf-8?B?dGlBM3pWVmppTDBwbnhEcTQxSkNFRDhwOXRxb1pMd1dkbGlzQVBOZzNtZzZM?=
 =?utf-8?B?V1ZKbDBOTmwxUmN3cnNLYm9seGlFRTIxbTZrc1UxSm9nRk9pclVkdy9xam83?=
 =?utf-8?B?RzJHY1lITVJLaWJLMlVBaFUyM2loc21jS1hDZ1JCSC9ISEVKQ3h5dFllbVZX?=
 =?utf-8?B?c0w2SDkxRDc0Rk5jbERtZHZMUFdIQVliTGtya3YzN3R4T2JEcDNuQ1lTdUJ4?=
 =?utf-8?B?TzduRWZlSWJRN01PWkNGa3BOSDhJRmR2Mm9pYmt2amJDcTRSVk5Gd3hsc2RV?=
 =?utf-8?B?V3BWRkpFVzJqTUlRWlBFSDBBMjNDeUt2OGZWc0phK1MxY01lenZlQWE3cWNM?=
 =?utf-8?B?ZlNFMjViQmNZWnpUbkdmM1lJNWhFWGdnTlNNY3NpT3kzSGI2WGJWMWp2cVZV?=
 =?utf-8?B?S3BwU045b0FldFFZdnZpR2VvMTNFZU56dDQ5R25sbitBK1A2N2syTmExd1Rt?=
 =?utf-8?B?U28wbER1RnAxcDZHQytlbXlVWWw0a0JXVmlvcUUvSk4rWE96Nm5LTVo0VmZq?=
 =?utf-8?B?QkNyYmhNK1Q4cU9CYzU4aW9JNjJxOXNlY1BmNFBYYjZYQmtBcWNqNU5XUE84?=
 =?utf-8?B?d1U5eVQ0cWhpQ1NGRlR2RENmcjlEaUN3Ym9iKzBVOEFUeVNZZ1FvU2ZjRzND?=
 =?utf-8?B?ZmVrdU8wWlhZWTRNeXlzQUtWdE9Za0MzaVNUSWpJVGRnbUxCNXdzNmJscUJN?=
 =?utf-8?Q?H0N/U3NC0QbfjK4vVwuCcLBPj?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8274.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d98a33f-21e8-4d91-31de-08da69c5f32a
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2022 20:33:33.5136
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wS5RdZ3AGM5BQNfrKG2ZENVw23yC+NZ7AAIY2I57XiGqWZ5zBZ9JIHkQmzfR0INAf+3wJBI3cZLAJbLAhGL4Ow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6803
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
d3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPg0KPiBTZW50OiBUdWVzZGF5LCBK
dWx5IDE5LCAyMDIyIDM6MTQgUE0NCj4gVG86IFNoZW53ZWkgV2FuZyA8c2hlbndlaS53YW5nQG54
cC5jb20+OyBSb2IgSGVycmluZw0KPiA8cm9iaCtkdEBrZXJuZWwub3JnPjsgS3J6eXN6dG9mIEtv
emxvd3NraQ0KPiA8a3J6eXN6dG9mLmtvemxvd3NraStkdEBsaW5hcm8ub3JnPjsgU2hhd24gR3Vv
IDxzaGF3bmd1b0BrZXJuZWwub3JnPjsNCj4gU2FzY2hhIEhhdWVyIDxzLmhhdWVyQHBlbmd1dHJv
bml4LmRlPjsgUGVuZ3V0cm9uaXggS2VybmVsIFRlYW0NCj4gPGtlcm5lbEBwZW5ndXRyb25peC5k
ZT47IFBlbmcgRmFuIDxwZW5nLmZhbkBueHAuY29tPg0KPiBDYzogZGV2aWNldHJlZUB2Z2VyLmtl
cm5lbC5vcmc7IGRsLWxpbnV4LWlteCA8bGludXgtaW14QG54cC5jb20+DQo+IFN1YmplY3Q6IFJl
OiBbRVhUXSBSZTogW1BBVENIIFJFU0VORCB2MyAzLzNdIGFybTY0OiBkdHM6IGlteDogYWRkIGlt
eDhkeGwNCj4gc3VwcG9ydA0KPiANCj4gQ2F1dGlvbjogRVhUIEVtYWlsDQo+IA0KPiBPbiAxOS8w
Ny8yMDIyIDIxOjI4LCBTaGVud2VpIFdhbmcgd3JvdGU6DQo+ID4+Pj4NCj4gPj4+PiBEaWRuJ3Qg
eW91IGlnbm9yZSAoYWdhaW4pIGNvbW1lbnRzPw0KPiA+Pj4NCj4gPj4+IFRoZSBTb0MgcmVxdWly
ZXMgdHdvIENyeXN0YWwgY2xvY2sgaW5wdXRzLCBvbmUgaXMgMjRNSHogYW5kIHRoZSBvdGhlciBp
cw0KPiAzMktIei4NCj4gPj4gVGhlIGJvYXJkIGRlc2lnbiBkb2Vzbid0IGhhdmUgYW4gb3B0aW9u
IHRvIGNoYW5nZSB0aGUgdmFsdWVzLiBUaGF0J3MNCj4gPj4gd2h5IHdlIGtlZXAgdGhlIG5vZGVz
IGhlcmUuDQo+ID4+DQo+ID4+IEl0J3MgdGhlIHNhbWUgZXZlcnl3aGVyZSwgbm90aGluZyBuZXcg
aGVyZS4gV2hlcmUgaXMgdGhlIGNsb2NrPyBPbiB0aGUNCj4gYm9hcmQuDQo+ID4+IE5vdCBpbiB0
aGUgU29jLiBGb3IgY29udmVuaWVuY2UgY2xvY2sgY291bGQgYmUgaGVyZSwgYnV0IGF0IGxlYXN0
IHRoZQ0KPiA+PiBmcmVxdWVuY3kgYnkgY29udmVudGlvbiBpcyBwdXQgdG8gdGhlIGJvYXJkLg0K
PiA+DQo+ID4gSXQgaXMgYSBsaXR0bGUgZGlmZmVyZW50IGhlcmUuIEFsdGhvdWdoIHRoZSBYVEFM
IGl0c2VsZiBpcyBvbiB0aGUgYm9hcmQsIGEgdXNlciBoYXMNCj4gbm8gY2hvaWNlIGhlcmUgdG8g
c2VsZWN0IHRoZSBjbG9jayBmcmVxdWVuY3kuIEl0IG11c3QgdXNlIHRoZSAyNE1IeiBhbmQgMzJL
SHoNCj4gWFRBTHMsIGFuZCB0aGUgdHdvIGZyZXF1ZW5jaWVzIGNhbid0IGJlIGNoYW5nZWQuIFRo
aXMgaXMgdGhlIG1hbmRhdG9yeQ0KPiByZXF1aXJlbWVudC4NCj4gDQo+IEkgdW5kZXJzdGFuZCwg
aXQncyB0aGUgc2FtZSBvbiBtYW55IG90aGVyIGJvYXJkcy4gU3RpbGwgdGhlIGNsb2NrIGlzIG5v
dCBwYXJ0IG9mDQo+IFNvQyBkZXNpZ24uIEl0IGlzIGFsd2F5cyBvbiB0aGUgYm9hcmQuIGlNWCBp
cyBub3Qgc3BlY2lhbCBoZXJlLCBzbyB3aHkgd291bGQgeW91DQo+IGV4cGVjdCBoZXJlIGFuIGV4
Y2VwdGlvbj8NCg0KQWN0dWFsbHkgeW91IGNhbm5vdCBzaW1wbHkgc2F5IHRoYXQgdGhlIGNsb2Nr
IGlzIG5vdCBwYXJ0IG9mIFNvQyBkZXNpZ24sIGJ1dCB0aGlzIGlzIG5vdCBpbXBvcnRhbnQuIEFz
IGxvbmcgYXMgaXQgaXMgYSByZWFzb25hYmxlIGFuZCBjb25zaXN0ZW50IHJ1bGUsIHdlIGp1c3Qg
Zm9sbG93IGl0LiBIb3dldmVyLCBpdCBzZWVtcyB0aGUgcnVsZSBpcyBjaGFuZ2luZyBhZ2FpbiBo
ZXJlPyBUaGlzIGlzIGp1c3QgZm9sbG93aW5nIHdoYXQgdGhlIGN1cnJlbnQgdXBzdHJlYW1pbmcg
aW1wbGVtZW50YXRpb24gZG9lcyBsaWtlIGlNWDhRWFAsIGlNWDhNTSwgLi4uIGV0Yy4gQXJlIHlv
dSB0YWtpbmcgaU1YOERYTCBhcyBhIHNwZWNpYWwgb25lPyBPciBhcmUgd2UgZ29pbmcgdG8gY2hh
bmdlIGFsbCB0aGUgY3VycmVudCBpbXBsZW1lbnRhdGlvbnMgdG8gZm9sbG93IHRoaXMgcnVsZT8g
DQoNClRoYW5rcywNClNoZW53ZWkNCg0KPiANCj4gDQo+IEJlc3QgcmVnYXJkcywNCj4gS3J6eXN6
dG9mDQo=

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9DB1758CD89
	for <lists+devicetree@lfdr.de>; Mon,  8 Aug 2022 20:17:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244265AbiHHSRN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Aug 2022 14:17:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244264AbiHHSQ5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Aug 2022 14:16:57 -0400
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2072.outbound.protection.outlook.com [40.107.22.72])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 719C81929D
        for <devicetree@vger.kernel.org>; Mon,  8 Aug 2022 11:16:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MZiKz9h/fKB0F9K8B+qyLloUjC1LCNA00WdQysaVPufQ2dGE+12ajyOVVjJsJmJ8q/9+balNcTWw8hstEvLUuECkkKcVE8pxCm9ZGyfgrSIFzsUsf4SM1z5Q328teP5SX7Gq8FHqYrLH/SRaL0XZfnzTdDv86CABUiy/EEG6AyvgKw+APln9KG0ZHNpNiZlVSU72Eu/LgkSNji859fmkaCbpk8/XGIWSHguyoSqZwk5Ub7rBP8PUn6rfiqyIoEDibjg4ncCrh/qaGGLNRX7QLBK7uZY+XZq2hBvfwP30wzXJTVv7hT55dHZUZdTmUlJIMHGZPKFv0Ozgt4ezrJr92A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M0InHvZdLUI7+EBZBFhCLmf79+2W+jV721Ptw3lLfz4=;
 b=CM3EASG668BbzbUMvUg0luF2Fr/oBuQsvn6YR+pzbHCtGnp85Jchv/WY+w9pM37JDL/eTFHk6Obb9/ZUJKxN8n4l00vHbotH8SXR8Ng705u8EZCHvVB9A7vZ0XGcmO5b4OjyflhcKP3Y7UDKcc8sbpz9FtwdHUvnKaSYL18Ow205+fXKMBYXA5P7yOvzyfhNGIQoTc2VQOTr1DKzalTRWSuFfAsxmqIzO5q8z9Heyfd1VZsjXbA42TU2FTqEMQxorv/w+7iJ5x6e9sEoO4XPLeQVsncjh43FAlislhPiUGEMkh1o7up1Rk4eObl6FRl/pvuidlNSB964zYUUyodzqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M0InHvZdLUI7+EBZBFhCLmf79+2W+jV721Ptw3lLfz4=;
 b=kIUVSTzn3aaaSm0iH/9fE069l0P6/ei9VOC/pKCBM7goIeKznhDRuUGYKK5jxND94W/zmLgmUMh+iJk/xHTmQvxGmWcISAMVLTPMIJSGGEkUVkDCMoRTM3AOiOdLSlWO5p5SYDUJKKQRufth5kc67kpGlaaoEo7SvmMqYj0DuXA=
Received: from AM9PR04MB8274.eurprd04.prod.outlook.com (2603:10a6:20b:3e8::23)
 by DB8PR04MB5819.eurprd04.prod.outlook.com (2603:10a6:10:b1::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.20; Mon, 8 Aug
 2022 18:16:18 +0000
Received: from AM9PR04MB8274.eurprd04.prod.outlook.com
 ([fe80::747c:397f:a003:dbca]) by AM9PR04MB8274.eurprd04.prod.outlook.com
 ([fe80::747c:397f:a003:dbca%5]) with mapi id 15.20.5504.020; Mon, 8 Aug 2022
 18:16:18 +0000
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
Subject: RE: [EXT] Re: [PATCH v5 3/3] arm64: dts: imx: add imx8dxl support
Thread-Topic: [EXT] Re: [PATCH v5 3/3] arm64: dts: imx: add imx8dxl support
Thread-Index: AQHYpeGDYpiKQ0qZsEaieFkUBk0ctq2ggR7ggAQHwACAAM2G8A==
Date:   Mon, 8 Aug 2022 18:16:18 +0000
Message-ID: <AM9PR04MB827446CA7B2887414A5C641C89639@AM9PR04MB8274.eurprd04.prod.outlook.com>
References: <20220801200121.672619-1-shenwei.wang@nxp.com>
 <20220801200121.672619-4-shenwei.wang@nxp.com>
 <DB9PR04MB8284548EFC5EBBA826B55F34899E9@DB9PR04MB8284.eurprd04.prod.outlook.com>
 <5d7f44e5-9114-65b6-af7d-4bac75c62a46@linaro.org>
In-Reply-To: <5d7f44e5-9114-65b6-af7d-4bac75c62a46@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b9350275-9863-4353-ddb2-08da796a16e3
x-ms-traffictypediagnostic: DB8PR04MB5819:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mjxAKYVvvXSzvRQrgQTYlamw/h9z3eVDSZqrx9bRYDixbtFxLyUTK9f1iT9eg1szPyi4qp5RKVS6hGgm0HNx60cFwE0i7Pz4lQcMD9i8MNtbww536757wjxW6fyqkZ58yVW1fSLs5srTdxATPSMa09FM94k+Cj1jozwOIOxZ6jTp9t3JlLDWrHdRvYYUXPtLViIQHpnh2i+fjuxh8tEzlvSq+e6OCyK2ROFPZppF7dVBI9YXdIGA8ImiECLWoPfuTwou9xsColeO4+myRvp91j5DHxGkyUOL9/yNGmpu/Uft2s9/HGYhHOAQzQMP+qzi+r5EyDcPamZ1zW+/ZpUrKx8TMFPqNv/OiFdkb0+NKbjsYbwn2yiakLEq4tNfRvK+pEhmt4561nFEVEpWjSa6uYI/N5Ry6dL4l2kdJkxIbcT0e2u/MCfvxJQccJSGSy/XKKBj1Rtq5YkMoSewYwWOenqWGndYVcUk0b5fyxLkTHjWq3tztSSjjyeDLSQ4YvuyfmpCfkNv7LWiXGUDqkDhB99Tc4O/dTvJ8CHoemxBVKU6mc+2vxJTAPGtEfHmanOXlKQy+jEoWsft2X/Jya8Loqzt1YMLEXpQWu0uX3lCUxu3kFUr1AbkdBPrgMbXDVh5e7sWlPVHeODSrsI+N34cUoeE7UiM4e8foADbxE7bDEDX8ZiCEFL3lUOk6rClZaE8kXauATyXaK8uIsNo4xL2ShAXERyninMlCFPzZZYelmTTJFMAUibUtsdA1sk1pRgWcHXh8RheE1M4hJwVhqPbU4Hoz7Vk/gdGBurVNPxRiivwNINbIw2A9rylQySw3KGeHw1xvPtzZ2Hk3tS77UaIaQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8274.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(346002)(366004)(396003)(39860400002)(136003)(376002)(55016003)(26005)(478600001)(53546011)(9686003)(55236004)(6506007)(41300700001)(7696005)(83380400001)(8936002)(66946007)(64756008)(66556008)(66476007)(66446008)(76116006)(186003)(2906002)(44832011)(5660300002)(52536014)(4326008)(71200400001)(8676002)(6636002)(110136005)(316002)(54906003)(122000001)(38100700002)(33656002)(86362001)(38070700005)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZklnRGptOGVIa2RRWW1vRWFRTm9nWU5PUkpRS0pEalZ4TGFQRDZqUDBTanpz?=
 =?utf-8?B?ZUErMkdDUGJSMml5dExvbERXYU4xdjdRTWo0SlJDZ3BGUDRNZE90M293QmJ6?=
 =?utf-8?B?aTZIUTVSVCtqQ25qZkR1c3R5K0Jza0hheTNteFVDb05PZlRiOHNKMTBDdkQx?=
 =?utf-8?B?VlZZanRBd3MwL3ZKOG4rOVFLZGZFNnVWVUUvS2NnMkZoUzVWOVRDT3p4YzhV?=
 =?utf-8?B?UDl6UW1QRktFS0JpVVhpV1NXYW0zNTdKd2ZETC8xKzgxRXZ6eFcwSmpBYlVI?=
 =?utf-8?B?TGdqRG1SNVp5K2dhK3RpaVFhalVkbHBCaE0xTWo0TjBXeE9vV3ZSVGV5R3ox?=
 =?utf-8?B?VFQzMjVwdkRkTW9TNmRzU3BqSm5tZWVQNjdXL1BMN3poWVFyMjZET2NmQUxK?=
 =?utf-8?B?Y2tkN2wvZ3lBMk0xSjUzTTRNTmRnVEkxbUlBaU9yWHk3Tm10WXd6RlBPUFRo?=
 =?utf-8?B?elhjVGkyVHNJZGQ4WXhjVFRTV3NPeXlSRXVjUCtZN2Nlb3B0NTY4bGZOTGFy?=
 =?utf-8?B?WXZCc0grbm5MdU5USk1PaXdVNkh4emdaYnN5WWl6QUxxZzd0enE0Rm8zZFgy?=
 =?utf-8?B?Y0tmZDNiYlhJNnY4dUxSeEVKUXUyWE9kR2JHUHpEaWtVR3JEN0JHSGhzVVFm?=
 =?utf-8?B?cjFDSWRhZEFsQUh4azR3Uk8zSmRpMDY3UmwvcmVyZmlTY01sSFJPQ1FOcEVD?=
 =?utf-8?B?QmtwNS9yL2FoR1UyT2kxOVg0SmVoc1RvWjNSQWVxWlp5KzE2Y1NOdmticlNN?=
 =?utf-8?B?YlNJZG1EMXVObWx5dGJtRy9aaWk3bUJ5Q2U1b2N4YjhqMnI4cFRRQXBkYnJi?=
 =?utf-8?B?YSs1amZPUnlYV1lSVUI0SU9HREtoQngyZW93cE5BMzEvU21mTWF4TVRPcVJa?=
 =?utf-8?B?SmpIZ2tUMzNHVktvdTNzNjZocllXU2pobDF6T3hhRkhoU09WZWVTL1JSdHhr?=
 =?utf-8?B?ZlRMajdnRFM0bThpZkRvWDJqaDFwcVJQMzc5WGt2VFI2MDZQaVB5bkx2U2tm?=
 =?utf-8?B?cjBkbVhZc1NqYysrd0gyRWJCNCtMM0w1eGZ6S1J2Y0d4SVpBZ2JYR0hZSWtF?=
 =?utf-8?B?bHpFei9EdnF0Y3V0MWxBK0hpekxyL2p5ZjdZMW5oVWJWcWtLekZwSFdqTGxB?=
 =?utf-8?B?NnlFQVhlcDRUNWdvVlJrVEUwMjRrL1prak13a1pEZkRyQ1VhNVMxTVlrY0cy?=
 =?utf-8?B?TVNUZ1RoZjFZME5Vdzg0N3dWODY5RXpJeERTYm9HODFrd2srNFhZdzFLMTQy?=
 =?utf-8?B?UjFjWU04NFVmbnIzdldKN0U2WDkxaHZ0cTZIMmQzdXlrTjErckNiVXVkZVFW?=
 =?utf-8?B?N3JOU1M2R05YQ3VTbFRFNmU3NmJXQUpuRkZrekRXSmZWY3VmS0cyKzJ5TTk4?=
 =?utf-8?B?eFliOG91M1RpYWtmZGVQS1hYWTBSblE0SW9MRmZVRGJGblZCS0dHbEY4UWJt?=
 =?utf-8?B?MDZPTE5ad1RabjVhY3Q4Vm9TQkVnKzFHaUVkZ2lPcXhYRTJlMTkreFR1RlBO?=
 =?utf-8?B?NjNhN1oxZ1VtYXhBc3FUWGh1ODl3RjdOdk0zS2Y3TTF1OWZjWW5wQ2J6Vy9x?=
 =?utf-8?B?WDFHenpuQWRFTmQ0dzl5Z1RFUm10SFhYTGhTaU5sTjhqenlGRVl6NDdYQnhN?=
 =?utf-8?B?NXlLKzFMalovNHRZZEFPWmI5UjZKK0tHV2kwbUpJQjRlMjNkZDhNRG05Q0ZW?=
 =?utf-8?B?dE5XVks0a2N5Yzg1dWZpNFBTM255V3F6Q0pJYk5rbWZ2QUx5WnFHblkzNkpr?=
 =?utf-8?B?YlRnSHVVNVZQU2N0dXZWZGI0WDFmUjR0NThWREdic1JPNnZGU1llTTVDRUtK?=
 =?utf-8?B?WWt6blcxQmVzWkFrNytwbUNkQWFDZUJIbldRNEh0UXNjelNDSkljZUo2R0xa?=
 =?utf-8?B?THV1QjkvT0p5a09uS0JLbnhmQWZNTStRRWZ4cTF4SUxLeWsxLzdOV3lxcldm?=
 =?utf-8?B?L3FDOFU1RXNESDA0b0xwQ1JKUnp4NTg2Rm1TWUpCWmFUTEVWMTNEUkxyeU96?=
 =?utf-8?B?Q0c0dUlOQkJPUitWWXN1b2pQNHUvTThOYWNZdkEwTGJkVEFBc2Jva2VWNTB6?=
 =?utf-8?B?ckt6eWhpaXQvZHBVWmdxbUlrQmFKMGhmaHZuUlZVaDV3WGh0RkNtMzc0ZEZw?=
 =?utf-8?Q?jJqiRyuBgsuMpufZL7Owpzyrn?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8274.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b9350275-9863-4353-ddb2-08da796a16e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2022 18:16:18.3248
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Pqw5GzzR2T9CxvIrWovYRtNt8P+JmpEuYl0/Sr9ac1b8Yk3Dy6DJtnpI4Jb2EirNXP4OjZvMGjFcTAkArSZASg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB5819
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS3J6eXN6dG9mIEtvemxv
d3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPg0KPiBTZW50OiBNb25kYXksIEF1
Z3VzdCA4LCAyMDIyIDEyOjQ3IEFNDQo+IFRvOiBTaGVud2VpIFdhbmcgPHNoZW53ZWkud2FuZ0Bu
eHAuY29tPjsgUm9iIEhlcnJpbmcNCj4gPHJvYmgrZHRAa2VybmVsLm9yZz47IEtyenlzenRvZiBL
b3psb3dza2kNCj4gPGtyenlzenRvZi5rb3psb3dza2krZHRAbGluYXJvLm9yZz47IFNoYXduIEd1
byA8c2hhd25ndW9Aa2VybmVsLm9yZz47DQo+IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRy
b25peC5kZT47IFBlbmd1dHJvbml4IEtlcm5lbCBUZWFtDQo+IDxrZXJuZWxAcGVuZ3V0cm9uaXgu
ZGU+OyBQZW5nIEZhbiA8cGVuZy5mYW5AbnhwLmNvbT4NCj4gQ2M6IGRldmljZXRyZWVAdmdlci5r
ZXJuZWwub3JnOyBkbC1saW51eC1pbXggPGxpbnV4LWlteEBueHAuY29tPg0KPiBTdWJqZWN0OiBb
RVhUXSBSZTogW1BBVENIIHY1IDMvM10gYXJtNjQ6IGR0czogaW14OiBhZGQgaW14OGR4bCBzdXBw
b3J0DQo+IA0KPiBDYXV0aW9uOiBFWFQgRW1haWwNCj4gDQo+IE9uIDA1LzA4LzIwMjIgMTg6MjIs
IFNoZW53ZWkgV2FuZyB3cm90ZToNCj4gPiBBIGtpbmQgcGluZy4g8J+Yig0KPiA+DQo+ID4NCj4g
DQo+IFRvIHdob20/IFdoYXQgZG8geW91IG5lZWQgZnJvbSBtZT8NCj4gDQoNClRoaXMgdGhlIHZl
cnNpb24gNSBvZiB0aGUgc2VyaWVzIG9mIHBhdGNoZXMsIGFuZCBzaG91bGQgaGF2ZSBhZGRyZXNz
ZWQgYWxsIHRob3NlIGNvbW1lbnRzIGZyb20geW91IGFuZCBvdGhlciByZXZpZXdlcnMuIFRoZSBv
dGhlciB0d28gY29tbWl0cyB3ZXJlIGFja2VkIGJ5IHlvdSBhbmQgUm9iLiBUaGlzIG9uZSBoYXNu
J3QgZ290dGVuIGFueSBmZWVkYmFjayBvciBhY2sgc28gZmFyLiAgSSB3b3VsZCBncmVhdGx5IGFw
cHJlY2lhdGUgaXQgaWYgeW91IG9yIFJvYiBjb3VsZCBhY2sgaXQgb3IgbGV0IG1lIGtub3cgd2hl
cmUgdG8gaW1wcm92ZS4NCg0KVGhhbmtzLA0KU2hlbndlaSANCg0KPiBSZWdhcmRzLA0KPiA+IFNo
ZW53ZWkNCj4gPg0KPiA+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+PiBGcm9tOiBT
aGVud2VpIFdhbmcgPHNoZW53ZWkud2FuZ0BueHAuY29tPg0KPiA+PiBTZW50OiBNb25kYXksIEF1
Z3VzdCAxLCAyMDIyIDM6MDEgUE0NCj4gPj4gVG86IFJvYiBIZXJyaW5nIDxyb2JoK2R0QGtlcm5l
bC5vcmc+OyBLcnp5c3p0b2YgS296bG93c2tpDQo+ID4+IDxrcnp5c3p0b2Yua296bG93c2tpK2R0
QGxpbmFyby5vcmc+OyBTaGF3biBHdW8gPHNoYXduZ3VvQGtlcm5lbC5vcmc+Ow0KPiA+PiBTYXNj
aGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+OyBQZW5ndXRyb25peCBLZXJuZWwgVGVh
bQ0KPiA+PiA8a2VybmVsQHBlbmd1dHJvbml4LmRlPjsgUGVuZyBGYW4gPHBlbmcuZmFuQG54cC5j
b20+DQo+ID4+IENjOiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgZGwtbGludXgtaW14IDxs
aW51eC1pbXhAbnhwLmNvbT47DQo+ID4+IFNoZW53ZWkgV2FuZyA8c2hlbndlaS53YW5nQG54cC5j
b20+DQo+ID4+IFN1YmplY3Q6IFtQQVRDSCB2NSAzLzNdIGFybTY0OiBkdHM6IGlteDogYWRkIGlt
eDhkeGwgc3VwcG9ydA0KPiA+Pg0KPiA+PiBpLk1YOERYTCBpcyBhIGRldmljZSB0YXJnZXRpbmcg
dGhlIGF1dG9tb3RpdmUgYW5kIGluZHVzdHJpYWwgbWFya2V0DQo+IHNlZ21lbnRzLg0KPiA+PiBU
aGUgY2hpcCBpcyBkZXNpZ25lZCB0byBhY2hpZXZlIGJvdGggaGlnaCBwZXJmb3JtYW5jZSBhbmQg
bG93IHBvd2VyDQo+ID4+IGNvbnN1bXB0aW9uLiBJdCBoYXMgYSBkdWFsICgyeCkgQ29ydGV4LUEz
NSBwcm9jZXNzb3IuDQo+ID4+DQo+ID4+IFRoaXMgcGF0Y2ggYWRkcyB0aGUgaW14OGR4bCBzb2Mg
YW5kIEVWSyBib2FyZCBzdXBwb3J0Lg0KPiA+Pg0KPiA+PiBTaWduZWQtb2ZmLWJ5OiBTaGVud2Vp
IFdhbmcgPHNoZW53ZWkud2FuZ0BueHAuY29tPg0KPiA+PiAtLS0NCj4gPj4gIGFyY2gvYXJtNjQv
Ym9vdC9kdHMvZnJlZXNjYWxlL01ha2VmaWxlICAgICAgICB8ICAgMSArDQo+ID4+ICAuLi4vYXJt
NjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDgtc3MtZGRyLmR0c2kgfCAgIDIgKy0NCj4gPj4gIC4u
Li9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OC1zcy1kbWEuZHRzaSB8IDEzOCArKysrKysN
Cj4gPj4gIC4uLi9ib290L2R0cy9mcmVlc2NhbGUvaW14OC1zcy1sc2lvLmR0c2kgICAgICB8ICAx
NCArDQo+ID4+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4ZHhsLWV2ay5kdHMg
fCA0NjMgKysrKysrKysrKysrKysrKysrDQo+ID4+ICAuLi4vYm9vdC9kdHMvZnJlZXNjYWxlL2lt
eDhkeGwtc3MtYWRtYS5kdHNpICAgfCAgNzIgKysrDQo+ID4+ICAuLi4vYm9vdC9kdHMvZnJlZXNj
YWxlL2lteDhkeGwtc3MtY29ubi5kdHNpICAgfCAxNDUgKysrKysrDQo+ID4+ICAuLi4vYm9vdC9k
dHMvZnJlZXNjYWxlL2lteDhkeGwtc3MtZGRyLmR0c2kgICAgfCAgIDkgKw0KPiA+PiAgLi4uL2Jv
b3QvZHRzL2ZyZWVzY2FsZS9pbXg4ZHhsLXNzLWxzaW8uZHRzaSAgIHwgIDc4ICsrKw0KPiA+PiAg
YXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OGR4bC5kdHNpICAgIHwgMjM4ICsrKysr
KysrKw0KPiANCj4gDQo+IEJlc3QgcmVnYXJkcywNCj4gS3J6eXN6dG9mDQo=

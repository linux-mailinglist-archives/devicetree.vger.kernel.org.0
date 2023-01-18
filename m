Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C7C9F67177F
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 10:24:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229870AbjARJYh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 04:24:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230043AbjARJVP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 04:21:15 -0500
Received: from de-smtp-delivery-113.mimecast.com (de-smtp-delivery-113.mimecast.com [194.104.109.113])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 574D25CFCC
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 00:42:02 -0800 (PST)
Received: from CHE01-GV0-obe.outbound.protection.outlook.com
 (mail-gv0che01lp2048.outbound.protection.outlook.com [104.47.22.48]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 de-mta-11-1co_h2-wP2iASRZFVpo_gw-1; Wed, 18 Jan 2023 09:41:58 +0100
X-MC-Unique: 1co_h2-wP2iASRZFVpo_gw-1
Received: from ZRAP278MB0237.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:2e::13)
 by ZR0P278MB0775.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:4f::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.24; Wed, 18 Jan
 2023 08:41:56 +0000
Received: from ZRAP278MB0237.CHEP278.PROD.OUTLOOK.COM
 ([fe80::bee2:f5b3:edc7:24a6]) by ZRAP278MB0237.CHEP278.PROD.OUTLOOK.COM
 ([fe80::bee2:f5b3:edc7:24a6%3]) with mapi id 15.20.6002.013; Wed, 18 Jan 2023
 08:41:56 +0000
From:   Max Krummenacher <max.krummenacher@toradex.com>
To:     "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "marex@denx.de" <marex@denx.de>
CC:     "laurent.pinchart@ideasonboard.com" 
        <laurent.pinchart@ideasonboard.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>,
        "linux-imx@nxp.com" <linux-imx@nxp.com>,
        "peng.fan@nxp.com" <peng.fan@nxp.com>,
        Andrejs Cainikovs <andrejs.cainikovs@toradex.com>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        Philippe Schenker <philippe.schenker@toradex.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: Re: [PATCH 1/3] arm64: dts: imx8mm: Drop sd-vsel-gpios from i.MX8M
 Mini Verdin SoM
Thread-Topic: [PATCH 1/3] arm64: dts: imx8mm: Drop sd-vsel-gpios from i.MX8M
 Mini Verdin SoM
Thread-Index: AQHZKuooOyPiGdGHNUyGj+XnGZXPga6j25wA
Date:   Wed, 18 Jan 2023 08:41:56 +0000
Message-ID: <b3dfc6f4a97df0eca8a36198086f804ba8876850.camel@toradex.com>
References: <20230118030757.254086-1-marex@denx.de>
In-Reply-To: <20230118030757.254086-1-marex@denx.de>
Accept-Language: en-CH, de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: ZRAP278MB0237:EE_|ZR0P278MB0775:EE_
x-ms-office365-filtering-correlation-id: f4e5c78c-3e3e-40a7-1052-08daf92fdb6a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0
x-microsoft-antispam-message-info: SnKG7dya4gYLl3y4q3SiPsRT6HF3bIGNU82PnaGGAuHL1CzRsEhNwbtZXQZXltSFvSCFkecs9068ZR/UxDVw7pIBV4pIDJNpAYmneGaB3kRTaeDDWL4fKyfqVdBGflPwcme4n830/OARXdLLc3cZQie3VpjqrJdASmtE1S8LcUWPGhZBtVRDan8PjoEhVtPTiV2PT9N/cf1iYJELVzB///M3jXPXeUzY1Oumk1v53trM482AdoeOdk4k/k0x5X4EV6nw+iYTg+d6+VUQJE/L+6MaHnexTqpSXiWgmJUEOk7Qf4taVwHRLf+3rIl1l/+CL3LZ6AvHS7oHdQ+Io9kpNnWiPpfFe0nJzFopKDUrLD2japSgQIsn15rf8Hggectq2eD4J9b/gkYFaTIz6CaULLA4vAx95f9Pv0y8aCKbbRcNsNBq9LA7yI+2ZE9sx9mlkmn48hmMtlcve+Pt9oS3wgY6sl4uzsq93vDpZNJdX1In/pUq9G914n0SPsTTCELet4/xM/M0kQFglr3LF37kh0ZPBLB2a1OvwLoOajBMdMLgikhOs150CxZzZKsSqGQe+q0upDwfgQWZ/iz2btNmeLILrrSBmukBAOye6NiQ8enDqwRIyzPfXekmP7C7EMzOFAFjDqEZrE2fN5xGs9n+1wD1g+ky60Hk41dIvrYbsP8LAtfhvxY6tCuGPqLuZduMvqDdeSR9Ukqpc+GV44ipZqT1m8KfFdorJ+gV2Blfcsk=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ZRAP278MB0237.CHEP278.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39840400004)(376002)(346002)(366004)(396003)(136003)(451199015)(38100700002)(122000001)(38070700005)(2906002)(5660300002)(8936002)(7416002)(4744005)(44832011)(66556008)(66476007)(66946007)(76116006)(66446008)(64756008)(8676002)(4326008)(41300700001)(2616005)(186003)(6512007)(83380400001)(26005)(316002)(71200400001)(110136005)(54906003)(6486002)(36756003)(478600001)(6506007)(86362001)(32563001);DIR:OUT;SFP:1102
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QXZMWHlrUlUxblhWZkczWXNQV1Q5VnNqb2pZY0NwRjk3K1VyUzBtc1NtclJJ?=
 =?utf-8?B?dThBcUZYUU8wVkhVYjZhQzlTZTlVZEFvdUZDMTdydGhheU5VWnNZc3hkcks1?=
 =?utf-8?B?L3Q3Y2VUK3VXVnJTRTNOT2UvK1lpVkt5N2QxeGlWWGFIYnQzcWNPcTlpNU5l?=
 =?utf-8?B?c2FZcDVBYzIxQmdIaXVwSGxuRitvOFp2WjB5c2l6Yy9yT1N6K20rWDhkRFlj?=
 =?utf-8?B?WEZCTk5IWE5xc2VWazNvT2VRQ0RsTmNHSmJaYmlmajFuOUZ2NWJtYXRrMjFv?=
 =?utf-8?B?NWV3N0hWVXB2RkZmZE9jZytxUjB5U1BEZm9FclBiOG9ZSDIzOEI1RkI3OWxP?=
 =?utf-8?B?STFZb0dtVVRmaDBLMFNqR2tONjBkNG9lZTRUSWlyYWdzcjJ2WHIxYm4xTGt6?=
 =?utf-8?B?WVNscGlYRGhaQU9rZ2FwSmFOMzcwQTNWS2NmeGtQSnhBVEVJMjhqSVBUUjI5?=
 =?utf-8?B?KzdNNlJUYnJvSElMSWF2SXhXRU1HUjBxbzRReFoydStZeVBEdEM4R3JCWExW?=
 =?utf-8?B?elg2QlFqK0dHTnZtbGRyMGhDOUl6bDM3TlVsS0xQRWNOczZzNE42MkNWc01F?=
 =?utf-8?B?b1E2dlNOOVNjK0VxR3JjS3kzclIvSWZXWUhQWkF6WlhJSGtsb3l5OXlvckd4?=
 =?utf-8?B?Qnk3VHkzbmZodWtiZkE2ajFOK051OUp2bk9OeEFTb1NiVXgzRkExeG9VZHhV?=
 =?utf-8?B?c0oxblVZOUxoazZDM3BnYldPSHlrYnZNNGZweWw2SDk0a2FBUzM0R21OWFdD?=
 =?utf-8?B?TG4yMjU5MXhxMzhCem5ZWXRqaUwyODByT3FCTWJoRy9NYXRCZ1ZQRUV5OGMx?=
 =?utf-8?B?SnBqRlNneHQzQjJYZDBuUWwzNnEvcUhsd2plWEo3MG1zWSt1QW1iTktxZVNJ?=
 =?utf-8?B?V0ZObWtvVUVlZkxPWU5HMjJGNmEreC96MW1JRlpqVTV1WmJUNVE3czFxL3BY?=
 =?utf-8?B?U3d5V3E3N3FIVnp3R2xZbUM3NFpyVWNOdzc4M0oyZnpLckt4a0FwWVl2TTcw?=
 =?utf-8?B?TGh4c3JNNjRIYzVtRi8zTXlEREpGZE5KaVA4NUNIbXNNaEcrM2tnaCtGWmJ6?=
 =?utf-8?B?dXBEMldiRHdreGd6RmR5MmllNDJOdi9QTWc0a216Zmh0R3Q1KzI5MjhZam9u?=
 =?utf-8?B?Z2xUR3MrQThpL3ZvU25EZE9KQTZtaU5JdXlUczB6Q0NENzQ2N2Q3c1lwU0RW?=
 =?utf-8?B?NXVOR0dwQnBOTWpzblhoc3IyaEFrdzg2emd4cWdLNzVFM1NORzRUWFJUV1ZO?=
 =?utf-8?B?SGVaMlBJSGxHY2t5SWRKL2lZODE5TzBjWGZNWmROUVVNQlVVTGxEcFlTYjc5?=
 =?utf-8?B?Qi9PVWl3bkwwYkJYVlJKRnFUTGgxY3NpWHJtei9jL2RXZDN0eUU3bWdTTWox?=
 =?utf-8?B?aDU1MG5NMWphUXFDWnFzN1dJUndONWp5VUFsQ1haWVFSSEtNWWp6SXZXQ2k2?=
 =?utf-8?B?QllzSzBsQXlWOVVnTUg3TVJLZEdFMnhjdFlVY2IwbVFVak1jRk80MEZCenJW?=
 =?utf-8?B?TnVCRmRWVVJVNGYwQTlsQUdFeTI1SnlTNW51UmlwcWljZEtYemNhYTVzZVBo?=
 =?utf-8?B?Vlo5N3h4ck5VVXljUlkzM0Jpd1NuZDE5aTFtdlJRdFA4SmVvU3JQZUxWWkd5?=
 =?utf-8?B?OFFHMnA1K1pCSW4yUDY3N1hyUW9qRi9yOFRES0E1MmFsRzlPT0FoSmpBN1A1?=
 =?utf-8?B?SHpaL29RN3pWa2tqOUtnNFlNRDluNnE2L1g4WDNmSHNnYkdQWU5PMXVOUzNY?=
 =?utf-8?B?SVZ4UmsxSzh1NWdZMUxja0pNRE1TMFB1dythSEg0SjJCVElQVkl5OEZSY2RK?=
 =?utf-8?B?M1c2NXFzL2w4V2xnZnVwNFRnNGZDNUpObXE2cS96LzlFdG5zWEhzTUsvaHFk?=
 =?utf-8?B?WUpDbnhBdVExd0tKekxKOGVqcFRqTk1XZzloMDQvOFRxOFRJeTBCNm9STVc4?=
 =?utf-8?B?TnlwZ2wzOU5CK3grQjRsUjNWVk1nZmNtT2FXNVc5dUJ6Zm1lcytEREZVNmlP?=
 =?utf-8?B?MUVhNFZtekMzTGJIRTgwcTgvSXZOU0VNbFVJNkxtMEtleXp1TnpWUUNUcG5r?=
 =?utf-8?B?aE5CaE5yQ3lRTUt5UWdWd1AxeGFYY21oYVpPbllQZ1BNS0VLZ0c4b25kMnEy?=
 =?utf-8?B?Yy9ibXRlekxyU2wwY3lDU2ovUXJlZjFHM25IaDlkVEdKek1FRituN0ZnY1li?=
 =?utf-8?Q?WxNxkLW7WeIN+DKIqDqDUuM=3D?=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: ZRAP278MB0237.CHEP278.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: f4e5c78c-3e3e-40a7-1052-08daf92fdb6a
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jan 2023 08:41:56.5974
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dt+GXejBchZe+DD5KgEZC+YrnHHG60/TFYIGEU2dbyyEBg9opG7hsCN/U/w8qpaOShtl3VivG7SOJje2dU1OYB5wbR20YrR7rRT7gXyEFOk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ZR0P278MB0775
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: toradex.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-ID: <768CCD3A09D4D148A247E4BFBAA4FBF8@CHEP278.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

T24gV2VkLCAyMDIzLTAxLTE4IGF0IDA0OjA3ICswMTAwLCBNYXJlayBWYXN1dCB3cm90ZToNCj4g
VGhlIFZTRUxFQ1QgcGluIGlzIGNvbmZpZ3VyZWQgYXMgTVg4TU1fSU9NVVhDX0dQSU8xX0lPMDRf
VVNESEMyX1ZTRUxFQ1QNCj4gYW5kIG5vdCBhcyBhIEdQSU8sIGRyb3AgdGhlIGJvZ3VzIHNkLXZz
ZWwtZ3Bpb3MgcHJvcGVydHkgYXMgdGhlIGVTREhDDQo+IGJsb2NrIGhhbmRsZXMgdGhlIFZTRUxF
Q1QgcGluIG9uIGl0cyBvd24uDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBNYXJlayBWYXN1dCA8bWFy
ZXhAZGVueC5kZT4NCg0KUmV2aWV3ZWQtYnk6IE1heCBLcnVtbWVuYWNoZXIgPG1heC5rcnVtbWVu
YWNoZXJAdG9yYWRleC5jb20+DQoNCg==


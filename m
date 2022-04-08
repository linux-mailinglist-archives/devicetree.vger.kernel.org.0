Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E069C4F8FF2
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 09:55:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230008AbiDHH5a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 03:57:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36980 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229957AbiDHH53 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 03:57:29 -0400
Received: from CHE01-ZR0-obe.outbound.protection.outlook.com (mail-zr0che01on2135.outbound.protection.outlook.com [40.107.24.135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCFDB1DCCFA
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 00:55:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U5zqjoNGGEuKxhqQG7/xvc9hyyFxm5qX1cVgcr2cn8O/Cffdu06Aahptt6HUihq/e4czc2XgbUbJ3qbOvkvvqOUYBofFTa8qtBsbynyyxwVf4aSQQBgZAFCqx8NZyPHsnI4LIc2L0bDMJGrbznq78uNDZ6p3YD0cm9+Mjdo3gxslgJE84mjlS4+hoptw2Wpw3B1g7LnNy4YqsCC69uLv/SzakVKb4JxGzD/t/vneRVsDJMAEENsg7DPVb/HGYRyAp7MYC2rDgBNNl3th8rgzZdIy9XubVe3wdQZyan0TKAGeOkpVu3jpDxqsd1i9cXH7UeIbnNn4M2j4VBj5PGmnRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JmaBY3QgI9iDQxGXWsFfhHDTQ6zPxRdjg7OWNTQU4ko=;
 b=Dh7w/28xO6JsnmK+NQstQH6dF+7t56KPHnK1y6g9RlCtp7ujwbSWZQhw5TRAnrPOy+QCp9D7n5p+peYEbh4wHyhLZASx0uvu6p4c60gAHScFoS5HswJgVrp4qVgfiEca/IotXYIgXtohay+B1SpQrCosrTTot52aaLP64OO0auJjTO5PpyCRcPoOzF2sHb7KBeiFoK4qqdM+H2APDoDrh4DEhGn8j2hYDNCaeTOVhW53qSWZbqR7prGnhkPnJsGee64JHqBPAMgT/wmWaRK/CADSsUHNt9n1TMHLfBhGwfWp+YNHMZE6l0+JavYVBbmGs4cNy7GU1MpZkg4mO4O5Kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JmaBY3QgI9iDQxGXWsFfhHDTQ6zPxRdjg7OWNTQU4ko=;
 b=jCaSfqgEroxHvzb6sjXpcLaeqNSx1T1M9rgIEwunIpwJwz2uyJ7riZSkbF9XJcbNNdDw2+M5243sLDDfT8Rjiua1sTjUvBgTIzCH6WkrUM/sgEoO2NCIjR/OJO8nw0LytVDJrDvyNU9OLFOn3aQXLlL2nCsSF+flCekSCxIa9nI=
Received: from ZR0P278MB0683.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:3b::9) by
 GVAP278MB0584.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:4b::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5144.22; Fri, 8 Apr 2022 07:55:23 +0000
Received: from ZR0P278MB0683.CHEP278.PROD.OUTLOOK.COM
 ([fe80::ac85:57a0:359e:149e]) by ZR0P278MB0683.CHEP278.PROD.OUTLOOK.COM
 ([fe80::ac85:57a0:359e:149e%3]) with mapi id 15.20.5144.022; Fri, 8 Apr 2022
 07:55:23 +0000
From:   Marcel Ziswiler <marcel.ziswiler@toradex.com>
To:     "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "marex@denx.de" <marex@denx.de>
CC:     "peng.fan@nxp.com" <peng.fan@nxp.com>,
        "festevam@denx.de" <festevam@denx.de>,
        "linux-imx@nxp.com" <linux-imx@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: arm: Add i.MX8M Mini Toradex Verdin
 based Menlo board
Thread-Topic: [PATCH 1/2] dt-bindings: arm: Add i.MX8M Mini Toradex Verdin
 based Menlo board
Thread-Index: AQHYSr2zS/9SFWNyEUGEvkemravt26zlpoMA
Date:   Fri, 8 Apr 2022 07:55:23 +0000
Message-ID: <defe2e0dc5447028e38014e55d77b98b39d8a1a4.camel@toradex.com>
References: <20220407202456.244917-1-marex@denx.de>
In-Reply-To: <20220407202456.244917-1-marex@denx.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=toradex.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6a5736a1-0292-42f4-8a65-08da193522b3
x-ms-traffictypediagnostic: GVAP278MB0584:EE_
x-microsoft-antispam-prvs: <GVAP278MB058400EC6E857703A3E1A45BFBE99@GVAP278MB0584.CHEP278.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +9OQbLEea9UHj2SRBwWnqYsZyS14epdl18UbvsNyRpU6kXJwUIiyHI9DL4itepFc7jAdc7jCrePD2/bUqvvXVTcCyL+aG8TUOgM7atFjXYp20Dr+++e1D6piJDdz5VNTTOesA0hxq66eV9k02bcb4Qp8vRxMQa7Zfp+TMc2EXFoWCNRO2/ZVX0BOxh4XO2xXtfGnjhgM7Y6Rj1n02CapMrWWUAwjlt1v1L5L7bodd3sIzfXUTpg0Em1dLgkWLpclGWiDl7anKjmJBX2NaFUxUTXg3YTv0s31mDL4SLxPklx8ioKyXSAhSbtt9q6WTynHu2LRXDDj4XC9olbByquKALU1ExOVrT922QaQCf8CZQ5VgulV2HnXKFOqepR1ey4sNvGwYu1/9lIE4Sc7Ft2csHLqUP5HFIDV//6k1udhoJbFet4gpzRLRwtPXOn3+eOkc2mnwlMFbgUWkzWKIuPZChwKE3fmbYzIRAFKQR0kV2wT/SJcdJz1mMZMbaximx2I+nvPFBoczlJogkymyOJDaehgIZj9AlMdn9VuPhT0u6dHAx2ZSv+ZfKItXEa2b2IxNvr9AIY6Onczxy0bfxF4Hy1BhfpcfDpK2wCCi0sTlQ3PSZePiuOiGuy4DBX2YL3GKwXphEUEPvxtLfWrucqUJF4NRhlbcI35a1whCBG0xNwiIU6DUqq6tjmOIp2ZzFBs2Rr7MrHKjCT0he6nUhm7nA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ZR0P278MB0683.CHEP278.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(39850400004)(136003)(346002)(396003)(376002)(38100700002)(86362001)(44832011)(2906002)(110136005)(6506007)(66946007)(76116006)(8936002)(122000001)(38070700005)(71200400001)(64756008)(66446008)(66556008)(66476007)(8676002)(4326008)(6486002)(6512007)(54906003)(316002)(508600001)(36756003)(5660300002)(2616005)(186003)(26005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WjFGWVRPTURSaGUveCs4TE10UHQwZzZuajNnMGVWQ0l6RWNxNHhSTkt1UmRm?=
 =?utf-8?B?bDM4SUVmYTViS3kycWo1VFhZaExnTEM0S2RVbUdPemhNSzdhUEZQbHMvSGhm?=
 =?utf-8?B?YnBrSitTaXJPZHI3dmh3aHZxVUZZT2xVQ29RQUZRZmlZWGYyNG41aFRsczBh?=
 =?utf-8?B?dGM4RXBtRWVuMFM1U2VNNGhrUWtsVkh4eVoyb2FkeU13ckQva3FZS05hVi9n?=
 =?utf-8?B?RHUrdUk3RWU2ZForaUtCYlJSNEZLbnBMamFtQUN3QWJNK3Q2QkNiVncrYWg1?=
 =?utf-8?B?UCtjZ3pkZTl0TFZtbHdBWlF2SGlKRzJ3dXZxVVBaQnlYb2xyYzhTelowVS94?=
 =?utf-8?B?VzFnZ0FRSmsrMjBWQUhUMFRsaCsvbjRwejc5VzA2dVVzUTlYc21xZXZCVml3?=
 =?utf-8?B?b1BJS1pReGZXUkE1eGJRWHJxeGl2bEJsM3k4MlJaYTZFLy9iNmkvSGJubEZs?=
 =?utf-8?B?WmRiUVFqTFdpNGxKeEx4amVuWERBNUwrWDlYSjBQbXJHa2tDZ1VHTWJML2ZR?=
 =?utf-8?B?a3B0MHp1YWdOT0VnWVg1R1BtSkNibTJiYXVrNjFOcVJqM0pIeDBmaDdWd2dP?=
 =?utf-8?B?RFBOUURZYWZqNDZqRnNUN3hLb2U3bXZFUFVKQkVac1JlZ2ozLzBLTElqSkJx?=
 =?utf-8?B?VmQ1bGM4WWU4Y0F5bjlaUTBuNHlTK3NlL1JvRkg1TFNNcDF2b2gySlhneWJ0?=
 =?utf-8?B?WWQwZ0ZvNmdBV1FoRklaend4WG5RVERhbXM5YlFSbDE4Um5NUlhZRXAvZ3F0?=
 =?utf-8?B?czRUdm1tZk54TUprcXl3ZEFmWW5seko1blZHNldQOEg5clgrSHkvWWJQT3Q2?=
 =?utf-8?B?MllQSTVYQ0d3SitKUGMzVHVKMlRSNlJpY2FJM2RQUzMrc0I2bjg2d3JqeXZD?=
 =?utf-8?B?cDlCRUpUN2RUOEpHR1dwUE53MTBYYzIzQk9ZelRZd3cyVDdVaURsMUlocGNQ?=
 =?utf-8?B?Z2o1S0o4ZlErTzFUd1ZmVVlFdUVyNHo2TmR4NHJrLzNCN2ltOS9rWjFYL1VQ?=
 =?utf-8?B?RTh1UTdNK05lbGlHK0l3Mk9wVG9JNUkxNE11b2loUmJhNkJpOW1OdGlCVDN3?=
 =?utf-8?B?MWVHMThjUDRHVEFVYUZ4K2tWay9MQi9mWHN3UWtPcTNaVmxwaTRTOGV4dm1l?=
 =?utf-8?B?QS9HeWUweWtYZy9aZTdkaGRicWdTTUV3b1E5YlVQRWRvK2xxTFNTclIxNkln?=
 =?utf-8?B?Z3ZPN1VQVEd6UXBOWXdPVW9EeUg5RUFiRDBuZjVVeitjMWdXajhTNkFlc0M2?=
 =?utf-8?B?NzJiL0VpTmZjL0x3Z2hKVWlYa29tdjJzQ0RNZHdvZHVCY2pSY3RlS0pSeFU5?=
 =?utf-8?B?cUtZaVdabmZPbkR6Z2xMUlVBUVlUUy9GMzRzTVRHSjEvL3ZIU1c3a2VOb1FE?=
 =?utf-8?B?WDh2TldDTVNWZnI3N2U0VTJZWnRvNXQxRlBwUy9ZQUwvUHFUbjJyTzVsUlZH?=
 =?utf-8?B?RWVMdC95K2J0SmVVYzdBL0N1V2dueW9GVVZScU9iVFBheStXRy9oM2MrUVo0?=
 =?utf-8?B?QWtVRWdMZXBVNEZEK09MOHRTZitGTXc0bHlVcjFsaTl2cW1yOCtNZ1B3WUdN?=
 =?utf-8?B?eTVCNW0wMURpZGxRY1E2cVR1eVJJRXJMckg1dnRXKzZDNHJqQWlVc1k2WHFH?=
 =?utf-8?B?Z2lIZU1DamcxSys1RGtsczJlZ0Vsbm5YN0xSM2dGeTRKOTlGN2cxNzFDZ2FT?=
 =?utf-8?B?dnE1WUl5ejBXR1huRFo2U1hEZmtCQVM5VHZPVHk3MTBFbitnZy9oUEd0MkhB?=
 =?utf-8?B?MFhiR2VUSGM3UmZCbitVc2hYZ3hFSDVtdCs5dGVKcG9RSzM3MU9uQkpwSGRZ?=
 =?utf-8?B?WHV4VmtPVG9FVTBNM1NMTGNHeWIySkEvUXhsdFA5UU9iRVJucldzNm9xTDB2?=
 =?utf-8?B?VDBVdWprTEJUZEJDNnZzdkE0eStyck5sRmlxKy9yMGlUTzRESThlMDE0VjQ3?=
 =?utf-8?B?UFZzaDFqa1FOR1FlS01uakNYcGhJVzVsMEdiVTE2cU82ZWdwTXE0L3BKSjM5?=
 =?utf-8?B?bUVaaERoNUpRblFkNTFqd1hyT2s3b09odFM3L09NTEk2ZFFrZGludDV1MHVC?=
 =?utf-8?B?TEpvUjlXdWtYeTlRV2tyRy9FR0JwWmp6MStPMmhtaUoxRTdFSnpqU0lPMEd0?=
 =?utf-8?B?ZEJXSlAxTVcvM1ZJVytvMnR4L2p1ZmZEeityaE1ZRDk1K2lYOWFiRnFvVjBC?=
 =?utf-8?B?MHN2SGw5QzBwSlA2b25hTDBYS0ZzZ3cra25PU1ZEQnZzV2tyWFNUQWlWQUMx?=
 =?utf-8?B?U1J1TTU2aDhFVkZ4NDQ3bUpzQURrd3NDVVpwa2huUVVzZ0lad0lOak42a3BT?=
 =?utf-8?B?WFgvN0U3VWVhaFNVTzBmdGlpS3U3cHJOL1M0MlBqY0tzcmlEajNxMlB2dWha?=
 =?utf-8?Q?uX1UXJCD+PJ9itxnnsTi1RuZfP9wWo5c0nwoc?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6C458C4545CE7845A5943081C4A69949@CHEP278.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: ZR0P278MB0683.CHEP278.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a5736a1-0292-42f4-8a65-08da193522b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2022 07:55:23.1718
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TzfrnD8PDflcGVzKAk5uE2FpwiwmB5u0eF0yIe4uGf3nEa0HBYwP6yrSK66hZFe+hRKoCdA7Yw4yAW4QuIRpMim7eoP1gUjVf9pAiBg0t8E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVAP278MB0584
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SGkgTWFyZWsNCg0KTmljZSBvbmUgKDstcCkuDQoNCk9uIFRodSwgMjAyMi0wNC0wNyBhdCAyMjoy
NCArMDIwMCwgTWFyZWsgVmFzdXQgd3JvdGU6DQo+IEFkZCBEVCBjb21wYXRpYmxlIHN0cmluZyBm
b3IgYm9hcmQgYmFzZWQgb24gdGhlIFRvcmFkZXggVmVyZGluIGlNWDhNDQo+IE1pbmkgU29NLCB0
aGUgTVg4TWVubG8uIFRoZSBib2FyZCBpcyBhIGNvbXBhdGlibGUgcmVwbGFjZW1lbnQgZm9yDQo+
IGkuTVg1MyBNNTNNZW5sbyBhbmQgZmVhdHVyZXMgVVNCLCBtdWx0aXBsZSBVQVJUcywgZXRoZXJu
ZXQsIExFRHMsDQo+IFNEIGFuZCBlTU1DLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogTWFyZWsgVmFz
dXQgPG1hcmV4QGRlbnguZGU+DQo+IENjOiBGYWJpbyBFc3RldmFtIDxmZXN0ZXZhbUBkZW54LmRl
Pg0KPiBDYzogTWFyY2VsIFppc3dpbGVyIDxtYXJjZWwuemlzd2lsZXJAdG9yYWRleC5jb20+DQo+
IENjOiBQZW5nIEZhbiA8cGVuZy5mYW5AbnhwLmNvbT4NCj4gQ2M6IFJvYiBIZXJyaW5nIDxyb2Jo
K2R0QGtlcm5lbC5vcmc+DQo+IENjOiBTaGF3biBHdW8gPHNoYXduZ3VvQGtlcm5lbC5vcmc+DQo+
IENjOiBOWFAgTGludXggVGVhbSA8bGludXgtaW14QG54cC5jb20+DQo+IENjOiBkZXZpY2V0cmVl
QHZnZXIua2VybmVsLm9yZw0KPiBUbzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnDQo+IC0tLQ0KPiDCoERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vZnNs
LnlhbWwgfCAxICsNCj4gwqAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykNCj4gDQo+IGRp
ZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL2ZzbC55YW1s
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9mc2wueWFtbA0KPiBpbmRl
eCA4YTdlZDc3ODJlOTlmLi5hNjI4NjU4MWZhMTNiIDEwMDY0NA0KPiAtLS0gYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL2ZzbC55YW1sDQo+ICsrKyBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vZnNsLnlhbWwNCj4gQEAgLTgxOSw2ICs4MTksNyBA
QCBwcm9wZXJ0aWVzOg0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gZ3csaW14OG1t
LWd3NzkwMsKgwqDCoMKgwqDCoMKgwqDCoCAjIGkuTVg4TU0gR2F0ZXdvcmtzIEJvYXJkDQo+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBndyxpbXg4bW0tZ3c3OTAzwqDCoMKgwqDCoMKg
wqDCoMKgICMgaS5NWDhNTSBHYXRld29ya3MgQm9hcmQNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCAtIGtvbnRyb24saW14OG1tLW44MDF4LXNvbcKgICMgaS5NWDhNTSBLb250cm9uIFNM
IChOODAxWCkgU09NDQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIG1lbmxvLG14OG1l
bmxvwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAjIGkuTVg4TU0gTWVubG8gYm9hcmQNCg0KV291bGQg
aXQgbWFrZSBzZW5zZSBtZW50aW9uaW5nIHRoYXQgaXQgaXMgYSBjYXJyaWVyIGJvYXJkIGZvciBW
ZXJkaW4gbW9kdWxlcz8NCg0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gdG9yYWRl
eCx2ZXJkaW4taW14OG1twqDCoMKgwqAgIyBWZXJkaW4gaU1YOE0gTWluaSBNb2R1bGVzDQo+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSB0b3JhZGV4LHZlcmRpbi1pbXg4bW0tbm9ud2lm
acKgICMgVmVyZGluIGlNWDhNIE1pbmkgTW9kdWxlcyB3aXRob3V0IFdpLUZpIC8gQlQNCj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIHRvcmFkZXgsdmVyZGluLWlteDhtbS13aWZpwqAg
IyBWZXJkaW4gaU1YOE0gTWluaSBXaS1GaSAvIEJUIE1vZHVsZXMNCg0KQ2hlZXJzDQoNCk1hcmNl
bA0K

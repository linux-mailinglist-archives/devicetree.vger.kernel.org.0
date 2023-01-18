Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 493CC671792
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 10:25:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229736AbjARJZZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 04:25:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229983AbjARJVP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 04:21:15 -0500
Received: from de-smtp-delivery-113.mimecast.com (de-smtp-delivery-113.mimecast.com [194.104.109.113])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5F495D109
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 00:42:41 -0800 (PST)
Received: from CHE01-GV0-obe.outbound.protection.outlook.com
 (mail-gv0che01lp2045.outbound.protection.outlook.com [104.47.22.45]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 de-mta-17-lAEvkMWlM7uVNB1lKolurw-2; Wed, 18 Jan 2023 09:42:39 +0100
X-MC-Unique: lAEvkMWlM7uVNB1lKolurw-2
Received: from ZRAP278MB0237.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:2e::13)
 by GVAP278MB0151.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:3f::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.23; Wed, 18 Jan
 2023 08:42:36 +0000
Received: from ZRAP278MB0237.CHEP278.PROD.OUTLOOK.COM
 ([fe80::bee2:f5b3:edc7:24a6]) by ZRAP278MB0237.CHEP278.PROD.OUTLOOK.COM
 ([fe80::bee2:f5b3:edc7:24a6%3]) with mapi id 15.20.6002.013; Wed, 18 Jan 2023
 08:42:36 +0000
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
Subject: Re: [PATCH 2/3] arm64: dts: imx8mp: Drop sd-vsel-gpios from i.MX8M
 Plus Verdin SoM
Thread-Topic: [PATCH 2/3] arm64: dts: imx8mp: Drop sd-vsel-gpios from i.MX8M
 Plus Verdin SoM
Thread-Index: AQHZKuoof3aCCAfdK0q4IzoDzDAC3a6j28wA
Date:   Wed, 18 Jan 2023 08:42:36 +0000
Message-ID: <e58a17e3d0abd7436f461a7dbb03cb0f4901596c.camel@toradex.com>
References: <20230118030757.254086-1-marex@denx.de>
         <20230118030757.254086-2-marex@denx.de>
In-Reply-To: <20230118030757.254086-2-marex@denx.de>
Accept-Language: en-CH, de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: ZRAP278MB0237:EE_|GVAP278MB0151:EE_
x-ms-office365-filtering-correlation-id: 62b9101e-0353-4759-2c57-08daf92ff341
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0
x-microsoft-antispam-message-info: jhxKJKKy1wAi+Jcbgxg9bQKfwotplb60QCjbcKs+985sKSazSc3TDaoNumeEV7w8yC/UShFn6JYBS+jov+NevYrVZ9HCvQtFcFcXGDvmb5Gb4PHNK5ns6nw6+Kbj9scXaZqbuR9gKHEDBFH9OIRjIlkww2feYTl+7o6bH2Am+6O/PirV3J+8kaIcvOB4b7QBiGwdtZF7pwZHdkcQBNxB+X4sczbiFfy39Lvvh9cfEWE9DqLgGZHS++1+OJAcMUz75jhz2j0unq58S91TpDYiAoXSH5WeIIpKlMDzXCvrIEYelTEj3/2SC9kgGnSk/C5FLr9Om/tTYSAnk+uPPpCRcnhW0BUKLZOFqAFp8kilwFs72BVxFKQXIyy57hk4cKdD/gpQJeCIh2O42eh8BEesGyHTBUZWMjOIthoAas5dU+giYEFX9CDoc3FRcIIGnKV7hAVQf1Q6B+LhEEpfFxm0z2K1+6fY0ummvvjxTBwsXg8cp/xjpzVxY17p9eMr/tqIqnhC+76FxNjCaUOYMEp7Wg/gIKiUqmIhcgRD3a7t9+I56p17N2DvwmMMx5bbnIzO5gav3ZaJXBBzeOuXJ+pVesL11//dHrigvYIloWzl1PWH7YHgDpQ/oCCPjeb8mkdnWJcvvT2kNIlgKex9cAjRBZLGxwzZnTUf+bmSoT4VjsLu68NeC6SO0jL/JTk8gyth7q3MeQA/5aey/LpOt01CUp4ZN5MBfmf7kpW8+xRPSRw=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ZRAP278MB0237.CHEP278.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(136003)(346002)(39850400004)(376002)(396003)(451199015)(36756003)(478600001)(110136005)(54906003)(71200400001)(6486002)(6512007)(6506007)(44832011)(122000001)(2906002)(26005)(8936002)(4744005)(316002)(41300700001)(5660300002)(7416002)(76116006)(66446008)(66946007)(64756008)(4326008)(66556008)(66476007)(8676002)(2616005)(38100700002)(186003)(38070700005)(86362001)(83380400001)(32563001);DIR:OUT;SFP:1102
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NkVUc2ZqMk5ZVkxNRVp1WFRHdjhxRXhwVzZrZ3lMNHJtTkEyRGU2eC9kKytS?=
 =?utf-8?B?bi9WM1U5QjdtRk9jbzdMcDEwL1MrME5vQTlCbWZ6Y0pONjkraVAxRHRVUDYz?=
 =?utf-8?B?KzFJSmMvdWhzMGtNeXdzUjZLUHBWT0dOYlExS2lncXNHRUw4WjdUZ1NFTlFu?=
 =?utf-8?B?V254bHpJRUNHWnR5Z0F4WSszTU1ZV0hzUEovdGpkTUxqZDB1TlpJeVdZUzV2?=
 =?utf-8?B?YmRyN3I0SThSeHpNL0ZDZ0VFdGgyMGdKdGJ4ajV2Vi9qdU1BNXFiUTA4Q0dJ?=
 =?utf-8?B?OVorUnBIcWlvM0ErR1pPT1daVXk5SHVmdzNzRHBxc0NmQzRRRVRNQzA4bGV6?=
 =?utf-8?B?ZGx5S1RuU1hCbjcwU1VIbG1XMlpvYlFlMi9NUnUra2JZUllRTW43SW9WNTAx?=
 =?utf-8?B?TE9VdDA1dmJnVTZyRDExOGZiWTh2NWZRQ2ZIakNHSzk2bzFKcDZoODExejhv?=
 =?utf-8?B?cE5OdUU1cHY1YW5xeVgxV0xnd1d5UHdxZVJxU01zSHhualVMaml4MjVSbUxS?=
 =?utf-8?B?TFVZN2RjR05LSHJjVnJwYy9vVmJhQ3lHWXdzMFFSSU91ZTJEZkxudTJXaEFX?=
 =?utf-8?B?ZVFIWm8vb081cjZzd2ltUnhYdTVLRFo0elo5N3pXRXZ5ZllOOEF2cCtzWmYy?=
 =?utf-8?B?UGdkQWFQSWlNbWJLZGFLelBWYlNRdGhKL0hMVGU3bFNHbVlSUjBiR3h6VEE4?=
 =?utf-8?B?RGwrN2t0aFRTb0tBQzA0Nm16RlhwM0tMZ1dxdFIvcHJ0MzRZd2l1Nkc2VWRn?=
 =?utf-8?B?c1lJaUt0bGljMFltN0JXWmcvQzNRWE1Fek9VNzBvVDFhUDI1ZG5jam5UVWVH?=
 =?utf-8?B?YWU4VWdOUU5vSFVCa1gyRnQ1RGdkQnRGOGFPUFB2UDRoK085RVpubE1McjM5?=
 =?utf-8?B?Ry83Szczb28raFpLeWxYRzhqNzl6bXBReDNrekErbUJmR3Nhc0RZYmVSQ29U?=
 =?utf-8?B?alRLOHdJRnhtT0FPeThTQ1VEUkRxU01zSGwyQ056cno5bmFKb1BBcE11Z0VS?=
 =?utf-8?B?ZHFLNkFLam9tWjZvT3hjMkRUOG9VaEd1d285Q3Nha0RoQjh6VnMyVy9GTnJY?=
 =?utf-8?B?cmpad1IrWHp3K243UnphbFM5bnFJUjJBQlFCcHpXcGRXUHRFczNDSm16c2VI?=
 =?utf-8?B?cjJkZWFPcnZkN1dzeFpRcUdsSHREcXZhbkVwQStyZjlnMjZEdVVOeHpXeDg1?=
 =?utf-8?B?VUlSeUhSVTBocDBMWmo3c25WYXo0OW8xS2w3TVZ1WEtoQjZMS1RsLzdKa05Q?=
 =?utf-8?B?MGlOSkRsU1J5TitYNG5RR2t6Uko0NEVneC81cXJPbkkvOSt1MjhYNW84VThP?=
 =?utf-8?B?bTdsWVdEZ21hdmlMZXRuN29waGFWMDU1WS8rbXNtblpmWVVpZU4vUVNUTUJy?=
 =?utf-8?B?Tnp0Ykk1TXNadU1ua1piUVhyR05icmlBZ2w4UUxxZ1d6MEFvczF0anlTaWxa?=
 =?utf-8?B?UUhybG1tUERTdFRCblBWQmQ1bUU2RVFxcFhFTjJMYktLQTMvaDVuZk9ZdzJv?=
 =?utf-8?B?R1gwZmpVMEZtbEw2a0NvYU1CU0RmNDU4MWdYVGRxdkxzS0ZTUWQvNW5rYmpk?=
 =?utf-8?B?MmIrV2RJcVFKeWg4elBUVHZKSTZWN3RkSnhDeTFMVFBDVFZYN0srSXBKZi9n?=
 =?utf-8?B?L3BWcFNDTnNqVEpkbWFQd1ZDS2s0Q3RyQWJQbFNNOHdSVmZYZWplSXRTU0ow?=
 =?utf-8?B?RnJDZ05zSTNGci9CNS9RYXFzU0czb2QxRDM3Z3c4QzJGS0VFQjBMVys3MTly?=
 =?utf-8?B?c2pJNVJ6SGZOYzk5L1NETFZWVm84VURSNnBQdUl4WnhiSzk4WWNMY1ZlOEVE?=
 =?utf-8?B?YXNLK042aWMxUjV6YzBPRVl2bFRGaVd3bmFDTWU1ZGtOcnZQb3RvVE81U0tt?=
 =?utf-8?B?dXFkYmhabXBWZXBMZzRWN1BNYUFVTDgydzNjL2ZyaDJWM3VCWkJSUEczZjQ0?=
 =?utf-8?B?YWRIVmU0QWdnbGlVb2xBMm5VNFNKZDhDU2J0ZjVhUk01UTllaTM3MmduMHZm?=
 =?utf-8?B?NmNpTzZLYUhKMlhnK0ExWmpHQ1VjZTdmRUdZQU5wSFZURkRhMGxrQmxiWnh5?=
 =?utf-8?B?V3dLemVDYzduQTVMVHBNa0dFSk9EZ0w2WUVEU0pScEpQNVJTMkdiYzVYZTAy?=
 =?utf-8?B?MzFxcmRjR0lyWm9VQ1hTanJTQ25FU2RjRWdGUTRFR2JIcUVFb1gyajBlakdG?=
 =?utf-8?Q?ZnEvxnop+lO/3RSbGMM3Euo=3D?=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: ZRAP278MB0237.CHEP278.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 62b9101e-0353-4759-2c57-08daf92ff341
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jan 2023 08:42:36.5947
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hg5qL1Xpqe2zw9NW7+1J+iTHcZytTWepsXDhIh3XFZzRPhq0EPsvRtwCYnvPPExxrsP/TR6W6cJz7v4XXveQb+rFOA2gD67QBk1xd98Npdg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVAP278MB0151
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: toradex.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-ID: <46E57BAA2D89C44BB92C199EFE0D3784@CHEP278.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

T24gV2VkLCAyMDIzLTAxLTE4IGF0IDA0OjA3ICswMTAwLCBNYXJlayBWYXN1dCB3cm90ZToNCj4g
VGhlIFZTRUxFQ1QgcGluIGlzIGNvbmZpZ3VyZWQgYXMgTVg4TVBfSU9NVVhDX0dQSU8xX0lPMDRf
X1VTREhDMl9WU0VMRUNUDQo+IGFuZCBub3QgYXMgYSBHUElPLCBkcm9wIHRoZSBib2d1cyBzZC12
c2VsLWdwaW9zIHByb3BlcnR5IGFzIHRoZSBlU0RIQw0KPiBibG9jayBoYW5kbGVzIHRoZSBWU0VM
RUNUIHBpbiBvbiBpdHMgb3duLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogTWFyZWsgVmFzdXQgPG1h
cmV4QGRlbnguZGU+DQoNClJldmlld2VkLWJ5OiBNYXggS3J1bW1lbmFjaGVyIDxtYXgua3J1bW1l
bmFjaGVyQHRvcmFkZXguY29tPg0KDQo=


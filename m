Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3612C54B858
	for <lists+devicetree@lfdr.de>; Tue, 14 Jun 2022 20:13:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344486AbiFNSNl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Jun 2022 14:13:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245421AbiFNSNX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Jun 2022 14:13:23 -0400
Received: from de-smtp-delivery-113.mimecast.com (de-smtp-delivery-113.mimecast.com [194.104.109.113])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 1033819C10
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 11:13:21 -0700 (PDT)
Received: from CHE01-ZR0-obe.outbound.protection.outlook.com
 (mail-zr0che01lp2104.outbound.protection.outlook.com [104.47.22.104]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 de-mta-39-wrt1mwgYNsu7f_kXWSSBVA-2; Tue, 14 Jun 2022 20:13:19 +0200
X-MC-Unique: wrt1mwgYNsu7f_kXWSSBVA-2
Received: from ZR0P278MB0683.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:3b::9) by
 ZRAP278MB0335.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:2c::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5332.12; Tue, 14 Jun 2022 18:13:17 +0000
Received: from ZR0P278MB0683.CHEP278.PROD.OUTLOOK.COM
 ([fe80::c52f:2a3f:8cf5:6144]) by ZR0P278MB0683.CHEP278.PROD.OUTLOOK.COM
 ([fe80::c52f:2a3f:8cf5:6144%4]) with mapi id 15.20.5332.022; Tue, 14 Jun 2022
 18:13:17 +0000
From:   Marcel Ziswiler <marcel.ziswiler@toradex.com>
To:     "festevam@gmail.com" <festevam@gmail.com>,
        Francesco Dolcini <francesco.dolcini@toradex.com>
CC:     "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "festevam@denx.de" <festevam@denx.de>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>
Subject: Re: [PATCH] dt-bindings: arm: fsl: Decrease the line length
Thread-Topic: [PATCH] dt-bindings: arm: fsl: Decrease the line length
Thread-Index: AQHYgBSwU2YQtZQMsk6FIo0Lpm2nw61PMq+AgAAB/oA=
Date:   Tue, 14 Jun 2022 18:13:17 +0000
Message-ID: <4eb690b04f0c051af4fb7dd164370dff029f4fa9.camel@toradex.com>
References: <20220614173206.2885817-1-festevam@gmail.com>
         <20220614180609.GA350285@francesco-nb.int.toradex.com>
In-Reply-To: <20220614180609.GA350285@francesco-nb.int.toradex.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f5d3a616-5be1-48d0-6d4c-08da4e318e74
x-ms-traffictypediagnostic: ZRAP278MB0335:EE_
x-microsoft-antispam-prvs: <ZRAP278MB033579DF1BDAB85670C3E3C2FBAA9@ZRAP278MB0335.CHEP278.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0
x-microsoft-antispam-message-info: aAy5A3bpcuS4+LfGZlvbvwiNQ3wRxkZu4GBnNIxio7Lf13UVOJ2PnhDu0GH9c2mcthv3s7do5vgpbTFFKt6zj/jeagxuYBuTJI8VzPTaKpds25MHwccX+n6iXqTZ9/bFKLToASNLFxqBzoF9f16IJuYnrlTIQzCZzvBe/a5nzvf57G5Yo56zshF7jdV6rbJfMgX0VQ6OFnBT4HAioCrY64eHnMXSdmgXlI2aoe3zBkt1OTVi9KQ9CgzLSmxcsFNph9SbdNDQSlIx8ykm7lb3etivf+LAgsSAfNS7hS6TBsri40ZwrEUwj8+L0c4tda6N+Naamli+Yqk4BJvhd7+VVnYSex1lueI4Iy/pQjcOPE56t52RMsgNKncdE/5kUtZWwLoYQWj//x5fxIhtT0+mtwwWP+9P/Kjbndg0uM25znsbN4KWUUx0l9qR4QxZR6yu0/xBne076NmTSjp9gzIk1KELs/hxKCJn8W1/eEsce6yQHA5piwy41W5iCqTwNYveOms5/W2ina37tN4UxyjCKyVgEtyGuCywuwrxZp8mO/rh300YeyCKqiW13JpRmemU/Uo76+Ulkt4VdyiqPS9DI5ggRsWFOFzGu1TXlavgCpuQLC6SpOdd38WZaX5qBw4XbgvTehE2fqpoMNN3N4GAHLVAcGGNM3lvIF8/PBLivxFnDjD4bPrV/wufGssg8DV6DfN6rj0hLsYfX20pjEot2g==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ZR0P278MB0683.CHEP278.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(346002)(366004)(136003)(39850400004)(38100700002)(38070700005)(71200400001)(86362001)(122000001)(6636002)(316002)(6506007)(2616005)(2906002)(6486002)(508600001)(54906003)(110136005)(5660300002)(4326008)(4744005)(44832011)(41300700001)(83380400001)(8676002)(186003)(66556008)(91956017)(66946007)(76116006)(64756008)(26005)(66476007)(8936002)(6512007)(36756003)(66446008);DIR:OUT;SFP:1102
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WGlDZDZnNnJYMGFGSUh1dUpGeUZ5UXFtc0lzeTk1eXVpR0xOWkJrSzZReThU?=
 =?utf-8?B?OUtLWXQxTGhvb3ZScExqeXRYb0RUbHdJaVozTTZqQ0liMkFmYjYzRmdrVE96?=
 =?utf-8?B?MXZGdEtRUmFZZk5Qb0lKamU5Q0IyT0JjZFd4eHU0VXlNVHpVbjVZeTdrRVNu?=
 =?utf-8?B?L05MeHl5allvSzU0OGpNY05KWHFTeGlyWUxMUEpvZXZpOXBySDdyRyt0TE10?=
 =?utf-8?B?SjZUY3Nob0V5WFI5T0R6Z1FZK2w2MXlpUDhTYml3TWFqeis2V3pHeXBUYjZM?=
 =?utf-8?B?WkV5SG5BSnFYY0wyZXBXU0dTaDhWWVRvZVdwTGo3aCtwbGpVQ0RyM2dRQWMw?=
 =?utf-8?B?Um5NSzNqQ28vZWVYaTNxQ25XNUxMQWRpeEJlVjk4YUlzMnNZcDhCaGJYbTFD?=
 =?utf-8?B?TlpmRVluTkNuemFFSEFiRXlWV2NCczFxRXgwcmVtc1kvQzRCN0V5ejlhNkpP?=
 =?utf-8?B?NXpNalNkc0Rtd3QvTnhaVXFxZmt2dmY1a2lpTlVzSXo3VmZXb3pLYkVCZHBo?=
 =?utf-8?B?aDhzdmJoQzFXMEFaaHB5VmxwS0tlZ1JmZGRjVjlTNkRocVk4enFlR2JQVXFG?=
 =?utf-8?B?TkVQZjB6cEhNZEZDcTVSZTJoeDdzZmszeEtnK1g0S3dvdURYMldCSUsvZVlH?=
 =?utf-8?B?dUZoWnJqMGl2ZU9aVDRRU1R3UGRkSFRqcjFTMmJiNGNjeENhVkNzSHlZTDQ2?=
 =?utf-8?B?d2xKWDJXQW0xSVVHWkJQV1BiSEpXRitxS2ErdU5aak9ZZVZUWXoyL2hPRnFY?=
 =?utf-8?B?N1crOUJORjJQR1ZZNHFMUzIvQVh6VkZLQUhlY3lMSjJheUxPZ0N3Q3JnNFZE?=
 =?utf-8?B?a1JWQzlXZVQ2L21MeHFJTWwxemhrb1I2SmFSelpybDJEUk4yNlB1aTNSZ3Ix?=
 =?utf-8?B?R2lodENyNGEyZmpPeFBDV3dEOHc2MDZOc3BpKzBnWTlhV2ZmL0RDVEQ4N3FJ?=
 =?utf-8?B?T2xNeG5PbWsyK1U1eEsyWUxiUHBHSTFzU0lDR29oeXQvc2poZE1ZRzhYNnRX?=
 =?utf-8?B?SjBYTE9teVpWNXo0bnlNUlg4S3VlNDd6aXF5dldGVU0xN0ZOb09abEw2RmY3?=
 =?utf-8?B?Q2hPT0RzMHlvV2VVSXNpSlAveW4wbFRqc0JPVlJ6dllvY2kvWVdKczJvVWlF?=
 =?utf-8?B?SmlBc2hxbmc0b25oNTVva2tnbUJJN1lYRFBPK3M5c3RoRVIyZ1lkNXhFN3I4?=
 =?utf-8?B?dWxwS2ZnR0UrQklPemE5akJEL0J3TEdyUWc4QWZldXNrcFlUV1JsRlIyK0ly?=
 =?utf-8?B?Q3FNT01nUUJGVjdKb2Nkc0FvRk9mNmE1NjdnRXNuNVdxZ3d2SnZ3aFBQR1Ja?=
 =?utf-8?B?T2R3OVRHN2hWREpwYlVhMFF5TDFyZ2Iyc2FMZG0rdFc1SWh4OW4vUC9kbWNk?=
 =?utf-8?B?RCtqS1ZNbDBSL2Z3RTMyaGxHcDdZN3pmVGhZM1g5VVlsMU9XTDd0eTlJWUt0?=
 =?utf-8?B?VHZnKzMrcnBRVS9BalhqVWpJTjVEVzc3OCtSUHozTmdKYTROTmtyeTBHL2Q2?=
 =?utf-8?B?R0ZpMGkyRHFoRVJraWJwVkFrZlhiMXZhM0lSMEh1NWxkQ1FnT1RpUytsZlFN?=
 =?utf-8?B?V3lGVUw2TTBHeng1WGFQdFYwbG5VTEVHL1doY0NDbERTaFdTTTlDZG9Gbk5i?=
 =?utf-8?B?cEZpS2R1UnJ4R2JpaDFjNS9ySmxLb1pxZmxIVVNaM1IzK2JHUXdVQVQ1dk1G?=
 =?utf-8?B?dWYvWGtNUWxDamxzMlRVYktUMFRQaFByWUgxOVRMZEpDbHVrbUtPbUplcHgx?=
 =?utf-8?B?Z29kTlNiSUZ3ZmVPTTgvbnlVMmtuTzJsQnl0MHFFdENSTW9menpNd1dxNmh0?=
 =?utf-8?B?QktvdmtNNEh5c1Rsb2hvMEw5dk1HMGN2TmJ5VmpaVGJHaXRRWE5xYUJBS1R5?=
 =?utf-8?B?UmJvMjBwRkE2RlBxTExzYm9UeHU5YVBVaGZJQS9aNmlDN2RVSTIzQ290SzZs?=
 =?utf-8?B?bkdTUk0yL2lEbitwTU13ckxxbTF1ZUpBS01nRjFnTFNjTllDSHBWa2RUeVM1?=
 =?utf-8?B?Rm5RVmRiYWpVbTJzaE4yZjVGaFVYTGxKR3FLOHFaaGxqRXN1cnR6NEdMbmxD?=
 =?utf-8?B?OUhocGl3RHdRY3JtSXArSUUrdVhzRlZ4aHNFQXNRVmZPMkVkOWcxZEFydlVD?=
 =?utf-8?B?aGQrOUFMblB2bytHaU5vbkU3bjFEUGpUaUcvTTUxaHJOVDJEMS9LQjd3NmJs?=
 =?utf-8?B?OWhIS0kyUDFYL1dqSzJ4bC9DZ3R0dDArd3k4RmFsVkZUdnVIN0MwdCtha3Br?=
 =?utf-8?B?VU9vZFJuRVZsQ2NMVzJzU09Fa1E2YzdXK0RhQVV6MTJoTWg3MHlBYjRHSUdS?=
 =?utf-8?B?bDgrTHdhNXJRR2M0Y1I2UUx0RkYvRTV0dnhKY09lVHpnVE1tYStBM1JXV2Rn?=
 =?utf-8?Q?N6UL3XFlhCcXfH7kA6lKkwYHn8Xuu6JwBVRpY?=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: ZR0P278MB0683.CHEP278.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: f5d3a616-5be1-48d0-6d4c-08da4e318e74
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2022 18:13:17.6237
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8SzABfjE8hW0YlzFJ7gjMXUi4gOknq44QqmghEjPeiMphrPeZBTlubuKIEdWrLXEipUcKZ7jMxWRDk1SEu1fuFwWIsUEJOshIgSyoTymwAc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ZRAP278MB0335
Authentication-Results: relay.mimecast.com;
        auth=pass smtp.auth=CDE13A77 smtp.mailfrom=marcel.ziswiler@toradex.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: toradex.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-ID: <1AA8F255F2CBEF4083CA7001C6076736@CHEP278.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

T24gVHVlLCAyMDIyLTA2LTE0IGF0IDIwOjA2ICswMjAwLCBGcmFuY2VzY28gRG9sY2luaSB3cm90
ZToNCj4gVGhhbmtzIEZhYmlvIQ0KDQpZZWFoLCBzb3JyeSBhYm91dCBoYXZpbmcgbWlzc2VkIHRo
YXQgb25lLiBJIHdhcyBqdXN0IGFib3V0IHRvIHNlbmQgYSBmaXggYnV0IHlvdXJzIGxvb2tzIGZp
bmUgYXMgd2VsbC4gVGhhbmtzIQ0KDQo+IE9uIFR1ZSwgSnVuIDE0LCAyMDIyIGF0IDAyOjMyOjA2
UE0gLTAzMDAsIEZhYmlvIEVzdGV2YW0gd3JvdGU6DQo+ID4gRnJvbTogRmFiaW8gRXN0ZXZhbSA8
ZmVzdGV2YW1AZGVueC5kZT4NCj4gPiANCj4gPiBEZWNyZWFzZSB0aGUgbGluZSBsZW5ndGggb2Yg
dGhlIHRvcmFkZXgsY29saWJyaS1pbXg2dWxsLWVtbWMgYm9hcmRzDQo+ID4gdG8gZml4IHRoZSBm
b2xsb3dpbmcgYnVpbGQgd2FybmluZzoNCj4gPiANCj4gPiAuL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9hcm0vZnNsLnlhbWw6Njg0OjExMTogW3dhcm5pbmddDQo+ID4gbGluZSB0
b28gbG9uZyAoMTExID4gMTEwIGNoYXJhY3RlcnMpIChsaW5lLWxlbmd0aCkNCj4gPiANCj4gPiBG
aXhlczogYmIwZmExNTMzNzE1ICgiZHQtYmluZGluZ3M6IGFybTogZnNsOiBjb3JyZWN0IDFnIHZz
LiAxZ2IgaW4gdG9yYWRleCxjb2xpYnJpLWlteDZ1bGwtKiIpDQo+ID4gUmVwb3J0ZWQtYnk6IFJv
YiBIZXJyaW5nIDxyb2JoK2R0QGtlcm5lbC5vcmc+DQo+ID4gU2lnbmVkLW9mZi1ieTogRmFiaW8g
RXN0ZXZhbSA8ZmVzdGV2YW1AZGVueC5kZT4NCj4gDQo+IFJldmlld2VkLWJ5OiBGcmFuY2VzY28g
RG9sY2luaSA8ZnJhbmNlc2NvLmRvbGNpbmlAdG9yYWRleC5jb20+DQoNClJldmlld2VkLWJ5OiBN
YXJjZWwgWmlzd2lsZXIgPG1hcmNlbC56aXN3aWxlckB0b3JhZGV4LmNvbT4NCg==


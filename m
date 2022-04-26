Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0682A510B10
	for <lists+devicetree@lfdr.de>; Tue, 26 Apr 2022 23:14:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346450AbiDZVRN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Apr 2022 17:17:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244733AbiDZVRM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Apr 2022 17:17:12 -0400
X-Greylist: delayed 349 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 26 Apr 2022 14:14:02 PDT
Received: from de-smtp-delivery-213.mimecast.com (de-smtp-delivery-213.mimecast.com [194.104.109.213])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 6FBC275E4D
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 14:14:02 -0700 (PDT)
Received: from CHE01-ZR0-obe.outbound.protection.outlook.com
 (mail-zr0che01lp2110.outbound.protection.outlook.com [104.47.22.110]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 de-mta-36-Of2aBGSpPZqNUyYCrxPcQQ-1; Tue, 26 Apr 2022 23:07:08 +0200
X-MC-Unique: Of2aBGSpPZqNUyYCrxPcQQ-1
Received: from ZR0P278MB0683.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:3b::9) by
 GV0P278MB0637.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:40::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5186.13; Tue, 26 Apr 2022 21:07:07 +0000
Received: from ZR0P278MB0683.CHEP278.PROD.OUTLOOK.COM
 ([fe80::dd15:e6d7:a4d0:7207]) by ZR0P278MB0683.CHEP278.PROD.OUTLOOK.COM
 ([fe80::dd15:e6d7:a4d0:7207%7]) with mapi id 15.20.5186.021; Tue, 26 Apr 2022
 21:07:07 +0000
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
Subject: Re: [PATCH] arm64: dts: imx8mm: Add CPLD on MX8Menlo board
Thread-Topic: [PATCH] arm64: dts: imx8mm: Add CPLD on MX8Menlo board
Thread-Index: AQHYWagr52g6aRuzPkGyoaQAZWsSEa0Cr9uA
Date:   Tue, 26 Apr 2022 21:07:07 +0000
Message-ID: <156aa1805a0e38f67d36abbefa7163a8fada8baf.camel@toradex.com>
References: <20220426195901.252611-1-marex@denx.de>
In-Reply-To: <20220426195901.252611-1-marex@denx.de>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a7c2be65-d966-4ed9-6a5b-08da27c8b8de
x-ms-traffictypediagnostic: GV0P278MB0637:EE_
x-microsoft-antispam-prvs: <GV0P278MB0637E18C8CEFE8A1D08DBE4EFBFB9@GV0P278MB0637.CHEP278.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0
x-microsoft-antispam-message-info: 6TP9FMjGol8k1pu9owWEBceyT9cD5vtztKxB410Z7waJLfNO5ZeeVHjAvF4QHZJ5TMBRMYvIT5te/oPHXyUuLrng4pCh/8DLxF0vstU80yfteFZJpCAKu5z8o3hlwkuD+RmkJISEtxJHhdJuwNseOO5pTrmThOVNfRnUVROuCdlEFm5i4LkYtijI+tc65PhTagCm3lkjf2OzeQSQJwrkJmU/TC3xjxAlXWBwlQK6W08bVGn2Lc5uMGDhKu+eD6fgcdbhWHcmJM9s4M0YwYqTW9NW1KpZXjBUlGLn1kYFWlPuHWrRgrAWt0QI0CPdcO3RKZ9XgXxoNjPqge5Fi14ydgO5Z2oSPFLzedUrA5IIWgpuLdsCLgnwbNJzqQqSpARVlfO9YAq9ecOTlH3vVWNWpG7ozjvCYmY8k/KZsON3pyWfEgn3QmNe0dpDNMmagIy6CnzdI8/semPslcmV6xg3G2KP+84h1VKSMhyU9oOhJ1X0o4U8xiu3Feh3mAa5mSGy8KgC05io+a4n+LI6ygB+ISUzO1TIMaKOl+aW+llxspSp3LulJ8HTZSewoLykfTpqfr63ZSNNKsuqfq6K2Zea/+QF/g4UGSICHC2hpZ1kZhmykZcUG/I1QTaDxXC6OfSaomkLoWgZ2i72V65JBXoHy3p5io7BZP0Icr8Ck2TU8BNl4LTIjYtDDzz5zffT3Q9iyijoxbF7FL+rOSNI34fOqfbMlF7iXrRFsr3sOeNLFxIDkuZ1dqfLyyl1tY0OCKSocWu2VLYM6U7J6wp0xlhlbwM9DX2a5xLMfvT7F/KNfT0DljdNkDIX/MCWA6ZejQJp
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ZR0P278MB0683.CHEP278.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(4636009)(346002)(396003)(376002)(136003)(366004)(39840400004)(36756003)(6486002)(966005)(316002)(6506007)(2616005)(26005)(8676002)(2906002)(508600001)(122000001)(6512007)(110136005)(44832011)(54906003)(5660300002)(71200400001)(66946007)(66446008)(66556008)(76116006)(64756008)(66476007)(4326008)(86362001)(38070700005)(38100700002)(8936002)(186003)(83380400001)(32563001);DIR:OUT;SFP:1102
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aDdGQVRyRGJUYmFEWHo4TVdVTGg3RDYrSWdBRlVsREovSm1XRXFCSnlJR1Y1?=
 =?utf-8?B?bGRaZlNDYlM2MnM1MGFVT2lpaWQ4aUtWdGhRT1REY3ZKUmtmSW52c3lSaGlB?=
 =?utf-8?B?NkkwRzRMcUt1K1RzTmZ0c1pQdEdjUDlWa0drUUJaUTkwYUhvcTFoU0wyaDJE?=
 =?utf-8?B?UmhsQjk1ZklmZXkrZlVpbTM0V0YwUlorUkFTR29iQ3lkenpKS0l4OERvYndh?=
 =?utf-8?B?V0NLc3BHclpvbTFGS3NIQll2a0R4UFZmKzJsb3NXS0MzSkQrNEhUR0x6K0Fh?=
 =?utf-8?B?VXU0R1lxbkNEczhFMXRySFFDU1FkVzUwRVVvWi9aR2FhbXVPWU9QQ1p3RnI3?=
 =?utf-8?B?RzVPeDl0NU9YUkUzME5lcjBQRzIzOEo0UitrcUNBYWhaanFySVBpWElmQ2Nz?=
 =?utf-8?B?WFo2MDdQWTZ1WXZGR21JdUh3VG41dUhQaEpHYmNoREoxOGxpYUxLaGtGUjVl?=
 =?utf-8?B?V3lrWU5LWFZ1dncyMVlrMzh3bEY2REtrWE1RY004Q3ZNdmhIYmFlU2VTUVY0?=
 =?utf-8?B?dndYMnUrb3NJaU9HTDJUY1B5UVZ2bXczeWord0swYlI5cktEamJ6bnZRKzNU?=
 =?utf-8?B?dE1QbnlidzZCTWVkRkVuUEtVOWFiUUxXREdLM3pNMWYxZWYyVkFRbDVZU3F4?=
 =?utf-8?B?V2lQODNJODZYczRzaFp0TllpM1plUGNjUzJQSTI5blJuMG9wMzdkeDBldTBQ?=
 =?utf-8?B?aktBMmp2eDRzeDltRDRnRlg2V2hnR2h0azdIdWFMTnZxeGdCUm03aDZHanR5?=
 =?utf-8?B?Q3B4RENRYndrR3F1Z1lsemdTbWJKMVFFa3k3dDJxam96LzUrUzgrU3lEUGRF?=
 =?utf-8?B?VmdxMHRVR1VDbVRwSDU3blBBbkVyMlVGRXRDY2UxOHdTKy9LN2l4MXdMQ1hD?=
 =?utf-8?B?WmxSeVI5azdBVVdzSWg2TVFyVjVPNzV6QUtTMFJwS3BrWHBRdHJnVzRxaGNh?=
 =?utf-8?B?R0pWZjRIVmtPelpsMDhwLzhtclRvdkFqMTVjSkMyU1BwZlhsS09QWGV4ejVw?=
 =?utf-8?B?dnQvNTVHSno3azlTeHB0NXM2WCtUODZyQUZaeTg0K1JiSHF4MHZYL1pwcC8v?=
 =?utf-8?B?cEozUm1qQmJNNU1VamZWeVd1VWNjTFNGQy9UTllVS05SNDczcUp2NnR1TE1p?=
 =?utf-8?B?SWUxczliTCs0cmdkSnJyWThRN3pXZ0ROL0FYZDIxc0lGZHZoRnBnWnR2WFk5?=
 =?utf-8?B?bzRYMVNlR2VYdFZyNjZxazg1c25jWTB6UUQySXk3TTBMMmpBK0ZqV1RSWlJH?=
 =?utf-8?B?QnhYMU5IRnFXY3NMeTJTWEtCNUNWRnJtb0pLNk1KUGc1OEZzdFZHUjV3S003?=
 =?utf-8?B?bmNqdDF0WTlRcUJRQmJITFloNGV2NGpiRWx4N05CQ0lGRGlnS21xbkN1Mmdn?=
 =?utf-8?B?ci94UE03dnNRZEVpN2NzZmxnY2JhRVE4Y3JGOHAxdDZMaC9KY1NyZGtjZlhu?=
 =?utf-8?B?aTdLakhoOC9pd3NVSElodDIzeTRvTWJnelY4YlhXanYzTWltSS82RW8wYVIw?=
 =?utf-8?B?eUtCVldHRXdxMnFyYmg1K0hSSksyeXlrMGVuRDNEUmVsbE84Nm1STWZsU1lo?=
 =?utf-8?B?SWlwWDdmaGJoV3pkUUJ6RXQxaWV3NmJJc3owTkZIdVVXcEVhQVNCQjU0R3cr?=
 =?utf-8?B?R1dTbnJ5UmVtS3hCL2ZOOXF2TnZRK2tLeVJlNjdOMzBtNTM4VlQ0eXVxVVpz?=
 =?utf-8?B?MzVJeG16TTlXMmNkUTVlbUQyekNHMUFSZTVCSWFObjlVbk9aSHBHUXJCR09Q?=
 =?utf-8?B?MUNydFVuUmFYVGRBN0gxVG1ycGpQTm9LS2FzY2hSSmtQZW11SkZnRlEza0Fm?=
 =?utf-8?B?RFJheWcycDNSSUlULzREZ1dTZk9GNVVkZExGS3VKVjQyQ1NoMk5Ub0hhMXEx?=
 =?utf-8?B?RkVZeWtHOGhlc2tmL2x3emdIeE1LUURMSVByUk1HVFpqSWdyK21DUDZzUDYx?=
 =?utf-8?B?UkFxN1FRVWlCWG03ZW1WM1VlbElkdHFoeGYyV2NJVTNFbGRHblQ1aFNRQkkx?=
 =?utf-8?B?a1BxUGJoTjJERS9GKzRucnhHSThoNGtxZnJBWGZEOEFTUUkyY0FxY0xPTzdY?=
 =?utf-8?B?TE4wTHhzOVdUeVhFWEZ2ZUgyUE5kNVpHcFNoRXcvdUZZRnNyZ0hzWDN4ait0?=
 =?utf-8?B?eXFJQmFMRWJheGFoeFJqRUN4R215L0pDZGt1dGxQZG92VkFDQnl4N1ppRCtP?=
 =?utf-8?B?V3h0bkV3RzlsWVYrRmYxTXMrdG4vQmRLMHpKUEJtMUtMZXhHeDdVeWsxUWdV?=
 =?utf-8?B?K3dpN1BlK0FQbzAydjRSaFdxYzhDVmdXMzVFV3NDRkxzbHhGVFlmdGVnZGZX?=
 =?utf-8?B?d2JWYjdEQU8wRWt5MUF2RFhuWGFyby9Qakt2czc0TTUwdG45bnFSTkNYV21n?=
 =?utf-8?Q?Zg/lc4w4jkcp08d1Ya9IvUnAUcOnnYGFV9SLI?=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: ZR0P278MB0683.CHEP278.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: a7c2be65-d966-4ed9-6a5b-08da27c8b8de
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Apr 2022 21:07:07.4561
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XY1FdqVLitEgfqmevMpg6hr/MNKFEmVBLU/k5VkvtSgGncKwI1h0UncztS7R7KsAJAFIEDea6nD2X1q17nhwP5RnTK7leSDwmmSGgIKoJkc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV0P278MB0637
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: toradex.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-ID: <DA73E1144FCED24F8A61BE029BD59049@CHEP278.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

T24gVHVlLCAyMDIyLTA0LTI2IGF0IDIxOjU5ICswMjAwLCBNYXJlayBWYXN1dCB3cm90ZToNCj4g
VGhlIENQTEQgb24gTVg4TWVubG8gYm9hcmQgaXMgdXNlZCB0byBvcGVyYXRlIGN1c3RvbSBoYXJk
d2FyZSwNCj4gdGhlIENQTEQgY29udGVudCBpcyBjb21wYXRpYmxlIHdpdGggcHJldmlvdXMgTTUz
TWVubG8gQ1BMRCwNCj4gYWRkIHRoZSBiaW5kaW5ncy4NCg0KTG9va3MgbGVnaXQgKDstcCkuDQoN
Cj4gU2lnbmVkLW9mZi1ieTogTWFyZWsgVmFzdXQgPG1hcmV4QGRlbnguZGU+DQoNClJldmlld2Vk
LWJ5OiBNYXJjZWwgWmlzd2lsZXIgPG1hcmNlbC56aXN3aWxlckB0b3JhZGV4LmNvbT4NCg0KPiBD
YzogRmFiaW8gRXN0ZXZhbSA8ZmVzdGV2YW1AZGVueC5kZT4NCj4gQ2M6IE1hcmNlbCBaaXN3aWxl
ciA8bWFyY2VsLnppc3dpbGVyQHRvcmFkZXguY29tPg0KPiBDYzogUGVuZyBGYW4gPHBlbmcuZmFu
QG54cC5jb20+DQo+IENjOiBSb2IgSGVycmluZyA8cm9iaCtkdEBrZXJuZWwub3JnPg0KPiBDYzog
U2hhd24gR3VvIDxzaGF3bmd1b0BrZXJuZWwub3JnPg0KPiBDYzogTlhQIExpbnV4IFRlYW0gPGxp
bnV4LWlteEBueHAuY29tPg0KPiBDYzogZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmcNCj4gVG86
IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZw0KPiAtLS0NCj4gTk9URTogRGVw
ZW5kcyBvbg0KPiDCoMKgwqDCoMKgDQo+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9s
aW51eC9rZXJuZWwvZ2l0L3JvYmgvbGludXguZ2l0L2NvbW1pdC8/aD1mb3ItbmV4dCZpZD1iNjFi
NzZkZmVmMzA5NDVmMTc1ZDRhY2ZlY2I5YmViODYyMTc0ZjAxDQo+IC0tLQ0KPiDCoGFyY2gvYXJt
NjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtbS1teDhtZW5sby5kdHMgfCAxNSArKysrKysrKysr
KysrKy0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQ0KPiANCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDht
bS1teDhtZW5sby5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bW0tDQo+
IG14OG1lbmxvLmR0cw0KPiBpbmRleCBjMjBkYjBjNTUwZGEuLjkyZWFmNGVmNDU2MyAxMDA2NDQN
Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1tLW14OG1lbmxvLmR0
cw0KPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bW0tbXg4bWVubG8u
ZHRzDQo+IEBAIC03MSw3ICs3MSwyMCBAQCBjYW5mZDogY2FuQDAgew0KPiDCoCZlY3NwaTIgew0K
PiDCoMKgwqDCoMKgwqDCoMKgcGluY3RybC0wID0gPCZwaW5jdHJsX2Vjc3BpMiAmcGluY3RybF9n
cGlvMT47DQo+IMKgwqDCoMKgwqDCoMKgwqBjcy1ncGlvcyA9IDwmZ3BpbzUgMTMgR1BJT19BQ1RJ
VkVfTE9XPiwgPCZncGlvMyA0IEdQSU9fQUNUSVZFX0xPVz47DQo+IC3CoMKgwqDCoMKgwqDCoHN0
YXR1cyA9ICJkaXNhYmxlZCI7DQo+ICvCoMKgwqDCoMKgwqDCoHN0YXR1cyA9ICJva2F5IjsNCj4g
Kw0KPiArwqDCoMKgwqDCoMKgwqBzcGlkZXZAMCB7DQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBjb21wYXRpYmxlID0gIm1lbmxvLG01M2NwbGQiOw0KPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgcmVnID0gPDA+Ow0KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgc3BpLW1heC1mcmVxdWVuY3kgPSA8MjUwMDAwMDA+Ow0KPiArwqDCoMKgwqDCoMKgwqB9Ow0K
PiArDQo+ICvCoMKgwqDCoMKgwqDCoHNwaWRldkAxIHsNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoGNvbXBhdGlibGUgPSAibWVubG8sbTUzY3BsZCI7DQo+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqByZWcgPSA8MT47DQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBzcGktbWF4LWZyZXF1ZW5jeSA9IDwyNTAwMDAwMD47DQo+ICvCoMKgwqDCoMKgwqDCoH07
DQo+ICsNCj4gwqB9Ow0KPiDCoA0KPiDCoCZldGhwaHkwIHsNCg==


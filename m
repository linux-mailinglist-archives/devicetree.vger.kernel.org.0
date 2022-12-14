Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 621C564C3C0
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 07:23:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237071AbiLNGXX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 01:23:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53646 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229464AbiLNGXV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 01:23:21 -0500
Received: from de-smtp-delivery-113.mimecast.com (de-smtp-delivery-113.mimecast.com [194.104.109.113])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF4AC21E00
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 22:23:19 -0800 (PST)
Received: from CHE01-GV0-obe.outbound.protection.outlook.com
 (mail-gv0che01lp2043.outbound.protection.outlook.com [104.47.22.43]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 de-mta-54-viwdX2s7NHS52qj-h169IQ-1; Wed, 14 Dec 2022 07:22:13 +0100
X-MC-Unique: viwdX2s7NHS52qj-h169IQ-1
Received: from ZR0P278MB0683.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:3b::9) by
 GV0P278MB0050.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:1d::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5924.11; Wed, 14 Dec 2022 06:22:11 +0000
Received: from ZR0P278MB0683.CHEP278.PROD.OUTLOOK.COM
 ([fe80::ace5:84e5:2754:a1fa]) by ZR0P278MB0683.CHEP278.PROD.OUTLOOK.COM
 ([fe80::ace5:84e5:2754:a1fa%2]) with mapi id 15.20.5924.011; Wed, 14 Dec 2022
 06:22:11 +0000
From:   Marcel Ziswiler <marcel.ziswiler@toradex.com>
To:     "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "hongxing.zhu@nxp.com" <hongxing.zhu@nxp.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>
CC:     "linux-imx@nxp.com" <linux-imx@nxp.com>,
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
Subject: Re: [PATCH 1/4] dt-bindings: soc: imx8mp-hsio-blk-ctrl: add clock
 cells
Thread-Topic: [PATCH 1/4] dt-bindings: soc: imx8mp-hsio-blk-ctrl: add clock
 cells
Thread-Index: AQHZDwwmORCeDczlHkmCERDzdS01Sq5s4iMAgAAIjoA=
Date:   Wed, 14 Dec 2022 06:22:11 +0000
Message-ID: <b94b30174661f3d56ee535bd8e80f23e0e2a7e13.camel@toradex.com>
References: <20221213160112.1900410-1-l.stach@pengutronix.de>
         <AS8PR04MB86764B14D25C555AC048223C8CE09@AS8PR04MB8676.eurprd04.prod.outlook.com>
In-Reply-To: <AS8PR04MB86764B14D25C555AC048223C8CE09@AS8PR04MB8676.eurprd04.prod.outlook.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: ZR0P278MB0683:EE_|GV0P278MB0050:EE_
x-ms-office365-filtering-correlation-id: 7119e8a6-6683-48cf-db09-08dadd9b8903
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0
x-microsoft-antispam-message-info: IxT7/k3vf5xYv9SUe1tGywFdSyzuPAJg+OUFB+eF/ciJfLnZradvQWZiWqCYCLbFkg8qiWnKffpVZ/v1EO5u4WxH1mKOZ2KNlP6aKYUwFWZ5/pxgQPN6O5ZbbRzmICudakpYJJbYDaFglIp/CbjVfStAAR2iZh1T35mwqtUpXQFYR1kxcNb2ZG+9HfV2pfQZgfVngDN6wprT4cQjjkHZzB8kB3kzQdx4EXWN1Z4q4Db4hajdCxZITfeusqmVg4qoKM41idyaYyWS0Iv16oEn4pwWMAwQ4d35aQUZ15aLmdBAEtyNgaK3N6fNSxqRGs8R7ARa0NdvviZ87UygbnhRFWUscw4rHkiiJ3jIvKupQ4nW+rmIse6gkSvt3YIywR9ZEGS5T1JnxVKJIoKwa4XuLBP5fXkZye80kl0Kbdt+mjYqDCIWmfDadSKW+oP0Wt4bCGDiDC+iyQJKHVLaK8RKI7przjV63yCzX+CImn+xLBd2wdRwb7cza/LQeQjlzdxS8T05nailgnaeMWI33WcVZ7Q59UeJhGYXJCPKa8RZRw5ekwtK3cgQxZ2jB0XH2IcawFSDcL2JfCwIdAqPG8jnij9gfMsmps4NzlaAXBn4jF0awXgDXI3HQ/HgsDxhQAvh1CrjARucmQHT2ohD8q3VMOtiunHTE548ePb7wCDLXesErrsbqZuLFv0ilOPQNBxvyi1s7F46CzJsTzPU7B8ADjxiLCutN4ACLf0MztmH2+Q8UK5lK8zYzi/50RwySIlUKn2QZaCzr1JQ2i1ndEqtJd4yt+WLu9qQIqn/qQjBzUE=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ZR0P278MB0683.CHEP278.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39850400004)(346002)(136003)(366004)(396003)(376002)(451199015)(83380400001)(86362001)(2616005)(38100700002)(38070700005)(122000001)(2906002)(4001150100001)(8936002)(44832011)(7416002)(5660300002)(186003)(41300700001)(26005)(478600001)(6486002)(966005)(6512007)(6506007)(53546011)(71200400001)(91956017)(76116006)(66946007)(66556008)(66446008)(64756008)(8676002)(4326008)(66476007)(316002)(110136005)(54906003)(36756003)(32563001);DIR:OUT;SFP:1102
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M01lejhqZTA4L2JLMUNlSnVvSW4wQkJaNWR1WE1BRzR1Tk0zbGtLdkVlQ1Ru?=
 =?utf-8?B?QlJpbDYwU0FSVTVPSUNHczBySEdOUy85ZXU1L3ZNR0NEV3FRUDljcm44d0kr?=
 =?utf-8?B?MTBGK0thd0l0MndLTW9yekxjeXBSanMyQ3hqVDlISGd3WkdZN3o0V1hxRTNa?=
 =?utf-8?B?M1N0Q1RhaG82T29VSmhoOWw0dHN6ME9KZ1RuOUUwc1U2MUtBVkorcFZyTXJz?=
 =?utf-8?B?RThkZU1sSkYwUmdIR3pUWDlvWEZsM0VYbzFCWHBadFM2RDlDSWZmNGxmb0JS?=
 =?utf-8?B?cyt5OTNWSmxJR1BkSENvb2NFTkhPNlZXRjRldS9SREVLa0tUWFd5UVpYZGlw?=
 =?utf-8?B?RW1BdElpNW4rckFwZU5NRlFqQmFTN09WbFRrUTZFWEx4SVhoWXpjU09JREw0?=
 =?utf-8?B?YjgzeXZFTUJ0SjdCays5RmoveHZwNWtvK2Y4NWI0MjVjYTVmSE1RVFVkOHNp?=
 =?utf-8?B?WFdtUWs0VFh1cE1TLytCZ2xFU1ZxUWI5MENOblZvblo5dEtGdEFpbHZyL1Y4?=
 =?utf-8?B?VDkySklhaWtPcWk2aWRNWWNhdVJWb0txaW1DWVArZGpIcHQ3NjE0MWpmbUh3?=
 =?utf-8?B?OWJkTVUwK3JCL291Q2FkMExnYzdra0VhczJocjJsdElIdzYveTBkbFVqUW9Y?=
 =?utf-8?B?NkNqS1N4QTJIcWJFRkw0NFh0a1BMSHg0cHBuaTQwemVodjFjMERqVzlJdEo3?=
 =?utf-8?B?VU5MRjRmVDN4S29XcTJKQzdXR0pMZHhzK0RSUUVPblB3azZNOXBsSVNBQ21B?=
 =?utf-8?B?OGhBRGVkRlUyUWMrRHh2YUpHemxya1psV3o1RTV5UmpjclRpb3hYbTdsOHBF?=
 =?utf-8?B?UEVrYU03MEFpKy9PbEUwdFpqWnR0eTNNNUg1M1JzcTFROWM5MTgzVmUvbTBE?=
 =?utf-8?B?bVdYQlV3a2hmV0ltQWpuVWdPTWVhazZIWU5KMGk3Zjd6bVMzb0NCM2NKMHlm?=
 =?utf-8?B?NEg0R0dPSUFqOHE3QUJvMHFKaHlYOXlGTUpHOUxPS0VkbUdiUnhSTkpnOVFU?=
 =?utf-8?B?WmZZc3RYZkxBTnMvditmL1ZLVy9aQWd5TnFKSEN2c2cwWUY1d2dPNEFDaGhG?=
 =?utf-8?B?Y0E1NnlTdHdzYVpGbG5yb083bW5oRm9icG8rODY4YmFkR0xvK0hqeDJOU3dl?=
 =?utf-8?B?eVBjQ3QxTXRMMXRtTGRqdWpoUUNYdkN0NDdNZFlIZjJUNVZjczI3QTdUUmhv?=
 =?utf-8?B?cTIwb0FkcGtsWEtlakloZHEwZ2ZJNkEzandCMXNBUEZma3IyTlBZSXYxV2xm?=
 =?utf-8?B?anFSMjFKZVhmeDlOOHUxQ200SlpKQyt6R1U0ZjB0RWdIRnVBR1lXbVZVMWNB?=
 =?utf-8?B?emlIMVFaUlZOak1DU284L20wUFBJbFdkeVZKVWV3QzY1WXhHTGRSMFZSYXFy?=
 =?utf-8?B?QmtOSm1UczZDNXQweXgxRmhCbVlBc3diNUNWYVlDU3VURGVuaHpjR3YrcExx?=
 =?utf-8?B?WW85MXhvMi8yckVwMDJRM1J6VTduNXJselNyTHYyVEZ4ZTFIMXZnelNNNk9u?=
 =?utf-8?B?VEdXOXQvUnlJNlFlWXpzRGMwVHdhZHFyS0lvYnRZaEVuaUZweEhEQldocWN2?=
 =?utf-8?B?UkFEa09rdEpzbHpwYnNTMzNCQ3lMNjBkbXVMM3dNM2pwTXNudnlsWHk1Tmll?=
 =?utf-8?B?ZWFwSWpJaHBrdDVmMTVEQVl3V2FHVStITThFeEdkSXhiaEtwYlJhd0MxdUpQ?=
 =?utf-8?B?OXBzZzFST24vaVRITlZTV3pSSllvMjhKMmNiTHowNDIwTjlQOEhNT2dnWU54?=
 =?utf-8?B?ZkkwUWVyZG5kRDNOT0R0NkdHL2t2WEd5ZUliQmpJVXNSQmhuK0pJRE9iZlJr?=
 =?utf-8?B?L25sZmJQOFJONm5VcE9jUW82KzN4U2czd1ZBK1hNQ0pxVDB2OVQyM2taVlUw?=
 =?utf-8?B?TEdoeElHSFY5RDQ3Ry82VnN3M25QSXBaczE5WXBzeC9zQ3l1S2d1cjhyaE1W?=
 =?utf-8?B?ZExra3MvVWpZd2JSakUwTENUa2JlSElXVlpzZjZucmlCeWZPKzNDcHR3K09p?=
 =?utf-8?B?M2NBQTFVS2tHc0NYWEtTeDRPSUhYTkc3cEVzbVB2NWtDQ1JwckUrbS90QlRF?=
 =?utf-8?B?dmlHVUswUUVURjM1S0xkNzlnM0xWYWRMSnhxQ0twYWcxeXlNNVdkVlk5Wm5B?=
 =?utf-8?B?UzNTTHlDQkdTTUhGSTJFa0dyU3E2WC84Q2c1dXpUbVRodEw4T2dRZFdDa0VI?=
 =?utf-8?Q?DH2sNlchwhbEWlexksuclwM=3D?=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: ZR0P278MB0683.CHEP278.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 7119e8a6-6683-48cf-db09-08dadd9b8903
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2022 06:22:11.4278
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8Ls6f3xX9Ml2HYmuis6u/5E28mNc5IpxR+izWOUhgrM9/bVlg4Fr3qXNDQxUpDosvw5plgvBLx5WYeWSB1rngysSF3fLew5qN2zIF/rmVSE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV0P278MB0050
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: toradex.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-ID: <2FB76E89977B2F4688EB37F2C1E39B0D@CHEP278.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

T24gV2VkLCAyMDIyLTEyLTE0IGF0IDA1OjUxICswMDAwLCBIb25neGluZyBaaHUgd3JvdGU6DQo+
IEhpIEx1Y2FzOg0KPiBUaGFua3MgYSBsb3QgZm9yIHlvdXIgaGVscCBhYm91dCB0aGlzIHNlcmll
cy4NCj4gDQo+IFNob3VsZCB0aGUgY2xvY2tzIG9mIHRoZSBwY2llX3BoeSBzaG91bGQgYmUgY2hh
bmdlZCBhcyBiZWxvdyB3aGVuIGludGVybmFsDQo+IMKgUExMIGlzIHVzZWQgYXMgUENJZSByZWZl
cmVuY2UgY2xvY2sgb24gaS5NWDhNUCBFVksgYm9hcmQ/DQo+IC0tLSBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvZnJlZXNjYWxlL2lteDhtcC1ldmsuZHRzDQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvZnJlZXNjYWxlL2lteDhtcC1ldmsuZHRzDQo+IEBAIC0zNzAsNyArMzcwLDcgQEAgJmkyYzUg
ew0KPiANCj4gwqAmcGNpZV9waHkgew0KPiDCoMKgwqDCoMKgwqDCoCBmc2wscmVmY2xrLXBhZC1t
b2RlID0gPElNWDhfUENJRV9SRUZDTEtfUEFEX0lOUFVUPjsNCj4gLcKgwqDCoMKgwqDCoCBjbG9j
a3MgPSA8JnBjaWUwX3JlZmNsaz47DQo+ICvCoMKgwqDCoMKgwqAgY2xvY2tzID0gPCZoc2lvX2Js
a19jdHJsPjsNCg0KWWVzLCBleGFjdGx5LiBTZWUgZS5nLiBhbHNvIFsxXS4gQnV0IGRvbid0IGZv
cmdldCB0byBhbHNvIGNoYW5nZSB0aGUgZnNsLHJlZmNsay1wYWQtbW9kZSB0bw0KSU1YOF9QQ0lF
X1JFRkNMS19QQURfT1VUUFVUICg7LXApLg0KDQpbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
YWxsLzIwMjIxMjE0MDYxMzU0LjE3NDA3Mi0xLW1hcmNlbEB6aXN3aWxlci5jb20vDQoNCj4gwqDC
oMKgwqDCoMKgwqAgY2xvY2stbmFtZXMgPSAicmVmIjsNCj4gwqDCoMKgwqDCoMKgwqAgc3RhdHVz
ID0gIm9rYXkiOw0KPiDCoH07DQo+IA0KPiBCZXN0IFJlZ2FyZHMNCj4gUmljaGFyZCBaaHUNCj4g
DQo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBMdWNhcyBTdGFjaCA8
bC5zdGFjaEBwZW5ndXRyb25peC5kZT4NCj4gPiBTZW50OiAyMDIy5bm0MTLmnIgxNOaXpSAwOjAx
DQo+ID4gVG86IFJvYiBIZXJyaW5nIDxyb2JoK2R0QGtlcm5lbC5vcmc+OyBLcnp5c3p0b2YgS296
bG93c2tpDQo+ID4gPGtyenlzenRvZi5rb3psb3dza2krZHRAbGluYXJvLm9yZz47IFNoYXduIEd1
byA8c2hhd25ndW9Aa2VybmVsLm9yZz47DQo+ID4gSG9uZ3hpbmcgWmh1IDxob25neGluZy56aHVA
bnhwLmNvbT4NCj4gPiBDYzogZGwtbGludXgtaW14IDxsaW51eC1pbXhAbnhwLmNvbT47IFBlbmd1
dHJvbml4IEtlcm5lbCBUZWFtDQo+ID4gPGtlcm5lbEBwZW5ndXRyb25peC5kZT47IE1hcmNlbCBa
aXN3aWxlciA8bWFyY2VsLnppc3dpbGVyQHRvcmFkZXguY29tPjsNCj4gPiBtYXJleEBkZW54LmRl
OyB0aGFydmV5QGdhdGV3b3Jrcy5jb207IGFsZXhhbmRlci5zdGVpbkBldy50cS1ncm91cC5jb207
DQo+ID4gcmljaGFyZC5sZWl0bmVyQGxpbnV4LmRldjsgbHVrYXNAbW50cmUuY29tOyBwYXRjaHdv
cmstbHN0QHBlbmd1dHJvbml4LmRlOw0KPiA+IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnOyBs
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcNCj4gPiBTdWJqZWN0OiBbUEFUQ0gg
MS80XSBkdC1iaW5kaW5nczogc29jOiBpbXg4bXAtaHNpby1ibGstY3RybDogYWRkIGNsb2NrIGNl
bGxzDQo+ID4gDQo+ID4gVGhlIEhTSU8gYmxrLWN0cmwgaGFzIGEgaW50ZXJuYWwgUExMLCB3aGlj
aCBjYW4gYmUgdXNlZCBhcyBhIHJlZmVyZW5jZSBjbG9jayBmb3INCj4gPiB0aGUgUENJZSBQSFku
IEFkZCBjbG9jay1jZWxscyB0byB0aGUgYmluZGluZyB0byBhbGxvdyB0aGUgZHJpdmVyIHRvIGV4
cG9zZSB0aGlzDQo+ID4gUExMLg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIFN0YWNo
IDxsLnN0YWNoQHBlbmd1dHJvbml4LmRlPg0KPiA+IC0tLQ0KPiA+IMKgLi4uL2RldmljZXRyZWUv
YmluZGluZ3Mvc29jL2lteC9mc2wsaW14OG1wLWhzaW8tYmxrLWN0cmwueWFtbCB8IDQgKysrKw0K
PiA+IMKgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQ0KPiA+IA0KPiA+IGRpZmYgLS1n
aXQNCj4gPiBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb2MvaW14L2ZzbCxp
bXg4bXAtaHNpby1ibGstY3RybC55YW1sDQo+ID4gYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3Mvc29jL2lteC9mc2wsaW14OG1wLWhzaW8tYmxrLWN0cmwueWFtbA0KPiA+IGluZGV4
IGMyOTE4MWE5NzQ1Yi4uMWNjN2MyYmRmMmJiIDEwMDY0NA0KPiA+IC0tLQ0KPiA+IGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy9pbXgvZnNsLGlteDhtcC1oc2lvLWJsay1j
dHJsLnlhbWwNCj4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc29j
L2lteC9mc2wsaW14OG1wLWhzaW8tYmxrLWN0cmwNCj4gPiArKysgLnlhbWwNCj4gPiBAQCAtMzks
NiArMzksOSBAQCBwcm9wZXJ0aWVzOg0KPiA+IMKgwqDCoMKgwqDCoCAtIGNvbnN0OiBwY2llDQo+
ID4gwqDCoMKgwqDCoMKgIC0gY29uc3Q6IHBjaWUtcGh5DQo+ID4gDQo+ID4gK8KgICcjY2xvY2st
Y2VsbHMnOg0KPiA+ICvCoMKgwqAgY29uc3Q6IDENCj4gPiArDQo+ID4gwqDCoCBjbG9ja3M6DQo+
ID4gwqDCoMKgwqAgbWluSXRlbXM6IDINCj4gPiDCoMKgwqDCoCBtYXhJdGVtczogMg0KPiA+IEBA
IC04NSw0ICs4OCw1IEBAIGV4YW1wbGVzOg0KPiA+IMKgwqDCoMKgwqDCoMKgwqAgcG93ZXItZG9t
YWluLW5hbWVzID0gImJ1cyIsICJ1c2IiLCAidXNiLXBoeTEiLA0KPiA+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgInVzYi1waHkyIiwg
InBjaWUiLCAicGNpZS1waHkiOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqAgI3Bvd2VyLWRvbWFpbi1j
ZWxscyA9IDwxPjsNCj4gPiArwqDCoMKgwqDCoMKgwqAgI2Nsb2NrLWNlbGxzID0gPDA+Ow0KPiA+
IMKgwqDCoMKgIH07DQo+ID4gLS0NCj4gPiAyLjMwLjINCg==


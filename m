Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3E10D64C390
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 06:42:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229549AbiLNFmI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 00:42:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229446AbiLNFmH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 00:42:07 -0500
Received: from de-smtp-delivery-113.mimecast.com (de-smtp-delivery-113.mimecast.com [194.104.109.113])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 773F221E3F
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 21:42:05 -0800 (PST)
Received: from CHE01-ZR0-obe.outbound.protection.outlook.com
 (mail-zr0che01lp2108.outbound.protection.outlook.com [104.47.22.108]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 de-mta-41-AQALh5hgMGqgxb3TzIR6LQ-1; Wed, 14 Dec 2022 06:42:00 +0100
X-MC-Unique: AQALh5hgMGqgxb3TzIR6LQ-1
Received: from ZR0P278MB0683.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:3b::9) by
 ZRAP278MB0961.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:4a::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5880.19; Wed, 14 Dec 2022 05:41:58 +0000
Received: from ZR0P278MB0683.CHEP278.PROD.OUTLOOK.COM
 ([fe80::ace5:84e5:2754:a1fa]) by ZR0P278MB0683.CHEP278.PROD.OUTLOOK.COM
 ([fe80::ace5:84e5:2754:a1fa%2]) with mapi id 15.20.5924.011; Wed, 14 Dec 2022
 05:41:58 +0000
From:   Marcel Ziswiler <marcel.ziswiler@toradex.com>
To:     "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "hongxing.zhu@nxp.com" <hongxing.zhu@nxp.com>
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
Thread-Index: AQHZDwwmORCeDczlHkmCERDzdS01Sq5s33SA
Date:   Wed, 14 Dec 2022 05:41:58 +0000
Message-ID: <53510b6ca3a72f88b42cbcde458a549c941d36d3.camel@toradex.com>
References: <20221213160112.1900410-1-l.stach@pengutronix.de>
In-Reply-To: <20221213160112.1900410-1-l.stach@pengutronix.de>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: ZR0P278MB0683:EE_|ZRAP278MB0961:EE_
x-ms-office365-filtering-correlation-id: d6d72f5d-881f-464a-8034-08dadd95eac2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0
x-microsoft-antispam-message-info: zssjIjPNVk/OS+CaE7gmGT8VVP9+4TirKxZRtFJ6kLjQ6GDzifo6h8klNTqdZU+zG0tnDPVAebyuvDTvgDicVa64kZQELkxOQM/C+3CRX8YF9pt5OJmwjWNEi1NDx0nJK3OX8Gb7F5YDnOFBpl6bayS7siod7IPvLXiE3K+4v5hF+Hm8P3HQ9Z0NTzg5qo6LBokf5c2e326HqS8vRwZh2p3O69RloLEmC0+JIlGsxtxIkPOo1bH2xujEfC7Kpx2BI7S+dCAZ6l8MwUeXrmxhf/ax0M3kaZCX31kvAd5jOiVXA3OoGOurz5XgeXntHcUSavcFSTQhE8mwv/SjvHd5IqHl4Yw6o7j15cSjgY5VfxJ3oHrB6I6uT2MDBZD00vPvRijo98hWmIdK0y0S0H85BHx7dIDzbO8ngieG37NXVUUYRx76NgK/4PjAcC5PKMJKt3ZCjpP+qqW+O1Q6Ha4xwtG9dYGbMNpYe9HT+tfPERe8MuawLXD4NHGZJ960d1kFDfYrBs1XQ8+EJ72hJT+tQgZK3ufYaDmPbDm50q8netVmzVL5VlEb8QCTOOt4oORHfIWLLecRkbHyfZOerQvZEZMrMaiQ71XMgnLYT4qBS8U8gfhGfGmofGB4N+J+jStGxjzZAD3pHQrJueXUS6zh5MAT9BI65Ws7B/IymADEiPZoLvonTDEULDI/1GNQCfhV+TyqX9bdSh/b+qIQFSKnUBQX5vtEX3jNglHnAXWdkvk=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ZR0P278MB0683.CHEP278.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(346002)(39850400004)(376002)(396003)(136003)(451199015)(36756003)(38070700005)(41300700001)(8936002)(71200400001)(86362001)(6486002)(478600001)(122000001)(38100700002)(5660300002)(110136005)(66946007)(2616005)(186003)(66476007)(7416002)(4001150100001)(83380400001)(4326008)(76116006)(6512007)(91956017)(66446008)(54906003)(44832011)(8676002)(6506007)(64756008)(66556008)(26005)(2906002)(316002)(32563001);DIR:OUT;SFP:1102
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OTF3TEI3dUxDU3pOVHFQU0hlVlVvVlMzZHhwcmo2dFJuVGhORVFvVHpaOUdL?=
 =?utf-8?B?U2NQMmRmaks3VWFhNVZpL2E1OGNWL09tR0c1emdicGxkYVp4Mlg1Wld2TzV0?=
 =?utf-8?B?Mjd5SEdGUjNYcC9pK2pBc09JL1R2aURNckQ1L2N0ak5sbWRNRlp5a05xdTVs?=
 =?utf-8?B?Yi9CeEFKcE94bmxkamNxbnY5RmZRVC9GY0M2bnR2VTFGb3RlT29sYnpLNjlD?=
 =?utf-8?B?b3dtbWhXcEZhV3pYTmozYnQxKytIVi9pMzR4S0pHWW4zVVptUG9yaGZFeU5C?=
 =?utf-8?B?TWdGRUdFU2x3ZWRqb1dEQ0tqNjhoeTN5VVFPWXQyemxteWgvZk9Kdk92M25D?=
 =?utf-8?B?RnlyaWJuUDBha2hwT1lkUXlwN3RrRmJDNHU2SjBXTTR4RndWei9EQVV6WFJV?=
 =?utf-8?B?TTFHbVBNQlZ5VVRmeE5XVVR5OVJNMVBwZitVSDdLM0hnRHhSVzI1VU9Oa0JC?=
 =?utf-8?B?ZG44Nnd4MnBoczhHY0tPVUFLbjZ4cytRMWxTZUVObWdBeGE3UG5WM0ViMzIy?=
 =?utf-8?B?UzVjSTRYb3BMZnUzTnZ3Q3ovYnhFUFhBWDJKTkVoZXllOGVkNGJEZzBZbmQx?=
 =?utf-8?B?TW9DSEQ4ZGlxc3gxcTJVQzRFTjBHMERKR2FHZmtnbGpxUGRLRXVsK2hFcTlW?=
 =?utf-8?B?V2JBQTBqUHpwNnBYa3U0ZFVGeHJyL1VDUWNJcGpVbU9STzg4T0VRK01DL0hT?=
 =?utf-8?B?SVpNNTUvbm1TVG0zOW5YL1FteVgrcXZxL1hwNWpZRGJWY2gvWC9yOE9BT0c1?=
 =?utf-8?B?WHRXa2FvOFBaQnpoWEdrY0FNcEFoOFdOcmFRbjdTb1hhbXZSeXpsK0p3S2xE?=
 =?utf-8?B?Ny9LSnN5NjBBam9NTEVQRU1VNzlCSnNuUjVYYmkwaTh1SmVMVDRWcEw4bXcz?=
 =?utf-8?B?SVFTK2FsSXZvWGpJSWZEWUpFdGZuMzhZQmlXaFVQM0wxUnZUQy85cjNiTW5P?=
 =?utf-8?B?UGlXYk4yUml6elZOY1hoZm1Wcm92OE00NlNvM0ZqdC8veDlMTC91WWhTMFAy?=
 =?utf-8?B?bURPSHZ3YTRvZlpnVGJEeW5sZ2tiVXhibXJxeHNMbjlrdHN3RkNpUkdNcTJQ?=
 =?utf-8?B?RmZpMTY0dG50V2NTbnZzYkE5YW5hbHk4TU5Ma3lvNlZVT2N0enlFYTVJQ1VP?=
 =?utf-8?B?bWJjbTdLdldvRno2aEs2Si9RYmdWNDAxOTFJSXFhcTBwUnNkb2U5VUFIQXZK?=
 =?utf-8?B?VnVneEJBYkVRcy83cStnOUVTNXBlU1NyZVI5ZDNPa3VicG1qM1UwanNmU0wx?=
 =?utf-8?B?RXV1Rm1JdHlaY3IrdFAvUzBCOFFRdjlmRHZHZ25WYUpKMTlFenpUMUNZWW1Q?=
 =?utf-8?B?d2poeDZ1bDZoelZ6WWQzSGpFcFB0aWlFL0w5NmZSL1IrVnVKV0tQaHRWTTQ3?=
 =?utf-8?B?TnltbHBna3lkTCthWEorUk5TQ3JlRXVkeTJuWGEvZlZGYW5FeCtaa3lBbDBH?=
 =?utf-8?B?MDdTTjNrRjFpVGJkcy9FbHcrNFhQK1o4WlE5NFltdi9iMk5QUUJNR1NWWC93?=
 =?utf-8?B?OENUbkVta1RWRW1LQVJlNmV4R2owckVsbGROZVl1WExuUmdkUnlPamM4OXNv?=
 =?utf-8?B?SFJMVGFmZXJrU2E2cFNQZDJ1OEtISkQ0cVE3V0g1NlByVGQvVGlJWkMvWWZn?=
 =?utf-8?B?SDlJUEhJdzV6cktHVVdGemprMDJHdFV6c3FkMGZkd2s5MTY4QU9sdHZROVBp?=
 =?utf-8?B?VUg2cmUzbnlLTkpoVzhzWDdWTXpTTEVqUFNzaWk5MkQrdkRtOGpQa1hqWTE4?=
 =?utf-8?B?ZGRNbTBYRG1KTUpMUUJnTVdqckZ2bjZMZWNVUWV5bk5ZN09Wa2NEc2Zsd1Nn?=
 =?utf-8?B?UWVwTUFuTVRZZzBDOTl3Z2lKRitvY0Rvd01zNFZNekRpc3gwN2ZOUElLeHpW?=
 =?utf-8?B?WXVXUGkxYzM1cE12T0YrYWZ4alVJZGtGdlBGUUQ3SWsyRVVESlJjamo1ZWw1?=
 =?utf-8?B?OHh5QmJXOFlVRWFJOCtSR095VVRmRDZIWStmclhpU2syaVJtTGFmYUtpT1NT?=
 =?utf-8?B?TXZvRWRsTFNPcDB3YzRSeWd0TnRGdnlibWgvditXY1E0TXRyNEEzQk05QlNv?=
 =?utf-8?B?MVFTaS9VWlQ1VkNwTnU5cUYzTmNoYXgvZDNhM3hFek5XUEJZVVdDVzF1eHZY?=
 =?utf-8?B?VXVXZjZsN2NPdnZIN1BSTnZyYWExOVBIMTl1aVVmODZoc2Zkd01OQ3VBdkdT?=
 =?utf-8?Q?O15gU4NJrIQzLen+w/AAjjA=3D?=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: ZR0P278MB0683.CHEP278.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: d6d72f5d-881f-464a-8034-08dadd95eac2
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2022 05:41:58.4202
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PLlQmZDARmRGrgAILGnZ5vIizlpNTfAx5Xg8T7NNDXTGfh5e0iHX7gZdlmcpb1fCY1YtBqnVIpg0FsGlue4OULxujLeWYjptWmK8x88strc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ZRAP278MB0961
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: toradex.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-ID: <893EB90D9DB3594B9601A3729D53B9B2@CHEP278.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

U2FsaSBMdWNhcw0KDQpPbiBUdWUsIDIwMjItMTItMTMgYXQgMTc6MDEgKzAxMDAsIEx1Y2FzIFN0
YWNoIHdyb3RlOg0KPiBUaGUgSFNJTyBibGstY3RybCBoYXMgYSBpbnRlcm5hbCBQTEwsIHdoaWNo
IGNhbiBiZSB1c2VkIGFzIGEgcmVmZXJlbmNlDQo+IGNsb2NrIGZvciB0aGUgUENJZSBQSFkuIEFk
ZCBjbG9jay1jZWxscyB0byB0aGUgYmluZGluZyB0byBhbGxvdyB0aGUNCj4gZHJpdmVyIHRvIGV4
cG9zZSB0aGlzIFBMTC4NCg0KTmljZSEgVGhpcyBpbmRlZWQgd29ya3MgZmluZSBvbiBWZXJkaW4g
aU1YOE0gUGx1cyBhcyB3ZWxsLiBUaGFua3MhDQoNCj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgU3Rh
Y2ggPGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU+DQoNCkVudGlyZSBzZXJpZXM6DQoNClRlc3RlZC1i
eTogTWFyY2VsIFppc3dpbGVyIDxtYXJjZWwuemlzd2lsZXJAdG9yYWRleC5jb20+DQoNCj4gLS0t
DQo+IMKgLi4uL2RldmljZXRyZWUvYmluZGluZ3Mvc29jL2lteC9mc2wsaW14OG1wLWhzaW8tYmxr
LWN0cmwueWFtbCB8IDQgKysrKw0KPiDCoDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykN
Cj4gDQo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc29j
L2lteC9mc2wsaW14OG1wLWhzaW8tYmxrLWN0cmwueWFtbA0KPiBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9zb2MvaW14L2ZzbCxpbXg4bXAtaHNpby1ibGstY3RybC55YW1sDQo+
IGluZGV4IGMyOTE4MWE5NzQ1Yi4uMWNjN2MyYmRmMmJiIDEwMDY0NA0KPiAtLS0gYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc29jL2lteC9mc2wsaW14OG1wLWhzaW8tYmxrLWN0
cmwueWFtbA0KPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc29jL2lt
eC9mc2wsaW14OG1wLWhzaW8tYmxrLWN0cmwueWFtbA0KPiBAQCAtMzksNiArMzksOSBAQCBwcm9w
ZXJ0aWVzOg0KPiDCoMKgwqDCoMKgwqAgLSBjb25zdDogcGNpZQ0KPiDCoMKgwqDCoMKgwqAgLSBj
b25zdDogcGNpZS1waHkNCj4gwqANCj4gK8KgICcjY2xvY2stY2VsbHMnOg0KPiArwqDCoMKgIGNv
bnN0OiAxDQo+ICsNCj4gwqDCoCBjbG9ja3M6DQo+IMKgwqDCoMKgIG1pbkl0ZW1zOiAyDQo+IMKg
wqDCoMKgIG1heEl0ZW1zOiAyDQo+IEBAIC04NSw0ICs4OCw1IEBAIGV4YW1wbGVzOg0KPiDCoMKg
wqDCoMKgwqDCoMKgIHBvd2VyLWRvbWFpbi1uYW1lcyA9ICJidXMiLCAidXNiIiwgInVzYi1waHkx
IiwNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCAidXNiLXBoeTIiLCAicGNpZSIsICJwY2llLXBoeSI7DQo+IMKgwqDCoMKgwqDCoMKg
wqAgI3Bvd2VyLWRvbWFpbi1jZWxscyA9IDwxPjsNCj4gK8KgwqDCoMKgwqDCoMKgICNjbG9jay1j
ZWxscyA9IDwwPjsNCj4gwqDCoMKgwqAgfTsNCg==


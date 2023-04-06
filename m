Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 34C8B6D8D71
	for <lists+devicetree@lfdr.de>; Thu,  6 Apr 2023 04:28:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234707AbjDFC2U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Apr 2023 22:28:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229504AbjDFC2U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Apr 2023 22:28:20 -0400
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DDF0B6EAF
        for <devicetree@vger.kernel.org>; Wed,  5 Apr 2023 19:28:18 -0700 (PDT)
Authenticated-By: 
X-SpamFilter-By: ArmorX SpamTrap 5.77 with qID 3362RjzF6020968, This message is accepted by code: ctloc85258
Received: from mail.realtek.com (rtexh36506.realtek.com.tw[172.21.6.27])
        by rtits2.realtek.com.tw (8.15.2/2.81/5.90) with ESMTPS id 3362RjzF6020968
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=OK);
        Thu, 6 Apr 2023 10:27:45 +0800
Received: from RTEXDAG01.realtek.com.tw (172.21.6.100) by
 RTEXH36506.realtek.com.tw (172.21.6.27) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.17; Thu, 6 Apr 2023 10:28:04 +0800
Received: from RTEXMBS04.realtek.com.tw (172.21.6.97) by
 RTEXDAG01.realtek.com.tw (172.21.6.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.7; Thu, 6 Apr 2023 10:28:04 +0800
Received: from RTEXMBS04.realtek.com.tw ([fe80::b4a2:2bcc:48d1:8b02]) by
 RTEXMBS04.realtek.com.tw ([fe80::b4a2:2bcc:48d1:8b02%5]) with mapi id
 15.01.2375.007; Thu, 6 Apr 2023 10:28:04 +0800
From:   =?utf-8?B?Q1lfSHVhbmdb6buD6Ymm5pmPXQ==?= <cy.huang@realtek.com>
To:     Krzysztof Kozlowski <krzk@kernel.org>,
        "afaerber@suse.de" <afaerber@suse.de>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        =?utf-8?B?SmFtZXMgVGFpIFvmiLTlv5fls7Bd?= <james.tai@realtek.com>
Subject: RE: Subject: [PATCH v1 1/2] dt-bindings: arm: realtek: Add Realtek Pym Particles
Thread-Topic: Subject: [PATCH v1 1/2] dt-bindings: arm: realtek: Add Realtek
 Pym Particles
Thread-Index: AQHZY8sCnVOhc5XBRyW/krUBnOKpN68dlbSQ
Date:   Thu, 6 Apr 2023 02:28:04 +0000
Message-ID: <534e59f31c154adf92a0f7258358de06@realtek.com>
References: <9511f256edfd41aea7e9910879df3a1b@realtek.com>
 <7ae0f3e8-38be-4cc1-a068-424819067526@kernel.org>
In-Reply-To: <7ae0f3e8-38be-4cc1-a068-424819067526@kernel.org>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.190.137]
x-kse-serverinfo: RTEXDAG01.realtek.com.tw, 9
x-kse-antispam-interceptor-info: fallback
x-kse-antivirus-interceptor-info: fallback
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-KSE-AntiSpam-Interceptor-Info: fallback
X-Spam-Status: No, score=0.0 required=5.0 tests=SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SSdsbCByZXNlbmQgd2l0aCBjb3JyZWN0bmVzcywNClRoYW5rcyBhIGxvdCANCg0KQ3kNCl4tLS0t
LU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KXkZyb206IEtyenlzenRvZiBLb3psb3dza2kgPGtyemtA
a2VybmVsLm9yZz4NCl5TZW50OiBGcmlkYXksIE1hcmNoIDMxLCAyMDIzIDg6MTkgUE0NCl5Ubzog
Q1lfSHVhbmdb6buD6Ymm5pmPXSA8Y3kuaHVhbmdAcmVhbHRlay5jb20+OyBhZmFlcmJlckBzdXNl
LmRlDQpeQ2M6IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnOyByb2JoK2R0QGtlcm5lbC5vcmc7
IEphbWVzIFRhaSBb5oi05b+X5bOwXQ0KXjxqYW1lcy50YWlAcmVhbHRlay5jb20+DQpeU3ViamVj
dDogUmU6IFN1YmplY3Q6IFtQQVRDSCB2MSAxLzJdIGR0LWJpbmRpbmdzOiBhcm06IHJlYWx0ZWs6
IEFkZCBSZWFsdGVrIFB5bQ0KXlBhcnRpY2xlcw0KXg0KXg0KXkV4dGVybmFsIG1haWwuDQpeDQpe
DQpeDQpeT24gMzEvMDMvMjAyMyAxMTo1OCwgQ1lfSHVhbmdb6buD6Ymm5pmPXSB3cm90ZToNCl4+
IERlZmluZSBhIGNvbXBhdGlibGUgc3RyaW5nIGZvciBSZWFsdGVrIFJURDEzMTkgUHltIFBhcnRp
Y2xlcyBldmFsIGJvYXJkLg0KXj4NCl4+IFNpZ25lZC1vZmYtYnk6IGN5Lmh1YW5nIDxtYWlsdG86
Y3kuaHVhbmdAcmVhbHRlay5jb20+DQpeDQpeWW91ciBwYXRjaCBoYXMgY29ycnVwdGVkIHN1Ympl
Y3QuDQpePiAtLS0NCl4+DQpePiB2MToNCl4+ICogUlREMTMxOSBTb0MgYW5kIFJlYWx0ZWsgUHlt
UGFydGljbGUgRVZCDQpeDQpeUGxlYXNlIHVzZSBzY3JpcHRzL2dldF9tYWludGFpbmVycy5wbCB0
byBnZXQgYSBsaXN0IG9mIG5lY2Vzc2FyeSBwZW9wbGUgYW5kIGxpc3RzIHRvDQpeQ0MuICBJdCBt
aWdodCBoYXBwZW4sIHRoYXQgY29tbWFuZCB3aGVuIHJ1biBvbiBhbiBvbGRlciBrZXJuZWwsIGdp
dmVzIHlvdQ0KXm91dGRhdGVkIGVudHJpZXMuICBUaGVyZWZvcmUgcGxlYXNlIGJlIHN1cmUgeW91
IGJhc2UgeW91ciBwYXRjaGVzIG9uIHJlY2VudCBMaW51eA0KXmtlcm5lbC4NCl4NCl4+DQpePiBE
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JlYWx0ZWsueWFtbCB8IDYgKysr
KysrDQpePiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspDQpePg0KXj4gZGlmZiAtLWdp
dCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcmVhbHRlay55YW1sDQpe
PiBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcmVhbHRlay55YW1sDQpe
PiBpbmRleCBkZGQ5YTg1MDk5ZTkuLjhkNGU5MmU5ZWI0YiAxMDA2NDQNCl4+IC0tLSBhL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcmVhbHRlay55YW1sDQpePiArKysgYi9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JlYWx0ZWsueWFtbA0KXj4gQEAg
LTU1LDYgKzU1LDEyIEBAIHByb3BlcnRpZXM6DQpePiAgICAgICAgICAgICAgICAtIHJlYWx0ZWss
bWpvbG5pciAjIFJlYWx0ZWsgTWpvbG5pciBFVkINCl4+ICAgICAgICAgICAgLSBjb25zdDogcmVh
bHRlayxydGQxNjE5DQpePg0KXj4gKyAgICAgICMgUlREMTMxOSBTb0MgYmFzZWQgYm9hcmRzDQpe
PiArICAgICAgLSBpdGVtczoNCl4+ICsgICAgICAgICAgLSBlbnVtOg0KXj4gKyAgICAgICAgICAg
ICAgLSByZWFsdGVrLHB5bS1wYXJ0aWNsZXMgIyBSZWFsdGVrIFB5bS1wYXJ0aWNsZXMgRVZCDQpe
PiArICAgICAgICAgIC0gY29uc3Q6IHJlYWx0ZWsscnRkMTMxOQ0KXg0KXldyb25nIHBsYWNlbWVu
dCAtIHRoZXNlIGFyZSBvcmRlcmVkIGJ5IFNvQy4gRG9uJ3QgYWRkIHN0dWZmIGp1c3QgYXQgdGhl
IGVuZC4NCl4NCl4+ICsNCl4+IGFkZGl0aW9uYWxQcm9wZXJ0aWVzOiB0cnVlDQpePg0KXj4gLi4u
DQpePiAtLQ0KXj4gMi4zOS4wDQpeDQpeQmVzdCByZWdhcmRzLA0KXktyenlzenRvZg0KXg0KXg0K
Xi0tLS0tLVBsZWFzZSBjb25zaWRlciB0aGUgZW52aXJvbm1lbnQgYmVmb3JlIHByaW50aW5nIHRo
aXMgZS1tYWlsLg0K

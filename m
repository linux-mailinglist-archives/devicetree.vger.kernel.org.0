Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 00D8D6D1D95
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 12:05:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231468AbjCaKFx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Mar 2023 06:05:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230411AbjCaKFL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Mar 2023 06:05:11 -0400
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0AA5E25540
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 02:59:50 -0700 (PDT)
Authenticated-By: 
X-SpamFilter-By: ArmorX SpamTrap 5.77 with qID 32V9wfkkF003335, This message is accepted by code: ctloc85258
Received: from mail.realtek.com (rtexh36505.realtek.com.tw[172.21.6.25])
        by rtits2.realtek.com.tw (8.15.2/2.81/5.90) with ESMTPS id 32V9wfkkF003335
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=OK);
        Fri, 31 Mar 2023 17:58:41 +0800
Received: from RTEXMBS05.realtek.com.tw (172.21.6.98) by
 RTEXH36505.realtek.com.tw (172.21.6.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.32; Fri, 31 Mar 2023 17:58:58 +0800
Received: from RTEXMBS04.realtek.com.tw (172.21.6.97) by
 RTEXMBS05.realtek.com.tw (172.21.6.98) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.34; Fri, 31 Mar 2023 17:58:56 +0800
Received: from RTEXMBS04.realtek.com.tw ([fe80::b4a2:2bcc:48d1:8b02]) by
 RTEXMBS04.realtek.com.tw ([fe80::b4a2:2bcc:48d1:8b02%5]) with mapi id
 15.01.2375.007; Fri, 31 Mar 2023 17:58:56 +0800
From:   =?utf-8?B?Q1lfSHVhbmdb6buD6Ymm5pmPXQ==?= <cy.huang@realtek.com>
To:     "afaerber@suse.de" <afaerber@suse.de>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        =?utf-8?B?SmFtZXMgVGFpIFvmiLTlv5fls7Bd?= <james.tai@realtek.com>
Subject: Subject: [PATCH v1 1/2] dt-bindings: arm: realtek: Add Realtek Pym Particles
Thread-Topic: Subject: [PATCH v1 1/2] dt-bindings: arm: realtek: Add Realtek
 Pym Particles
Thread-Index: AdljsgRZnVOhc5XBRyW/krUBnOKpNwAATxaQAADdDjA=
Date:   Fri, 31 Mar 2023 09:58:56 +0000
Message-ID: <9511f256edfd41aea7e9910879df3a1b@realtek.com>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.190.137]
x-kse-serverinfo: RTEXMBS05.realtek.com.tw, 9
x-kse-antispam-interceptor-info: fallback
x-kse-antivirus-interceptor-info: fallback
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-KSE-AntiSpam-Interceptor-Info: fallback
X-KSE-ServerInfo: RTEXH36505.realtek.com.tw, 9
X-KSE-AntiSpam-Interceptor-Info: fallback
X-KSE-Antivirus-Interceptor-Info: fallback
X-KSE-AntiSpam-Interceptor-Info: fallback
X-Spam-Status: No, score=0.0 required=5.0 tests=SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

RGVmaW5lIGEgY29tcGF0aWJsZSBzdHJpbmcgZm9yIFJlYWx0ZWsgUlREMTMxOSBQeW0gUGFydGlj
bGVzIGV2YWwgYm9hcmQuDQoNClNpZ25lZC1vZmYtYnk6IGN5Lmh1YW5nIDxtYWlsdG86Y3kuaHVh
bmdAcmVhbHRlay5jb20+DQotLS0NCg0KdjE6DQoqIFJURDEzMTkgU29DIGFuZCBSZWFsdGVrIFB5
bVBhcnRpY2xlIEVWQg0KDQpEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3Jl
YWx0ZWsueWFtbCB8IDYgKysrKysrDQoxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspDQoN
CmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JlYWx0
ZWsueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcmVhbHRlay55
YW1sDQppbmRleCBkZGQ5YTg1MDk5ZTkuLjhkNGU5MmU5ZWI0YiAxMDA2NDQNCi0tLSBhL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcmVhbHRlay55YW1sDQorKysgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JlYWx0ZWsueWFtbA0KQEAgLTU1LDYg
KzU1LDEyIEBAIHByb3BlcnRpZXM6DQrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gcmVh
bHRlayxtam9sbmlyICMgUmVhbHRlayBNam9sbmlyIEVWQg0KwqDCoMKgwqDCoMKgwqDCoMKgwqAg
LSBjb25zdDogcmVhbHRlayxydGQxNjE5DQoNCivCoMKgwqDCoMKgICMgUlREMTMxOSBTb0MgYmFz
ZWQgYm9hcmRzDQorwqDCoMKgwqDCoCAtIGl0ZW1zOg0KK8KgwqDCoMKgwqDCoMKgwqDCoCAtIGVu
dW06DQorwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSByZWFsdGVrLHB5bS1wYXJ0aWNsZXMg
IyBSZWFsdGVrIFB5bS1wYXJ0aWNsZXMgRVZCDQorwqDCoMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6
IHJlYWx0ZWsscnRkMTMxOQ0KKw0KYWRkaXRpb25hbFByb3BlcnRpZXM6IHRydWUNCg0KLi4uDQot
LQ0KMi4zOS4wDQo=

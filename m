Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF5D46D1D94
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 12:05:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231421AbjCaKFv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Mar 2023 06:05:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230195AbjCaKFK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Mar 2023 06:05:10 -0400
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F0E3D4F98
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 02:59:50 -0700 (PDT)
Authenticated-By: 
X-SpamFilter-By: ArmorX SpamTrap 5.77 with qID 32V9wYMM1003118, This message is accepted by code: ctloc85258
Received: from mail.realtek.com (rtexh36505.realtek.com.tw[172.21.6.25])
        by rtits2.realtek.com.tw (8.15.2/2.81/5.90) with ESMTPS id 32V9wYMM1003118
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=OK);
        Fri, 31 Mar 2023 17:58:34 +0800
Received: from RTEXDAG01.realtek.com.tw (172.21.6.100) by
 RTEXH36505.realtek.com.tw (172.21.6.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.32; Fri, 31 Mar 2023 17:58:52 +0800
Received: from RTEXMBS04.realtek.com.tw (172.21.6.97) by
 RTEXDAG01.realtek.com.tw (172.21.6.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.7; Fri, 31 Mar 2023 17:58:50 +0800
Received: from RTEXMBS04.realtek.com.tw ([fe80::b4a2:2bcc:48d1:8b02]) by
 RTEXMBS04.realtek.com.tw ([fe80::b4a2:2bcc:48d1:8b02%5]) with mapi id
 15.01.2375.007; Fri, 31 Mar 2023 17:58:50 +0800
From:   =?utf-8?B?Q1lfSHVhbmdb6buD6Ymm5pmPXQ==?= <cy.huang@realtek.com>
To:     "afaerber@suse.de" <afaerber@suse.de>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        =?utf-8?B?SmFtZXMgVGFpIFvmiLTlv5fls7Bd?= <james.tai@realtek.com>
Subject: [PATCH v1 0/2] Initial RTD1319 SoC and Realtek PymParticle EVB support
Thread-Topic: [PATCH v1 0/2] Initial RTD1319 SoC and Realtek PymParticle EVB
 support
Thread-Index: AdljscjcKzbox/c5Rhi9q7TJDjBIcQAATz6QAADBVWA=
Date:   Fri, 31 Mar 2023 09:58:50 +0000
Message-ID: <04fcca74de384657acbb188007dcd9fd@realtek.com>
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

DQpIaSBBbmRyZWFzLA0KDQpUaGlzIHNlcmllcyBhZGRzIERldmljZSBUcmVlcyBmb3IgdGhlIFJl
YWx0ZWsgUlREMTMxOSBTb0MgYW5kIFJlYWx0ZWsncyBQeW1QYXJ0aWNsZSBFVkIuDQoNCnYxOg0K
KiBSVEQxMzE5IFNvQyBhbmQgUmVhbHRlayBQeW1QYXJ0aWNsZSBFVkINCg0KQ2M6IG1haWx0bzpk
ZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZw0KQ2M6IFJvYiBIZXJyaW5nIDxtYWlsdG86cm9iaCtk
dEBrZXJuZWwub3JnPg0KQ2M6IEphbWVzIFRhaSA8bWFpbHRvOmphbWVzLnRhaUByZWFsdGVrLmNv
bT4NCkNjOiBBbmRyZWFzIEbDpHJiZXIgPG1haWx0bzphZmFlcmJlckBzdXNlLmRlPg0KDQpjeS5o
dWFuZyAoMik6DQrCoCBkdC1iaW5kaW5nczogYXJtOiByZWFsdGVrOiBBZGQgUmVhbHRlayBQeW0g
UGFydGljbGVzIEVWQg0KwqAgYXJtNjQ6IGR0czogcmVhbHRlazogQWRkIFJURDEzMTkgU29DIGFu
ZCBSZWFsdGVrIFB5bSBQYXJ0aWNsZXMgRVZCDQoNCi4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Fy
bS9yZWFsdGVrLnlhbWzCoMKgwqDCoMKgIHzCoMKgIDYgKyBhcmNoL2FybTY0L2Jvb3QvZHRzL3Jl
YWx0ZWsvTWFrZWZpbGXCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqAgMiArIC4uLi9ib290L2R0cy9y
ZWFsdGVrL3J0ZDEzMTktcHltcGFydGljbGVzLmR0cyB8wqAgMjggKysgYXJjaC9hcm02NC9ib290
L2R0cy9yZWFsdGVrL3J0ZDEzeHguZHRzacKgwqDCoMKgwqAgfCAzNDYgKysrKysrKysrKysrKysr
KysrDQo0IGZpbGVzIGNoYW5nZWQsIDM4MiBpbnNlcnRpb25zKCspDQpjcmVhdGUgbW9kZSAxMDA2
NDQgYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEzMTktcHltcGFydGljbGVzLmR0cw0K
Y3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxM3h4LmR0
c2kNCg0KLS0NCjIuMzkuMA0K

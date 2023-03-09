Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 43E876B1AF9
	for <lists+devicetree@lfdr.de>; Thu,  9 Mar 2023 06:49:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229629AbjCIFtn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Mar 2023 00:49:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229800AbjCIFtf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Mar 2023 00:49:35 -0500
X-Greylist: delayed 303 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 08 Mar 2023 21:49:30 PST
Received: from securemail-r10.synaq.com (securemail-r10.synaq.com [196.35.198.100])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD46C9887B
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 21:49:30 -0800 (PST)
Authentication-Results: synaq.com;
        iprev=fail smtp.remote-ip=164.151.129.207;
        arc=none
Received: from [164.151.129.207] (helo=mx2.saps.gov.za)
        by securemail-pl-omx10.synaq.com with esmtp (Exim 4.95)
        (envelope-from <prvs=8432352b0d=TswaiOE@saps.gov.za>)
        id 1pa97D-000hyJ-5d;
        Thu, 09 Mar 2023 07:46:58 +0200
X-AuditID: c0a82d39-ee3ff70000007cc0-03-6409713e83c0
Received: from V01-06325MAI12.saps.gov.za ( [172.16.100.143])
        by mx2.saps.gov.za (SAPS Messaging Gateway) with SMTP id D4.84.31936.E3179046; Thu,  9 Mar 2023 07:40:14 +0200 (CAT)
Received: from V27-06032MAI11.saps.gov.za (10.101.200.173) by
 V01-06325MAI12.saps.gov.za (172.16.100.143) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Thu, 9 Mar 2023 07:40:13 +0200
Received: from V27-06032MAI10.saps.gov.za (10.101.200.174) by
 V27-06032MAI11.saps.gov.za (10.101.200.173) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Thu, 9 Mar 2023 07:40:12 +0200
Received: from V27-06032MAI10.saps.gov.za ([::1]) by
 V27-06032MAI10.saps.gov.za ([::1]) with mapi id 15.00.1497.012; Thu, 9 Mar
 2023 07:40:11 +0200
From:   "DIV FS:CR&CSM:Nodal Support EHW:Tswai OE" <TswaiOE@saps.gov.za>
Subject: =?utf-8?B?SMOtIFRoxJNyxJMg?=
Thread-Topic: =?utf-8?B?SMOtIFRoxJNyxJMg?=
Thread-Index: AdlKed3E3YepmlHOSNKEGl0Z/A4i8gHYzYXQAAAADZA=
Date:   Thu, 9 Mar 2023 05:40:10 +0000
Message-ID: <5be078d40aa04cc69bf6512e44778879@V27-06032MAI10.saps.gov.za>
Reply-To: "bjarnault1@gmail.com" <bjarnault1@gmail.com>
Accept-Language: en-US, en-ZA
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [192.168.33.233]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
To:     Undisclosed recipients:;
X-Brightmail-Tracker: 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
        KfxfJ/W84n8AmUBV+QgAAA==
X-SYNAQ-Pinpoint-Information: Please contact SYNAQ for more information
X-SYNAQ-Pinpoint-ID: 1pa97D-000hyJ-5d
X-SYNAQ-Pinpoint: No virus infections found
X-SYNAQ-Pinpoint-SpamCheck: not spam, SpamAssassin (not cached, score=7.453,
        required 9, autolearn=disabled, DCC_CHECK 0.10,
        FREEMAIL_FORGED_REPLYTO 2.50, FREEMAIL_REPLYTO_END_DIGIT 0.25,
        GENERIC_IXHASH 4.50, RDNS_NONE 0.10, SPF_HELO_NONE 0.00,
        SPF_PASS -0.00)
X-SYNAQ-Pinpoint-SpamScore: sssssss
X-Pinpoint-From: prvs=8432352b0d=tswaioe@saps.gov.za
X-Red-Router: yes
X-Spam-Status: No, score=3.1 required=5.0 tests=BAYES_50,
        FREEMAIL_FORGED_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ***
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

U29tZSDDpG3DtnVudCBoYXMgYmVlbiBkw7Zuw6R0ZWQgdG8geW91IGZvciBhIGNow6RyaXR5
IHByb2plY3QuDQpOb3RlOnlvdSBkbyBub3QgbmVlZCB0byBww6R5IHRvIHJlY2VpdmUgZnVu
ZHMgS2luZGx5IHJlc3DDtm5kDQpmb3IgbW9yZSBpbmbDtnJtw6R0aW9uLg0KDQpUaGlzIGUt
bWFpbCBhbmQgYW55IGF0dGFjaG1lbnRzIHRoZXJldG8gYXJlIHN0cmljdGx5IGNvbmZpZGVu
dGlhbCBhbmQgYXJlIGludGVuZGVkIHNvbGVseSBmb3IgdGhlIHVzZSBvZiB0aGUgYWRkcmVz
c2VlLiBTaG91bGQgeW91IG5vdCBiZSB0aGUgaW50ZW5kZWQgYWRkcmVzc2VlLCBwbGVhc2Ug
ZGVsZXRlIHRoaXMgZS1tYWlsIG1lc3NhZ2UgaW1tZWRpYXRlbHkuIFdoaWxlIGNhcmUgaXMg
dGFrZW4gaW4gcHJlcGFyaW5nIHRoaXMgZG9jdW1lbnQsIG5vIHJlcHJlc2VudGF0aW9uLCB3
YXJyYW50eSBvciB1bmRlcnRha2luZyAoZXhwcmVzc2x5IG9yIGltcGxpZWQpIGlzIGdpdmVu
IGFuZCBubyByZXNwb25zaWJpbGl0eSBub3IgbGlhYmlsaXR5IGlzIGFjY2VwdGVkIGJ5IHRo
ZSBTQVBTIGFzIHRvIHRoZSBhY2N1cmFjeSBvZiB0aGUgaW5mb3JtYXRpb24gY29udGFpbmVk
IGhlcmVpbiwgdGhhdCB0aGUgZW1haWwgaXMgZnJlZSBvZiB2aXJ1c2VzLCBvciBmb3IgYW55
IGRhbWFnZXMgdGhhdCBtYXkgb2NjdXIgZnJvbSByZWNlaXZpbmcgb3Igb3BlbmluZyB0aGlz
IGVtYWlsLg0K

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E1D5555D13E
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 15:09:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233610AbiF0InP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 04:43:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232724AbiF0InL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 04:43:11 -0400
X-Greylist: delayed 902 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 27 Jun 2022 01:43:10 PDT
Received: from mickerik.phytec.de (mickerik.phytec.de [91.26.50.163])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AFF36325
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 01:43:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1656318486; x=1658910486;
        h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=Ls9Jg/Kahel4RONFChFMYb7BJ8y2mA4316Lwhn0U3C0=;
        b=HaHSTwQ1AVqoy/mSQjA3fDfBm47Pe2g2JQP+Ld8+lUVWZyyqp7WxxtHQiTJQwdGk
        2IlszOS1Vd0R3Omkii6/10FmjII5irB+pNGX4SDnnRZ7L5m3s5B9JT/jr1lIUP7y
        nekRa2H+SPBtLsUc07RncwAeWvZd0fy1gCe5mFLJjBc=;
X-AuditID: ac14000a-77ffd70000001c52-b2-62b96a16e52d
Received: from berlix.phytec.de (Unknown_Domain [172.25.0.12])
        (using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (Client did not present a certificate)
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 36.97.07250.61A69B26; Mon, 27 Jun 2022 10:28:06 +0200 (CEST)
Received: from Berlix.phytec.de (172.25.0.12) by Berlix.phytec.de
 (172.25.0.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.18; Mon, 27 Jun
 2022 10:28:06 +0200
Received: from Berlix.phytec.de ([fe80::61cc:ebf0:7375:8768]) by
 berlix.phytec.de ([fe80::61cc:ebf0:7375:8768%3]) with mapi id 15.01.2375.018;
 Mon, 27 Jun 2022 10:28:06 +0200
From:   Teresa Remmet <T.Remmet@phytec.de>
To:     "shawnguo@kernel.org" <shawnguo@kernel.org>
CC:     "linux-imx@nxp.com" <linux-imx@nxp.com>,
        "upstream@phytec.de" <upstream@phytec.de>,
        "festevam@gmail.com" <festevam@gmail.com>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>
Subject: Re: [PATCH v4 3/3] arm64: dts: freescale: Add phyBOARD-Polis-i.MX8MM
 support
Thread-Topic: [PATCH v4 3/3] arm64: dts: freescale: Add phyBOARD-Polis-i.MX8MM
 support
Thread-Index: AQHYif3LGPwhyWd9bEO3h3hYDSYATq1iyiKA
Date:   Mon, 27 Jun 2022 08:28:05 +0000
Message-ID: <54aaa7722ed68c0b8f4e9ac0808cb032e2ccb943.camel@phytec.de>
References: <20220623144124.1821570-1-t.remmet@phytec.de>
         <20220623144124.1821570-3-t.remmet@phytec.de>
         <20220627081325.GJ819983@dragon>
In-Reply-To: <20220627081325.GJ819983@dragon>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.0.11]
Content-Type: text/plain; charset="utf-8"
Content-ID: <8A55C470B06E5A45B2A6DACC3F99291D@phytec.de>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrAIsWRmVeSWpSXmKPExsWyRpKBR1csa2eSwfXZwhbzj5xjtXh41d+i
        78VDZotNj6+xWnT9Wsls0br3CLvF3+2bWCxebBF34PDYOesuu8emVZ1sHneu7WHz2Lyk3mPj
        ux1MHv1/DTw+b5ILYI/isklJzcksSy3St0vgyriyl7NgHnfF1vPTWBsYf3B1MXJySAiYSBw6
        +o8JxBYSWMIk8e+0UhcjF5D9gFHi0vU/LBDOJkaJBQ/amEGq2AQ0JF6e6AbrEBHQl3i/5S9Y
        EbPAAWaJBVMmsYMkhAXCJe5uWQiU4AAqipD4dqICot5I4tOWtWwgNouAqsT+67vAZvIKuEmc
        m3GFEWJZH6PE1usfGUESnAK6EksXrwBrYBSQldiw4TxYA7OAuMSmZ99ZIV4QkFiyByIuISAq
        8fLxP6i4vMSJW9OYQG5gFtCUWL9LH6LVQuL78w9MELaixJTuh+wQNwhKnJz5hGUCo/gsJBtm
        IXTPQtI9C0n3LCTdCxhZVzEK5WYmZ6cWZWbrFWRUlqQm66WkbmIExbIIA9cOxr45HocYmTgY
        DzFKcDArifC+vr41SYg3JbGyKrUoP76oNCe1+BCjNAeLkjjv/R6mRCGB9MSS1OzU1ILUIpgs
        EwenVAOjXGHZzDv6ws27P9r5J8u5d/1psTftS9y/z79uE1ex+8JDxvumfp2/M/33yZtKW2/N
        1r8V82fj4ZeF+oU+6VOjlCRlD1ufUZapZrz/TXKLzv+oGzt3mAbNZ630zLCXvGpt3f+gOjxf
        717n4puf59lXc7zjX7J73eUrSy8vejXHSn5B8xPLP6yGSizFGYmGWsxFxYkAjX0D2NMCAAA=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

QW0gTW9udGFnLCBkZW0gMjcuMDYuMjAyMiB1bSAxNjoxMyArMDgwMCBzY2hyaWViIFNoYXduIEd1
bzoNCj4gT24gVGh1LCBKdW4gMjMsIDIwMjIgYXQgMDQ6NDE6MjRQTSArMDIwMCwgVGVyZXNhIFJl
bW1ldCB3cm90ZToNCj4gPiBBZGQgaW5pdGlhbCBzdXBwb3J0IGZvciBwaHlCT0FSRC1Qb2xpcy1p
Lk1YOE1NLg0KPiA+IE1haW4gZmVhdHVyZXMgYXJlOg0KPiA+IAkqIEJsdWV0b290aCBhbmQgV2lm
aQ0KPiA+IAkqIENBTkZEDQo+ID4gCSogZU1NQw0KPiA+IAkqIGkyYyBSVEMNCj4gPiAJKiBFdGhl
cm5ldA0KPiA+IAkqIFBDSWUNCj4gPiAJKiBSUzIzMi9SUzQ4NQ0KPiA+IAkqIFNELUNhcmQNCj4g
PiAJKiBTUEktTk9SIGZsYXNoDQo+ID4gCSogVVNCDQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTog
VGVyZXNhIFJlbW1ldCA8dC5yZW1tZXRAcGh5dGVjLmRlPg0KPiA+IC0tLQ0KPiA+IENoYW5nZXMg
aW4gdjQ6DQo+ID4gLSBEbyBub3QgbW9kaWZ5IHJlc2VydmVkIGlvbXV4IGJpdHMNCj4gPiAtIFJl
bW92ZSBldGggcGh5IGlycSBkdWUgdG8gYSByZWNlbnQgZm91bmQgaHcgaXNzdWUgb24gU29NDQo+
IA0KPiBSZXBsYWNlZCB2MyB3aXRoIHRoaXMgdmVyc2lvbi4NCj4gDQo+IEluIHRoZSBmdXR1cmUs
IHBsZWFzZSBnaXZlIGEgcmVwbHkgdG8gdGhlIG9sZCB2ZXJzaW9uIHNheWluZyB0aGVyZSBpcw0K
PiBhIG5ldyB2ZXJzaW9uIHBvc3RlZCwgc28gdGhhdCBJIGtub3cgdGhlIG9sZCBvbmUgc2hvdWxk
IGJlIGlnbm9yZWQuDQoNCk9rYXkgSSB3aWxsLCB0aGFuayB5b3UuDQoNClJlZ2FyZHMsDQpUZXJl
c2ENCg0KPiANCj4gU2hhd24NCi0tIA0KUEhZVEVDIE1lc3N0ZWNobmlrIEdtYkggfCBSb2JlcnQt
S29jaC1TdHIuIDM5IHwgNTUxMjkgTWFpbnosIEdlcm1hbnkNCg0KR2VzY2jDpGZ0c2bDvGhyZXI6
IERpcGwuLUluZy4gTWljaGFlbCBNaXRlemtpLCBEaXBsLi1JbmcuIEJvZG8gSHViZXIgfA0KSGFu
ZGVsc3JlZ2lzdGVyIE1haW56IEhSQiA0NjU2IHwgRmluYW56YW10IE1haW56IHwgU3QuTnIuIDI2
NjUwMDYwOCwgREUNCjE0OTA1OTg1NQ0K

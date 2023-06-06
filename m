Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3CCB5724F8E
	for <lists+devicetree@lfdr.de>; Wed,  7 Jun 2023 00:27:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239846AbjFFW1a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 18:27:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234043AbjFFW13 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 18:27:29 -0400
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [IPv6:2001:df5:b000:5::4])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5B641717
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 15:27:27 -0700 (PDT)
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (Client did not present a certificate)
        by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 43EAF2C053D;
        Wed,  7 Jun 2023 10:27:24 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
        s=mail181024; t=1686090444;
        bh=mYtiWhn9+qW2OOJfS+5udoJkMC4R2+qLLoXTTR2vY0U=;
        h=From:To:CC:Subject:Date:References:In-Reply-To:From;
        b=aofpsQLslR4YdSjC0DRn97unsf8GwNl1RqVR3MJIQyBA2xmyKbSsQEX2ZTHYTfPMc
         lCZNm3sQqEyEVVjy4zeUE6J15VjCxalIhENXF1fkI1AlZrdF9fIAF71wXQr/08nJgM
         Ypvev9G48nHrB4vebwo04ovQ6XQxcs/lBER4tomzBzmJ1XtWUCO7B/vh4HSFLgI57n
         6AyOZX5UhqidI+BZ9UTr5D6DaVT9cD29tt0s/RNF/nQqAz4GfULckOxCYrf22fMnV+
         mNYFBirBzDmmllz7lOITLBc9JVyaaXJnEYEWFbCE3f5dr1CQjt6dbpxM98mnaClgKT
         SlmvVwCQeuQ0g==
Received: from svr-chch-ex2.atlnz.lc (Not Verified[2001:df5:b000:bc8::76]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
        id <B647fb2cc0001>; Wed, 07 Jun 2023 10:27:24 +1200
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) by
 svr-chch-ex2.atlnz.lc (2001:df5:b000:bc8::76) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.2.1118.26; Wed, 7 Jun 2023 10:27:24 +1200
Received: from svr-chch-ex2.atlnz.lc (2001:df5:b000:bc8::76) by
 svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8:409d:36f5:8899:92e8) with Microsoft
 SMTP Server (TLS) id 15.0.1497.48; Wed, 7 Jun 2023 10:27:23 +1200
Received: from svr-chch-ex2.atlnz.lc ([fe80::a9eb:c9b7:8b52:9567]) by
 svr-chch-ex2.atlnz.lc ([fe80::a9eb:c9b7:8b52:9567%15]) with mapi id
 15.02.1118.026; Wed, 7 Jun 2023 10:27:23 +1200
From:   Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <tudor.ambarus@linaro.org>,
        Pratyush Yadav <pratyush@kernel.org>,
        "Michael Walle" <michael@walle.cc>,
        "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>,
        "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
CC:     Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Manivannan Sadhasivam <mani@kernel.org>
Subject: Re: [PATCH v2 06/17] dt-bindings: mtd: qcom: Prevent NAND chip
 unevaluated properties
Thread-Topic: [PATCH v2 06/17] dt-bindings: mtd: qcom: Prevent NAND chip
 unevaluated properties
Thread-Index: AQHZmJ/A/7DdJqfjnkKBhDDDwtPlhq99kbaA
Date:   Tue, 6 Jun 2023 22:27:23 +0000
Message-ID: <6bfc7652-ab2b-3a22-8ef7-7ba421eb4d93@alliedtelesis.co.nz>
References: <20230606175246.190465-1-miquel.raynal@bootlin.com>
 <20230606175246.190465-7-miquel.raynal@bootlin.com>
In-Reply-To: <20230606175246.190465-7-miquel.raynal@bootlin.com>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.33.22.30]
Content-Type: text/plain; charset="utf-8"
Content-ID: <B58F5EA73DB6C349A07E95BC029F3139@atlnz.lc>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-SEG-SpamProfiler-Analysis: v=2.3 cv=CMhUoijD c=1 sm=1 tr=0 a=Xf/6aR1Nyvzi7BryhOrcLQ==:117 a=xqWC_Br6kY4A:10 a=75chYTbOgJ0A:10 a=IkcTkHD0fZMA:10 a=of4jigFt-DYA:10 a=VwQbUJbxAAAA:8 a=P-IC7800AAAA:8 a=PZ1Ox8NERQV7nhDSNFUA:9 a=QEXdDO2ut3YA:10 a=AjGcO6oz07-iQ99wixmX:22 a=d3PnA9EDa4IxuAV0gXij:22
X-SEG-SpamProfiler-Score: 0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DQpPbiA3LzA2LzIzIDA1OjUyLCBNaXF1ZWwgUmF5bmFsIHdyb3RlOg0KPiBMaXN0IGFsbCB0aGUg
cG9zc2libGUgcHJvcGVydGllcyBpbiB0aGUgTkFORCBjaGlwIGFzIHBlciB0aGUgZXhhbXBsZSBh
bmQNCj4gc2V0IHVuZXZhbHVhdGVkUHJvcGVydGllcyB0byBmYWxzZSBpbiB0aGUgTkFORCBjaGlw
IHNlY3Rpb24uDQo+DQo+IENjOiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbmlAa2VybmVsLm9y
Zz4NCj4gU2lnbmVkLW9mZi1ieTogTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290bGlu
LmNvbT4NCj4gLS0tDQo+ICAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL210ZC9x
Y29tLG5hbmRjLnlhbWwgfCA0ICsrKysNCj4gICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25z
KCspDQo+DQo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
bXRkL3Fjb20sbmFuZGMueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9t
dGQvcWNvbSxuYW5kYy55YW1sDQo+IGluZGV4IDcyMTdkOGE2NGQxNC4uNTgxOTczZjQ1MmZmIDEw
MDY0NA0KPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbXRkL3Fjb20s
bmFuZGMueWFtbA0KPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbXRk
L3Fjb20sbmFuZGMueWFtbA0KPiBAQCAtMzQsNyArMzQsOSBAQCBwcm9wZXJ0aWVzOg0KPiAgIHBh
dHRlcm5Qcm9wZXJ0aWVzOg0KPiAgICAgIl5uYW5kQFthLWYwLTldJCI6DQo+ICAgICAgIHR5cGU6
IG9iamVjdA0KPiArICAgICRyZWY6IHJhdy1uYW5kLWNoaXAueWFtbA0KPiAgICAgICBwcm9wZXJ0
aWVzOg0KPiArDQo+ICAgICAgICAgbmFuZC1idXMtd2lkdGg6DQo+ICAgICAgICAgICBjb25zdDog
OA0KPiAgIA0KPiBAQCAtNjEsNiArNjMsOCBAQCBwYXR0ZXJuUHJvcGVydGllczoNCj4gICANCj4g
ICAgICAgICAgICAgUmVmZXIgdG8gdGhlIGlwcTgwNjQgZXhhbXBsZSBvbiBob3cgdG8gdXNlIHRo
aXMgc3BlY2lhbCBiaW5kaW5nLg0KPiAgIA0KPiArICAgIHVuZXZhbHVhdGVkUHJvcGVydGllczog
ZmFsc2UNCj4gKw0KPiAgIGFsbE9mOg0KPiAgICAgLSAkcmVmOiAibmFuZC1jb250cm9sbGVyLnlh
bWwjIg0KPiAgIA0KDQpUaGlzIGRvZXNuJ3QgYXBwZWFyIHRvIGJlIHdvcmtpbmcgYXMgaW50ZW5k
ZWQuIElmIEkgYWRkIHRoZSBmb2xsb3dpbmcNCg0KZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9tdGQvcWNvbSxuYW5kYy55YW1sIA0KYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvbXRkL3Fjb20sbmFuZGMueWFtbA0KaW5kZXggNTgxOTczZjQ1
MmZmLi43YTkxMGE2MmM3YjggMTAwNjQ0DQotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvbXRkL3Fjb20sbmFuZGMueWFtbA0KKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL210ZC9xY29tLG5hbmRjLnlhbWwNCkBAIC0yMjAsNiArMjIwLDcgQEAgZXhh
bXBsZXM6DQogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcGFydGl0aW9uQDAgew0K
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbGFiZWwgPSAiYm9vdC1u
YW5kIjsNCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlZyA9IDww
IDB4NThhMDAwMD47DQorwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbm9u
c2Vuc2U7DQogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfTsNCg0KIMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBhcnRpdGlvbkA1OGEwMDAwIHsNCg0KDQpUaGVuIEkn
ZCBleHBlY3QgdG8gZ2V0IGEgY29tcGxhaW50IGZyb20gYG1ha2UgbXJwcm9wZXI7IG1ha2UgDQpE
VF9DSEVDS0VSX0ZMQUdTPS1tIGR0X2JpbmRpbmdfY2hlY2sgRFRfU0NIRU1BX0ZJTEVTPXFjb20s
bmFuZGMueWFtbGAgDQpidXQgaXQgc2VlbXMgdG8gbGV0IHRoaXMgdGhyb3VnaC4NCg==

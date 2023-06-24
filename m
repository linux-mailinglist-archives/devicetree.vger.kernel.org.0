Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C80D673C6D6
	for <lists+devicetree@lfdr.de>; Sat, 24 Jun 2023 06:58:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229512AbjFXE6Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Jun 2023 00:58:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229493AbjFXE6Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Jun 2023 00:58:24 -0400
Received: from sender4-op-o15.zoho.com (sender4-op-o15.zoho.com [136.143.188.15])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 073C326B5
        for <devicetree@vger.kernel.org>; Fri, 23 Jun 2023 21:58:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1687582676; cv=none; 
        d=zohomail.com; s=zohoarc; 
        b=PticwXv7vlGBvvhCG5Yzn69n/q0MjL7EB2oY+Zt8WkskZ0dJvOJLbDz1CJ3DQyHU7wYkZinXoVSPUuZpN+BQhhhpB9533Ah7njNPrGPBD4mEiKwGOJPdabktex5JY15XreyitNeuE2fM7X2VeipryFCYeWx0t0FVxPtr7Ftu3eE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
        t=1687582676; h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
        bh=rHdOll5xyjkeWR7pxTxkGGQRKPGXOHCtOisa7VYSEZI=; 
        b=ZMj1uEVPCMYWLhdOlURX9JgcShSk2GycT7cP2g4U9ERsDqQzBif50vo+9nqlavqRScJJN6szY9VM2KtmuDCzK4kp0Sc4OnLHbmaiV9sJWZzorXhp9sBcUMnP86FGzWwrL3prQxjQQaEawfGSIdNhMR0qRF2ZybWXm8bzo3jp1QQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
        dkim=pass  header.i=icenowy.me;
        spf=pass  smtp.mailfrom=uwu@icenowy.me;
        dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1687582676;
        s=zmail2; d=icenowy.me; i=uwu@icenowy.me;
        h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
        bh=rHdOll5xyjkeWR7pxTxkGGQRKPGXOHCtOisa7VYSEZI=;
        b=PlHw6+uyBCTekrsgCH5c6ick0Ps4sQvhCcJb3SKZG9qF4yGkWiEkRrP9KFRsDEkS
        c6zD5W974KpRPSN0bK5Sh5XAnd6RFlQ1tT1qoxloO1ONN6tvi2MAt9NGyKVDUej6kW2
        nrB4WnQSmzqqXk/+2GkNuJA0CjsXj3+wCUghHQbb6kRKl1tD3zbxeSAJv1V6t3lgA60
        tA/hPqF7GCVBpTs8qFDZ7U+UJG2vbwT0NBEhvMDl2HBfJDOlY/hkqvbesFr/UJc/MPd
        U2Q40XgCpbIkG4neAmez2nYhqtJQz79TJkeG3SXrGh7ubFt8sw/RiyUiaV+NpMlS4TO
        krN48nnwvA==
Received: from edelgard.fodlan.icenowy.me (120.85.99.114 [120.85.99.114]) by mx.zohomail.com
        with SMTPS id 1687582674846683.4036542827168; Fri, 23 Jun 2023 21:57:54 -0700 (PDT)
Message-ID: <45cfb4dc93de59a539d48a37b9becffa4d2d6278.camel@icenowy.me>
Subject: Re: [PATCH 1/3] arm: dts: sun8i: V3s: Add pinctrl for pwm
From:   Icenowy Zheng <uwu@icenowy.me>
To:     Andre Przywara <andre.przywara@arm.com>,
        Chris Morgan <macroalpha82@gmail.com>
Cc:     linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
        mripard@kernel.org, samuel@sholland.org, jernej.skrabec@gmail.com,
        wens@csie.org, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
Date:   Sat, 24 Jun 2023 12:57:49 +0800
In-Reply-To: <20230621005000.558b660c@slackpad.lan>
References: <20230620200022.295674-1-macroalpha82@gmail.com>
         <20230620200022.295674-2-macroalpha82@gmail.com>
         <20230621005000.558b660c@slackpad.lan>
Organization: Anthon Open-Source Community
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
User-Agent: Evolution 3.44.4 
MIME-Version: 1.0
X-ZohoMailClient: External
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

5ZyoIDIwMjMtMDYtMjHmmJ/mnJ/kuInnmoQgMDA6NTAgKzAxMDDvvIxBbmRyZSBQcnp5d2FyYeWG
memBk++8mgo+IE9uIFR1ZSwgMjAgSnVuIDIwMjMgMTU6MDA6MjAgLTA1MDAKPiBDaHJpcyBNb3Jn
YW4gPG1hY3JvYWxwaGE4MkBnbWFpbC5jb20+IHdyb3RlOgo+IAo+IEhpIENocmlzLAo+IAo+IHRo
YW5rcyBmb3IgdGFraW5nIGNhcmUgb2YgdXBzdHJlYW1pbmcsIGN1dGUgbGl0dGxlIGRldmljZS4K
PiAKPiA+IEZyb206IENocmlzIE1vcmdhbiA8bWFjcm9tb3JnYW5AaG90bWFpbC5jb20+Cj4gPiAK
PiA+IEFkZCBhIGRlZmF1bHQgcGluY3RybCBmb3IgdGhlIHB3bSBmdW5jdGlvbi4KPiA+IAo+ID4g
U2lnbmVkLW9mZi1ieTogQ2hyaXMgTW9yZ2FuIDxtYWNyb21vcmdhbkBob3RtYWlsLmNvbT4KPiAK
PiAKPiA+IC0tLQo+ID4gwqBhcmNoL2FybS9ib290L2R0cy9zdW44aS12M3MuZHRzaSB8IDcgKysr
KysrKwo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspCj4gPiAKPiA+IGRpZmYg
LS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9zdW44aS12M3MuZHRzaQo+ID4gYi9hcmNoL2FybS9i
b290L2R0cy9zdW44aS12M3MuZHRzaQo+ID4gaW5kZXggYjAwMTI1MTY0NGY3Li5lNTk3NzUyNGFi
ZTIgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9zdW44aS12M3MuZHRzaQo+ID4g
KysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvc3VuOGktdjNzLmR0c2kKPiA+IEBAIC00MTQsNiArNDE0
LDExIEBAIG1tYzFfcGluczogbW1jMS1waW5zIHsKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBiaWFzLXB1bGwtdXA7Cj4g
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9Owo+ID4g
wqAKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcHdt
X3BpbnM6IHB3bS1waW5zIHsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHBpbnMgPSAiUEI0IjsKPiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGZ1bmN0
aW9uID0gInB3bTAiOwo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqB9Owo+ID4gKwo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgc3BpMF9waW5zOiBzcGkwLXBpbnMgewo+ID4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHBpbnMgPSAiUEMw
IiwgIlBDMSIsICJQQzIiLCAiUEMzIjsKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBmdW5jdGlvbiA9ICJzcGkwIjsKPiA+
IEBAIC00NDEsNiArNDQ2LDggQEAgcHdtOiBwd21AMWMyMTQwMCB7Cj4gPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgImFsbHdpbm5lcixzdW43aS1hMjAtcHdtIjsKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJlZyA9IDwweDAxYzIxNDAwIDB4Yz47Cj4gPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjbG9ja3MgPSA8Jm9z
YzI0TT47Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oHBpbmN0cmwtMCA9IDwmcHdtX3BpbnM+Owo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+IAo+IEhvdyBp
cyB0aGlzIHN1cHBvc2VkIHRvIHdvcmsgd2l0aCBtdWx0aXBsZSBjaGFubmVscz8gVGhlcmUgaXMg
UFdNMSBvbgo+IFBCNS4gSWYgb25lIHdhbnRzIHRvIHBvdGVudGlhbGx5IHVzZSB0aGF0LCB3ZSB3
b3VsZCBuZWVkIHRvIGFkZCBhCj4gcmVmZXJlbmNlIHRvIHRob3NlIHBpbnMgaGVyZSBhcyB3ZWxs
LCBhbmQgdGhleSB3b3VsZCBhbGwgYmUgbXV4ZWQgdG8KPiBQV00gdXBvbiB0aGUgUFdNIGNvbnRy
b2xsZXIgcHJvYmluZz8KPiAKPiBTbyB3aGlsZSBJIHNlZSB0aGF0IGl0J3MgdGhlIG9ubHkgb3V0
cHV0IHBpbiBmb3IgUFdNMCwgdGhpcyBtaWdodAo+IHN0aWxsCj4gbmVlZCB0byBnbyBpbnRvIHRo
ZSBib2FyZCAuZHRzLCBhbG9uZ3NpZGUgdGhlIHN0YXR1cyA9ICJva2F5IjsgbGluZS4KPiBTbwo+
IGVhY2ggYm9hcmQgd291bGQgc3BlY2lmeSBleGFjdGx5IHRoZSBwaW5zIGl0IG5lZWRzIChQV00w
IG9ubHksIFBXTTEKPiBvbmx5LCBib3RoIG9yIG5vbmUpLgoKTWF5YmUgd2Ugc2hvdWxkIGhhdmUg
dHdvIFBXTSBwaW5jdHJsIG5vZGVzLCBwd20wX3BpbnMgYW5kIHB3bTFfcGlucywKYW5kIHRoZW4g
ZW5hYmxlIHRoZSBjb250cm9sbGVyICh3aXRoIHRoZSBwaW5jdHJsIHByb3BlcnR5KSBpbgppbmRp
dmlkdWFsIGJvYXJkIERUcy4KCj4gCj4gT3RoZXJ3aXNlIEkgY29tcGFyZWQgdGhpcyBhZ2FpbnN0
IHRoZSBtYW51YWwgYW5kIExpbnV4IHBpbmN0cmwKPiBkcml2ZXIsCj4gaXQgYWxsIG1hdGNoZXMg
dXAuCj4gCj4gQ2hlZXJzLAo+IEFuZHJlCj4gCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAjcHdtLWNlbGxzID0gPDM+Owo+ID4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3RhdHVzID0gImRpc2FibGVkIjsK
PiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgfTsKPiAKCg==


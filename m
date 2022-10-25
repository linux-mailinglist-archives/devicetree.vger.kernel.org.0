Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB2A560D0A0
	for <lists+devicetree@lfdr.de>; Tue, 25 Oct 2022 17:30:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229613AbiJYPaz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Oct 2022 11:30:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231229AbiJYPay (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Oct 2022 11:30:54 -0400
Received: from sender4-op-o18.zoho.com (sender4-op-o18.zoho.com [136.143.188.18])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BFA757247
        for <devicetree@vger.kernel.org>; Tue, 25 Oct 2022 08:30:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1666711832; cv=none; 
        d=zohomail.com; s=zohoarc; 
        b=f++XCS2yQOaouOYv2nraEvfUHA5ttXcYcljYsWLPl5e6wNNseYqvP/Dcp338fedLQ5PP+WI25fV7Itgo2yj5V5IXJY2DQ+qrC+sl0wVgnI8wMFfhhgsKnlujPnIADjB0MK4ZXT2fzwW6k9vJEpml3vE6qR3oW6RzS+NDBO3RqDI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
        t=1666711832; h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
        bh=yNEm7PHLEkxpAt9TW3zyxDH3NNYV88uY7wqbd0lVXYA=; 
        b=c2N0+ah2q/LZiil6sxKJ+RR5SNeccnqrKgsGuHY0L5u8lykYpysYr4/BEZnfEv6mYQdJIU/zA5qSCVfI8ofFgdu3yIBNPO8TmSmIN/pccXg7FWKwJwk5iM3hRm62HmDdOEEGYaEav7I8zyywpTuthj3FkZc1tR3cWQPd3WWSh64=
ARC-Authentication-Results: i=1; mx.zohomail.com;
        dkim=pass  header.i=icenowy.me;
        spf=pass  smtp.mailfrom=uwu@icenowy.me;
        dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1666711832;
        s=zmail; d=icenowy.me; i=uwu@icenowy.me;
        h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
        bh=yNEm7PHLEkxpAt9TW3zyxDH3NNYV88uY7wqbd0lVXYA=;
        b=cfog/Mr0oTqdx69yVCc9MDrWhOTW3zIkpMK1+nQdeDi5LhUdigyALmUbH1NspfIP
        8qVVH7+j6nrg6muZ6Dg2uXuRb0rrdN4m3EEgKA65+5MATgjdbHAubO8/xyPVDahOavs
        qSEZnxNC4rWjU5iwIbV7+E7i/Msnbnpew/cRGIuU=
Received: from edelgard.fodlan.icenowy.me (112.94.102.105 [112.94.102.105]) by mx.zohomail.com
        with SMTPS id 166671183055468.1056212485745; Tue, 25 Oct 2022 08:30:30 -0700 (PDT)
Message-ID: <73ea157f7e0c75f8bda16b3ac464be58fe7fb3ab.camel@icenowy.me>
Subject: Re: [PATCH 3/3] ARM: dts: suniv: Add Lctech Pi F1C200s devicetree
From:   Icenowy Zheng <uwu@icenowy.me>
To:     Andre Przywara <andre.przywara@arm.com>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@lists.linux.dev, soc@kernel.org,
        =?ISO-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>
Date:   Tue, 25 Oct 2022 23:30:26 +0800
In-Reply-To: <20221025145909.2837939-4-andre.przywara@arm.com>
References: <20221025145909.2837939-1-andre.przywara@arm.com>
         <20221025145909.2837939-4-andre.przywara@arm.com>
Organization: Anthon Open-Source Community
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
User-Agent: Evolution 3.44.4 
MIME-Version: 1.0
X-ZohoMailClient: External
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

5ZyoIDIwMjItMTAtMjXmmJ/mnJ/kuoznmoQgMTU6NTkgKzAxMDDvvIxBbmRyZSBQcnp5d2FyYeWG
memBk++8mgo+IFRoZSBMY3RlY2ggUGkgRjFDMjAwcyAoYWxzbyBwcmV2aW91c2x5IGtub3duIHVu
ZGVyIHRoZSBDaGVycnkgUGkKPiBicmFuZCkKCk9oPyBBcmUgdGhleSB0aGUgc2FtZSBoYXJkd2Fy
ZT8KCj4gaXMgYSBzbWFsbCBkZXZlbG9wbWVudCBib2FyZCB3aXRoIHRoZSBBbGx3aW5uZXIgRjFD
MjAwcyBTb0MuIFRoaXMgaXMKPiB0aGUKPiBzYW1lIGFzIHRoZSBGMUMxMDBzLCBidXQgd2l0aCA2
NE1CIGluc3RlYWQgb2YgMzJNQiBjby1wYWNrYWdlZCBEUkFNLgo+IAo+IEFsb25nc2lkZSB0aGUg
b2JsaWdhdG9yeSBtaWNyby1TRCBjYXJkIHNsb3QsIHRoZSBib2FyZCBmZWF0dXJlcyBhCj4gU1BJ
LU5BTkQgZmxhc2ggY2hpcCwgTENEIGFuZCB0b3VjaCBjb25uZWN0b3JzLCBhbmQgdW5wb3B1bGF0
ZWQKPiBleHBhbnNpb24gaGVhZGVyIHBpbnMuCj4gVGhlcmUgYXJlIHR3byBVU0IgVHlwZS1DIHBv
cnRzIG9uIHRoZSBib2FyZDogT25lIHN1cHBsaWVzIHRoZSBwb3dlciwKPiBhbHNvCj4gY29ubmVj
dHMgdG8gdGhlIFVTQiBNVVNCIE9URyBjb250cm9sbGVyIHBvcnQuIFRoZSBvdGhlciBvbmUgaXMK
PiBjb25uZWN0ZWQKPiB0byBhbiBDSDM0MCBVU0Igc2VyaWFsIGNoaXAsIHdoaWNoIGluIHR1cm4g
aXMgY29ubmVjdGVkIHRvIFVBUlQxLgo+IAo+IEFkZCBhIGRldmljZXRyZWUgZmlsZSwgc28gdGhh
dCB0aGUgYm9hcmQgY2FuIGJlIHVzZWQgZWFzaWx5Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFuZHJl
IFByenl3YXJhIDxhbmRyZS5wcnp5d2FyYUBhcm0uY29tPgo+IC0tLQo+IMKgYXJjaC9hcm0vYm9v
dC9kdHMvTWFrZWZpbGXCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAg
MSArCj4gwqBhcmNoL2FybS9ib290L2R0cy9zdW5pdi1mMWMxMDBzLmR0c2nCoMKgwqDCoMKgwqDC
oMKgwqAgfMKgIDUgKysKPiDCoGFyY2gvYXJtL2Jvb3QvZHRzL3N1bml2LWYxYzIwMHMtbGN0ZWNo
LXBpLmR0cyB8IDgwCj4gKysrKysrKysrKysrKysrKysrKwo+IMKgMyBmaWxlcyBjaGFuZ2VkLCA4
NiBpbnNlcnRpb25zKCspCj4gwqBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vYm9vdC9kdHMv
c3VuaXYtZjFjMjAwcy1sY3RlY2gtcGkuZHRzCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jv
b3QvZHRzL01ha2VmaWxlIGIvYXJjaC9hcm0vYm9vdC9kdHMvTWFrZWZpbGUKPiBpbmRleCA2YWJm
NjQzNGViMzcyLi5mOTljNWMyMGJmN2VmIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRz
L01ha2VmaWxlCj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvTWFrZWZpbGUKPiBAQCAtMTM5NCw2
ICsxMzk0LDcgQEAgZHRiLSQoQ09ORklHX01BQ0hfU1VOOUkpICs9IFwKPiDCoMKgwqDCoMKgwqDC
oMKgc3VuOWktYTgwLWN1YmllYm9hcmQ0LmR0Ygo+IMKgZHRiLSQoQ09ORklHX01BQ0hfU1VOSVYp
ICs9IFwKPiDCoMKgwqDCoMKgwqDCoMKgc3VuaXYtZjFjMTAwcy1saWNoZWVwaS1uYW5vLmR0YiBc
Cj4gK8KgwqDCoMKgwqDCoMKgc3VuaXYtZjFjMjAwcy1sY3RlY2gtcGkuZHRiIFwKPiDCoMKgwqDC
oMKgwqDCoMKgc3VuaXYtZjFjMjAwcy1wb3BzdGljay12MS4xLmR0Ygo+IMKgZHRiLSQoQ09ORklH
X0FSQ0hfVEVHUkFfMnhfU09DKSArPSBcCj4gwqDCoMKgwqDCoMKgwqDCoHRlZ3JhMjAtYWNlci1h
NTAwLXBpY2Fzc28uZHRiIFwKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvc3VuaXYt
ZjFjMTAwcy5kdHNpCj4gYi9hcmNoL2FybS9ib290L2R0cy9zdW5pdi1mMWMxMDBzLmR0c2kKPiBp
bmRleCAwZjI0Yzc2NmM5ZmM1Li4yZWMwMjJlOTJlZWE4IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJt
L2Jvb3QvZHRzL3N1bml2LWYxYzEwMHMuZHRzaQo+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N1
bml2LWYxYzEwMHMuZHRzaQo+IEBAIC0yMDEsNiArMjAxLDExIEBAIHVhcnQwX3BlX3BpbnM6IHVh
cnQwLXBlLXBpbnMgewo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBwaW5zID0gIlBFMCIsICJQRTEiOwo+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBmdW5j
dGlvbiA9ICJ1YXJ0MCI7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgfTsKPiArCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqB1YXJ0MV9wYV9waW5zOiB1YXJ0MS1wYS1waW5zIHsKPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBwaW5zID0gIlBB
MiIsICJQQTMiOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoGZ1bmN0aW9uID0gInVhcnQxIjsKPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoH07CgpTaG91bGQgdGhpcyBiZSBpbiBhIHNw
bGl0dGVkIGNvbW1pdD8KCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9Owo+IMKg
Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB0aW1lckAxYzIwYzAwIHsKPiBkaWZm
IC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvc3VuaXYtZjFjMjAwcy1sY3RlY2gtcGkuZHRzCj4g
Yi9hcmNoL2FybS9ib290L2R0cy9zdW5pdi1mMWMyMDBzLWxjdGVjaC1waS5kdHMKPiBuZXcgZmls
ZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMDAuLmE5ZDE3NzgzOTU0MzgKPiAtLS0g
L2Rldi9udWxsCj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvc3VuaXYtZjFjMjAwcy1sY3RlY2gt
cGkuZHRzCj4gQEAgLTAsMCArMSw4MCBAQAo+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjog
KEdQTC0yLjArIE9SIE1JVCkKPiArLyoKPiArICogQ29weXJpZ2h0IDIwMjIgQXJtIEx0ZCwKPiAr
ICogYmFzZWQgb24gd29yazoKPiArICrCoMKgIENvcHlyaWdodCAyMDIyIEljZW5vd3kgWmhlbmcg
PHV3dUBpY2Vub3d5Lm1lPgo+ICsgKi8KPiArCj4gKy9kdHMtdjEvOwo+ICsjaW5jbHVkZSAic3Vu
aXYtZjFjMTAwcy5kdHNpIgo+ICsKPiArI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2dwaW8vZ3Bpby5o
Pgo+ICsKPiArLyB7Cj4gK8KgwqDCoMKgwqDCoMKgbW9kZWwgPSAiTGN0ZWNoIFBpIEYxQzIwMHMi
Owo+ICvCoMKgwqDCoMKgwqDCoGNvbXBhdGlibGUgPSAibGN0ZWNoLHBpLWYxYzIwMHMiLCAiYWxs
d2lubmVyLHN1bml2LWYxYzIwMHMiLAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCAiYWxsd2lubmVyLHN1bml2LWYxYzEwMHMiOwo+ICsKPiArwqDCoMKgwqDCoMKgwqBh
bGlhc2VzIHsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbW1jMCA9ICZtbWMwOwo+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzZXJpYWwwID0gJnVhcnQxOwo+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzcGkwID0gJnNwaTA7Cj4gK8KgwqDCoMKgwqDCoMKg
fTsKPiArCj4gK8KgwqDCoMKgwqDCoMKgY2hvc2VuIHsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgc3Rkb3V0LXBhdGggPSAic2VyaWFsMDoxMTUyMDBuOCI7Cj4gK8KgwqDCoMKgwqDC
oMKgfTsKPiArCj4gK8KgwqDCoMKgwqDCoMKgcmVnX3ZjYzN2MzogcmVndWxhdG9yLTN2MyB7Cj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZp
eGVkIjsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmVndWxhdG9yLW5hbWUgPSAi
dmNjM3YzIjsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmVndWxhdG9yLW1pbi1t
aWNyb3ZvbHQgPSA8MzMwMDAwMD47Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJl
Z3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDMzMDAwMDA+Owo+ICvCoMKgwqDCoMKgwqDCoH07Cj4g
K307Cj4gKwo+ICsmbW1jMCB7Cj4gK8KgwqDCoMKgwqDCoMKgYnJva2VuLWNkOwo+ICvCoMKgwqDC
oMKgwqDCoGJ1cy13aWR0aCA9IDw0PjsKPiArwqDCoMKgwqDCoMKgwqBkaXNhYmxlLXdwOwo+ICvC
oMKgwqDCoMKgwqDCoHZtbWMtc3VwcGx5ID0gPCZyZWdfdmNjM3YzPjsKPiArwqDCoMKgwqDCoMKg
wqBzdGF0dXMgPSAib2theSI7Cj4gK307Cj4gKwo+ICsmb3RnX3NyYW0gewo+ICvCoMKgwqDCoMKg
wqDCoHN0YXR1cyA9ICJva2F5IjsKPiArfTsKPiArCj4gKyZzcGkwIHsKPiArwqDCoMKgwqDCoMKg
wqBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ICvCoMKgwqDCoMKgwqDCoHBpbmN0cmwtMCA9
IDwmc3BpMF9wY19waW5zPjsKPiArwqDCoMKgwqDCoMKgwqBzdGF0dXMgPSAib2theSI7Cj4gKwo+
ICvCoMKgwqDCoMKgwqDCoGZsYXNoQDAgewo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBjb21wYXRpYmxlID0gInNwaS1uYW5kIjsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgcmVnID0gPDA+Owo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAjYWRkcmVzcy1j
ZWxscyA9IDwxPjsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgI3NpemUtY2VsbHMg
PSA8MT47Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHNwaS1tYXgtZnJlcXVlbmN5
ID0gPDQwMDAwMDAwPjsKPiArwqDCoMKgwqDCoMKgwqB9Owo+ICt9Owo+ICsKPiArJnVhcnQxIHsK
PiArwqDCoMKgwqDCoMKgwqBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ICvCoMKgwqDCoMKg
wqDCoHBpbmN0cmwtMCA9IDwmdWFydDFfcGFfcGlucz47Cj4gK8KgwqDCoMKgwqDCoMKgc3RhdHVz
ID0gIm9rYXkiOwo+ICt9Owo+ICsKPiArLyoKPiArICogVGhpcyBpcyBhIFR5cGUtQyBzb2NrZXQs
IGJ1dCBDQzEvMiBhcmUgbm90IGNvbm5lY3RlZCwgYW5kIFZCVVMgaXMKPiBjb25uZWN0ZWQKPiAr
ICogdG8gVmluLCB3aGljaCBzdXBwbGllcyB0aGUgYm9hcmQuIEhvc3QgbW9kZSB3b3JrcyAoaWYg
dGhlIGJvYXJkCj4gaXMgcG93ZXJlZAo+ICsgKiBvdGhlcndpc2UpLCBidXQgcGVyaXBoZXJhbCBp
cyBwcm9iYWJseSB0aGUgaW50ZW50aW9uLgo+ICsgKi8KPiArJnVzYl9vdGcgewo+ICvCoMKgwqDC
oMKgwqDCoGRyX21vZGUgPSAicGVyaXBoZXJhbCI7Cj4gK8KgwqDCoMKgwqDCoMKgc3RhdHVzID0g
Im9rYXkiOwo+ICt9OwoKRmluYWxseSB3ZSBzaG91bGQgZ2V0IGFibGUgdG8gb3ZlcnJpZGUgZHJf
bW9kZSBqdXN0IGJ5IEhXLgoKPiArCj4gKyZ1c2JwaHkgewo+ICvCoMKgwqDCoMKgwqDCoHN0YXR1
cyA9ICJva2F5IjsKPiArfTsKCg==


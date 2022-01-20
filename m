Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EF254494A2E
	for <lists+devicetree@lfdr.de>; Thu, 20 Jan 2022 09:59:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1358955AbiATI7H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Jan 2022 03:59:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1359395AbiATI7G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Jan 2022 03:59:06 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07AA1C061574
        for <devicetree@vger.kernel.org>; Thu, 20 Jan 2022 00:59:06 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id ay14-20020a05600c1e0e00b0034d7bef1b5dso13538474wmb.3
        for <devicetree@vger.kernel.org>; Thu, 20 Jan 2022 00:59:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=O6MuI7SsqszCT6dHJwGjuSM8vW2g5WMyA/pZW/T09Zw=;
        b=hJFDOOFgaKOqgdtNJRQEo7IXj6jeWlgcHxxjxdukf7yCqtzuzrDP1u129dGygW8baw
         CwYJ6SR34rlmZEnr/KDZ8LX+y7by6WhALOC/eR7/IBFzCUjE82j/Kolg2b2tZHAkbuJ0
         gTIn3Fx3PZ/+WIc5e2kyzlfotD5OI4//iRCZZGfIAcP4T+uS4avtVCKTertwsBuk4tFI
         97lbxS+H+R1uUA6S2UWtc7QMMm/BNV2Gglt/C5fQpc12BfwCKlWyqmrx/+322Shce6aZ
         049vPeP0Rhcu8NoqlccG5phKbbfqRlXzC94s9LdzAYH28h+vRQN+2JPup9xLxnYTmp5U
         25hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=O6MuI7SsqszCT6dHJwGjuSM8vW2g5WMyA/pZW/T09Zw=;
        b=2IrFPRsO1GuUzLvXlOJ8DMwYScQA6W1R4XVJeEPTVoq9GNTsvqywQ8RKJ1MxpmvN1H
         evacFxrwBnZv6Qm5o095jME49r57iOy5jWn33cwkOVOCJeQorFzYOScpW+tt17KJSsKO
         /DiTV/LLczIRRCa5JU7IptKbPiQ7CSk5hC9DQ0U5dYDDFH0zNupkglt6DUIOMFBPmBtj
         Sw9yoDSIyg1x+15Zrg5dnzWEMXVF26viuswzKHkEbKmfqBws5VeJtZYDWAxxzPhZrLZs
         80n07dJ6KeoV35CIQEVpHjgU9HoVpPKUw0S9Y+dtHsH+EqdMgk39n9VBFt+rT6ImxUfn
         Wgyw==
X-Gm-Message-State: AOAM5315KyV1rgjetkabknwddfAjP0iQMZg/myJ2KPV6EXZrW2WR18+A
        m/FeZoPxLhJ70TgVNH+JmnjLgw==
X-Google-Smtp-Source: ABdhPJxCGgo/8i3LdrVH3ebCgZ3lyoA8QSkMvL/WbdZ+9l0sPlt+Wyf1hjAPkvQqGcCjp9nUM2hOHg==
X-Received: by 2002:adf:9dc7:: with SMTP id q7mr8992802wre.148.1642669144502;
        Thu, 20 Jan 2022 00:59:04 -0800 (PST)
Received: from ?IPv6:2001:861:44c0:66c0:ced2:397a:bee8:75f5? ([2001:861:44c0:66c0:ced2:397a:bee8:75f5])
        by smtp.gmail.com with ESMTPSA id l17sm1870017wms.0.2022.01.20.00.59.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Jan 2022 00:59:03 -0800 (PST)
Subject: Re: [PATCH V2 2/2] soc: s4: Add support for power domains controller
To:     "shunzhou.jiang@amlogic.com" <shunzhou.jiang@amlogic.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-amlogic <linux-amlogic@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        khilman <khilman@baylibre.com>, jbrunet <jbrunet@baylibre.com>
References: <20211230094434.3053195-1-shunzhou.jiang@amlogic.com>
 <20211230094434.3053195-3-shunzhou.jiang@amlogic.com>
 <CAFBinCALAOJz16=u7r8tLM6ditriq=-NOACS2HRLrWs5B_FkVA@mail.gmail.com>
 <b2a9b8f0-2b12-c49f-9609-21999b1fffc8@baylibre.com>
 <2022011810264745683311@amlogic.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <b846de5f-cf30-c000-ea37-61d79bcd4e7e@baylibre.com>
Date:   Thu, 20 Jan 2022 09:59:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <2022011810264745683311@amlogic.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: base64
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SGkgU2h1bnpob3UsDQoNCk9uIDE4LzAxLzIwMjIgMDM6MjYsIHNodW56aG91LmppYW5nQGFt
bG9naWMuY29tIHdyb3RlOg0KPiBEZWFycyBOZWlsICYgTWFydGluOg0KPiBTb3JyeSBmb3Ig
bXkgbGF0ZSByZXBseQ0KPiBTNF9WUFVfSERNSTrCoCBmb3IgdnB1IGRvbWFpbizCoCB0aGlz
IGRvbWFpbiBwcm92aWRlIHBvd2VyIHRvIG1hbnkgbW91ZGxlcyhvc2QswqB2cHAswqBoZHIs
wqBkdizCoGRpKSwgaWYgY2xvc2UsIHdpbGwgY2F1c2Ugc3lzdGVtIGNyYXNoDQo+IFM0X1VT
Ql9DT01CwqBkb21haW46IGZvciB1c2IsIGlmIG5vdCBhbHdheXMgb24swqAgYWxsIHVzYiBz
dGF0dXMgd2lsbCBjbGVhciB0byAwLCB0aGF0J3Mgbm90IHJpZ2h0IHN0YXR1cyBmb3IgdXNi
DQo+IFM0X0VUSDogZm9yIGV0aGVybmV0IG9ubGluZSB3YWtldXAsIGFuZCBpZiBwb3dlciBk
b3duLCBzdGF0dXMgYWxzbyBub3QgcmlnaHQNCj4+PiArwqDCoMKgwqDCoMKgIFNFQ19QRChT
NF9WUFVfSERNSSzCoMKgwqDCoCBHRU5QRF9GTEFHX0FMV0FZU19PTiksDQo+Pj4gK8KgwqDC
oMKgwqDCoCBTRUNfUEQoUzRfVVNCX0NPTUIswqDCoMKgwqAgR0VOUERfRkxBR19BTFdBWVNf
T04pLA0KPj4+ICvCoMKgwqDCoMKgwqAgU0VDX1BEKFM0X0dFMkQswqDCoMKgwqDCoMKgwqDC
oCAwKSwNCj4+PiArwqDCoMKgwqDCoMKgIFNFQ19QRChTNF9FVEgswqDCoMKgwqDCoMKgwqDC
oMKgIEdFTlBEX0ZMQUdfQUxXQVlTX09OKSwNCg0KVGhhbmtzIGZvciBjbGFyaWZpY2F0aW9u
cywgY2FuIHlvdSByZXNlbmQgdGhlIHBhdGNoc2V0IHdpdGggdGhvc2UgaW5mb3MgaW4gY29t
bWVudHMgbGlrZSBpdCB3YXMgZG9uZSBmb3IgQTEgPw0KDQpUaGFua3MsDQpOZWlsDQoNCj4g
DQo+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiBTaHVuemhvdSBKaWFuZw0KPiBTVyBEZXBhcnRt
ZW50DQo+IA0KPiAgICAgwqANCj4gICAgICpGcm9tOirCoE5laWwgQXJtc3Ryb25nIDxtYWls
dG86bmFybXN0cm9uZ0BiYXlsaWJyZS5jb20+DQo+ICAgICAqRGF0ZToqwqAyMDIyLTAxLTEy
wqAxNjozNg0KPiAgICAgKlRvOirCoE1hcnRpbiBCbHVtZW5zdGluZ2wgPG1haWx0bzptYXJ0
aW4uYmx1bWVuc3RpbmdsQGdvb2dsZW1haWwuY29tPjsgU2h1bnpob3UuSmlhbmcgPG1haWx0
bzpzaHVuemhvdS5qaWFuZ0BhbWxvZ2ljLmNvbT4NCj4gICAgICpDQzoqwqBkZXZpY2V0cmVl
IDxtYWlsdG86ZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc+OyBsaW51eC1hcm0ta2VybmVs
IDxtYWlsdG86bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnPjsgbGludXgt
YW1sb2dpYyA8bWFpbHRvOmxpbnV4LWFtbG9naWNAbGlzdHMuaW5mcmFkZWFkLm9yZz47IGxp
bnV4LWtlcm5lbCA8bWFpbHRvOmxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc+OyBraGls
bWFuIDxtYWlsdG86a2hpbG1hbkBiYXlsaWJyZS5jb20+OyBqYnJ1bmV0IDxtYWlsdG86amJy
dW5ldEBiYXlsaWJyZS5jb20+DQo+ICAgICAqU3ViamVjdDoqwqBSZTogW1BBVENIIFYyIDIv
Ml0gc29jOiBzNDogQWRkIHN1cHBvcnQgZm9yIHBvd2VyIGRvbWFpbnMgY29udHJvbGxlcg0K
PiAgICAgWyBFWFRFUk5BTCBFTUFJTCBdDQo+ICAgICDCoA0KPiAgICAgSGkgU2h1bnpob3Us
DQo+ICAgICDCoA0KPiAgICAgT24gMzAvMTIvMjAyMSAyMzoxNSwgTWFydGluIEJsdW1lbnN0
aW5nbCB3cm90ZToNCj4gICAgID4gT24gVGh1LCBEZWMgMzAsIDIwMjEgYXQgMTA6NDQgQU0g
U2h1bnpob3UuSmlhbmcNCj4gICAgID4gPHNodW56aG91LmppYW5nQGFtbG9naWMuY29tPiB3
cm90ZToNCj4gICAgID4+DQo+ICAgICA+PiBGcm9tOiBTaHVuemhvdSBKaWFuZyA8c2h1bnpo
b3UuamlhbmdAYW1sb2dpYy5jb20+DQo+ICAgICA+Pg0KPiAgICAgPj4gQWRkIHN1cHBvcnQg
czQgUG93ZXIgY29udHJvbGxlci4gSW4gczQsIHBvd2VyIGNvbnRyb2wNCj4gICAgID4+IHJl
Z2lzdGVycyBhcmUgaW4gc2VjdXJlIGRvbWFpbiwgYW5kIHNob3VsZCBiZSBhY2Nlc3NlZCBi
eSBzbWMuDQo+ICAgICA+Pg0KPiAgICAgPj4gU2lnbmVkLW9mZi1ieTogU2h1bnpob3UgSmlh
bmcgPHNodW56aG91LmppYW5nQGFtbG9naWMuY29tPg0KPiAgICAgPiBBbHNvIGhlcmUgSSBk
b24ndCBoYXZlIGFueSBkYXRhc2hlZXQgdG8gY29tcGFyZSB0aGlzIHdpdGgsIHNvIHRoaXMg
Z2V0cyBteToNCj4gICAgID4gQWNrZWQtYnk6IE1hcnRpbiBCbHVtZW5zdGluZ2wgPG1hcnRp
bi5ibHVtZW5zdGluZ2xAZ29vZ2xlbWFpbC5jb20+DQo+ICAgICA+DQo+ICAgICA+IFsuLi5d
DQo+ICAgICA+PiArwqDCoMKgwqDCoMKgIFNFQ19QRChTNF9WUFVfSERNSSzCoMKgwqDCoCBH
RU5QRF9GTEFHX0FMV0FZU19PTiksDQo+ICAgICA+PiArwqDCoMKgwqDCoMKgIFNFQ19QRChT
NF9VU0JfQ09NQizCoMKgwqDCoCBHRU5QRF9GTEFHX0FMV0FZU19PTiksDQo+ICAgICA+PiAr
wqDCoMKgwqDCoMKgIFNFQ19QRChTNF9HRTJELMKgwqDCoMKgwqDCoMKgwqAgMCksDQo+ICAg
ICA+PiArwqDCoMKgwqDCoMKgIFNFQ19QRChTNF9FVEgswqDCoMKgwqDCoMKgwqDCoMKgIEdF
TlBEX0ZMQUdfQUxXQVlTX09OKSwNCj4gICAgID4gRm9yIHRoZSBBMSBTb0MncyBVQVJUIGVu
dHJ5IHdlIGhhdmUgdGhlIGZvbGxvd2luZyBjb21tZW50IHdoaWNoDQo+ICAgICA+IGV4cGxh
aW5zIHdoeSB3ZSB3YW50IHRvIHRvIGJlICJhbHdheXMgb24iOg0KPiAgICAgPsKgwqAgVUFS
VCBzaG91bGQga2VlcCB3b3JraW5nIGluIEFURiBhZnRlciBzdXNwZW5kIGFuZCBiZWZvcmUg
cmVzdW1lDQo+ICAgICA+DQo+ICAgICA+IElmIGZvciBzb21lIHJlYXNvbiB5b3UgbmVlZCB0
byByZS1zZW5kIHRoaXMgc2VyaWVzIHRoZW4gaXQgd291bGQgYmUNCj4gICAgID4gZ3JlYXQg
aWYgeW91IGNvdWxkIGFkZCBhIGNvbW1lbnQgYWJvdmUgZWFjaCBlbnRyeSB3aXRoDQo+ICAg
ICA+IEdFTlBEX0ZMQUdfQUxXQVlTX09OLg0KPiAgICAgPiBJdCB3aWxsIGhlbHAgb3RoZXJz
IChsaWtlIG1lKSB1bmRlcnN0YW5kIHRoZXNlIFNvQ3MgYmV0dGVyLg0KPiAgICAgwqANCj4g
ICAgIENhbiB5b3UgcmVzZW5kIHdpdGggdGhvc2UgY29tbWVudHMgYWRkZWQgc28gSSBjYW4g
YXBwbHkgdGhlIHBhdGNoZXMgPw0KPiAgICAgwqANCj4gICAgIFRoYW5rcywNCj4gICAgIE5l
aWwNCj4gICAgIMKgDQo+ICAgICA+DQo+ICAgICA+DQo+ICAgICA+IEJlc3QgcmVnYXJkcywN
Cj4gICAgID4gTWFydGluDQo+ICAgICA+DQo+ICAgICDCoA0KPiANCg0K

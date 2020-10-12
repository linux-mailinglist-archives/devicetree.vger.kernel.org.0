Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E3BBF28AE34
	for <lists+devicetree@lfdr.de>; Mon, 12 Oct 2020 08:21:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726359AbgJLGVB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Oct 2020 02:21:01 -0400
Received: from mailgw02.mediatek.com ([210.61.82.184]:55898 "EHLO
        mailgw02.mediatek.com" rhost-flags-OK-FAIL-OK-FAIL) by vger.kernel.org
        with ESMTP id S1725941AbgJLGVA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Oct 2020 02:21:00 -0400
X-UUID: feb515c6ba334bb69166de9c1c5e9109-20201012
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
        h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID; bh=tye3EoEyjrtmqh7ssQVONlLnuV9c6l4iS/PzBi5TB1c=;
        b=AT1cduE9lTQGrYcfJVwgNmRloFcK+HPOVfILbeakhYB2oh+uAcTbUrCHisgogz542/WXOnz0zu7rw1fNiImNOfnFaNWBT8KUZ6RikewboIp7nkZ10h6cm4C3uX6vG/XHmZLGbDeVkoLVp+I0Na72ix5exw2vNnQbebJApxJ4/3Y=;
X-UUID: feb515c6ba334bb69166de9c1c5e9109-20201012
Received: from mtkcas07.mediatek.inc [(172.21.101.84)] by mailgw02.mediatek.com
        (envelope-from <jiaxin.yu@mediatek.com>)
        (Cellopoint E-mail Firewall v4.1.14 Build 0819 with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
        with ESMTP id 5546264; Mon, 12 Oct 2020 14:20:56 +0800
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by mtkmbs07n2.mediatek.inc
 (172.21.101.141) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Mon, 12 Oct
 2020 14:20:53 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 12 Oct 2020 14:20:52 +0800
Message-ID: <1602483653.8921.20.camel@mhfsdcap03>
Subject: Re: [PATCH 5/5] dt-bindings: mediatek: mt8192: add
 mt8192-mt6358-rt1015-rt5682 document
From:   Jiaxin Yu <jiaxin.yu@mediatek.com>
To:     Rob Herring <robh@kernel.org>
CC:     <broonie@kernel.org>, <tiwai@suse.com>, <matthias.bgg@gmail.com>,
        <p.zabel@pengutronix.de>, <tzungbi@google.com>,
        <alsa-devel@alsa-project.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-mediatek@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <shane.chien@mediatek.com>, <kuninori.morimoto.gx@renesas.com>,
        <maowenan@huawei.com>
Date:   Mon, 12 Oct 2020 14:20:53 +0800
In-Reply-To: <20201006204344.GA2791644@bogus>
References: <1601624142-18991-1-git-send-email-jiaxin.yu@mediatek.com>
         <1601624142-18991-6-git-send-email-jiaxin.yu@mediatek.com>
         <20201006204344.GA2791644@bogus>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK:  N
Content-Transfer-Encoding: base64
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

T24gVHVlLCAyMDIwLTEwLTA2IGF0IDE1OjQzIC0wNTAwLCBSb2IgSGVycmluZyB3cm90ZToNCj4g
T24gRnJpLCBPY3QgMDIsIDIwMjAgYXQgMDM6MzU6NDJQTSArMDgwMCwgSmlheGluIFl1IHdyb3Rl
Og0KPiA+IFRoaXMgcGF0Y2ggYWRkcyBkb2N1bWVudCBmb3IgdGhlIG1hY2hpbmUgYm9hcmQgd2l0
aCBtdDYzNTgsIHJ0MTAxNSBhbmQgcnQ1NjgyLg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEpp
YXhpbiBZdSA8amlheGluLnl1QG1lZGlhdGVrLmNvbT4NCj4gPiAtLS0NCj4gPiAgLi4uL3NvdW5k
L210ODE5Mi1tdDYzNTktcnQxMDE1LXJ0NTY4Mi55YW1sICAgIHwgNDQgKysrKysrKysrKysrKysr
KysrKw0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgNDQgaW5zZXJ0aW9ucygrKQ0KPiA+ICBjcmVhdGUg
bW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvdW5kL210ODE5
Mi1tdDYzNTktcnQxMDE1LXJ0NTY4Mi55YW1sDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb3VuZC9tdDgxOTItbXQ2MzU5LXJ0MTAxNS1y
dDU2ODIueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb3VuZC9tdDgx
OTItbXQ2MzU5LXJ0MTAxNS1ydDU2ODIueWFtbA0KPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+
ID4gaW5kZXggMDAwMDAwMDAwMDAwMC4uZGZmNTAwNGNkMDM2OA0KPiA+IC0tLSAvZGV2L251bGwN
Cj4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc291bmQvbXQ4MTky
LW10NjM1OS1ydDEwMTUtcnQ1NjgyLnlhbWwNCj4gPiBAQCAtMCwwICsxLDQ0IEBADQo+ID4gKyMg
U1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjANCj4gDQo+IER1YWwgbGljZW5zZSBuZXcg
YmluZGluZ3M6DQo+IA0KPiAoR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZSkNCj4gDQpPaywg
Z290IGl0Lg0KDQo+ID4gKyVZQU1MIDEuMg0KPiA+ICstLS0NCj4gPiArJGlkOiBodHRwOi8vZGV2
aWNldHJlZS5vcmcvc2NoZW1hcy9zb3VuZC9tdDgxOTItbXQ2MzU5LXJ0MTAxNS1ydDU2ODIueWFt
bCMNCj4gPiArJHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3Jl
LnlhbWwjDQo+ID4gKw0KPiA+ICt0aXRsZTogTWVkaWF0ZWsgTVQ4MTkyIHdpdGggTVQ2MzU5LCBS
VDEwMTUgYW5kIFJUNTY4MiBBU29DIHNvdW5kIGNhcmQgZHJpdmVyDQo+ID4gKw0KPiA+ICttYWlu
dGFpbmVyczoNCj4gPiArICAgLSBKaWF4aW4gWXUgPGppYXhpbi55dUBtZWRpYXRlay5jb20+DQo+
ID4gKyAgIC0gU2hhbmUgQ2hpZW4gPHNoYW5lLmNoaWVuQG1lZGlhdGVrLmNvbT4NCj4gPiArDQo+
ID4gK2Rlc2NyaXB0aW9uOg0KPiA+ICsgIFRoaXMgYmluZGluZyBkZXNjcmliZXMgdGhlIE1UODE5
MiBzb3VuZCBjYXJkLg0KPiA+ICsNCj4gPiArcHJvcGVydGllczoNCj4gPiArICBjb21wYXRpYmxl
Og0KPiA+ICsgICAgY29udGFpbnM6DQo+IA0KPiBEcm9wIHRoaXMuIE90aGVyIHN0cmluZ3Mgc2hv
dWxkbid0IGJlIGFsbG93ZWQuDQo+IA0KDQpTaG91bGQgSSBuZWVkIHRvIHJlbW92ZSAiY29udGFp
bnMiPw0KDQo+ID4gKyAgICAgIGNvbnN0OiBtZWRpYXRlayxtdDgxOTJfbXQ2MzU5X3J0MTAxNV9y
dDU2ODINCj4gDQo+IEp1c3QgYSBsaXN0IG9mIHBhcnQgbnVtYmVycz8gQSBkaWZmZXJlbnQgY29k
ZWMgd291bGQgYmUgYSBkaWZmZXJlbnQgDQo+IGNvbXBhdGlibGUgYW5kIGRyaXZlcj8gWW91IHNo
b3VsZCBoYXZlIGEgbGluayB0byB0aGUgY29kZWMgYW5kIHlvdSBjYW4gDQo+IHJlYWQgaXQncyBj
b21wYXRpYmxlIHRvIGdldCB3aGF0IGNvZGVjIHlvdSBoYXZlLg0KPiANClRIaXMgYmluZGluZ3Mg
aXMgZGVkaWNhdGVkIHRvIHRoZSBtdDgxOTIgd2l0aCBtdDYzNTksIHJ0MTAxNSBhbmQgcnQ1Njgy
Lg0KV2UgYXJlIG5vdCByZWFkeSB0byBjb25maWd1cmUgZGFpLWxpbmsgaW4gRFRTLiBJcyB0aGlz
IG1hbmRhdG9yeSBub3c/DQoNCj4gPiArDQo+ID4gKyAgbWVkaWF0ZWsscGxhdGZvcm06DQo+ID4g
KyAgICAkcmVmOiAiL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvcGhhbmRsZSINCj4g
PiArICAgIGRlc2NyaXB0aW9uOiB8DQo+ID4gKyAgICAgVGhlIERUL09GIG5vZGUgd2hpY2ggaXMg
dXNlZCB0byBzcGVjaWZ5IHRoZSBsaW5rJ3MgcGxhdGZvcm0gZHJpdmVyLg0KPiANCj4gV2hhdCdz
ICJsaW5rJ3MgcGxhdGZvcm0gZHJpdmVyIj8gQSBEVCBkb2Vzbid0IGhhdmUgZHJpdmVycy4NCj4g
DQpUaGVyZSdzIHNvbWV0aGluZyB3cm9uZyB3aXRoIG15IGRlc2NyaXB0aW9uLiAibWVkaWF0ZWss
cGxhdGZvcm0iIGlzIHRoZQ0KcGhhbmRsZSBvZiBNVDgxOTIgQVNvQyBwbGF0Zm9ybS4NCg0KPiA+
ICsNCj4gPiArYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlDQo+ID4gKw0KPiA+ICtyZXF1aXJl
ZDoNCj4gPiArICAtIGNvbXBhdGlibGUNCj4gPiArICAtIG1lZGlhdGVrLHBsYXRmb3JtDQo+ID4g
Kw0KPiA+ICtleGFtcGxlczoNCj4gPiArICAtIHwNCj4gPiArDQo+ID4gKyAgICBzb3VuZDogbXQ4
MTkyLXNvdW5kIHsNCj4gPiArICAgICAgICBjb21wYXRpYmxlID0gIm1lZGlhdGVrLG10ODE5Mi1t
dDYzNTktcnQxMDE1LXJ0NTY4MiI7DQo+ID4gKyAgICAgICAgbWVkaWF0ZWsscGxhdGZvcm0gPSA8
JmFmZT47DQo+ID4gKyAgICAgICAgcGluY3RybC1uYW1lcyA9ICJhdWRfY2xrX21vc2lfb2ZmIiwN
Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgImF1ZF9jbGtfbW9zaV9vbiI7DQo+ID4gKyAg
ICAgICAgcGluY3RybC0wID0gPCZhdWRfY2xrX21vc2lfb2ZmPjsNCj4gPiArICAgICAgICBwaW5j
dHJsLTEgPSA8JmF1ZF9jbGtfbW9zaV9vbj47DQo+ID4gKyAgICB9Ow0KPiA+ICsNCj4gPiArLi4u
DQo+ID4gLS0gDQo+ID4gMi4xOC4wDQoNCg==


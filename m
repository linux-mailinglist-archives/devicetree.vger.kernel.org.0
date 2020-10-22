Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE198295CB8
	for <lists+devicetree@lfdr.de>; Thu, 22 Oct 2020 12:32:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2896535AbgJVKcL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Oct 2020 06:32:11 -0400
Received: from mailgw02.mediatek.com ([210.61.82.184]:42985 "EHLO
        mailgw02.mediatek.com" rhost-flags-OK-FAIL-OK-FAIL) by vger.kernel.org
        with ESMTP id S2896533AbgJVKcK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Oct 2020 06:32:10 -0400
X-UUID: 868ba0ebf25f43d0950ad40bb4dcde45-20201022
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
        h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID; bh=mKI//o1Lk40Yi815nVYXanqjQKt/9UrGV5fgSoCAeH4=;
        b=ha60ki7wcIGTs1bJnKkZE/nT8iqEUCUQvZPSayyFFNSw+Sit8wZIHvGXQ6MKVUHaO81aVxrQAHNWcFk5S0uCd9z29rRxt6k9nrAqeej6t12hv0+gge05ANLiQPvB4Y1X5OcE+4YHd/UEmcbFf+6YwWEF7BAwmDvypg6GEGBkDzA=;
X-UUID: 868ba0ebf25f43d0950ad40bb4dcde45-20201022
Received: from mtkexhb02.mediatek.inc [(172.21.101.103)] by mailgw02.mediatek.com
        (envelope-from <jiaxin.yu@mediatek.com>)
        (Cellopoint E-mail Firewall v4.1.14 Build 0819 with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
        with ESMTP id 13254462; Thu, 22 Oct 2020 18:32:06 +0800
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by mtkmbs07n1.mediatek.inc
 (172.21.101.16) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Thu, 22 Oct
 2020 18:32:04 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 22 Oct 2020 18:32:03 +0800
Message-ID: <1603362723.8921.37.camel@mhfsdcap03>
Subject: Re: [PATCH v2 5/5] dt-bindings: mediatek: mt8192: add
 mt8192-mt6358-rt1015-rt5682 document
From:   Jiaxin Yu <jiaxin.yu@mediatek.com>
To:     Rob Herring <robh@kernel.org>
CC:     <broonie@kernel.org>, <tiwai@suse.com>, <matthias.bgg@gmail.com>,
        <p.zabel@pengutronix.de>, <tzungbi@google.com>,
        <alsa-devel@alsa-project.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-mediatek@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <shane.chien@mediatek.com>, <kuninori.morimoto.gx@renesas.com>
Date:   Thu, 22 Oct 2020 18:32:03 +0800
In-Reply-To: <20201021145605.GA2775711@bogus>
References: <1603270435-3548-1-git-send-email-jiaxin.yu@mediatek.com>
         <1603270435-3548-6-git-send-email-jiaxin.yu@mediatek.com>
         <20201021145605.GA2775711@bogus>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK:  N
Content-Transfer-Encoding: base64
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

T24gV2VkLCAyMDIwLTEwLTIxIGF0IDA5OjU2IC0wNTAwLCBSb2IgSGVycmluZyB3cm90ZToNCj4g
T24gV2VkLCBPY3QgMjEsIDIwMjAgYXQgMDQ6NTM6NTVQTSArMDgwMCwgSmlheGluIFl1IHdyb3Rl
Og0KPiA+IFRoaXMgcGF0Y2ggYWRkcyBkb2N1bWVudCBmb3IgdGhlIG1hY2hpbmUgYm9hcmQgd2l0
aCBtdDYzNTgsIHJ0MTAxNQ0KPiA+IGFuZCBydDU2ODIuDQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1i
eTogSmlheGluIFl1IDxqaWF4aW4ueXVAbWVkaWF0ZWsuY29tPg0KPiA+IC0tLQ0KPiA+ICAuLi4v
c291bmQvbXQ4MTkyLW10NjM1OS1ydDEwMTUtcnQ1NjgyLnlhbWwgICAgfCA0MiArKysrKysrKysr
KysrKysrKysrDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA0MiBpbnNlcnRpb25zKCspDQo+ID4gIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc291bmQv
bXQ4MTkyLW10NjM1OS1ydDEwMTUtcnQ1NjgyLnlhbWwNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvdW5kL210ODE5Mi1tdDYzNTktcnQx
MDE1LXJ0NTY4Mi55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvdW5k
L210ODE5Mi1tdDYzNTktcnQxMDE1LXJ0NTY4Mi55YW1sDQo+ID4gbmV3IGZpbGUgbW9kZSAxMDA2
NDQNCj4gPiBpbmRleCAwMDAwMDAwMDAwMDAwLi40YzM5ZTg4OTA2ZmMxDQo+ID4gLS0tIC9kZXYv
bnVsbA0KPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb3VuZC9t
dDgxOTItbXQ2MzU5LXJ0MTAxNS1ydDU2ODIueWFtbA0KPiA+IEBAIC0wLDAgKzEsNDIgQEANCj4g
PiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjArIE9SIEJTRC0yLUNsYXVzZSkN
Cj4gDQo+IEdQTC0yLjAtb25seQ0KPiANCj4gPiArJVlBTUwgMS4yDQo+ID4gKy0tLQ0KPiA+ICsk
aWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3NvdW5kL210ODE5Mi1tdDYzNTktcnQx
MDE1LXJ0NTY4Mi55YW1sIw0KPiA+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0
YS1zY2hlbWFzL2NvcmUueWFtbCMNCj4gPiArDQo+ID4gK3RpdGxlOiBNZWRpYXRlayBNVDgxOTIg
d2l0aCBNVDYzNTksIFJUMTAxNSBhbmQgUlQ1NjgyIEFTb0Mgc291bmQgY2FyZCBkcml2ZXINCj4g
PiArDQo+ID4gK21haW50YWluZXJzOg0KPiA+ICsgICAtIEppYXhpbiBZdSA8amlheGluLnl1QG1l
ZGlhdGVrLmNvbT4NCj4gPiArICAgLSBTaGFuZSBDaGllbiA8c2hhbmUuY2hpZW5AbWVkaWF0ZWsu
Y29tPg0KPiA+ICsNCj4gPiArZGVzY3JpcHRpb246DQo+ID4gKyAgVGhpcyBiaW5kaW5nIGRlc2Ny
aWJlcyB0aGUgTVQ4MTkyIHNvdW5kIGNhcmQuDQo+ID4gKw0KPiA+ICtwcm9wZXJ0aWVzOg0KPiA+
ICsgIGNvbXBhdGlibGU6DQo+ID4gKyAgICAgIGNvbnN0OiBtZWRpYXRlayxtdDgxOTJfbXQ2MzU5
X3J0MTAxNV9ydDU2ODINCj4gDQo+IEkgc3RpbGwgZG9uJ3QgdGhpbmsgdGhpcyBpcyB0aGUgcmln
aHQgd2F5IHRvIGRvIHRoaXMuDQo+IA0KRGVhciBSb2IsDQpUaGlzIG5vbWVuY2FsdHVyZSBpcyBl
eHRlbmRlZCB0byB0aGUgTVRLIG10ODE4My9tdDgxNzMuDQpBbmQgd2UgdGhpbmsgaXQncyBiZXR0
ZXIgdG8gbWFpbnRhaW4gbXVsdGlwbGUgYm9hcmRzLCBidXQNCnRoZSBkaXNhZHZhbnRhZ2UgaXMg
bmVlZCB0byB3cml0ZSBvbmUgbW9yZSBtYWNoaW5lIGRyaXZlcnMuDQoNCj4gPiArDQo+ID4gKyAg
bWVkaWF0ZWsscGxhdGZvcm06DQo+ID4gKyAgICAkcmVmOiAiL3NjaGVtYXMvdHlwZXMueWFtbCMv
ZGVmaW5pdGlvbnMvcGhhbmRsZSINCj4gPiArICAgIGRlc2NyaXB0aW9uOiBUaGUgcGhhbmRsZSBv
ZiBNVDgxOTIgQVNvQyBwbGF0Zm9ybS4NCj4gDQo+IEkgc3RpbGwgZG9uJ3QgdW5kZXJzdGFuZCB3
aGF0IHRoaXMgaXMuDQo+IA0KDQpUaGlzIHByb3BlcnR5IHdpbGwgYXNzaWduIHRvICdzbmRfc29j
X2RhaV9saW5rLT5wbGF0Zm9ybXMtPm9mX25vZGUnLg0KVGhlIHZhbHVlIG9mICdtZWRpYXRlayxw
bGF0Zm9ybScgaGVyZSBpcyAmYWZlIHRoYXQgaXMgbXQ4MTkyIHBsYXRmb3JtDQpkcml2ZXIuDQpJ
dCB3aWxsIGJlIHJlc29sdmVkIGZyb20gYSBwaGFuZGxlIHByb3BlcnR5IHRvIGEgZGV2aWNlX25v
ZGUgcG9pbnRlci4NCg0KPiA+ICsNCj4gPiArYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlDQo+
ID4gKw0KPiA+ICtyZXF1aXJlZDoNCj4gPiArICAtIGNvbXBhdGlibGUNCj4gPiArICAtIG1lZGlh
dGVrLHBsYXRmb3JtDQo+ID4gKw0KPiA+ICtleGFtcGxlczoNCj4gPiArICAtIHwNCj4gPiArDQo+
ID4gKyAgICBzb3VuZDogbXQ4MTkyLXNvdW5kIHsNCj4gPiArICAgICAgICBjb21wYXRpYmxlID0g
Im1lZGlhdGVrLG10ODE5Mi1tdDYzNTktcnQxMDE1LXJ0NTY4MiI7DQo+ID4gKyAgICAgICAgbWVk
aWF0ZWsscGxhdGZvcm0gPSA8JmFmZT47DQo+ID4gKyAgICAgICAgcGluY3RybC1uYW1lcyA9ICJh
dWRfY2xrX21vc2lfb2ZmIiwNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgImF1ZF9jbGtf
bW9zaV9vbiI7DQo+ID4gKyAgICAgICAgcGluY3RybC0wID0gPCZhdWRfY2xrX21vc2lfb2ZmPjsN
Cj4gPiArICAgICAgICBwaW5jdHJsLTEgPSA8JmF1ZF9jbGtfbW9zaV9vbj47DQo+ID4gKyAgICB9
Ow0KPiA+ICsNCj4gPiArLi4uDQo+ID4gLS0gDQo+ID4gMi4xOC4wDQoNCg==


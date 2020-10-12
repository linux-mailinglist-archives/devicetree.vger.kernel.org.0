Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6F43628AE03
	for <lists+devicetree@lfdr.de>; Mon, 12 Oct 2020 07:56:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727195AbgJLF4t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Oct 2020 01:56:49 -0400
Received: from mailgw02.mediatek.com ([210.61.82.184]:38125 "EHLO
        mailgw02.mediatek.com" rhost-flags-OK-FAIL-OK-FAIL) by vger.kernel.org
        with ESMTP id S1726412AbgJLF4t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Oct 2020 01:56:49 -0400
X-UUID: 7cda99354fee49cbab068e6667e07c73-20201012
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
        h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID; bh=wdmPxsTTUwP5rK6jCbvQqM0OVb37cVHtRHgz73szDVA=;
        b=Wfgp0TiSTAIsNhU63ZAmX2S4Wj25PTWa1x8VDNuf5hE901eh3G5zR2zhKWUDGmrhM4zbh9PPzwD4tfQeYO2UcNOR261/DNX6oxfyI6QX4z0zuGzazku3xR0XoXYirnKBKnwLpETY60LbAkV4Syucark+Norn6WbkLl0AeDRZy10=;
X-UUID: 7cda99354fee49cbab068e6667e07c73-20201012
Received: from mtkcas10.mediatek.inc [(172.21.101.39)] by mailgw02.mediatek.com
        (envelope-from <jiaxin.yu@mediatek.com>)
        (Cellopoint E-mail Firewall v4.1.14 Build 0819 with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
        with ESMTP id 1933994033; Mon, 12 Oct 2020 13:56:44 +0800
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by mtkmbs07n2.mediatek.inc
 (172.21.101.141) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Mon, 12 Oct
 2020 13:56:41 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 12 Oct 2020 13:56:40 +0800
Message-ID: <1602482201.8921.11.camel@mhfsdcap03>
Subject: Re: [PATCH 3/5] dt-bindings: mediatek: mt8192: add audio afe
 document
From:   Jiaxin Yu <jiaxin.yu@mediatek.com>
To:     Rob Herring <robh@kernel.org>
CC:     <broonie@kernel.org>, <tiwai@suse.com>, <matthias.bgg@gmail.com>,
        <p.zabel@pengutronix.de>, <tzungbi@google.com>,
        <alsa-devel@alsa-project.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-mediatek@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <shane.chien@mediatek.com>, <kuninori.morimoto.gx@renesas.com>,
        <maowenan@huawei.com>
Date:   Mon, 12 Oct 2020 13:56:41 +0800
In-Reply-To: <20201005135739.GA87274@bogus>
References: <1601624142-18991-1-git-send-email-jiaxin.yu@mediatek.com>
         <1601624142-18991-4-git-send-email-jiaxin.yu@mediatek.com>
         <20201005135739.GA87274@bogus>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK:  N
Content-Transfer-Encoding: base64
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

T24gTW9uLCAyMDIwLTEwLTA1IGF0IDA4OjU3IC0wNTAwLCBSb2IgSGVycmluZyB3cm90ZToNCj4g
T24gRnJpLCBPY3QgMDIsIDIwMjAgYXQgMDM6MzU6NDBQTSArMDgwMCwgSmlheGluIFl1IHdyb3Rl
Og0KPiA+IFRoaXMgcGF0Y2ggYWRkcyBtdDgxOTIgYXVkaW8gYWZlIGRvY3VtZW50Lg0KPiA+IA0K
PiA+IFNpZ25lZC1vZmYtYnk6IEppYXhpbiBZdSA8amlheGluLnl1QG1lZGlhdGVrLmNvbT4NCj4g
PiAtLS0NCj4gPiAgLi4uL2JpbmRpbmdzL3NvdW5kL210ODE5Mi1hZmUtcGNtLnlhbWwgICAgICAg
IHwgOTggKysrKysrKysrKysrKysrKysrKw0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgOTggaW5zZXJ0
aW9ucygrKQ0KPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3NvdW5kL210ODE5Mi1hZmUtcGNtLnlhbWwNCj4gPiANCj4gPiBkaWZmIC0tZ2l0
IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvdW5kL210ODE5Mi1hZmUtcGNt
LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc291bmQvbXQ4MTkyLWFm
ZS1wY20ueWFtbA0KPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+ID4gaW5kZXggMDAwMDAwMDAw
MDAwMC4uNDM4NTIzMTVmMTg2Nw0KPiA+IC0tLSAvZGV2L251bGwNCj4gPiArKysgYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc291bmQvbXQ4MTkyLWFmZS1wY20ueWFtbA0KPiA+
IEBAIC0wLDAgKzEsOTggQEANCj4gPiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIu
MA0KPiANCj4gRHVhbCBsaWNlbnNlIG5ldyBiaW5kaW5nczoNCj4gDQo+IChHUEwtMi4wLW9ubHkg
T1IgQlNELTItQ2xhdXNlKQ0KPiANCk9rLCBnb3QgaXQuDQoNCj4gPiArJVlBTUwgMS4yDQo+ID4g
Ky0tLQ0KPiA+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3NvdW5kL210ODE5
Mi1hZmUtcGNtLnlhbWwjDQo+ID4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRh
LXNjaGVtYXMvY29yZS55YW1sIw0KPiA+ICsNCj4gPiArdGl0bGU6IE1lZGlhdGVrIEFGRSBQQ00g
Y29udHJvbGxlciBmb3IgbXQ4MTkyDQo+ID4gKw0KPiA+ICttYWludGFpbmVyczoNCj4gPiArICAg
LSBKaWF4aW4gWXUgPGppYXhpbi55dUBtZWRpYXRlay5jb20+DQo+ID4gKyAgIC0gU2hhbmUgQ2hp
ZW4gPHNoYW5lLmNoaWVuQG1lZGlhdGVrLmNvbT4NCj4gPiArDQo+ID4gK3Byb3BlcnRpZXM6DQo+
ID4gKyAgY29tcGF0aWJsZToNCj4gPiArICAgIGNvbnRhaW5zOg0KPiANCj4gU28gYW55IG90aGVy
IHN0cmluZyBpbiBhZGRpdGlvbiBpcyBva2F5Pw0KPiANCk5vLCB0aGVyZSB3aWxsIGJlIG5vIG90
aGVyIHN0cmluZy4gU28gZG8gSSBuZWVkIHRvIHJlbW92ZSAiY29udGFpbnMiPw0KDQo+ID4gKyAg
ICAgIGNvbnN0OiBtZWRpYXRlayxtdDgxOTItYXVkaW8NCj4gPiArDQo+ID4gKyAgaW50ZXJydXB0
czoNCj4gPiArICAgIG1heEl0ZW1zOiAxDQo+ID4gKyAgICBkZXNjcmlwdGlvbjogQUZFIGludGVy
cnVwdCBsaW5lDQo+IA0KPiBEcm9wIGRlc2NyaXB0aW9uLg0KPiANCk9rLg0KDQo+ID4gKw0KPiA+
ICsgIHJlc2V0czoNCj4gPiArICAgIG1heEl0ZW1zOiAxDQo+ID4gKw0KPiA+ICsgIHJlc2V0LW5h
bWVzOg0KPiA+ICsgICAgY29uc3Q6IGF1ZGlvc3lzDQo+ID4gKw0KPiA+ICsgIGFwbWl4ZWRzeXM6
DQo+ID4gKyAgICBtYXhJdGVtczogMQ0KPiANCj4gVGhpcyBpcyBhbiBhcnJheT8NCj4gDQpObywg
aXQgaXMganVzdCBhIHBoYW5kbGUgdG8gdGhlIG1lZGlhdGVrIGFwbWl4ZWRzeXMgY29udHJvbGxl
ci4NCg0KPiA+ICsgICAgZGVzY3JpcHRpb246IFRoZSBtZWRpYXRlayBhcG1peGVkc3lzIGNvbnRy
b2xsZXINCj4gPiArDQo+ID4gKyAgaW5mcmFjZmc6DQo+ID4gKyAgICBtYXhJdGVtczogMQ0KPiA+
ICsgICAgZGVzY3JpcHRpb246IFRoZSBtZWRpYXRlayBpbmZyYWNmZyBjb250cm9sbGVyDQo+ID4g
Kw0KPiA+ICsgIHRvcGNrZ2VuOg0KPiA+ICsgICAgbWF4SXRlbXM6IDENCj4gPiArICAgIGRlc2Ny
aXB0aW9uOiBUaGUgbWVkaWF0ZWsgdG9wY2tnZW4gY29udHJvbGxlcg0KPiANCj4gVGhlc2UgYWxs
IG5lZWQgYSB0eXBlIHJlZmVyZW5jZSBhbmQgYW5kIHZlbmRvciBwcmVmaXguDQo+IA0KU2hvdWxk
IEkgY2hhbmdlIGl0IHRvIHRoZSBmb2xsb3dpbmc/DQoNCm1lZGlhdGVrLHRvcGNrZ2VuOg0KICAk
cmVmOiAiL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvcGhhbmRsZSINCiAgbWF4SXRl
bXM6IDENCiAgZGVzY3JpcHRpb246IFRoZSBwaGFuZGxlIG9mIHRoZSBtZWRpYXRlayB0b3Bja2dl
biBjb250cm9sbGVyDQoNCj4gPiArDQo+ID4gKyAgcG93ZXItZG9tYWluczoNCj4gPiArICAgIG1h
eEl0ZW1zOiAxDQo+ID4gKw0KPiA+ICsgIGNsb2NrczoNCj4gPiArICAgIGl0ZW1zOg0KPiA+ICsg
ICAgICAtIGRlc2NyaXB0aW9uOiBBRkUgY2xvY2sNCj4gPiArICAgICAgLSBkZXNjcmlwdGlvbjog
QUREQSBEQUMgY2xvY2sNCj4gPiArICAgICAgLSBkZXNjcmlwdGlvbjogQUREQSBEQUMgcHJlLWRp
c3RvcnRpb24gY2xvY2sNCj4gPiArICAgICAgLSBkZXNjcmlwdGlvbjogYXVkaW8gaW5mcmEgc3lz
IGNsb2NrDQo+ID4gKyAgICAgIC0gZGVzY3JpcHRpb246IGF1ZGlvIGluZnJhIDI2TSBjbG9jaw0K
PiA+ICsNCj4gPiArICBjbG9jay1uYW1lczoNCj4gPiArICAgIGl0ZW1zOg0KPiA+ICsgICAgICAt
IGNvbnN0OiBhdWRfYWZlX2Nsaw0KPiA+ICsgICAgICAtIGNvbnN0OiBhdWRfZGFjX2Nsaw0KPiA+
ICsgICAgICAtIGNvbnN0OiBhdWRfZGFjX3ByZWRpc19jbGsNCj4gPiArICAgICAgLSBjb25zdDog
YXVkX2luZnJhX2Nsaw0KPiA+ICsgICAgICAtIGNvbnN0OiBhdWRfaW5mcmFfMjZtX2Nsaw0KPiA+
ICsNCj4gPiArcmVxdWlyZWQ6DQo+ID4gKyAgLSBjb21wYXRpYmxlDQo+ID4gKyAgLSBpbnRlcnJ1
cHRzDQo+ID4gKyAgLSByZXNldHMNCj4gPiArICAtIHJlc2V0LW5hbWVzDQo+ID4gKyAgLSBwb3dl
ci1kb21haW5zDQo+ID4gKyAgLSBjbG9ja3MNCj4gPiArICAtIGNsb2NrLW5hbWVzDQo+ID4gKw0K
PiA+ICthZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UNCj4gPiArDQo+ID4gK2V4YW1wbGVzOg0K
PiA+ICsgIC0gfA0KPiA+ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2Nsb2NrL210ODE5Mi1j
bGsuaD4NCj4gPiArICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxl
ci9pcnEuaD4NCj4gPiArICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJv
bGxlci9hcm0tZ2ljLmg+DQo+ID4gKyAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcG93ZXIvbXQ4
MTkyLXBvd2VyLmg+DQo+ID4gKw0KPiA+ICsgICAgYWZlOiBtdDgxOTItYWZlLXBjbSB7DQo+ID4g
KyAgICAgICAgY29tcGF0aWJsZSA9ICJtZWRpYXRlayxtdDgxOTItYXVkaW8iOw0KPiA+ICsgICAg
ICAgIGludGVycnVwdHMgPSA8R0lDX1NQSSAyMDIgSVJRX1RZUEVfTEVWRUxfSElHSD47DQo+ID4g
KyAgICAgICAgcmVzZXRzID0gPCZ3YXRjaGRvZyBNVDgxOTJfVE9QUkdVX0FVRElPX1NXX1JTVD47
DQo+ID4gKyAgICAgICAgcmVzZXQtbmFtZXMgPSAiYXVkaW9zeXMiOw0KPiA+ICsgICAgICAgIGFw
bWl4ZWRzeXMgPSA8JmFwbWl4ZWRzeXM+Ow0KPiA+ICsgICAgICAgIGluZnJhY2ZnID0gPCZpbmZy
YWNmZz47DQo+ID4gKyAgICAgICAgdG9wY2tnZW4gPSA8JnRvcGNrZ2VuPjsNCj4gPiArICAgICAg
ICBwb3dlci1kb21haW5zID0gPCZzY3BzeXMgTVQ4MTkyX1BPV0VSX0RPTUFJTl9BVURJTz47DQo+
ID4gKyAgICAgICAgY2xvY2tzID0gPCZhdWRzeXMgQ0xLX0FVRF9BRkU+LA0KPiA+ICsgICAgICAg
ICAgICAgICAgIDwmYXVkc3lzIENMS19BVURfREFDPiwNCj4gPiArICAgICAgICAgICAgICAgICA8
JmF1ZHN5cyBDTEtfQVVEX0RBQ19QUkVESVM+LA0KPiA+ICsgICAgICAgICAgICAgICAgIDwmaW5m
cmFjZmcgQ0xLX0lORlJBX0FVRElPPiwNCj4gPiArICAgICAgICAgICAgICAgICA8JmluZnJhY2Zn
IENMS19JTkZSQV9BVURJT18yNk1fQj47DQo+ID4gKyAgICAgICAgY2xvY2stbmFtZXMgPSAiYXVk
X2FmZV9jbGsiLA0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgImF1ZF9kYWNfY2xrIiwNCj4g
PiArICAgICAgICAgICAgICAgICAgICAgICJhdWRfZGFjX3ByZWRpc19jbGsiLA0KPiA+ICsgICAg
ICAgICAgICAgICAgICAgICAgImF1ZF9pbmZyYV9jbGsiLA0KPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAgImF1ZF9pbmZyYV8yNm1fY2xrIjsNCj4gPiArICAgIH07DQo+ID4gKw0KPiA+ICsuLi4N
Cj4gPiAtLSANCj4gPiAyLjE4LjANCg0K


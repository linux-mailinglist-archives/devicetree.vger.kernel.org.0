Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D8A428ADD5
	for <lists+devicetree@lfdr.de>; Mon, 12 Oct 2020 07:47:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726874AbgJLFrb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Oct 2020 01:47:31 -0400
Received: from mailgw02.mediatek.com ([210.61.82.184]:59630 "EHLO
        mailgw02.mediatek.com" rhost-flags-OK-FAIL-OK-FAIL) by vger.kernel.org
        with ESMTP id S1726072AbgJLFrb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Oct 2020 01:47:31 -0400
X-UUID: 50f1798ef84d47568f56d89a0de7b4a6-20201012
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
        h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID; bh=Qh32CvLCP7TbrAU9q4uRS7WfIF5HB8P3kFRMssgVV8s=;
        b=HSQ6gaQ9BT/8awzojpsomr6j0MvxxgkGnmo4bMBO0/udns3AnarywMX9wZUTFmhPjwk423W2hEk1Jls9qEBq0WBjHIwhD1UXHdl/qYS/j7sc6HWD9fmo09CE97oUvdpaeKPvC7lvRnw4RBN2eg8/7u2CvsJmra6sq4or7IFFG0M=;
X-UUID: 50f1798ef84d47568f56d89a0de7b4a6-20201012
Received: from mtkcas10.mediatek.inc [(172.21.101.39)] by mailgw02.mediatek.com
        (envelope-from <jiaxin.yu@mediatek.com>)
        (Cellopoint E-mail Firewall v4.1.14 Build 0819 with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
        with ESMTP id 2105306689; Mon, 12 Oct 2020 13:47:29 +0800
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by mtkmbs07n1.mediatek.inc
 (172.21.101.16) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Mon, 12 Oct
 2020 13:47:26 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 12 Oct 2020 13:47:25 +0800
Message-ID: <1602481646.8921.4.camel@mhfsdcap03>
Subject: Re: [PATCH 3/5] dt-bindings: mediatek: mt8192: add audio afe
 document
From:   Jiaxin Yu <jiaxin.yu@mediatek.com>
To:     Rob Herring <robh@kernel.org>
CC:     <linux-mediatek@lists.infradead.org>,
        <linux-arm-kernel@lists.infradead.org>, <shane.chien@mediatek.com>,
        <robh+dt@kernel.org>, <maowenan@huawei.com>,
        <matthias.bgg@gmail.com>, <p.zabel@pengutronix.de>,
        <broonie@kernel.org>, <alsa-devel@alsa-project.org>,
        <kuninori.morimoto.gx@renesas.com>, <devicetree@vger.kernel.org>,
        <tiwai@suse.com>, <tzungbi@google.com>
Date:   Mon, 12 Oct 2020 13:47:26 +0800
In-Reply-To: <20201005135503.GA86716@bogus>
References: <1601624142-18991-1-git-send-email-jiaxin.yu@mediatek.com>
         <1601624142-18991-4-git-send-email-jiaxin.yu@mediatek.com>
         <20201005135503.GA86716@bogus>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK:  N
Content-Transfer-Encoding: base64
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

T24gTW9uLCAyMDIwLTEwLTA1IGF0IDA4OjU1IC0wNTAwLCBSb2IgSGVycmluZyB3cm90ZToNCj4g
T24gRnJpLCAwMiBPY3QgMjAyMCAxNTozNTo0MCArMDgwMCwgSmlheGluIFl1IHdyb3RlOg0KPiA+
IFRoaXMgcGF0Y2ggYWRkcyBtdDgxOTIgYXVkaW8gYWZlIGRvY3VtZW50Lg0KPiA+IA0KPiA+IFNp
Z25lZC1vZmYtYnk6IEppYXhpbiBZdSA8amlheGluLnl1QG1lZGlhdGVrLmNvbT4NCj4gPiAtLS0N
Cj4gPiAgLi4uL2JpbmRpbmdzL3NvdW5kL210ODE5Mi1hZmUtcGNtLnlhbWwgICAgICAgIHwgOTgg
KysrKysrKysrKysrKysrKysrKw0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgOTggaW5zZXJ0aW9ucygr
KQ0KPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3NvdW5kL210ODE5Mi1hZmUtcGNtLnlhbWwNCj4gPiANCj4gDQo+IA0KPiBNeSBib3QgZm91
bmQgZXJyb3JzIHJ1bm5pbmcgJ21ha2UgZHRfYmluZGluZ19jaGVjaycgb24geW91ciBwYXRjaDoN
Cj4gDQo+IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb3VuZC9tdDgxOTItYWZl
LXBjbS5leGFtcGxlLmR0czoxOToxODogZmF0YWwgZXJyb3I6IGR0LWJpbmRpbmdzL2Nsb2NrL210
ODE5Mi1jbGsuaDogTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9yeQ0KPiAgICAxOSB8ICAgICAgICAg
I2luY2x1ZGUgPGR0LWJpbmRpbmdzL2Nsb2NrL210ODE5Mi1jbGsuaD4NCj4gICAgICAgfCAgICAg
ICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+DQo+IGNvbXBpbGF0
aW9uIHRlcm1pbmF0ZWQuDQo+IG1ha2VbMV06ICoqKiBbc2NyaXB0cy9NYWtlZmlsZS5saWI6MzQy
OiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc291bmQvbXQ4MTkyLWFmZS1wY20u
ZXhhbXBsZS5kdC55YW1sXSBFcnJvciAxDQo+IG1ha2VbMV06ICoqKiBXYWl0aW5nIGZvciB1bmZp
bmlzaGVkIGpvYnMuLi4uDQo+IG1ha2U6ICoqKiBbTWFrZWZpbGU6MTM2NjogZHRfYmluZGluZ19j
aGVja10gRXJyb3IgMg0KPiANCj4gDQo+IFNlZSBodHRwczovL3BhdGNod29yay5vemxhYnMub3Jn
L3BhdGNoLzEzNzU1ODINCj4gDQo+IElmIHlvdSBhbHJlYWR5IHJhbiAnbWFrZSBkdF9iaW5kaW5n
X2NoZWNrJyBhbmQgZGlkbid0IHNlZSB0aGUgYWJvdmUNCj4gZXJyb3IocyksIHRoZW4gbWFrZSBz
dXJlIGR0LXNjaGVtYSBpcyB1cCB0byBkYXRlOg0KPiANCj4gcGlwMyBpbnN0YWxsIGdpdCtodHRw
czovL2dpdGh1Yi5jb20vZGV2aWNldHJlZS1vcmcvZHQtc2NoZW1hLmdpdEBtYXN0ZXIgLS11cGdy
YWRlDQo+IA0KPiBQbGVhc2UgY2hlY2sgYW5kIHJlLXN1Ym1pdC4NCj4gDQpTb3JyeSwgSSBzaG91
bGQgYWRkIGEgZGVwZW5kZW5jeSBkZXNjcmlwdGlvbi4NCiJkdC1iaW5kaW5ncy9jbG9jay9tdDgx
OTItY2xrLmgiIGlzIGluY2x1ZGVkIGluDQpodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL2Nv
dmVyLzExNzUyMjMxIHNlcmllcyBvZiBwYXRjaGVzLCBidXQgdGhleQ0KaGFzIG5vdCBiZWVuIGFj
Y2VwdGVkLg0KDQo=


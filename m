Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 28D5F297B60
	for <lists+devicetree@lfdr.de>; Sat, 24 Oct 2020 10:04:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1756357AbgJXIEU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Oct 2020 04:04:20 -0400
Received: from mailgw01.mediatek.com ([210.61.82.183]:60617 "EHLO
        mailgw01.mediatek.com" rhost-flags-OK-FAIL-OK-FAIL) by vger.kernel.org
        with ESMTP id S1756276AbgJXIER (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Oct 2020 04:04:17 -0400
X-UUID: 89723c1ebcfe4fce82b133fbdef9940c-20201024
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
        h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From; bh=1KN7hszEVP8/uxqUi6+D3V0c7StohRofr7IFpn3sG2c=;
        b=GhZhxCzynm5wZkGdrbiDIfTXkG8pQ5ZclT8zPW4zlu1dAabOuoH7PE+xQQ4sV2V20U/veXybwHi1DYV0gJg9YG7dFB2f1T7HwMvfPJv92jkUIxFLCoQ0rzIMcvJSMAznmWhx9GgCMQoroxts+TNdBGQ8YrYauRlatuoBKGRL6Gc=;
X-UUID: 89723c1ebcfe4fce82b133fbdef9940c-20201024
Received: from mtkexhb01.mediatek.inc [(172.21.101.102)] by mailgw01.mediatek.com
        (envelope-from <jiaxin.yu@mediatek.com>)
        (Cellopoint E-mail Firewall v4.1.14 Build 0819 with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
        with ESMTP id 560457733; Sat, 24 Oct 2020 15:59:03 +0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs06n2.mediatek.inc (172.21.101.130) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 24 Oct 2020 15:59:01 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Sat, 24 Oct 2020 15:58:59 +0800
From:   Jiaxin Yu <jiaxin.yu@mediatek.com>
To:     <broonie@kernel.org>, <tiwai@suse.com>, <matthias.bgg@gmail.com>,
        <robh+dt@kernel.org>, <p.zabel@pengutronix.de>,
        <tzungbi@google.com>, <alsa-devel@alsa-project.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-mediatek@lists.infradead.org>, <devicetree@vger.kernel.org>
CC:     <shane.chien@mediatek.com>, <kuninori.morimoto.gx@renesas.com>,
        <Trevor.Wu@mediatek.com>, <Bicycle.Tsai@mediatek.com>,
        Jiaxin Yu <jiaxin.yu@mediatek.com>
Subject: [PATCH v3 0/9] ASoC: Mediatek: Add support for MT8192 SoC
Date:   Sat, 24 Oct 2020 15:58:50 +0800
Message-ID: <1603526339-15005-1-git-send-email-jiaxin.yu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
Content-Type: text/plain
X-TM-SNTS-SMTP: F3D02353B6E2DBA61C4A25150A69708FA218C2A4FA07713F8F03CC2CC6454B682000:8
X-MTK:  N
Content-Transfer-Encoding: base64
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

VGhpcyBzZXJpZXMgb2YgcGF0Y2hlcyBhZGRzIHN1cHBvcnQgZm9yIE1lZGlhdGVrIEFGRSBmb3Ig
TVQ4MTkyIFNvQy4gQXQgdGhlIHNhbWUNCnRpbWUsIHRoZSBjYWxpYnJhdGlvbiBmdW5jdGlvbiBv
ZiBNVDYzNTkgaXMgY29tcGxldGVkIHdpdGggcmVhbCBtYWNoaW5lIGRyaXZlci4NClRoZSBwYXRj
aCBpcyBiYXNlZCBvbiBicm9vbmllIHRyZWUgImZvci1uZXh0IiBicmFuY2guDQoNCkNoYW5nZSBz
aW5jZSB2MjoNCiAgLSBzcGxpdCB0aGUgZGFpIGRyaXZlciBmaWxlcyBhcyBhIHNlcGVyYXRlIHBh
dGNoDQogIC0gZml4IGR0LWJpbmRpbmdzIHRvIEdQTC0yLjAtb25seSBMaWNlbnNlDQogIC0gcmVt
b3ZlIHVubmVjZXNzYXJ5IHByZXBlcnR5IGRlc2NyaXB0aW9ucyBzdWNoIGFzICdtYXhJdGVtcycN
Cg0KQ2hhbmdlIHNpbmNlIHYxOg0KICAtIGZpeGVkIHNvbWUgdHlwb3MgcmVsYXRlZCB0byBkdC1i
aW5kaW5ncyBpbiBbdjEsMy81XSBhbmQgW3YxLDUvNV0NCiAgLSBhZGQgdmVuZG9yIHByZWZpeCB0
byB0aGUgcHJvcGVydGllcywgc3VjaCBhcyAibWVkaWF0ZWssYXBtaXhlZHN5cyINCiAgLSBhZGQg
YSBkZXBlbmRlbmN5IGRlc2NyaXB0aW9uIHRvIGluZGljYXRlIHRoZSByZXF1aXJlZCBoZWFkZXIg
ZmlsZXMNCg0KSmlheGluIFl1ICg5KToNCiAgQVNvQzogbWVkaWF0ZWs6IG10NjM1OTogYWRkIHRo
ZSBjYWxpYnJhdGlvbiBmdW5jdGlvbnMNCiAgQVNvQzogbWVkaWF0ZWs6IG10ODE5MjogYWRkIHBs
YXRmb3JtIGRyaXZlcg0KICBBU29DOiBtZWRpYXRlazogbXQ4MTkyOiBzdXBwb3J0IGkycyBpbiBw
bGF0Zm9ybSBkcml2ZXINCiAgQVNvQzogbWVkaWF0ZWs6IG10ODE5Mjogc3VwcG9ydCBhZGQgaW4g
cGxhdGZvcm0gZHJpdmVyDQogIEFTb0M6IG1lZGlhdGVrOiBtdDgxOTI6IHN1cHBvcnQgcGNtIGlu
IHBsYXRmb3JtIGRyaXZlcg0KICBBU29DOiBtZWRpYXRlazogbXQ4MTkyOiBzdXBwb3J0IHRkbSBp
biBwbGF0Zm9ybSBkcml2ZXINCiAgZHQtYmluZGluZ3M6IG1lZGlhdGVrOiBtdDgxOTI6IGFkZCBh
dWRpbyBhZmUgZG9jdW1lbnQNCiAgQVNvQzogbWVkaWF0ZWs6IG10ODE5MjogYWRkIG1hY2hpbmUg
ZHJpdmVyIHdpdGggbXQ2MzU5LCBydDEwMTUgYW5kDQogICAgcnQ1NjgyDQogIGR0LWJpbmRpbmdz
OiBtZWRpYXRlazogbXQ4MTkyOiBhZGQgbXQ4MTkyLW10NjM1OC1ydDEwMTUtcnQ1NjgyDQogICAg
ZG9jdW1lbnQNCg0KIC4uLi9iaW5kaW5ncy9zb3VuZC9tdDgxOTItYWZlLXBjbS55YW1sICAgICAg
ICB8ICAxMDAgKw0KIC4uLi9zb3VuZC9tdDgxOTItbXQ2MzU5LXJ0MTAxNS1ydDU2ODIueWFtbCAg
ICB8ICAgNDIgKw0KIHNvdW5kL3NvYy9jb2RlY3MvbXQ2MzU5LmMgICAgICAgICAgICAgICAgICAg
ICB8ICAxMTAgKw0KIHNvdW5kL3NvYy9jb2RlY3MvbXQ2MzU5LmggICAgICAgICAgICAgICAgICAg
ICB8ICAgIDcgKw0KIHNvdW5kL3NvYy9tZWRpYXRlay9LY29uZmlnICAgICAgICAgICAgICAgICAg
ICB8ICAgMjMgKw0KIHNvdW5kL3NvYy9tZWRpYXRlay9NYWtlZmlsZSAgICAgICAgICAgICAgICAg
ICB8ICAgIDEgKw0KIHNvdW5kL3NvYy9tZWRpYXRlay9jb21tb24vbXRrLWFmZS1mZS1kYWkuYyAg
ICB8ICAgMTMgKy0NCiBzb3VuZC9zb2MvbWVkaWF0ZWsvY29tbW9uL210ay1iYXNlLWFmZS5oICAg
ICAgfCAgICAxICsNCiBzb3VuZC9zb2MvbWVkaWF0ZWsvbXQ4MTkyL01ha2VmaWxlICAgICAgICAg
ICAgfCAgIDE2ICsNCiBzb3VuZC9zb2MvbWVkaWF0ZWsvbXQ4MTkyL210ODE5Mi1hZmUtY2xrLmMg
ICAgfCAgNjY5ICsrKysNCiBzb3VuZC9zb2MvbWVkaWF0ZWsvbXQ4MTkyL210ODE5Mi1hZmUtY2xr
LmggICAgfCAgMjQ0ICsrDQogc291bmQvc29jL21lZGlhdGVrL210ODE5Mi9tdDgxOTItYWZlLWNv
bW1vbi5oIHwgIDE3MCArDQogLi4uL3NvYy9tZWRpYXRlay9tdDgxOTIvbXQ4MTkyLWFmZS1jb250
cm9sLmMgIHwgIDE2MyArDQogc291bmQvc29jL21lZGlhdGVrL210ODE5Mi9tdDgxOTItYWZlLWdw
aW8uYyAgIHwgIDMwNiArKw0KIHNvdW5kL3NvYy9tZWRpYXRlay9tdDgxOTIvbXQ4MTkyLWFmZS1n
cGlvLmggICB8ICAgMTkgKw0KIHNvdW5kL3NvYy9tZWRpYXRlay9tdDgxOTIvbXQ4MTkyLWFmZS1w
Y20uYyAgICB8IDIzODkgKysrKysrKysrKysrKw0KIHNvdW5kL3NvYy9tZWRpYXRlay9tdDgxOTIv
bXQ4MTkyLWRhaS1hZGRhLmMgICB8IDE0ODkgKysrKysrKysNCiBzb3VuZC9zb2MvbWVkaWF0ZWsv
bXQ4MTkyL210ODE5Mi1kYWktaTJzLmMgICAgfCAyMTM5ICsrKysrKysrKysrDQogc291bmQvc29j
L21lZGlhdGVrL210ODE5Mi9tdDgxOTItZGFpLXBjbS5jICAgIHwgIDQwOSArKysNCiBzb3VuZC9z
b2MvbWVkaWF0ZWsvbXQ4MTkyL210ODE5Mi1kYWktdGRtLmMgICAgfCAgNzc4ICsrKysNCiAuLi4v
bWVkaWF0ZWsvbXQ4MTkyL210ODE5Mi1pbnRlcmNvbm5lY3Rpb24uaCAgfCAgIDY1ICsNCiAuLi4v
bXQ4MTkyL210ODE5Mi1tdDYzNTktcnQxMDE1LXJ0NTY4Mi5jICAgICAgfCAxMDU4ICsrKysrKw0K
IHNvdW5kL3NvYy9tZWRpYXRlay9tdDgxOTIvbXQ4MTkyLXJlZy5oICAgICAgICB8IDMxMzEgKysr
KysrKysrKysrKysrKysNCiAyMyBmaWxlcyBjaGFuZ2VkLCAxMzMzOCBpbnNlcnRpb25zKCspLCA0
IGRlbGV0aW9ucygtKQ0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3Mvc291bmQvbXQ4MTkyLWFmZS1wY20ueWFtbA0KIGNyZWF0ZSBtb2RlIDEwMDY0
NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc291bmQvbXQ4MTkyLW10NjM1OS1y
dDEwMTUtcnQ1NjgyLnlhbWwNCiBjcmVhdGUgbW9kZSAxMDA2NDQgc291bmQvc29jL21lZGlhdGVr
L210ODE5Mi9NYWtlZmlsZQ0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBzb3VuZC9zb2MvbWVkaWF0ZWsv
bXQ4MTkyL210ODE5Mi1hZmUtY2xrLmMNCiBjcmVhdGUgbW9kZSAxMDA2NDQgc291bmQvc29jL21l
ZGlhdGVrL210ODE5Mi9tdDgxOTItYWZlLWNsay5oDQogY3JlYXRlIG1vZGUgMTAwNjQ0IHNvdW5k
L3NvYy9tZWRpYXRlay9tdDgxOTIvbXQ4MTkyLWFmZS1jb21tb24uaA0KIGNyZWF0ZSBtb2RlIDEw
MDY0NCBzb3VuZC9zb2MvbWVkaWF0ZWsvbXQ4MTkyL210ODE5Mi1hZmUtY29udHJvbC5jDQogY3Jl
YXRlIG1vZGUgMTAwNjQ0IHNvdW5kL3NvYy9tZWRpYXRlay9tdDgxOTIvbXQ4MTkyLWFmZS1ncGlv
LmMNCiBjcmVhdGUgbW9kZSAxMDA2NDQgc291bmQvc29jL21lZGlhdGVrL210ODE5Mi9tdDgxOTIt
YWZlLWdwaW8uaA0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBzb3VuZC9zb2MvbWVkaWF0ZWsvbXQ4MTky
L210ODE5Mi1hZmUtcGNtLmMNCiBjcmVhdGUgbW9kZSAxMDA2NDQgc291bmQvc29jL21lZGlhdGVr
L210ODE5Mi9tdDgxOTItZGFpLWFkZGEuYw0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBzb3VuZC9zb2Mv
bWVkaWF0ZWsvbXQ4MTkyL210ODE5Mi1kYWktaTJzLmMNCiBjcmVhdGUgbW9kZSAxMDA2NDQgc291
bmQvc29jL21lZGlhdGVrL210ODE5Mi9tdDgxOTItZGFpLXBjbS5jDQogY3JlYXRlIG1vZGUgMTAw
NjQ0IHNvdW5kL3NvYy9tZWRpYXRlay9tdDgxOTIvbXQ4MTkyLWRhaS10ZG0uYw0KIGNyZWF0ZSBt
b2RlIDEwMDY0NCBzb3VuZC9zb2MvbWVkaWF0ZWsvbXQ4MTkyL210ODE5Mi1pbnRlcmNvbm5lY3Rp
b24uaA0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBzb3VuZC9zb2MvbWVkaWF0ZWsvbXQ4MTkyL210ODE5
Mi1tdDYzNTktcnQxMDE1LXJ0NTY4Mi5jDQogY3JlYXRlIG1vZGUgMTAwNjQ0IHNvdW5kL3NvYy9t
ZWRpYXRlay9tdDgxOTIvbXQ4MTkyLXJlZy5oDQoNCi0tIA0KMi4xOC4wDQo=


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A2142294985
	for <lists+devicetree@lfdr.de>; Wed, 21 Oct 2020 10:54:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2441124AbgJUIyF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Oct 2020 04:54:05 -0400
Received: from mailgw02.mediatek.com ([210.61.82.184]:55831 "EHLO
        mailgw02.mediatek.com" rhost-flags-OK-FAIL-OK-FAIL) by vger.kernel.org
        with ESMTP id S2441121AbgJUIyF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Oct 2020 04:54:05 -0400
X-UUID: c3e5ca207bb84ec5ab4730a7655bdcb0-20201021
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
        h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From; bh=zaM/JuZ3fzlu2O0iBgAyjKGNvAslXjaq46Pi4xFcyfI=;
        b=RbXkanGPWlK4tySdvwQ5xxXLUazu7+iXU92Ncrf3hjP6bLDg5DeYQCn+/NRpmXpFFu/UZb+cMkfN0QoquS4hd67Oka8StUdny0/iZuuYUACYu90p3y/zuj29dAQg75+5bTERs0SwBx0xcBLWuDc7IA3sobeuPUki9n9xBguwQB8=;
X-UUID: c3e5ca207bb84ec5ab4730a7655bdcb0-20201021
Received: from mtkcas08.mediatek.inc [(172.21.101.126)] by mailgw02.mediatek.com
        (envelope-from <jiaxin.yu@mediatek.com>)
        (Cellopoint E-mail Firewall v4.1.14 Build 0819 with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
        with ESMTP id 2009036345; Wed, 21 Oct 2020 16:53:59 +0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 21 Oct 2020 16:53:57 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 21 Oct 2020 16:53:57 +0800
From:   Jiaxin Yu <jiaxin.yu@mediatek.com>
To:     <broonie@kernel.org>, <tiwai@suse.com>, <matthias.bgg@gmail.com>,
        <robh+dt@kernel.org>, <p.zabel@pengutronix.de>,
        <tzungbi@google.com>, <alsa-devel@alsa-project.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-mediatek@lists.infradead.org>, <devicetree@vger.kernel.org>
CC:     <shane.chien@mediatek.com>, <kuninori.morimoto.gx@renesas.com>,
        Jiaxin Yu <jiaxin.yu@mediatek.com>
Subject: [PATCH v2 0/5] ASoC: Mediatek: Add support for MT8192 SoC
Date:   Wed, 21 Oct 2020 16:53:50 +0800
Message-ID: <1603270435-3548-1-git-send-email-jiaxin.yu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
Content-Type: text/plain
X-MTK:  N
Content-Transfer-Encoding: base64
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

VGhpcyBzZXJpZXMgb2YgcGF0Y2hlcyBhZGRzIHN1cHBvcnQgZm9yIE1lZGlhdGVrIEFGRSBmb3Ig
TVQ4MTkyIFNvQy4gQXQgdGhlIHNhbWUNCnRpbWUsIHRoZSBjYWxpYnJhdGlvbiBmdW5jdGlvbiBv
ZiBNVDYzNTkgaXMgY29tcGxldGVkIHdpdGggcmVhbCBtYWNoaW5lIGRyaXZlci4NClRoZSBwYXRj
aCBpcyBiYXNlZCBvbiBicm9vbmllIHRyZWUgImZvci1uZXh0IiBicmFuY2guDQoNCkNoYW5nZSBz
aW5jZSB2MToNCiAgLSBmaXhlZCBzb21lIHR5cG9zIHJlbGF0ZWQgdG8gZHQtYmluZGluZ3MgaW4g
W3YxLDMvNV0gYW5kIFt2MSw1LzVdDQogIC0gYWRkIHZlbmRvciBwcmVmaXggdG8gdGhlIHByb3Bl
cnRpZXMsIHN1Y2ggYXMgIm1lZGlhdGVrLGFwbWl4ZWRzeXMiDQogIC0gYWRkIGEgZGVwZW5kZW5j
eSBkZXNjcmlwdGlvbiB0byBpbmRpY2F0ZSB0aGUgcmVxdWlyZWQgaGVhZGVyIGZpbGVzDQoNCkpp
YXhpbiBZdSAoNSk6DQogIEFTb0M6IG1lZGlhdGVrOiBtdDYzNTk6IGFkZCB0aGUgY2FsaWJyYXRp
b24gZnVuY3Rpb25zDQogIEFTb0M6IG1lZGlhdGVrOiBtdDgxOTI6IGFkZCBwbGF0Zm9ybSBkcml2
ZXINCiAgZHQtYmluZGluZ3M6IG1lZGlhdGVrOiBtdDgxOTI6IGFkZCBhdWRpbyBhZmUgZG9jdW1l
bnQNCiAgQVNvQzogbWVkaWF0ZWs6IG10ODE5MjogYWRkIG1hY2hpbmUgZHJpdmVyIHdpdGggbXQ2
MzU5LCBydDEwMTUgYW5kDQogICAgcnQ1NjgyDQogIGR0LWJpbmRpbmdzOiBtZWRpYXRlazogbXQ4
MTkyOiBhZGQgbXQ4MTkyLW10NjM1OC1ydDEwMTUtcnQ1NjgyDQogICAgZG9jdW1lbnQNCg0KIC4u
Li9iaW5kaW5ncy9zb3VuZC9tdDgxOTItYWZlLXBjbS55YW1sICAgICAgICB8ICAxMDMgKw0KIC4u
Li9zb3VuZC9tdDgxOTItbXQ2MzU5LXJ0MTAxNS1ydDU2ODIueWFtbCAgICB8ICAgNDIgKw0KIHNv
dW5kL3NvYy9jb2RlY3MvbXQ2MzU5LmMgICAgICAgICAgICAgICAgICAgICB8ICAxMTAgKw0KIHNv
dW5kL3NvYy9jb2RlY3MvbXQ2MzU5LmggICAgICAgICAgICAgICAgICAgICB8ICAgIDcgKw0KIHNv
dW5kL3NvYy9tZWRpYXRlay9LY29uZmlnICAgICAgICAgICAgICAgICAgICB8ICAgMjMgKw0KIHNv
dW5kL3NvYy9tZWRpYXRlay9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICB8ICAgIDEgKw0KIHNv
dW5kL3NvYy9tZWRpYXRlay9jb21tb24vbXRrLWFmZS1mZS1kYWkuYyAgICB8ICAgMTMgKy0NCiBz
b3VuZC9zb2MvbWVkaWF0ZWsvY29tbW9uL210ay1iYXNlLWFmZS5oICAgICAgfCAgICAxICsNCiBz
b3VuZC9zb2MvbWVkaWF0ZWsvbXQ4MTkyL01ha2VmaWxlICAgICAgICAgICAgfCAgIDE2ICsNCiBz
b3VuZC9zb2MvbWVkaWF0ZWsvbXQ4MTkyL210ODE5Mi1hZmUtY2xrLmMgICAgfCAgNjY5ICsrKysN
CiBzb3VuZC9zb2MvbWVkaWF0ZWsvbXQ4MTkyL210ODE5Mi1hZmUtY2xrLmggICAgfCAgMjQ0ICsr
DQogc291bmQvc29jL21lZGlhdGVrL210ODE5Mi9tdDgxOTItYWZlLWNvbW1vbi5oIHwgIDE3MCAr
DQogLi4uL3NvYy9tZWRpYXRlay9tdDgxOTIvbXQ4MTkyLWFmZS1jb250cm9sLmMgIHwgIDE2MyAr
DQogc291bmQvc29jL21lZGlhdGVrL210ODE5Mi9tdDgxOTItYWZlLWdwaW8uYyAgIHwgIDMwNiAr
Kw0KIHNvdW5kL3NvYy9tZWRpYXRlay9tdDgxOTIvbXQ4MTkyLWFmZS1ncGlvLmggICB8ICAgMTkg
Kw0KIHNvdW5kL3NvYy9tZWRpYXRlay9tdDgxOTIvbXQ4MTkyLWFmZS1wY20uYyAgICB8IDIzODkg
KysrKysrKysrKysrKw0KIHNvdW5kL3NvYy9tZWRpYXRlay9tdDgxOTIvbXQ4MTkyLWRhaS1hZGRh
LmMgICB8IDE0ODkgKysrKysrKysNCiBzb3VuZC9zb2MvbWVkaWF0ZWsvbXQ4MTkyL210ODE5Mi1k
YWktaTJzLmMgICAgfCAyMTM5ICsrKysrKysrKysrDQogc291bmQvc29jL21lZGlhdGVrL210ODE5
Mi9tdDgxOTItZGFpLXBjbS5jICAgIHwgIDQwOSArKysNCiBzb3VuZC9zb2MvbWVkaWF0ZWsvbXQ4
MTkyL210ODE5Mi1kYWktdGRtLmMgICAgfCAgNzc4ICsrKysNCiAuLi4vbWVkaWF0ZWsvbXQ4MTky
L210ODE5Mi1pbnRlcmNvbm5lY3Rpb24uaCAgfCAgIDY1ICsNCiAuLi4vbXQ4MTkyL210ODE5Mi1t
dDYzNTktcnQxMDE1LXJ0NTY4Mi5jICAgICAgfCAxMDU4ICsrKysrKw0KIHNvdW5kL3NvYy9tZWRp
YXRlay9tdDgxOTIvbXQ4MTkyLXJlZy5oICAgICAgICB8IDMxMzEgKysrKysrKysrKysrKysrKysN
CiAyMyBmaWxlcyBjaGFuZ2VkLCAxMzM0MSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0K
IGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc291
bmQvbXQ4MTkyLWFmZS1wY20ueWFtbA0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3Mvc291bmQvbXQ4MTkyLW10NjM1OS1ydDEwMTUtcnQ1NjgyLnlh
bWwNCiBjcmVhdGUgbW9kZSAxMDA2NDQgc291bmQvc29jL21lZGlhdGVrL210ODE5Mi9NYWtlZmls
ZQ0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBzb3VuZC9zb2MvbWVkaWF0ZWsvbXQ4MTkyL210ODE5Mi1h
ZmUtY2xrLmMNCiBjcmVhdGUgbW9kZSAxMDA2NDQgc291bmQvc29jL21lZGlhdGVrL210ODE5Mi9t
dDgxOTItYWZlLWNsay5oDQogY3JlYXRlIG1vZGUgMTAwNjQ0IHNvdW5kL3NvYy9tZWRpYXRlay9t
dDgxOTIvbXQ4MTkyLWFmZS1jb21tb24uaA0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBzb3VuZC9zb2Mv
bWVkaWF0ZWsvbXQ4MTkyL210ODE5Mi1hZmUtY29udHJvbC5jDQogY3JlYXRlIG1vZGUgMTAwNjQ0
IHNvdW5kL3NvYy9tZWRpYXRlay9tdDgxOTIvbXQ4MTkyLWFmZS1ncGlvLmMNCiBjcmVhdGUgbW9k
ZSAxMDA2NDQgc291bmQvc29jL21lZGlhdGVrL210ODE5Mi9tdDgxOTItYWZlLWdwaW8uaA0KIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBzb3VuZC9zb2MvbWVkaWF0ZWsvbXQ4MTkyL210ODE5Mi1hZmUtcGNt
LmMNCiBjcmVhdGUgbW9kZSAxMDA2NDQgc291bmQvc29jL21lZGlhdGVrL210ODE5Mi9tdDgxOTIt
ZGFpLWFkZGEuYw0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBzb3VuZC9zb2MvbWVkaWF0ZWsvbXQ4MTky
L210ODE5Mi1kYWktaTJzLmMNCiBjcmVhdGUgbW9kZSAxMDA2NDQgc291bmQvc29jL21lZGlhdGVr
L210ODE5Mi9tdDgxOTItZGFpLXBjbS5jDQogY3JlYXRlIG1vZGUgMTAwNjQ0IHNvdW5kL3NvYy9t
ZWRpYXRlay9tdDgxOTIvbXQ4MTkyLWRhaS10ZG0uYw0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBzb3Vu
ZC9zb2MvbWVkaWF0ZWsvbXQ4MTkyL210ODE5Mi1pbnRlcmNvbm5lY3Rpb24uaA0KIGNyZWF0ZSBt
b2RlIDEwMDY0NCBzb3VuZC9zb2MvbWVkaWF0ZWsvbXQ4MTkyL210ODE5Mi1tdDYzNTktcnQxMDE1
LXJ0NTY4Mi5jDQogY3JlYXRlIG1vZGUgMTAwNjQ0IHNvdW5kL3NvYy9tZWRpYXRlay9tdDgxOTIv
bXQ4MTkyLXJlZy5oDQoNCi0tIA0KMi4xOC4wDQo=


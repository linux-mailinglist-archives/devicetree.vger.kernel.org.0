Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 67276295C60
	for <lists+devicetree@lfdr.de>; Thu, 22 Oct 2020 12:04:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2896299AbgJVKEy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Oct 2020 06:04:54 -0400
Received: from mailgw01.mediatek.com ([210.61.82.183]:54796 "EHLO
        mailgw01.mediatek.com" rhost-flags-OK-FAIL-OK-FAIL) by vger.kernel.org
        with ESMTP id S2896298AbgJVKEy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Oct 2020 06:04:54 -0400
X-UUID: 4bcf5a71af7a4d519d267a17187997da-20201022
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
        h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID; bh=/pWlKbK+2FYWyyCxb4qgVtC6XtrPsrK8S8hX+HS2blI=;
        b=DRNz6zE2WX6m1Uwwb9De5VQLqYfxkCYBVc6186fgeGBHZGIEP1Yd+GHq/nzqe2z25KcbVUaRwwcZL7cHEj1YVqCn6yR+J6ac2ElRaBHc+uksUmhB9dDv0t6Iiw4QyAcZsfsFQmfHwX3LqAu+1xPyCa8iPKk4sXUjdW1KTc50fRM=;
X-UUID: 4bcf5a71af7a4d519d267a17187997da-20201022
Received: from mtkcas08.mediatek.inc [(172.21.101.126)] by mailgw01.mediatek.com
        (envelope-from <jiaxin.yu@mediatek.com>)
        (Cellopoint E-mail Firewall v4.1.14 Build 0819 with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
        with ESMTP id 117150928; Thu, 22 Oct 2020 18:04:47 +0800
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by mtkmbs07n2.mediatek.inc
 (172.21.101.141) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Thu, 22 Oct
 2020 18:04:45 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 22 Oct 2020 18:04:45 +0800
Message-ID: <1603361084.8921.26.camel@mhfsdcap03>
Subject: Re: [PATCH v2 2/5] ASoC: mediatek: mt8192: add platform driver
From:   Jiaxin Yu <jiaxin.yu@mediatek.com>
To:     Mark Brown <broonie@kernel.org>
CC:     <tiwai@suse.com>, <matthias.bgg@gmail.com>, <robh+dt@kernel.org>,
        <p.zabel@pengutronix.de>, <tzungbi@google.com>,
        <alsa-devel@alsa-project.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-mediatek@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <shane.chien@mediatek.com>, <kuninori.morimoto.gx@renesas.com>
Date:   Thu, 22 Oct 2020 18:04:44 +0800
In-Reply-To: <20201021132339.GF4497@sirena.org.uk>
References: <1603270435-3548-1-git-send-email-jiaxin.yu@mediatek.com>
         <1603270435-3548-3-git-send-email-jiaxin.yu@mediatek.com>
         <20201021132339.GF4497@sirena.org.uk>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK:  N
Content-Transfer-Encoding: base64
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

T24gV2VkLCAyMDIwLTEwLTIxIGF0IDE0OjIzICswMTAwLCBNYXJrIEJyb3duIHdyb3RlOg0KPiBP
biBXZWQsIE9jdCAyMSwgMjAyMCBhdCAwNDo1Mzo1MlBNICswODAwLCBKaWF4aW4gWXUgd3JvdGU6
DQo+ID4gVGhpcyBwYXRjaCBhZGRzIG10ODE5MiBwbGF0Zm9ybSBhbmQgYWZmaWxpYXRlZCBkcml2
ZXJzLg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEppYXhpbiBZdSA8amlheGluLnl1QG1lZGlh
dGVrLmNvbT4NCj4gPiAtLS0NCj4gPiAgc291bmQvc29jL21lZGlhdGVrL0tjb25maWcgICAgICAg
ICAgICAgICAgICAgIHwgICAxMCArDQo+ID4gIHNvdW5kL3NvYy9tZWRpYXRlay9NYWtlZmlsZSAg
ICAgICAgICAgICAgICAgICB8ICAgIDEgKw0KPiA+ICBzb3VuZC9zb2MvbWVkaWF0ZWsvY29tbW9u
L210ay1hZmUtZmUtZGFpLmMgICAgfCAgIDEzICstDQo+ID4gIHNvdW5kL3NvYy9tZWRpYXRlay9j
b21tb24vbXRrLWJhc2UtYWZlLmggICAgICB8ICAgIDEgKw0KPiA+ICBzb3VuZC9zb2MvbWVkaWF0
ZWsvbXQ4MTkyL01ha2VmaWxlICAgICAgICAgICAgfCAgIDE0ICsNCj4gPiAgc291bmQvc29jL21l
ZGlhdGVrL210ODE5Mi9tdDgxOTItYWZlLWNsay5jICAgIHwgIDY2OSArKysrDQo+ID4gIHNvdW5k
L3NvYy9tZWRpYXRlay9tdDgxOTIvbXQ4MTkyLWFmZS1jbGsuaCAgICB8ICAyNDQgKysNCj4gPiAg
c291bmQvc29jL21lZGlhdGVrL210ODE5Mi9tdDgxOTItYWZlLWNvbW1vbi5oIHwgIDE3MCArDQo+
ID4gIC4uLi9zb2MvbWVkaWF0ZWsvbXQ4MTkyL210ODE5Mi1hZmUtY29udHJvbC5jICB8ICAxNjMg
Kw0KPiA+ICBzb3VuZC9zb2MvbWVkaWF0ZWsvbXQ4MTkyL210ODE5Mi1hZmUtZ3Bpby5jICAgfCAg
MzA2ICsrDQo+ID4gIHNvdW5kL3NvYy9tZWRpYXRlay9tdDgxOTIvbXQ4MTkyLWFmZS1ncGlvLmgg
ICB8ICAgMTkgKw0KPiA+ICBzb3VuZC9zb2MvbWVkaWF0ZWsvbXQ4MTkyL210ODE5Mi1hZmUtcGNt
LmMgICAgfCAyMzg5ICsrKysrKysrKysrKysNCj4gPiAgc291bmQvc29jL21lZGlhdGVrL210ODE5
Mi9tdDgxOTItZGFpLWFkZGEuYyAgIHwgMTQ4OSArKysrKysrKw0KPiA+ICBzb3VuZC9zb2MvbWVk
aWF0ZWsvbXQ4MTkyL210ODE5Mi1kYWktaTJzLmMgICAgfCAyMTM5ICsrKysrKysrKysrDQo+ID4g
IHNvdW5kL3NvYy9tZWRpYXRlay9tdDgxOTIvbXQ4MTkyLWRhaS1wY20uYyAgICB8ICA0MDkgKysr
DQo+ID4gIHNvdW5kL3NvYy9tZWRpYXRlay9tdDgxOTIvbXQ4MTkyLWRhaS10ZG0uYyAgICB8ICA3
NzggKysrKw0KPiA+ICAuLi4vbWVkaWF0ZWsvbXQ4MTkyL210ODE5Mi1pbnRlcmNvbm5lY3Rpb24u
aCAgfCAgIDY1ICsNCj4gPiAgc291bmQvc29jL21lZGlhdGVrL210ODE5Mi9tdDgxOTItcmVnLmgg
ICAgICAgIHwgMzEzMSArKysrKysrKysrKysrKysrKw0KPiA+ICAxOCBmaWxlcyBjaGFuZ2VkLCAx
MjAwNiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiANCj4gVGhpcyBpcyAqd2F5KiB0
b28gYmlnIHRvIGJlIGEgc2luZ2xlIHBhdGNoLCBwbGVhc2Ugc3BsaXQgaXQgdXAgLSBpdCdzDQo+
IG92ZXIgNjAwSy4NCg0KSSB3aWxsIHNwbGl0IHRoZSBkYWkgZHJpdmVyIGZpbGVzIGFzIGEgc2Vw
ZXJhdGUgcGF0Y2hlcy4gU3VjaCBhczoNCkFTb0M6IG1lZGlhdGVrOiBtdDgxOTI6IHN1cHBvcnQg
YWRkYSBpbiBwbGF0Zm9ybSBkcml2ZXINCkFTb0M6IG1lZGlhdGVrOiBtdDgxOTI6IHN1cHBvcnQg
aTJzIGluIHBsYXRmb3JtIGRyaXZlcg0KQVNvQzogbWVkaWF0ZWs6IG10ODE5Mjogc3VwcG9ydCBw
Y20gaW4gcGxhdGZvcm0gZHJpdmVyDQpBU29DOiBtZWRpYXRlazogbXQ4MTkyOiBzdXBwb3J0IHRk
bSBpbiBwbGF0Zm9ybSBkcml2ZXINClRoZXkncmUgc3RpbGwgaW4gc2VyaWVzIG9mICJBU29DOiBt
ZWRpYXRlazogbXQ4MTkyOiBhZGQgcGxhdGZvcm0NCmRyaXZlciIuIA0KSXMgdGhpcyBhcHByb3By
aWF0ZT8gUGxlYXNlIGNvcnJlY3QgbWUgaWYgdGhlcmUgaXMgYW55IG1pc3VuZGVyc3RhbmRpbmcu
DQo=


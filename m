Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1621D297B4E
	for <lists+devicetree@lfdr.de>; Sat, 24 Oct 2020 09:59:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1759966AbgJXH7Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Oct 2020 03:59:25 -0400
Received: from mailgw01.mediatek.com ([210.61.82.183]:57989 "EHLO
        mailgw01.mediatek.com" rhost-flags-OK-FAIL-OK-FAIL) by vger.kernel.org
        with ESMTP id S1759964AbgJXH7Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Oct 2020 03:59:25 -0400
X-UUID: cfdbe9aaa37f456687c0485955e48a89-20201024
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
        h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=3AjCwyELXJsAF7KDdOI9+UHESz6oEunbkSh/sKmq2DQ=;
        b=EdThZFgqrJGZSDlJhbthkDxNUG3fEfmRQ73mWYKKxI5BMV+uRpdUKgK2fzXpyxvRno2VIrSJIXrCY4fETnv6Y7EMYdfekCbZglYUfmokOofIsue5RwNvbj1SJru42BMxbvDW3QA3Tm7W6jsrfz6AM/LQzkyCqd4q2GqlluNiF2w=;
X-UUID: cfdbe9aaa37f456687c0485955e48a89-20201024
Received: from mtkcas10.mediatek.inc [(172.21.101.39)] by mailgw01.mediatek.com
        (envelope-from <jiaxin.yu@mediatek.com>)
        (Cellopoint E-mail Firewall v4.1.14 Build 0819 with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
        with ESMTP id 1978766517; Sat, 24 Oct 2020 15:59:10 +0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 24 Oct 2020 15:59:06 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Sat, 24 Oct 2020 15:59:05 +0800
From:   Jiaxin Yu <jiaxin.yu@mediatek.com>
To:     <broonie@kernel.org>, <tiwai@suse.com>, <matthias.bgg@gmail.com>,
        <robh+dt@kernel.org>, <p.zabel@pengutronix.de>,
        <tzungbi@google.com>, <alsa-devel@alsa-project.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-mediatek@lists.infradead.org>, <devicetree@vger.kernel.org>
CC:     <shane.chien@mediatek.com>, <kuninori.morimoto.gx@renesas.com>,
        <Trevor.Wu@mediatek.com>, <Bicycle.Tsai@mediatek.com>,
        Jiaxin Yu <jiaxin.yu@mediatek.com>
Subject: [PATCH v3 7/9] dt-bindings: mediatek: mt8192: add audio afe document
Date:   Sat, 24 Oct 2020 15:58:57 +0800
Message-ID: <1603526339-15005-8-git-send-email-jiaxin.yu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1603526339-15005-1-git-send-email-jiaxin.yu@mediatek.com>
References: <1603526339-15005-1-git-send-email-jiaxin.yu@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain
X-TM-SNTS-SMTP: 752CD73EACB22FF28118C6D94BA59127F50E0A8B90263C55B5BCF1A76A41BD472000:8
X-MTK:  N
Content-Transfer-Encoding: base64
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

VGhpcyBwYXRjaCBhZGRzIG10ODE5MiBhdWRpbyBhZmUgZG9jdW1lbnQuDQoNClNpZ25lZC1vZmYt
Ynk6IEppYXhpbiBZdSA8amlheGluLnl1QG1lZGlhdGVrLmNvbT4NCi0tLQ0KVGhpcyBwYXRjaCBk
ZXBlbmRzIG9uIGZvbGxvd2luZyBzZXJpZXMgdGhhdCBoYXMgbm90IGJlZW4gYWNjZXB0ZWQ6DQpo
dHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL2NvdmVyLzExNzUyMjMxDQooZHQtYmluZGluZ3Mv
Y2xvY2svbXQ4MTkyLWNsay5oIGlzIGluY2x1ZGVkIGluIGl0LikNCmh0dHBzOi8vcGF0Y2h3b3Jr
Lmtlcm5lbC5vcmcvcGF0Y2gvMTE3NTU4OTUNCihkdC1iaW5kaW5ncy9wb3dlci9tdDgxOTItcG93
ZXIuaCBpcyBpbmNsdWRlZCBpbiBpdC4pDQpodHRwczovL2xvcmUua2VybmVsLm9yZy9wYXRjaHdv
cmsvcGF0Y2gvMTMyMTExOA0KKGR0LWJpbmRpbmdzL3Jlc2V0LWNvbnRyb2xsZXIvbXQ4MTkyLXJl
c2V0cy5oIGlzIGluY2x1ZGVkIGluIGl0LikNCg0KIC4uLi9iaW5kaW5ncy9zb3VuZC9tdDgxOTIt
YWZlLXBjbS55YW1sICAgICAgICB8IDEwMCArKysrKysrKysrKysrKysrKysNCiAxIGZpbGUgY2hh
bmdlZCwgMTAwIGluc2VydGlvbnMoKykNCiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvdW5kL210ODE5Mi1hZmUtcGNtLnlhbWwNCg0KZGlmZiAt
LWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb3VuZC9tdDgxOTItYWZl
LXBjbS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvdW5kL210ODE5
Mi1hZmUtcGNtLnlhbWwNCm5ldyBmaWxlIG1vZGUgMTAwNjQ0DQppbmRleCAwMDAwMDAwMDAwMDAw
Li4wMTcwYzkzODAyZDI5DQotLS0gL2Rldi9udWxsDQorKysgYi9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3Mvc291bmQvbXQ4MTkyLWFmZS1wY20ueWFtbA0KQEAgLTAsMCArMSwxMDAg
QEANCisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNs
YXVzZSkNCislWUFNTCAxLjINCistLS0NCiskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hl
bWFzL3NvdW5kL210ODE5Mi1hZmUtcGNtLnlhbWwjDQorJHNjaGVtYTogaHR0cDovL2RldmljZXRy
ZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjDQorDQordGl0bGU6IE1lZGlhdGVrIEFGRSBQ
Q00gY29udHJvbGxlciBmb3IgbXQ4MTkyDQorDQorbWFpbnRhaW5lcnM6DQorICAgLSBKaWF4aW4g
WXUgPGppYXhpbi55dUBtZWRpYXRlay5jb20+DQorICAgLSBTaGFuZSBDaGllbiA8c2hhbmUuY2hp
ZW5AbWVkaWF0ZWsuY29tPg0KKw0KK3Byb3BlcnRpZXM6DQorICBjb21wYXRpYmxlOg0KKyAgICAg
IGNvbnN0OiBtZWRpYXRlayxtdDgxOTItYXVkaW8NCisNCisgIGludGVycnVwdHM6DQorICAgIG1h
eEl0ZW1zOiAxDQorDQorICByZXNldHM6DQorICAgIG1heEl0ZW1zOiAxDQorDQorICByZXNldC1u
YW1lczoNCisgICAgY29uc3Q6IGF1ZGlvc3lzDQorDQorICBtZWRpYXRlayxhcG1peGVkc3lzOg0K
KyAgICAkcmVmOiAiL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvcGhhbmRsZSINCisg
ICAgZGVzY3JpcHRpb246IFRoZSBwaGFuZGxlIG9mIHRoZSBtZWRpYXRlayBhcG1peGVkc3lzIGNv
bnRyb2xsZXINCisNCisgIG1lZGlhdGVrLGluZnJhY2ZnOg0KKyAgICAkcmVmOiAiL3NjaGVtYXMv
dHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvcGhhbmRsZSINCisgICAgZGVzY3JpcHRpb246IFRoZSBw
aGFuZGxlIG9mIHRoZSBtZWRpYXRlayBpbmZyYWNmZyBjb250cm9sbGVyDQorDQorICBtZWRpYXRl
ayx0b3Bja2dlbjoNCisgICAgJHJlZjogIi9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25z
L3BoYW5kbGUiDQorICAgIGRlc2NyaXB0aW9uOiBUaGUgcGhhbmRsZSBvZiB0aGUgbWVkaWF0ZWsg
dG9wY2tnZW4gY29udHJvbGxlcg0KKw0KKyAgcG93ZXItZG9tYWluczoNCisgICAgbWF4SXRlbXM6
IDENCisNCisgIGNsb2NrczoNCisgICAgaXRlbXM6DQorICAgICAgLSBkZXNjcmlwdGlvbjogQUZF
IGNsb2NrDQorICAgICAgLSBkZXNjcmlwdGlvbjogQUREQSBEQUMgY2xvY2sNCisgICAgICAtIGRl
c2NyaXB0aW9uOiBBRERBIERBQyBwcmUtZGlzdG9ydGlvbiBjbG9jaw0KKyAgICAgIC0gZGVzY3Jp
cHRpb246IGF1ZGlvIGluZnJhIHN5cyBjbG9jaw0KKyAgICAgIC0gZGVzY3JpcHRpb246IGF1ZGlv
IGluZnJhIDI2TSBjbG9jaw0KKw0KKyAgY2xvY2stbmFtZXM6DQorICAgIGl0ZW1zOg0KKyAgICAg
IC0gY29uc3Q6IGF1ZF9hZmVfY2xrDQorICAgICAgLSBjb25zdDogYXVkX2RhY19jbGsNCisgICAg
ICAtIGNvbnN0OiBhdWRfZGFjX3ByZWRpc19jbGsNCisgICAgICAtIGNvbnN0OiBhdWRfaW5mcmFf
Y2xrDQorICAgICAgLSBjb25zdDogYXVkX2luZnJhXzI2bV9jbGsNCisNCityZXF1aXJlZDoNCisg
IC0gY29tcGF0aWJsZQ0KKyAgLSBpbnRlcnJ1cHRzDQorICAtIHJlc2V0cw0KKyAgLSByZXNldC1u
YW1lcw0KKyAgLSBtZWRpYXRlayxhcG1peGVkc3lzDQorICAtIG1lZGlhdGVrLGluZnJhY2ZnDQor
ICAtIG1lZGlhdGVrLHRvcGNrZ2VuDQorICAtIHBvd2VyLWRvbWFpbnMNCisgIC0gY2xvY2tzDQor
ICAtIGNsb2NrLW5hbWVzDQorDQorYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlDQorDQorZXhh
bXBsZXM6DQorICAtIHwNCisgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2Nsb2NrL210ODE5Mi1j
bGsuaD4NCisgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2Fy
bS1naWMuaD4NCisgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVy
L2lycS5oPg0KKyAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcG93ZXIvbXQ4MTkyLXBvd2VyLmg+
DQorICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9yZXNldC1jb250cm9sbGVyL210ODE5Mi1yZXNl
dHMuaD4NCisNCisgICAgYWZlOiBtdDgxOTItYWZlLXBjbSB7DQorICAgICAgICBjb21wYXRpYmxl
ID0gIm1lZGlhdGVrLG10ODE5Mi1hdWRpbyI7DQorICAgICAgICBpbnRlcnJ1cHRzID0gPEdJQ19T
UEkgMjAyIElSUV9UWVBFX0xFVkVMX0hJR0g+Ow0KKyAgICAgICAgcmVzZXRzID0gPCZ3YXRjaGRv
ZyBNVDgxOTJfVE9QUkdVX0FVRElPX1NXX1JTVD47DQorICAgICAgICByZXNldC1uYW1lcyA9ICJh
dWRpb3N5cyI7DQorICAgICAgICBtZWRpYXRlayxhcG1peGVkc3lzID0gPCZhcG1peGVkc3lzPjsN
CisgICAgICAgIG1lZGlhdGVrLGluZnJhY2ZnID0gPCZpbmZyYWNmZz47DQorICAgICAgICBtZWRp
YXRlayx0b3Bja2dlbiA9IDwmdG9wY2tnZW4+Ow0KKyAgICAgICAgcG93ZXItZG9tYWlucyA9IDwm
c2Nwc3lzIE1UODE5Ml9QT1dFUl9ET01BSU5fQVVESU8+Ow0KKyAgICAgICAgY2xvY2tzID0gPCZh
dWRzeXMgQ0xLX0FVRF9BRkU+LA0KKyAgICAgICAgICAgICAgICAgPCZhdWRzeXMgQ0xLX0FVRF9E
QUM+LA0KKyAgICAgICAgICAgICAgICAgPCZhdWRzeXMgQ0xLX0FVRF9EQUNfUFJFRElTPiwNCisg
ICAgICAgICAgICAgICAgIDwmaW5mcmFjZmcgQ0xLX0lORlJBX0FVRElPPiwNCisgICAgICAgICAg
ICAgICAgIDwmaW5mcmFjZmcgQ0xLX0lORlJBX0FVRElPXzI2TV9CPjsNCisgICAgICAgIGNsb2Nr
LW5hbWVzID0gImF1ZF9hZmVfY2xrIiwNCisgICAgICAgICAgICAgICAgICAgICAgImF1ZF9kYWNf
Y2xrIiwNCisgICAgICAgICAgICAgICAgICAgICAgImF1ZF9kYWNfcHJlZGlzX2NsayIsDQorICAg
ICAgICAgICAgICAgICAgICAgICJhdWRfaW5mcmFfY2xrIiwNCisgICAgICAgICAgICAgICAgICAg
ICAgImF1ZF9pbmZyYV8yNm1fY2xrIjsNCisgICAgfTsNCisNCisuLi4NCi0tIA0KMi4xOC4wDQo=


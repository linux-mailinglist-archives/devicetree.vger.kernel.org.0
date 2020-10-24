Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 112D0297B14
	for <lists+devicetree@lfdr.de>; Sat, 24 Oct 2020 08:41:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1759790AbgJXGlm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Oct 2020 02:41:42 -0400
Received: from mailgw02.mediatek.com ([210.61.82.184]:60011 "EHLO
        mailgw02.mediatek.com" rhost-flags-OK-FAIL-OK-FAIL) by vger.kernel.org
        with ESMTP id S1759788AbgJXGll (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Oct 2020 02:41:41 -0400
X-UUID: 4cbf253a646845a49be5dae87f805810-20201024
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
        h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=z8uG4a3bYliZ7FsgCx8o/eOtrJLS0cww4SngmK83wEA=;
        b=djoDf9K8nRyrU9Vt5oEHrHdVZaNaEyHIqQOLdV+uXwkOVhmnqmSXE3r3MAw8RyJu2L3e6qpe/1rh0n0/QY6MRwn63hIeq643gV+gCH5u/vWL2tDHN2qgeHf9a+VfFxDCDxMq2hLjwbGPqkiYrPpxUXdNHhnj9SpEsVFKK5vF6u4=;
X-UUID: 4cbf253a646845a49be5dae87f805810-20201024
Received: from mtkcas10.mediatek.inc [(172.21.101.39)] by mailgw02.mediatek.com
        (envelope-from <jiaxin.yu@mediatek.com>)
        (Cellopoint E-mail Firewall v4.1.14 Build 0819 with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
        with ESMTP id 1604815674; Sat, 24 Oct 2020 14:41:32 +0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 24 Oct 2020 14:41:29 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Sat, 24 Oct 2020 14:41:29 +0800
From:   Jiaxin Yu <jiaxin.yu@mediatek.com>
To:     <broonie@kernel.org>, <robh+dt@kernel.org>,
        <matthias.bgg@gmail.com>, <tiwai@suse.com>, <tzungbi@google.com>,
        <alsa-devel@alsa-project.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-mediatek@lists.infradead.org>, <devicetree@vger.kernel.org>
CC:     <shane.chien@mediatek.com>, Jiaxin Yu <jiaxin.yu@mediatek.com>
Subject: [PATCH 2/2] dt-bindings: mediatek: mt8192: add ul-delay-ms property
Date:   Sat, 24 Oct 2020 14:41:26 +0800
Message-ID: <1603521686-13036-3-git-send-email-jiaxin.yu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1603521686-13036-1-git-send-email-jiaxin.yu@mediatek.com>
References: <1603521686-13036-1-git-send-email-jiaxin.yu@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain
X-MTK:  N
Content-Transfer-Encoding: base64
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

V2UgY2FuIGNob29zZSB0byBkcm9wIGFueSBsZW5ndGggb2YgZGF0YSBmcm9tIHRoZSBiZWdpbm5p
bmcgYWNjb3JkaW5nDQphY2Nyb2RpbmcgJ3VsLWRlbGF5LW1zJy4NCg0KU2lnbmVkLW9mZi1ieTog
SmlheGluIFl1IDxqaWF4aW4ueXVAbWVkaWF0ZWsuY29tPg0KLS0tDQogRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3NvdW5kL210NjM1OS55YW1sIHwgNiArKysrKysNCiAxIGZpbGUg
Y2hhbmdlZCwgNiBpbnNlcnRpb25zKCspDQoNCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3Mvc291bmQvbXQ2MzU5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3Mvc291bmQvbXQ2MzU5LnlhbWwNCmluZGV4IGE1NGY0NjZmNzY5ZDQuLmZk
MmQwMmM5N2ZlN2MgMTAwNjQ0DQotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3Mvc291bmQvbXQ2MzU5LnlhbWwNCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9zb3VuZC9tdDYzNTkueWFtbA0KQEAgLTQ5LDYgKzQ5LDExIEBAIHByb3BlcnRpZXM6DQog
ICAgIGRlc2NyaXB0aW9uOiB8DQogICAgICAgU3BlY2lmaWVzIHRoZSB0eXBlIG9mIG1pYyB0eXBl
IGNvbm5lY3RlZCB0byBhZGMyDQogDQorICBtZWRpYXRlayx1bC1kZWxheS1tczoNCisgICAgJHJl
ZjogL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvdWludDMyDQorICAgIGRlc2NyaXB0
aW9uOiB8DQorICAgICAgU2tpcCBmaXJzdCB0aW1lIGRhdGEgYXQgdGhlIGJlZ2lubmluZyBvZiBE
TUlDIHJlY29yZGluZw0KKw0KIGFkZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxzZQ0KIA0KIGV4YW1w
bGVzOg0KQEAgLTU2LDYgKzYxLDcgQEAgZXhhbXBsZXM6DQogICAgIG10NjM1OWNvZGVjOiBtdDYz
NTljb2RlYyB7DQogICAgICAgbWVkaWF0ZWssZG1pYy1tb2RlID0gPDA+Ow0KICAgICAgIG1lZGlh
dGVrLG1pYy10eXBlLTAgPSA8Mj47DQorICAgICAgbWVkaWF0ZWssdWwtZGVsYXktbXMgPSA8NTA+
Ow0KICAgICB9Ow0KIA0KIC4uLg0KLS0gDQoyLjE4LjANCg==


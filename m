Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 24411297B13
	for <lists+devicetree@lfdr.de>; Sat, 24 Oct 2020 08:41:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1759789AbgJXGld (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Oct 2020 02:41:33 -0400
Received: from mailgw01.mediatek.com ([210.61.82.183]:47526 "EHLO
        mailgw01.mediatek.com" rhost-flags-OK-FAIL-OK-FAIL) by vger.kernel.org
        with ESMTP id S1759788AbgJXGld (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Oct 2020 02:41:33 -0400
X-UUID: 67378a30485c40cb9ebd0e4d6b5fba0a-20201024
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
        h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From; bh=DQPo+D8DmTE+gRly/pqrKB2WAr0Beeu56QSN7DCokCo=;
        b=seYv3PxweKiMNUN0HMsZZe0vCOsUJ8mRhEcQ1bVUzgGpmPkJE6vUd9QGA8vjcimWqngDZqxdiIS2wwLt4DPa3WvYTAqhGBu5Mc+RnIFzmRWAb6U8ZrfmxJuNWIYUWegfroz/26adyVbqTDyZd83OAZY4LOGJalH+JYs1WcFl9AE=;
X-UUID: 67378a30485c40cb9ebd0e4d6b5fba0a-20201024
Received: from mtkcas10.mediatek.inc [(172.21.101.39)] by mailgw01.mediatek.com
        (envelope-from <jiaxin.yu@mediatek.com>)
        (Cellopoint E-mail Firewall v4.1.14 Build 0819 with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
        with ESMTP id 1467262418; Sat, 24 Oct 2020 14:41:31 +0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 24 Oct 2020 14:41:28 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Sat, 24 Oct 2020 14:41:28 +0800
From:   Jiaxin Yu <jiaxin.yu@mediatek.com>
To:     <broonie@kernel.org>, <robh+dt@kernel.org>,
        <matthias.bgg@gmail.com>, <tiwai@suse.com>, <tzungbi@google.com>,
        <alsa-devel@alsa-project.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-mediatek@lists.infradead.org>, <devicetree@vger.kernel.org>
CC:     <shane.chien@mediatek.com>, Jiaxin Yu <jiaxin.yu@mediatek.com>
Subject: [PATCH 0/2] ASoC: mt6359: skip first time data at the beginning of DMIC recording
Date:   Sat, 24 Oct 2020 14:41:24 +0800
Message-ID: <1603521686-13036-1-git-send-email-jiaxin.yu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
Content-Type: text/plain
X-MTK:  N
Content-Transfer-Encoding: base64
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

VGhpcyBwYXRjaCBmaXhlZCB0aGUgcG9wIG5vaXNlIGF0IHRoZSBiZWdpbm5pbmcgb2YgRE1JQyBy
ZWNvcmRpbmcuDQoNCkppYXhpbiBZdSAoMik6DQogIEFTb0M6IG10NjM1OTogc2tpcCBmaXJzdCB0
aW1lIGRhdGEgYXQgdGhlIGJlZ2lubmluZyBvZiBETUlDIHJlY29yZGluZw0KICBkdC1iaW5kaW5n
czogbWVkaWF0ZWs6IG10ODE5MjogYWRkIHVsLWRlbGF5LW1zIHByb3BlcnR5DQoNCiAuLi4vZGV2
aWNldHJlZS9iaW5kaW5ncy9zb3VuZC9tdDYzNTkueWFtbCAgICAgfCAgNiArKysNCiBzb3VuZC9z
b2MvY29kZWNzL210NjM1OS5jICAgICAgICAgICAgICAgICAgICAgfCAzOCArKysrKysrKysrKysr
KysrKy0tDQogc291bmQvc29jL2NvZGVjcy9tdDYzNTkuaCAgICAgICAgICAgICAgICAgICAgIHwg
IDEgKw0KIDMgZmlsZXMgY2hhbmdlZCwgNDEgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkN
Cg0KLS0gDQoyLjE4LjANCg==


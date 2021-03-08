Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 89CB03308E8
	for <lists+devicetree@lfdr.de>; Mon,  8 Mar 2021 08:46:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231834AbhCHHpz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Mar 2021 02:45:55 -0500
Received: from Mailgw01.mediatek.com ([1.203.163.78]:60023 "EHLO
        mailgw01.mediatek.com" rhost-flags-OK-FAIL-OK-FAIL) by vger.kernel.org
        with ESMTP id S231148AbhCHHpX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Mar 2021 02:45:23 -0500
X-UUID: 34d8a7761cbf454ab103dac6a02afcf4-20210308
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
        h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From; bh=3NJa3uzGgW7t/Ol4eqhtI3kLpt3c4V8uffCuNuRsK6U=;
        b=M5FQtux0dPcr+XzOzzcFXlbkqOLUkr1amZxez/hTlEycvcvBfDyWN1NCbBD+fa3qomsY/QeUyRI+NbJ10khCQZKf1ipoc4fMv0kTVjNF5o1DmvoUmFpAD+WDjJugLypPkqDhitnA5WpYixaaxFeUPjV84rD8DBpVDlmujPCa5fM=;
X-UUID: 34d8a7761cbf454ab103dac6a02afcf4-20210308
Received: from mtkcas36.mediatek.inc [(172.27.4.253)] by mailgw01.mediatek.com
        (envelope-from <mason.zhang@mediatek.com>)
        (mailgw01.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
        with ESMTP id 630203002; Mon, 08 Mar 2021 15:45:18 +0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 MTKMBS32N1.mediatek.inc (172.27.4.71) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 8 Mar 2021 15:45:12 +0800
Received: from localhost.localdomain (10.15.20.246) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 8 Mar 2021 15:45:11 +0800
From:   Mason Zhang <Mason.Zhang@mediatek.com>
To:     peng zhou <Peng.Zhou@mediatek.com>,
        wulin li <Wulin.Li@mediatek.com>
CC:     <devicetree@vger.kernel.org>,
        Mason Zhang <Mason.Zhang@mediatek.com>,
        Peng Zhou <peng.zhou@mediatek.com>
Subject: [PATCH v2 0/4] MediaTek eMMC inline encryption support 
Date:   Mon, 8 Mar 2021 15:39:07 +0800
Message-ID: <20210308073906.20802-1-Mason.Zhang@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
Content-Type: text/plain
X-TM-SNTS-SMTP: D0CBEFE1331B90CCE97211F31A6EF64123396A12B485CE89284EA474267BEA102000:8
X-MTK:  N
Content-Transfer-Encoding: base64
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

RnJvbTogUGVuZyBaaG91IDxwZW5nLnpob3VAbWVkaWF0ZWsuY29tPg0KDQpIZWxsbywNCg0KTWVk
aWF0ZWsgZU1NQyBoYXJkd2FyZSBJUCBoYXMgSW5saW5lIENyeXB0byBFbmdpbmUgKElDRSksDQp3
ZSBzdXBwb3J0IGlubGluZSBlbmNyeXB0aW9uIG5vdy4NCg0KRm9yIElubGluZSBDcnlwdG8gRW5n
aW5lIChJQ0UpLCBzZWU6DQotIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWFybS1tc20v
MjAyMTAxMjYwMDE0NTYuMzgyOTg5LTItZWJpZ2dlcnNAa2VybmVsLm9yZy9ULw0KDQpDaGFuZ2Vk
IGluIHYyOg0KLSBmaXggZW1haWwgZm9ybWF0DQotIGNoYW5nZSBzb21lIGRlc2NyaXB0aW9uDQoN
ClBlbmcgWmhvdSAoNCk6DQogIG1tYzogTWVkaWF0ZWs6IGFkZCBJbmxpbmUgQ3J5cHRvIEVuZ2lu
ZSBzdXBwb3J0DQogIG1tYzogTWVkaWF0ZWs6IGVuYWJsZSBjcnlwdG8gaGFyZHdhcmUgZW5naW5l
DQogIGFybTY0OiBkdHM6IE1lZGlhdGVrOiBNVDY3Nzk6IGFkZCBtbWMgbm9kZSB3aXRoIElDRSBz
ZXR0aW5nDQogIGR0LWJpbmdkaW5nczogbW1jOiBNZWRpYXRlazogYWRkIElDRSBjbG9jaw0KDQog
Li4uL2RldmljZXRyZWUvYmluZGluZ3MvbW1jL210ay1zZC55YW1sICAgICAgIHwgIDYgKystDQog
YXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDY3NzkuZHRzaSAgICAgIHwgMTQgKysrKysr
Kw0KIGRyaXZlcnMvbW1jL2hvc3QvbXRrLXNkLmMgICAgICAgICAgICAgICAgICAgICB8IDQyICsr
KysrKysrKysrKysrKysrKy0NCiAzIGZpbGVzIGNoYW5nZWQsIDU5IGluc2VydGlvbnMoKyksIDMg
ZGVsZXRpb25zKC0pDQoNCi0tIA0KMi4xOC4wDQo=


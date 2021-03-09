Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D7284331C96
	for <lists+devicetree@lfdr.de>; Tue,  9 Mar 2021 02:49:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229951AbhCIBtT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Mar 2021 20:49:19 -0500
Received: from mailgw02.mediatek.com ([1.203.163.81]:19363 "EHLO
        mailgw02.mediatek.com" rhost-flags-OK-FAIL-OK-FAIL) by vger.kernel.org
        with ESMTP id S229992AbhCIBtF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Mar 2021 20:49:05 -0500
X-UUID: 16388bee5638478c8a0277f549734229-20210309
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
        h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From; bh=voKB3JTtp23roJcLmppifE/2eVEe8ZJYpXa+eKJCcHU=;
        b=EiuCNotkfF6WhHSV6SgJ64NXbvs5wWWumSAi72+Zvdf7FWxw0R7i7T5LANoY73UNTKpRQlHf3cMNuoLxDcKEkLkKpAfR08hrTDvtMKMMqolr4wTOtsUsr1Fs/KFOYvui29J1WHgKwq5i7cfmdfIRq7pOwBGCrukr2qldDo+A3rY=;
X-UUID: 16388bee5638478c8a0277f549734229-20210309
Received: from mtkcas34.mediatek.inc [(172.27.4.253)] by mailgw02.mediatek.com
        (envelope-from <peng.zhou@mediatek.com>)
        (mailgw01.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
        with ESMTP id 704263753; Tue, 09 Mar 2021 09:48:58 +0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 MTKMBS32N1.mediatek.inc (172.27.4.71) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 9 Mar 2021 09:48:52 +0800
Received: from localhost.localdomain (10.15.20.246) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Tue, 9 Mar 2021 09:48:51 +0800
From:   Peng Zhou <peng.zhou@mediatek.com>
To:     Wulin Li <wulin.li@mediatek.com>
CC:     <devicetree@vger.kernel.org>, Peng Zhou <Peng.Zhou@mediatek.com>
Subject: [PATCH v2 0/4] MediaTek eMMC inline encryption support 
Date:   Tue, 9 Mar 2021 09:42:49 +0800
Message-ID: <20210309014248.12395-1-peng.zhou@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
Content-Type: text/plain
X-TM-SNTS-SMTP: 612D24C022E8E6BCD8DFA9DEACD1300AF84742850E82D3430BE953B60C2C4ED72000:8
X-MTK:  N
Content-Transfer-Encoding: base64
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

RnJvbTogUGVuZyBaaG91IDxQZW5nLlpob3VAbWVkaWF0ZWsuY29tPg0KDQpIZWxsbywNCg0KTWVk
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


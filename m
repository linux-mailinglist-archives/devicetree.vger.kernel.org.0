Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 590C534D5FB
	for <lists+devicetree@lfdr.de>; Mon, 29 Mar 2021 19:25:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230394AbhC2RZL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Mar 2021 13:25:11 -0400
Received: from mailgw01.mediatek.com ([210.61.82.183]:51606 "EHLO
        mailgw01.mediatek.com" rhost-flags-OK-FAIL-OK-FAIL) by vger.kernel.org
        with ESMTP id S230226AbhC2RY5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Mar 2021 13:24:57 -0400
X-UUID: ce6e32342d9f4717a1f9baa938ee65d3-20210330
X-UUID: ce6e32342d9f4717a1f9baa938ee65d3-20210330
Received: from mtkmbs10n1.mediatek.inc [(172.21.101.34)] by mailgw01.mediatek.com
        (envelope-from <ryder.lee@mediatek.com>)
        (Cellopoint E-mail Firewall v4.1.14 Build 0819 with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
        with ESMTP id 1129123698; Tue, 30 Mar 2021 01:24:51 +0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 30 Mar 2021 01:24:49 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Tue, 30 Mar 2021 01:24:49 +0800
From:   Ryder Lee <ryder.lee@mediatek.com>
To:     Matthias Brugger <matthias.bgg@gmail.com>
CC:     Felix Fietkau <nbd@nbd.name>,
        Lorenzo Bianconi <lorenzo.bianconi@redhat.com>,
        Shayne Chen <shayne.chen@mediatek.com>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-mediatek@lists.infradead.org>,
        Ryder Lee <ryder.lee@mediatek.com>
Subject: [PATCH v2] arm64: dts: mt7622: add ePA/eLNA pinmux for built-in WiFi
Date:   Tue, 30 Mar 2021 01:24:48 +0800
Message-ID: <641c5e40f54e7c9c8eaa6be398d7169445b6fede.1617006498.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
Content-Type: text/plain
X-TM-SNTS-SMTP: 33C84F3A3DC6B97209695C5BC5AA06205A65E043701F837A42238801DCC1A5FA2000:8
X-MTK:  N
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This just illustrates one of possible combinations. User should setup
the corresponding pins according to the onboard RF data that stores
in eeprom.

Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
---
change since v2 - add pinctrl-names = "default"
---
 arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts b/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts
index 08ad0ffb24df..f2dc850010f1 100644
--- a/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts
+++ b/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts
@@ -495,6 +495,16 @@
 			groups = "watchdog";
 		};
 	};
+
+	wmac_pins: wmac-pins {
+		mux {
+			function = "antsel";
+			groups = "antsel0", "antsel1", "antsel2", "antsel3",
+				 "antsel4", "antsel5", "antsel6", "antsel7",
+				 "antsel8", "antsel9", "antsel12", "antsel13",
+				 "antsel14", "antsel15", "antsel16", "antsel17";
+		};
+	};
 };
 
 &pwm {
@@ -559,5 +569,7 @@
 };
 
 &wmac {
+	pinctrl-names = "default";
+	pinctrl-0 = <&wmac_pins>;
 	status = "okay";
 };
-- 
2.18.0


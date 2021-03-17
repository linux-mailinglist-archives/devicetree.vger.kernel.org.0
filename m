Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A993133F57C
	for <lists+devicetree@lfdr.de>; Wed, 17 Mar 2021 17:29:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232409AbhCQQ3J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Mar 2021 12:29:09 -0400
Received: from mailgw01.mediatek.com ([210.61.82.183]:37158 "EHLO
        mailgw01.mediatek.com" rhost-flags-OK-FAIL-OK-FAIL) by vger.kernel.org
        with ESMTP id S231378AbhCQQ2i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Mar 2021 12:28:38 -0400
X-UUID: 3a0d8fea687a4b56b92e43ec5c721397-20210318
X-UUID: 3a0d8fea687a4b56b92e43ec5c721397-20210318
Received: from mtkmbs10n2.mediatek.inc [(172.21.101.183)] by mailgw01.mediatek.com
        (envelope-from <ryder.lee@mediatek.com>)
        (Cellopoint E-mail Firewall v4.1.14 Build 0819 with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
        with ESMTP id 1888217899; Thu, 18 Mar 2021 00:28:34 +0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs06n2.mediatek.inc (172.21.101.130) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 18 Mar 2021 00:28:32 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 18 Mar 2021 00:28:32 +0800
From:   Ryder Lee <ryder.lee@mediatek.com>
To:     Matthias Brugger <matthias.bgg@gmail.com>
CC:     Felix Fietkau <nbd@nbd.name>,
        Lorenzo Bianconi <lorenzo.bianconi@redhat.com>,
        Shayne Chen <shayne.chen@mediatek.com>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-mediatek@lists.infradead.org>,
        Ryder Lee <ryder.lee@mediatek.com>
Subject: [PATCH] arm64: dts: mt7622: add ePA/eLNA pinmux for built-in WiFi
Date:   Thu, 18 Mar 2021 00:28:32 +0800
Message-ID: <7c565b111ce2dc8e26c04cc15e7e17239390fd55.1615997929.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <1fb0ff65cb7d8c4f3197a87b43c26c5925e973ea.1615997929.git.ryder.lee@mediatek.com>
References: <1fb0ff65cb7d8c4f3197a87b43c26c5925e973ea.1615997929.git.ryder.lee@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain
X-TM-SNTS-SMTP: B45593C075271649236C3B4EE87190C598451E3E15E89443E18361BFF628057F2000:8
X-MTK:  N
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This just illustrates one of possible combinations. User should setup
the corresponding pins according to the onboard RF data that stores
in eeprom.

Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts b/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts
index 08ad0ffb24df..50e74ce715f4 100644
--- a/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts
+++ b/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts
@@ -495,6 +495,17 @@
 			groups = "watchdog";
 		};
 	};
+
+	/* specify pinctrl-names = "epa-state" for ePA devices */
+	wmac0_pins: epa-pins {
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
-- 
2.18.0


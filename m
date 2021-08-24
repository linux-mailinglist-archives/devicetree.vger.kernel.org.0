Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 839B93F5AE0
	for <lists+devicetree@lfdr.de>; Tue, 24 Aug 2021 11:19:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235489AbhHXJUE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Aug 2021 05:20:04 -0400
Received: from lucky1.263xmail.com ([211.157.147.132]:53120 "EHLO
        lucky1.263xmail.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235687AbhHXJT7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Aug 2021 05:19:59 -0400
Received: from localhost (unknown [192.168.167.16])
        by lucky1.263xmail.com (Postfix) with ESMTP id 60C58FB89D;
        Tue, 24 Aug 2021 17:19:12 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
        by smtp.263.net (postfix) whith ESMTP id P704T139881214887680S1629796736938922_;
        Tue, 24 Aug 2021 17:19:02 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <6468d61e6fc0bf28c73c76649ed44478>
X-RL-SENDER: sugar.zhang@rock-chips.com
X-SENDER: zxg@rock-chips.com
X-LOGIN-NAME: sugar.zhang@rock-chips.com
X-FST-TO: broonie@kernel.org
X-RCPT-COUNT: 6
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From:   Sugar Zhang <sugar.zhang@rock-chips.com>
To:     broonie@kernel.org, heiko@sntech.de
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org,
        Sugar Zhang <sugar.zhang@rock-chips.com>
Subject: [PATCH v2 13/15] ASoC: rockchip: i2s: Add support for frame inversion
Date:   Tue, 24 Aug 2021 17:18:52 +0800
Message-Id: <1629796734-4243-3-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1629796561-4025-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1629796561-4025-1-git-send-email-sugar.zhang@rock-chips.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds support for frame inversion.

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
---

Changes in v2: None

 sound/soc/rockchip/rockchip_i2s.c | 20 +++++++++++++++++---
 sound/soc/rockchip/rockchip_i2s.h | 10 ++++++----
 2 files changed, 23 insertions(+), 7 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index 8898ba4..84884ce 100644
--- a/sound/soc/rockchip/rockchip_i2s.c
+++ b/sound/soc/rockchip/rockchip_i2s.c
@@ -233,13 +233,27 @@ static int rockchip_i2s_set_fmt(struct snd_soc_dai *cpu_dai,
 
 	regmap_update_bits(i2s->regmap, I2S_CKR, mask, val);
 
-	mask = I2S_CKR_CKP_MASK;
+	mask = I2S_CKR_CKP_MASK | I2S_CKR_TLP_MASK | I2S_CKR_RLP_MASK;
 	switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 	case SND_SOC_DAIFMT_NB_NF:
-		val = I2S_CKR_CKP_NEG;
+		val = I2S_CKR_CKP_NORMAL |
+		      I2S_CKR_TLP_NORMAL |
+		      I2S_CKR_RLP_NORMAL;
+		break;
+	case SND_SOC_DAIFMT_NB_IF:
+		val = I2S_CKR_CKP_NORMAL |
+		      I2S_CKR_TLP_INVERTED |
+		      I2S_CKR_RLP_INVERTED;
 		break;
 	case SND_SOC_DAIFMT_IB_NF:
-		val = I2S_CKR_CKP_POS;
+		val = I2S_CKR_CKP_INVERTED |
+		      I2S_CKR_TLP_NORMAL |
+		      I2S_CKR_RLP_NORMAL;
+		break;
+	case SND_SOC_DAIFMT_IB_IF:
+		val = I2S_CKR_CKP_INVERTED |
+		      I2S_CKR_TLP_INVERTED |
+		      I2S_CKR_RLP_INVERTED;
 		break;
 	default:
 		ret = -EINVAL;
diff --git a/sound/soc/rockchip/rockchip_i2s.h b/sound/soc/rockchip/rockchip_i2s.h
index fcaae24..251851b 100644
--- a/sound/soc/rockchip/rockchip_i2s.h
+++ b/sound/soc/rockchip/rockchip_i2s.h
@@ -88,15 +88,17 @@
 #define I2S_CKR_MSS_SLAVE	(1 << I2S_CKR_MSS_SHIFT)
 #define I2S_CKR_MSS_MASK	(1 << I2S_CKR_MSS_SHIFT)
 #define I2S_CKR_CKP_SHIFT	26
-#define I2S_CKR_CKP_NEG		(0 << I2S_CKR_CKP_SHIFT)
-#define I2S_CKR_CKP_POS		(1 << I2S_CKR_CKP_SHIFT)
+#define I2S_CKR_CKP_NORMAL	(0 << I2S_CKR_CKP_SHIFT)
+#define I2S_CKR_CKP_INVERTED	(1 << I2S_CKR_CKP_SHIFT)
 #define I2S_CKR_CKP_MASK	(1 << I2S_CKR_CKP_SHIFT)
 #define I2S_CKR_RLP_SHIFT	25
 #define I2S_CKR_RLP_NORMAL	(0 << I2S_CKR_RLP_SHIFT)
-#define I2S_CKR_RLP_OPPSITE	(1 << I2S_CKR_RLP_SHIFT)
+#define I2S_CKR_RLP_INVERTED	(1 << I2S_CKR_RLP_SHIFT)
+#define I2S_CKR_RLP_MASK	(1 << I2S_CKR_RLP_SHIFT)
 #define I2S_CKR_TLP_SHIFT	24
 #define I2S_CKR_TLP_NORMAL	(0 << I2S_CKR_TLP_SHIFT)
-#define I2S_CKR_TLP_OPPSITE	(1 << I2S_CKR_TLP_SHIFT)
+#define I2S_CKR_TLP_INVERTED	(1 << I2S_CKR_TLP_SHIFT)
+#define I2S_CKR_TLP_MASK	(1 << I2S_CKR_TLP_SHIFT)
 #define I2S_CKR_MDIV_SHIFT	16
 #define I2S_CKR_MDIV(x)		((x - 1) << I2S_CKR_MDIV_SHIFT)
 #define I2S_CKR_MDIV_MASK	(0xff << I2S_CKR_MDIV_SHIFT)
-- 
2.7.4




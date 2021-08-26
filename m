Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 22EBA3F816E
	for <lists+devicetree@lfdr.de>; Thu, 26 Aug 2021 06:03:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232333AbhHZEEI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Aug 2021 00:04:08 -0400
Received: from lucky1.263xmail.com ([211.157.147.135]:40088 "EHLO
        lucky1.263xmail.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229608AbhHZEEH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Aug 2021 00:04:07 -0400
Received: from localhost (unknown [192.168.167.235])
        by lucky1.263xmail.com (Postfix) with ESMTP id 72474B2F75;
        Thu, 26 Aug 2021 12:03:18 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
        by smtp.263.net (postfix) whith ESMTP id P32763T139760853055232S1629950596113927_;
        Thu, 26 Aug 2021 12:03:18 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <4957e4f85885b405531a778e34ab48ec>
X-RL-SENDER: sugar.zhang@rock-chips.com
X-SENDER: zxg@rock-chips.com
X-LOGIN-NAME: sugar.zhang@rock-chips.com
X-FST-TO: broonie@kernel.org
X-RCPT-COUNT: 7
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From:   Sugar Zhang <sugar.zhang@rock-chips.com>
To:     broonie@kernel.org, heiko@sntech.de
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org, Xing Zheng <zhengxing@rock-chips.com>,
        Sugar Zhang <sugar.zhang@rock-chips.com>
Subject: [PATCH v3 13/14] ASoC: rockchip: i2s: Add support for TRCM property
Date:   Thu, 26 Aug 2021 12:03:13 +0800
Message-Id: <1629950594-14345-3-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1629950441-14118-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1629950441-14118-1-git-send-email-sugar.zhang@rock-chips.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Xing Zheng <zhengxing@rock-chips.com>

If there is only one lrck (tx or rx) by hardware, we need to
use 'rockchip,trcm-sync-tx-only/rx-only' to specify which lrck
can be used.

Signed-off-by: Xing Zheng <zhengxing@rock-chips.com>
Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
---

Changes in v3: None
Changes in v2:
- split property trcm into single 'trcm-sync-tx-only' and
  'trcm-sync-rx-only' suggested by Nicolas.

 sound/soc/rockchip/rockchip_i2s.c | 29 ++++++++++++++++++++---------
 1 file changed, 20 insertions(+), 9 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index 801fc60..3e8b96e 100644
--- a/sound/soc/rockchip/rockchip_i2s.c
+++ b/sound/soc/rockchip/rockchip_i2s.c
@@ -25,6 +25,10 @@
 
 #define DRV_NAME "rockchip-i2s"
 
+#define TRCM_TXRX	0
+#define TRCM_TX		1
+#define TRCM_RX		2
+
 struct rk_i2s_pins {
 	u32 reg_offset;
 	u32 shift;
@@ -324,7 +328,6 @@ static int rockchip_i2s_hw_params(struct snd_pcm_substream *substream,
 				  struct snd_soc_dai *dai)
 {
 	struct rk_i2s_dev *i2s = to_info(dai);
-	struct snd_soc_pcm_runtime *rtd = asoc_substream_to_rtd(substream);
 	unsigned int val = 0;
 	unsigned int mclk_rate, bclk_rate, div_bclk, div_lrck;
 
@@ -424,13 +427,6 @@ static int rockchip_i2s_hw_params(struct snd_pcm_substream *substream,
 	regmap_update_bits(i2s->regmap, I2S_DMACR, I2S_DMACR_RDL_MASK,
 			   I2S_DMACR_RDL(16));
 
-	val = I2S_CKR_TRCM_TXRX;
-	if (dai->driver->symmetric_rate && rtd->dai_link->symmetric_rate)
-		val = I2S_CKR_TRCM_TXONLY;
-
-	regmap_update_bits(i2s->regmap, I2S_CKR,
-			   I2S_CKR_TRCM_MASK,
-			   val);
 	return 0;
 }
 
@@ -513,7 +509,6 @@ static const struct snd_soc_dai_ops rockchip_i2s_dai_ops = {
 static struct snd_soc_dai_driver rockchip_i2s_dai = {
 	.probe = rockchip_i2s_dai_probe,
 	.ops = &rockchip_i2s_dai_ops,
-	.symmetric_rate = 1,
 };
 
 static const struct snd_soc_component_driver rockchip_i2s_component = {
@@ -689,6 +684,22 @@ static int rockchip_i2s_init_dai(struct rk_i2s_dev *i2s, struct resource *res,
 		}
 	}
 
+	val = TRCM_TXRX;
+	if (of_property_read_bool(node, "rockchip,trcm-sync-tx-only"))
+		val = TRCM_TX;
+	if (of_property_read_bool(node, "rockchip,trcm-sync-rx-only")) {
+		if (val) {
+			dev_err(i2s->dev, "invalid trcm-sync configuration\n");
+			return -EINVAL;
+		}
+		val = TRCM_RX;
+	}
+	if (val != TRCM_TXRX)
+		dai->symmetric_rate = 1;
+
+	regmap_update_bits(i2s->regmap, I2S_CKR,
+			   I2S_CKR_TRCM_MASK, I2S_CKR_TRCM(val));
+
 	if (dp)
 		*dp = dai;
 
-- 
2.7.4




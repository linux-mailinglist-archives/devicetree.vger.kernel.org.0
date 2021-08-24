Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0B0383F5ADE
	for <lists+devicetree@lfdr.de>; Tue, 24 Aug 2021 11:19:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234703AbhHXJUD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Aug 2021 05:20:03 -0400
Received: from lucky1.263xmail.com ([211.157.147.133]:43884 "EHLO
        lucky1.263xmail.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233928AbhHXJTx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Aug 2021 05:19:53 -0400
Received: from localhost (unknown [192.168.167.16])
        by lucky1.263xmail.com (Postfix) with ESMTP id 28343D66F5;
        Tue, 24 Aug 2021 17:19:06 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
        by smtp.263.net (postfix) whith ESMTP id P704T139881214887680S1629796736938922_;
        Tue, 24 Aug 2021 17:19:05 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <c2ae9ad7d09f76815254b66dcb5cfc0d>
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
Subject: [PATCH v2 14/15] ASoC: rockchip: i2s: Add support for TRCM property
Date:   Tue, 24 Aug 2021 17:18:53 +0800
Message-Id: <1629796734-4243-4-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1629796561-4025-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1629796561-4025-1-git-send-email-sugar.zhang@rock-chips.com>
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

Changes in v2:
- split property trcm into single 'trcm-sync-tx-only' and
  'trcm-sync-rx-only' suggested by Nicolas.

 sound/soc/rockchip/rockchip_i2s.c | 30 +++++++++++++++++++++---------
 1 file changed, 21 insertions(+), 9 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index 84884ce..cd9e069 100644
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
@@ -321,7 +325,6 @@ static int rockchip_i2s_hw_params(struct snd_pcm_substream *substream,
 				  struct snd_soc_dai *dai)
 {
 	struct rk_i2s_dev *i2s = to_info(dai);
-	struct snd_soc_pcm_runtime *rtd = asoc_substream_to_rtd(substream);
 	unsigned int val = 0;
 	unsigned int mclk_rate, bclk_rate, div_bclk, div_lrck;
 
@@ -421,13 +424,6 @@ static int rockchip_i2s_hw_params(struct snd_pcm_substream *substream,
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
 
@@ -531,7 +527,6 @@ static struct snd_soc_dai_driver rockchip_i2s_dai = {
 			    SNDRV_PCM_FMTBIT_S32_LE),
 	},
 	.ops = &rockchip_i2s_dai_ops,
-	.symmetric_rate = 1,
 };
 
 static const struct snd_soc_component_driver rockchip_i2s_component = {
@@ -652,6 +647,7 @@ static int rockchip_i2s_probe(struct platform_device *pdev)
 	struct snd_soc_dai_driver *soc_dai;
 	struct resource *res;
 	void __iomem *regs;
+	unsigned int clk_trcm;
 	int ret;
 	int val;
 
@@ -749,6 +745,22 @@ static int rockchip_i2s_probe(struct platform_device *pdev)
 	else if (of_property_read_bool(node, "rockchip,capture-only"))
 		soc_dai->playback.channels_min = 0;
 
+	clk_trcm = TRCM_TXRX;
+	if (of_property_read_bool(node, "rockchip,trcm-sync-tx-only"))
+		clk_trcm = TRCM_TX;
+	if (of_property_read_bool(node, "rockchip,trcm-sync-rx-only")) {
+		if (clk_trcm) {
+			dev_err(i2s->dev, "invalid trcm-sync configuration\n");
+			return -EINVAL;
+		}
+		clk_trcm = TRCM_RX;
+	}
+	if (clk_trcm != TRCM_TXRX)
+		soc_dai->symmetric_rate = 1;
+
+	regmap_update_bits(i2s->regmap, I2S_CKR,
+			   I2S_CKR_TRCM_MASK, I2S_CKR_TRCM(clk_trcm));
+
 	ret = devm_snd_soc_register_component(&pdev->dev,
 					      &rockchip_i2s_component,
 					      soc_dai, 1);
-- 
2.7.4




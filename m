Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C78133F596B
	for <lists+devicetree@lfdr.de>; Tue, 24 Aug 2021 09:52:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234784AbhHXHxd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Aug 2021 03:53:33 -0400
Received: from lucky1.263xmail.com ([211.157.147.133]:44236 "EHLO
        lucky1.263xmail.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234705AbhHXHxc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Aug 2021 03:53:32 -0400
Received: from localhost (unknown [192.168.167.16])
        by lucky1.263xmail.com (Postfix) with ESMTP id 3AEBBD64DD;
        Tue, 24 Aug 2021 15:52:47 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
        by smtp.263.net (postfix) whith ESMTP id P704T139881101649664S1629791566598648_;
        Tue, 24 Aug 2021 15:52:47 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <1e7c645d385e180d1333efdd659781c4>
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
Subject: [PATCH v1 1/7] ASoC: rockchip: Add support for rv1126 pdm
Date:   Tue, 24 Aug 2021 15:52:31 +0800
Message-Id: <1629791557-13614-1-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1629791446-13528-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1629791446-13528-1-git-send-email-sugar.zhang@rock-chips.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds support for rv1126 pdm controller which
redesign cic filiter for better performance.

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
---

 sound/soc/rockchip/rockchip_pdm.c | 76 +++++++++++++++++++++++++++++++++++----
 sound/soc/rockchip/rockchip_pdm.h |  3 ++
 2 files changed, 73 insertions(+), 6 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_pdm.c b/sound/soc/rockchip/rockchip_pdm.c
index 38bd603..67634d1 100644
--- a/sound/soc/rockchip/rockchip_pdm.c
+++ b/sound/soc/rockchip/rockchip_pdm.c
@@ -24,6 +24,7 @@
 enum rk_pdm_version {
 	RK_PDM_RK3229,
 	RK_PDM_RK3308,
+	RK_PDM_RV1126,
 };
 
 struct rk_pdm_dev {
@@ -121,6 +122,55 @@ static unsigned int get_pdm_ds_ratio(unsigned int sr)
 	return ratio;
 }
 
+static unsigned int get_pdm_cic_ratio(unsigned int clk)
+{
+	switch (clk) {
+	case 4096000:
+	case 5644800:
+	case 6144000:
+		return 0;
+	case 2048000:
+	case 2822400:
+	case 3072000:
+		return 1;
+	case 1024000:
+	case 1411200:
+	case 1536000:
+		return 2;
+	default:
+		return 1;
+	}
+}
+
+static unsigned int samplerate_to_bit(unsigned int samplerate)
+{
+	switch (samplerate) {
+	case 8000:
+	case 11025:
+	case 12000:
+		return 0;
+	case 16000:
+	case 22050:
+	case 24000:
+		return 1;
+	case 32000:
+		return 2;
+	case 44100:
+	case 48000:
+		return 3;
+	case 64000:
+	case 88200:
+	case 96000:
+		return 4;
+	case 128000:
+	case 176400:
+	case 192000:
+		return 5;
+	default:
+		return 1;
+	}
+}
+
 static inline struct rk_pdm_dev *to_info(struct snd_soc_dai *dai)
 {
 	return snd_soc_dai_get_drvdata(dai);
@@ -166,7 +216,8 @@ static int rockchip_pdm_hw_params(struct snd_pcm_substream *substream,
 	if (ret)
 		return -EINVAL;
 
-	if (pdm->version == RK_PDM_RK3308) {
+	if (pdm->version == RK_PDM_RK3308 ||
+	    pdm->version == RK_PDM_RV1126) {
 		rational_best_approximation(clk_out, clk_src,
 					    GENMASK(16 - 1, 0),
 					    GENMASK(16 - 1, 0),
@@ -194,8 +245,18 @@ static int rockchip_pdm_hw_params(struct snd_pcm_substream *substream,
 				   PDM_CLK_FD_RATIO_MSK,
 				   val);
 	}
-	val = get_pdm_ds_ratio(samplerate);
-	regmap_update_bits(pdm->regmap, PDM_CLK_CTRL, PDM_DS_RATIO_MSK, val);
+
+	if (pdm->version == RK_PDM_RV1126) {
+		val = get_pdm_cic_ratio(clk_out);
+		regmap_update_bits(pdm->regmap, PDM_CLK_CTRL, PDM_CIC_RATIO_MSK, val);
+		val = samplerate_to_bit(samplerate);
+		regmap_update_bits(pdm->regmap, PDM_CTRL0,
+				   PDM_SAMPLERATE_MSK, PDM_SAMPLERATE(val));
+	} else {
+		val = get_pdm_ds_ratio(samplerate);
+		regmap_update_bits(pdm->regmap, PDM_CLK_CTRL, PDM_DS_RATIO_MSK, val);
+	}
+
 	regmap_update_bits(pdm->regmap, PDM_HPF_CTRL,
 			   PDM_HPF_CF_MSK, PDM_HPF_60HZ);
 	regmap_update_bits(pdm->regmap, PDM_HPF_CTRL,
@@ -441,9 +502,10 @@ static bool rockchip_pdm_precious_reg(struct device *dev, unsigned int reg)
 }
 
 static const struct reg_default rockchip_pdm_reg_defaults[] = {
-	{0x04, 0x78000017},
-	{0x08, 0x0bb8ea60},
-	{0x18, 0x0000001f},
+	{ PDM_CTRL0, 0x78000017 },
+	{ PDM_CTRL1, 0x0bb8ea60 },
+	{ PDM_CLK_CTRL, 0x0000e401 },
+	{ PDM_DMA_CTRL, 0x0000001f },
 };
 
 static const struct regmap_config rockchip_pdm_regmap_config = {
@@ -469,6 +531,8 @@ static const struct of_device_id rockchip_pdm_match[] __maybe_unused = {
 	  .data = (void *)RK_PDM_RK3308 },
 	{ .compatible = "rockchip,rk3308-pdm",
 	  .data = (void *)RK_PDM_RK3308 },
+	{ .compatible = "rockchip,rv1126-pdm",
+	  .data = (void *)RK_PDM_RV1126 },
 	{},
 };
 MODULE_DEVICE_TABLE(of, rockchip_pdm_match);
diff --git a/sound/soc/rockchip/rockchip_pdm.h b/sound/soc/rockchip/rockchip_pdm.h
index 8e5bbaf..13bfbc2 100644
--- a/sound/soc/rockchip/rockchip_pdm.h
+++ b/sound/soc/rockchip/rockchip_pdm.h
@@ -41,6 +41,8 @@
 #define PDM_PATH1_EN		BIT(28)
 #define PDM_PATH0_EN		BIT(27)
 #define PDM_HWT_EN		BIT(26)
+#define PDM_SAMPLERATE_MSK	GENMASK(7, 5)
+#define PDM_SAMPLERATE(x)	((x) << 5)
 #define PDM_VDW_MSK		(0x1f << 0)
 #define PDM_VDW(X)		((X - 1) << 0)
 
@@ -66,6 +68,7 @@
 #define PDM_CLK_1280FS		(0x2 << 0)
 #define PDM_CLK_2560FS		(0x3 << 0)
 #define PDM_CLK_5120FS		(0x4 << 0)
+#define PDM_CIC_RATIO_MSK	(0x3 << 0)
 
 /* PDM HPF CTRL */
 #define PDM_HPF_LE		BIT(3)
-- 
2.7.4




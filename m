Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 81675559841
	for <lists+devicetree@lfdr.de>; Fri, 24 Jun 2022 12:55:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230264AbiFXKyR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Jun 2022 06:54:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230324AbiFXKyQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Jun 2022 06:54:16 -0400
Received: from mail.bugwerft.de (mail.bugwerft.de [46.23.86.59])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 28AE86F7AE
        for <devicetree@vger.kernel.org>; Fri, 24 Jun 2022 03:54:15 -0700 (PDT)
Received: from hq-00021.holoplot.net (unknown [176.126.217.202])
        by mail.bugwerft.de (Postfix) with ESMTPSA id 1DA5C50457A;
        Fri, 24 Jun 2022 10:47:25 +0000 (UTC)
From:   Daniel Mack <daniel@zonque.org>
To:     broonie@kernel.org, ryan.lee.analog@gmail.com
Cc:     robh+dt@kernel.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, Daniel Mack <daniel@zonque.org>
Subject: [PATCH 6/8] ASoC: max98396: Fix register access for PCM format settings
Date:   Fri, 24 Jun 2022 12:47:10 +0200
Message-Id: <20220624104712.1934484-7-daniel@zonque.org>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220624104712.1934484-1-daniel@zonque.org>
References: <20220624104712.1934484-1-daniel@zonque.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

max98396_dai_set_fmt() modifes register 2041 and touches bits in the mask
0x3a. Make sure to use the right mask for that operation.

Signed-off-by: Daniel Mack <daniel@zonque.org>
---
 sound/soc/codecs/max98396.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/sound/soc/codecs/max98396.c b/sound/soc/codecs/max98396.c
index faa81b4bb709..0a1d98279a3e 100644
--- a/sound/soc/codecs/max98396.c
+++ b/sound/soc/codecs/max98396.c
@@ -349,12 +349,15 @@ static int max98396_dai_set_fmt(struct snd_soc_dai *codec_dai, unsigned int fmt)
 {
 	struct snd_soc_component *component = codec_dai->component;
 	struct max98396_priv *max98396 = snd_soc_component_get_drvdata(component);
-	unsigned int format = 0;
+	unsigned int format_mask, format = 0;
 	unsigned int bclk_pol = 0;
 	int ret, status;
 	int reg;
 	bool update = false;
 
+	format_mask = MAX98396_PCM_MODE_CFG_FORMAT_MASK |
+		      MAX98396_PCM_MODE_CFG_LRCLKEDGE;
+
 	dev_dbg(component->dev, "%s: fmt 0x%08X\n", __func__, fmt);
 
 	switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
@@ -405,7 +408,7 @@ static int max98396_dai_set_fmt(struct snd_soc_dai *codec_dai, unsigned int fmt)
 		ret = regmap_read(max98396->regmap, MAX98396_R2041_PCM_MODE_CFG, &reg);
 		if (ret < 0)
 			return -EINVAL;
-		if (format != (reg & MAX98396_PCM_BCLKEDGE_BSEL_MASK)) {
+		if (format != (reg & format_mask)) {
 			update = true;
 		} else {
 			ret = regmap_read(max98396->regmap,
@@ -422,8 +425,7 @@ static int max98396_dai_set_fmt(struct snd_soc_dai *codec_dai, unsigned int fmt)
 
 	regmap_update_bits(max98396->regmap,
 			   MAX98396_R2041_PCM_MODE_CFG,
-			   MAX98396_PCM_BCLKEDGE_BSEL_MASK,
-			   format);
+			   format_mask, format);
 
 	regmap_update_bits(max98396->regmap,
 			   MAX98396_R2042_PCM_CLK_SETUP,
-- 
2.36.1


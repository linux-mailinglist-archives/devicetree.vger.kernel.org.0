Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2AD1F5A12D4
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 16:00:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235429AbiHYOAB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Aug 2022 10:00:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240635AbiHYN77 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Aug 2022 09:59:59 -0400
Received: from mail.bugwerft.de (mail.bugwerft.de [46.23.86.59])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 32302248CF
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 06:59:57 -0700 (PDT)
Received: from hq-00021.fritz.box (p57bc9ceb.dip0.t-ipconnect.de [87.188.156.235])
        by mail.bugwerft.de (Postfix) with ESMTPSA id 4CC14421360;
        Thu, 25 Aug 2022 13:59:26 +0000 (UTC)
From:   Daniel Mack <daniel@zonque.org>
To:     broonie@kernel.org, ryan.lee.analog@gmail.com
Cc:     robh+dt@kernel.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, Daniel Mack <daniel@zonque.org>
Subject: [PATCH 2/2] ASoC: max98396: Make data monitor featured configurable
Date:   Thu, 25 Aug 2022 15:59:20 +0200
Message-Id: <20220825135920.2290959-2-daniel@zonque.org>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220825135920.2290959-1-daniel@zonque.org>
References: <20220825135920.2290959-1-daniel@zonque.org>
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

Allow the data monitor features to be enabled explicitly, and enable control
over their details.

Signed-off-by: Daniel Mack <daniel@zonque.org>
---
 sound/soc/codecs/max98396.c | 103 ++++++++++++++++++++++++++++++++++++
 sound/soc/codecs/max98396.h |  14 +++++
 2 files changed, 117 insertions(+)

diff --git a/sound/soc/codecs/max98396.c b/sound/soc/codecs/max98396.c
index 42479f3ab663..e1577d20c42f 100644
--- a/sound/soc/codecs/max98396.c
+++ b/sound/soc/codecs/max98396.c
@@ -1486,6 +1486,87 @@ static int max98396_probe(struct snd_soc_component *component)
 			   MAX98396_CLK_MON_AUTO_RESTART_MASK,
 			   MAX98396_CLK_MON_AUTO_RESTART_MASK);
 
+	regmap_update_bits(max98396->regmap,
+			   MAX98396_R203F_ENABLE_CTRLS,
+			   MAX98396_CTRL_DMON_STUCK_EN_MASK,
+			   max98396->dmon_stuck_enable ?
+				MAX98396_CTRL_DMON_STUCK_EN_MASK : 0);
+
+	regmap_update_bits(max98396->regmap,
+			   MAX98396_R203F_ENABLE_CTRLS,
+			   MAX98396_CTRL_DMON_MAG_EN_MASK,
+			   max98396->dmon_mag_enable ?
+				MAX98396_CTRL_DMON_MAG_EN_MASK : 0);
+
+	switch (max98396->dmon_duration) {
+	case 64:
+		regmap_update_bits(max98396->regmap,
+				   MAX98396_R2039_DATA_MON_CTRL,
+				   MAX98396_DMON_DURATION_MASK, 0);
+		break;
+	case 256:
+		regmap_update_bits(max98396->regmap,
+				   MAX98396_R2039_DATA_MON_CTRL,
+				   MAX98396_DMON_DURATION_MASK, 1);
+		break;
+	case 1024:
+		regmap_update_bits(max98396->regmap,
+				   MAX98396_R2039_DATA_MON_CTRL,
+				   MAX98396_DMON_DURATION_MASK, 2);
+		break;
+	case 4096:
+		regmap_update_bits(max98396->regmap,
+				   MAX98396_R2039_DATA_MON_CTRL,
+				   MAX98396_DMON_DURATION_MASK, 3);
+		break;
+	default:
+		dev_err(component->dev, "Invalid DMON duration %d\n",
+			max98396->dmon_duration);
+	}
+
+	switch (max98396->dmon_stuck_threshold) {
+	case 15:
+		regmap_update_bits(max98396->regmap,
+				   MAX98396_R2039_DATA_MON_CTRL,
+				   MAX98396_DMON_STUCK_THRESH_MASK,
+				   0 << MAX98396_DMON_STUCK_THRESH_SHIFT);
+		break;
+	case 13:
+		regmap_update_bits(max98396->regmap,
+				   MAX98396_R2039_DATA_MON_CTRL,
+				   MAX98396_DMON_STUCK_THRESH_MASK,
+				   1 << MAX98396_DMON_STUCK_THRESH_SHIFT);
+		break;
+	case 22:
+		regmap_update_bits(max98396->regmap,
+				   MAX98396_R2039_DATA_MON_CTRL,
+				   MAX98396_DMON_STUCK_THRESH_MASK,
+				   2 << MAX98396_DMON_STUCK_THRESH_SHIFT);
+		break;
+	case 9:
+		regmap_update_bits(max98396->regmap,
+				   MAX98396_R2039_DATA_MON_CTRL,
+				   MAX98396_DMON_STUCK_THRESH_MASK,
+				   3 << MAX98396_DMON_STUCK_THRESH_SHIFT);
+		break;
+	default:
+		dev_err(component->dev, "Invalid DMON stuck threshold %d\n",
+			max98396->dmon_stuck_threshold);
+	}
+
+	switch (max98396->dmon_mag_threshold) {
+	case 2 ... 5:
+		regmap_update_bits(max98396->regmap,
+				   MAX98396_R2039_DATA_MON_CTRL,
+				   MAX98396_DMON_STUCK_THRESH_MASK,
+				   (5 - max98396->dmon_mag_threshold)
+					<< MAX98396_DMON_MAG_THRESH_SHIFT);
+		break;
+	default:
+		dev_err(component->dev, "Invalid DMON magnitude threshold %d\n",
+			max98396->dmon_mag_threshold);
+	}
+
 	/* Speaker Amplifier PCM RX Enable by default */
 	regmap_update_bits(max98396->regmap,
 			   MAX98396_R205E_PCM_RX_EN,
@@ -1619,6 +1700,28 @@ static void max98396_read_device_property(struct device *dev,
 		max98396->bypass_slot = value & 0xF;
 	else
 		max98396->bypass_slot = 0;
+
+	max98396->dmon_stuck_enable =
+		device_property_read_bool(dev, "adi,dmon-stuck-enable");
+
+	if (!device_property_read_u32(dev, "adi,dmon-stuck-threshold-bits", &value))
+		max98396->dmon_stuck_threshold = value;
+	else
+		max98396->dmon_stuck_threshold = 15;
+
+	max98396->dmon_mag_enable =
+		device_property_read_bool(dev, "adi,dmon-magnitude-enable");
+
+	if (!device_property_read_u32(dev, "adi,dmon-magnitude-threshold-bits", &value))
+		max98396->dmon_mag_threshold = value;
+	else
+		max98396->dmon_mag_threshold = 5;
+
+	if (!device_property_read_u32(dev, "adi,dmon-duration-msecs", &value))
+		max98396->dmon_duration = value;
+	else
+		max98396->dmon_duration = 64;
+
 }
 
 static void max98396_core_supplies_disable(void *priv)
diff --git a/sound/soc/codecs/max98396.h b/sound/soc/codecs/max98396.h
index 7278c779989a..d396aa3e698b 100644
--- a/sound/soc/codecs/max98396.h
+++ b/sound/soc/codecs/max98396.h
@@ -212,8 +212,17 @@
 #define MAX98396_CLK_MON_AUTO_RESTART_MASK	(0x1 << 0)
 #define MAX98396_CLK_MON_AUTO_RESTART_SHIFT	(0)
 
+/* MAX98396_R2039_DATA_MON_CTRL */
+#define MAX98396_DMON_MAG_THRESH_SHIFT		(4)
+#define MAX98396_DMON_MAG_THRESH_MASK		(0x3 << MAX98396_DMON_MAG_THRESH_SHIFT)
+#define MAX98396_DMON_STUCK_THRESH_SHIFT	(2)
+#define MAX98396_DMON_STUCK_THRESH_MASK		(0x3 << MAX98396_DMON_STUCK_THRESH_SHIFT)
+#define MAX98396_DMON_DURATION_MASK		(0x3)
+
 /* MAX98396_R203F_ENABLE_CTRLS */
 #define MAX98396_CTRL_CMON_EN_SHIFT		(0)
+#define MAX98396_CTRL_DMON_STUCK_EN_MASK	(0x1 << 1)
+#define MAX98396_CTRL_DMON_MAG_EN_MASK		(0x1 << 2)
 
 /* MAX98396_R2041_PCM_MODE_CFG */
 #define MAX98396_PCM_MODE_CFG_FORMAT_MASK	(0x7 << 3)
@@ -305,6 +314,11 @@ struct max98396_priv {
 	unsigned int i_slot;
 	unsigned int spkfb_slot;
 	unsigned int bypass_slot;
+	bool dmon_stuck_enable;
+	unsigned int dmon_stuck_threshold;
+	bool dmon_mag_enable;
+	unsigned int dmon_mag_threshold;
+	unsigned int dmon_duration;
 	bool interleave_mode;
 	bool tdm_mode;
 	int tdm_max_samplerate;
-- 
2.37.2


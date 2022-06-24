Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 13C9A559839
	for <lists+devicetree@lfdr.de>; Fri, 24 Jun 2022 12:53:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230463AbiFXKxs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Jun 2022 06:53:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230264AbiFXKxs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Jun 2022 06:53:48 -0400
Received: from mail.bugwerft.de (mail.bugwerft.de [46.23.86.59])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 0566849B66
        for <devicetree@vger.kernel.org>; Fri, 24 Jun 2022 03:53:46 -0700 (PDT)
Received: from hq-00021.holoplot.net (unknown [176.126.217.202])
        by mail.bugwerft.de (Postfix) with ESMTPSA id 32D53504576;
        Fri, 24 Jun 2022 10:47:24 +0000 (UTC)
From:   Daniel Mack <daniel@zonque.org>
To:     broonie@kernel.org, ryan.lee.analog@gmail.com
Cc:     robh+dt@kernel.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, Daniel Mack <daniel@zonque.org>
Subject: [PATCH 4/8] ASoC: max98396: add voltage regulators
Date:   Fri, 24 Jun 2022 12:47:08 +0200
Message-Id: <20220624104712.1934484-5-daniel@zonque.org>
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

The device has up to 5 potentially independent power supplies:
AVDD, DVDD, DVVDIO, VBAT and PVDD. The former 3 are mandatory for the
device to function. One of VBAT and PVDD should also be made available.

Regulators are enabled during probe time and will stay active except when in
suspend mode.

Futher, the chip needs to be informed about the presence of VBAT through a
bit in register 0x20a0.

Signed-off-by: Daniel Mack <daniel@zonque.org>
---
 sound/soc/codecs/max98396.c | 117 +++++++++++++++++++++++++++++++++++-
 sound/soc/codecs/max98396.h |   7 +++
 2 files changed, 123 insertions(+), 1 deletion(-)

diff --git a/sound/soc/codecs/max98396.c b/sound/soc/codecs/max98396.c
index 56eb62bb041f..06ac637f2696 100644
--- a/sound/soc/codecs/max98396.c
+++ b/sound/soc/codecs/max98396.c
@@ -5,11 +5,18 @@
 #include <linux/i2c.h>
 #include <linux/module.h>
 #include <sound/pcm_params.h>
+#include <linux/regulator/consumer.h>
 #include <sound/soc.h>
 #include <linux/gpio.h>
 #include <sound/tlv.h>
 #include "max98396.h"
 
+static const char * const max98396_core_supplies[MAX98396_NUM_CORE_SUPPLIES] = {
+	"avdd",
+	"dvdd",
+	"dvddio",
+};
+
 static struct reg_default max98396_reg[] = {
 	{MAX98396_R2000_SW_RESET, 0x00},
 	{MAX98396_R2001_INT_RAW1, 0x00},
@@ -1329,6 +1336,12 @@ static int max98396_probe(struct snd_soc_component *component)
 		regmap_write(max98396->regmap,
 			     MAX98397_R2057_PCM_RX_SRC2, 0x10);
 	}
+	/* Supply control */
+	regmap_update_bits(max98396->regmap,
+			   MAX98396_R20A0_AMP_SUPPLY_CTL,
+			   MAX98396_AMP_SUPPLY_NOVBAT,
+			   (max98396->vbat == NULL) ?
+				MAX98396_AMP_SUPPLY_NOVBAT : 0);
 	/* Enable DC blocker */
 	regmap_update_bits(max98396->regmap,
 			   MAX98396_R2092_AMP_DSP_CFG, 1, 1);
@@ -1424,12 +1437,38 @@ static int max98396_suspend(struct device *dev)
 
 	regcache_cache_only(max98396->regmap, true);
 	regcache_mark_dirty(max98396->regmap);
+	regulator_bulk_disable(MAX98396_NUM_CORE_SUPPLIES,
+			       max98396->core_supplies);
+	if (max98396->pvdd)
+		regulator_disable(max98396->pvdd);
+
+	if (max98396->vbat)
+		regulator_disable(max98396->vbat);
+
 	return 0;
 }
 
 static int max98396_resume(struct device *dev)
 {
 	struct max98396_priv *max98396 = dev_get_drvdata(dev);
+	int ret;
+
+	ret = regulator_bulk_enable(MAX98396_NUM_CORE_SUPPLIES,
+				    max98396->core_supplies);
+	if (ret < 0)
+		return ret;
+
+	if (max98396->pvdd) {
+		ret = regulator_enable(max98396->pvdd);
+		if (ret < 0)
+			return ret;
+	}
+
+	if (max98396->vbat) {
+		ret = regulator_enable(max98396->vbat);
+		if (ret < 0)
+			return ret;
+	}
 
 	regcache_cache_only(max98396->regmap, false);
 	max98396_reset(max98396, dev);
@@ -1513,11 +1552,24 @@ static void max98396_read_device_property(struct device *dev,
 		max98396->bypass_slot = 0;
 }
 
+static void max98396_core_supplies_disable(void *priv)
+{
+	struct max98396_priv *max98396 = priv;
+
+	regulator_bulk_disable(MAX98396_NUM_CORE_SUPPLIES,
+			       max98396->core_supplies);
+}
+
+static void max98396_supply_disable(void *r)
+{
+	regulator_disable((struct regulator *) r);
+}
+
 static int max98396_i2c_probe(struct i2c_client *i2c,
 			      const struct i2c_device_id *id)
 {
 	struct max98396_priv *max98396 = NULL;
-	int ret, reg;
+	int i, ret, reg;
 
 	max98396 = devm_kzalloc(&i2c->dev, sizeof(*max98396), GFP_KERNEL);
 
@@ -1543,6 +1595,69 @@ static int max98396_i2c_probe(struct i2c_client *i2c,
 		return ret;
 	}
 
+	/* Obtain regulator supplies */
+	for (i = 0; i < MAX98396_NUM_CORE_SUPPLIES; i++)
+		max98396->core_supplies[i].supply = max98396_core_supplies[i];
+
+	ret = devm_regulator_bulk_get(&i2c->dev, MAX98396_NUM_CORE_SUPPLIES,
+				      max98396->core_supplies);
+	if (ret < 0) {
+		dev_err(&i2c->dev, "Failed to request core supplies: %d\n", ret);
+		return ret;
+	}
+
+	max98396->vbat = devm_regulator_get_optional(&i2c->dev, "vbat");
+	if (IS_ERR(max98396->vbat)) {
+		if (PTR_ERR(max98396->vbat) == -EPROBE_DEFER)
+			return -EPROBE_DEFER;
+
+		max98396->vbat = NULL;
+	}
+
+	max98396->pvdd = devm_regulator_get_optional(&i2c->dev, "pvdd");
+	if (IS_ERR(max98396->pvdd)) {
+		if (PTR_ERR(max98396->pvdd) == -EPROBE_DEFER)
+			return -EPROBE_DEFER;
+
+		max98396->pvdd = NULL;
+	}
+
+	ret = regulator_bulk_enable(MAX98396_NUM_CORE_SUPPLIES,
+				    max98396->core_supplies);
+	if (ret < 0) {
+		dev_err(&i2c->dev, "Unable to enable core supplies: %d", ret);
+		return ret;
+	}
+
+	ret = devm_add_action_or_reset(&i2c->dev, max98396_core_supplies_disable,
+				       max98396);
+	if (ret < 0)
+		return ret;
+
+	if (max98396->pvdd) {
+		ret = regulator_enable(max98396->pvdd);
+		if (ret < 0)
+			return ret;
+
+		ret = devm_add_action_or_reset(&i2c->dev,
+					       max98396_supply_disable,
+					       max98396->pvdd);
+		if (ret < 0)
+			return ret;
+	}
+
+	if (max98396->vbat) {
+		ret = regulator_enable(max98396->vbat);
+		if (ret < 0)
+			return ret;
+
+		ret = devm_add_action_or_reset(&i2c->dev,
+					       max98396_supply_disable,
+					       max98396->vbat);
+		if (ret < 0)
+			return ret;
+	}
+
 	/* update interleave mode info */
 	if (device_property_read_bool(&i2c->dev, "adi,interleave_mode"))
 		max98396->interleave_mode = true;
diff --git a/sound/soc/codecs/max98396.h b/sound/soc/codecs/max98396.h
index 694411038597..8fa081f5d2d3 100644
--- a/sound/soc/codecs/max98396.h
+++ b/sound/soc/codecs/max98396.h
@@ -274,6 +274,9 @@
 #define MAX98396_DSP_SPK_SAFE_EN_SHIFT		(5)
 #define MAX98396_DSP_SPK_WB_FLT_EN_SHIFT	(6)
 
+/* MAX98396_R20A0_AMP_SUPPLY_CTL */
+#define MAX98396_AMP_SUPPLY_NOVBAT		(0x1 << 0)
+
 /* MAX98396_R20E0_IV_SENSE_PATH_CFG */
 #define MAX98396_IV_SENSE_DCBLK_EN_MASK		(0x3 << 0)
 #define MAX98396_IV_SENSE_DCBLK_EN_SHIFT	(0)
@@ -291,9 +294,13 @@ enum {
 	CODEC_TYPE_MAX98397,
 };
 
+#define  MAX98396_NUM_CORE_SUPPLIES 3
+
 struct max98396_priv {
 	struct regmap *regmap;
 	struct gpio_desc *reset_gpio;
+	struct regulator_bulk_data core_supplies[MAX98396_NUM_CORE_SUPPLIES];
+	struct regulator *pvdd, *vbat;
 	unsigned int v_slot;
 	unsigned int i_slot;
 	unsigned int bypass_slot;
-- 
2.36.1


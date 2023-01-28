Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0337967F646
	for <lists+devicetree@lfdr.de>; Sat, 28 Jan 2023 09:28:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229562AbjA1I2O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Jan 2023 03:28:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232964AbjA1I2M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 28 Jan 2023 03:28:12 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C23E0410BB
        for <devicetree@vger.kernel.org>; Sat, 28 Jan 2023 00:28:05 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id y1so6925917wru.2
        for <devicetree@vger.kernel.org>; Sat, 28 Jan 2023 00:28:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=shruggie-ro.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KUjme+dB/uvO/qUYSJuA9fMzsuN/WcMeFNH8OV1LxL4=;
        b=Bzl+sEz92i8ub/gdPdqEEgd64Fs00o02F8exX918BOyMJTJnvkfcSLrWm5QYJzCuLx
         weHsWtZYnZe9lnSqqmW226Gi3xp6YrsSclMScE8hkAI67U3DeYDKGUWSMgIDDy2a8iYk
         rKf3oBtwYpnizZIkSLn33oGzlnEvUh5I3KnObe+GW9Hcm5VS5UySh53Z+8F/Vix4EJN2
         ZeLCZJPk20VVv+4tE/oamihR3KKt67wCyNjhzXG+efMiTuUxAPP7PEPXM0xZRxbqyTjr
         iuc7/D2/JvDBs8iBfu3/j1e8i6XLkn7Vt4XYC6AvO3rt0lL6TD8xvdSWchZXRgw04skM
         Tnnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KUjme+dB/uvO/qUYSJuA9fMzsuN/WcMeFNH8OV1LxL4=;
        b=thq5X7fXMK+Jl1/8JGPx3mAbgXeGux8fzf36veAbFsDzNB9NAXyRVr5wsRGdRi0cxs
         T6m4xi+rdsfZLU4ZNDbysdlzarTyCQXFsas4rAVvDsvQeGCdEvtk/zXI2GcqDP6rmtfX
         E+K61ZrPoCT0RBdGKFtLzFH1/f+vTninzz6jH6IecXvGs9ztA1wltlH8lqnZPig4uUc2
         6HW/4ZKYmpEbu/TDB6hUP0XKCvuiRNDC9FUtGDw5y6Ad8kb+5YC84dTp6/Ey66tWkisE
         UygjFD7NGXXMFok2wKq3XZ/noWuehizMyQcgzNTeOpCuDSvXEd4MWRyxurGxyojaaHcE
         42jA==
X-Gm-Message-State: AFqh2kp94KMew/TFXOaTIdmoeZvLxZq3WD4VFvNC76x3Kt7anEjsnDzx
        E4goFQdF0NC5Bku1XAiNOMDIX4pwnfoH7oXmxJg=
X-Google-Smtp-Source: AMrXdXv5crLfNXaf4syexFsnufZXwaLfZ1M9W5HFi/xTXolpRyD1tPqavW73bh1d6LgHDMOzpUkB/Q==
X-Received: by 2002:a05:6000:a03:b0:2be:7a:c15d with SMTP id co3-20020a0560000a0300b002be007ac15dmr41482498wrb.57.1674894483999;
        Sat, 28 Jan 2023 00:28:03 -0800 (PST)
Received: from neptune.. ([188.27.130.91])
        by smtp.gmail.com with ESMTPSA id c17-20020a5d4cd1000000b002bfd52f31f6sm3815338wrt.9.2023.01.28.00.28.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Jan 2023 00:28:03 -0800 (PST)
From:   Alexandru Ardelean <alex@shruggie.ro>
To:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org
Cc:     broonie@kernel.org, lgirdwood@gmail.com,
        krzysztof.kozlowski+dt@linaro.org, perex@perex.cz, tiwai@suse.com,
        steffen.aschbacher@stihl.de, Alexandru Ardelean <alex@shruggie.ro>
Subject: [PATCH v2 2/4] ASoC: codecs: tas5720: add support for TAS5720A-Q1 (automotive) variant
Date:   Sat, 28 Jan 2023 10:27:42 +0200
Message-Id: <20230128082744.41849-2-alex@shruggie.ro>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230128082744.41849-1-alex@shruggie.ro>
References: <20230128082744.41849-1-alex@shruggie.ro>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Steffen Aschbacher <steffen.aschbacher@stihl.de>

This change adds support the TAS5720A-Q1 audio codec, in the same driver as
tas5720.

Functionally, this driver is pretty similar to it's TAS5720x variant.

The first 3 registers are the same, so the main control and device
identification can happen with these registers.

The next registers differ.
This variant offers control (in the registers) for 2 speakers, which is
implemented here (in a basic manner).

Signed-off-by: Steffen Aschbacher <steffen.aschbacher@stihl.de>
Signed-off-by: Alexandru Ardelean <alex@shruggie.ro>
---

Changelog v1 -> v2:
- https://lore.kernel.org/alsa-devel/20230115193347.24190-2-alex@shruggie.ro/
- Removed unused variable 'val' in tas5720_mute_soc_component()
- Added missing object 'tas5720' in tas5720_mute_soc_component()

 sound/soc/codecs/tas5720.c | 104 ++++++++++++++++++++++++++++++++-----
 sound/soc/codecs/tas5720.h |  15 +++++-
 2 files changed, 106 insertions(+), 13 deletions(-)

diff --git a/sound/soc/codecs/tas5720.c b/sound/soc/codecs/tas5720.c
index 0587c9bb3c4e..2ad8fb29d005 100644
--- a/sound/soc/codecs/tas5720.c
+++ b/sound/soc/codecs/tas5720.c
@@ -30,6 +30,7 @@
 
 enum tas572x_type {
 	TAS5720,
+	TAS5720A_Q1,
 	TAS5722,
 };
 
@@ -166,17 +167,26 @@ static int tas5720_set_dai_tdm_slot(struct snd_soc_dai *dai,
 		return -EINVAL;
 	}
 
-	/* Enable manual TDM slot selection (instead of I2C ID based) */
-	ret = snd_soc_component_update_bits(component, TAS5720_DIGITAL_CTRL1_REG,
-				  TAS5720_TDM_CFG_SRC, TAS5720_TDM_CFG_SRC);
-	if (ret < 0)
-		goto error_snd_soc_component_update_bits;
+	/*
+	 * Enable manual TDM slot selection (instead of I2C ID based).
+	 * This is not applicable to TAS5720A-Q1.
+	 */
+	switch (tas5720->devtype) {
+	case TAS5720A_Q1:
+		break;
+	default:
+		ret = snd_soc_component_update_bits(component, TAS5720_DIGITAL_CTRL1_REG,
+					  TAS5720_TDM_CFG_SRC, TAS5720_TDM_CFG_SRC);
+		if (ret < 0)
+			goto error_snd_soc_component_update_bits;
 
-	/* Configure the TDM slot to process audio from */
-	ret = snd_soc_component_update_bits(component, TAS5720_DIGITAL_CTRL2_REG,
-				  TAS5720_TDM_SLOT_SEL_MASK, first_slot);
-	if (ret < 0)
-		goto error_snd_soc_component_update_bits;
+		/* Configure the TDM slot to process audio from */
+		ret = snd_soc_component_update_bits(component, TAS5720_DIGITAL_CTRL2_REG,
+					  TAS5720_TDM_SLOT_SEL_MASK, first_slot);
+		if (ret < 0)
+			goto error_snd_soc_component_update_bits;
+		break;
+	}
 
 	/* Configure TDM slot width. This is only applicable to TAS5722. */
 	switch (tas5720->devtype) {
@@ -201,10 +211,22 @@ static int tas5720_set_dai_tdm_slot(struct snd_soc_dai *dai,
 
 static int tas5720_mute_soc_component(struct snd_soc_component *component, int mute)
 {
+	struct tas5720_data *tas5720 = snd_soc_component_get_drvdata(component);
+	unsigned int reg, mask;
 	int ret;
 
-	ret = snd_soc_component_update_bits(component, TAS5720_DIGITAL_CTRL2_REG,
-				  TAS5720_MUTE, mute ? TAS5720_MUTE : 0);
+	switch (tas5720->devtype) {
+	case TAS5720A_Q1:
+		reg = TAS5720_Q1_VOLUME_CTRL_CFG_REG;
+		mask = TAS5720_Q1_MUTE;
+		break;
+	default:
+		reg = TAS5720_DIGITAL_CTRL2_REG;
+		mask = TAS5720_MUTE;
+		break;
+	}
+
+	ret = snd_soc_component_update_bits(component, reg, mask, mute ? mask : 0);
 	if (ret < 0) {
 		dev_err(component->dev, "error (un-)muting device: %d\n", ret);
 		return ret;
@@ -309,6 +331,9 @@ static int tas5720_codec_probe(struct snd_soc_component *component)
 	case TAS5720:
 		expected_device_id = TAS5720_DEVICE_ID;
 		break;
+	case TAS5720A_Q1:
+		expected_device_id = TAS5720A_Q1_DEVICE_ID;
+		break;
 	case TAS5722:
 		expected_device_id = TAS5722_DEVICE_ID;
 		break;
@@ -474,6 +499,15 @@ static const struct regmap_config tas5720_regmap_config = {
 	.volatile_reg = tas5720_is_volatile_reg,
 };
 
+static const struct regmap_config tas5720a_q1_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+
+	.max_register = TAS5720_MAX_REG,
+	.cache_type = REGCACHE_RBTREE,
+	.volatile_reg = tas5720_is_volatile_reg,
+};
+
 static const struct regmap_config tas5722_regmap_config = {
 	.reg_bits = 8,
 	.val_bits = 8,
@@ -494,6 +528,16 @@ static const DECLARE_TLV_DB_RANGE(dac_analog_tlv,
 	0x3, 0x3, TLV_DB_SCALE_ITEM(2630, 0, 0),
 );
 
+/*
+ * DAC analog gain for TAS5720A-Q1. There are three discrete values to select from, ranging
+ * from 19.2 dB to 25.0dB.
+ */
+static const DECLARE_TLV_DB_RANGE(dac_analog_tlv_a_q1,
+	0x0, 0x0, TLV_DB_SCALE_ITEM(1920, 0, 0),
+	0x1, 0x1, TLV_DB_SCALE_ITEM(2260, 0, 0),
+	0x2, 0x2, TLV_DB_SCALE_ITEM(2500, 0, 0),
+);
+
 /*
  * DAC digital volumes. From -103.5 to 24 dB in 0.5 dB or 0.25 dB steps
  * depending on the device. Note that setting the gain below -100 dB
@@ -540,6 +584,15 @@ static const struct snd_kcontrol_new tas5720_snd_controls[] = {
 		       TAS5720_ANALOG_GAIN_SHIFT, 3, 0, dac_analog_tlv),
 };
 
+static const struct snd_kcontrol_new tas5720a_q1_snd_controls[] = {
+	SOC_DOUBLE_R_TLV("Speaker Driver Playback Volume",
+				TAS5720_Q1_VOLUME_CTRL_LEFT_REG,
+				TAS5720_Q1_VOLUME_CTRL_RIGHT_REG,
+				0, 0xff, 0, tas5720_dac_tlv),
+	SOC_SINGLE_TLV("Speaker Driver Analog Gain", TAS5720_ANALOG_CTRL_REG,
+				TAS5720_ANALOG_GAIN_SHIFT, 3, 0, dac_analog_tlv_a_q1),
+};
+
 static const struct snd_kcontrol_new tas5722_snd_controls[] = {
 	SOC_SINGLE_EXT_TLV("Speaker Driver Playback Volume",
 			   0, 0, 511, 0,
@@ -577,6 +630,22 @@ static const struct snd_soc_component_driver soc_component_dev_tas5720 = {
 	.endianness		= 1,
 };
 
+static const struct snd_soc_component_driver soc_component_dev_tas5720_a_q1 = {
+	.probe			= tas5720_codec_probe,
+	.remove			= tas5720_codec_remove,
+	.suspend		= tas5720_suspend,
+	.resume			= tas5720_resume,
+	.controls		= tas5720a_q1_snd_controls,
+	.num_controls		= ARRAY_SIZE(tas5720a_q1_snd_controls),
+	.dapm_widgets		= tas5720_dapm_widgets,
+	.num_dapm_widgets	= ARRAY_SIZE(tas5720_dapm_widgets),
+	.dapm_routes		= tas5720_audio_map,
+	.num_dapm_routes	= ARRAY_SIZE(tas5720_audio_map),
+	.idle_bias_on		= 1,
+	.use_pmdown_time	= 1,
+	.endianness		= 1,
+};
+
 static const struct snd_soc_component_driver soc_component_dev_tas5722 = {
 	.probe = tas5720_codec_probe,
 	.remove = tas5720_codec_remove,
@@ -636,6 +705,7 @@ static struct snd_soc_dai_driver tas5720_dai[] = {
 
 static const struct i2c_device_id tas5720_id[] = {
 	{ "tas5720", TAS5720 },
+	{ "tas5720a-q1", TAS5720A_Q1 },
 	{ "tas5722", TAS5722 },
 	{ }
 };
@@ -662,6 +732,9 @@ static int tas5720_probe(struct i2c_client *client)
 	case TAS5720:
 		regmap_config = &tas5720_regmap_config;
 		break;
+	case TAS5720A_Q1:
+		regmap_config = &tas5720a_q1_regmap_config;
+		break;
 	case TAS5722:
 		regmap_config = &tas5722_regmap_config;
 		break;
@@ -695,6 +768,12 @@ static int tas5720_probe(struct i2c_client *client)
 					tas5720_dai,
 					ARRAY_SIZE(tas5720_dai));
 		break;
+	case TAS5720A_Q1:
+		ret = devm_snd_soc_register_component(&client->dev,
+					&soc_component_dev_tas5720_a_q1,
+					tas5720_dai,
+					ARRAY_SIZE(tas5720_dai));
+		break;
 	case TAS5722:
 		ret = devm_snd_soc_register_component(&client->dev,
 					&soc_component_dev_tas5722,
@@ -716,6 +795,7 @@ static int tas5720_probe(struct i2c_client *client)
 #if IS_ENABLED(CONFIG_OF)
 static const struct of_device_id tas5720_of_match[] = {
 	{ .compatible = "ti,tas5720", },
+	{ .compatible = "ti,tas5720a-q1", },
 	{ .compatible = "ti,tas5722", },
 	{ },
 };
diff --git a/sound/soc/codecs/tas5720.h b/sound/soc/codecs/tas5720.h
index 223858f0de71..b38459570241 100644
--- a/sound/soc/codecs/tas5720.h
+++ b/sound/soc/codecs/tas5720.h
@@ -10,7 +10,7 @@
 #ifndef __TAS5720_H__
 #define __TAS5720_H__
 
-/* Register Address Map */
+/* Register Address Map - first 3 regs are common for all variants */
 #define TAS5720_DEVICE_ID_REG		0x00
 #define TAS5720_POWER_CTRL_REG		0x01
 #define TAS5720_DIGITAL_CTRL1_REG	0x02
@@ -27,7 +27,13 @@
 #define TAS5722_ANALOG_CTRL2_REG	0x14
 #define TAS5722_MAX_REG			TAS5722_ANALOG_CTRL2_REG
 
+/* Register Address Map - volume controls for the TAS5720-Q1 variant */
+#define TAS5720_Q1_VOLUME_CTRL_CFG_REG		0x03
+#define TAS5720_Q1_VOLUME_CTRL_LEFT_REG		0x04
+#define TAS5720_Q1_VOLUME_CTRL_RIGHT_REG	0x05
+
 /* TAS5720_DEVICE_ID_REG */
+#define TAS5720A_Q1_DEVICE_ID		0x00
 #define TAS5720_DEVICE_ID		0x01
 #define TAS5722_DEVICE_ID		0x12
 
@@ -53,6 +59,10 @@
 #define TAS5720_MUTE			BIT(4)
 #define TAS5720_TDM_SLOT_SEL_MASK	GENMASK(2, 0)
 
+/* TAS5720_Q1_VOLUME_CTRL_CFG_REG */
+#define TAS5720_Q1_FADE			BIT(7)
+#define TAS5720_Q1_MUTE			GENMASK(1, 0)
+
 /* TAS5720_ANALOG_CTRL_REG */
 #define TAS5720_PWM_RATE_6_3_FSYNC	(0x0 << 4)
 #define TAS5720_PWM_RATE_8_4_FSYNC	(0x1 << 4)
@@ -70,6 +80,9 @@
 #define TAS5720_ANALOG_GAIN_MASK	GENMASK(3, 2)
 #define TAS5720_ANALOG_GAIN_SHIFT	(0x2)
 
+/* TAS5720_Q1_ANALOG_CTRL_REG */
+#define TAS5720_Q1_CHAN_SEL		BIT(1)
+
 /* TAS5720_FAULT_REG */
 #define TAS5720_OC_THRESH_100PCT	(0x0 << 4)
 #define TAS5720_OC_THRESH_75PCT		(0x1 << 4)
-- 
2.34.1


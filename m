Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EA492CC839
	for <lists+devicetree@lfdr.de>; Sat,  5 Oct 2019 07:58:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726654AbfJEF6v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Oct 2019 01:58:51 -0400
Received: from mail-vk1-f202.google.com ([209.85.221.202]:45974 "EHLO
        mail-vk1-f202.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726636AbfJEF6v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Oct 2019 01:58:51 -0400
Received: by mail-vk1-f202.google.com with SMTP id q84so3654187vkb.12
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2019 22:58:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=9/Lb2n2Dl1IjlTZEVCLmP5Zb0tuzyhiYP+9l5REQgPI=;
        b=VE2V9J2wvgbzvv2uTARdYLK/hA9tuQAbpy8mC6mItEySE8rn0FhTLQ6aCFArnU9Slz
         RvjB5LbDmjy0reHPa4Q96MwYJWYbcCgXoBFsTEjAKJT8KZ4wg+tBg2zVGqV8gakztWir
         2x5SQ1A1wEnjB17nBzsTV2cSo/I//7PYwXRwmKk/rWnBi2u1RExLDBKgoJmw7y/gUV3i
         jajMD5YGplxFHPqre1KnPwXowFTHvGnQ19GFG5YxqrQEma6iFxJsvwJ/H+EMwvcfq5tx
         dNZFikhwt1iqB6CtzkwqhpJWN9d7jQYRFXVUtym0QlSOGxF5Xwu4Bfo6w4zGKbX+cgza
         43cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=9/Lb2n2Dl1IjlTZEVCLmP5Zb0tuzyhiYP+9l5REQgPI=;
        b=Vg5NTQPx/2dSgNzcz8vbszWL6AAoCOJeQdjezJ/vScUIDxrGWgX4SOGaNeJi9JUpr8
         ujoJ451NiRRbHuHmzc7oqb8POwt2J75jUlORcP2E1bvnm9PeZ+HcWKb5d2PMYnv4aXle
         sHOkLsESFacwx55nw+I+U1gAFob5CRPKanP/jf2fBODn1xQk13BhZb29IYfQtk9aMfx3
         0yfigXjpK1GX+5MAggCkHsik/TILDmXNmnFO0EEIWTNg+daCh0zCKzM/t6ZS7y7VjzE9
         wdQME0RfTVvscktmdvfjN/9Padb/m99NW5CXl+3JtgAf0Wnwvs5co89tVG8H75gRVOcl
         xZ6Q==
X-Gm-Message-State: APjAAAUvtKzJtc6vl4p4y/QHfww5im1ukDWx06a6lwP2cxjDHKV3i31F
        eyEOYvqqqS0/R3hKMCV9T5YIGVRStb87
X-Google-Smtp-Source: APXvYqwlUHt1lq0pgugYZYWjF9Twyk4Yq89yfyUzcl4JxflL76u7oWrAja8lHKj9tWYq/UAieJuswUcntX+J
X-Received: by 2002:a1f:45d5:: with SMTP id s204mr1968989vka.39.1570255128081;
 Fri, 04 Oct 2019 22:58:48 -0700 (PDT)
Date:   Sat,  5 Oct 2019 13:58:01 +0800
In-Reply-To: <20191005055808.249089-1-tzungbi@google.com>
Message-Id: <20191005130552.3.I93d9c65964f3c30f85a36d228e31150ff1917706@changeid>
Mime-Version: 1.0
References: <20191005055808.249089-1-tzungbi@google.com>
X-Mailer: git-send-email 2.23.0.581.g78d2f28ef7-goog
Subject: [PATCH 03/10] ASoC: cros_ec_codec: extract DMIC EC command from I2S RX
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     broonie@kernel.org
Cc:     alsa-devel@alsa-project.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, enric.balletbo@collabora.com,
        bleung@google.com, gwendal@google.com, drinkcat@google.com,
        cychiang@google.com, dgreid@google.com, tzungbi@google.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Extract DMIC EC command from I2S RX.  Setting and getting
microphone gains is common features.

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 drivers/platform/chrome/cros_ec_trace.c       |  1 +
 .../linux/platform_data/cros_ec_commands.h    | 49 +++++++++++-----
 sound/soc/codecs/cros_ec_codec.c              | 57 ++++++++++---------
 3 files changed, 68 insertions(+), 39 deletions(-)

diff --git a/drivers/platform/chrome/cros_ec_trace.c b/drivers/platform/chrome/cros_ec_trace.c
index 901850004b2b..e73bb6a8b00e 100644
--- a/drivers/platform/chrome/cros_ec_trace.c
+++ b/drivers/platform/chrome/cros_ec_trace.c
@@ -98,6 +98,7 @@
 	TRACE_SYMBOL(EC_CMD_SB_READ_BLOCK), \
 	TRACE_SYMBOL(EC_CMD_SB_WRITE_BLOCK), \
 	TRACE_SYMBOL(EC_CMD_BATTERY_VENDOR_PARAM), \
+	TRACE_SYMBOL(EC_CMD_EC_CODEC_DMIC), \
 	TRACE_SYMBOL(EC_CMD_EC_CODEC_I2S_RX), \
 	TRACE_SYMBOL(EC_CMD_REBOOT_EC), \
 	TRACE_SYMBOL(EC_CMD_GET_PANIC_INFO), \
diff --git a/include/linux/platform_data/cros_ec_commands.h b/include/linux/platform_data/cros_ec_commands.h
index 261ac83bd007..58e460c015ef 100644
--- a/include/linux/platform_data/cros_ec_commands.h
+++ b/include/linux/platform_data/cros_ec_commands.h
@@ -4466,18 +4466,48 @@ enum mkbp_cec_event {
 
 /*****************************************************************************/
 
+/* Commands for DMIC on audio codec. */
+#define EC_CMD_EC_CODEC_DMIC 0x00BC
+
+enum ec_codec_dmic_subcmd {
+	EC_CODEC_DMIC_SET_GAIN = 0x0,
+	EC_CODEC_DMIC_GET_GAIN = 0x1,
+	EC_CODEC_DMIC_SUBCMD_COUNT,
+};
+
+struct __ec_align1 ec_param_ec_codec_dmic_set_gain {
+	uint8_t left;
+	uint8_t right;
+	uint8_t reserved[2];
+};
+
+struct __ec_align4 ec_param_ec_codec_dmic {
+	uint8_t cmd; /* enum ec_codec_dmic_subcmd */
+	uint8_t reserved[3];
+
+	union {
+		struct ec_param_ec_codec_dmic_set_gain
+				set_gain_param;
+	};
+};
+
+struct __ec_align1 ec_response_ec_codec_dmic_get_gain {
+	uint8_t left;
+	uint8_t right;
+};
+
+/*****************************************************************************/
+
 /* Commands for I2S RX on audio codec. */
 
-#define EC_CMD_EC_CODEC_I2S_RX 0x00BC
+#define EC_CMD_EC_CODEC_I2S_RX 0x00BD
 
 enum ec_codec_i2s_rx_subcmd {
 	EC_CODEC_I2S_RX_ENABLE = 0x0,
 	EC_CODEC_I2S_RX_DISABLE = 0x1,
-	EC_CODEC_I2S_RX_SET_GAIN = 0x2,
-	EC_CODEC_I2S_RX_GET_GAIN = 0x3,
-	EC_CODEC_I2S_RX_SET_SAMPLE_DEPTH = 0x4,
-	EC_CODEC_I2S_RX_SET_DAIFMT = 0x5,
-	EC_CODEC_I2S_RX_SET_BCLK = 0x6,
+	EC_CODEC_I2S_RX_SET_SAMPLE_DEPTH = 0x2,
+	EC_CODEC_I2S_RX_SET_DAIFMT = 0x3,
+	EC_CODEC_I2S_RX_SET_BCLK = 0x4,
 	EC_CODEC_I2S_RX_SUBCMD_COUNT,
 };
 
@@ -4521,8 +4551,6 @@ struct __ec_align4 ec_param_ec_codec_i2s_rx {
 	union {
 		struct ec_param_ec_codec_i2s_rx_set_sample_depth
 				set_sample_depth_param;
-		struct ec_param_ec_codec_i2s_rx_set_gain
-				set_gain_param;
 		struct ec_param_ec_codec_i2s_rx_set_daifmt
 				set_daifmt_param;
 		struct ec_param_ec_codec_i2s_rx_set_bclk
@@ -4530,11 +4558,6 @@ struct __ec_align4 ec_param_ec_codec_i2s_rx {
 	};
 };
 
-struct __ec_align1 ec_response_ec_codec_i2s_rx_get_gain {
-	uint8_t left;
-	uint8_t right;
-};
-
 /*****************************************************************************/
 /* System commands */
 
diff --git a/sound/soc/codecs/cros_ec_codec.c b/sound/soc/codecs/cros_ec_codec.c
index 179fa77291cd..c19c7fe42e2e 100644
--- a/sound/soc/codecs/cros_ec_codec.c
+++ b/sound/soc/codecs/cros_ec_codec.c
@@ -64,12 +64,12 @@ static int dmic_get_gain(struct snd_kcontrol *kcontrol,
 		snd_soc_kcontrol_component(kcontrol);
 	struct cros_ec_codec_priv *priv =
 		snd_soc_component_get_drvdata(component);
-	struct ec_param_ec_codec_i2s_rx p;
-	struct ec_response_ec_codec_i2s_rx_get_gain r;
+	struct ec_param_ec_codec_dmic p;
+	struct ec_response_ec_codec_dmic_get_gain r;
 	int ret;
 
-	p.cmd = EC_CODEC_I2S_RX_GET_GAIN;
-	ret = send_ec_host_command(priv->ec_device, EC_CMD_EC_CODEC_I2S_RX,
+	p.cmd = EC_CODEC_DMIC_GET_GAIN;
+	ret = send_ec_host_command(priv->ec_device, EC_CMD_EC_CODEC_DMIC,
 				   (uint8_t *)&p, sizeof(p),
 				   (uint8_t *)&r, sizeof(r));
 	if (ret < 0)
@@ -93,17 +93,17 @@ static int dmic_put_gain(struct snd_kcontrol *kcontrol,
 	int max_dmic_gain = control->max;
 	int left = ucontrol->value.integer.value[0];
 	int right = ucontrol->value.integer.value[1];
-	struct ec_param_ec_codec_i2s_rx p;
+	struct ec_param_ec_codec_dmic p;
 
 	if (left > max_dmic_gain || right > max_dmic_gain)
 		return -EINVAL;
 
 	dev_dbg(component->dev, "set mic gain to %u, %u\n", left, right);
 
-	p.cmd = EC_CODEC_I2S_RX_SET_GAIN;
+	p.cmd = EC_CODEC_DMIC_SET_GAIN;
 	p.set_gain_param.left = left;
 	p.set_gain_param.right = right;
-	return send_ec_host_command(priv->ec_device, EC_CMD_EC_CODEC_I2S_RX,
+	return send_ec_host_command(priv->ec_device, EC_CMD_EC_CODEC_DMIC,
 				    (uint8_t *)&p, sizeof(p), NULL, 0);
 }
 
@@ -120,6 +120,29 @@ static struct snd_kcontrol_new dmic_controls[] = {
 				   dmic_gain_tlv),
 };
 
+static int dmic_probe(struct snd_soc_component *component)
+{
+	struct cros_ec_codec_priv *priv =
+		snd_soc_component_get_drvdata(component);
+	struct device *dev = priv->dev;
+	int ret, val;
+	struct soc_mixer_control *control;
+
+	ret = device_property_read_u32(dev, "max-dmic-gain", &val);
+	if (ret) {
+		dev_err(dev, "Failed to read 'max-dmic-gain'\n");
+		return ret;
+	}
+
+	control = (struct soc_mixer_control *)
+		dmic_controls[DMIC_CTL_GAIN].private_value;
+	control->max = val;
+	control->platform_max = val;
+
+	return snd_soc_add_component_controls(component,
+			&dmic_controls[DMIC_CTL_GAIN], 1);
+}
+
 static int i2s_rx_hw_params(struct snd_pcm_substream *substream,
 			    struct snd_pcm_hw_params *params,
 			    struct snd_soc_dai *dai)
@@ -265,25 +288,7 @@ static struct snd_soc_dai_driver i2s_rx_dai_driver = {
 
 static int i2s_rx_probe(struct snd_soc_component *component)
 {
-	struct cros_ec_codec_priv *priv =
-		snd_soc_component_get_drvdata(component);
-	struct device *dev = priv->dev;
-	int ret, val;
-	struct soc_mixer_control *control;
-
-	ret = device_property_read_u32(dev, "max-dmic-gain", &val);
-	if (ret) {
-		dev_err(dev, "Failed to read 'max-dmic-gain'\n");
-		return ret;
-	}
-
-	control = (struct soc_mixer_control *)
-			dmic_controls[DMIC_CTL_GAIN].private_value;
-	control->max = val;
-	control->platform_max = val;
-
-	return snd_soc_add_component_controls(component,
-			&dmic_controls[DMIC_CTL_GAIN], 1);
+	return dmic_probe(component);
 }
 
 static const struct snd_soc_component_driver i2s_rx_component_driver = {
-- 
2.23.0.581.g78d2f28ef7-goog


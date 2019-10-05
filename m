Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 53F6ECC83B
	for <lists+devicetree@lfdr.de>; Sat,  5 Oct 2019 07:59:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726774AbfJEF7A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Oct 2019 01:59:00 -0400
Received: from mail-qk1-f201.google.com ([209.85.222.201]:34287 "EHLO
        mail-qk1-f201.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726636AbfJEF7A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Oct 2019 01:59:00 -0400
Received: by mail-qk1-f201.google.com with SMTP id b67so8847966qkc.1
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2019 22:58:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=HU4cbOuoYFqXlnJcy/p07LmBMaxvgrbFUK/zvntKxPw=;
        b=gFtgMnq80CRltdZD2CtDjfFW9fMAbPsJ6Z6QbQC2WlafGF+ynGDGhWpB5ni5F1N+/n
         55UQcqwE1AUa1ssuqGP1HE6MaaCd/sAQ39iz8V5ZG2iEtS6rkTWVTTqB1eYzb/gbHroj
         6QMGpczoTv+fgvnvGPTT1E41AdH1FKliYhX4JV2o+lSq/B4HNc9quZLrKvZGTxd0wmlU
         qQQKESBNoAxwzF/fmhfj2cbKTNek0hyP4L2QLiAdOxKZMSLxWeOu8Nix5Q5S9qe49B9U
         ZdUEtXi8r4bRVWRp/m3BW+eI5LELMKl7Myl8zPXN/xO+++djQcq7b0tv3uSi+MInBr2Y
         kO6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=HU4cbOuoYFqXlnJcy/p07LmBMaxvgrbFUK/zvntKxPw=;
        b=hQwtOkXXQMto5ABv5k/RpxRicjtwypVmC+qJcs5ydZSjGYRI/Rz68LlU7XvjdyKCL2
         bnYJ8Ec53yrD+7mnP4spKNjGjvaRZyGv/rb2KW6sTR394HkWtWHrbrS9eIXV93PpTB0p
         J4srbR8gBgGsL/FCi0p8b24gTmjie2fODn1DyF8zR44q7q9Fg8vmLhjABTvlwoy0yMcw
         R1dVXIXOUzrFpKhPei5lvcIW3AoSiGYvreNsd/gB7mkxWYNpS110I0ZxY/829AAGqlxC
         3TPPHE2UIcljVLv3POjRiYNpuvi0kG/R8Hsr1GA48Dh3gH7w9Giw1VbfwGNfQe02Aq+D
         yWug==
X-Gm-Message-State: APjAAAUDjfUlSiwZI3iUVMofciwiRafO8dGHKfA1TIEHyVNqSD+IDCgs
        +rgI3dMaI/0V5kgS006dhssG6tw060NZ
X-Google-Smtp-Source: APXvYqznoY2dXLLJ5jKS927F0PwtjR49ho8ZSS218g4wjclzdI0dpLKMD+GFs6AheYXzq4t30F31HUuOQbKY
X-Received: by 2002:a0c:f68f:: with SMTP id p15mr17620024qvn.31.1570255137813;
 Fri, 04 Oct 2019 22:58:57 -0700 (PDT)
Date:   Sat,  5 Oct 2019 13:58:03 +0800
In-Reply-To: <20191005055808.249089-1-tzungbi@google.com>
Message-Id: <20191005130552.5.Id4657c864d544634f2b5c1c9b34fa8232ecba44d@changeid>
Mime-Version: 1.0
References: <20191005055808.249089-1-tzungbi@google.com>
X-Mailer: git-send-email 2.23.0.581.g78d2f28ef7-goog
Subject: [PATCH 05/10] ASoC: cros_ec_codec: read max DMIC gain from EC codec
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

Read max DMIC gain from EC codec instead of DTS.  Also removes the
dt-binding of max-dmic-gain.

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 .../bindings/sound/google,cros-ec-codec.txt   |  4 +-
 .../linux/platform_data/cros_ec_commands.h    | 43 +++++++++++----
 sound/soc/codecs/cros_ec_codec.c              | 53 ++++++++++++++-----
 3 files changed, 73 insertions(+), 27 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/google,cros-ec-codec.txt b/Documentation/devicetree/bindings/sound/google,cros-ec-codec.txt
index 1084f7f22eea..0ce9fafc78e2 100644
--- a/Documentation/devicetree/bindings/sound/google,cros-ec-codec.txt
+++ b/Documentation/devicetree/bindings/sound/google,cros-ec-codec.txt
@@ -1,4 +1,4 @@
-* Audio codec controlled by ChromeOS EC
+Audio codec controlled by ChromeOS EC
 
 Google's ChromeOS EC codec is a digital mic codec provided by the
 Embedded Controller (EC) and is controlled via a host-command interface.
@@ -9,7 +9,6 @@ Documentation/devicetree/bindings/mfd/cros-ec.txt).
 Required properties:
 - compatible: Must contain "google,cros-ec-codec"
 - #sound-dai-cells: Should be 1. The cell specifies number of DAIs.
-- max-dmic-gain: A number for maximum gain in dB on digital microphone.
 
 Example:
 
@@ -21,6 +20,5 @@ cros-ec@0 {
 	cros_ec_codec: ec-codec {
 		compatible = "google,cros-ec-codec";
 		#sound-dai-cells = <1>;
-		max-dmic-gain = <43>;
 	};
 };
diff --git a/include/linux/platform_data/cros_ec_commands.h b/include/linux/platform_data/cros_ec_commands.h
index 3ca0fa9e92a7..21db0d4d4025 100644
--- a/include/linux/platform_data/cros_ec_commands.h
+++ b/include/linux/platform_data/cros_ec_commands.h
@@ -4530,30 +4530,53 @@ struct __ec_align4 ec_response_ec_codec_get_shm_addr {
 #define EC_CMD_EC_CODEC_DMIC 0x00BD
 
 enum ec_codec_dmic_subcmd {
-	EC_CODEC_DMIC_SET_GAIN = 0x0,
-	EC_CODEC_DMIC_GET_GAIN = 0x1,
+	EC_CODEC_DMIC_GET_MAX_GAIN = 0x0,
+	EC_CODEC_DMIC_SET_GAIN_IDX = 0x1,
+	EC_CODEC_DMIC_GET_GAIN_IDX = 0x2,
 	EC_CODEC_DMIC_SUBCMD_COUNT,
 };
 
-struct __ec_align1 ec_param_ec_codec_dmic_set_gain {
-	uint8_t left;
-	uint8_t right;
+enum ec_codec_dmic_channel {
+	EC_CODEC_DMIC_CHANNEL_0 = 0x0,
+	EC_CODEC_DMIC_CHANNEL_1 = 0x1,
+	EC_CODEC_DMIC_CHANNEL_2 = 0x2,
+	EC_CODEC_DMIC_CHANNEL_3 = 0x3,
+	EC_CODEC_DMIC_CHANNEL_4 = 0x4,
+	EC_CODEC_DMIC_CHANNEL_5 = 0x5,
+	EC_CODEC_DMIC_CHANNEL_6 = 0x6,
+	EC_CODEC_DMIC_CHANNEL_7 = 0x7,
+	EC_CODEC_DMIC_CHANNEL_COUNT,
+};
+
+struct __ec_align1 ec_param_ec_codec_dmic_set_gain_idx {
+	uint8_t channel; /* enum ec_codec_dmic_channel */
+	uint8_t gain;
 	uint8_t reserved[2];
 };
 
+struct __ec_align1 ec_param_ec_codec_dmic_get_gain_idx {
+	uint8_t channel; /* enum ec_codec_dmic_channel */
+	uint8_t reserved[3];
+};
+
 struct __ec_align4 ec_param_ec_codec_dmic {
 	uint8_t cmd; /* enum ec_codec_dmic_subcmd */
 	uint8_t reserved[3];
 
 	union {
-		struct ec_param_ec_codec_dmic_set_gain
-				set_gain_param;
+		struct ec_param_ec_codec_dmic_set_gain_idx
+				set_gain_idx_param;
+		struct ec_param_ec_codec_dmic_get_gain_idx
+				get_gain_idx_param;
 	};
 };
 
-struct __ec_align1 ec_response_ec_codec_dmic_get_gain {
-	uint8_t left;
-	uint8_t right;
+struct __ec_align1 ec_response_ec_codec_dmic_get_max_gain {
+	uint8_t max_gain;
+};
+
+struct __ec_align1 ec_response_ec_codec_dmic_get_gain_idx {
+	uint8_t gain;
 };
 
 /*****************************************************************************/
diff --git a/sound/soc/codecs/cros_ec_codec.c b/sound/soc/codecs/cros_ec_codec.c
index c19c7fe42e2e..3d4f9e82d6e9 100644
--- a/sound/soc/codecs/cros_ec_codec.c
+++ b/sound/soc/codecs/cros_ec_codec.c
@@ -65,18 +65,26 @@ static int dmic_get_gain(struct snd_kcontrol *kcontrol,
 	struct cros_ec_codec_priv *priv =
 		snd_soc_component_get_drvdata(component);
 	struct ec_param_ec_codec_dmic p;
-	struct ec_response_ec_codec_dmic_get_gain r;
+	struct ec_response_ec_codec_dmic_get_gain_idx r;
 	int ret;
 
-	p.cmd = EC_CODEC_DMIC_GET_GAIN;
+	p.cmd = EC_CODEC_DMIC_GET_GAIN_IDX;
+	p.get_gain_idx_param.channel = EC_CODEC_DMIC_CHANNEL_0;
 	ret = send_ec_host_command(priv->ec_device, EC_CMD_EC_CODEC_DMIC,
 				   (uint8_t *)&p, sizeof(p),
 				   (uint8_t *)&r, sizeof(r));
 	if (ret < 0)
 		return ret;
+	ucontrol->value.integer.value[0] = r.gain;
 
-	ucontrol->value.integer.value[0] = r.left;
-	ucontrol->value.integer.value[1] = r.right;
+	p.cmd = EC_CODEC_DMIC_GET_GAIN_IDX;
+	p.get_gain_idx_param.channel = EC_CODEC_DMIC_CHANNEL_1;
+	ret = send_ec_host_command(priv->ec_device, EC_CMD_EC_CODEC_DMIC,
+				   (uint8_t *)&p, sizeof(p),
+				   (uint8_t *)&r, sizeof(r));
+	if (ret < 0)
+		return ret;
+	ucontrol->value.integer.value[1] = r.gain;
 
 	return 0;
 }
@@ -94,15 +102,24 @@ static int dmic_put_gain(struct snd_kcontrol *kcontrol,
 	int left = ucontrol->value.integer.value[0];
 	int right = ucontrol->value.integer.value[1];
 	struct ec_param_ec_codec_dmic p;
+	int ret;
 
 	if (left > max_dmic_gain || right > max_dmic_gain)
 		return -EINVAL;
 
 	dev_dbg(component->dev, "set mic gain to %u, %u\n", left, right);
 
-	p.cmd = EC_CODEC_DMIC_SET_GAIN;
-	p.set_gain_param.left = left;
-	p.set_gain_param.right = right;
+	p.cmd = EC_CODEC_DMIC_SET_GAIN_IDX;
+	p.set_gain_idx_param.channel = EC_CODEC_DMIC_CHANNEL_0;
+	p.set_gain_idx_param.gain = left;
+	ret = send_ec_host_command(priv->ec_device, EC_CMD_EC_CODEC_DMIC,
+				   (uint8_t *)&p, sizeof(p), NULL, 0);
+	if (ret < 0)
+		return ret;
+
+	p.cmd = EC_CODEC_DMIC_SET_GAIN_IDX;
+	p.set_gain_idx_param.channel = EC_CODEC_DMIC_CHANNEL_1;
+	p.set_gain_idx_param.gain = right;
 	return send_ec_host_command(priv->ec_device, EC_CMD_EC_CODEC_DMIC,
 				    (uint8_t *)&p, sizeof(p), NULL, 0);
 }
@@ -125,19 +142,27 @@ static int dmic_probe(struct snd_soc_component *component)
 	struct cros_ec_codec_priv *priv =
 		snd_soc_component_get_drvdata(component);
 	struct device *dev = priv->dev;
-	int ret, val;
 	struct soc_mixer_control *control;
+	struct ec_param_ec_codec_dmic p;
+	struct ec_response_ec_codec_dmic_get_max_gain r;
+	int ret;
 
-	ret = device_property_read_u32(dev, "max-dmic-gain", &val);
-	if (ret) {
-		dev_err(dev, "Failed to read 'max-dmic-gain'\n");
-		return ret;
+	p.cmd = EC_CODEC_DMIC_GET_MAX_GAIN;
+
+	ret = send_ec_host_command(priv->ec_device, EC_CMD_EC_CODEC_DMIC,
+				   (uint8_t *)&p, sizeof(p),
+				   (uint8_t *)&r, sizeof(r));
+	if (ret < 0) {
+		dev_warn(dev, "get_max_gain() unsupported\n");
+		return 0;
 	}
 
+	dev_dbg(dev, "max gain = %d\n", r.max_gain);
+
 	control = (struct soc_mixer_control *)
 		dmic_controls[DMIC_CTL_GAIN].private_value;
-	control->max = val;
-	control->platform_max = val;
+	control->max = r.max_gain;
+	control->platform_max = r.max_gain;
 
 	return snd_soc_add_component_controls(component,
 			&dmic_controls[DMIC_CTL_GAIN], 1);
-- 
2.23.0.581.g78d2f28ef7-goog


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A065F36721F
	for <lists+devicetree@lfdr.de>; Wed, 21 Apr 2021 19:59:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245048AbhDUR77 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Apr 2021 13:59:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235658AbhDUR76 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Apr 2021 13:59:58 -0400
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34F07C06174A
        for <devicetree@vger.kernel.org>; Wed, 21 Apr 2021 10:59:25 -0700 (PDT)
Received: by mail-ot1-x329.google.com with SMTP id 35-20020a9d05260000b029029c82502d7bso8286832otw.2
        for <devicetree@vger.kernel.org>; Wed, 21 Apr 2021 10:59:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=B3dB6dprf5ImFu80jJTqmfl2U2mOyexiErLXpDPq8wE=;
        b=lhZNIigYVSCKSfOxUUW5lQ+1OT5xDpHSqrNKa2ggF6Om1MqdByUAg3P8oWHdpJPiJo
         EOIHzWT7/zKbsq+XjXbVCiqoVo/6bsaNRry9QDh08/WExvCXZQndIZtdZWKz9lX+R46f
         O2yEz9XB+/pKOhTt/PC1iVGUvm3AWj/XNR4SLd52DRUkuXiayU0n6MP0M8OQyt57N3SX
         1t7zkRwP56VvyWmD+4PAYOoXd64iHVYGNk3DzaM3KQA+ifOmvuC+zBXcL5evNU7Iufi3
         I6ozY5gJMXTHtL4vUidFM6dEosCw+1AUpqQEWqxol338rxhrSPDWddJGRdddbq+1Ixvc
         KaTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=B3dB6dprf5ImFu80jJTqmfl2U2mOyexiErLXpDPq8wE=;
        b=ocnXyE2GcCk926xa4iv2kGpR7QHGmjW2bWoTqS98oxz5r+UqyWrVzQXN46GNdIN7Xg
         8wQTsLC+jsQYV5m7iuFfCudX+C0OvALF9ROxqhYGKyMaoi5vt1cEcvpZqxV2RHYEVRDU
         zwIbqyfCOrjWAi4lzrzm7K/wvXNd+hkLrRXWaeWZHRdIox3x+IC03L/8i9cuvPjgX8CC
         nPuvPqEC6H1qXAkLv+AEueLPkpVONsBLgJn2vb3Rq4j8CBW3LMKV4jIqKJmL7TeVGPY+
         azI3EXPG5Gpx0WLg4cdPYNZtdNU6LQFcCigLq0QHQs1Ajlj8DE8amBAA58ZDjm/ehElv
         W7fw==
X-Gm-Message-State: AOAM5320kiGa65IbqXXD+8M2mMzWCxQnaHOMuTwc8VaH7oryBcpf9apb
        Ruz4hbn+8fynATiRe0628h8=
X-Google-Smtp-Source: ABdhPJwzI5P5mZQfcCrU+jD5xx39iiqpCvuzeVqyd5AftOrWA9jJEncJkLLb0tL58VnbuGpB8RvnPA==
X-Received: by 2002:a9d:761a:: with SMTP id k26mr23646966otl.193.1619027964520;
        Wed, 21 Apr 2021 10:59:24 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id l62sm13662oih.2.2021.04.21.10.59.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Apr 2021 10:59:24 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     alsa-devel@alsa-project.org
Cc:     broonie@kernel.org, lgirdwood@gmail.com,
        pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
        heiko@sntech.de, lee.jones@linaro.org, robh+dt@kernel.org,
        perex@perex.cz, jbx6244@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [v8 2/4] ASoC: Add Rockchip rk817 audio CODEC support
Date:   Wed, 21 Apr 2021 12:59:04 -0500
Message-Id: <20210421175906.31977-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210421175906.31977-1-macroalpha82@gmail.com>
References: <20210421175906.31977-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Rockchip rk817 audio codec integrated into the
rk817 PMIC. This is based on the sources provided by Rockchip from
their BSP kernel.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Reviewed-by: Mark Brown <broonie@kernel.org>
---
Changes in v8:
 - Added additional documentation for missing properties of #sound-dai-cells,
   interrupt-parent, and wakeup-source for mfd documentation.
 - Corrected order of elements descriptions in device tree documentation.
 - Changed name of "mic-in-differential" to "rockchip,mic-in-differential".
 - Changed name of sound card from "rockchip,rk817-codec" to "Analog".
 - Removed unused resets and reset-names from the i2s1_2ch node.
Changes in v7:
 - Removed ifdef around register definitions for MFD.
 - Replaced codec documentation with updates to MFD documentation.
 - Reordered elements in example to comply with upstream rules.
 - Added binding update back for Odroid Go Advance as requested.
 - Submitting patches from gmail now.
Changes in v6:
 - Included additional project maintainers for correct subsystems.
 - Removed unneeded compatible from DT documentation.
 - Removed binding update for Odroid Go Advance (will do in seperate series).
Changes in v5:
 - Move register definitions from rk817_codec.h to main rk808.h register
   definitions.
 - Add volatile register for codec bits.
 - Add default values for codec bits.
 - Removed of_compatible from mtd driver (not necessary).
 - Switched to using parent regmap instead of private regmap for codec.
Changes in v4:
 - Created set_pll() call.
 - Created user visible gain control in mic.
 - Check for return value of clk_prepare_enable().
 - Removed duplicate clk_prepare_enable().
 - Split DT documentation to separate commit.
Changes in v3:
 - Use DAPM macros to set audio path.
 - Updated devicetree binding (as every rk817 has this codec chip).
 - Changed documentation to yaml format.
 - Split MFD changes to separate commit.
Changes in v2:
 - Fixed audio path registers to solve some bugs.

 sound/soc/codecs/Kconfig       |   6 +
 sound/soc/codecs/Makefile      |   2 +
 sound/soc/codecs/rk817_codec.c | 560 +++++++++++++++++++++++++++++++++
 3 files changed, 568 insertions(+)
 create mode 100644 sound/soc/codecs/rk817_codec.c

diff --git a/sound/soc/codecs/Kconfig b/sound/soc/codecs/Kconfig
index 1c87b42606c9..7624475efa08 100644
--- a/sound/soc/codecs/Kconfig
+++ b/sound/soc/codecs/Kconfig
@@ -155,6 +155,7 @@ config SND_SOC_ALL_CODECS
 	imply SND_SOC_PCM512x_I2C
 	imply SND_SOC_PCM512x_SPI
 	imply SND_SOC_RK3328
+	imply SND_SOC_RK817
 	imply SND_SOC_RT274
 	imply SND_SOC_RT286
 	imply SND_SOC_RT298
@@ -1058,6 +1059,11 @@ config SND_SOC_RK3328
 	tristate "Rockchip RK3328 audio CODEC"
 	select REGMAP_MMIO
 
+config SND_SOC_RK817
+	tristate "Rockchip RK817 audio CODEC"
+	depends on MFD_RK808
+	select REGMAP_I2C
+
 config SND_SOC_RL6231
 	tristate
 	default y if SND_SOC_RT5514=y
diff --git a/sound/soc/codecs/Makefile b/sound/soc/codecs/Makefile
index 81357dc62ea0..4e5e9b28775c 100644
--- a/sound/soc/codecs/Makefile
+++ b/sound/soc/codecs/Makefile
@@ -165,6 +165,7 @@ snd-soc-pcm512x-objs := pcm512x.o
 snd-soc-pcm512x-i2c-objs := pcm512x-i2c.o
 snd-soc-pcm512x-spi-objs := pcm512x-spi.o
 snd-soc-rk3328-objs := rk3328_codec.o
+snd-soc-rk817-objs := rk817_codec.o
 snd-soc-rl6231-objs := rl6231.o
 snd-soc-rl6347a-objs := rl6347a.o
 snd-soc-rt1011-objs := rt1011.o
@@ -479,6 +480,7 @@ obj-$(CONFIG_SND_SOC_PCM512x)	+= snd-soc-pcm512x.o
 obj-$(CONFIG_SND_SOC_PCM512x_I2C)	+= snd-soc-pcm512x-i2c.o
 obj-$(CONFIG_SND_SOC_PCM512x_SPI)	+= snd-soc-pcm512x-spi.o
 obj-$(CONFIG_SND_SOC_RK3328)	+= snd-soc-rk3328.o
+obj-$(CONFIG_SND_SOC_RK817)	+= snd-soc-rk817.o
 obj-$(CONFIG_SND_SOC_RL6231)	+= snd-soc-rl6231.o
 obj-$(CONFIG_SND_SOC_RL6347A)	+= snd-soc-rl6347a.o
 obj-$(CONFIG_SND_SOC_RT1011)	+= snd-soc-rt1011.o
diff --git a/sound/soc/codecs/rk817_codec.c b/sound/soc/codecs/rk817_codec.c
new file mode 100644
index 000000000000..86d19c237556
--- /dev/null
+++ b/sound/soc/codecs/rk817_codec.c
@@ -0,0 +1,560 @@
+// SPDX-License-Identifier: GPL-2.0
+//
+// rk817 ALSA SoC Audio driver
+//
+// Copyright (c) 2018, Fuzhou Rockchip Electronics Co., Ltd All rights reserved.
+
+#include <linux/clk.h>
+#include <linux/device.h>
+#include <linux/delay.h>
+#include <linux/mfd/rk808.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_gpio.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+#include <sound/core.h>
+#include <sound/pcm_params.h>
+#include <sound/soc.h>
+#include <sound/tlv.h>
+
+struct rk817_codec_priv {
+	struct snd_soc_component *component;
+	struct rk808 *rk808;
+	struct clk *mclk;
+	unsigned int stereo_sysclk;
+	bool mic_in_differential;
+};
+
+/*
+ * This sets the codec up with the values defined in the default implementation including the APLL
+ * from the Rockchip vendor kernel. I do not know if these values are universal despite differing
+ * from the default values defined above and taken from the datasheet, or implementation specific.
+ * I don't have another implementation to compare from the Rockchip sources. Hard-coding for now.
+ * Additionally, I do not know according to the documentation the units accepted for the clock
+ * values, so for the moment those are left unvalidated.
+ */
+
+static int rk817_init(struct snd_soc_component *component)
+{
+	struct rk817_codec_priv *rk817 = snd_soc_component_get_drvdata(component);
+
+	snd_soc_component_write(component, RK817_CODEC_DDAC_POPD_DACST, 0x02);
+	snd_soc_component_write(component, RK817_CODEC_DDAC_SR_LMT0, 0x02);
+	snd_soc_component_write(component, RK817_CODEC_DADC_SR_ACL0, 0x02);
+	snd_soc_component_write(component, RK817_CODEC_DTOP_VUCTIME, 0xf4);
+	if (rk817->mic_in_differential) {
+		snd_soc_component_update_bits(component, RK817_CODEC_AMIC_CFG0, MIC_DIFF_MASK,
+			MIC_DIFF_EN);
+	};
+	return 0;
+}
+
+static int rk817_set_component_pll(struct snd_soc_component *component,
+		int pll_id, int source, unsigned int freq_in,
+		unsigned int freq_out)
+{
+	/* Set resistor value and charge pump current for PLL. */
+	snd_soc_component_write(component, RK817_CODEC_APLL_CFG1, 0x58);
+	/* Set the PLL feedback clock divide value (values not documented). */
+	snd_soc_component_write(component, RK817_CODEC_APLL_CFG2, 0x2d);
+	/* Set the PLL pre-divide value (values not documented). */
+	snd_soc_component_write(component, RK817_CODEC_APLL_CFG3, 0x0c);
+	/* Set the PLL VCO output clock divide and PLL divided ratio of PLL High Clk (values not
+	 * documented).
+	 */
+	snd_soc_component_write(component, RK817_CODEC_APLL_CFG4, 0xa5);
+
+	return 0;
+}
+
+/*
+ * DDAC/DADC L/R volume setting
+ * 0db~-95db, 0.375db/step, for example:
+ * 0x00: 0dB
+ * 0xff: -95dB
+ */
+
+static const DECLARE_TLV_DB_MINMAX(rk817_vol_tlv, -9500, 0);
+
+/*
+ * PGA GAIN L/R volume setting
+ * 27db~-18db, 3db/step, for example:
+ * 0x0: -18dB
+ * 0xf: 27dB
+ */
+
+static const DECLARE_TLV_DB_MINMAX(rk817_gain_tlv, -1800, 2700);
+
+static const struct snd_kcontrol_new rk817_volume_controls[] = {
+	SOC_DOUBLE_R_RANGE_TLV("Master Playback Volume", RK817_CODEC_DDAC_VOLL,
+		RK817_CODEC_DDAC_VOLR, 0, 0x00, 0xff, 1, rk817_vol_tlv),
+	SOC_DOUBLE_R_RANGE_TLV("Master Capture Volume", RK817_CODEC_DADC_VOLL,
+		RK817_CODEC_DADC_VOLR, 0, 0x00, 0xff, 1, rk817_vol_tlv),
+	SOC_DOUBLE_TLV("Mic Capture Gain", RK817_CODEC_DMIC_PGA_GAIN, 4, 0, 0xf, 0,
+		rk817_gain_tlv),
+};
+
+/* Since the speaker output and L headphone pin are internally the same, make audio path mutually
+ * exclusive with a mux.
+ */
+
+static const char *dac_mux_text[] = {
+	"HP",
+	"SPK",
+};
+
+static SOC_ENUM_SINGLE_VIRT_DECL(dac_enum, dac_mux_text);
+
+static const struct snd_kcontrol_new dac_mux =
+	SOC_DAPM_ENUM("Playback Mux", dac_enum);
+
+static const struct snd_soc_dapm_widget rk817_dapm_widgets[] = {
+
+	/* capture/playback common */
+	SND_SOC_DAPM_SUPPLY("LDO Regulator", RK817_CODEC_AREF_RTCFG1, 6, 0, NULL, 0),
+	SND_SOC_DAPM_SUPPLY("IBIAS Block", RK817_CODEC_AREF_RTCFG1, 2, 1, NULL, 0),
+	SND_SOC_DAPM_SUPPLY("VAvg Buffer", RK817_CODEC_AREF_RTCFG1, 1, 1, NULL, 0),
+	SND_SOC_DAPM_SUPPLY("PLL Power", RK817_CODEC_APLL_CFG5, 0, 1, NULL, 0),
+	SND_SOC_DAPM_SUPPLY("I2S TX1 Transfer Start", RK817_CODEC_DI2S_RXCMD_TSD, 5, 0, NULL, 0),
+
+	/* capture path common */
+	SND_SOC_DAPM_SUPPLY("ADC Clock", RK817_CODEC_DTOP_DIGEN_CLKE, 7, 0, NULL, 0),
+	SND_SOC_DAPM_SUPPLY("I2S TX Clock", RK817_CODEC_DTOP_DIGEN_CLKE, 6, 0, NULL, 0),
+	SND_SOC_DAPM_SUPPLY("ADC Channel Enable", RK817_CODEC_DTOP_DIGEN_CLKE, 5, 0, NULL, 0),
+	SND_SOC_DAPM_SUPPLY("I2S TX Channel Enable", RK817_CODEC_DTOP_DIGEN_CLKE, 4, 0, NULL, 0),
+	SND_SOC_DAPM_SUPPLY("MIC Power On", RK817_CODEC_AMIC_CFG0, 6, 1, NULL, 0),
+	SND_SOC_DAPM_SUPPLY("I2S TX3 Transfer Start", RK817_CODEC_DI2S_TXCR3_TXCMD, 7, 0, NULL, 0),
+	SND_SOC_DAPM_SUPPLY("I2S TX3 Right Justified", RK817_CODEC_DI2S_TXCR3_TXCMD, 3, 0, NULL, 0),
+
+	/* capture path L */
+	SND_SOC_DAPM_ADC("ADC L", "Capture", RK817_CODEC_AADC_CFG0, 7, 1),
+	SND_SOC_DAPM_SUPPLY("PGA L Power On", RK817_CODEC_AMIC_CFG0, 5, 1, NULL, 0),
+	SND_SOC_DAPM_SUPPLY("Mic Boost L1", RK817_CODEC_AMIC_CFG0, 3, 0, NULL, 0),
+	SND_SOC_DAPM_SUPPLY("Mic Boost L2", RK817_CODEC_AMIC_CFG0, 2, 0, NULL, 0),
+
+	/* capture path R */
+	SND_SOC_DAPM_ADC("ADC R", "Capture", RK817_CODEC_AADC_CFG0, 6, 1),
+	SND_SOC_DAPM_SUPPLY("PGA R Power On", RK817_CODEC_AMIC_CFG0, 4, 1, NULL, 0),
+	SND_SOC_DAPM_SUPPLY("Mic Boost R1", RK817_CODEC_AMIC_CFG0, 3, 0, NULL, 0),
+	SND_SOC_DAPM_SUPPLY("Mic Boost R2", RK817_CODEC_AMIC_CFG0, 3, 0, NULL, 0),
+
+	/* playback path common */
+	SND_SOC_DAPM_SUPPLY("DAC Clock", RK817_CODEC_DTOP_DIGEN_CLKE, 3, 0, NULL, 0),
+	SND_SOC_DAPM_SUPPLY("I2S RX Clock", RK817_CODEC_DTOP_DIGEN_CLKE, 2, 0, NULL, 0),
+	SND_SOC_DAPM_SUPPLY("DAC Channel Enable", RK817_CODEC_DTOP_DIGEN_CLKE, 1, 0, NULL, 0),
+	SND_SOC_DAPM_SUPPLY("I2S RX Channel Enable", RK817_CODEC_DTOP_DIGEN_CLKE, 0, 0, NULL, 0),
+	SND_SOC_DAPM_SUPPLY("DAC Bias", RK817_CODEC_ADAC_CFG1, 3, 1, NULL, 0),
+	SND_SOC_DAPM_SUPPLY("DAC Mute Off", RK817_CODEC_DDAC_MUTE_MIXCTL, 0, 1, NULL, 0),
+
+	/* playback path speaker */
+	SND_SOC_DAPM_SUPPLY("Class D Mode", RK817_CODEC_DDAC_MUTE_MIXCTL, 4, 0, NULL, 0),
+	SND_SOC_DAPM_SUPPLY("High Pass Filter", RK817_CODEC_DDAC_MUTE_MIXCTL, 7, 0, NULL, 0),
+	SND_SOC_DAPM_DAC("SPK DAC", "Playback", RK817_CODEC_ADAC_CFG1, 2, 1),
+	SND_SOC_DAPM_SUPPLY("Enable Class D", RK817_CODEC_ACLASSD_CFG1, 7, 0, NULL, 0),
+	SND_SOC_DAPM_SUPPLY("Disable Class D Mute Ramp", RK817_CODEC_ACLASSD_CFG1, 6, 1, NULL, 0),
+	SND_SOC_DAPM_SUPPLY("Class D Mute Rate 1", RK817_CODEC_ACLASSD_CFG1, 3, 0, NULL, 0),
+	SND_SOC_DAPM_SUPPLY("Class D Mute Rate 2", RK817_CODEC_ACLASSD_CFG1, 2, 1, NULL, 0),
+	SND_SOC_DAPM_SUPPLY("Class D OCPP 2", RK817_CODEC_ACLASSD_CFG2, 5, 0, NULL, 0),
+	SND_SOC_DAPM_SUPPLY("Class D OCPP 3", RK817_CODEC_ACLASSD_CFG2, 4, 0, NULL, 0),
+	SND_SOC_DAPM_SUPPLY("Class D OCPN 2", RK817_CODEC_ACLASSD_CFG2, 1, 0, NULL, 0),
+	SND_SOC_DAPM_SUPPLY("Class D OCPN 3", RK817_CODEC_ACLASSD_CFG2, 0, 0, NULL, 0),
+
+	/* playback path headphones */
+	SND_SOC_DAPM_SUPPLY("Headphone Charge Pump", RK817_CODEC_AHP_CP, 4, 0, NULL, 0),
+	SND_SOC_DAPM_SUPPLY("Headphone CP Discharge LDO", RK817_CODEC_AHP_CP, 3, 1, NULL, 0),
+	SND_SOC_DAPM_SUPPLY("Headphone OStage", RK817_CODEC_AHP_CFG0, 6, 1, NULL, 0),
+	SND_SOC_DAPM_SUPPLY("Headphone Pre Amp", RK817_CODEC_AHP_CFG0, 5, 1, NULL, 0),
+	SND_SOC_DAPM_DAC("DAC L", "Playback", RK817_CODEC_ADAC_CFG1, 1, 1),
+	SND_SOC_DAPM_DAC("DAC R", "Playback", RK817_CODEC_ADAC_CFG1, 0, 1),
+
+	/* Mux for input/output path selection */
+	SND_SOC_DAPM_MUX("Playback Mux", SND_SOC_NOPM, 1, 0, &dac_mux),
+
+	/* Pins for Simple Card Bindings */
+	SND_SOC_DAPM_INPUT("MICL"),
+	SND_SOC_DAPM_INPUT("MICR"),
+	SND_SOC_DAPM_OUTPUT("HPOL"),
+	SND_SOC_DAPM_OUTPUT("HPOR"),
+	SND_SOC_DAPM_OUTPUT("SPKO"),
+};
+
+static const struct snd_soc_dapm_route rk817_dapm_routes[] = {
+
+	/* capture path */
+	/* left mic */
+	{"ADC L", NULL, "LDO Regulator"},
+	{"ADC L", NULL, "IBIAS Block"},
+	{"ADC L", NULL, "VAvg Buffer"},
+	{"ADC L", NULL, "PLL Power"},
+	{"ADC L", NULL, "ADC Clock"},
+	{"ADC L", NULL, "I2S TX Clock"},
+	{"ADC L", NULL, "ADC Channel Enable"},
+	{"ADC L", NULL, "I2S TX Channel Enable"},
+	{"ADC L", NULL, "I2S TX1 Transfer Start"},
+	{"MICL", NULL, "MIC Power On"},
+	{"MICL", NULL, "PGA L Power On"},
+	{"MICL", NULL, "Mic Boost L1"},
+	{"MICL", NULL, "Mic Boost L2"},
+	{"MICL", NULL, "I2S TX3 Transfer Start"},
+	{"MICL", NULL, "I2S TX3 Right Justified"},
+	{"ADC L", NULL, "MICL"},
+
+	/* right mic */
+	{"ADC R", NULL, "LDO Regulator"},
+	{"ADC R", NULL, "IBIAS Block"},
+	{"ADC R", NULL, "VAvg Buffer"},
+	{"ADC R", NULL, "PLL Power"},
+	{"ADC R", NULL, "ADC Clock"},
+	{"ADC R", NULL, "I2S TX Clock"},
+	{"ADC R", NULL, "ADC Channel Enable"},
+	{"ADC R", NULL, "I2S TX Channel Enable"},
+	{"ADC R", NULL, "I2S TX1 Transfer Start"},
+	{"MICR", NULL, "MIC Power On"},
+	{"MICR", NULL, "PGA R Power On"},
+	{"MICR", NULL, "Mic Boost R1"},
+	{"MICR", NULL, "Mic Boost R2"},
+	{"MICR", NULL, "I2S TX3 Transfer Start"},
+	{"MICR", NULL, "I2S TX3 Right Justified"},
+	{"ADC R", NULL, "MICR"},
+
+	/* playback path */
+	/* speaker path */
+	{"SPK DAC", NULL, "LDO Regulator"},
+	{"SPK DAC", NULL, "IBIAS Block"},
+	{"SPK DAC", NULL, "VAvg Buffer"},
+	{"SPK DAC", NULL, "PLL Power"},
+	{"SPK DAC", NULL, "I2S TX1 Transfer Start"},
+	{"SPK DAC", NULL, "DAC Clock"},
+	{"SPK DAC", NULL, "I2S RX Clock"},
+	{"SPK DAC", NULL, "DAC Channel Enable"},
+	{"SPK DAC", NULL, "I2S RX Channel Enable"},
+	{"SPK DAC", NULL, "Class D Mode"},
+	{"SPK DAC", NULL, "DAC Bias"},
+	{"SPK DAC", NULL, "DAC Mute Off"},
+	{"SPK DAC", NULL, "Enable Class D"},
+	{"SPK DAC", NULL, "Disable Class D Mute Ramp"},
+	{"SPK DAC", NULL, "Class D Mute Rate 1"},
+	{"SPK DAC", NULL, "Class D Mute Rate 2"},
+	{"SPK DAC", NULL, "Class D OCPP 2"},
+	{"SPK DAC", NULL, "Class D OCPP 3"},
+	{"SPK DAC", NULL, "Class D OCPN 2"},
+	{"SPK DAC", NULL, "Class D OCPN 3"},
+	{"SPK DAC", NULL, "High Pass Filter"},
+
+	/* headphone path L */
+	{"DAC L", NULL, "LDO Regulator"},
+	{"DAC L", NULL, "IBIAS Block"},
+	{"DAC L", NULL, "VAvg Buffer"},
+	{"DAC L", NULL, "PLL Power"},
+	{"DAC L", NULL, "I2S TX1 Transfer Start"},
+	{"DAC L", NULL, "DAC Clock"},
+	{"DAC L", NULL, "I2S RX Clock"},
+	{"DAC L", NULL, "DAC Channel Enable"},
+	{"DAC L", NULL, "I2S RX Channel Enable"},
+	{"DAC L", NULL, "DAC Bias"},
+	{"DAC L", NULL, "DAC Mute Off"},
+	{"DAC L", NULL, "Headphone Charge Pump"},
+	{"DAC L", NULL, "Headphone CP Discharge LDO"},
+	{"DAC L", NULL, "Headphone OStage"},
+	{"DAC L", NULL, "Headphone Pre Amp"},
+
+	/* headphone path R */
+	{"DAC R", NULL, "LDO Regulator"},
+	{"DAC R", NULL, "IBIAS Block"},
+	{"DAC R", NULL, "VAvg Buffer"},
+	{"DAC R", NULL, "PLL Power"},
+	{"DAC R", NULL, "I2S TX1 Transfer Start"},
+	{"DAC R", NULL, "DAC Clock"},
+	{"DAC R", NULL, "I2S RX Clock"},
+	{"DAC R", NULL, "DAC Channel Enable"},
+	{"DAC R", NULL, "I2S RX Channel Enable"},
+	{"DAC R", NULL, "DAC Bias"},
+	{"DAC R", NULL, "DAC Mute Off"},
+	{"DAC R", NULL, "Headphone Charge Pump"},
+	{"DAC R", NULL, "Headphone CP Discharge LDO"},
+	{"DAC R", NULL, "Headphone OStage"},
+	{"DAC R", NULL, "Headphone Pre Amp"},
+
+	/* mux path for output selection */
+	{"Playback Mux", "HP", "DAC L"},
+	{"Playback Mux", "HP", "DAC R"},
+	{"Playback Mux", "SPK", "SPK DAC"},
+	{"SPKO", NULL, "Playback Mux"},
+	{"HPOL", NULL, "Playback Mux"},
+	{"HPOR", NULL, "Playback Mux"},
+};
+
+static int rk817_set_dai_sysclk(struct snd_soc_dai *codec_dai,
+				int clk_id, unsigned int freq, int dir)
+{
+	struct snd_soc_component *component = codec_dai->component;
+	struct rk817_codec_priv *rk817 = snd_soc_component_get_drvdata(component);
+
+	rk817->stereo_sysclk = freq;
+
+	return 0;
+}
+
+static int rk817_set_dai_fmt(struct snd_soc_dai *codec_dai,
+			     unsigned int fmt)
+{
+	struct snd_soc_component *component = codec_dai->component;
+	unsigned int i2s_mst = 0;
+
+	switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
+	case SND_SOC_DAIFMT_CBS_CFS:
+		i2s_mst |= RK817_I2S_MODE_SLV;
+		break;
+	case SND_SOC_DAIFMT_CBM_CFM:
+		i2s_mst |= RK817_I2S_MODE_MST;
+		break;
+	default:
+		dev_err(component->dev, "%s : set master mask failed!\n", __func__);
+		return -EINVAL;
+	}
+
+	snd_soc_component_update_bits(component, RK817_CODEC_DI2S_CKM,
+				      RK817_I2S_MODE_MASK, i2s_mst);
+
+	return 0;
+}
+
+static int rk817_hw_params(struct snd_pcm_substream *substream,
+			   struct snd_pcm_hw_params *params,
+			    struct snd_soc_dai *dai)
+{
+	struct snd_soc_component *component = dai->component;
+
+	switch (params_format(params)) {
+	case SNDRV_PCM_FORMAT_S16_LE:
+		snd_soc_component_write(component, RK817_CODEC_DI2S_RXCR2,
+					VDW_RX_16BITS);
+		snd_soc_component_write(component, RK817_CODEC_DI2S_TXCR2,
+					VDW_TX_16BITS);
+		break;
+	case SNDRV_PCM_FORMAT_S24_LE:
+	case SNDRV_PCM_FORMAT_S32_LE:
+		snd_soc_component_write(component, RK817_CODEC_DI2S_RXCR2,
+					VDW_RX_24BITS);
+		snd_soc_component_write(component, RK817_CODEC_DI2S_TXCR2,
+					VDW_TX_24BITS);
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int rk817_digital_mute(struct snd_soc_dai *dai, int mute, int stream)
+{
+	struct snd_soc_component *component = dai->component;
+
+	if (mute)
+		snd_soc_component_update_bits(component,
+					      RK817_CODEC_DDAC_MUTE_MIXCTL,
+					      DACMT_MASK, DACMT_ENABLE);
+	else
+		snd_soc_component_update_bits(component,
+					      RK817_CODEC_DDAC_MUTE_MIXCTL,
+					      DACMT_MASK, DACMT_DISABLE);
+
+	return 0;
+}
+
+#define RK817_PLAYBACK_RATES (SNDRV_PCM_RATE_8000 |\
+			      SNDRV_PCM_RATE_16000 |	\
+			      SNDRV_PCM_RATE_32000 |	\
+			      SNDRV_PCM_RATE_44100 |	\
+			      SNDRV_PCM_RATE_48000 |	\
+			      SNDRV_PCM_RATE_96000)
+
+#define RK817_CAPTURE_RATES (SNDRV_PCM_RATE_8000 |\
+			      SNDRV_PCM_RATE_16000 |	\
+			      SNDRV_PCM_RATE_32000 |	\
+			      SNDRV_PCM_RATE_44100 |	\
+			      SNDRV_PCM_RATE_48000 |	\
+			      SNDRV_PCM_RATE_96000)
+
+#define RK817_FORMATS (SNDRV_PCM_FMTBIT_S16_LE |\
+			SNDRV_PCM_FMTBIT_S20_3LE |\
+			SNDRV_PCM_FMTBIT_S24_LE |\
+			SNDRV_PCM_FMTBIT_S32_LE)
+
+static struct snd_soc_dai_ops rk817_dai_ops = {
+	.hw_params	= rk817_hw_params,
+	.set_fmt	= rk817_set_dai_fmt,
+	.set_sysclk	= rk817_set_dai_sysclk,
+	.mute_stream	= rk817_digital_mute,
+	.no_capture_mute	= 1,
+};
+
+static struct snd_soc_dai_driver rk817_dai[] = {
+	{
+		.name = "rk817-hifi",
+		.playback = {
+			.stream_name = "Playback",
+			.channels_min = 2,
+			.channels_max = 8,
+			.rates = RK817_PLAYBACK_RATES,
+			.formats = RK817_FORMATS,
+		},
+		.capture = {
+			.stream_name = "Capture",
+			.channels_min = 1,
+			.channels_max = 2,
+			.rates = RK817_CAPTURE_RATES,
+			.formats = RK817_FORMATS,
+		},
+		.ops = &rk817_dai_ops,
+	},
+};
+
+static int rk817_probe(struct snd_soc_component *component)
+{
+	struct rk817_codec_priv *rk817 = snd_soc_component_get_drvdata(component);
+	struct rk808 *rk808 = dev_get_drvdata(component->dev->parent);
+	int ret;
+
+	snd_soc_component_init_regmap(component, rk808->regmap);
+	rk817->component = component;
+
+	ret = snd_soc_component_write(component, RK817_CODEC_DTOP_LPT_SRST, 0x40);
+
+	rk817_init(component);
+
+	/* setting initial pll values so that we can continue to leverage simple-audio-card.
+	 * The values aren't important since no parameters are used.
+	 */
+
+	snd_soc_component_set_pll(component, 0, 0, 0, 0);
+
+	return 0;
+}
+
+static void rk817_remove(struct snd_soc_component *component)
+{
+	snd_soc_component_exit_regmap(component);
+}
+
+static const struct snd_soc_component_driver soc_codec_dev_rk817 = {
+	.probe = rk817_probe,
+	.remove = rk817_remove,
+	.idle_bias_on = 1,
+	.use_pmdown_time = 1,
+	.endianness = 1,
+	.non_legacy_dai_naming = 1,
+	.controls = rk817_volume_controls,
+	.num_controls = ARRAY_SIZE(rk817_volume_controls),
+	.dapm_routes = rk817_dapm_routes,
+	.num_dapm_routes = ARRAY_SIZE(rk817_dapm_routes),
+	.dapm_widgets = rk817_dapm_widgets,
+	.num_dapm_widgets = ARRAY_SIZE(rk817_dapm_widgets),
+	.set_pll = rk817_set_component_pll,
+};
+
+static int rk817_codec_parse_dt_property(struct device *dev,
+					 struct rk817_codec_priv *rk817)
+{
+	struct device_node *node = dev->parent->of_node;
+
+	if (!node) {
+		dev_err(dev, "%s() dev->parent->of_node is NULL\n",
+			__func__);
+		return -ENODEV;
+	}
+
+	node = of_get_child_by_name(dev->parent->of_node, "codec");
+	if (!node) {
+		dev_err(dev, "%s() Can not get child: codec\n",
+			__func__);
+		return -ENODEV;
+	}
+
+	rk817->mic_in_differential =
+			of_property_read_bool(node, "rockchip,mic-in-differential");
+
+	return 0;
+}
+
+static int rk817_platform_probe(struct platform_device *pdev)
+{
+	struct rk808 *rk808 = dev_get_drvdata(pdev->dev.parent);
+	struct rk817_codec_priv *rk817_codec_data;
+	int ret;
+
+	if (!rk808) {
+		dev_err(&pdev->dev, "%s : rk817 is NULL\n", __func__);
+		return -EINVAL;
+	}
+
+	rk817_codec_data = devm_kzalloc(&pdev->dev,
+					sizeof(struct rk817_codec_priv),
+					GFP_KERNEL);
+	if (!rk817_codec_data)
+		return -ENOMEM;
+
+	platform_set_drvdata(pdev, rk817_codec_data);
+
+	rk817_codec_data->rk808 = rk808;
+
+	ret = rk817_codec_parse_dt_property(&pdev->dev, rk817_codec_data);
+	if (ret < 0) {
+		dev_err(&pdev->dev, "%s() parse device tree property error %d\n",
+			__func__, ret);
+		goto err_;
+	}
+
+	rk817_codec_data->mclk = clk_get(pdev->dev.parent, "mclk");
+	if (IS_ERR(rk817_codec_data->mclk)) {
+		dev_err(&pdev->dev, "Unable to get mclk\n");
+		ret = -ENXIO;
+		goto err_;
+	}
+
+	ret = clk_prepare_enable(rk817_codec_data->mclk);
+	if (ret < 0) {
+		dev_err(&pdev->dev, "%s() clock prepare error %d\n",
+			__func__, ret);
+		goto err_;
+	}
+
+	ret = devm_snd_soc_register_component(&pdev->dev, &soc_codec_dev_rk817,
+					      rk817_dai, ARRAY_SIZE(rk817_dai));
+	if (ret < 0) {
+		dev_err(&pdev->dev, "%s() register codec error %d\n",
+			__func__, ret);
+		goto err_;
+	}
+
+	return 0;
+err_:
+
+	return ret;
+}
+
+static int rk817_platform_remove(struct platform_device *pdev)
+{
+	struct rk817_codec_priv *rk817 = platform_get_drvdata(pdev);
+
+	clk_disable_unprepare(rk817->mclk);
+
+	return 0;
+}
+
+MODULE_DEVICE_TABLE(of, rk817_codec_dt_ids);
+
+static struct platform_driver rk817_codec_driver = {
+	.driver = {
+		   .name = "rk817-codec",
+		   },
+	.probe = rk817_platform_probe,
+	.remove = rk817_platform_remove,
+};
+
+module_platform_driver(rk817_codec_driver);
+
+MODULE_DESCRIPTION("ASoC RK817 codec driver");
+MODULE_AUTHOR("binyuan <kevan.lan@rock-chips.com>");
+MODULE_LICENSE("GPL v2");
-- 
2.25.1


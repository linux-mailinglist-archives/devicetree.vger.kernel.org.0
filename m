Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 875B7CC83E
	for <lists+devicetree@lfdr.de>; Sat,  5 Oct 2019 07:59:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726837AbfJEF7O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Oct 2019 01:59:14 -0400
Received: from mail-qt1-f201.google.com ([209.85.160.201]:40285 "EHLO
        mail-qt1-f201.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726636AbfJEF7N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Oct 2019 01:59:13 -0400
Received: by mail-qt1-f201.google.com with SMTP id z25so9012918qtn.7
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2019 22:59:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=K+dnMsm9RETMWR/Ic3MlJaLBL0zg9YMOTI1WVgS/WPk=;
        b=RXbvqfEcqwB0bqT13FzQLhQE6NicbE4kgLFKwuYgJfzT7TEx86tS/QWNEoicxz6u11
         JWqk4btRQFgBLXQi/HoGUkUTpFQOkXeRvNBUE/NlwvJywjaVpooUUXQ+UlVprbar/4DM
         rQp21KHZxxLCxxjZBi+2e5qz/ycbs0dH0Y9ovTXTS4rKBFCNwuGa46s2j3MgIxmGXIq+
         6ywqN0NpfWsCbqJfOql4EDcfoRkdtogUt/5zngEIteZo9TCb6ls+xu9GTfFqFeaCI+aK
         yRnS0RZF1E7adVSwsUeIeJvCWpiKPtiJPLk6rMPIOd2HYdtMcXtJVKi+/eRiyqgOaF4i
         6Q1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=K+dnMsm9RETMWR/Ic3MlJaLBL0zg9YMOTI1WVgS/WPk=;
        b=Kqy2aCRp5j4E1jf938Ai/T+yo6ApNUfic7Nzgc3gixkJ6s3W37Hyk82H/2NfIITcAL
         Nns2C+Y28/rcCMNGlsxibsvcSzH3XQkg4NRjjwtp/TX8DRPPaKXMvLHwkWfE0MJvs3Em
         LLpUmztHuAOw35gBtSH0VZzDGfyXPH14tqBGcAc3WkAErUyqObqbx3YDz4wF8yxTAsdz
         EH/J+x1vPnmzk2KTtYliBiJMiOYGKwKxI4LxEIpxzjPbhyKJ7QYWCr1FjIjROVB86S+r
         5E9RZdOaDys/forUHtecMMhxvL3SpqJWD2Ceux3piYh6EtbS0zV4Q3Ud/qCRBILWgNSR
         Wj6g==
X-Gm-Message-State: APjAAAUXYK9IlG35rs+ObDl4KDW+AZvqDxrnr7R3N7vmGUq2xfZ5L2HX
        fd/rDPX3+4s7egGJJrJB19QgjX3H53WR
X-Google-Smtp-Source: APXvYqy1dqHH+joNcrM/ZH5ZfAuiymv83lKRDawb1HjpL1VFPmvXg5zGdpWE5M9doj/Sg2Yzvaqm4i7a2xjI
X-Received: by 2002:a37:660c:: with SMTP id a12mr13986039qkc.70.1570255152479;
 Fri, 04 Oct 2019 22:59:12 -0700 (PDT)
Date:   Sat,  5 Oct 2019 13:58:06 +0800
In-Reply-To: <20191005055808.249089-1-tzungbi@google.com>
Message-Id: <20191005130552.8.I57266d36564f393e9d701c9db648cc2efb0346fc@changeid>
Mime-Version: 1.0
References: <20191005055808.249089-1-tzungbi@google.com>
X-Mailer: git-send-email 2.23.0.581.g78d2f28ef7-goog
Subject: [PATCH 08/10] ASoC: mediatek: mt6358: support WoV
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

Switch mono DMIC on to support wake-on-voice.

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 sound/soc/codecs/mt6358.c | 105 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 105 insertions(+)

diff --git a/sound/soc/codecs/mt6358.c b/sound/soc/codecs/mt6358.c
index bb737fd678cc..1b830ea4f6ed 100644
--- a/sound/soc/codecs/mt6358.c
+++ b/sound/soc/codecs/mt6358.c
@@ -93,6 +93,8 @@ struct mt6358_priv {
 	int mtkaif_protocol;
 
 	struct regulator *avdd_reg;
+
+	int wov_enabled;
 };
 
 int mt6358_set_mtkaif_protocol(struct snd_soc_component *cmpnt,
@@ -464,6 +466,106 @@ static int mt6358_put_volsw(struct snd_kcontrol *kcontrol,
 	return ret;
 }
 
+static void mt6358_restore_pga(struct mt6358_priv *priv);
+
+static int mt6358_enable_wov_phase2(struct mt6358_priv *priv)
+{
+	/* analog */
+	regmap_update_bits(priv->regmap, MT6358_AUDDEC_ANA_CON13,
+			   0xffff, 0x0000);
+	regmap_update_bits(priv->regmap, MT6358_DCXO_CW14, 0xffff, 0xa2b5);
+	regmap_update_bits(priv->regmap, MT6358_AUDENC_ANA_CON1,
+			   0xffff, 0x0800);
+	mt6358_restore_pga(priv);
+
+	regmap_update_bits(priv->regmap, MT6358_DCXO_CW13, 0xffff, 0x9929);
+	regmap_update_bits(priv->regmap, MT6358_AUDENC_ANA_CON9,
+			   0xffff, 0x0025);
+	regmap_update_bits(priv->regmap, MT6358_AUDENC_ANA_CON8,
+			   0xffff, 0x0005);
+
+	/* digital */
+	regmap_update_bits(priv->regmap, MT6358_AUD_TOP_CKPDN_CON0,
+			   0xffff, 0x0000);
+	regmap_update_bits(priv->regmap, MT6358_GPIO_MODE3, 0xffff, 0x0120);
+	regmap_update_bits(priv->regmap, MT6358_AFE_VOW_CFG0, 0xffff, 0xffff);
+	regmap_update_bits(priv->regmap, MT6358_AFE_VOW_CFG1, 0xffff, 0x0200);
+	regmap_update_bits(priv->regmap, MT6358_AFE_VOW_CFG2, 0xffff, 0x2424);
+	regmap_update_bits(priv->regmap, MT6358_AFE_VOW_CFG3, 0xffff, 0xdbac);
+	regmap_update_bits(priv->regmap, MT6358_AFE_VOW_CFG4, 0xffff, 0x029e);
+	regmap_update_bits(priv->regmap, MT6358_AFE_VOW_CFG5, 0xffff, 0x0000);
+	regmap_update_bits(priv->regmap, MT6358_AFE_VOW_POSDIV_CFG0,
+			   0xffff, 0x0000);
+	regmap_update_bits(priv->regmap, MT6358_AFE_VOW_HPF_CFG0,
+			   0xffff, 0x0451);
+	regmap_update_bits(priv->regmap, MT6358_AFE_VOW_TOP, 0xffff, 0x68d1);
+
+	return 0;
+}
+
+static int mt6358_disable_wov_phase2(struct mt6358_priv *priv)
+{
+	/* digital */
+	regmap_update_bits(priv->regmap, MT6358_AFE_VOW_TOP, 0xffff, 0xc000);
+	regmap_update_bits(priv->regmap, MT6358_AFE_VOW_HPF_CFG0,
+			   0xffff, 0x0450);
+	regmap_update_bits(priv->regmap, MT6358_AFE_VOW_POSDIV_CFG0,
+			   0xffff, 0x0c00);
+	regmap_update_bits(priv->regmap, MT6358_AFE_VOW_CFG5, 0xffff, 0x0100);
+	regmap_update_bits(priv->regmap, MT6358_AFE_VOW_CFG4, 0xffff, 0x006c);
+	regmap_update_bits(priv->regmap, MT6358_AFE_VOW_CFG3, 0xffff, 0xa879);
+	regmap_update_bits(priv->regmap, MT6358_AFE_VOW_CFG2, 0xffff, 0x2323);
+	regmap_update_bits(priv->regmap, MT6358_AFE_VOW_CFG1, 0xffff, 0x0400);
+	regmap_update_bits(priv->regmap, MT6358_AFE_VOW_CFG0, 0xffff, 0x0000);
+	regmap_update_bits(priv->regmap, MT6358_GPIO_MODE3, 0xffff, 0x02d8);
+	regmap_update_bits(priv->regmap, MT6358_AUD_TOP_CKPDN_CON0,
+			   0xffff, 0x0000);
+
+	/* analog */
+	regmap_update_bits(priv->regmap, MT6358_AUDENC_ANA_CON8,
+			   0xffff, 0x0004);
+	regmap_update_bits(priv->regmap, MT6358_AUDENC_ANA_CON9,
+			   0xffff, 0x0000);
+	regmap_update_bits(priv->regmap, MT6358_DCXO_CW13, 0xffff, 0x9829);
+	regmap_update_bits(priv->regmap, MT6358_AUDENC_ANA_CON1,
+			   0xffff, 0x0000);
+	mt6358_restore_pga(priv);
+	regmap_update_bits(priv->regmap, MT6358_DCXO_CW14, 0xffff, 0xa2b5);
+	regmap_update_bits(priv->regmap, MT6358_AUDDEC_ANA_CON13,
+			   0xffff, 0x0010);
+
+	return 0;
+}
+
+static int mt6358_get_wov(struct snd_kcontrol *kcontrol,
+			  struct snd_ctl_elem_value *ucontrol)
+{
+	struct snd_soc_component *c = snd_soc_kcontrol_component(kcontrol);
+	struct mt6358_priv *priv = snd_soc_component_get_drvdata(c);
+
+	ucontrol->value.integer.value[0] = priv->wov_enabled;
+	return 0;
+}
+
+static int mt6358_put_wov(struct snd_kcontrol *kcontrol,
+			  struct snd_ctl_elem_value *ucontrol)
+{
+	struct snd_soc_component *c = snd_soc_kcontrol_component(kcontrol);
+	struct mt6358_priv *priv = snd_soc_component_get_drvdata(c);
+	int enabled = ucontrol->value.integer.value[0];
+
+	if (priv->wov_enabled != enabled) {
+		if (enabled)
+			mt6358_enable_wov_phase2(priv);
+		else
+			mt6358_disable_wov_phase2(priv);
+
+		priv->wov_enabled = enabled;
+	}
+
+	return 0;
+}
+
 static const DECLARE_TLV_DB_SCALE(playback_tlv, -1000, 100, 0);
 static const DECLARE_TLV_DB_SCALE(pga_tlv, 0, 600, 0);
 
@@ -483,6 +585,9 @@ static const struct snd_kcontrol_new mt6358_snd_controls[] = {
 			     MT6358_AUDENC_ANA_CON0, MT6358_AUDENC_ANA_CON1,
 			     8, 4, 0,
 			     snd_soc_get_volsw, mt6358_put_volsw, pga_tlv),
+
+	SOC_SINGLE_BOOL_EXT("Wake-on-Voice Phase2 Switch", 0,
+			    mt6358_get_wov, mt6358_put_wov),
 };
 
 /* MUX */
-- 
2.23.0.581.g78d2f28ef7-goog


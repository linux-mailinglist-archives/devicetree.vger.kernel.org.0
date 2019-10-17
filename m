Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 62B52DAEFB
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2019 16:01:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2439759AbfJQOBQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Oct 2019 10:01:16 -0400
Received: from mail-qk1-f201.google.com ([209.85.222.201]:52632 "EHLO
        mail-qk1-f201.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2437401AbfJQOBQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Oct 2019 10:01:16 -0400
Received: by mail-qk1-f201.google.com with SMTP id g65so2165378qkf.19
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2019 07:01:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=l9WiDUTny0kvEFJ+UrSdznP6U/Ro/IVKndhC9isHzdk=;
        b=wA4gOEIzWGRBPEyG2R466fq25DAHISMpQI9TSJE+z9F0wMEOVQFyvHDCo5kk4p0bGX
         HVcEuMkz6pglnmHqj15ZBIUCqua/ipYdLnYeqcwlVOPu9PjoU1F+VWuXK3VXng1mGFxJ
         3nyo77giFndzm2El2Th1W3esnu2Zg4XFPkxyfJn/zc5CGd7lERQPQFZcQ/0B+6n7XRRZ
         c9y1aQORGqWOczVPJ4RrJ9jx2K+j8U2xBtxpsUMRXevjIw6KXSeF7obaK6Zlyg2NLsj0
         HYidJmtMNV+p1Pfsl7WLaWZqwd7s8Fcf3PnVJ823BrdcgxQgWWku8iA0Vh8rhlApCbVX
         PmTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=l9WiDUTny0kvEFJ+UrSdznP6U/Ro/IVKndhC9isHzdk=;
        b=HRICj42xCqzOiQTZOd/EmfVFblSsXzXfZ28jIJhed81LJVk3hfHYaUMBB9euaqGnq/
         hfjHezLRGSaO2mWPfEKbZwonZIpTV9p+AhtydYvB27uUZYnsQNUrsXt2Iai8jORSoDRn
         3VV1GkH5kYVhmyzWyMuqCe/5pb/bNBn20frbqvt/QMTD9Q4sZ7lXlelDOdo/ntfQlK5o
         M2nMRhiWaOlpDK2Xqt8bYioN3t+ffZJaJEVtsHO6h5tgTfKszYn5wCVgswtywjZRkAEp
         3Tej856x0xao+KxO5CYpCnq1GZp6PruCDxOXJONufuu1/GfYNlY6sorwywnDknsoMc0M
         weBg==
X-Gm-Message-State: APjAAAWKG49IdVYFz5APEeB8WNXx/Zc2+blPGEhJO3RnrJuGGAyg8SvA
        8sR1dpuo8w3LsUGw4T0HHhPlvzaXhG+p
X-Google-Smtp-Source: APXvYqzC1axFTdCc4MAZN4YTrE9AbR43xyZ7gV+JyhLLWBjp4kdeK/FMyYgpVX6GU3TitHdkSzGUMErl/vYc
X-Received: by 2002:a37:4e81:: with SMTP id c123mr3249378qkb.468.1571320874664;
 Thu, 17 Oct 2019 07:01:14 -0700 (PDT)
Date:   Thu, 17 Oct 2019 22:00:13 +0800
In-Reply-To: <20191017213539.00-tzungbi@google.com>
Message-Id: <20191017213539.08.I57266d36564f393e9d701c9db648cc2efb0346fc@changeid>
Mime-Version: 1.0
References: <20191017213539.00-tzungbi@google.com>
X-Mailer: git-send-email 2.23.0.700.g56cf767bdb-goog
Subject: [PATCH v4 08/10] ASoC: mediatek: mt6358: support WoV
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
2.23.0.700.g56cf767bdb-goog


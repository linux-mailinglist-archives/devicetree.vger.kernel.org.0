Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 93E2A65D4E9
	for <lists+devicetree@lfdr.de>; Wed,  4 Jan 2023 15:05:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239223AbjADOFB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Jan 2023 09:05:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239430AbjADOE5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Jan 2023 09:04:57 -0500
Received: from smtp-out-08.comm2000.it (smtp-out-08.comm2000.it [212.97.32.78])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 789C71929D
        for <devicetree@vger.kernel.org>; Wed,  4 Jan 2023 06:04:55 -0800 (PST)
Received: from francesco-nb.toradex.int (31-10-206-125.static.upc.ch [31.10.206.125])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: francesco@dolcini.it)
        by smtp-out-08.comm2000.it (Postfix) with ESMTPSA id CD750423666;
        Wed,  4 Jan 2023 15:04:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailserver.it;
        s=mailsrv; t=1672841082;
        bh=fkw4KQkZxEXxi05Y7BnBvucOJZ3tO3pncymAHY/a7qo=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=KIPeWVv+VUIRRpSGxzx+xXoCZoyACdz8qifrnsA4lmMUs+hXjn7mX9sIX9CCaXBHS
         YnrFikS6o0cneTMRM1sMiLlgGAyZ4L05p5y/rMJGF7x5rwZe37K6GYNUhksdNxIvlR
         e6UNDyI/frYhjVFefePXQEGsEfzZxDpKo/DRV37gcBgJaxajiWe9g9ORyvYKB7ysX7
         Hp9O/Era1/kx3hBiroaAIQOrF+OyPdGbzMrGbF67524WMTQ81a4bz2Dbhtsd5Ny6ot
         7nqnC/zC9BuLda91YRfU+Lr6oFyAt2FMH3s8YyAkjd/wBcqeUzKqNa90g0cjUIMpZ5
         9tw2lHK93aEkg==
From:   Francesco Dolcini <francesco@dolcini.it>
To:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Cc:     Emanuele Ghidoli <emanuele.ghidoli@toradex.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Benjamin Marty <info@benjaminmarty.ch>, kchsu0@nuvoton.com,
        wtli@nuvoton.com, Francesco Dolcini <francesco.dolcini@toradex.com>
Subject: [PATCH v2 3/3] ASoC: nau8822: add speaker Bridge Tied Output configuration
Date:   Wed,  4 Jan 2023 15:04:12 +0100
Message-Id: <20230104140412.35575-4-francesco@dolcini.it>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230104140412.35575-1-francesco@dolcini.it>
References: <20230104140412.35575-1-francesco@dolcini.it>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>

Allow configuring the two loudspeaker outputs as a
single Bridge Tied Load output getting higher output power.

Signed-off-by: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>
Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
---
v2: no changes
---
 sound/soc/codecs/nau8822.c | 9 +++++++++
 sound/soc/codecs/nau8822.h | 9 +++++++++
 2 files changed, 18 insertions(+)

diff --git a/sound/soc/codecs/nau8822.c b/sound/soc/codecs/nau8822.c
index 1aef281a9972..d5006d8de639 100644
--- a/sound/soc/codecs/nau8822.c
+++ b/sound/soc/codecs/nau8822.c
@@ -1056,6 +1056,7 @@ static const int update_reg[] = {
 static int nau8822_probe(struct snd_soc_component *component)
 {
 	int i;
+	struct device_node *of_node = component->dev->of_node;
 
 	/*
 	 * Set the update bit in all registers, that have one. This way all
@@ -1066,6 +1067,14 @@ static int nau8822_probe(struct snd_soc_component *component)
 		snd_soc_component_update_bits(component,
 			update_reg[i], 0x100, 0x100);
 
+	/* Check property to configure the two loudspeaker outputs as
+	 * a single Bridge Tied Load output
+	 */
+	if (of_property_read_bool(of_node, "nuvoton,spk-btl"))
+		snd_soc_component_update_bits(component,
+					      NAU8822_REG_RIGHT_SPEAKER_CONTROL,
+					      NAU8822_RSUBBYP, NAU8822_RSUBBYP);
+
 	return 0;
 }
 
diff --git a/sound/soc/codecs/nau8822.h b/sound/soc/codecs/nau8822.h
index 547ec057f853..646f6bb64bc5 100644
--- a/sound/soc/codecs/nau8822.h
+++ b/sound/soc/codecs/nau8822.h
@@ -187,6 +187,15 @@
 /* NAU8822_REG_PLL_K3 (0x27) */
 #define NAU8822_PLLK3_MASK			0x1FF
 
+/* NAU8822_REG_RIGHT_SPEAKER_CONTROL (0x2B) */
+#define NAU8822_RMIXMUT				0x20
+#define NAU8822_RSUBBYP				0x10
+
+#define NAU8822_RAUXRSUBG_SFT			1
+#define NAU8822_RAUXRSUBG_MASK			0x0E
+
+#define NAU8822_RAUXSMUT			0x01
+
 /* System Clock Source */
 enum {
 	NAU8822_CLK_MCLK,
-- 
2.25.1


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 134C665530C
	for <lists+devicetree@lfdr.de>; Fri, 23 Dec 2022 18:05:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232051AbiLWRFM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Dec 2022 12:05:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229658AbiLWRFJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Dec 2022 12:05:09 -0500
Received: from smtp-out-12.comm2000.it (smtp-out-12.comm2000.it [212.97.32.82])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 312F217E20
        for <devicetree@vger.kernel.org>; Fri, 23 Dec 2022 09:05:09 -0800 (PST)
Received: from francesco-nb.pivistrello.it (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: francesco@dolcini.it)
        by smtp-out-12.comm2000.it (Postfix) with ESMTPSA id 8A379BA3234;
        Fri, 23 Dec 2022 18:04:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailserver.it;
        s=mailsrv; t=1671815107;
        bh=fFMm4Z9Jn9GmTLFlEO5rpMTYF/7g0DE4+G2N/Ha2nEs=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=eBNdMukwTGGCj16Ui9T+1ZhPjGYqMZQ8BNhmbhAi5q3cqwZyCSwTEnxk3DMf01blG
         XCeoYNgrsC3QAHEFNA+N2CNkQf4a0E5SL/uPkJjG90++c1dHohvrnoFjCrT5zP7r7n
         F+F7QLcefFpz9W3CKo1LEhOwdMg/cNdaApmbU6nWdJEIOn1ziLxbEiKkABVNwBZ1I1
         9pAVR4zEdNzqov4ndrJ6+CwORd90zfzSbNO1ezs0u4AuOez3fCeRhhS6hJ8p//HYZK
         6NablPAqb15DaqnXSRoycU1sRrZ+VLYpzXLbQHpKnWhrayJTb/8hZBbq73EbxeFLA9
         fohBhg9+G59ww==
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
Subject: [PATCH v1 3/3] ASoC: nau8822: add speaker Bridge Tied Output configuration
Date:   Fri, 23 Dec 2022 18:04:04 +0100
Message-Id: <20221223170404.210603-4-francesco@dolcini.it>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221223170404.210603-1-francesco@dolcini.it>
References: <20221223170404.210603-1-francesco@dolcini.it>
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


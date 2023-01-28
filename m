Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E60367F647
	for <lists+devicetree@lfdr.de>; Sat, 28 Jan 2023 09:28:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229707AbjA1I2O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Jan 2023 03:28:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233379AbjA1I2M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 28 Jan 2023 03:28:12 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0CDB457E8
        for <devicetree@vger.kernel.org>; Sat, 28 Jan 2023 00:28:06 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id h12so6891748wrv.10
        for <devicetree@vger.kernel.org>; Sat, 28 Jan 2023 00:28:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=shruggie-ro.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4YjpP2wq6+ACjqyzhOFcNXJo9yIAHLd5oTDFkJ5vDJI=;
        b=cHeIIXHM4bx0Is3aXKU0uDRppZwmHutmnygekfW361UPV0o049tzog/tnrlz+T0uxz
         45480jh5NQjEXaNuVHJ4aQZZAj3qW2jm6DV/o35i72+PIU5Lu6yJTuT2AbXgDV7tssE6
         HZ1Yq5Fx/r/4U8A8fu7VG7dee4wql+LJiRgM1KfJrjFYmcUT3N5Kr9N0u8CnDG4isdAf
         0riz/NXLyCy45OwIXEt1F8BFw3vsoNNIBuOuvRgWrblBobf1jaLpEwd5N5LRZ5C94792
         a9f+caVK0fa7uZibFLzVCqe2FegbCRhAaIIBN5mAmv8UIAX/dco33j66T+pnR+vjiNUx
         BKiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4YjpP2wq6+ACjqyzhOFcNXJo9yIAHLd5oTDFkJ5vDJI=;
        b=O8aE63JjbAO22+9hI7MOmaFQRjUgZy1q67/mww7qrrbkwvfCCMSfZ8t5MIXJeaK7C3
         JVWBJghchX1C2vkmhnO3Ze/HFOoj3g5vLAuvM07uUm7U48qjVo4R95bAaQ4jFCPHp9Fb
         bCjWSUE8WzO7mf4uhnYPIKO71xAHDx8oIvJLuuaSEbhcQK3I1S6MoFz2aRCnK7s2wxtf
         b/oSKXecx2fvesie9MvevTouz6bwqYwwI+6MKqmRqhZiTpiVsKfcJnw6WSsTYvLUcZJR
         hgKh2Y3qw/ACe8Eru8Ys8ngf0GtZzNtvyF8VLvtF2NG9kraGOquIgA0UoAGZlkMgnHmo
         wl0Q==
X-Gm-Message-State: AO0yUKU2OQTdZLj+03tps6F0/QWsJJwh7W7603xCgc2ATgljQdwKrU0w
        qxoETfn4qzO+6We+i1FSTelbKnxvVpYbc81vVkg=
X-Google-Smtp-Source: AK7set/odpPYKeDI4Gh3Vd6c879W5kwr82f80JtMSa7PjyX5HpudarZJ3fBJJU2wChXc+YL0x2Xldg==
X-Received: by 2002:a5d:4ac5:0:b0:2bf:c0f2:4b0 with SMTP id y5-20020a5d4ac5000000b002bfc0f204b0mr10197056wrs.19.1674894485169;
        Sat, 28 Jan 2023 00:28:05 -0800 (PST)
Received: from neptune.. ([188.27.130.91])
        by smtp.gmail.com with ESMTPSA id c17-20020a5d4cd1000000b002bfd52f31f6sm3815338wrt.9.2023.01.28.00.28.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Jan 2023 00:28:04 -0800 (PST)
From:   Alexandru Ardelean <alex@shruggie.ro>
To:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org
Cc:     broonie@kernel.org, lgirdwood@gmail.com,
        krzysztof.kozlowski+dt@linaro.org, perex@perex.cz, tiwai@suse.com,
        steffen.aschbacher@stihl.de, Alexandru Ardelean <alex@shruggie.ro>
Subject: [PATCH v2 3/4] ASoC: tas5720: set bit 7 in ANALOG_CTRL_REG for TAS5720A-Q1 during probe
Date:   Sat, 28 Jan 2023 10:27:43 +0200
Message-Id: <20230128082744.41849-3-alex@shruggie.ro>
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

Set the reserved bit 7 in the ANALOG_CTRL_REG for the TAS5720A-Q1 device,
when probing.
The datasheet mentions that the bit should be 1 during reset/powerup.

The device did not initialize before setting this value to 1. So, this
could be a quirk of this device. Or it could be a quirk with the board on
which it was tested.
That is why this patch is separate from the patch that adds support for the
TAS5720A-Q1 device.

Signed-off-by: Steffen Aschbacher <steffen.aschbacher@stihl.de>
Signed-off-by: Alexandru Ardelean <alex@shruggie.ro>
---

Changelog v1 -> v2:
- https://lore.kernel.org/alsa-devel/20230115193347.24190-3-alex@shruggie.ro/
- No change

 sound/soc/codecs/tas5720.c | 13 +++++++++++++
 sound/soc/codecs/tas5720.h |  1 +
 2 files changed, 14 insertions(+)

diff --git a/sound/soc/codecs/tas5720.c b/sound/soc/codecs/tas5720.c
index 2ad8fb29d005..de6d01c8fdd3 100644
--- a/sound/soc/codecs/tas5720.c
+++ b/sound/soc/codecs/tas5720.c
@@ -351,6 +351,19 @@ static int tas5720_codec_probe(struct snd_soc_component *component)
 	if (ret < 0)
 		goto error_snd_soc_component_update_bits;
 
+	/* Set Bit 7 in TAS5720_ANALOG_CTRL_REG to 1 for TAS5720A_Q1 */
+	switch (tas5720->devtype) {
+	case TAS5720A_Q1:
+		ret = snd_soc_component_update_bits(component, TAS5720_ANALOG_CTRL_REG,
+						    TAS5720_Q1_RESERVED7_BIT,
+						    TAS5720_Q1_RESERVED7_BIT);
+		break;
+	default:
+		break;
+	}
+	if (ret < 0)
+		goto error_snd_soc_component_update_bits;
+
 	/*
 	 * Enter shutdown mode - our default when not playing audio - to
 	 * minimize current consumption. On the TAS5720 there is no real down
diff --git a/sound/soc/codecs/tas5720.h b/sound/soc/codecs/tas5720.h
index b38459570241..54b59b05ef0a 100644
--- a/sound/soc/codecs/tas5720.h
+++ b/sound/soc/codecs/tas5720.h
@@ -81,6 +81,7 @@
 #define TAS5720_ANALOG_GAIN_SHIFT	(0x2)
 
 /* TAS5720_Q1_ANALOG_CTRL_REG */
+#define TAS5720_Q1_RESERVED7_BIT	BIT(7)
 #define TAS5720_Q1_CHAN_SEL		BIT(1)
 
 /* TAS5720_FAULT_REG */
-- 
2.34.1


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BB22C67F644
	for <lists+devicetree@lfdr.de>; Sat, 28 Jan 2023 09:28:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229737AbjA1I2I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Jan 2023 03:28:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229562AbjA1I2G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 28 Jan 2023 03:28:06 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BE3B402DA
        for <devicetree@vger.kernel.org>; Sat, 28 Jan 2023 00:28:04 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id b7so6924777wrt.3
        for <devicetree@vger.kernel.org>; Sat, 28 Jan 2023 00:28:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=shruggie-ro.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Y9aJH9dWW+lXIo+m5JL54uJsS21RU2JZM9Wrw00k7No=;
        b=treD55nfTAfWZWSzKShy9mwzsnfnSBTUoVysbGKxOPj5WmP+dMtEdOv0erz5Ru8obZ
         ve8E3jwlRM2jPNxYcuWYfnEU/ZeLc4PQqiH4MPEC+9kh6L1Tiapbt4dY8ZvoUucXDCON
         yF25vNXgq+3/VLPTHAeITAKK8i6LuZlQiQiz3Q+uXdd4AJh9RRhzvX5hTghFcADRkBjn
         qE3BxHUPakz08NccmMgRaNr2UV1sxqti3MjXD8aFJXkTr/O1mvfADdFFdeEwo300Ero5
         de2mt++mgL40B7Pgw4qZKq8FDCN3JXzYITD509DLvTWPsqMShSg3Ayr30Hi+zDHh+Wgh
         7W3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y9aJH9dWW+lXIo+m5JL54uJsS21RU2JZM9Wrw00k7No=;
        b=fWYhYxsE787t0y9sCvXUAUNfnewbSEAOyEW7LPSbB09Ae/J1SIIM7H5CuG6Gzw2CYR
         1VEVpVKLTNhZHxcb9yain8KXH2DRbYBaPTcTk04G+57NQ8ahjkjZ9AozVGBZlFgSbnLE
         D9HABmZFeoPOkcYHDn9qDUV70Cdf0xlcNOK111aig9Tmhm9xJa8tGa/kb+jr+CTDZ+Rv
         QrQAaUMcuP6HcOywN/idcot8jfsAzLAE4flmeY2BQCJ5AJdYkzHO6XGePvMuBgz898KJ
         3geK15fqJZHDOlL9PMB9bx2vqZp93lB+eDSZLTsg6cRf4yXvVAiVB+t/CDIJK7DCqHez
         w9kA==
X-Gm-Message-State: AFqh2koO9S2lKb4+eASjQKhpGKdwoa/YBLn5OoJaSarsRXR9+RM5aIBv
        1VA2KmeNzXiZFuQ3q+Nh7wXFPWVViuqywv9gVYI=
X-Google-Smtp-Source: AMrXdXt9KSRH7+r9cYAHQYj+3AoNx2UKmGCATXuRWMG6WddSwu/BzX2/w+k5ao9JwROWKW6FCOnHYw==
X-Received: by 2002:a5d:61c5:0:b0:2bf:9608:57ee with SMTP id q5-20020a5d61c5000000b002bf960857eemr27136437wrv.21.1674894482631;
        Sat, 28 Jan 2023 00:28:02 -0800 (PST)
Received: from neptune.. ([188.27.130.91])
        by smtp.gmail.com with ESMTPSA id c17-20020a5d4cd1000000b002bfd52f31f6sm3815338wrt.9.2023.01.28.00.28.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Jan 2023 00:28:02 -0800 (PST)
From:   Alexandru Ardelean <alex@shruggie.ro>
To:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org
Cc:     broonie@kernel.org, lgirdwood@gmail.com,
        krzysztof.kozlowski+dt@linaro.org, perex@perex.cz, tiwai@suse.com,
        steffen.aschbacher@stihl.de, Alexandru Ardelean <alex@shruggie.ro>
Subject: [PATCH v2 1/4] ASoC: codecs: tas5720: split a tas5720_mute_soc_component() function
Date:   Sat, 28 Jan 2023 10:27:41 +0200
Message-Id: <20230128082744.41849-1-alex@shruggie.ro>
X-Mailer: git-send-email 2.34.1
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

This is to be re-used in tas5720_mute() (which is part of the dai_ops) and
also in the tas5720_fault_check_work() hook.

The benefit here isn't too great (now).
It's only when we add support for a new device with a slightly different
regmap that this becomes more useful.

Signed-off-by: Alexandru Ardelean <alex@shruggie.ro>
---

Changelog v1 -> v2:
- https://lore.kernel.org/alsa-devel/20230115193347.24190-1-alex@shruggie.ro/
- No change

 sound/soc/codecs/tas5720.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/sound/soc/codecs/tas5720.c b/sound/soc/codecs/tas5720.c
index 3885c0bf0b01..0587c9bb3c4e 100644
--- a/sound/soc/codecs/tas5720.c
+++ b/sound/soc/codecs/tas5720.c
@@ -199,9 +199,8 @@ static int tas5720_set_dai_tdm_slot(struct snd_soc_dai *dai,
 	return ret;
 }
 
-static int tas5720_mute(struct snd_soc_dai *dai, int mute, int direction)
+static int tas5720_mute_soc_component(struct snd_soc_component *component, int mute)
 {
-	struct snd_soc_component *component = dai->component;
 	int ret;
 
 	ret = snd_soc_component_update_bits(component, TAS5720_DIGITAL_CTRL2_REG,
@@ -214,6 +213,11 @@ static int tas5720_mute(struct snd_soc_dai *dai, int mute, int direction)
 	return 0;
 }
 
+static int tas5720_mute(struct snd_soc_dai *dai, int mute, int direction)
+{
+	return tas5720_mute_soc_component(dai->component, mute);
+}
+
 static void tas5720_fault_check_work(struct work_struct *work)
 {
 	struct tas5720_data *tas5720 = container_of(work, struct tas5720_data,
@@ -318,8 +322,7 @@ static int tas5720_codec_probe(struct snd_soc_component *component)
 			 expected_device_id, device_id);
 
 	/* Set device to mute */
-	ret = snd_soc_component_update_bits(component, TAS5720_DIGITAL_CTRL2_REG,
-				  TAS5720_MUTE, TAS5720_MUTE);
+	ret = tas5720_mute_soc_component(component, 1);
 	if (ret < 0)
 		goto error_snd_soc_component_update_bits;
 
-- 
2.34.1


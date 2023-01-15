Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3349B66B3A9
	for <lists+devicetree@lfdr.de>; Sun, 15 Jan 2023 20:34:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231589AbjAOTd7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 15 Jan 2023 14:33:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231557AbjAOTd6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 15 Jan 2023 14:33:58 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C43EE1285D
        for <devicetree@vger.kernel.org>; Sun, 15 Jan 2023 11:33:55 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id f25-20020a1c6a19000000b003da221fbf48so4467119wmc.1
        for <devicetree@vger.kernel.org>; Sun, 15 Jan 2023 11:33:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=shruggie-ro.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=k+1aZzqQMLu9+0+ZmtqgeBm9XAT+pSqBj50qUTSIHJI=;
        b=YOHlQPzBfHeXMJDqCr54h4vZWRuBm1MV3qewiUlB2bB10Mr3OGeAKaWSFvbp8mvyzh
         e1o1KGYsA1t32mv/94RLN68Z7ZK9xRCTTx8QboNNsm3vXaFr7zIh9Y66b3sAdM93NdZZ
         TU01Pg7OVMvmoBwJ4Lozz1kYLAH0cc/8+TnwNMVuSYY8flJHaxW4yMN4TPiPlVwBxHrx
         DU/fUEUdXWlNbw+IVvBChwIX2J9ceYyIP6AXdFFYJTkseG9+PmMQIoptNxT49TKw1Pq4
         Mh+ly5z4TRmO/nevkKkDItCZ65aaEiT1OIID/h6x6I53NzTqoWwGjTEcfxj/DM8e4Dff
         nMCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k+1aZzqQMLu9+0+ZmtqgeBm9XAT+pSqBj50qUTSIHJI=;
        b=mFJ+4lb74yZsMFS6wH1QGrPLXq/gB39vSrwDjpd5CzMG+e7lBID+uPYfvBRxbD20QC
         OPWV/+qLOa2bkpIyVHCIYsff4yXrFBRM/wymyEs8lNKC5T5Au+yLXUkXABDHX6h/xxXX
         Ecm8qxy3iytgTVtygvW5hR90dFY5Q9mWwbtu/sE33b6JSVIQjpcG4fCwWaFIcN9/MpuB
         kgPFcCGx6JRHEusWwesgC06kxFo5rdotvFNWlnuZXqaBATLrti1YxcvHQ1GQNOUwzvKo
         O7euzb4yDLUd1KcEZ3aRPnnnGbmLd7s9xqesUzuV32T1YzMkYsrddFn1lLTmWI/aZGL9
         PPFQ==
X-Gm-Message-State: AFqh2kqo0AWcJGGx2QknUaeLjUzcrEGU4qMRhZoQXQ+gptSXoXwjJ237
        TEyEiEB+yM6GMuyHNNHh3kkDodfu1Ms22J0iJSLSlK8m
X-Google-Smtp-Source: AMrXdXsa0k53UzTcCZCxyTZHFw3RVc1uWDhWiM4YW9NZqzzIGrtnc35WQdZ0fv2u6dTzsfmG+7UT0g==
X-Received: by 2002:a1c:790c:0:b0:3da:22a6:7b6b with SMTP id l12-20020a1c790c000000b003da22a67b6bmr8083004wme.13.1673811233836;
        Sun, 15 Jan 2023 11:33:53 -0800 (PST)
Received: from neptune.hotspot.internet-for-guests.com (ip-078-094-237-238.um19.pools.vodafone-ip.de. [78.94.237.238])
        by smtp.gmail.com with ESMTPSA id f15-20020a7bcd0f000000b003d9a71ee54dsm30559281wmj.36.2023.01.15.11.33.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Jan 2023 11:33:53 -0800 (PST)
From:   Alexandru Ardelean <alex@shruggie.ro>
To:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org
Cc:     broonie@kernel.org, lgirdwood@gmail.com,
        krzysztof.kozlowski+dt@linaro.org, perex@perex.cz, tiwai@suse.com,
        steffen.aschbacher@stihl.de, Alexandru Ardelean <alex@shruggie.ro>
Subject: [PATCH 1/4] ASoC: codecs: tas5720: split a tas5720_mute_soc_component() function
Date:   Sun, 15 Jan 2023 21:33:44 +0200
Message-Id: <20230115193347.24190-1-alex@shruggie.ro>
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


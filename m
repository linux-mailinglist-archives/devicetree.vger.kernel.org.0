Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8009D66B3AB
	for <lists+devicetree@lfdr.de>; Sun, 15 Jan 2023 20:34:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231449AbjAOTeA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 15 Jan 2023 14:34:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231590AbjAOTd7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 15 Jan 2023 14:33:59 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E748D1286B
        for <devicetree@vger.kernel.org>; Sun, 15 Jan 2023 11:33:58 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id h12-20020a05600c314c00b003da50afcb33so2309210wmo.4
        for <devicetree@vger.kernel.org>; Sun, 15 Jan 2023 11:33:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=shruggie-ro.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RdGFTu0+gJFSj/8XHnsdu0rCr80zWB94xuGGcTk9DzY=;
        b=DtCiw1NHdmxQJIKbNUF2jDVAWvfkmHVzLqaptp/gtjyxyu/dzl5DdqtuT3R1yujcTi
         /mQcyqha7oePumtCuXYD6K5nOfJTt6MF48LnehoK1vwZ93MDTIaiPUp4BKrD+VQ31ylw
         a0EaD9+IzbL+UaITbsyx0ZwMgAgX9ZFAZ7qotmaLdDhMuiynHt449qaoYlVNST3VNGri
         7oOW234OO8mzIRU067JlAGHu0HGoNSllC+yw3Yi8nM+JcqY692mi6e++5uWC7MazkrZg
         LSu4V+WFRnbRuFLetB1GUYYxBztnl5Sw9RRoGhpZVUjaM2u3tZPBuhgi+z8dlojcc9vH
         X7Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RdGFTu0+gJFSj/8XHnsdu0rCr80zWB94xuGGcTk9DzY=;
        b=32R42oRMFAmeJW2XiU6a0/JftMmi75HpYiHqnrtkN3+dGGijnrhzc90Q1PL89if+vS
         TkqyR74PvANR352W9cOJJLHXX8iMpdlH3ndJJ4/FvWbBRGoD8wAG3mpW4F9sb6CQTl3s
         PTP1aBvlYJJOPCIxkR9ETIEDJaqPLsPcc40pIMnWOukLAB+mwTdbgZrf5YI1x5lTY+D6
         Qz77neBKFbVursvI6NpPwIngZLWms+Kms39IFIWDxNeiMpop502PgMmi2r1OLnxOMdFv
         /rLN6JCnno8IO6TqZcyOv6a8NNRP68R+e4NmVDyzGVYtA+49AHbcrMNfuUEDHo4YDL82
         M5NA==
X-Gm-Message-State: AFqh2ko6LNBgSbXtP/GhrHIWfQFZWg1LV4HbUu47shMfbahPFpCOuybU
        AKUOnNnU6I3eewmmsUlhp56VdchoEbXG5AUljmWrGtGb
X-Google-Smtp-Source: AMrXdXsf88QsrQS+bBRWF2ObE/qOTjRiOO+AcdGPX3HSkOUKTGIfncKFoLGDXZgmrn68DeJPlx/PeQ==
X-Received: by 2002:a05:600c:348b:b0:3d2:2a72:2577 with SMTP id a11-20020a05600c348b00b003d22a722577mr63486573wmq.27.1673811237183;
        Sun, 15 Jan 2023 11:33:57 -0800 (PST)
Received: from neptune.hotspot.internet-for-guests.com (ip-078-094-237-238.um19.pools.vodafone-ip.de. [78.94.237.238])
        by smtp.gmail.com with ESMTPSA id f15-20020a7bcd0f000000b003d9a71ee54dsm30559281wmj.36.2023.01.15.11.33.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Jan 2023 11:33:56 -0800 (PST)
From:   Alexandru Ardelean <alex@shruggie.ro>
To:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org
Cc:     broonie@kernel.org, lgirdwood@gmail.com,
        krzysztof.kozlowski+dt@linaro.org, perex@perex.cz, tiwai@suse.com,
        steffen.aschbacher@stihl.de, Alexandru Ardelean <alex@shruggie.ro>
Subject: [PATCH 3/4] ASoC: tas5720: set bit 7 in ANALOG_CTRL_REG for TAS5720A-Q1 during probe
Date:   Sun, 15 Jan 2023 21:33:46 +0200
Message-Id: <20230115193347.24190-3-alex@shruggie.ro>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230115193347.24190-1-alex@shruggie.ro>
References: <20230115193347.24190-1-alex@shruggie.ro>
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
It's unclear whether this change is the proper way to do it.

Signed-off-by: Steffen Aschbacher <steffen.aschbacher@stihl.de>
Signed-off-by: Alexandru Ardelean <alex@shruggie.ro>
---
 sound/soc/codecs/tas5720.c | 13 +++++++++++++
 sound/soc/codecs/tas5720.h |  1 +
 2 files changed, 14 insertions(+)

diff --git a/sound/soc/codecs/tas5720.c b/sound/soc/codecs/tas5720.c
index d9d08593ff7a..0a7ad35c3b9b 100644
--- a/sound/soc/codecs/tas5720.c
+++ b/sound/soc/codecs/tas5720.c
@@ -350,6 +350,19 @@ static int tas5720_codec_probe(struct snd_soc_component *component)
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


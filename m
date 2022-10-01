Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 576615F1F14
	for <lists+devicetree@lfdr.de>; Sat,  1 Oct 2022 22:02:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229537AbiJAUCQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 1 Oct 2022 16:02:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229482AbiJAUCP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 1 Oct 2022 16:02:15 -0400
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com [IPv6:2607:f8b0:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBF50286D2
        for <devicetree@vger.kernel.org>; Sat,  1 Oct 2022 13:02:14 -0700 (PDT)
Received: by mail-pg1-x52b.google.com with SMTP id 3so6767088pga.1
        for <devicetree@vger.kernel.org>; Sat, 01 Oct 2022 13:02:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=2kQFssZDN0HRb1/ORSf7rWm+rHmS3Pt1sIzHwE9NrHQ=;
        b=LcbIcbtc1nxnsfeqBhchgdsIiOxHmiUuGXPCoPwdjKZyeZNB74tNAWj9NQ8bSNF4nm
         cLBSlsRkgRnOwyUpSQsriG7jXA7kB6VkaI8MVZXshFAS7yYi41vlxQL6TM1Ezn1S66us
         ZUcZbaq/Q8s4HIkOvG5EP7aq5tH7p/qohPrPY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=2kQFssZDN0HRb1/ORSf7rWm+rHmS3Pt1sIzHwE9NrHQ=;
        b=BhiCm05IAHsUrc6m1lD8yhQA6W+a43A0aVof3uYAtivuNTUTPzfiF+e1i/5LdpQ4ti
         qfNM94QZx01atbylgMSWBTbgzhqmZtXin9SIQnAOdCtivoHU2uzPL9wEwQ9kPeCal5BY
         KJfxmcev7jGjm9bBI5wJfCzeMadwZqmXaIyCo1eRVAajBTZ0S9PDJ25Pl167CF0r25hM
         GzZkkwEINxWu3JxLBffhrB49w15nTK7eVj+msyQDi4nHS9Os3JM4EJIcVzCtxe2lPB9P
         bLMOZf3WYuSqzdQAyPNPxn7Pk+bQJoZfGbqFn0CY5QEZMBCENyGupUTeMCxtYjQqiKW7
         mNzQ==
X-Gm-Message-State: ACrzQf079M2VGqdcAGTuB8n1hf1nwaEcHFEDHZLCrPIbF5KGZHg3Y1nw
        c+fYgpP7ii6bfbhsucM4zkMDCQ==
X-Google-Smtp-Source: AMsMyM42WnOIyg1fnqg/A2SJuFW1FMcCAW0FwedAGNlAlBLwpkV6Ee1dDb4FQ2dXWMbQpeZ81dXIRw==
X-Received: by 2002:a63:65c4:0:b0:440:5352:3812 with SMTP id z187-20020a6365c4000000b0044053523812mr11370123pgb.285.1664654534328;
        Sat, 01 Oct 2022 13:02:14 -0700 (PDT)
Received: from doug-ryzen-5700G.. ([50.45.132.124])
        by smtp.gmail.com with ESMTPSA id l18-20020a170903121200b0017a8aed0a5asm4313593plh.136.2022.10.01.13.02.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Oct 2022 13:02:13 -0700 (PDT)
From:   Doug Brown <doug@schmorgal.com>
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Cc:     Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        patches@opensource.cirrus.com, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, Doug Brown <doug@schmorgal.com>
Subject: [PATCH 2/2] ASoC: wm8961: add support for devicetree
Date:   Sat,  1 Oct 2022 13:00:39 -0700
Message-Id: <20221001200039.21049-3-doug@schmorgal.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221001200039.21049-1-doug@schmorgal.com>
References: <20221001200039.21049-1-doug@schmorgal.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds support for devicetree to the WM8961 driver so it can be used
with modern DT-based kernels.

Signed-off-by: Doug Brown <doug@schmorgal.com>
---
 sound/soc/codecs/Kconfig  | 2 +-
 sound/soc/codecs/wm8961.c | 6 ++++++
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/sound/soc/codecs/Kconfig b/sound/soc/codecs/Kconfig
index e3b90c425faf..2b5787ee8d31 100644
--- a/sound/soc/codecs/Kconfig
+++ b/sound/soc/codecs/Kconfig
@@ -1929,7 +1929,7 @@ config SND_SOC_WM8960
 	depends on I2C
 
 config SND_SOC_WM8961
-	tristate
+	tristate "Wolfson Microelectronics WM8961 CODEC"
 	depends on I2C
 
 config SND_SOC_WM8962
diff --git a/sound/soc/codecs/wm8961.c b/sound/soc/codecs/wm8961.c
index 7dc6aaf65576..539096184eda 100644
--- a/sound/soc/codecs/wm8961.c
+++ b/sound/soc/codecs/wm8961.c
@@ -971,6 +971,12 @@ static const struct i2c_device_id wm8961_i2c_id[] = {
 };
 MODULE_DEVICE_TABLE(i2c, wm8961_i2c_id);
 
+static const struct of_device_id wm8961_of_match[] = {
+	{ .compatible = "wlf,wm8961", },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, wm8961_of_match);
+
 static struct i2c_driver wm8961_i2c_driver = {
 	.driver = {
 		.name = "wm8961",
-- 
2.34.1


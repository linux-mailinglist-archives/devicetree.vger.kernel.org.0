Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 92B0A5F27D3
	for <lists+devicetree@lfdr.de>; Mon,  3 Oct 2022 05:24:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229530AbiJCDYp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Oct 2022 23:24:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40006 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229517AbiJCDYm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Oct 2022 23:24:42 -0400
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com [IPv6:2607:f8b0:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59A2F10B6
        for <devicetree@vger.kernel.org>; Sun,  2 Oct 2022 20:24:41 -0700 (PDT)
Received: by mail-pf1-x42b.google.com with SMTP id v186so9105048pfv.11
        for <devicetree@vger.kernel.org>; Sun, 02 Oct 2022 20:24:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=8qat8MFOGsaBlJAMN6joW2Dl31wIftDix6DXZPpwSoI=;
        b=iYhueGqgEXQD0h9Rq56Zi0JzdYBV7XlZK6ggyp5xASvbpRwGq7M2xfNyg475iuzswZ
         bTAnMFYZWw7Elv+1pQJ03gZa0qFVRLzvN9SYhNOOyvVtmprxeAiPMJnZfBtGen+VbAlT
         OtLSL3bGIEcczmQiLJhAMh9Vm6Wh8VdNIlcgw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=8qat8MFOGsaBlJAMN6joW2Dl31wIftDix6DXZPpwSoI=;
        b=lWx5AkkfsY+Bvp/ZKNL7JC1ouy4ijRX37PnJl9NWR3QiWn6jtN35G4imofFUX313ZL
         ztNcH9bs29gqZCDK0v+FJ8V4ElS0vFEnQteazAechwgcLDflgCrXatWXyEn2i4ucB3Eu
         VUkWJqmTBMkg7UkoCxWoyuhSrSnwBKYy7Nj3PRxlgrP2cFCpwmuQZoRm2tWt8iqB3RZJ
         fJiTr6DjrIBBT12AKkbEPVO2tP5XAfK6SILMebpeRHfur94G19WZJnzieBKBJFrnJxKB
         O3UI35yPbHTGpL25Fidp8DC8XYeKzZzOE7Th/u/bkSrWXHth5s9qV+lDydr+5k/7mPr0
         XlQA==
X-Gm-Message-State: ACrzQf3fYxeaLPEMCDIPfW8+SDXmUyLQhuzWLiJ0paBF3morfqU+WybA
        QUbifHtQdr/XZmPF9tUpy7jZIQ==
X-Google-Smtp-Source: AMsMyM4m7ANca3Mqy/X9569Ol4YrR6liqnH4eA0Ko5EhrQvIgrYeHWiLvSBNUN/MAMi5eCUFAzolEA==
X-Received: by 2002:a62:e20f:0:b0:556:4265:5de2 with SMTP id a15-20020a62e20f000000b0055642655de2mr20655788pfi.57.1664767481421;
        Sun, 02 Oct 2022 20:24:41 -0700 (PDT)
Received: from doug-ryzen-5700G.. ([50.45.132.124])
        by smtp.gmail.com with ESMTPSA id y25-20020aa78f39000000b0053e7d3b8d6dsm6157977pfr.1.2022.10.02.20.24.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Oct 2022 20:24:41 -0700 (PDT)
From:   Doug Brown <doug@schmorgal.com>
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Cc:     Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        patches@opensource.cirrus.com, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, Doug Brown <doug@schmorgal.com>
Subject: [PATCH v2 2/3] ASoC: wm8961: add support for devicetree
Date:   Sun,  2 Oct 2022 20:24:13 -0700
Message-Id: <20221003032414.248326-3-doug@schmorgal.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221003032414.248326-1-doug@schmorgal.com>
References: <20221003032414.248326-1-doug@schmorgal.com>
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

Add support for devicetree to the WM8961 driver so it can be used with
modern DT-based kernels.

Signed-off-by: Doug Brown <doug@schmorgal.com>
---
 sound/soc/codecs/wm8961.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/sound/soc/codecs/wm8961.c b/sound/soc/codecs/wm8961.c
index 7dc6aaf65576..a4857024711d 100644
--- a/sound/soc/codecs/wm8961.c
+++ b/sound/soc/codecs/wm8961.c
@@ -971,9 +971,16 @@ static const struct i2c_device_id wm8961_i2c_id[] = {
 };
 MODULE_DEVICE_TABLE(i2c, wm8961_i2c_id);
 
+static const struct of_device_id wm8961_of_match[] __maybe_unused = {
+	{ .compatible = "wlf,wm8961", },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, wm8961_of_match);
+
 static struct i2c_driver wm8961_i2c_driver = {
 	.driver = {
 		.name = "wm8961",
+		.of_match_table = of_match_ptr(wm8961_of_match),
 	},
 	.probe_new = wm8961_i2c_probe,
 	.id_table = wm8961_i2c_id,
-- 
2.34.1


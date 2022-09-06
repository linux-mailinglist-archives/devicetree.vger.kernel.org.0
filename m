Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A31495AF227
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 19:16:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239621AbiIFRNc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 13:13:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233013AbiIFRMv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 13:12:51 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F4BF5AC65
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 10:02:30 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id k9so16447617wri.0
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 10:02:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=Ywio/Hr5dHYfS39R3NapOq15++OC8y1mKEHZXcc063Q=;
        b=zVy9F2Np28xf/J5QZDy4W/5g1BMmP6sLdT8DeFZDLhrJWyGDZ+xPbUbuutGAQj6evg
         IVR+1tZSgfOX/bRiIqCo09o/z7Kv4/ChKRpEDDbzbTEj4eI/XgEjfs+yic0tKWHvnu+z
         JZOilqz88tNo5KfyWr4PKOCIh8de5IXrhVVm7HaJ7nPk+AuUllM6HXr2NtVfUE7iptfT
         hJUImFK4CZtpoaf1EajvydcK94fWjTWaB+s1WrYnq/FQZQ7th8evqolOrJVcIbDLcrSk
         stJ2sKdoAe1Hlt8XG0Q4jF2+WvB52Btrdoa14wk3DEIpA8Uy0IvCmdqxm5JSOTs7xE7U
         bGJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=Ywio/Hr5dHYfS39R3NapOq15++OC8y1mKEHZXcc063Q=;
        b=D/q3H5jxn8jVl1Wcrg/il4InT9PMtXtdryUAqmA2T0XQuMDdc4PgdPnQJAkdDwZJX9
         PntNv8rXgnziwU34RA5SN0odXerA794u6z/SFw+YihJ/OI1Fl+UH6tu7nKnFYp2cwLMB
         0vShhOSYxGtjR7tjXX8+Ew8Et/RUS15kLEkcHyq1ORzkDhqF0q2vSpEAQJRlA7K4/CBP
         mZbm7CXwKZ52bkMbe5Hzrs3d2rVIPm/mUXgOl2mcqirh1HHZV++ZccvY7grM51VDNnEG
         K8hltSw0r0nL+rg4tckdC6gOGEWHzlapN7njpLalULDs06Q52xGhg8uBU7PG6OWWWhqX
         Ektw==
X-Gm-Message-State: ACgBeo1U18+tSXNwAltzRnU3QGGkoVE8Viy7KqVYlC/6AvE1yGRjU1tH
        VgchtSu5PqLEkp3mJuFMxzs+hQ==
X-Google-Smtp-Source: AA6agR4VhkzVAAHCVE5Bvqj4gmZmkmcK/9Im8zQLrjWbbD7qyRvYQ3lDqquMJFvysynL4HFltgDKHg==
X-Received: by 2002:a5d:5a9a:0:b0:226:e840:c551 with SMTP id bp26-20020a5d5a9a000000b00226e840c551mr18650248wrb.679.1662483733326;
        Tue, 06 Sep 2022 10:02:13 -0700 (PDT)
Received: from srini-hackbox.lan (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.gmail.com with ESMTPSA id x13-20020a1c7c0d000000b003a5ca627333sm21085967wmc.8.2022.09.06.10.02.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 10:02:12 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org
Cc:     lgirdwood@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, bgoswami@quicinc.com,
        perex@perex.cz, tiwai@suse.com, linux-arm-msm@vger.kernel.org,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v2 06/12] ASoC: codecs: wsa883x: add clock stop support
Date:   Tue,  6 Sep 2022 18:01:06 +0100
Message-Id: <20220906170112.1984-7-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20220906170112.1984-1-srinivas.kandagatla@linaro.org>
References: <20220906170112.1984-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

WSA883x does support clock stop, so remove code that reset
the Codec during runtime pm suspend and add flag to mark
clock stop support.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 sound/soc/codecs/wsa883x.c | 28 +---------------------------
 1 file changed, 1 insertion(+), 27 deletions(-)

diff --git a/sound/soc/codecs/wsa883x.c b/sound/soc/codecs/wsa883x.c
index 63e1d7aa6137..c7b10bbfba7e 100644
--- a/sound/soc/codecs/wsa883x.c
+++ b/sound/soc/codecs/wsa883x.c
@@ -415,7 +415,6 @@
 
 #define WSA883X_NUM_REGISTERS           (WSA883X_EMEM_63 + 1)
 #define WSA883X_MAX_REGISTER            (WSA883X_NUM_REGISTERS - 1)
-#define WSA883X_PROBE_TIMEOUT 1000
 
 #define WSA883X_VERSION_1_0 0
 #define WSA883X_VERSION_1_1 1
@@ -1409,6 +1408,7 @@ static int wsa883x_probe(struct sdw_slave *pdev,
 	wsa883x->sconfig.type = SDW_STREAM_PDM;
 
 	pdev->prop.sink_ports = GENMASK(WSA883X_MAX_SWR_PORTS, 0);
+	pdev->prop.simple_clk_stop_capable = true;
 	pdev->prop.sink_dpn_prop = wsa_sink_dpn_prop;
 	pdev->prop.scp_int1_mask = SDW_SCP_INT1_BUS_CLASH | SDW_SCP_INT1_PARITY;
 	gpiod_direction_output(wsa883x->sd_n, 1);
@@ -1440,43 +1440,17 @@ static int wsa883x_probe(struct sdw_slave *pdev,
 static int __maybe_unused wsa883x_runtime_suspend(struct device *dev)
 {
 	struct regmap *regmap = dev_get_regmap(dev, NULL);
-	struct wsa883x_priv *wsa883x = dev_get_drvdata(dev);
-
-	gpiod_direction_output(wsa883x->sd_n, 0);
 
 	regcache_cache_only(regmap, true);
 	regcache_mark_dirty(regmap);
 
-	regulator_disable(wsa883x->vdd);
 	return 0;
 }
 
 static int __maybe_unused wsa883x_runtime_resume(struct device *dev)
 {
-	struct sdw_slave *slave = dev_to_sdw_dev(dev);
 	struct regmap *regmap = dev_get_regmap(dev, NULL);
-	struct wsa883x_priv *wsa883x = dev_get_drvdata(dev);
-	unsigned long time;
-	int ret;
-
-	ret = regulator_enable(wsa883x->vdd);
-	if (ret) {
-		dev_err(dev, "Failed to enable vdd regulator (%d)\n", ret);
-		return ret;
-	}
-
-	gpiod_direction_output(wsa883x->sd_n, 1);
-
-	time = wait_for_completion_timeout(&slave->initialization_complete,
-					   msecs_to_jiffies(WSA883X_PROBE_TIMEOUT));
-	if (!time) {
-		dev_err(dev, "Initialization not complete, timed out\n");
-		gpiod_direction_output(wsa883x->sd_n, 0);
-		regulator_disable(wsa883x->vdd);
-		return -ETIMEDOUT;
-	}
 
-	usleep_range(20000, 20010);
 	regcache_cache_only(regmap, false);
 	regcache_sync(regmap);
 
-- 
2.21.0


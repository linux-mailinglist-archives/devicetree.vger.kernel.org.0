Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 47C9775C1A9
	for <lists+devicetree@lfdr.de>; Fri, 21 Jul 2023 10:29:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231534AbjGUI3l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jul 2023 04:29:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230133AbjGUI3k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Jul 2023 04:29:40 -0400
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com [IPv6:2607:f8b0:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40BA92D60
        for <devicetree@vger.kernel.org>; Fri, 21 Jul 2023 01:29:33 -0700 (PDT)
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-668730696a4so1130545b3a.1
        for <devicetree@vger.kernel.org>; Fri, 21 Jul 2023 01:29:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1689928173; x=1690532973;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VIWYt/VUR+LWe3Ym6ggQYemB73LQMpv4Ia87+08eNu8=;
        b=U8tbOuYsv2qAdDwgZoO+iz47dgCAAuQtft3iB/+2w3aUBrW2BKSDOKRq6XwNvVmZjn
         kcG5jy0Jg7hOzt1t0O6ye8LfAHv/h3rahLv+WIyqan+z6XMhf+TImBBS8QRmFUTw/EnU
         5nfhMcw2R3snwZ7cBuwUgdC/XeRpSbJcm3Oag=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689928173; x=1690532973;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VIWYt/VUR+LWe3Ym6ggQYemB73LQMpv4Ia87+08eNu8=;
        b=bsG2ZbrMA7thT250Wv7eG5teHunnlhJBAmZshN19yAt4xMNzwkGs+RG+i0ZlsNAWMa
         S/EDGskIynoTHxkXZQL4IYTZXPLkKKF8EOVUHCiVavKNYyIiW56Bf285ZuGeqh81fuIB
         yIxFaxs6/EKOQRbH9PO0mf7YWJRgvsvShsx3mF8vqyQOV5IusEyJpPtmLc73S+emyIjF
         8azVnsEf67u9wRLwKsoCwxGEIg2bYoC0nGi1BznQT9vdaRy+t8l5Ize0bOE1ejwWHrDY
         tjQzQeoUA9Mrt1S6aqIwCR/+7NIrD8kNRwkJ66nd8uBoWVJXZF8cmFh1FYUDgm3ucf3q
         le9A==
X-Gm-Message-State: ABy/qLbcG5S7nkPu0kAemEPsqVzcPBzj9Ki9xOFuHLuSnImdZ7sYXI6q
        UQtwGEAOSA51k4G8LYHgoRjJ8A==
X-Google-Smtp-Source: APBJJlGKWSQK0mN8NpAN1D+3ZDdQIBCHZZ4gZk88M8iDl/Ci3FHMFyzggXhCphtN+TVPXkH52RraFw==
X-Received: by 2002:a05:6a00:2e18:b0:67a:f6f6:ccc6 with SMTP id fc24-20020a056a002e1800b0067af6f6ccc6mr1225758pfb.5.1689928172684;
        Fri, 21 Jul 2023 01:29:32 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:6d86:d21:714:abab])
        by smtp.gmail.com with ESMTPSA id d26-20020a63991a000000b0055fe64fd3f4sm2594382pge.9.2023.07.21.01.29.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jul 2023 01:29:32 -0700 (PDT)
From:   Chen-Yu Tsai <wenst@chromium.org>
To:     Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     Chen-Yu Tsai <wenst@chromium.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH RESEND v2 2/7] regulator: mt6358: Sync VCN33_* enable status after checking ID
Date:   Fri, 21 Jul 2023 16:28:54 +0800
Message-ID: <20230721082903.2038975-3-wenst@chromium.org>
X-Mailer: git-send-email 2.41.0.487.g6d72f3e995-goog
In-Reply-To: <20230721082903.2038975-1-wenst@chromium.org>
References: <20230721082903.2038975-1-wenst@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Syncing VCN33_* enable status should be done after checking the PMIC's
ID, to avoid setting random bits on other PMICs.

Suggested-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Fixes: 65bae54e08c1 ("regulator: mt6358: Merge VCN33_* regulators")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 drivers/regulator/mt6358-regulator.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/regulator/mt6358-regulator.c b/drivers/regulator/mt6358-regulator.c
index 31a16fb28ecd..da6b40f947c4 100644
--- a/drivers/regulator/mt6358-regulator.c
+++ b/drivers/regulator/mt6358-regulator.c
@@ -676,10 +676,6 @@ static int mt6358_regulator_probe(struct platform_device *pdev)
 	const struct mt6358_regulator_info *mt6358_info;
 	int i, max_regulator, ret;
 
-	ret = mt6358_sync_vcn33_setting(&pdev->dev);
-	if (ret)
-		return ret;
-
 	if (mt6397->chip_id == MT6366_CHIP_ID) {
 		max_regulator = MT6366_MAX_REGULATOR;
 		mt6358_info = mt6366_regulators;
@@ -688,6 +684,10 @@ static int mt6358_regulator_probe(struct platform_device *pdev)
 		mt6358_info = mt6358_regulators;
 	}
 
+	ret = mt6358_sync_vcn33_setting(&pdev->dev);
+	if (ret)
+		return ret;
+
 	for (i = 0; i < max_regulator; i++) {
 		config.dev = &pdev->dev;
 		config.regmap = mt6397->regmap;
-- 
2.41.0.487.g6d72f3e995-goog


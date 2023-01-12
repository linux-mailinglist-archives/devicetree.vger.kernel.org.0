Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4F0B86668DB
	for <lists+devicetree@lfdr.de>; Thu, 12 Jan 2023 03:24:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236177AbjALCYx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Jan 2023 21:24:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236117AbjALCYw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Jan 2023 21:24:52 -0500
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E991444C4A
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 18:24:50 -0800 (PST)
Received: by mail-pj1-x1032.google.com with SMTP id cx21-20020a17090afd9500b00228f2ecc6dbso1446723pjb.0
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 18:24:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WqYz5wS1ns0kl8A6NpaJdCKujdrpwt6VlQVEZ72mUB8=;
        b=QOS7WiMWfYDs1y9SsDzoqFHoFj7KVINu8oto0dX/B6GFNqulWAzxAp+uuhFK3iYu8k
         eE/ZlXLP0sEW3NZMh3Z8J4rNno2ReLv5d72TYum/ZEmFuVR6LTK2Q++p53KfBz0vyVjH
         wzlBBZAQX90fr0Lgo1YaTCEqILhuOWLPTbxJc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WqYz5wS1ns0kl8A6NpaJdCKujdrpwt6VlQVEZ72mUB8=;
        b=JnuQTmq1WrLDJ7ZJs+iBualfflWSoQ8lwUg5TpEvrNdDwSyx9aBC5ij4pODEZBQyx8
         Yl4HjcFACvFCNtzXZTSg/D1k1AHQg3jydG1X3M1XB0qFQi6VZYWI9gYa//UbrHpOMfzb
         +0tJ1MYRjo7GQVX8+Yf6O6CRTHN+nqeLqZLuXBBwcFaKaLCWYHOvk6tUFp5f//PalDGJ
         fAle4aPOuyans1APFwmsSrS6n17RVPsLGj8S7jGZtpR4zMPRM5MzVg+5t/yXG6Fijtl2
         9GJK0rSQ73ffxLvZGN6EirlqilTkcIddjA4AKyah8rRztLPsBL3/wB3Cg4SCWYt0Z7GC
         WSUw==
X-Gm-Message-State: AFqh2krRQIHj+WnxvWepz/3Uc/5bglpW1H24XphvUsM1dx/hsgbo5THI
        A/HrbiJWrM3xdN+abC+gI88YZA==
X-Google-Smtp-Source: AMrXdXs8YVTtSgtQI0SsDou7pLushjCRXkuTArvOSq3Ndys0bT4xBEwdBNDh0JBZYvvWwqWbCtdAWw==
X-Received: by 2002:a17:902:9a88:b0:194:4449:56ef with SMTP id w8-20020a1709029a8800b00194444956efmr6825629plp.30.1673490290516;
        Wed, 11 Jan 2023 18:24:50 -0800 (PST)
Received: from doug-ryzen-5700G.. ([192.183.212.197])
        by smtp.gmail.com with ESMTPSA id a1-20020a1709027e4100b00193020e8a90sm10759135pln.294.2023.01.11.18.24.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jan 2023 18:24:49 -0800 (PST)
From:   Doug Brown <doug@schmorgal.com>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Adrian Hunter <adrian.hunter@intel.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        Doug Brown <doug@schmorgal.com>
Subject: [PATCH v4 4/8] mmc: sdhci-pxav2: change clock name to match DT bindings
Date:   Wed, 11 Jan 2023 18:24:12 -0800
Message-Id: <20230112022416.8474-5-doug@schmorgal.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230112022416.8474-1-doug@schmorgal.com>
References: <20230112022416.8474-1-doug@schmorgal.com>
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

The devicetree bindings for this driver specify that the two allowed
clock names are io and core. Change this driver to look for io, but
allow any name if it fails for backwards compatibility. Follow the same
pattern used in sdhci-pxav3, but add support for EPROBE_DEFER.

Get rid of an unnecessary pdev->dev while we're at it.

Signed-off-by: Doug Brown <doug@schmorgal.com>
Acked-by: Adrian Hunter <adrian.hunter@intel.com>
---
 drivers/mmc/host/sdhci-pxav2.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/mmc/host/sdhci-pxav2.c b/drivers/mmc/host/sdhci-pxav2.c
index 5e01dab94426..f5c86e1ba734 100644
--- a/drivers/mmc/host/sdhci-pxav2.c
+++ b/drivers/mmc/host/sdhci-pxav2.c
@@ -199,16 +199,18 @@ static int sdhci_pxav2_probe(struct platform_device *pdev)
 
 	pltfm_host = sdhci_priv(host);
 
-	clk = devm_clk_get(dev, "PXA-SDHCLK");
+	clk = devm_clk_get(dev, "io");
+	if (IS_ERR(clk) && PTR_ERR(clk) != -EPROBE_DEFER)
+		clk = devm_clk_get(dev, NULL);
 	if (IS_ERR(clk)) {
-		dev_err(dev, "failed to get io clock\n");
 		ret = PTR_ERR(clk);
+		dev_err_probe(dev, ret, "failed to get io clock\n");
 		goto free;
 	}
 	pltfm_host->clk = clk;
 	ret = clk_prepare_enable(clk);
 	if (ret) {
-		dev_err(&pdev->dev, "failed to enable io clock\n");
+		dev_err(dev, "failed to enable io clock\n");
 		goto free;
 	}
 
-- 
2.34.1


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F54A639F97
	for <lists+devicetree@lfdr.de>; Mon, 28 Nov 2022 03:45:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229730AbiK1CpE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Nov 2022 21:45:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229688AbiK1Co5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Nov 2022 21:44:57 -0500
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F0DA1147E
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 18:44:55 -0800 (PST)
Received: by mail-pj1-x102b.google.com with SMTP id e7-20020a17090a77c700b00216928a3917so12600269pjs.4
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 18:44:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rmieg4CE/yoWW/WbGieBOpB3jed5cPBDcr27QQC3wwY=;
        b=j08gU2WeURSZo53HKsrDD3F+UwpgZCpHsM0JNBKzw2rqwUKSx2cgEbWfpcscSPe0cI
         x7psbdN4gH4vVgsbQ5cOxtUM/x+MA/loIOmD0qwgid2RrfzeRCfDj2MaziblPJx3dSpK
         FSj+ULhc6NlDCmpju0lwOFO1wU6wGjeuxTWQM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rmieg4CE/yoWW/WbGieBOpB3jed5cPBDcr27QQC3wwY=;
        b=5qGAqKl1SZeOf14EnpC3JeMnEQmIh/DAdhDyEYs2ugv+pZ2ludBmrUavPJZLR9fXXl
         zrHHl3AAUpHUMeIWkX80bqGuUm1tIJJK3G+k1vd+q1lETd3os6JnGsgismr6Pv6A8uaR
         XJ4qCulE5Qr7oh87D/lx8aA/MpS+0FLTaKPV9iksWeS2TCuEL1O25b5w/0lBmyi/dzaR
         koDwr28uTZ1RAWCAiTQ0bfvJkSR2zZfxIDf4o2r1ca/e15Ir9DvwO+ptHepiJi8+V+MX
         SUCmkN0R5dL6igjWBaLN7jY4SPCY1H7Tvd6KAsBL3hSMHXFHmJsVn50dlXQznqUOn0dz
         GVSA==
X-Gm-Message-State: ANoB5pl1/ILlOf1tuSTfAghTKTx9Y+EXPTUTmLRve0Gin8xSDVBpwujd
        ayu1YuWbvGgD7euTsZOEoRCLYw==
X-Google-Smtp-Source: AA0mqf7LHYFLOyGdWhwGPyihDaFmJjsXwiN/hxawjLBy+DITiSop8QdyRAdyrn9GBIk3a1Zw+Dk25w==
X-Received: by 2002:a17:90a:8a07:b0:20a:c032:da66 with SMTP id w7-20020a17090a8a0700b0020ac032da66mr56668781pjn.19.1669603494767;
        Sun, 27 Nov 2022 18:44:54 -0800 (PST)
Received: from doug-ryzen-5700G.. ([192.183.212.197])
        by smtp.gmail.com with ESMTPSA id z16-20020aa79910000000b005752201d4ffsm1431568pff.213.2022.11.27.18.44.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Nov 2022 18:44:54 -0800 (PST)
From:   Doug Brown <doug@schmorgal.com>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Adrian Hunter <adrian.hunter@intel.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        Doug Brown <doug@schmorgal.com>
Subject: [PATCH 5/8] mmc: sdhci-pxav2: add optional core clock
Date:   Sun, 27 Nov 2022 18:44:04 -0800
Message-Id: <20221128024407.224393-6-doug@schmorgal.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221128024407.224393-1-doug@schmorgal.com>
References: <20221128024407.224393-1-doug@schmorgal.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add ability to have an optional core clock just like the pxav3 driver.
The PXA168 needs this because its SDHC controllers have separate core
and io clocks that both need to be enabled. This also correctly matches
the documented devicetree bindings for this driver.

Signed-off-by: Doug Brown <doug@schmorgal.com>
---
 drivers/mmc/host/sdhci-pxav2.c | 40 ++++++++++++++++++++++++++++++----
 1 file changed, 36 insertions(+), 4 deletions(-)

diff --git a/drivers/mmc/host/sdhci-pxav2.c b/drivers/mmc/host/sdhci-pxav2.c
index a0c882d03d0b..4996d72c6d23 100644
--- a/drivers/mmc/host/sdhci-pxav2.c
+++ b/drivers/mmc/host/sdhci-pxav2.c
@@ -41,6 +41,10 @@
 #define MMC_CARD		0x1000
 #define MMC_WIDTH		0x0100
 
+struct sdhci_pxav2_host {
+	struct clk *clk_core;
+};
+
 static void pxav2_reset(struct sdhci_host *host, u8 mask)
 {
 	struct platform_device *pdev = to_platform_device(mmc_dev(host->mmc));
@@ -179,6 +183,7 @@ static int sdhci_pxav2_probe(struct platform_device *pdev)
 {
 	struct sdhci_pltfm_host *pltfm_host;
 	struct sdhci_pxa_platdata *pdata = pdev->dev.platform_data;
+	struct sdhci_pxav2_host *pxav2_host;
 	struct device *dev = &pdev->dev;
 	struct sdhci_host *host = NULL;
 	const struct of_device_id *match;
@@ -186,11 +191,12 @@ static int sdhci_pxav2_probe(struct platform_device *pdev)
 	int ret;
 	struct clk *clk;
 
-	host = sdhci_pltfm_init(pdev, NULL, 0);
+	host = sdhci_pltfm_init(pdev, NULL, sizeof(*pxav2_host));
 	if (IS_ERR(host))
 		return PTR_ERR(host);
 
 	pltfm_host = sdhci_priv(host);
+	pxav2_host = sdhci_pltfm_priv(pltfm_host);
 
 	clk = devm_clk_get(dev, "io");
 	if (IS_ERR(clk))
@@ -207,6 +213,15 @@ static int sdhci_pxav2_probe(struct platform_device *pdev)
 		goto free;
 	}
 
+	pxav2_host->clk_core = devm_clk_get(dev, "core");
+	if (!IS_ERR(pxav2_host->clk_core)) {
+		ret = clk_prepare_enable(pxav2_host->clk_core);
+		if (ret) {
+			dev_err(&pdev->dev, "failed to enable core clock\n");
+			goto disable_io_clk;
+		}
+	}
+
 	host->quirks = SDHCI_QUIRK_BROKEN_ADMA
 		| SDHCI_QUIRK_BROKEN_TIMEOUT_VAL
 		| SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN;
@@ -243,17 +258,34 @@ static int sdhci_pxav2_probe(struct platform_device *pdev)
 
 	ret = sdhci_add_host(host);
 	if (ret)
-		goto disable_clk;
+		goto disable_core_clk;
 
 	return 0;
 
-disable_clk:
+disable_core_clk:
+	if (!IS_ERR(pxav2_host->clk_core))
+		clk_disable_unprepare(pxav2_host->clk_core);
+disable_io_clk:
 	clk_disable_unprepare(clk);
 free:
 	sdhci_pltfm_free(pdev);
 	return ret;
 }
 
+static int sdhci_pxav2_remove(struct platform_device *pdev)
+{
+	struct sdhci_host *host = platform_get_drvdata(pdev);
+	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
+	struct sdhci_pxav2_host *pxav2_host = sdhci_pltfm_priv(pltfm_host);
+
+	int ret = sdhci_pltfm_unregister(pdev);
+
+	if (!IS_ERR(pxav2_host->clk_core))
+		clk_disable_unprepare(pxav2_host->clk_core);
+
+	return ret;
+}
+
 static struct platform_driver sdhci_pxav2_driver = {
 	.driver		= {
 		.name	= "sdhci-pxav2",
@@ -262,7 +294,7 @@ static struct platform_driver sdhci_pxav2_driver = {
 		.pm	= &sdhci_pltfm_pmops,
 	},
 	.probe		= sdhci_pxav2_probe,
-	.remove		= sdhci_pltfm_unregister,
+	.remove		= sdhci_pxav2_remove,
 };
 
 module_platform_driver(sdhci_pxav2_driver);
-- 
2.34.1


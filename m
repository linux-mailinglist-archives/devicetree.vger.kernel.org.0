Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A768D6668E0
	for <lists+devicetree@lfdr.de>; Thu, 12 Jan 2023 03:25:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236354AbjALCZB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Jan 2023 21:25:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236478AbjALCY7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Jan 2023 21:24:59 -0500
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DAC6E47311
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 18:24:58 -0800 (PST)
Received: by mail-pl1-x633.google.com with SMTP id jl4so18774799plb.8
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 18:24:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1Ehw8mBiggxRq8WSudvoBj00z5PYmqLmLJSqwqdeGxk=;
        b=SHNY1Uyo6XBExi/bsOEjcj18R5HWPPiVQkJdVjKT7IOM9F1JThhGUhOCr4WsQC3w8Z
         QVCA2aJ14U/h85s3S8N2K+IO8QT4APQfb7tarU1U4Yan2uPNNtzVpnm64DGkd4jO7CgO
         qInGcSt+xzdJRirhD5CsAQY7zrGc/oWcOIYDs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1Ehw8mBiggxRq8WSudvoBj00z5PYmqLmLJSqwqdeGxk=;
        b=VJWcIjj8EUxQNGGLrGdLHAEAql9QQ1zU2Z5re16R3XOz80q0DAgD8zEUmt6Ft0P7DI
         qyPWqTeXgMmwLw+kPt0uJJvD7/0a6+jUGMHAKHqGt3l18JIPh/f+VwpVaMoo8w1YlBQ5
         +tb+giV9uM+VqclgeuBPIRhHoKbPl5AqAAyfCASiA9htiPSN6WWhKlJJpSAwv3nXhkkf
         g01TOzMhtJ5lisLLNDYeVXtuSmNByEJikxIujtwByiYAiEnguSsp8LOA3XJ57lamMbDm
         un4+bwsN3Ojlhu+Y+QTuhtjhl94TZZRdoXSGrTA6ZmVp6nOUGxshqWXKm5YDk4xczJrn
         7O/A==
X-Gm-Message-State: AFqh2kpE9Fh3mjT2R9Luf8m9bqN1DtTu2CH7EaczTvOrT0+rZ77Fsgqm
        XJltoKCzcne6bvLnoG1qLfqFcQ==
X-Google-Smtp-Source: AMrXdXsYDQdMyaEQQHaZbXQq/T113A/2DvGmilI8bGzY9Z9GhiC8+BSeRUxAJlklUb44RX+ny49bNA==
X-Received: by 2002:a17:902:7601:b0:192:8e8b:bcf with SMTP id k1-20020a170902760100b001928e8b0bcfmr51666066pll.56.1673490298311;
        Wed, 11 Jan 2023 18:24:58 -0800 (PST)
Received: from doug-ryzen-5700G.. ([192.183.212.197])
        by smtp.gmail.com with ESMTPSA id a1-20020a1709027e4100b00193020e8a90sm10759135pln.294.2023.01.11.18.24.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jan 2023 18:24:57 -0800 (PST)
From:   Doug Brown <doug@schmorgal.com>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Adrian Hunter <adrian.hunter@intel.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        Doug Brown <doug@schmorgal.com>
Subject: [PATCH v4 7/8] mmc: sdhci-pxav2: add optional pinctrl for SDIO IRQ workaround
Date:   Wed, 11 Jan 2023 18:24:15 -0800
Message-Id: <20230112022416.8474-8-doug@schmorgal.com>
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

The PXA168 errata recommends that the CMD signal should be detached from
the SD bus while performing the dummy CMD0 to restart the clock.
Implement this using pinctrl states.

Signed-off-by: Doug Brown <doug@schmorgal.com>
Acked-by: Adrian Hunter <adrian.hunter@intel.com>
---
 drivers/mmc/host/sdhci-pxav2.c | 33 ++++++++++++++++++++++++++++++++-
 1 file changed, 32 insertions(+), 1 deletion(-)

diff --git a/drivers/mmc/host/sdhci-pxav2.c b/drivers/mmc/host/sdhci-pxav2.c
index 10fa9de14ad4..38edd1fcc992 100644
--- a/drivers/mmc/host/sdhci-pxav2.c
+++ b/drivers/mmc/host/sdhci-pxav2.c
@@ -22,6 +22,7 @@
 #include <linux/of_device.h>
 #include <linux/mmc/sdio.h>
 #include <linux/mmc/mmc.h>
+#include <linux/pinctrl/consumer.h>
 
 #include "sdhci.h"
 #include "sdhci-pltfm.h"
@@ -45,6 +46,9 @@
 
 struct sdhci_pxav2_host {
 	struct mmc_request *sdio_mrq;
+	struct pinctrl *pinctrl;
+	struct pinctrl_state *pins_default;
+	struct pinctrl_state *pins_cmd_gpio;
 };
 
 static void pxav2_reset(struct sdhci_host *host, u8 mask)
@@ -104,6 +108,11 @@ static u32 pxav1_irq(struct sdhci_host *host, u32 intmask)
 		/* The dummy CMD0 for the SDIO workaround just completed */
 		sdhci_writel(host, intmask & SDHCI_INT_CMD_MASK, SDHCI_INT_STATUS);
 		intmask &= ~SDHCI_INT_CMD_MASK;
+
+		/* Restore MMC function to CMD pin */
+		if (pxav2_host->pinctrl && pxav2_host->pins_default)
+			pinctrl_select_state(pxav2_host->pinctrl, pxav2_host->pins_default);
+
 		sdio_mrq = pxav2_host->sdio_mrq;
 		pxav2_host->sdio_mrq = NULL;
 		mmc_request_done(host->mmc, sdio_mrq);
@@ -129,6 +138,11 @@ static void pxav1_request_done(struct sdhci_host *host, struct mmc_request *mrq)
 		/* Clock is now stopped, so restart it by sending a dummy CMD0 */
 		pxav2_host = sdhci_pltfm_priv(sdhci_priv(host));
 		pxav2_host->sdio_mrq = mrq;
+
+		/* Set CMD as high output rather than MMC function while we do CMD0 */
+		if (pxav2_host->pinctrl && pxav2_host->pins_cmd_gpio)
+			pinctrl_select_state(pxav2_host->pinctrl, pxav2_host->pins_cmd_gpio);
+
 		sdhci_writel(host, 0, SDHCI_ARGUMENT);
 		sdhci_writew(host, 0, SDHCI_TRANSFER_MODE);
 		sdhci_writew(host, SDHCI_MAKE_CMD(MMC_GO_IDLE_STATE, SDHCI_CMD_RESP_NONE),
@@ -240,6 +254,7 @@ static int sdhci_pxav2_probe(struct platform_device *pdev)
 {
 	struct sdhci_pltfm_host *pltfm_host;
 	struct sdhci_pxa_platdata *pdata = pdev->dev.platform_data;
+	struct sdhci_pxav2_host *pxav2_host;
 	struct device *dev = &pdev->dev;
 	struct sdhci_host *host = NULL;
 	const struct sdhci_pxa_variant *variant;
@@ -247,11 +262,12 @@ static int sdhci_pxav2_probe(struct platform_device *pdev)
 	int ret;
 	struct clk *clk, *clk_core;
 
-	host = sdhci_pltfm_init(pdev, NULL, sizeof(struct sdhci_pxav2_host));
+	host = sdhci_pltfm_init(pdev, NULL, sizeof(*pxav2_host));
 	if (IS_ERR(host))
 		return PTR_ERR(host);
 
 	pltfm_host = sdhci_priv(host);
+	pxav2_host = sdhci_pltfm_priv(pltfm_host);
 
 	clk = devm_clk_get(dev, "io");
 	if (IS_ERR(clk) && PTR_ERR(clk) != -EPROBE_DEFER)
@@ -306,6 +322,21 @@ static int sdhci_pxav2_probe(struct platform_device *pdev)
 	host->quirks |= variant->extra_quirks;
 	host->ops = variant->ops;
 
+	/* Set up optional pinctrl for PXA168 SDIO IRQ fix */
+	pxav2_host->pinctrl = devm_pinctrl_get(dev);
+	if (!IS_ERR(pxav2_host->pinctrl)) {
+		pxav2_host->pins_cmd_gpio = pinctrl_lookup_state(pxav2_host->pinctrl,
+								 "state_cmd_gpio");
+		if (IS_ERR(pxav2_host->pins_cmd_gpio))
+			pxav2_host->pins_cmd_gpio = NULL;
+		pxav2_host->pins_default = pinctrl_lookup_state(pxav2_host->pinctrl,
+								"default");
+		if (IS_ERR(pxav2_host->pins_default))
+			pxav2_host->pins_default = NULL;
+	} else {
+		pxav2_host->pinctrl = NULL;
+	}
+
 	ret = sdhci_add_host(host);
 	if (ret)
 		goto disable_clk;
-- 
2.34.1


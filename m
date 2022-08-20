Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F373159B040
	for <lists+devicetree@lfdr.de>; Sat, 20 Aug 2022 22:00:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235631AbiHTUAM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 20 Aug 2022 16:00:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234472AbiHTT7W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 20 Aug 2022 15:59:22 -0400
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com [IPv6:2607:f8b0:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFD763ECDD
        for <devicetree@vger.kernel.org>; Sat, 20 Aug 2022 12:58:57 -0700 (PDT)
Received: by mail-pf1-x429.google.com with SMTP id z187so7017914pfb.12
        for <devicetree@vger.kernel.org>; Sat, 20 Aug 2022 12:58:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pensando.io; s=google;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc;
        bh=zGt+Ub65YLy++/qay/Cb+UE4unvtuBimX5eqL/7TMUM=;
        b=TmZRC3EWF8Og//JPAlULd5v0S1TGkp4WGJW7K9pjl50UoTBngL5UrEe1G4Qk8Ho9Ie
         4ILENBdR5L33KacZptlf0UImCaI4c4QPCi+sodAbI6JLUzLFG+IF49fqhn248QwZJgeh
         MFpEm6Pgp8aDAhvBxoxxZvPa+9LxkxoV2H7J+xkjZc/2RUUkOUx+fUApQti+pUgjZ7rR
         loJAWzpHyZ8Vc8kPX73CcTpQnV/KvJELOEx8e19MI93uSVOkZzh0b6R3bXZEGtNACEwH
         +1+G4MnoLiSIzsXNMWGGp0rKptHTlxwwSEQanHyD3s1iXZsMWcVkOkHOvDhoyljr+zC8
         8R6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc;
        bh=zGt+Ub65YLy++/qay/Cb+UE4unvtuBimX5eqL/7TMUM=;
        b=IzZ3i+3TWFjE8Q7BhmsEzh1QFPhoYc7CwMltKnLwCbt5wsTREoPwI2ukOg5aiu25tu
         GsxyOvI7vN7qj0X4ykvcBY6Ac93uLZiy4Q07UN1eequvQE4pMHOoHFCPQV/i8td++SO+
         uo6p2e0DD5EtusmHu9WALLnYlnafLyZyTj4w1JK93NxJTBOEUiDx8gf7mkNw7cbXh4jt
         BzKaqQvsvb262XQLgM4sKSqQOcBD/A/4nfRtoouRBlm8Mr68nvs5t6LiP8xPg+gWvgfl
         TLTE+auTU1XkwYFQSp9ztQQCVVc++gNY4fP3e+3TAmlP/UvXDLJMbIq1bLotRVpErb5y
         rgLg==
X-Gm-Message-State: ACgBeo07wZRfHFtnvVBZRhJkUdEtkYjU4dCyygAr1JsUJ3aNDMsuEwfk
        Iy6t8ZRxPSIwTBRBAosYM3im0g==
X-Google-Smtp-Source: AA6agR6/XLzCOh2MShdUU+7otmn1iBALg3qnsbHFqUvVZd3MLhpWCg89wZ6o9bLcqYMqTj3hP+mhgw==
X-Received: by 2002:a05:6a02:185:b0:41c:30f7:1fea with SMTP id bj5-20020a056a02018500b0041c30f71feamr10846700pgb.487.1661025537556;
        Sat, 20 Aug 2022 12:58:57 -0700 (PDT)
Received: from platform-dev1.pensando.io ([12.226.153.42])
        by smtp.gmail.com with ESMTPSA id u66-20020a626045000000b005363bc65bb1sm2316794pfb.91.2022.08.20.12.58.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Aug 2022 12:58:56 -0700 (PDT)
From:   Brad Larson <brad@pensando.io>
To:     linux-arm-kernel@lists.infradead.org
Cc:     linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
        adrian.hunter@intel.com, alcooperx@gmail.com,
        andy.shevchenko@gmail.com, arnd@arndb.de, brad@pensando.io,
        blarson@amd.com, brijeshkumar.singh@amd.com,
        catalin.marinas@arm.com, gsomlo@gmail.com, gerg@linux-m68k.org,
        krzk@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        lee.jones@linaro.org, broonie@kernel.org,
        yamada.masahiro@socionext.com, p.zabel@pengutronix.de,
        piotrs@cadence.com, p.yadav@ti.com, rdunlap@infradead.org,
        robh+dt@kernel.org, samuel@sholland.org, fancer.lancer@gmail.com,
        suravee.suthikulpanit@amd.com, thomas.lendacky@amd.com,
        ulf.hansson@linaro.org, will@kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v6 17/17] mmc: sdhci-cadence: Support mmc hardware reset
Date:   Sat, 20 Aug 2022 12:57:50 -0700
Message-Id: <20220820195750.70861-18-brad@pensando.io>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220820195750.70861-1-brad@pensando.io>
References: <20220820195750.70861-1-brad@pensando.io>
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
        DKIM_SIGNED,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Brad Larson <blarson@amd.com>

Add support for mmc hardware reset with a reset-controller
which would need to be enabled in the device tree with
a supporting driver.  The default is disabled for all
existing designs.

Signed-off-by: Brad Larson <blarson@amd.com>
---
 drivers/mmc/host/sdhci-cadence.c | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/mmc/host/sdhci-cadence.c b/drivers/mmc/host/sdhci-cadence.c
index c662c63d49fa..35d37b9aba63 100644
--- a/drivers/mmc/host/sdhci-cadence.c
+++ b/drivers/mmc/host/sdhci-cadence.c
@@ -12,6 +12,7 @@
 #include <linux/mmc/mmc.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
+#include <linux/reset.h>
 
 #include "sdhci-pltfm.h"
 
@@ -70,6 +71,7 @@ struct sdhci_cdns_priv {
 	spinlock_t wrlock;	/* write lock */
 	bool enhanced_strobe;
 	void (*priv_writel)(struct sdhci_cdns_priv *priv, u32 val, void __iomem *reg);
+	struct reset_control *rst_hw;
 	unsigned int nr_phy_params;
 	struct sdhci_cdns_phy_param phy_params[];
 };
@@ -458,6 +460,22 @@ static void sdhci_cdns_hs400_enhanced_strobe(struct mmc_host *mmc,
 					 SDHCI_CDNS_HRS06_MODE_MMC_HS400);
 }
 
+static void sdhci_mmc_hw_reset(struct mmc_host *mmc)
+{
+	struct sdhci_host *host = mmc_priv(mmc);
+	struct sdhci_cdns_priv *priv = sdhci_cdns_priv(host);
+
+	dev_info(mmc_dev(host->mmc), "emmc hardware reset\n");
+
+	reset_control_assert(priv->rst_hw);
+	/* For eMMC, minimum is 1us but give it 9us for good measure */
+	udelay(9);
+
+	reset_control_deassert(priv->rst_hw);
+	/* For eMMC, minimum is 200us but give it 300us for good measure */
+	usleep_range(300, 1000);
+}
+
 static int sdhci_cdns_probe(struct platform_device *pdev)
 {
 	struct sdhci_host *host;
@@ -520,6 +538,17 @@ static int sdhci_cdns_probe(struct platform_device *pdev)
 	if (ret)
 		goto free;
 
+	if (host->mmc->caps & MMC_CAP_HW_RESET) {
+		priv->rst_hw = devm_reset_control_get_optional_exclusive(dev, "hw");
+		if (IS_ERR(priv->rst_hw)) {
+			ret = PTR_ERR(priv->rst_hw);
+			if (ret == -ENOENT)
+				priv->rst_hw = NULL;
+		} else {
+			host->mmc_host_ops.card_hw_reset = sdhci_mmc_hw_reset;
+		}
+	}
+
 	ret = sdhci_add_host(host);
 	if (ret)
 		goto free;
-- 
2.17.1


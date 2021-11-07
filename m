Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A67244475D5
	for <lists+devicetree@lfdr.de>; Sun,  7 Nov 2021 21:31:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236558AbhKGUdV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 Nov 2021 15:33:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236566AbhKGUdI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 Nov 2021 15:33:08 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CE30C079785
        for <devicetree@vger.kernel.org>; Sun,  7 Nov 2021 12:30:05 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id j2so31651866lfg.3
        for <devicetree@vger.kernel.org>; Sun, 07 Nov 2021 12:30:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=I+qK7/brq27ekH8nrj1tS/lSC1KVkFATkys6si61XPg=;
        b=emsUoD0UPMXYEQnBBNozpHlD8Lp5cBTMi6QYw/WDxeqBn9y+8GFBD1r36kPaiuQvMR
         4voUCS62JqA4az0uDfsUIUkJHxB8U4QUepoqIMIoxPV6SaBEzwEsZZ7LsX/kiMvKd1FD
         hSzRU1TbUfmG5Asg7n2/tfvkY3WgFEJlYsMJ61AGBPloAp52GGMrA1esxOEeirZoAAUW
         zOciY5PePC1qHhO+1RUsAT9IB3OC1Ike55ExGpzlg3h4gF3RCjeIq9V0O6SP3+XAmI19
         z8PNZSVZV1Gjec8YdVM0EVlf4SLAC3Ua5qpp4hhD0e/4CMRj/TyJ/Eo0uVx5ElAt/Jmr
         Q//w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=I+qK7/brq27ekH8nrj1tS/lSC1KVkFATkys6si61XPg=;
        b=LWyR076aKVGX/0ah9IHqfNL3mjMMfsZumZmQ8xhtug58fRZr2LfMntLX37F1H6udke
         IisiZkhM1q+6YEZpvVVz4zYNqaO+hhCOp4CZS6omniUh67r/mMD0/X4rUBKtt2NsNuZu
         TzNvO27/Gtu4m8HAieIRN+rQ5du+Hs6GHRXJu0xykXfaLttuL8xvRiELIg7OvnSf0fET
         OdR82O8AWgkU7NdwnuO3V+D6YprDicWG9AK86SN/xTA+lLb4C/FznQnftovAZsugXmjW
         b8WT8sxUbKoViZuB7cmBxM4zJ6hAYJl7VITePSwHHVDQ8e9eNBhB9LztGrrnUHVmrfbc
         6a/g==
X-Gm-Message-State: AOAM533XmyICEXhMMFbsDBYAr5sKY8DSs3ScpuFnbv+nc+Lnwdl313NQ
        B2fxIT29et+SjXu1Ct5mmg2mwQ==
X-Google-Smtp-Source: ABdhPJx7pniBfJ046V9vGEp2NO/Qje5fxun851MFD75SQmupF8hRyft85IIKB+QhHAxj/ZusubgkMw==
X-Received: by 2002:a05:6512:261f:: with SMTP id bt31mr68786209lfb.506.1636317003797;
        Sun, 07 Nov 2021 12:30:03 -0800 (PST)
Received: from localhost ([31.134.121.151])
        by smtp.gmail.com with ESMTPSA id h13sm1114714lfv.90.2021.11.07.12.30.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Nov 2021 12:30:03 -0800 (PST)
From:   Sam Protsenko <semen.protsenko@linaro.org>
To:     Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
Subject: [PATCH v3 11/12] watchdog: s3c2410: Remove superfluous err label
Date:   Sun,  7 Nov 2021 22:29:42 +0200
Message-Id: <20211107202943.8859-12-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211107202943.8859-1-semen.protsenko@linaro.org>
References: <20211107202943.8859-1-semen.protsenko@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

'err' label in probe function is not really need, it just returns.
Remove it and replace all 'goto' statements with actual returns in
place.

No functional change here, just a cleanup patch.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
Changes in v3:
  - Added R-b tag by Krzysztof Kozlowski

Changes in v2:
  - (none): it's a new patch

 drivers/watchdog/s3c2410_wdt.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/watchdog/s3c2410_wdt.c b/drivers/watchdog/s3c2410_wdt.c
index f31bc765a8a5..96aa5d9c6ed4 100644
--- a/drivers/watchdog/s3c2410_wdt.c
+++ b/drivers/watchdog/s3c2410_wdt.c
@@ -627,22 +627,18 @@ static int s3c2410wdt_probe(struct platform_device *pdev)
 	wdt_irq = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 	if (wdt_irq == NULL) {
 		dev_err(dev, "no irq resource specified\n");
-		ret = -ENOENT;
-		goto err;
+		return -ENOENT;
 	}
 
 	/* get the memory region for the watchdog timer */
 	wdt->reg_base = devm_platform_ioremap_resource(pdev, 0);
-	if (IS_ERR(wdt->reg_base)) {
-		ret = PTR_ERR(wdt->reg_base);
-		goto err;
-	}
+	if (IS_ERR(wdt->reg_base))
+		return PTR_ERR(wdt->reg_base);
 
 	wdt->bus_clk = devm_clk_get(dev, "watchdog");
 	if (IS_ERR(wdt->bus_clk)) {
 		dev_err(dev, "failed to find bus clock\n");
-		ret = PTR_ERR(wdt->bus_clk);
-		goto err;
+		return PTR_ERR(wdt->bus_clk);
 	}
 
 	ret = clk_prepare_enable(wdt->bus_clk);
@@ -757,7 +753,6 @@ static int s3c2410wdt_probe(struct platform_device *pdev)
  err_bus_clk:
 	clk_disable_unprepare(wdt->bus_clk);
 
- err:
 	return ret;
 }
 
-- 
2.30.2


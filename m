Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ADFAD440E42
	for <lists+devicetree@lfdr.de>; Sun, 31 Oct 2021 13:22:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231766AbhJaMZB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 31 Oct 2021 08:25:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50976 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231792AbhJaMY5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 31 Oct 2021 08:24:57 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C14C9C061766
        for <devicetree@vger.kernel.org>; Sun, 31 Oct 2021 05:22:25 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id 5so53958785edw.7
        for <devicetree@vger.kernel.org>; Sun, 31 Oct 2021 05:22:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LNl1brM/0oXFKhQmO4fHWOzGU7TOB+zbc6A9TEvFH+g=;
        b=Mt4GxUwluXo6qfBzqJMCobzIh/e7NlPjR790yx6wBKljB2HMFxyT7ed8dNUBNwYMid
         Ruxtc072sOhL/BHpKkDoqR8HiMNg3zYpqbIMIlsIixVI3xjgWTmtOjTJQX/VFivOGE17
         12RRSAqhQ6gIHBH7/HMSzFfIQflHwIhbt6QbFu6F8kyZyVGUiWhR7b8p0bpUMEXgKV/R
         yX6Tu1D9pRFMz4QTRFgksACTUvj2/jQ9bCqXg3Ro1CzswG326XRVp7efQqhVbord/cIv
         dmYn2evhkTa34BXF6wcbHrmmat8kIGiUGfIMud3UsS9Y5lNDqZsRyCLUU2ZsydSKgp69
         D2Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LNl1brM/0oXFKhQmO4fHWOzGU7TOB+zbc6A9TEvFH+g=;
        b=zRYgJVxtKXWR+IjQq1FnGtlCEOFHioJZMl0HnHatxHISsPqfeock66wZkh0CZnVqx9
         TebbY5MirsOn5CizprK958qWj1qp1PJp9Kgh2Kf/w8Pb5tX+w139kCfEmJ+ffE94UL6e
         OLy04F3HcuLXwRAPrkl+919HV3gnW/7bM/DXVs0e/sxNwtQgvpuzgToE+fN5+jxwiVm6
         /efvo48hKtJFNhXW4v5TfQLwjBXPcE3lOZ/EfojA+xzMaKbN+HAnOKgjndgmLtnEDI6X
         Z01r1eL56nfZOpGt9WTJUL+hvVeESak6X2PREOA5KK8tbxdcX7XIQg6JB7Wjijg2dKhm
         tlqA==
X-Gm-Message-State: AOAM531NywQW/Nb4ioj96RJvLCkJyPYW/O9uWKX8gWYr74EG1j7LhZ5P
        CWgrebwmeARrQCphnxpNMS7z7g==
X-Google-Smtp-Source: ABdhPJyJ0+tkYyi6vFJFEgzcRpei2xggOdrZBJZMRcg/vJFYotRsaVbIQq2Qbf0/XD5FsOzRz95udw==
X-Received: by 2002:a05:6402:5c9:: with SMTP id n9mr3212732edx.395.1635682944363;
        Sun, 31 Oct 2021 05:22:24 -0700 (PDT)
Received: from localhost ([31.134.121.151])
        by smtp.gmail.com with ESMTPSA id u23sm6983345edr.97.2021.10.31.05.22.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Oct 2021 05:22:23 -0700 (PDT)
From:   Sam Protsenko <semen.protsenko@linaro.org>
To:     Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
Subject: [PATCH v2 04/12] watchdog: s3c2410: Let kernel kick watchdog
Date:   Sun, 31 Oct 2021 14:22:08 +0200
Message-Id: <20211031122216.30212-5-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211031122216.30212-1-semen.protsenko@linaro.org>
References: <20211031122216.30212-1-semen.protsenko@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

When "tmr_atboot" module param is set, the watchdog is started in
driver's probe. In that case, also set WDOG_HW_RUNNING bit to let
watchdog core driver know it's running. This way watchdog core can kick
the watchdog for us (if CONFIG_WATCHDOG_HANDLE_BOOT_ENABLED option is
enabled), until user space takes control.

WDOG_HW_RUNNING bit must be set before registering the watchdog. So the
"tmr_atboot" handling code is moved before watchdog registration, to
avoid performing the same check twice. This is also logical because
WDOG_HW_RUNNING bit makes WDT core expect actually running watchdog.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
Changes in v2:
  - Added explanation on moving the code block to commit message
  - [PATCH 03/12] handles the case when tmr_atboot is present but valid
    timeout wasn't found

 drivers/watchdog/s3c2410_wdt.c | 26 +++++++++++++++-----------
 1 file changed, 15 insertions(+), 11 deletions(-)

diff --git a/drivers/watchdog/s3c2410_wdt.c b/drivers/watchdog/s3c2410_wdt.c
index 00421cf22556..0845c05034a1 100644
--- a/drivers/watchdog/s3c2410_wdt.c
+++ b/drivers/watchdog/s3c2410_wdt.c
@@ -604,6 +604,21 @@ static int s3c2410wdt_probe(struct platform_device *pdev)
 	wdt->wdt_device.bootstatus = s3c2410wdt_get_bootstatus(wdt);
 	wdt->wdt_device.parent = dev;
 
+	/*
+	 * If "tmr_atboot" param is non-zero, start the watchdog right now. Also
+	 * set WDOG_HW_RUNNING bit, so that watchdog core can kick the watchdog.
+	 *
+	 * If we're not enabling the watchdog, then ensure it is disabled if it
+	 * has been left running from the bootloader or other source.
+	 */
+	if (tmr_atboot) {
+		dev_info(dev, "starting watchdog timer\n");
+		s3c2410wdt_start(&wdt->wdt_device);
+		set_bit(WDOG_HW_RUNNING, &wdt->wdt_device.status);
+	} else {
+		s3c2410wdt_stop(&wdt->wdt_device);
+	}
+
 	ret = watchdog_register_device(&wdt->wdt_device);
 	if (ret)
 		goto err_cpufreq;
@@ -612,17 +627,6 @@ static int s3c2410wdt_probe(struct platform_device *pdev)
 	if (ret < 0)
 		goto err_unregister;
 
-	if (tmr_atboot) {
-		dev_info(dev, "starting watchdog timer\n");
-		s3c2410wdt_start(&wdt->wdt_device);
-	} else {
-		/* if we're not enabling the watchdog, then ensure it is
-		 * disabled if it has been left running from the bootloader
-		 * or other source */
-
-		s3c2410wdt_stop(&wdt->wdt_device);
-	}
-
 	platform_set_drvdata(pdev, wdt);
 
 	/* print out a statement of readiness */
-- 
2.30.2


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A93EB65915F
	for <lists+devicetree@lfdr.de>; Thu, 29 Dec 2022 21:05:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233504AbiL2UFF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Dec 2022 15:05:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233818AbiL2UFE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Dec 2022 15:05:04 -0500
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED77013EB5
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 12:05:02 -0800 (PST)
Received: by mail-pj1-x1029.google.com with SMTP id v23so20248561pju.3
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 12:05:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KFjpQddF6K9jQuFhw0EZBw3KCqxEcEHNGaoCdbNy9Uw=;
        b=kewFcvPnmlK/daoedJ07uHcuNvIXEj8SG32nFgtaneG8Vk00S3miIVACLw+x/4+5XO
         HyhmjbkPjPC72TFziQuJKWLqAk5/0xEgKpvpJkKCC34lngvWsP3QXpTZlj6CswA/ZZA+
         RIYvIBZvUKDbTfqAHDg9Pil8Me3L9Saj5kCFw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KFjpQddF6K9jQuFhw0EZBw3KCqxEcEHNGaoCdbNy9Uw=;
        b=gkGcA8erw8afmAvcwPEYMzu4tBESO/SJiIg19EG2MBT37PufJy+sX+8JlQHOxgrF/p
         IBSeZO0EyzMOa6jq5xw+KcROQYJ//0sAcTwZGe5HobcQ/iRmxGN3W5aymC+tdhMPYlNJ
         GMCB1vXeMg9ILMSi6+vkq2h5xhqKUBbA0RCq4v9EzT+/SseHC1I+hS8cyX8bKaQSQ9yb
         1wvdCmFQNsVUMX17fB8+DisYGdmXPGxsgg2IUfqP9ttMzY8q0vcmqlZFzYR56btagmK3
         +PemKOoQe6VpfKGcyk4ZxbfuiZnOD4rbwE6vo6cLzro+VlBvzBlbK8ZJmxlptKDtHjgA
         x0Tw==
X-Gm-Message-State: AFqh2kpBvdPLWJJc29xT2kF+K6dp5owXIM5m1cNcyOB2+uHWXNcZc23m
        NBAwSHEaLLUvlDHscBbEatxOjg==
X-Google-Smtp-Source: AMrXdXsRMMggph1dSmqk1DtjLX0D9GUCc0yQufbYA5KUQ3uQUn+V2j4jyqiSafsbRuz+q/xqxDV2TA==
X-Received: by 2002:a17:903:12d7:b0:189:854a:fff3 with SMTP id io23-20020a17090312d700b00189854afff3mr28679184plb.23.1672344302232;
        Thu, 29 Dec 2022 12:05:02 -0800 (PST)
Received: from doug-ryzen-5700G.. ([192.183.212.197])
        by smtp.gmail.com with ESMTPSA id w17-20020a170902e89100b00189ac5a2340sm13438589plg.124.2022.12.29.12.05.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Dec 2022 12:05:01 -0800 (PST)
From:   Doug Brown <doug@schmorgal.com>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Adrian Hunter <adrian.hunter@intel.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        Doug Brown <doug@schmorgal.com>
Subject: [PATCH v3 5/8] mmc: sdhci-pxav2: add optional core clock
Date:   Thu, 29 Dec 2022 12:04:08 -0800
Message-Id: <20221229200411.295339-6-doug@schmorgal.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221229200411.295339-1-doug@schmorgal.com>
References: <20221229200411.295339-1-doug@schmorgal.com>
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
 drivers/mmc/host/sdhci-pxav2.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/mmc/host/sdhci-pxav2.c b/drivers/mmc/host/sdhci-pxav2.c
index f5c86e1ba734..b10f55b478fc 100644
--- a/drivers/mmc/host/sdhci-pxav2.c
+++ b/drivers/mmc/host/sdhci-pxav2.c
@@ -191,7 +191,7 @@ static int sdhci_pxav2_probe(struct platform_device *pdev)
 	const struct sdhci_pxa_variant *variant;
 
 	int ret;
-	struct clk *clk;
+	struct clk *clk, *clk_core;
 
 	host = sdhci_pltfm_init(pdev, NULL, 0);
 	if (IS_ERR(host))
@@ -214,6 +214,12 @@ static int sdhci_pxav2_probe(struct platform_device *pdev)
 		goto free;
 	}
 
+	clk_core = devm_clk_get_optional_enabled(dev, "core");
+	if (IS_ERR(clk_core)) {
+		dev_err_probe(dev, PTR_ERR(clk_core), "failed to enable core clock\n");
+		goto disable_clk;
+	}
+
 	host->quirks = SDHCI_QUIRK_BROKEN_ADMA
 		| SDHCI_QUIRK_BROKEN_TIMEOUT_VAL
 		| SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN;
-- 
2.34.1


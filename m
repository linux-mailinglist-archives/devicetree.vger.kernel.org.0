Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A06566CFB9
	for <lists+devicetree@lfdr.de>; Mon, 16 Jan 2023 20:44:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233857AbjAPToz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Jan 2023 14:44:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233914AbjAPTov (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Jan 2023 14:44:51 -0500
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12BD02CC58
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 11:44:50 -0800 (PST)
Received: by mail-pl1-x633.google.com with SMTP id k12so9222195plk.0
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 11:44:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MY5kf847zY0nN9lKzWJgGUhJ3Yit9Nb6tzRd8EwwrE0=;
        b=ZZ/FQ4Pb5VLNmaqh3DetovgycLhPjdlVhGYnnT1PlKhOw6wCs+LUeFb0mWhJ4n00yk
         yGj0AGH8dDXpMoNf9MKu/5f7AOVVUn4L+YUsh0zDqMGXnJEnZST6l3xqmv7MNJhavTP0
         0f+ORcYJCBizuyMkfqdCxEKFMbD144okWIYd4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MY5kf847zY0nN9lKzWJgGUhJ3Yit9Nb6tzRd8EwwrE0=;
        b=aIJV4g7MWK/JRx1lR68Dh75XciixXPSsLyJMdo7ztPzFNugm8JgRcgDKG+L1Llfpe6
         KxBQmpSHXOvsMbUYxULosgSU2FVTG46gTTgOFp8eUPk1YcJu0d3QX+P6rDLTEo4zwQlV
         dlHiVXAKGRfORMcpBXISO9WJthyq7qvpcek38eZ1/URDMQoc8YNXX+6htJfpYveYF001
         euFTztGrUTct6pk9XcYrZDjwQCilEm6LxCFCbpI7845VaycIRUSD4gWZQwt/3qjLPbzE
         a0dK/IrCZWol4kk4X9RgQC9ZuPIRIaXc7+/ExOOGljnSzQGu0dNfB46axpXdmGIwbpC5
         PHrA==
X-Gm-Message-State: AFqh2kpixepvwN6ZMMCWZCPT7fW53+rIiPmiRWVDQ7ckhBwAyDeebOLO
        dKOcb5m4N+uKgSZ9tSzHMACm1g==
X-Google-Smtp-Source: AMrXdXu7LX8J0YgkYfZOFsZB5M2RQdPva+1b3z/ocNn4FConU3pe1sX2UUPpQG0a06B9a6rVjp6Riw==
X-Received: by 2002:a17:902:8a8a:b0:191:13f2:173a with SMTP id p10-20020a1709028a8a00b0019113f2173amr816676plo.36.1673898289317;
        Mon, 16 Jan 2023 11:44:49 -0800 (PST)
Received: from doug-ryzen-5700G.. ([192.183.212.197])
        by smtp.gmail.com with ESMTPSA id t13-20020a170902b20d00b001926a76e8absm19734663plr.114.2023.01.16.11.44.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jan 2023 11:44:48 -0800 (PST)
From:   Doug Brown <doug@schmorgal.com>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Adrian Hunter <adrian.hunter@intel.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        Doug Brown <doug@schmorgal.com>,
        kernel test robot <lkp@intel.com>,
        Dan Carpenter <error27@gmail.com>
Subject: [PATCH v5 5/8] mmc: sdhci-pxav2: add optional core clock
Date:   Mon, 16 Jan 2023 11:43:58 -0800
Message-Id: <20230116194401.20372-6-doug@schmorgal.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230116194401.20372-1-doug@schmorgal.com>
References: <20230116194401.20372-1-doug@schmorgal.com>
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

Reported-by: kernel test robot <lkp@intel.com>
Reported-by: Dan Carpenter <error27@gmail.com>
Signed-off-by: Doug Brown <doug@schmorgal.com>
---
The Reported-by tags above refer to a missing assignment to ret in an
earlier version of this patch. The kernel test robot caught it.

 drivers/mmc/host/sdhci-pxav2.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/mmc/host/sdhci-pxav2.c b/drivers/mmc/host/sdhci-pxav2.c
index f5c86e1ba734..3141901e1558 100644
--- a/drivers/mmc/host/sdhci-pxav2.c
+++ b/drivers/mmc/host/sdhci-pxav2.c
@@ -191,7 +191,7 @@ static int sdhci_pxav2_probe(struct platform_device *pdev)
 	const struct sdhci_pxa_variant *variant;
 
 	int ret;
-	struct clk *clk;
+	struct clk *clk, *clk_core;
 
 	host = sdhci_pltfm_init(pdev, NULL, 0);
 	if (IS_ERR(host))
@@ -214,6 +214,13 @@ static int sdhci_pxav2_probe(struct platform_device *pdev)
 		goto free;
 	}
 
+	clk_core = devm_clk_get_optional_enabled(dev, "core");
+	if (IS_ERR(clk_core)) {
+		ret = PTR_ERR(clk_core);
+		dev_err_probe(dev, ret, "failed to enable core clock\n");
+		goto disable_clk;
+	}
+
 	host->quirks = SDHCI_QUIRK_BROKEN_ADMA
 		| SDHCI_QUIRK_BROKEN_TIMEOUT_VAL
 		| SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN;
-- 
2.34.1


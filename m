Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4641E63FE97
	for <lists+devicetree@lfdr.de>; Fri,  2 Dec 2022 04:14:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231281AbiLBDOC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Dec 2022 22:14:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231493AbiLBDOA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Dec 2022 22:14:00 -0500
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com [IPv6:2607:f8b0:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A03E8D49D2
        for <devicetree@vger.kernel.org>; Thu,  1 Dec 2022 19:13:59 -0800 (PST)
Received: by mail-pg1-x52c.google.com with SMTP id 62so3311736pgb.13
        for <devicetree@vger.kernel.org>; Thu, 01 Dec 2022 19:13:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=agIvM+RESqFOi6zq2PfLhwbAmjFDfRo+ieTUEwufHOc=;
        b=eaVziJwbJ8GXqtHJD7dVAD9LkmXFaz+/poyw0LaBJDLiFpSyHR+1VRLe/nqkKbrDki
         zMFNro3K5/jF+5N2wM8g6zjqN/SUzk6j48iJrdU4dmje0CkvEX0Y8vgtCS8Zo2ChzbG1
         5K1y6rNSZDThLxCrWlpCeWeEk3ZfnErSv3xZs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=agIvM+RESqFOi6zq2PfLhwbAmjFDfRo+ieTUEwufHOc=;
        b=KWcooYFuLgiLuBsPwIrGMsYNnnz7yYASSMQmDk090QgTuZhjLH6caliqVEduLvFQ+T
         xWOLpxDTmVElvj+zyf8j0jGl6ibPVHsg5/MOU6XODUNMLoya6OR7jiDeicSLl4PCny3O
         86tZew5nC4atjuP7WLko2j2WXj95xvVSvgnthfMHAXXZ7MoGHtgwGydhVSVpwHAbm6qd
         WBjH4cCj7N0h3cjJrVjws5OEIeWtRtB+mWDJ+73qinGQN9kUdK4QvEgSCIQUUksEnh3t
         Ey5T/GzxWRnTpNkv2d/uNn9bfqUm4m53Vk5gtC3GFZECdC6JrpWfqnQb2HkOcCTV6tNt
         9w/w==
X-Gm-Message-State: ANoB5pkbj6nZDcd+xi+VYY72r0dasYiD4T3jBkXESHNGoqnKlVuX9rxE
        01KSszSKvrRariHPs6s+VvXw9Q==
X-Google-Smtp-Source: AA0mqf4K1NiC1zJPzjzp/rwODq9vS7RxKPAosQIViGm6J4QjknqA1LGCxbi/8+JFxVBqnV+XLQPZlA==
X-Received: by 2002:a63:e510:0:b0:476:a862:53d2 with SMTP id r16-20020a63e510000000b00476a86253d2mr42354672pgh.163.1669950839021;
        Thu, 01 Dec 2022 19:13:59 -0800 (PST)
Received: from doug-ryzen-5700G.. ([192.183.212.197])
        by smtp.gmail.com with ESMTPSA id jx24-20020a17090b46d800b00213202d77d9sm3708410pjb.43.2022.12.01.19.13.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 19:13:58 -0800 (PST)
From:   Doug Brown <doug@schmorgal.com>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Adrian Hunter <adrian.hunter@intel.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        Doug Brown <doug@schmorgal.com>
Subject: [PATCH v2 4/8] mmc: sdhci-pxav2: change clock name to match DT bindings
Date:   Thu,  1 Dec 2022 19:13:26 -0800
Message-Id: <20221202031330.94130-5-doug@schmorgal.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221202031330.94130-1-doug@schmorgal.com>
References: <20221202031330.94130-1-doug@schmorgal.com>
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

The devicetree bindings for this driver specify that the two allowed
clock names are io and core. Change this driver to look for io, but
allow any name if it fails for backwards compatibility. Follow the same
pattern used in sdhci-pxav3.

Signed-off-by: Doug Brown <doug@schmorgal.com>
---
 drivers/mmc/host/sdhci-pxav2.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/mmc/host/sdhci-pxav2.c b/drivers/mmc/host/sdhci-pxav2.c
index 0a16098b963f..509ba5dd4a4a 100644
--- a/drivers/mmc/host/sdhci-pxav2.c
+++ b/drivers/mmc/host/sdhci-pxav2.c
@@ -189,7 +189,9 @@ static int sdhci_pxav2_probe(struct platform_device *pdev)
 
 	pltfm_host = sdhci_priv(host);
 
-	clk = devm_clk_get(dev, "PXA-SDHCLK");
+	clk = devm_clk_get(dev, "io");
+	if (IS_ERR(clk))
+		clk = devm_clk_get(dev, NULL);
 	if (IS_ERR(clk)) {
 		dev_err(dev, "failed to get io clock\n");
 		ret = PTR_ERR(clk);
-- 
2.34.1


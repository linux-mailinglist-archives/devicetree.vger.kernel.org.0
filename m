Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 65878639F94
	for <lists+devicetree@lfdr.de>; Mon, 28 Nov 2022 03:44:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229605AbiK1Coz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Nov 2022 21:44:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229683AbiK1Cox (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Nov 2022 21:44:53 -0500
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3F6D6270
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 18:44:52 -0800 (PST)
Received: by mail-pf1-x42e.google.com with SMTP id b29so9128118pfp.13
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 18:44:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Kwkzsxls5ZWblSq857VINffaoA+3YsLSkG7RdKigW24=;
        b=E65i522lAPGxtB0Jjp9iAOdnEHGT70IwSQZ8r+AQKPbRARFTOp9riib2vgA6OXFuQd
         hYSuUZZS0BbKykDE8MKRhMr8DDBd6zPUH5j0t+XrRufd4eaJsskG2WuZARBn7UA8zUhu
         4Xq9zVqu25ATDLJw3Ge2WkCK9I/4PsDzvEoY0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Kwkzsxls5ZWblSq857VINffaoA+3YsLSkG7RdKigW24=;
        b=IwPjm8lbuqE4oCu36OZ/SyShxg7xfF0uxxCMEPW072VdoUcZTEJXOgBF+4I/XA0Q6e
         mNL/jiTG6pD162euTAMLwdK1i3hl3YlCt4ONohBDUX9GlWE3qgfMYYhJZwV/Ibn+6Nju
         rP/jz7PWFBzvCj9YLo3vZN+7+U3Cu8q3+21WblMDbgsVhaiOF5Szrwg4nXNEMl3Sc0VV
         Cj62A++h/7cBKxtJO7/Nn5phfqEzmRLwLeQxhlPYFKlWfoP6UloJn11QWr+ty1YI6KSz
         RSKAtf6zPsE38gmIQOgMKSJLdpXDqqlbmGGsQaifETBkILal5k/bcyYUalHh0X20KeJK
         UDDQ==
X-Gm-Message-State: ANoB5pnJQeIYqYE4j9s0DE8mb503ixr9n/w9fALhxBSmUC61cwUz1kog
        T4+d1SJKDgrFV3BUGhVQzT74MQ==
X-Google-Smtp-Source: AA0mqf4BeNiJxg1a+9CVbsFBMOpOCIpJF+fUVWmNi6djSdwWpDpvsDlucTpIcmcm078pnnI0z3hvgQ==
X-Received: by 2002:a05:6a00:26c8:b0:574:c159:ce3b with SMTP id p8-20020a056a0026c800b00574c159ce3bmr13624667pfw.74.1669603492220;
        Sun, 27 Nov 2022 18:44:52 -0800 (PST)
Received: from doug-ryzen-5700G.. ([192.183.212.197])
        by smtp.gmail.com with ESMTPSA id z16-20020aa79910000000b005752201d4ffsm1431568pff.213.2022.11.27.18.44.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Nov 2022 18:44:51 -0800 (PST)
From:   Doug Brown <doug@schmorgal.com>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Adrian Hunter <adrian.hunter@intel.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        Doug Brown <doug@schmorgal.com>
Subject: [PATCH 4/8] mmc: sdhci-pxav2: change clock name to match DT bindings
Date:   Sun, 27 Nov 2022 18:44:03 -0800
Message-Id: <20221128024407.224393-5-doug@schmorgal.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221128024407.224393-1-doug@schmorgal.com>
References: <20221128024407.224393-1-doug@schmorgal.com>
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
pattern used in sdhci-pxav3.

Signed-off-by: Doug Brown <doug@schmorgal.com>
---
 drivers/mmc/host/sdhci-pxav2.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/mmc/host/sdhci-pxav2.c b/drivers/mmc/host/sdhci-pxav2.c
index d76131b8986b..a0c882d03d0b 100644
--- a/drivers/mmc/host/sdhci-pxav2.c
+++ b/drivers/mmc/host/sdhci-pxav2.c
@@ -192,7 +192,9 @@ static int sdhci_pxav2_probe(struct platform_device *pdev)
 
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


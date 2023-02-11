Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 75E8B692ED2
	for <lists+devicetree@lfdr.de>; Sat, 11 Feb 2023 07:40:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229663AbjBKGkC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 11 Feb 2023 01:40:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229768AbjBKGj4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 11 Feb 2023 01:39:56 -0500
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2092BDBC7
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 22:39:53 -0800 (PST)
Received: by mail-ot1-x32b.google.com with SMTP id v24-20020a05683011d800b0068bdd29b160so2210093otq.13
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 22:39:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+MhuA4Hcp/lVQHlfxLRLLaWYCwZ7dT0qzyi0BQVRFws=;
        b=zTCsyNP77wiVJv3iupkgRsZMAmonQDgktigW3x4DJrpXxijiGVEqAH0CPM0jF71wBl
         mwLHF55QSkg4nPda0vDmo8Vio/CfD0pS+yZMrIPrfZbOXr4RwERaB888ZU6Ugj4b7G7e
         SOz7Fjeo4ILbgu3xLu8xBl3vMNr/+MtzJ8cqZpI2yXZ3OY1cdm4f7LBEV8HL8KkoYR3T
         sjgVSbnzY9HAhrJuFP9ho2/1ud61y4auk77tAuD1RFtr7/y/ADO0OlGdCwDKy3DXKS+s
         HzcEf6xci1PO9f2y7+JHZKgXLdZBggYa1rXQCExpXiyUxOfW8jCikkVGhXJhbm1FQH3+
         hYXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+MhuA4Hcp/lVQHlfxLRLLaWYCwZ7dT0qzyi0BQVRFws=;
        b=dZlUHSV9FJEm/Dpvva1/ybniRT68hJN7vmr57mzGO+ORnrwZO9SYf3/bJDrpfJGMCg
         zVbahwiKaCwOrqtTl1ea+OHu50hkAH+AWtrbrgMWnCjxH5YdxGr7tPGSXtCyBEZ+W8BG
         AclokeyDIv4ywmzdrylQ2/Zg4z32HUZzQTLuVKhhWrywGjK2N5a7aqcWplLqU3/MgDsc
         S3J9mL7PUsOfWqkGIRe9ZkFuKON9sWr+hG8MccK+dCvC+P+ODKqaB1nMQgeDeHPTBz7h
         aiGfcpYeqH2pQQSx17XLd4kuoNpQkpHmXV2h/bwkWXmsFRQQLrVyaOoOc3RIr4vPswtC
         Hafg==
X-Gm-Message-State: AO0yUKU/ZWaI3q9AuMVcpNrHltC2/SPksUQKmg9QisvPEQmCDyfpi9IK
        cxkUNF1piiyeVPbnkCXzI0x4Xg==
X-Google-Smtp-Source: AK7set8oP0z2amyZeEu8vK0HrPUNwIL+ou8GHPGpjd7EWl9Tg5BfdWHG2qtld2KBA5LK2H2enlzQXA==
X-Received: by 2002:a05:6830:1449:b0:68b:d03b:5105 with SMTP id w9-20020a056830144900b0068bd03b5105mr9193605otp.8.1676097592473;
        Fri, 10 Feb 2023 22:39:52 -0800 (PST)
Received: from localhost ([136.49.140.41])
        by smtp.gmail.com with ESMTPSA id d9-20020a056830044900b0068be372babfsm2948951otc.47.2023.02.10.22.39.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Feb 2023 22:39:52 -0800 (PST)
From:   Sam Protsenko <semen.protsenko@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     David Virag <virag.david003@gmail.com>,
        Chanho Park <chanho61.park@samsung.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 3/6] clk: samsung: clk-pll: Implement pll0818x PLL type
Date:   Sat, 11 Feb 2023 00:40:03 -0600
Message-Id: <20230211064006.14981-4-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230211064006.14981-1-semen.protsenko@linaro.org>
References: <20230211064006.14981-1-semen.protsenko@linaro.org>
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

pll0818x PLL is used in Exynos850 SoC for CMU_G3D PLL. Operation-wise,
pll0818x is the same as pll0822x. The only difference is:
  - pl0822x is integer PLL with Middle FVCO (950 to 2400 MHz)
  - pl0818x is integer PLL with Low FVCO (600 to 1200 MHz)

Add pll0818x type as an alias to pll0822x.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
 drivers/clk/samsung/clk-pll.c | 1 +
 drivers/clk/samsung/clk-pll.h | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/clk/samsung/clk-pll.c b/drivers/clk/samsung/clk-pll.c
index 5ceac4c25c1c..74934c6182ce 100644
--- a/drivers/clk/samsung/clk-pll.c
+++ b/drivers/clk/samsung/clk-pll.c
@@ -1314,6 +1314,7 @@ static void __init _samsung_clk_register_pll(struct samsung_clk_provider *ctx,
 			init.ops = &samsung_pll35xx_clk_ops;
 		break;
 	case pll_1417x:
+	case pll_0818x:
 	case pll_0822x:
 		pll->enable_offs = PLL0822X_ENABLE_SHIFT;
 		pll->lock_offs = PLL0822X_LOCK_STAT_SHIFT;
diff --git a/drivers/clk/samsung/clk-pll.h b/drivers/clk/samsung/clk-pll.h
index 5d5a58d40e7e..0725d485c6ee 100644
--- a/drivers/clk/samsung/clk-pll.h
+++ b/drivers/clk/samsung/clk-pll.h
@@ -34,6 +34,7 @@ enum samsung_pll_type {
 	pll_1451x,
 	pll_1452x,
 	pll_1460x,
+	pll_0818x,
 	pll_0822x,
 	pll_0831x,
 	pll_142xx,
-- 
2.39.1


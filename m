Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A94F17746ED
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 21:07:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232223AbjHHTHf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 15:07:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232367AbjHHTHY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 15:07:24 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24DCFCCF34
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 09:28:43 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-4fe48a2801bso9675491e87.1
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 09:28:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691512090; x=1692116890;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6MmEGhsWcyV2tJiWGbgG48WJpgMlPeUsMr9lr8DHG50=;
        b=e4nPJit6VllIgfhDnNKr3RaJtgWLEq3HFMYlbguj/3h8Bugn+xqElPCh67I3twhTwk
         SU5gre244IFhBzTvzWtcaR6ecJZOV3oL1duDg1OP3bF2MZBoYTLI0rxpScPrGTY34ohF
         mnmtb9TP7rV9MNbm3uLrCeeUVG/NXvEItWyvJLThZw3TY8cecwvNqG+v8EzPXVPUmWLz
         qxwn2ANioS1+QWoTfZZMFGsSTIkS8H02F9JUR07EIUVM1fn+CZ7P3F3QP8JWGV5LslKh
         q53Yk02OyR3sRNJa+Bwk0a5IxXixlM2Xty8/6RU7HAEO+KEpPKU8L2nlmwVCm55ac9TV
         QJjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691512090; x=1692116890;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6MmEGhsWcyV2tJiWGbgG48WJpgMlPeUsMr9lr8DHG50=;
        b=hpzFct4mVpd0X0xdX4PpkjYCFuZ9VlfJVQZnz+KlIL5+0Z3yuBeBFLS8kNtxd0PKJ9
         WXNqA0E20q9VS+hZr16z8wxpJZmy7PT4yI0njPBCXLEC2FoP2t1fJfvTHolbV6+mOc+2
         VOiOu6Roy8vWQ3IW00KUjorIr3jNZGMw/xj987cFy3bxMEfQWf67ueOk7wdbxORihHXY
         p0I1GmMEI+rNlufKEvf3aDGnpQnG08WsirOXh//5S+NoplqYW9f5PAvw+uRa93Yf9GFG
         hVfusdZOelPsygD0L2FtmlMSBfaKizzN1SFvXWPqBZRX6UNUTMORpaBw45e6IBYWWXaz
         M82w==
X-Gm-Message-State: AOJu0YxspmkH9Cp8zO8n2DaSw40oQ1WrghtFbrlsKuGa973zmeyciWJh
        10uM7NwkD4TiG68hB9FoKPZzQXxSYmJmpKvz4+k=
X-Google-Smtp-Source: AGHT+IHKz5Zsyb9uLFLG9UFYYyG8FqN+IRe8yffZvnZAPP1i84HeUdZsdHqQNw+tO7uYnme50hdlgw==
X-Received: by 2002:a5d:5253:0:b0:317:cff4:7357 with SMTP id k19-20020a5d5253000000b00317cff47357mr7262024wrc.20.1691483266358;
        Tue, 08 Aug 2023 01:27:46 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id s18-20020adfeb12000000b0031779a6b451sm12861246wrn.83.2023.08.08.01.27.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Aug 2023 01:27:45 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH 02/11] clk: samsung: exynos4: do not define number of clocks in bindings
Date:   Tue,  8 Aug 2023 10:27:29 +0200
Message-Id: <20230808082738.122804-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230808082738.122804-1-krzysztof.kozlowski@linaro.org>
References: <20230808082738.122804-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Number of clocks supported by Linux drivers might vary - sometimes we
add new clocks, not exposed previously.  Therefore this number of clocks
should not be in the bindings, because otherwise we should not change
it.

Define number of clocks per each clock controller inside the driver
directly.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/clk/samsung/clk-exynos4.c        | 5 ++++-
 drivers/clk/samsung/clk-exynos4412-isp.c | 5 ++++-
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/samsung/clk-exynos4.c b/drivers/clk/samsung/clk-exynos4.c
index 43207257a9cc..4ec41221e68f 100644
--- a/drivers/clk/samsung/clk-exynos4.c
+++ b/drivers/clk/samsung/clk-exynos4.c
@@ -135,6 +135,9 @@
 #define PWR_CTRL1_USE_CORE1_WFI			(1 << 1)
 #define PWR_CTRL1_USE_CORE0_WFI			(1 << 0)
 
+/* NOTE: Must be equal to the last clock ID increased by one */
+#define CLKS_NR					(CLK_DIV_CORE2 + 1)
+
 /* the exynos4 soc type */
 enum exynos4_soc {
 	EXYNOS4210,
@@ -1275,7 +1278,7 @@ static void __init exynos4_clk_init(struct device_node *np,
 	if (!reg_base)
 		panic("%s: failed to map registers\n", __func__);
 
-	ctx = samsung_clk_init(NULL, reg_base, CLK_NR_CLKS);
+	ctx = samsung_clk_init(NULL, reg_base, CLKS_NR);
 	hws = ctx->clk_data.hws;
 
 	samsung_clk_of_register_fixed_ext(ctx, exynos4_fixed_rate_ext_clks,
diff --git a/drivers/clk/samsung/clk-exynos4412-isp.c b/drivers/clk/samsung/clk-exynos4412-isp.c
index 1470c15e95da..a70c2b06a61a 100644
--- a/drivers/clk/samsung/clk-exynos4412-isp.c
+++ b/drivers/clk/samsung/clk-exynos4412-isp.c
@@ -22,6 +22,9 @@
 #define E4X12_GATE_ISP0		0x0800
 #define E4X12_GATE_ISP1		0x0804
 
+/* NOTE: Must be equal to the last clock ID increased by one */
+#define CLKS_NR_ISP		(CLK_ISP_DIV_MCUISP1 + 1)
+
 /*
  * Support for CMU save/restore across system suspends
  */
@@ -121,7 +124,7 @@ static int __init exynos4x12_isp_clk_probe(struct platform_device *pdev)
 	if (!exynos4x12_save_isp)
 		return -ENOMEM;
 
-	ctx = samsung_clk_init(dev, reg_base, CLK_NR_ISP_CLKS);
+	ctx = samsung_clk_init(dev, reg_base, CLKS_NR_ISP);
 
 	platform_set_drvdata(pdev, ctx);
 
-- 
2.34.1


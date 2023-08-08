Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EAFDC774933
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 21:50:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233148AbjHHTuE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 15:50:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233219AbjHHTtv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 15:49:51 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2A9051D02
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 09:55:50 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-3fbd33a57b6so57100995e9.2
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 09:55:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691513742; x=1692118542;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WFfvkly3ynKYhnloBAB5Bwm8QGvgmXjPSUsPPXMqNoQ=;
        b=P0FYdLayVRNTwu9PJ32uK+I87ELJ6zytunj9Jc2LPhlqDVq7CUwRvng7R1kPAa8LRB
         rqoQ9/gYD8qwyf0nWGEaPvJQyfJqaxkN1PMrnhd1CW0P4FSl9d7L4xB8i95rUPBa7WlD
         YJtcYAP8Z4eqkcoM+1Ykf0Who03vNbegXWEALwI0E+uGgNXYKh0wJ7+P8ZXznthH+Hl0
         lJFdglSWz1VZsOGhX539oqv7zoyNZMPWlQUXBicCJZ49K6aK28FVZ5lUBqg2cc7BcTFV
         H4/qtkiNqlCadwna1Pvn1Q+gc6ST/OZ8tMrOTSx2Z4WaQjDPCAk197h7j31e+8XtSGaF
         WhZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691513742; x=1692118542;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WFfvkly3ynKYhnloBAB5Bwm8QGvgmXjPSUsPPXMqNoQ=;
        b=Kr4dDkHQk1beLTEqfjMr0DfGAp0Yh9yerPtqF92WwwPIJbcMFeHDeNWnLyr9jff9Zw
         9qbksT4aA8GHXZ9rSrPCGu14UziyMQ1+QUhqWD4VzhYeqgvtZ3xBD4cLtvYZPtoKH0iA
         m0IvSO5keiBWHPGoS6hLg9xjj9LEs5l8p5ZKXjsiyWN5AatThS5MOEKsPMzs0FysqrQb
         OAefpcA/LumLTcUfeqvuqt3QduJvz4uPP5YEm8AOarpjEmuzi9Um4tTFITzR+LgswwCz
         Ljn1V/wWaErS8Pqx5+oIA0SVAo3WMt/nEN4pwChOxK82cSgIWLR+IXCqWppSYwEsi+F7
         o/HA==
X-Gm-Message-State: AOJu0YzfY0NfCSiv1966sRT197BB1pM3mXvJLss3q/azMdu3i9SLcOnP
        5/Cgm825loVYNwzupIFh87guUWOHRRqImXfRDOk=
X-Google-Smtp-Source: AGHT+IEx9WFWo3clO7Eu0C3jX65Z+oYsA6+ETiWsFoS588U+BcX6IShcpjIAbekFHeKVH5GDiJCa5A==
X-Received: by 2002:adf:e6cb:0:b0:314:1249:d5d7 with SMTP id y11-20020adfe6cb000000b003141249d5d7mr8311246wrm.16.1691483264463;
        Tue, 08 Aug 2023 01:27:44 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id s18-20020adfeb12000000b0031779a6b451sm12861246wrn.83.2023.08.08.01.27.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Aug 2023 01:27:44 -0700 (PDT)
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
Subject: [PATCH 01/11] clk: samsung: exynos3250: do not define number of clocks in bindings
Date:   Tue,  8 Aug 2023 10:27:28 +0200
Message-Id: <20230808082738.122804-2-krzysztof.kozlowski@linaro.org>
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
 drivers/clk/samsung/clk-exynos3250.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/samsung/clk-exynos3250.c b/drivers/clk/samsung/clk-exynos3250.c
index 6cc65ccf867c..a02461667664 100644
--- a/drivers/clk/samsung/clk-exynos3250.c
+++ b/drivers/clk/samsung/clk-exynos3250.c
@@ -100,6 +100,11 @@
 #define PWR_CTRL1_USE_CORE1_WFI			(1 << 1)
 #define PWR_CTRL1_USE_CORE0_WFI			(1 << 0)
 
+/* NOTE: Must be equal to the last clock ID increased by one */
+#define CLKS_NR_MAIN				(CLK_SCLK_MMC2 + 1)
+#define CLKS_NR_DMC				(CLK_DIV_DMCD + 1)
+#define CLKS_NR_ISP				(CLK_SCLK_MPWM_ISP + 1)
+
 static const unsigned long exynos3250_cmu_clk_regs[] __initconst = {
 	SRC_LEFTBUS,
 	DIV_LEFTBUS,
@@ -807,7 +812,7 @@ static const struct samsung_cmu_info cmu_info __initconst = {
 	.nr_fixed_factor_clks	= ARRAY_SIZE(fixed_factor_clks),
 	.cpu_clks		= exynos3250_cpu_clks,
 	.nr_cpu_clks		= ARRAY_SIZE(exynos3250_cpu_clks),
-	.nr_clk_ids		= CLK_NR_CLKS,
+	.nr_clk_ids		= CLKS_NR_MAIN,
 	.clk_regs		= exynos3250_cmu_clk_regs,
 	.nr_clk_regs		= ARRAY_SIZE(exynos3250_cmu_clk_regs),
 };
@@ -923,7 +928,7 @@ static const struct samsung_cmu_info dmc_cmu_info __initconst = {
 	.nr_mux_clks		= ARRAY_SIZE(dmc_mux_clks),
 	.div_clks		= dmc_div_clks,
 	.nr_div_clks		= ARRAY_SIZE(dmc_div_clks),
-	.nr_clk_ids		= NR_CLKS_DMC,
+	.nr_clk_ids		= CLKS_NR_DMC,
 	.clk_regs		= exynos3250_cmu_dmc_clk_regs,
 	.nr_clk_regs		= ARRAY_SIZE(exynos3250_cmu_dmc_clk_regs),
 };
@@ -1067,7 +1072,7 @@ static const struct samsung_cmu_info isp_cmu_info __initconst = {
 	.nr_div_clks	= ARRAY_SIZE(isp_div_clks),
 	.gate_clks	= isp_gate_clks,
 	.nr_gate_clks	= ARRAY_SIZE(isp_gate_clks),
-	.nr_clk_ids	= NR_CLKS_ISP,
+	.nr_clk_ids	= CLKS_NR_ISP,
 };
 
 static int __init exynos3250_cmu_isp_probe(struct platform_device *pdev)
-- 
2.34.1


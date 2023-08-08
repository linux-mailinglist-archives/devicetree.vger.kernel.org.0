Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 55FCD7746DC
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 21:05:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231987AbjHHTFA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 15:05:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231233AbjHHTEm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 15:04:42 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A274FAD175
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 10:47:49 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-5230a22cfd1so7861075a12.1
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 10:47:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691516864; x=1692121664;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qv5+yldfcLl5F50y6SpkVFOO6DSopWazKZ9tTkvj/KI=;
        b=Is1ZZO1mfpnzhrGupZdkaZZ15Y26ZPp03FoHhUjJwGBEz2eBrv4O9MmWjuRxYH4h5N
         K8Rpu6u32AZpJ67TLN/mSVtgqpVrc8CAB+HhhTT4iUjds8dBdUUSVqj5aTJrgh+tE67F
         7FB9x31Ch8ISx5BP+ZLMV46Cnf3Q+mgMTWNdECbDqsjM2O2s39vlcpU2lwWakmVfSWwF
         QQRUpqv+7Aaay5IZsExHsNhVBy7q2CubWBSIzdIdUYiVrzDHunQ6ua2ggOkeyoQAe6oO
         qI8Mkv/Dxw8UElq1dBs3iWDjFOW4sQmW9I1IwR+GkPXzAsnB01EhJOIz038a0hYVgaC8
         PgWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691516864; x=1692121664;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qv5+yldfcLl5F50y6SpkVFOO6DSopWazKZ9tTkvj/KI=;
        b=XKgDCvzEGsoJJ9JpKXXTbf669g/DpExO4qd7rxWkB1/nDGHJaOyBT1iH1njrfF9ozQ
         AlJ9luFk7u1swwpqR6vLQe6P5E519kjD1Lm72K5IvPr5QEHzEFpvg8TEfwErqp7ws/s2
         6aac+dtniEOCluHBQmYBr+iX4aVFvV5pdhsFeZBKT8UI5gGtvvs/k3ddoU92e4bCtP/T
         2G10+Sbj8vG1w8/m7BioczpW5pcn7enE7SpCeyQz57mCtTsmb/Ff56dA6TRsETGYO3sR
         Pab/qel8RrGJE1RdRv3GVR7exxm9VfYckdPa9Edg847za0sCzPuX3QynmPB6YuK0yEjm
         tnPw==
X-Gm-Message-State: AOJu0YzIfC52N/lXcb1XmuhVH087KLfXbYCdmJjP/c6w79BU05CO5wiV
        s5ddPjIV0zutOr9OWQ1xA1JEh0SPIvBEM834Gis=
X-Google-Smtp-Source: AGHT+IE1JwtFdnFB8Qb2FMa0lT19XJl5y0OhOFfz9ix5xSzooJBHWR588byfQs4NsD0XnfPqprVNBg==
X-Received: by 2002:a05:6512:39d6:b0:4f8:71bf:a259 with SMTP id k22-20020a05651239d600b004f871bfa259mr7889276lfu.67.1691483278062;
        Tue, 08 Aug 2023 01:27:58 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id s18-20020adfeb12000000b0031779a6b451sm12861246wrn.83.2023.08.08.01.27.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Aug 2023 01:27:57 -0700 (PDT)
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
Subject: [PATCH 08/11] clk: samsung: exynos7885: do not define number of clocks in bindings
Date:   Tue,  8 Aug 2023 10:27:35 +0200
Message-Id: <20230808082738.122804-9-krzysztof.kozlowski@linaro.org>
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
 drivers/clk/samsung/clk-exynos7885.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/samsung/clk-exynos7885.c b/drivers/clk/samsung/clk-exynos7885.c
index 0c6a84764f7a..f7d7427a558b 100644
--- a/drivers/clk/samsung/clk-exynos7885.c
+++ b/drivers/clk/samsung/clk-exynos7885.c
@@ -16,6 +16,12 @@
 #include "clk.h"
 #include "clk-exynos-arm64.h"
 
+/* NOTE: Must be equal to the last clock ID increased by one */
+#define CLKS_NR_TOP			(CLK_GOUT_FSYS_USB30DRD + 1)
+#define CLKS_NR_CORE			(CLK_GOUT_TREX_P_CORE_PCLK_P_CORE + 1)
+#define CLKS_NR_PERI			(CLK_GOUT_WDT1_PCLK + 1)
+#define CLKS_NR_FSYS			(CLK_GOUT_MMC_SDIO_SDCLKIN + 1)
+
 /* ---- CMU_TOP ------------------------------------------------------------- */
 
 /* Register Offset definitions for CMU_TOP (0x12060000) */
@@ -333,7 +339,7 @@ static const struct samsung_cmu_info top_cmu_info __initconst = {
 	.nr_div_clks		= ARRAY_SIZE(top_div_clks),
 	.gate_clks		= top_gate_clks,
 	.nr_gate_clks		= ARRAY_SIZE(top_gate_clks),
-	.nr_clk_ids		= TOP_NR_CLK,
+	.nr_clk_ids		= CLKS_NR_TOP,
 	.clk_regs		= top_clk_regs,
 	.nr_clk_regs		= ARRAY_SIZE(top_clk_regs),
 };
@@ -552,7 +558,7 @@ static const struct samsung_cmu_info peri_cmu_info __initconst = {
 	.nr_mux_clks		= ARRAY_SIZE(peri_mux_clks),
 	.gate_clks		= peri_gate_clks,
 	.nr_gate_clks		= ARRAY_SIZE(peri_gate_clks),
-	.nr_clk_ids		= PERI_NR_CLK,
+	.nr_clk_ids		= CLKS_NR_PERI,
 	.clk_regs		= peri_clk_regs,
 	.nr_clk_regs		= ARRAY_SIZE(peri_clk_regs),
 	.clk_name		= "dout_peri_bus",
@@ -661,7 +667,7 @@ static const struct samsung_cmu_info core_cmu_info __initconst = {
 	.nr_div_clks		= ARRAY_SIZE(core_div_clks),
 	.gate_clks		= core_gate_clks,
 	.nr_gate_clks		= ARRAY_SIZE(core_gate_clks),
-	.nr_clk_ids		= CORE_NR_CLK,
+	.nr_clk_ids		= CLKS_NR_CORE,
 	.clk_regs		= core_clk_regs,
 	.nr_clk_regs		= ARRAY_SIZE(core_clk_regs),
 	.clk_name		= "dout_core_bus",
@@ -743,7 +749,7 @@ static const struct samsung_cmu_info fsys_cmu_info __initconst = {
 	.nr_mux_clks		= ARRAY_SIZE(fsys_mux_clks),
 	.gate_clks		= fsys_gate_clks,
 	.nr_gate_clks		= ARRAY_SIZE(fsys_gate_clks),
-	.nr_clk_ids		= FSYS_NR_CLK,
+	.nr_clk_ids		= CLKS_NR_FSYS,
 	.clk_regs		= fsys_clk_regs,
 	.nr_clk_regs		= ARRAY_SIZE(fsys_clk_regs),
 	.clk_name		= "dout_fsys_bus",
-- 
2.34.1


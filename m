Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4E6416B16A6
	for <lists+devicetree@lfdr.de>; Thu,  9 Mar 2023 00:38:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229751AbjCHXig (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 18:38:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37646 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230187AbjCHXid (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 18:38:33 -0500
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85E3B5BD97
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 15:38:28 -0800 (PST)
Received: by mail-ot1-x32e.google.com with SMTP id q11-20020a056830440b00b00693c1a62101so221898otv.0
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 15:38:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678318708;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=woOYONkToPVHYWga31WFD9txV73HBu+FiarlM+DWulI=;
        b=lRsJ3IRNiUqFgrEUYgPttSw5MR8Z9Yh9RHQ9H58mztAYJYPUN5XZ/t1Gl2eOU02Dkp
         LytKW3GxqUFuDM4Hh3yKiGDtDsUEavCb5iIJD8/eOHWJB9G/G9spgqsfLbNfO6n0uAfW
         nveUzUqxgvsRb4KEU+Ty/ovknkLWziy0xmkick+JMXWmd5AWRPVZP9IT8XeYd/iyW7n+
         sKhnlMom+Py8EVkMaE9B1ZhUGQoxL6N508ImCb5NGuhwcIUB02YFijIpsmVjxhDWbRca
         IdU0ZHAjfaRx92tPGYUzOcterNKUIkIbS8DPVhp3IBtHjvZBsSEf7NTTVNEq8eorD68U
         OBlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678318708;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=woOYONkToPVHYWga31WFD9txV73HBu+FiarlM+DWulI=;
        b=e7kr8eYus9y4JjdwyQn5c6slh8jPIymrVjg9spWiAlJEicD7v1dDdM8ghnrTR5+86m
         gER0ietN/z3G/jgfuDJ2wgoGbzQKVKgXy8K/KSB1jkCH+eZrR58XarzZ8nJC/QSmGMvi
         kwN/DTLffYjQk2u8rbkkThjdfvD7ZYEdSWVWHP7/1GihsJHCH+SuyLnhWYkbnEW/8UJ4
         pNofQLCBf4qZGsBBsgEeuWUJbn2fCaiF3D200k98cjuUEIkLsKi3eXUC0rvJO0TrewG8
         vf2xnu/2QjuoENwVxyLdFunk2sBwh4uUKW5annx6xRNVEmvEbQUiK8bxiRNBL+jzui12
         AOgw==
X-Gm-Message-State: AO0yUKVc3kiNYwxd/tQVeYuC3Z6UZfAPx4KCD/RQ2dWP8lRCaBuf814R
        DvXID5SYXFWytkPVuRRDNe9KOA==
X-Google-Smtp-Source: AK7set/sBQMg+Sa7FJqtY3KmdnHRg0UVZJhWENSlY8qIYW07sgauEXFUt9pV/Pb7xM+ywbZPG/xINQ==
X-Received: by 2002:a05:6830:1614:b0:693:c9f9:64ab with SMTP id g20-20020a056830161400b00693c9f964abmr9781546otr.3.1678318707846;
        Wed, 08 Mar 2023 15:38:27 -0800 (PST)
Received: from localhost ([136.49.140.41])
        by smtp.gmail.com with ESMTPSA id x2-20020a9d6282000000b00690eeb8b436sm6899431otk.65.2023.03.08.15.38.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 15:38:27 -0800 (PST)
From:   Sam Protsenko <semen.protsenko@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc:     Marek Szyprowski <m.szyprowski@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Chanho Park <chanho61.park@samsung.com>,
        David Virag <virag.david003@gmail.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 3/7] clk: samsung: Implement PM SMC calls for ARM64 Exynos SoCs
Date:   Wed,  8 Mar 2023 17:38:18 -0600
Message-Id: <20230308233822.31180-4-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230308233822.31180-1-semen.protsenko@linaro.org>
References: <20230308233822.31180-1-semen.protsenko@linaro.org>
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

Exynos850 requires extra TZPC handling to keep CMU registers non-secure
(accessible from the kernel) after PM resume. It's done using a specific
SMC call to the EL3 monitor. Implement corresponding SMC calls in
suspend and resume functions. Perform those calls when the parent (bus)
clock is running to avoid SMC freezes. The "samsung,tzpc" property is
used to specify the TZPC register address for those calls (for each
particular domain). If that property is not provided, SMC calls won't be
performed, thus keeping the compatibility with CMUs and platforms where
that SMC functionality is not needed.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
 drivers/clk/samsung/clk-exynos-arm64.c | 39 ++++++++++++++++++++++++--
 1 file changed, 37 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/samsung/clk-exynos-arm64.c b/drivers/clk/samsung/clk-exynos-arm64.c
index 7d8937caf22a..57e9bee7ec4d 100644
--- a/drivers/clk/samsung/clk-exynos-arm64.c
+++ b/drivers/clk/samsung/clk-exynos-arm64.c
@@ -8,6 +8,8 @@
  * This file contains shared functions used by some arm64 Exynos SoCs,
  * such as Exynos7885 or Exynos850 to register and init CMUs.
  */
+
+#include <linux/arm-smccc.h>
 #include <linux/clk.h>
 #include <linux/of_address.h>
 #include <linux/of_device.h>
@@ -24,6 +26,12 @@
 #define GATE_OFF_START		0x2000
 #define GATE_OFF_END		0x2fff
 
+/* Power control SMC command and its parameters */
+#define SMC_CMD_PREPARE_PD_ONOFF		0x82000410
+#define EXYNOS_PD_RUNTIME_PM			2
+#define EXYNOS_GET_IN_PD_DOWN			0
+#define EXYNOS_WAKEUP_PD_DOWN			1
+
 struct exynos_arm64_cmu_data {
 	struct samsung_clk_reg_dump *clk_save;
 	unsigned int nr_clk_save;
@@ -34,6 +42,7 @@ struct exynos_arm64_cmu_data {
 	struct clk **pclks;
 	int nr_pclks;
 
+	unsigned int tzpc_addr;			/* address for PM SMC calls */
 	struct samsung_clk_provider *ctx;
 };
 
@@ -149,6 +158,22 @@ static int __init exynos_arm64_cmu_prepare_pm(struct device *dev,
 	return 0;
 }
 
+static int exynos_arm64_pm_smc(struct device *dev, bool on)
+{
+	struct exynos_arm64_cmu_data *data = dev_get_drvdata(dev);
+	struct arm_smccc_res res;
+	unsigned int pm_arg;
+
+	if (!data->tzpc_addr)
+		return 0;
+
+	pm_arg = on ? EXYNOS_WAKEUP_PD_DOWN : EXYNOS_GET_IN_PD_DOWN;
+	arm_smccc_smc(SMC_CMD_PREPARE_PD_ONOFF, pm_arg, data->tzpc_addr,
+		      EXYNOS_PD_RUNTIME_PM, 0, 0, 0, 0, &res);
+
+	return res.a0;
+}
+
 /**
  * exynos_arm64_register_cmu - Register specified Exynos CMU domain
  * @dev:	Device object; may be NULL if this function is not being
@@ -207,6 +232,8 @@ int __init exynos_arm64_register_cmu_pm(struct platform_device *pdev,
 	if (!data)
 		return -ENOMEM;
 
+	of_property_read_u32(np, "samsung,tzpc", (u32 *)&data->tzpc_addr);
+
 	platform_set_drvdata(pdev, data);
 
 	ret = exynos_arm64_cmu_prepare_pm(dev, cmu);
@@ -251,7 +278,7 @@ int __init exynos_arm64_register_cmu_pm(struct platform_device *pdev,
 int exynos_arm64_cmu_suspend(struct device *dev)
 {
 	struct exynos_arm64_cmu_data *data = dev_get_drvdata(dev);
-	int i;
+	int i, ret;
 
 	samsung_clk_save(data->ctx->reg_base, data->clk_save,
 			 data->nr_clk_save);
@@ -263,6 +290,10 @@ int exynos_arm64_cmu_suspend(struct device *dev)
 	samsung_clk_restore(data->ctx->reg_base, data->clk_suspend,
 			    data->nr_clk_suspend);
 
+	ret = exynos_arm64_pm_smc(dev, false);
+	if (ret)
+		return ret;
+
 	for (i = 0; i < data->nr_pclks; i++)
 		clk_disable_unprepare(data->pclks[i]);
 
@@ -274,13 +305,17 @@ int exynos_arm64_cmu_suspend(struct device *dev)
 int exynos_arm64_cmu_resume(struct device *dev)
 {
 	struct exynos_arm64_cmu_data *data = dev_get_drvdata(dev);
-	int i;
+	int i, ret;
 
 	clk_prepare_enable(data->clk);
 
 	for (i = 0; i < data->nr_pclks; i++)
 		clk_prepare_enable(data->pclks[i]);
 
+	ret = exynos_arm64_pm_smc(dev, true);
+	if (ret)
+		return ret;
+
 	samsung_clk_restore(data->ctx->reg_base, data->clk_save,
 			    data->nr_clk_save);
 
-- 
2.39.2


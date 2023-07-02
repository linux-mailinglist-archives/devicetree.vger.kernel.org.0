Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D43C744EF5
	for <lists+devicetree@lfdr.de>; Sun,  2 Jul 2023 19:43:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229989AbjGBRnY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jul 2023 13:43:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230017AbjGBRnB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jul 2023 13:43:01 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4D54E6D
        for <devicetree@vger.kernel.org>; Sun,  2 Jul 2023 10:42:59 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2b6a0d91e80so58081091fa.3
        for <devicetree@vger.kernel.org>; Sun, 02 Jul 2023 10:42:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688319778; x=1690911778;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WXVJ11On9toxIViZ54BypO57RSh7CGGU2NLYyrjlwHQ=;
        b=fz/wveKBifo3+3GcZUIZ1YmZ/tcJ+q8r5HLocLOc3E7z62aBjswi12CIexGASWBBhV
         G8O0aeiriCNfJBSM+XJ1HI8BQ2wb9Vq7s/EWxmrkARoRM018w3FjZRwnA1HuYPPW16TE
         OOPXtrHMtVbjDX+5SywrGrpsOxEYm+jDySTYdhNN1D5dIPNvu+dze1MVwiT3pOCuF7sC
         qxT82stCasTbi9lDwmP9KgTesZId66Oxg2hLtNo4QJK40vKmVo8AHsKxInGNrKFbXH6/
         j+bEnDHS/QlgCFEv5SLkqxQxPNK0oYuYU3rTPy5Ajhz1QIeoh6HTz+0ShS0OBeCV4jyW
         /9aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688319778; x=1690911778;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WXVJ11On9toxIViZ54BypO57RSh7CGGU2NLYyrjlwHQ=;
        b=Bicu5UxoQjn2ENLMW+Ei+Kz2sRSl7J3egJ+C63X5l1IlYAff7inH0T7BfOrK/5OZfA
         fGfQS+aO5JdgQ+0anxqlHt+76tnqNyRXMzcIS4vk5DeY9SCajns+iqU29fQtqgCNvFAU
         arM9JQAf0sXI4AZeu9CxAHrqDOq3eHXfYbGbZpuGlJrDA+gG0/c6EVdvHIHxqNIcUHhP
         O0243TlUVOj/igNSaM3RnirW9h/zcEmHfqA9MZo2782xnD4nHLJl5ZUMuYH2s3RjFJ10
         Jtt0BM3kH9xaY7SUna9zttjohE1iDMOpkjb5VawC1mv+J+WWsYNAcm/zn+lrC6N+Lpda
         2KZg==
X-Gm-Message-State: ABy/qLYbh1FDrL5At/LFStQVzn7p5Arr1QtxZNy8K/d7c/roI4LVD3/T
        x1OEk+tBg0IBoChHDi5lDOnmnQ==
X-Google-Smtp-Source: APBJJlEJR3sBwvgTvB3ooLaltJOA0PLAuNXu+Bdgl44EHC37hVods1INTAbmkVn/7UYBi/l/7/hwuw==
X-Received: by 2002:a2e:7803:0:b0:2b6:b85d:b48c with SMTP id t3-20020a2e7803000000b002b6b85db48cmr5251352ljc.28.1688319778028;
        Sun, 02 Jul 2023 10:42:58 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id v23-20020a2e9917000000b002b6daa3fa2csm1372550lji.69.2023.07.02.10.42.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jul 2023 10:42:57 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Ilia Lin <ilia.lin@kernel.org>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Georgi Djakov <djakov@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-clk@vger.kernel.org,
        Christian Marangi <ansuelsmth@gmail.com>,
        Stephan Gerhold <stephan@gerhold.net>
Subject: [PATCH v3 11/28] cpufreq: qcom-nvmem: drop pvs_ver for format a fuses
Date:   Sun,  2 Jul 2023 20:42:29 +0300
Message-Id: <20230702174246.121656-12-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230702174246.121656-1-dmitry.baryshkov@linaro.org>
References: <20230702174246.121656-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The fuses used on msm8960 / apq8064 / ipq806x families of devices do not
have the pvs version. Drop this argument from parsing function.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/cpufreq/qcom-cpufreq-nvmem.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/cpufreq/qcom-cpufreq-nvmem.c b/drivers/cpufreq/qcom-cpufreq-nvmem.c
index 3bb552f498da..792423590279 100644
--- a/drivers/cpufreq/qcom-cpufreq-nvmem.c
+++ b/drivers/cpufreq/qcom-cpufreq-nvmem.c
@@ -50,7 +50,7 @@ struct qcom_cpufreq_drv {
 static struct platform_device *cpufreq_dt_pdev, *cpufreq_pdev;
 
 static void get_krait_bin_format_a(struct device *cpu_dev,
-					  int *speed, int *pvs, int *pvs_ver,
+					  int *speed, int *pvs,
 					  u8 *buf)
 {
 	u32 pte_efuse;
@@ -181,8 +181,7 @@ static int qcom_cpufreq_krait_name_version(struct device *cpu_dev,
 
 	switch (len) {
 	case 4:
-		get_krait_bin_format_a(cpu_dev, &speed, &pvs, &pvs_ver,
-				       speedbin);
+		get_krait_bin_format_a(cpu_dev, &speed, &pvs, speedbin);
 		break;
 	case 8:
 		get_krait_bin_format_b(cpu_dev, &speed, &pvs, &pvs_ver,
-- 
2.39.2


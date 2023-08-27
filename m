Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8639F789B31
	for <lists+devicetree@lfdr.de>; Sun, 27 Aug 2023 05:29:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230073AbjH0D2m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 26 Aug 2023 23:28:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230074AbjH0D2N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 26 Aug 2023 23:28:13 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A8AECC5
        for <devicetree@vger.kernel.org>; Sat, 26 Aug 2023 20:28:10 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-5008d16cc36so3272110e87.2
        for <devicetree@vger.kernel.org>; Sat, 26 Aug 2023 20:28:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693106888; x=1693711688;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t4PW5GOr14sKnMrp5iOyHNMKLLl0ISY4Z/HKicgZzoc=;
        b=f16Ooh6S4gZROEoA9uKf3LLXMe57HTJ3KNIYW828cLk6zG2Kc9y34Lpbmz+3QRMXwd
         AT61rlkWJyWc+fZjMnjcLXzJnBi97LeQaheoBLALaseEtZt8CqlwLZX4xViIQS/3HrG7
         arjbpQ73FXtekyWLoJwvZfDdXhsSD4C0kZCCvZ1kOgp14Wwhwd4/AYAZ0Lo+IYM3wvGO
         MtiOxptgo4qJAJLByiDiReK74wqzfoPHm8C5daVvNrPHSayPosvhoQ1l0mh4j00+oWHt
         ZcvTT1rNBuDQEeft+HG9yyWn7wzc101DWy9hr9Ce46FQuPhGFVFTlVRAy5+SMURcvyi5
         H6jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693106888; x=1693711688;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t4PW5GOr14sKnMrp5iOyHNMKLLl0ISY4Z/HKicgZzoc=;
        b=RyIJy3bvX0QXCH6oY7KcniSOuRkNRi+Nf+VanBITV1iopxttq8z9Yu5PHA437TKm7+
         MtwXpu3g2x7X7H83XxWIMB35fs6KQaQBHTZjNLtIn/yog00Cj0B3FGI/UD5+GN+4fTay
         EwSRQ+rzIE8iQmRX+XgDUdTso0Zi6g8S8idJzZzKxlE7/893TUs0pjMxvwioQ7IY0E5W
         jxxysgbo1hR1Xf4wGpVFqcvX/QTSagyx42WEW0calvvk2hDlW7J9wy+wBhluVj74PUXw
         zw/Oc3r52AoNX6+3j3bsujcNYTuKTyTaImsRSew4R62Uc1+GkRIQ6aZnB0mKx8ZAMTsJ
         ybsg==
X-Gm-Message-State: AOJu0YzrAUiN7EqH+Z3d75dPD2PLBQrSvuhIvFF9YqQ20aJZe1ewTTNZ
        tvWicZy4YVNL+9CJ3Wk6fLJx0w==
X-Google-Smtp-Source: AGHT+IErw0mBCEud+xQcTHHPFAg9BsMuGdvzqgou1vUPSVogP124ojPYPCskD4g6M77Uw5ShhtPnzA==
X-Received: by 2002:a05:6512:348a:b0:500:953b:d112 with SMTP id v10-20020a056512348a00b00500953bd112mr7013499lfr.27.1693106888434;
        Sat, 26 Aug 2023 20:28:08 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id w7-20020ac254a7000000b004fb99da37e3sm955709lfk.220.2023.08.26.20.28.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Aug 2023 20:28:08 -0700 (PDT)
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
Subject: [PATCH v4 5/6] cpufreq: qcom-nvmem: provide separate configuration data for apq8064
Date:   Sun, 27 Aug 2023 06:28:02 +0300
Message-Id: <20230827032803.934819-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230827032803.934819-1-dmitry.baryshkov@linaro.org>
References: <20230827032803.934819-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

APQ8064 can scale core voltage according to the frequency needs. Rather
than reusing the A/B format multiplexer, use a simple fuse parsing
function and configure required regulator.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/cpufreq/qcom-cpufreq-nvmem.c | 49 ++++++++++++++++++++++++++--
 1 file changed, 47 insertions(+), 2 deletions(-)

diff --git a/drivers/cpufreq/qcom-cpufreq-nvmem.c b/drivers/cpufreq/qcom-cpufreq-nvmem.c
index 81c080b854fe..35e2610c9526 100644
--- a/drivers/cpufreq/qcom-cpufreq-nvmem.c
+++ b/drivers/cpufreq/qcom-cpufreq-nvmem.c
@@ -26,6 +26,7 @@
 #include <linux/platform_device.h>
 #include <linux/pm_domain.h>
 #include <linux/pm_opp.h>
+#include <linux/regulator/consumer.h>
 #include <linux/slab.h>
 #include <linux/soc/qcom/smem.h>
 
@@ -39,6 +40,7 @@ struct qcom_cpufreq_match_data {
 			   char **pvs_name,
 			   struct qcom_cpufreq_drv *drv);
 	const char **genpd_names;
+	const char * const *regulator_names;
 };
 
 struct qcom_cpufreq_drv {
@@ -203,6 +205,34 @@ static int qcom_cpufreq_krait_name_version(struct device *cpu_dev,
 	return ret;
 }
 
+static int qcom_cpufreq_apq8064_name_version(struct device *cpu_dev,
+					     struct nvmem_cell *speedbin_nvmem,
+					     char **pvs_name,
+					     struct qcom_cpufreq_drv *drv)
+{
+	int speed = 0, pvs = 0;
+	u8 *speedbin;
+	size_t len;
+	int ret = 0;
+
+	speedbin = nvmem_cell_read(speedbin_nvmem, &len);
+	if (IS_ERR(speedbin))
+		return PTR_ERR(speedbin);
+
+	if (len != 4)
+		return -EINVAL;
+
+	get_krait_bin_format_a(cpu_dev, &speed, &pvs, speedbin);
+
+	snprintf(*pvs_name, sizeof("speedXX-pvsXX"), "speed%d-pvs%d",
+		 speed, pvs);
+
+	drv->versions = (1 << speed);
+
+	kfree(speedbin);
+	return ret;
+}
+
 static const struct qcom_cpufreq_match_data match_data_kryo = {
 	.get_version = qcom_cpufreq_kryo_name_version,
 };
@@ -217,6 +247,16 @@ static const struct qcom_cpufreq_match_data match_data_qcs404 = {
 	.genpd_names = qcs404_genpd_names,
 };
 
+static const char * apq8064_regulator_names[] = {
+	"vdd-core",
+	NULL
+};
+
+static const struct qcom_cpufreq_match_data match_data_apq8064 = {
+	.get_version = qcom_cpufreq_apq8064_name_version,
+	.regulator_names = apq8064_regulator_names,
+};
+
 static int qcom_cpufreq_probe(struct platform_device *pdev)
 {
 	struct qcom_cpufreq_drv *drv;
@@ -304,7 +344,12 @@ static int qcom_cpufreq_probe(struct platform_device *pdev)
 			config.virt_devs = NULL;
 		}
 
-		if (config.supported_hw || config.genpd_names) {
+		if (drv->data->regulator_names)
+			config.regulator_names = drv->data->regulator_names;
+
+		if (config.supported_hw ||
+		    config.genpd_names ||
+		    config.regulator_names) {
 			drv->opp_tokens[cpu] = dev_pm_opp_set_config(cpu_dev, &config);
 			if (drv->opp_tokens[cpu] < 0) {
 				ret = drv->opp_tokens[cpu];
@@ -361,7 +406,7 @@ static const struct of_device_id qcom_cpufreq_match_list[] __initconst = {
 	{ .compatible = "qcom,msm8996", .data = &match_data_kryo },
 	{ .compatible = "qcom,qcs404", .data = &match_data_qcs404 },
 	{ .compatible = "qcom,ipq8064", .data = &match_data_krait },
-	{ .compatible = "qcom,apq8064", .data = &match_data_krait },
+	{ .compatible = "qcom,apq8064", .data = &match_data_apq8064 },
 	{ .compatible = "qcom,msm8974", .data = &match_data_krait },
 	{ .compatible = "qcom,msm8960", .data = &match_data_krait },
 	{},
-- 
2.39.2


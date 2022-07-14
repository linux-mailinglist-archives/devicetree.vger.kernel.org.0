Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0FD245749FF
	for <lists+devicetree@lfdr.de>; Thu, 14 Jul 2022 12:04:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237881AbiGNKEC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jul 2022 06:04:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237793AbiGNKD5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jul 2022 06:03:57 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58C4562E1
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 03:03:56 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id y11so1959932lfs.6
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 03:03:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JTKBL6Aor4zd0gi9+YpsM0tS+Wh8c3Pxgu/O7VusGAc=;
        b=XSP18C8zz0oix63kSQznFfQcyuoXYYWwuSlLN7U2taqc6gNNJA2Akk295PvVJrUFLI
         PvF5aU+Ardnwb0jXkCd26K062PKDvC/MhXCWuGfr3HQ3dZY0Ny9oe/2jHvNxZ3xRY/ry
         nfhn+eSKy77dIO+TrXCvq8Fj6txV4LIJMkSeIvv9H54vWSPHvoPXd084ISjTn555DS6k
         w/74DnRfX7RSicmZiadRQ5bDq1c+5prRL3rt+tGzA8egyHB5UNvAd44Fud1N0TfkhDSf
         K0ID+CAXsRNZ6Zsx/8TuuNSyP6rk6JGEwVnk+M0UFPwRMJA8tx5wwAnUqOD5aS2c0YLp
         P7eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JTKBL6Aor4zd0gi9+YpsM0tS+Wh8c3Pxgu/O7VusGAc=;
        b=XFWCKl3F+woKsakawgBpeiAnP8jIVdKqUmK4HpjJySrllFX8YL3P/aJ/TOx6zdS2yl
         yvAMBmCoWMut38YryqTNgMyBqTzl6NSjXXL6pIaD75+my8B2hK9Wp8bTrzIOMy8R9Pmv
         4hRM63RKxvzP7ICig2IrttV2/DDurYL4HEzsaxMWmB76K3Esxv1D9K3wHy2R8diHXu1e
         xi0bZC1aflIEk/kAExCk0uBtjvUJ9GbfxmMZLuaBnPwrJEvzIoSlsDKC7YbVAq7+/uVi
         4a89M4yx2ZMaTlcfMuFyARtoqIgj7u7AV19B0N0aRDuVXU+THXfMFPvqb4AUNp+Hy+d6
         VdQg==
X-Gm-Message-State: AJIora/6IKzRX1tEnHU47u8JaQwc0nGB/YmGIQ47XQRqUkzayiCOVpqJ
        v/zvky96g1mu4D2vDRdK7jRf4Q==
X-Google-Smtp-Source: AGRyM1uxX9d1GQ16nOwzfxzni70OBrd8AJiy3hVmto0DyaAUNXDchl1mlionWd+uV2qy9epbN9i60g==
X-Received: by 2002:a05:6512:2610:b0:47f:74dc:3205 with SMTP id bt16-20020a056512261000b0047f74dc3205mr4497506lfb.429.1657793034742;
        Thu, 14 Jul 2022 03:03:54 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id c9-20020a056512074900b00489c92779f8sm273355lfs.184.2022.07.14.03.03.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Jul 2022 03:03:54 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org,
        Yassine Oudjana <yassine.oudjana@gmail.com>
Subject: [PATCH 2/6] clk: qcom: cpu-8996: switch to devm_clk_notifier_register
Date:   Thu, 14 Jul 2022 13:03:47 +0300
Message-Id: <20220714100351.1834711-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220714100351.1834711-1-dmitry.baryshkov@linaro.org>
References: <20220714100351.1834711-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Switch to using devres-managed version of clk_notifier_register(). This
allows us to drop driver's remove() callback.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/clk/qcom/clk-cpu-8996.c | 25 ++-----------------------
 1 file changed, 2 insertions(+), 23 deletions(-)

diff --git a/drivers/clk/qcom/clk-cpu-8996.c b/drivers/clk/qcom/clk-cpu-8996.c
index 708a8ad0c933..ff90cd5b4fba 100644
--- a/drivers/clk/qcom/clk-cpu-8996.c
+++ b/drivers/clk/qcom/clk-cpu-8996.c
@@ -425,27 +425,12 @@ static int qcom_cpu_clk_msm8996_register_clks(struct device *dev,
 	clk_prepare_enable(pwrcl_alt_pll.clkr.hw.clk);
 	clk_prepare_enable(perfcl_alt_pll.clkr.hw.clk);
 
-	clk_notifier_register(pwrcl_pmux.clkr.hw.clk, &pwrcl_pmux.nb);
-	clk_notifier_register(perfcl_pmux.clkr.hw.clk, &perfcl_pmux.nb);
+	devm_clk_notifier_register(dev, pwrcl_pmux.clkr.hw.clk, &pwrcl_pmux.nb);
+	devm_clk_notifier_register(dev, perfcl_pmux.clkr.hw.clk, &perfcl_pmux.nb);
 
 	return ret;
 }
 
-static int qcom_cpu_clk_msm8996_unregister_clks(void)
-{
-	int ret = 0;
-
-	ret = clk_notifier_unregister(pwrcl_pmux.clkr.hw.clk, &pwrcl_pmux.nb);
-	if (ret)
-		return ret;
-
-	ret = clk_notifier_unregister(perfcl_pmux.clkr.hw.clk, &perfcl_pmux.nb);
-	if (ret)
-		return ret;
-
-	return 0;
-}
-
 #define CPU_AFINITY_MASK 0xFFF
 #define PWRCL_CPU_REG_MASK 0x3
 #define PERFCL_CPU_REG_MASK 0x103
@@ -544,11 +529,6 @@ static int qcom_cpu_clk_msm8996_driver_probe(struct platform_device *pdev)
 	return devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get, data);
 }
 
-static int qcom_cpu_clk_msm8996_driver_remove(struct platform_device *pdev)
-{
-	return qcom_cpu_clk_msm8996_unregister_clks();
-}
-
 static const struct of_device_id qcom_cpu_clk_msm8996_match_table[] = {
 	{ .compatible = "qcom,msm8996-apcc" },
 	{}
@@ -557,7 +537,6 @@ MODULE_DEVICE_TABLE(of, qcom_cpu_clk_msm8996_match_table);
 
 static struct platform_driver qcom_cpu_clk_msm8996_driver = {
 	.probe = qcom_cpu_clk_msm8996_driver_probe,
-	.remove = qcom_cpu_clk_msm8996_driver_remove,
 	.driver = {
 		.name = "qcom-msm8996-apcc",
 		.of_match_table = qcom_cpu_clk_msm8996_match_table,
-- 
2.35.1


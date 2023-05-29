Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 473D07149FC
	for <lists+devicetree@lfdr.de>; Mon, 29 May 2023 15:14:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229703AbjE2NOd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 May 2023 09:14:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229686AbjE2NOb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 May 2023 09:14:31 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2724A7
        for <devicetree@vger.kernel.org>; Mon, 29 May 2023 06:14:29 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-4f3bb395e69so3666464e87.2
        for <devicetree@vger.kernel.org>; Mon, 29 May 2023 06:14:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685366068; x=1687958068;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x278P3+nKSRirib6kE+simYSKscVONKkDYY89zSUJwA=;
        b=vyonl+avaXtFvjnis6oaTqyYS0tNt8GzEjV5F5AK4Rtot4JdsLwHp6SxMccKaPEwPx
         phkJi5bJslMRnpya6lGi0SCAmbUIrd8VfJbyytmhuC5+7aVfJvuckrk4RDKS2jNJVxWz
         7XofMe3aBUE0WueGz0YLm7zT7QlxhmmhA8Ys82+nUrUaHiZSCcp02C0+IQxaOBkg5Fmf
         9hIf8KBMKpAON+soDrqQ4KYUjdpYv5h8Yd1iWZs0AJ9W3AK1XXbexXvYzzcZ/oO1cgwC
         g8yZdfsSn3kYBAV6UGVymVGWkabKMWfEejysAEZaNowFQMDj+U1J4Z/yITsiJasQ3q3Q
         RqtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685366068; x=1687958068;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x278P3+nKSRirib6kE+simYSKscVONKkDYY89zSUJwA=;
        b=WY6oUjLnX2sHAauMMhsBbLaGZphlpXyQCeNV1nXVwZI0qa3vBL5vIIvrTuhjbe3fDs
         QCTUcZu/g2s7Ttzkx0k9pKUFUd0bmAjw3i5+qRDgI5Hj/qPohjb8jMIQv54ncghxqnZu
         d4+dnIlZbGDIYN3FNuf0iz9KEiORnalKX5/JaKar14a4+ihXUq9NQRekLp5l2ZS7Sart
         icUV2IKuct9HN3FEXLyjGm4NCS5vCa2rcmayAr9paFt6jSgXQQuSfdgDNTA9RVGnYXNA
         BcecpEn9AxrDzCndlA213pYRk94+MS3uwRIWJ+XJOzoLvZi1Y6O1PiE7CF3HYHpSEGGQ
         3yeA==
X-Gm-Message-State: AC+VfDxs1cSbVamedhiq9zh2zNPVoypnkr7ziB+sgBikWpBkDBLOQxxe
        1zbFiCPiiuri9gwGnmJsCJnSrA==
X-Google-Smtp-Source: ACHHUZ64bJxUlWfKrTYuuifCQmsZ8flxdmFyt4wtjuoOR0e10k9HkCvTD9LJYMTgWCOhZpt78Sfn3Q==
X-Received: by 2002:ac2:4425:0:b0:4f2:7cb1:65fc with SMTP id w5-20020ac24425000000b004f27cb165fcmr3352598lfl.64.1685366067830;
        Mon, 29 May 2023 06:14:27 -0700 (PDT)
Received: from [192.168.1.101] (abyj77.neoplus.adsl.tpnet.pl. [83.9.29.77])
        by smtp.gmail.com with ESMTPSA id b30-20020ac25e9e000000b004eff4f67f1csm1966375lfq.304.2023.05.29.06.14.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 May 2023 06:14:27 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Mon, 29 May 2023 15:14:24 +0200
Subject: [PATCH 2/2] clk: qcom: gpucc-sm6375: Enable runtime pm
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230529-topic-sm6375gpuccpd-v1-2-8d57c41a6066@linaro.org>
References: <20230529-topic-sm6375gpuccpd-v1-0-8d57c41a6066@linaro.org>
In-Reply-To: <20230529-topic-sm6375gpuccpd-v1-0-8d57c41a6066@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1685366063; l=1703;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=FCWtznh8qKMCk7aGI9UAflx31G2nB1pwP25Cm0GDLGM=;
 b=TIzzdGVj/33FhZbVZwxfJzULE98ho9j5EP0ObW6OgbnLYs/W032xyG2b6VnlD4zyfMypgxTdh
 3f28AKawd+1DPldnYJmP4wKIVgSVzDq86t7OOShQ8BndH8/OWYEIDV9
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The GPUCC block on SM6375 is powered by VDD_CX and VDD_GX. If the latter
rail is not online, GX_GDSC will never turn on. Enable runtime pm so that
we can reference VDD_GX from the dt to ensure that.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/clk/qcom/gpucc-sm6375.c | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/qcom/gpucc-sm6375.c b/drivers/clk/qcom/gpucc-sm6375.c
index d3620344a009..2d863dc3d83b 100644
--- a/drivers/clk/qcom/gpucc-sm6375.c
+++ b/drivers/clk/qcom/gpucc-sm6375.c
@@ -7,6 +7,7 @@
 #include <linux/clk-provider.h>
 #include <linux/module.h>
 #include <linux/of_device.h>
+#include <linux/pm_runtime.h>
 #include <linux/regmap.h>
 
 #include <dt-bindings/clock/qcom,sm6375-gpucc.h>
@@ -434,15 +435,29 @@ MODULE_DEVICE_TABLE(of, gpucc_sm6375_match_table);
 static int gpucc_sm6375_probe(struct platform_device *pdev)
 {
 	struct regmap *regmap;
+	int ret;
+
+	ret = devm_pm_runtime_enable(&pdev->dev);
+	if (ret)
+		return ret;
+
+	ret = pm_runtime_resume_and_get(&pdev->dev);
+	if (ret)
+		return ret;
 
 	regmap = qcom_cc_map(pdev, &gpucc_sm6375_desc);
-	if (IS_ERR(regmap))
+	if (IS_ERR(regmap)) {
+		pm_runtime_put(&pdev->dev);
 		return PTR_ERR(regmap);
+	}
 
 	clk_lucid_pll_configure(&gpucc_pll0, regmap, &gpucc_pll0_config);
 	clk_lucid_pll_configure(&gpucc_pll1, regmap, &gpucc_pll1_config);
 
-	return qcom_cc_really_probe(pdev, &gpucc_sm6375_desc, regmap);
+	ret = qcom_cc_really_probe(pdev, &gpucc_sm6375_desc, regmap);
+	pm_runtime_put(&pdev->dev);
+
+	return ret;
 }
 
 static struct platform_driver gpucc_sm6375_driver = {

-- 
2.40.1


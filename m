Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ACA673FACCD
	for <lists+devicetree@lfdr.de>; Sun, 29 Aug 2021 17:51:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235721AbhH2Ps6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 Aug 2021 11:48:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235642AbhH2Ps4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 Aug 2021 11:48:56 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19E7AC0613D9
        for <devicetree@vger.kernel.org>; Sun, 29 Aug 2021 08:48:04 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id i28so21260013ljm.7
        for <devicetree@vger.kernel.org>; Sun, 29 Aug 2021 08:48:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=eOntGbmHjlIJIEAoFIo+0TbTE6MIwWPZGdnvY8XJV3s=;
        b=IkUY3h1xG3A+y7RAhDKQu4hw7zVPoB/Y9uMmKSvxKEzYPflze9VXSOnrp2VAR5/fbm
         437gJIgWPxHWKFzMeBPOIHNINUS0MDXWCAq5QJLs5Ger4NUKm1DqR/Mnuf0E0v0wkJ0V
         npCb/h+ck6AV2kSSm/H76uH3L5ExcfV+UvVndR5FJFYVPmpl7JfPAfFFylhjc+qA0KCp
         CDkVuaUX0aoqEjXMRovLOJeY8NKCd73rrHr4rJwaQDbYFIXuuAoWKG1gL8YNlPyItFKE
         HlEhMuVXhbJs/Kia12tCb7jJ1+Azoa1VciNfcI/btmYFHWLmRjsmjpDsk+Tqd0f/KjNd
         loXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eOntGbmHjlIJIEAoFIo+0TbTE6MIwWPZGdnvY8XJV3s=;
        b=HCcdOqsEkyAGn4DqQPVm4UxQZl/SbQ/42DTkXbFRIKZ2R6JgxGYAGchIowfnw28Luy
         GJ4bk6s/8reX5kWvCKlMxx3UQNqr+YQXYlpTm7eNWq/1IasXb/AgBb4Imn6hhZC+j22G
         iqSS4UgVOks1IQ5lo2qyS+m2bITf2F7UntSIsPTCArt8IDu/sd91ow8Kj3P7VhavvRMy
         RKji9NIcuKbokFp5H5+lnizcUT7px/4VOPauDZyOfznNCfox/CYD1aVniXOi6cY8H6mo
         F4cWdAdBYpEjE9YpayV4O7cCwy2zJbxZh14t1bkxQQu66mbgnjEzaM2YxZ6312By/6Tl
         VS8A==
X-Gm-Message-State: AOAM530J2L1xfbAlrDN8MT8e/r+4h2yxtlcWplz6yd1UA4p1LwR9hQOq
        P+oD733qUu96JqWPNXsMFCn9Zw==
X-Google-Smtp-Source: ABdhPJyhkUCYxZEQqZAX55eEdpuUyApHu9wUx4tQwqOUVevrmTzuUQ2qY9cHfqxerTmtjkH5Cp3MTg==
X-Received: by 2002:a2e:b5dc:: with SMTP id g28mr16900490ljn.96.1630252082420;
        Sun, 29 Aug 2021 08:48:02 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id y5sm1481243ljd.38.2021.08.29.08.48.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Aug 2021 08:48:02 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Taniya Das <tdas@codeaurora.org>,
        Jonathan Marek <jonathan@marek.ca>,
        Michael Turquette <mturquette@baylibre.com>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        linux-kernel@vger.kernel.org
Subject: [PATCH v7 4/8] clk: qcom: videocc-sm8250: use runtime PM for the clock controller
Date:   Sun, 29 Aug 2021 18:47:53 +0300
Message-Id: <20210829154757.784699-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210829154757.784699-1-dmitry.baryshkov@linaro.org>
References: <20210829154757.784699-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On sm8250 dispcc and videocc registers are powered up by the MMCX power
domain. Use runtime PM calls to make sure that required power domain is
powered on while we access clock controller's registers.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/clk/qcom/videocc-sm8250.c | 27 +++++++++++++++++++++++++--
 1 file changed, 25 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/qcom/videocc-sm8250.c b/drivers/clk/qcom/videocc-sm8250.c
index 7b435a1c2c4b..8617454e4a77 100644
--- a/drivers/clk/qcom/videocc-sm8250.c
+++ b/drivers/clk/qcom/videocc-sm8250.c
@@ -6,6 +6,7 @@
 #include <linux/clk-provider.h>
 #include <linux/module.h>
 #include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
 #include <linux/regmap.h>
 
 #include <dt-bindings/clock/qcom,videocc-sm8250.h>
@@ -364,13 +365,31 @@ static const struct of_device_id video_cc_sm8250_match_table[] = {
 };
 MODULE_DEVICE_TABLE(of, video_cc_sm8250_match_table);
 
+static void video_cc_sm8250_pm_runtime_disable(void *data)
+{
+	pm_runtime_disable(data);
+}
+
 static int video_cc_sm8250_probe(struct platform_device *pdev)
 {
 	struct regmap *regmap;
+	int ret;
+
+	pm_runtime_enable(&pdev->dev);
+
+	ret = devm_add_action_or_reset(&pdev->dev, video_cc_sm8250_pm_runtime_disable, &pdev->dev);
+	if (ret)
+		return ret;
+
+	ret = pm_runtime_resume_and_get(&pdev->dev);
+	if (ret)
+		return ret;
 
 	regmap = qcom_cc_map(pdev, &video_cc_sm8250_desc);
-	if (IS_ERR(regmap))
+	if (IS_ERR(regmap)) {
+		pm_runtime_put(&pdev->dev);
 		return PTR_ERR(regmap);
+	}
 
 	clk_lucid_pll_configure(&video_pll0, regmap, &video_pll0_config);
 	clk_lucid_pll_configure(&video_pll1, regmap, &video_pll1_config);
@@ -379,7 +398,11 @@ static int video_cc_sm8250_probe(struct platform_device *pdev)
 	regmap_update_bits(regmap, 0xe58, BIT(0), BIT(0));
 	regmap_update_bits(regmap, 0xeec, BIT(0), BIT(0));
 
-	return qcom_cc_really_probe(pdev, &video_cc_sm8250_desc, regmap);
+	ret = qcom_cc_really_probe(pdev, &video_cc_sm8250_desc, regmap);
+
+	pm_runtime_put(&pdev->dev);
+
+	return ret;
 }
 
 static struct platform_driver video_cc_sm8250_driver = {
-- 
2.33.0


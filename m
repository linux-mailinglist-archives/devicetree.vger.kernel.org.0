Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 680CD7CE87
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2019 22:30:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729060AbfGaUac (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Jul 2019 16:30:32 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:45124 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730631AbfGaU3p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Jul 2019 16:29:45 -0400
Received: by mail-wr1-f67.google.com with SMTP id f9so71055960wre.12
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2019 13:29:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Cw8s/YHZ7PvnoGSE9VFOJmJ7OcBZMxXJRhzFX2CFS/0=;
        b=kJBbacS2TtjQjea5DOSAjsJqE9hdo66q0l+7PzEll27w7q2r/d3YlPmTw2TF+R9F50
         nxMbp/GkwT9xXklzWopx3j9i4mqwpQ4GrczTIW0U0b2rSs6PQLQaMXx4zxRC2ynE3XR2
         IAwl84EixvDnxH2WjroG/fnGDRU0MzvSiDsWpWVFqHjp+ZaOIEfUIlqFdgo6sMYm3CAH
         9mHO9XkRvHiBorUPFRfV8XrECgEXQ8+dMwzjSK/dU41Vu0Q/I0VZwYvPchiZgVo0In0R
         bUIWldv0tSwXUyewOppqEFoqvdnS6RhWIrFJeeZslX4mTf+w6DSTCBaC9FAFYqpMo0+U
         BkqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Cw8s/YHZ7PvnoGSE9VFOJmJ7OcBZMxXJRhzFX2CFS/0=;
        b=Dc+fyQ58VSfn+sbgAuUxd20IjRUoPYJ/X5ogFJDSvvZzCxzluvHha6Yo+TqE04W3Qh
         6VxdyoJSv8Wvx6L1AQ85HsOCsvtBpsnYfW60YBthAyRtL5K9NU15gugKy+G1O8WuSY+I
         DF6egu4Zb99megmj/8kd0AMnJlieKk3MFkS51p/+C9ZOo6JrRdSAJfnaSGUCNKQ43+lY
         YA13salwwCSUeJVJ364x7sZy3ea1IZiNPhC/fxGSQu7BNWw05TYS2VvqXw05wH4+j9Op
         liyUA2P6d6ye6DY573fl3cPxGJno/GHIcGxFovXylsRYK7L7YwmnZI3J7me8sqj1X1mR
         N3ag==
X-Gm-Message-State: APjAAAU3D+FvJQCoBH7FzqTCLTqwxF/r4HbJ7Pg1wGwKBn6Eta9zSkzn
        0F9rLgH6vKPotBWIvf7aVjrSaQ==
X-Google-Smtp-Source: APXvYqx10k6TjwYatpu3cCVLUnhdgjJNvE7OCa5YN6Of8Egub/YPYUA9PsSTP5VawlX3jxQ1+t8rTA==
X-Received: by 2002:adf:ef49:: with SMTP id c9mr7935008wrp.188.1564604983627;
        Wed, 31 Jul 2019 13:29:43 -0700 (PDT)
Received: from localhost.localdomain (19.red-176-86-136.dynamicip.rima-tde.net. [176.86.136.19])
        by smtp.gmail.com with ESMTPSA id i18sm91905591wrp.91.2019.07.31.13.29.41
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 31 Jul 2019 13:29:43 -0700 (PDT)
From:   Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
To:     jorge.ramirez-ortiz@linaro.org, bjorn.andersson@linaro.org,
        sboyd@kernel.org, david.brown@linaro.org, jassisinghbrar@gmail.com,
        mark.rutland@arm.com, mturquette@baylibre.com, robh+dt@kernel.org,
        will.deacon@arm.com, arnd@arndb.de, horms+renesas@verge.net.au,
        heiko@sntech.de, sibis@codeaurora.org,
        enric.balletbo@collabora.com, jagan@amarulasolutions.com,
        olof@lixom.net
Cc:     vkoul@kernel.org, niklas.cassel@linaro.org,
        georgi.djakov@linaro.org, amit.kucheria@linaro.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, khasim.mohammed@linaro.org
Subject: [PATCH v4 05/13] clk: qcom: apcs-msm8916: get parent clock names from DT
Date:   Wed, 31 Jul 2019 22:29:21 +0200
Message-Id: <20190731202929.16443-6-jorge.ramirez-ortiz@linaro.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731202929.16443-1-jorge.ramirez-ortiz@linaro.org>
References: <20190731202929.16443-1-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Allow accessing the parent clock names required for the driver
operation by using the device tree node.

This permits extending the driver to other platforms without having to
modify its source code.

For backwards compatibility leave previous values as default.

Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/clk/qcom/apcs-msm8916.c | 23 ++++++++++++++++++++---
 1 file changed, 20 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/qcom/apcs-msm8916.c b/drivers/clk/qcom/apcs-msm8916.c
index a6c89a310b18..dd82eb1e5202 100644
--- a/drivers/clk/qcom/apcs-msm8916.c
+++ b/drivers/clk/qcom/apcs-msm8916.c
@@ -19,7 +19,7 @@
 
 static const u32 gpll0_a53cc_map[] = { 4, 5 };
 
-static const char * const gpll0_a53cc[] = {
+static const char *gpll0_a53cc[] = {
 	"gpll0_vote",
 	"a53pll",
 };
@@ -50,6 +50,8 @@ static int qcom_apcs_msm8916_clk_probe(struct platform_device *pdev)
 	struct regmap *regmap;
 	struct clk_init_data init = { };
 	int ret = -ENODEV;
+	const char *parents[2];
+	int pll_index = 0;
 
 	regmap = dev_get_regmap(parent, NULL);
 	if (!regmap) {
@@ -61,6 +63,16 @@ static int qcom_apcs_msm8916_clk_probe(struct platform_device *pdev)
 	if (!a53cc)
 		return -ENOMEM;
 
+	/* legacy bindings only defined the pll parent clock (index = 0) with no
+	 * name; when both of the parents are specified in the bindings, the
+	 * pll is the second one (index = 1).
+	 */
+	if (of_clk_parent_fill(parent->of_node, parents, 2) == 2) {
+		gpll0_a53cc[0] = parents[0];
+		gpll0_a53cc[1] = parents[1];
+		pll_index = 1;
+	}
+
 	init.name = "a53mux";
 	init.parent_names = gpll0_a53cc;
 	init.num_parents = ARRAY_SIZE(gpll0_a53cc);
@@ -76,10 +88,11 @@ static int qcom_apcs_msm8916_clk_probe(struct platform_device *pdev)
 	a53cc->src_shift = 8;
 	a53cc->parent_map = gpll0_a53cc_map;
 
-	a53cc->pclk = devm_clk_get(parent, NULL);
+	a53cc->pclk = of_clk_get(parent->of_node, pll_index);
 	if (IS_ERR(a53cc->pclk)) {
 		ret = PTR_ERR(a53cc->pclk);
-		dev_err(dev, "failed to get clk: %d\n", ret);
+		if (ret != -EPROBE_DEFER)
+			dev_err(dev, "failed to get clk: %d\n", ret);
 		return ret;
 	}
 
@@ -87,6 +100,7 @@ static int qcom_apcs_msm8916_clk_probe(struct platform_device *pdev)
 	ret = clk_notifier_register(a53cc->pclk, &a53cc->clk_nb);
 	if (ret) {
 		dev_err(dev, "failed to register clock notifier: %d\n", ret);
+		clk_put(a53cc->pclk);
 		return ret;
 	}
 
@@ -109,6 +123,8 @@ static int qcom_apcs_msm8916_clk_probe(struct platform_device *pdev)
 
 err:
 	clk_notifier_unregister(a53cc->pclk, &a53cc->clk_nb);
+	clk_put(a53cc->pclk);
+
 	return ret;
 }
 
@@ -117,6 +133,7 @@ static int qcom_apcs_msm8916_clk_remove(struct platform_device *pdev)
 	struct clk_regmap_mux_div *a53cc = platform_get_drvdata(pdev);
 
 	clk_notifier_unregister(a53cc->pclk, &a53cc->clk_nb);
+	clk_put(a53cc->pclk);
 
 	return 0;
 }
-- 
2.22.0


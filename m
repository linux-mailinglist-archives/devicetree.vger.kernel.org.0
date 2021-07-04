Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3267D3BAAEA
	for <lists+devicetree@lfdr.de>; Sun,  4 Jul 2021 04:40:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229749AbhGDCnZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 3 Jul 2021 22:43:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229732AbhGDCnZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 3 Jul 2021 22:43:25 -0400
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F09C3C061762
        for <devicetree@vger.kernel.org>; Sat,  3 Jul 2021 19:40:49 -0700 (PDT)
Received: by mail-pf1-x42c.google.com with SMTP id a127so13257356pfa.10
        for <devicetree@vger.kernel.org>; Sat, 03 Jul 2021 19:40:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=SJ6mWKBojJfVdE79tK2x9bM0KQ+BiVthSv3BXWqHjkA=;
        b=aCFrfva8wFoCWLRwo8eKYLEdNKeqnJuogWU0ePmKz+CrEJIoYiNVa1G1lfCAj2bH6r
         fDWc2EWpHYaAbvjaRBdcjXDdlJ0Zy8vW12pP86Mtyj58l8GuNZxzj4lrCTTMug3ml7XB
         26h9lYHdQMuqyqrz4uX5Xxs6YTLRgGgH3c4QXuwePFVS4gGTib7w3ngck8BfOHaC39if
         mrAWQVjW3LUAFa8cFStyfKYBZhwwD35muKPPZuoQKonbjai3pEm/w52tYGya0lKNxdmw
         22ORKfmPqqiLsGvUnIyWayhLvYN0lxviZxTMQO3+J1w6j/aQn3+lAfzOxx9DoqqA6ZAy
         tyYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=SJ6mWKBojJfVdE79tK2x9bM0KQ+BiVthSv3BXWqHjkA=;
        b=A0OWzO/TIeYVU7xbx2abfylcJtbORk3DVpU7ECW10uv88RkpybCUd40so7z5hqmEhp
         aDZMKR+HepXVwiL/gIb0kR1qod1Ti17RNs2lILgiBVrwp6Ek2MjbJoGOO47h8nH+nxYX
         aU7tQuJAk1hBWUH5GQ+ps4CFmaysJdbXidkeJ+uFsKLbvUnrFwyGt2b7QvIlZ5oeYhQr
         Fh21+f3paRGKHTTWt5uw40GDB6kJAv5iYNJA8lpaQd4s4FAHSSpCqRF8/vjf9oJtcEEQ
         Mi+0h53TazyTBYzS/j1eLHpa+QeZEVzEmGi7kRA94xVndA91Tbqz/nwOzEYn3U8Jiuw8
         62/g==
X-Gm-Message-State: AOAM533D6SDMJzC1V9Ebe0K0cQUqxdUH8Hp174Da51Br+35NM8l5fE00
        0MQXeLzitN9+wbgz+pRyxZqkXQ==
X-Google-Smtp-Source: ABdhPJwVZjknSowvP1KPgjYS6i71VgkhYhJCfSnpQN6uLbbERr6blxgt9xjDrYhh+GgXgBRj29RYvw==
X-Received: by 2002:a05:6a00:1508:b029:30a:2b2:b2ea with SMTP id q8-20020a056a001508b029030a02b2b2eamr7762189pfu.30.1625366449541;
        Sat, 03 Jul 2021 19:40:49 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id g17sm9394624pgh.61.2021.07.03.19.40.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Jul 2021 19:40:49 -0700 (PDT)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Stephen Boyd <sboyd@kernel.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sivaprakash Murugesan <sivaprak@codeaurora.org>,
        Benjamin Li <benl@squareup.com>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH v2 2/4] clk: qcom: a53pll/mux: Use unique clock name
Date:   Sun,  4 Jul 2021 10:40:30 +0800
Message-Id: <20210704024032.11559-3-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210704024032.11559-1-shawn.guo@linaro.org>
References: <20210704024032.11559-1-shawn.guo@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Different from MSM8916 which has only one a53pll/mux clock, MSM8939 gets
three for Cluster0 (little cores), Cluster1 (big cores) and CCI (Cache
Coherent Interconnect).  That said, a53pll/mux clock needs to be named
uniquely.  Append @unit-address of device node to the clock name, so
that a53pll/mux will be named like below on MSM8939.

  a53pll@b016000
  a53pll@b116000
  a53pll@b1d0000

  a53mux@b1d1000
  a53mux@b011000
  a53mux@b111000

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 drivers/clk/qcom/a53-pll.c      | 8 +++++++-
 drivers/clk/qcom/apcs-msm8916.c | 8 +++++++-
 2 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/qcom/a53-pll.c b/drivers/clk/qcom/a53-pll.c
index d6756bd777ce..96a118be912d 100644
--- a/drivers/clk/qcom/a53-pll.c
+++ b/drivers/clk/qcom/a53-pll.c
@@ -37,6 +37,7 @@ static const struct regmap_config a53pll_regmap_config = {
 static int qcom_a53pll_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
+	struct device_node *np = dev->of_node;
 	struct regmap *regmap;
 	struct resource *res;
 	struct clk_pll *pll;
@@ -66,7 +67,12 @@ static int qcom_a53pll_probe(struct platform_device *pdev)
 	pll->status_bit = 16;
 	pll->freq_tbl = a53pll_freq;
 
-	init.name = "a53pll";
+	/* Use an unique name by appending @unit-address */
+	init.name = devm_kasprintf(dev, GFP_KERNEL, "a53pll%s",
+				   strchrnul(np->full_name, '@'));
+	if (!init.name)
+		return -ENOMEM;
+
 	init.parent_names = (const char *[]){ "xo" };
 	init.num_parents = 1;
 	init.ops = &clk_pll_sr2_ops;
diff --git a/drivers/clk/qcom/apcs-msm8916.c b/drivers/clk/qcom/apcs-msm8916.c
index d7ac6d6b15b6..89e0730810ac 100644
--- a/drivers/clk/qcom/apcs-msm8916.c
+++ b/drivers/clk/qcom/apcs-msm8916.c
@@ -46,6 +46,7 @@ static int qcom_apcs_msm8916_clk_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct device *parent = dev->parent;
+	struct device_node *np = parent->of_node;
 	struct clk_regmap_mux_div *a53cc;
 	struct regmap *regmap;
 	struct clk_init_data init = { };
@@ -61,7 +62,12 @@ static int qcom_apcs_msm8916_clk_probe(struct platform_device *pdev)
 	if (!a53cc)
 		return -ENOMEM;
 
-	init.name = "a53mux";
+	/* Use an unique name by appending parent's @unit-address */
+	init.name = devm_kasprintf(dev, GFP_KERNEL, "a53mux%s",
+				   strchrnul(np->full_name, '@'));
+	if (!init.name)
+		return -ENOMEM;
+
 	init.parent_data = pdata;
 	init.num_parents = ARRAY_SIZE(pdata);
 	init.ops = &clk_regmap_mux_div_ops;
-- 
2.17.1


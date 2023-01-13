Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D4D486696B8
	for <lists+devicetree@lfdr.de>; Fri, 13 Jan 2023 13:14:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240992AbjAMMO1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Jan 2023 07:14:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241244AbjAMMMu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Jan 2023 07:12:50 -0500
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C511080981
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 04:07:16 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id j17so32859535lfr.3
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 04:07:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0nnTbuOFOQP2s9/06xff8GIHlv+LlltwM1Tm0eqjB58=;
        b=eEPwM/3xVp46IyeJU7+YhAkgrjCmqQ52bfeHymGX3PhosG1d30ue3C2vBgnWUXiKeb
         gj1zLOnnytBzl3Sy9Uo8T+lNJSERnei8s9hDrD/RJQnpJp35rRkky4/QJRtrPUwCJw8f
         fLQbgZcHu8GWd4eL+Lbkjsj/1loTAjbF10YzLEyg5YsXEG1NDGg+D4Ur7ECQpzKEF7OS
         AC0aiXb2ZuC+Tr6Q2/NY7jsMoHIWHrY6suPgXQo+RGu67hRu4HfFChtbcDIt6xtvAc5g
         vUR2Vgujaqp3n5X2Y+Ew1+d9yPpPK2HA9iHknXh1TIc9YHA0FeVOcA0kZGPaxaLnbMHv
         2G9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0nnTbuOFOQP2s9/06xff8GIHlv+LlltwM1Tm0eqjB58=;
        b=zk8XKFRwQf0Z38CySMPgKfop7jiEBU+UcuzfmVmD7kw0fK1CjbTS6JLoWtdqbh9Pdt
         3VuZhPI4uFGzqFXJLppCmQ+9+JoeDeAoXfqyIdGK8umCBAeHnL8s2E6qMwx/PlVBO+9u
         PDjACbPL2XCSDVeOXGyG3gDJlnpdlqYyJC5IeuHGKjvUQZJwUr1Uu0FLKS4ZJxNK5amF
         Ou4YqoMhz6vnXHZ+RsW5GXXe9JidIbpRWQIZ1DNGPkOgqvNuy9I6i3gfM65LVJ/o0arT
         bUhMnv61pal36eCTD2xABg1MkgXQkTgsUIsecrQ+LoGVlgbQeIDrZRCIsOLa2BdTjxrA
         kZBA==
X-Gm-Message-State: AFqh2kr9cyqg1lmjUvEM7LWr06QvYnJbDCMFthLagxk8PJG/04TJLNjz
        yuR8t5ik5fT21K2pCKKZl4uP5g==
X-Google-Smtp-Source: AMrXdXszMan5fFmzE2+Lznlf8tstmmIpFpwJ8UytQ0t7qi/vkFmGe2Sp41K8Bon2M3LVUnU0J1Er1g==
X-Received: by 2002:ac2:5604:0:b0:4b5:8507:9ae6 with SMTP id v4-20020ac25604000000b004b585079ae6mr19476402lfd.2.1673611636314;
        Fri, 13 Jan 2023 04:07:16 -0800 (PST)
Received: from eriador.lumag.spb.ru ([188.170.82.205])
        by smtp.gmail.com with ESMTPSA id i7-20020ac25227000000b004ac6a444b26sm3806290lfl.141.2023.01.13.04.07.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 04:07:15 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v3 10/14] clk: qcom: cpu-8996: fix PLL configuration sequence
Date:   Fri, 13 Jan 2023 14:05:40 +0200
Message-Id: <20230113120544.59320-11-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230113120544.59320-1-dmitry.baryshkov@linaro.org>
References: <20230113120544.59320-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Switch both power and performance clocks to the GPLL0/2 (sys_apcs_aux)
before PLL configuration. Switch them to the ACD afterwards.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/clk/qcom/clk-cpu-8996.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/clk/qcom/clk-cpu-8996.c b/drivers/clk/qcom/clk-cpu-8996.c
index 571ed52b3026..07d59bca741e 100644
--- a/drivers/clk/qcom/clk-cpu-8996.c
+++ b/drivers/clk/qcom/clk-cpu-8996.c
@@ -432,13 +432,27 @@ static int qcom_cpu_clk_msm8996_register_clks(struct device *dev,
 {
 	int i, ret;
 
+	/* Select GPLL0 for 300MHz for both clusters */
+	regmap_write(regmap, PERFCL_REG_OFFSET + MUX_OFFSET, 0xc);
+	regmap_write(regmap, PWRCL_REG_OFFSET + MUX_OFFSET, 0xc);
+
+	/* Ensure write goes through before PLLs are reconfigured */
+	udelay(5);
+
 	clk_alpha_pll_configure(&pwrcl_pll, regmap, &hfpll_config);
 	clk_alpha_pll_configure(&perfcl_pll, regmap, &hfpll_config);
 	clk_alpha_pll_configure(&pwrcl_alt_pll, regmap, &altpll_config);
 	clk_alpha_pll_configure(&perfcl_alt_pll, regmap, &altpll_config);
 
+	/* Wait for PLL(s) to lock */
+	udelay(50);
+
 	qcom_cpu_clk_msm8996_acd_init(regmap);
 
+	/* Switch clusters to use the ACD leg */
+	regmap_write(regmap, PWRCL_REG_OFFSET + MUX_OFFSET, 0x2);
+	regmap_write(regmap, PERFCL_REG_OFFSET + MUX_OFFSET, 0x2);
+
 	for (i = 0; i < ARRAY_SIZE(cpu_msm8996_hw_clks); i++) {
 		ret = devm_clk_hw_register(dev, cpu_msm8996_hw_clks[i]);
 		if (ret)
-- 
2.39.0


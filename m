Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4FECC550D43
	for <lists+devicetree@lfdr.de>; Sun, 19 Jun 2022 23:27:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237404AbiFSV1q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Jun 2022 17:27:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237414AbiFSV1p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Jun 2022 17:27:45 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A753EAE4F
        for <devicetree@vger.kernel.org>; Sun, 19 Jun 2022 14:27:43 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id y32so14397612lfa.6
        for <devicetree@vger.kernel.org>; Sun, 19 Jun 2022 14:27:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DMW4X+OpXFfObqgdzXMvjjprcTXem/80ijgRnPO+gZw=;
        b=cyXOq+/MjALol0k9cAeI1bTAnKkO5LcwVUNcmQMWlx6TZ0ak6kjpgWcw6ovNCr6c2f
         EnpjpVBu7idcQ+BTx+Yru5Qc+c9bzQcT4VI3Mnj4M689UY3KzrpoMSJ/KhNG4wfQRCvv
         NfZDZGqZYUpTiC3Lcm10LmF4N0sUzdQFSsVOa1o7EpEjvhZTfQUkIsF7NcsvYJwFaNLl
         9c/vQJFZXb5xmThbg8CPin59kXjUsFig7LBy7qWEqM9+S1cMBWwNcuTPPbFx/6pyDQQh
         TUbjhxex0sYBBdAk9YX7KhG1Z1fiJ1yx7Q6DTPwj4W4RXbZFGYllLh59ghNb2LrSLOv/
         v49g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DMW4X+OpXFfObqgdzXMvjjprcTXem/80ijgRnPO+gZw=;
        b=UnTaZ4R5+5Ei22GqEMdHpFIUHp0RP7W09MAdxZgM0ZTY+6arKgeuYxsqqM/HSlYCCZ
         Y0ppwVz1VV/tv0YUIoD4LHs8fadrbSL8ED/AmYuT4O9RMl0uSjwRZ0JnuZ80B7dT0po2
         nqcyNUQj0ktMGWBH5mqh/R9k2+FnQbcxLGC60eyDdLWGVp66wR/94hsV7NzIxm6al/s0
         HYPHn5g+mqGS1kvyOc3O/1X5LgEfY5U0O01RqSTn6RgDcQNp1j8JrdcwgxefRvDh4GGU
         gMjuXgwYYC9Bnij6gO7RrebVR+CAqoa1NMjlLNsiQu5j22yecwG60RofWduVQDPT3QRK
         BbfQ==
X-Gm-Message-State: AJIora9uqSAE3fi5vQfmUbT9ijbZihNS3FZbDTsIviIreQPAp40PMBDD
        bUC4suWnZnMj/VXPR17NLozISg==
X-Google-Smtp-Source: AGRyM1uAH8tGt58kXMOfBGQ4I12VZ27ALBXi+aaGGxMAAMMoeGeUSg6IROiCrHsSuaJE20R3lpz3tQ==
X-Received: by 2002:a05:6512:3e11:b0:473:9f5f:feda with SMTP id i17-20020a0565123e1100b004739f5ffedamr11649567lfv.244.1655674063179;
        Sun, 19 Jun 2022 14:27:43 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id s19-20020a056512215300b004796a17246esm649078lfr.252.2022.06.19.14.27.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Jun 2022 14:27:42 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Subject: [PATCH v3 7/7] arm64: dts: qcom: msm8916: add clocks to the GCC device node
Date:   Mon, 20 Jun 2022 00:27:35 +0300
Message-Id: <20220619212735.1244953-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220619212735.1244953-1-dmitry.baryshkov@linaro.org>
References: <20220619212735.1244953-1-dmitry.baryshkov@linaro.org>
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

As we are converting this platform to use DT clock bindings, add clocks
and clock-names properties to the MMCC device tree node.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index 05472510e29d..562c42ce2c5c 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -934,6 +934,20 @@ gcc: clock-controller@1800000 {
 			#reset-cells = <1>;
 			#power-domain-cells = <1>;
 			reg = <0x01800000 0x80000>;
+			clocks = <&xo_board>,
+				 <&sleep_clk>,
+				 <&dsi_phy0 1>,
+				 <&dsi_phy0 0>,
+				 <0>,
+				 <0>,
+				 <0>;
+			clock-names = "xo",
+				      "sleep_clk",
+				      "dsi0pll",
+				      "dsi0pllbyte",
+				      "ext_mclk",
+				      "ext_pri_i2s",
+				      "ext_sec_i2s";
 		};
 
 		tcsr_mutex: hwlock@1905000 {
-- 
2.35.1


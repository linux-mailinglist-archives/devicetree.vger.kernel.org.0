Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 21128550D2A
	for <lists+devicetree@lfdr.de>; Sun, 19 Jun 2022 23:26:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237328AbiFSV0C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Jun 2022 17:26:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237288AbiFSV0A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Jun 2022 17:26:00 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41BEF656B
        for <devicetree@vger.kernel.org>; Sun, 19 Jun 2022 14:25:59 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id g4so2024741lfv.9
        for <devicetree@vger.kernel.org>; Sun, 19 Jun 2022 14:25:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mgNG4CqobFmIv3cjkJhZdSr5JTtKXvysIj6GWq9VnJY=;
        b=s0KMIc9+Eo29Hz94u3DVPWl2jKS80lBkD8M/KQwfulYJr4wZ1gTlTic8LGYD4Sf/Y0
         qia8qqXA5OQtAM5XOPg/SPXG9diNxiC84BJBZtXohpKmbUkdu9mkUhty9qNiwkkBRD5R
         AT33yH33Enn9lXpowLmQnA3WOcZpoSH17oYEHGhvGKF9NxIf4HmZaD7pyPXGsFrXPl+e
         JZ2O/SMUnIwlOJucMRxu3C84X/QaefBlD31fzSuRXseOu7TZjWMCWUPXy2uMkq7r1Wri
         r2fOOgIqvvxcPcTZi7u+GqDBcCWNPV3LjdnFJh2eR5Qge0lN8bI7/OzAlUqrjM10WloO
         Knkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mgNG4CqobFmIv3cjkJhZdSr5JTtKXvysIj6GWq9VnJY=;
        b=iY94XJrI0zObwWl0TMgSlnzr0JtQ3gH7mrXVM+0OQAh024Vq++kueHL5nsXB0GsOhM
         UtVNZUxq1G/3IHmuHKz3gmMFj+hnv6Cwnik7/N9IIebqYEGf4CsR8cAmiGC8D7OFOwX3
         Pr5iMPKBG3XuKjxX9drMXtlY5bsM0ng8TclRg33SHXnkoxDCqgkULq+MF4b28BS8gu1t
         le/v7qjr1u3Ejg1E7RZKxJz34iea4Mh3TZ//icwX9qXfu2oJzne2LXrjFiWIbv0HrfFd
         eUoXzTCL3EYPFEsmDy2HPQRw317crmQjFhZpYy8uGgIOySFVW46VlZWBT1QXf4jX3imu
         /p+A==
X-Gm-Message-State: AJIora8Ti/GaFi0xlh16K8hnvMo6k+gBD9wVGVwTk1VxlnCCubZ4ArRp
        NRuC54m3jsY8LAAALTWkjNRE3g==
X-Google-Smtp-Source: AGRyM1sLUaSI2w7lpsyGmFlTdfSL2NBxf81GzHNNJ1hv2G64VYnhNsg8z3XZmoVAmDXrJCpEgtTkEw==
X-Received: by 2002:a05:6512:11c3:b0:479:5b9d:6174 with SMTP id h3-20020a05651211c300b004795b9d6174mr12029377lfr.75.1655673958820;
        Sun, 19 Jun 2022 14:25:58 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u3-20020ac258c3000000b00478de10cf5esm626866lfo.247.2022.06.19.14.25.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Jun 2022 14:25:58 -0700 (PDT)
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
Subject: [PATCH v2 7/7] arm64: dts: qcom: msm8916: add clocks to the GCC device node
Date:   Mon, 20 Jun 2022 00:25:49 +0300
Message-Id: <20220619212549.1240891-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220619212549.1240891-1-dmitry.baryshkov@linaro.org>
References: <20220619212549.1240891-1-dmitry.baryshkov@linaro.org>
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

As we are converting this platform to use DT clock bindings, add clocks
and clock-names properties to the MMCC device tree node.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index 05472510e29d..e905415b3456 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -934,6 +934,20 @@ gcc: clock-controller@1800000 {
 			#reset-cells = <1>;
 			#power-domain-cells = <1>;
 			reg = <0x01800000 0x80000>;
+			clocks = <&rpmcc RPM_SMD_BB_CLK1_PIN>,
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


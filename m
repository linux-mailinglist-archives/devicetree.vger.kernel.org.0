Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7FE6F5E8969
	for <lists+devicetree@lfdr.de>; Sat, 24 Sep 2022 10:05:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233642AbiIXIF0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Sep 2022 04:05:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233493AbiIXIFR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Sep 2022 04:05:17 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C74F5115A5D
        for <devicetree@vger.kernel.org>; Sat, 24 Sep 2022 01:05:11 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id j16so3555152lfg.1
        for <devicetree@vger.kernel.org>; Sat, 24 Sep 2022 01:05:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=8lAIBCt1PKqT83z5Pfqrod3Tf9eYcvIt2hipTAD1Nug=;
        b=c6xsZxHwLXVrzN+3vZjTN9Gh4e6mhd3Ame1kjOEd25xQl1pbJRPOoN+PF+zhFZ9TlK
         /IG0vV8crFJ1PTgP9Ht/VK0cCkNcnEJFwS10IqfsZRROjt6AJKD4CQqg3x4kAbfD/ZOQ
         FrvUZOEndUAOh+Ij8Tbp14iHIK+uCL76a3l/egz9w1rloBI16+4Go+mAKs2z4dLxR/P5
         cG33dcXfSIfx4J1EsG3G2LW/6oYFsz89sGJGgBfa14PBEiEHOJOU+nPlecDR1999Xvl2
         KiY7mfBsJqFzKtmQM+EpmsAAjC26z6frtLHwQHSpwt1efcL9ihm9++I7O9xnOhI7mhPL
         kung==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=8lAIBCt1PKqT83z5Pfqrod3Tf9eYcvIt2hipTAD1Nug=;
        b=4vG8M9GDTDiBPwI0ogZnBTROVKS3nalIeWbNglh0pb9XQ/Sqxgt/Fstd4mdF7mqSPP
         9RWVuvfvCGjhcNCionLLG+spMxDt7EpEQDwVHVe44cAuDuPwA5ngKoQGAeL3AQA1UEWp
         k4R5yxtyZUXzkYOi0QAgBTPqUoI25m7ZoodSxz5B/Nj9WW4khlGvIqyNtjXkTBvKeIwR
         klV20qnVU+0ABmSg0SKktBQeau1ysWyo+lBGPPa2DFKwREnWdXjxiGb9gVbaggxcrZwH
         XE9d2JQ294jQR5WZ5SkbVMSlA7Ed3m5LJVOUBTTO77M9KpbhApKT0oZ6IEgJlpwhuMrL
         1G8g==
X-Gm-Message-State: ACrzQf205YNOpmDa0y0Jrjq1pI8PjN+TZVx9+pff9xgmNqMZPW9QX/5r
        WNHYAeQw5SK94SUYuPGsbAlMGQ==
X-Google-Smtp-Source: AMsMyM4y1A+dLv203gZHep1szWw2vpsDERPswIZBfSbm6/O5MVJi4Gg44hMNh6kNYuYeMcOw9OsPTg==
X-Received: by 2002:a05:6512:6c8:b0:49a:1765:335d with SMTP id u8-20020a05651206c800b0049a1765335dmr4617975lff.29.1664006710046;
        Sat, 24 Sep 2022 01:05:10 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id y2-20020a2e5442000000b0026c41574790sm1696668ljd.30.2022.09.24.01.05.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Sep 2022 01:05:09 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sricharan R <sricharan@codeaurora.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Shawn Guo <shawn.guo@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        krishna Lanka <quic_vamslank@quicinc.com>,
        Sivaprakash Murugesan <sivaprak@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 02/32] arm64: dts: qcom: ipq6018: align TLMM pin configuration with DT schema
Date:   Sat, 24 Sep 2022 10:04:29 +0200
Message-Id: <20220924080459.13084-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220924080459.13084-1-krzysztof.kozlowski@linaro.org>
References: <20220924080459.13084-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DT schema expects TLMM pin configuration nodes to be named with
'-state' suffix and their optional children with '-pins' suffix.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts | 4 ++--
 arch/arm64/boot/dts/qcom/ipq6018.dtsi        | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts b/arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts
index afc2dc79767d..e1fe7d598580 100644
--- a/arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts
+++ b/arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts
@@ -51,13 +51,13 @@ flash@0 {
 };
 
 &tlmm {
-	i2c_1_pins: i2c-1-pins {
+	i2c_1_pins: i2c-1-state {
 		pins = "gpio42", "gpio43";
 		function = "blsp2_i2c";
 		drive-strength = <8>;
 	};
 
-	spi_0_pins: spi-0-pins {
+	spi_0_pins: spi-0-state {
 		pins = "gpio38", "gpio39", "gpio40", "gpio41";
 		function = "blsp1_spi";
 		drive-strength = <8>;
diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
index a7c7ca980a71..9b9f778090e1 100644
--- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
@@ -218,14 +218,14 @@ tlmm: pinctrl@1000000 {
 			interrupt-controller;
 			#interrupt-cells = <2>;
 
-			serial_3_pins: serial3-pinmux {
+			serial_3_pins: serial3-state {
 				pins = "gpio44", "gpio45";
 				function = "blsp2_uart";
 				drive-strength = <8>;
 				bias-pull-down;
 			};
 
-			qpic_pins: qpic-pins {
+			qpic_pins: qpic-state {
 				pins = "gpio1", "gpio3", "gpio4",
 					"gpio5", "gpio6", "gpio7",
 					"gpio8", "gpio10", "gpio11",
-- 
2.34.1


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 98759671A60
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 12:20:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229893AbjARLUY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 06:20:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230080AbjARLTw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 06:19:52 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 348866CCF4
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 02:35:10 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id k16so3681159wms.2
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 02:35:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iIDXkdPXxIGn0ZNYUmZnXVxjwZTStPEoPMuwp198lp8=;
        b=RH/qet4XNhU52ZWTvIyivLWn+3ztIVzNZu0xoCsse1b8KUAuIssqWY6lVgLSomCM0M
         8ryTI7nbqWVgJiOUNXB1D0ZWoeLXpMKPofo+9qdhdPgSjBQ5DyM7RHzSPc+eTjs3jEhb
         Xevkftdr/bspV3MY26tRsQihSbtZ96BAu5Qk0AuN73S9ZRJWnZ5JxcJlqKbRxWmYDBE0
         VTTflC61im7P4fKcbs+PcWjOEb61irZjzKvPiHdRVxmw3wBSFU21Y/ZzqwJPe2rCAi9T
         ZusVHUzRcQD1TnWDrl/4dJLjCXltfVFZc36Zu6MHOQnQQcu1PZRlmJwb9VwdPHKXSMkI
         PeGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iIDXkdPXxIGn0ZNYUmZnXVxjwZTStPEoPMuwp198lp8=;
        b=JyLpLWSx6TebZ1sjqs/RBoJzdIPOALKPq9L2NdCHL0ouI4hAxOyq6ob8+UNhUZRMSh
         lCzZWCZyZ2WVf9K1+CqZ3FyH9vpOjvxpHC1uSZmnlAsDTSdQ6ntejVhWnAwXTuCi2Ia/
         OTCL14cT9NDZIp0CW5rXE4yVj8lUV0xwC9+eIBh1yYhEThib6DJ3RKqPi1azSchdtmbj
         fxe+Howx9hgu890szBidnZME2cAWcmk5w8OGy+Dh9JsUq0xcI8O3VoN+3cCGJgbJeWZT
         phOvdKcETNv9Yur2NYsBZRICfhpoEdG37WslNqaBmc3E1BwbOQZ/lRP4PGQkZDEx7j1A
         t2oQ==
X-Gm-Message-State: AFqh2kogHkzfm48FD/+WOMO2Y9MxLMNSnUYOVhXHojHRSnY+z/VDa0DD
        hbmkvTwSYknyGSQGwgTeOzSOvg==
X-Google-Smtp-Source: AMrXdXtx/YYLRzeSDvijXD69XalTZ3p6xPEchA6Fznk7hRIofwQLK3kT8rL+8ucAXpZPU49W+NXo5A==
X-Received: by 2002:a05:600c:1f09:b0:3d3:5506:1bac with SMTP id bd9-20020a05600c1f0900b003d355061bacmr2128201wmb.30.1674038108722;
        Wed, 18 Jan 2023 02:35:08 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id ba29-20020a0560001c1d00b002b065272da2sm10076731wrb.13.2023.01.18.02.35.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jan 2023 02:35:08 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [RFT PATCH v2 5/6] arm64: dts: qcom: sdm845-audio-wcd9340: commonize pinctrl
Date:   Wed, 18 Jan 2023 11:34:57 +0100
Message-Id: <20230118103458.107434-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230118103458.107434-1-krzysztof.kozlowski@linaro.org>
References: <20230118103458.107434-1-krzysztof.kozlowski@linaro.org>
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

Pin configuration fow WCD9340 is the same in all users, so move it to
common file to reduce the code duplication (which still allows further
customizations per board).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

---

Changes since v1:
1. Add Rb tag.
2. Split from previous patchset.
---
 .../arm64/boot/dts/qcom/sdm845-audio-wcd9340.dtsi | 15 +++++++++++++++
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts        | 11 -----------
 .../dts/qcom/sdm845-xiaomi-beryllium-common.dtsi  | 11 -----------
 .../arm64/boot/dts/qcom/sdm845-xiaomi-polaris.dts | 10 ----------
 .../boot/dts/qcom/sdm850-lenovo-yoga-c630.dts     | 11 -----------
 arch/arm64/boot/dts/qcom/sdm850-samsung-w737.dts  | 11 -----------
 6 files changed, 15 insertions(+), 54 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-audio-wcd9340.dtsi b/arch/arm64/boot/dts/qcom/sdm845-audio-wcd9340.dtsi
index 0a94fde6741d..d0c77a8c1985 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-audio-wcd9340.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845-audio-wcd9340.dtsi
@@ -32,6 +32,10 @@ wcd9340: codec@1,0 {
 			#clock-cells = <0>;
 			clock-frequency = <9600000>;
 			clock-output-names = "mclk";
+
+			pinctrl-0 = <&wcd_intr_default>;
+			pinctrl-names = "default";
+
 			qcom,micbias1-microvolt = <1800000>;
 			qcom,micbias2-microvolt = <1800000>;
 			qcom,micbias3-microvolt = <1800000>;
@@ -123,3 +127,14 @@ codec {
 		};
 	};
 };
+
+&tlmm {
+	wcd_intr_default: wcd-intr-default-state {
+		pins = "gpio54";
+		function = "gpio";
+
+		input-enable;
+		bias-pull-down;
+		drive-strength = <2>;
+	};
+};
diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
index 11b0554a6aea..e0289973d3e4 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
@@ -929,15 +929,6 @@ sdc2_card_det_n: sd-card-det-n-state {
 		function = "gpio";
 		bias-pull-up;
 	};
-
-	wcd_intr_default: wcd-intr-default-state {
-		pins = "gpio54";
-		function = "gpio";
-
-		input-enable;
-		bias-pull-down;
-		drive-strength = <2>;
-	};
 };
 
 &uart3 {
@@ -1043,8 +1034,6 @@ &venus {
 };
 
 &wcd9340 {
-	pinctrl-0 = <&wcd_intr_default>;
-	pinctrl-names = "default";
 	clock-names = "extclk";
 	clocks = <&rpmhcc RPMH_LN_BB_CLK2>;
 	reset-gpios = <&tlmm 64 GPIO_ACTIVE_HIGH>;
diff --git a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
index 54eabacdc031..5aca280b3994 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
@@ -416,15 +416,6 @@ sdc2_card_det_n: sd-card-det-n-state {
 		function = "gpio";
 		bias-pull-up;
 	};
-
-	wcd_intr_default: wcd-intr-default-state {
-		pins = "gpio54";
-		function = "gpio";
-
-		input-enable;
-		bias-pull-down;
-		drive-strength = <2>;
-	};
 };
 
 &uart6 {
@@ -493,8 +484,6 @@ &venus {
 };
 
 &wcd9340 {
-	pinctrl-0 = <&wcd_intr_default>;
-	pinctrl-names = "default";
 	clock-names = "extclk";
 	clocks = <&rpmhcc RPMH_LN_BB_CLK2>;
 	reset-gpios = <&tlmm 64 GPIO_ACTIVE_HIGH>;
diff --git a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-polaris.dts b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-polaris.dts
index f81619c8a3ba..1ceeea0885b9 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-polaris.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-polaris.dts
@@ -616,14 +616,6 @@ sde_dsi_suspend: sde-dsi-suspend-state {
 		drive-strength = <2>;
 		bias-pull-down;
 	};
-
-	wcd_intr_default: wcd-intr-default-state {
-		pins = "gpio54";
-		function = "gpio";
-		input-enable;
-		bias-pull-down;
-		drive-strength = <2>;
-	};
 };
 
 &uart6 {
@@ -700,8 +692,6 @@ &venus {
 };
 
 &wcd9340 {
-	pinctrl-0 = <&wcd_intr_default>;
-	pinctrl-names = "default";
 	clock-names = "extclk";
 	clocks = <&rpmhcc RPMH_LN_BB_CLK2>;
 	reset-gpios = <&tlmm 64 GPIO_ACTIVE_HIGH>;
diff --git a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
index b979d8ae8698..db868af1f399 100644
--- a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
+++ b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
@@ -584,15 +584,6 @@ i2c11_hid_active: i2c11-hid-active-state {
 		drive-strength = <2>;
 	};
 
-	wcd_intr_default: wcd-intr-default-state {
-		pins = "gpio54";
-		function = "gpio";
-
-		input-enable;
-		bias-pull-down;
-		drive-strength = <2>;
-	};
-
 	lid_pin_active: lid-pin-state {
 		pins = "gpio124";
 		function = "gpio";
@@ -703,8 +694,6 @@ &venus {
 };
 
 &wcd9340 {
-	pinctrl-0 = <&wcd_intr_default>;
-	pinctrl-names = "default";
 	clock-names = "extclk";
 	clocks = <&rpmhcc RPMH_LN_BB_CLK2>;
 	reset-gpios = <&tlmm 64 GPIO_ACTIVE_HIGH>;
diff --git a/arch/arm64/boot/dts/qcom/sdm850-samsung-w737.dts b/arch/arm64/boot/dts/qcom/sdm850-samsung-w737.dts
index 75773b06701b..6a9ced334f19 100644
--- a/arch/arm64/boot/dts/qcom/sdm850-samsung-w737.dts
+++ b/arch/arm64/boot/dts/qcom/sdm850-samsung-w737.dts
@@ -507,15 +507,6 @@ pen_rst_l: pen-rst-l-state {
 		 */
 		output-high;
 	};
-
-	wcd_intr_default: wcd-intr-default-state {
-		pins = "gpio54";
-		function = "gpio";
-
-		input-enable;
-		bias-pull-down;
-		drive-strength = <2>;
-	};
 };
 
 &uart6 {
@@ -611,8 +602,6 @@ &venus {
 };
 
 &wcd9340 {
-	pinctrl-0 = <&wcd_intr_default>;
-	pinctrl-names = "default";
 	clock-names = "extclk";
 	clocks = <&rpmhcc RPMH_LN_BB_CLK2>;
 	reset-gpios = <&tlmm 64 GPIO_ACTIVE_HIGH>;
-- 
2.34.1


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA1006AAFB4
	for <lists+devicetree@lfdr.de>; Sun,  5 Mar 2023 14:00:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229622AbjCENAC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Mar 2023 08:00:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229604AbjCENAA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Mar 2023 08:00:00 -0500
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3584E12BE5
        for <devicetree@vger.kernel.org>; Sun,  5 Mar 2023 04:59:58 -0800 (PST)
Received: by mail-ed1-x530.google.com with SMTP id j11so8459568edq.4
        for <devicetree@vger.kernel.org>; Sun, 05 Mar 2023 04:59:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678021196;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8c2yb4QaL3JCLZ0HwZ8OkD2d0yLIhaH9t78vVtlBE/A=;
        b=Cq8ohg8BKAbp3khwYMaGdtt72nNTH20QHKg124wzLReL+dkwRbaFIOBn+Q6+M2BDJu
         FCWldJwi/vhHrtJ7K5vI/8L6t3UdRG9VDdbU3LONsgDs7MlySEXwvfV97VtMH4Hra58u
         lRM0g3cJslzrz1/nK9F8aqNIVX0BcoaxnNM+BZhY5z+UbY0OFcDegbkSgvgtnEt5kwAe
         20a9IMhOVhUgsaJeAoTvCdNJq5bvvoLQWZTRfTCAkTTfvydbO9GHRrnTLVzVoFb99ZoE
         w/JqWo2bRyig9HjK6L1eSnCgVfjEwslfivXBb9Ktk9306Wd8GrU5qI3oZyk0UE4uNaHC
         ZJTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678021196;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8c2yb4QaL3JCLZ0HwZ8OkD2d0yLIhaH9t78vVtlBE/A=;
        b=ZdN5S8+65/aEFKfjcLEFzs347Pc0NTgLU/49uV4eGLcNbQGxGFVGa1OQA5+t1h4e4V
         JYDxZWWQzYuSKQaMsWFeR3esDpt0Mxyt0AN0dGliO0x8fGYFm5M7Yh8wetqj1GtUKOFy
         xuejBsLhDYAwmqLsgM0u5A6y9LaDwjqi0XEFFCNt3TD4/RKPKm4mFT5ZgU2TwrcRmdhb
         +iKvM/7b1x0utcUS4EsSXFjEu6HOa1WbxRpyXDmizmLo9xee8GPflYQv4SvfZBG2/CyN
         x3Yy/WANGGqR95IyLJceZb7Y8qJKPt/P3Il6bMkzk4Cq+H8LJ00CooUT8B0WvlswnbFz
         aPQA==
X-Gm-Message-State: AO0yUKXxrNMv1DFsH7k6AP0K576IqQ5QH8TuuNrvW6IitCxL/4Sbbb8p
        bhLFwIrusWIjRvP8qObnGSwxQQ==
X-Google-Smtp-Source: AK7set9ipj1J1gjoi5978HfQMZpW6LnNNVdFI5gAwsxpiqz1UogyZveke4chru6K2bFVL7U3d5oARQ==
X-Received: by 2002:a17:906:5d07:b0:8b1:3467:d71b with SMTP id g7-20020a1709065d0700b008b13467d71bmr10703343ejt.48.1678021196734;
        Sun, 05 Mar 2023 04:59:56 -0800 (PST)
Received: from krzk-bin.. ([2a02:810d:15c0:828:71e7:13d:1c29:505f])
        by smtp.gmail.com with ESMTPSA id l15-20020a170906078f00b008ea8effe947sm3193158ejc.225.2023.03.05.04.59.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Mar 2023 04:59:56 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Melody Olvera <quic_molvera@quicinc.com>,
        Souradeep Chowdhury <quic_schowdhu@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 01/11] arm64: dts: qcom: drop incorrect cell-index from SPMI
Date:   Sun,  5 Mar 2023 13:59:44 +0100
Message-Id: <20230305125954.209559-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

The SPMI controller (PMIC Arbiter)) does not use nor allow 'cell-index'
property:

  sm8150-microsoft-surface-duo.dtb: spmi@c440000: Unevaluated properties are not allowed ('cell-index' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/ipq8074.dtsi | 1 -
 arch/arm64/boot/dts/qcom/msm8976.dtsi | 1 -
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 1 -
 arch/arm64/boot/dts/qcom/sc7180.dtsi  | 1 -
 arch/arm64/boot/dts/qcom/sdm630.dtsi  | 1 -
 arch/arm64/boot/dts/qcom/sdm845.dtsi  | 1 -
 arch/arm64/boot/dts/qcom/sm6125.dtsi  | 1 -
 arch/arm64/boot/dts/qcom/sm8150.dtsi  | 1 -
 8 files changed, 8 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq8074.dtsi b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
index 62d05d740646..f769e63c955c 100644
--- a/arch/arm64/boot/dts/qcom/ipq8074.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
@@ -397,7 +397,6 @@ spmi_bus: spmi@200f000 {
 			#size-cells = <0>;
 			interrupt-controller;
 			#interrupt-cells = <4>;
-			cell-index = <0>;
 		};
 
 		sdhc_1: mmc@7824900 {
diff --git a/arch/arm64/boot/dts/qcom/msm8976.dtsi b/arch/arm64/boot/dts/qcom/msm8976.dtsi
index 2d360d05aa5e..712f80fc865c 100644
--- a/arch/arm64/boot/dts/qcom/msm8976.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8976.dtsi
@@ -809,7 +809,6 @@ spmi_bus: spmi@200f000 {
 			#size-cells = <0>;
 			interrupt-controller;
 			#interrupt-cells = <4>;
-			cell-index = <0>;
 		};
 
 		sdhc_1: mmc@7824000 {
diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index adf7258b3269..d450fe69fe33 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -1993,7 +1993,6 @@ spmi_bus: spmi@800f000 {
 			#size-cells = <0>;
 			interrupt-controller;
 			#interrupt-cells = <4>;
-			cell-index = <0>;
 		};
 
 		usb3: usb@a8f8800 {
diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index ebfa21e9ed8a..51bb0a2f25ef 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -3280,7 +3280,6 @@ spmi_bus: spmi@c440000 {
 			#size-cells = <0>;
 			interrupt-controller;
 			#interrupt-cells = <4>;
-			cell-index = <0>;
 		};
 
 		sram@146aa000 {
diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
index 5827cda270a0..72d9a12b5e9c 100644
--- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
@@ -1189,7 +1189,6 @@ spmi_bus: spmi@800f000 {
 			#size-cells = <0>;
 			interrupt-controller;
 			#interrupt-cells = <4>;
-			cell-index = <0>;
 		};
 
 		usb3: usb@a8f8800 {
diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 479859bd8ab3..dc43e438b64a 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -4924,7 +4924,6 @@ spmi_bus: spmi@c440000 {
 			#size-cells = <0>;
 			interrupt-controller;
 			#interrupt-cells = <4>;
-			cell-index = <0>;
 		};
 
 		sram@146bf000 {
diff --git a/arch/arm64/boot/dts/qcom/sm6125.dtsi b/arch/arm64/boot/dts/qcom/sm6125.dtsi
index 65033227718a..fd577eb705f8 100644
--- a/arch/arm64/boot/dts/qcom/sm6125.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6125.dtsi
@@ -1134,7 +1134,6 @@ spmi_bus: spmi@1c40000 {
 			#size-cells = <0>;
 			interrupt-controller;
 			#interrupt-cells = <4>;
-			cell-index = <0>;
 		};
 
 		apps_smmu: iommu@c600000 {
diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index fd20096cfc6e..f89abf131e01 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -3935,7 +3935,6 @@ spmi_bus: spmi@c440000 {
 			#size-cells = <0>;
 			interrupt-controller;
 			#interrupt-cells = <4>;
-			cell-index = <0>;
 		};
 
 		apps_smmu: iommu@15000000 {
-- 
2.34.1


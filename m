Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C14F74F9461
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 13:43:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235027AbiDHLpN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 07:45:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234998AbiDHLpM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 07:45:12 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F032C1CA388
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 04:43:08 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id i27so16751117ejd.9
        for <devicetree@vger.kernel.org>; Fri, 08 Apr 2022 04:43:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4tXWRt0uQ+KwfgraCk0yFBPONTSxaKlttzw/exd66MY=;
        b=IYc/fuyF3oOJ1Cih6uDRi1Q5jMTNw+Et2/Rand6G+NCp2/ja0r5FE0T5/6xNpG7Mcs
         ALpuZu4lpekuaTNyIRZHNADsCvbg4HRVz3oHhO8pUbpAsV0K4pP2ZxeXx6KDUXaBRGiS
         u58HmpdSNt/0wYmGVTWe3rbACs4A/10yHZYwXaElnMZI1MiQo4KlJEtgvehmI0FuXhe0
         7Edw+oEHElhP5SNRZnak99EKkbflgC8hqovI4JVI7+8GNEHcxJXBzftk5mMgH5qMD0OM
         ckKA/52FSrvrnHnM7SpKMAlNNwLEvrRpphW6lm2h71y95gT/jbiPaeSBtzPxuwClPkcw
         07Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4tXWRt0uQ+KwfgraCk0yFBPONTSxaKlttzw/exd66MY=;
        b=MRerElZxtBJdyJzmMDrjc0I6eacx3GMRWY8hIsntQzm+f46vbBCIFYhHJr8NjByFAv
         XK0Yb49v04Waac4/bf+9yjd6qRcNKuR2BKAjwoKouuD9t0lgYycruvMhhy5s4DD3VJ5W
         Rlks5vHdYl1SQDn1nl3Uvp6L/NfI2K0qyr4CfekHXjRUre309k5UHGSx2jjmRG11PPBL
         FOfk6urrXNByGBCMaG+eNkuDEda+bNrjC0egrj7HN8n8Ec/W/T8i0oJGb8um6+NQmPU6
         OlFXWKMo5JlXvRHmAVYQREThsZcjd2m1l0euvdXH722dG12NYSWFAFwdEEsNy2v3znyM
         FR7g==
X-Gm-Message-State: AOAM531gqWgxLcd/QR3rznh6QZNAhiLaZNRHToTiTfEaDblFNl1Zc4fC
        Ued05kTTfVHefJydYo5coqSSdQ==
X-Google-Smtp-Source: ABdhPJyho+o3aTEmD2Ke8WkDUWYXh6grtVSYns9Ulv1jbUfDFG6AwwAqD5rNNVAa9ZC8wpejO5Mhhw==
X-Received: by 2002:a17:907:d09:b0:6e8:3eef:3192 with SMTP id gn9-20020a1709070d0900b006e83eef3192mr6327933ejc.122.1649418187586;
        Fri, 08 Apr 2022 04:43:07 -0700 (PDT)
Received: from otso.. (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id h5-20020a170906718500b006e7edcda732sm5909557ejk.125.2022.04.08.04.43.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Apr 2022 04:43:07 -0700 (PDT)
From:   Luca Weiss <luca.weiss@fairphone.com>
To:     linux-arm-msm@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Luca Weiss <luca.weiss@fairphone.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: qcom: sm6350: Add I2C busses
Date:   Fri,  8 Apr 2022 13:42:05 +0200
Message-Id: <20220408114205.234635-2-luca.weiss@fairphone.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220408114205.234635-1-luca.weiss@fairphone.com>
References: <20220408114205.234635-1-luca.weiss@fairphone.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add nodes for the I2C busses on sm6350.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sm6350.dtsi | 134 +++++++++++++++++++++++++++
 1 file changed, 134 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
index ef43af39569c..81db25952cf1 100644
--- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
@@ -517,6 +517,45 @@ opp-384000000 {
 			};
 		};
 
+		qupv3_id_0: geniqup@8c0000 {
+			compatible = "qcom,geni-se-qup";
+			reg = <0x0 0x8c0000 0x0 0x2000>;
+			clock-names = "m-ahb", "s-ahb";
+			clocks = <&gcc GCC_QUPV3_WRAP_0_M_AHB_CLK>,
+				 <&gcc GCC_QUPV3_WRAP_0_S_AHB_CLK>;
+			#address-cells = <2>;
+			#size-cells = <2>;
+			iommus = <&apps_smmu 0x43 0x0>;
+			ranges;
+			status = "disabled";
+
+			i2c0: i2c@880000 {
+				compatible = "qcom,geni-i2c";
+				reg = <0 0x00880000 0 0x4000>;
+				clock-names = "se";
+				clocks = <&gcc GCC_QUPV3_WRAP0_S0_CLK>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&qup_i2c0_default>;
+				interrupts = <GIC_SPI 601 IRQ_TYPE_LEVEL_HIGH>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				status = "disabled";
+			};
+
+			i2c2: i2c@888000 {
+				compatible = "qcom,geni-i2c";
+				reg = <0 0x00888000 0 0x4000>;
+				clock-names = "se";
+				clocks = <&gcc GCC_QUPV3_WRAP0_S2_CLK>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&qup_i2c2_default>;
+				interrupts = <GIC_SPI 603 IRQ_TYPE_LEVEL_HIGH>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				status = "disabled";
+			};
+		};
+
 		qupv3_id_1: geniqup@9c0000 {
 			compatible = "qcom,geni-se-qup";
 			reg = <0x0 0x9c0000 0x0 0x2000>;
@@ -529,6 +568,45 @@ qupv3_id_1: geniqup@9c0000 {
 			ranges;
 			status = "disabled";
 
+			i2c6: i2c@980000 {
+				compatible = "qcom,geni-i2c";
+				reg = <0 0x00980000 0 0x4000>;
+				clock-names = "se";
+				clocks = <&gcc GCC_QUPV3_WRAP1_S0_CLK>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&qup_i2c6_default>;
+				interrupts = <GIC_SPI 353 IRQ_TYPE_LEVEL_HIGH>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				status = "disabled";
+			};
+
+			i2c7: i2c@984000 {
+				compatible = "qcom,geni-i2c";
+				reg = <0 0x00984000 0 0x4000>;
+				clock-names = "se";
+				clocks = <&gcc GCC_QUPV3_WRAP1_S1_CLK>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&qup_i2c7_default>;
+				interrupts = <GIC_SPI 354 IRQ_TYPE_LEVEL_HIGH>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				status = "disabled";
+			};
+
+			i2c8: i2c@988000 {
+				compatible = "qcom,geni-i2c";
+				reg = <0 0x00988000 0 0x4000>;
+				clock-names = "se";
+				clocks = <&gcc GCC_QUPV3_WRAP1_S2_CLK>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&qup_i2c8_default>;
+				interrupts = <GIC_SPI 355 IRQ_TYPE_LEVEL_HIGH>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				status = "disabled";
+			};
+
 			uart9: serial@98c000 {
 				compatible = "qcom,geni-debug-uart";
 				reg = <0 0x98c000 0 0x4000>;
@@ -539,6 +617,20 @@ uart9: serial@98c000 {
 				interrupts = <GIC_SPI 356 IRQ_TYPE_LEVEL_HIGH>;
 				status = "disabled";
 			};
+
+			i2c10: i2c@990000 {
+				compatible = "qcom,geni-i2c";
+				reg = <0 0x00990000 0 0x4000>;
+				clock-names = "se";
+				clocks = <&gcc GCC_QUPV3_WRAP1_S4_CLK>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&qup_i2c10_default>;
+				interrupts = <GIC_SPI 357 IRQ_TYPE_LEVEL_HIGH>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				status = "disabled";
+			};
+
 		};
 
 		tcsr_mutex: hwlock@1f40000 {
@@ -980,6 +1072,48 @@ qup_uart9_default: qup-uart9-default {
 				drive-strength = <2>;
 				bias-disable;
 			};
+
+			qup_i2c0_default: qup-i2c0-default {
+				pins = "gpio0", "gpio1";
+				function = "qup00";
+				drive-strength = <2>;
+				bias-pull-up;
+			};
+
+			qup_i2c2_default: qup-i2c2-default {
+				pins = "gpio45", "gpio46";
+				function = "qup02";
+				drive-strength = <2>;
+				bias-pull-up;
+			};
+
+			qup_i2c6_default: qup-i2c6-default {
+				pins = "gpio13", "gpio14";
+				function = "qup10";
+				drive-strength = <2>;
+				bias-pull-up;
+			};
+
+			qup_i2c7_default: qup-i2c7-default {
+				pins = "gpio27", "gpio28";
+				function = "qup11";
+				drive-strength = <2>;
+				bias-pull-up;
+			};
+
+			qup_i2c8_default: qup-i2c8-default {
+				pins = "gpio19", "gpio20";
+				function = "qup12";
+				drive-strength = <2>;
+				bias-pull-up;
+			};
+
+			qup_i2c10_default: qup-i2c10-default {
+				pins = "gpio4", "gpio5";
+				function = "qup14";
+				drive-strength = <2>;
+				bias-pull-up;
+			};
 		};
 
 		apps_smmu: iommu@15000000 {
-- 
2.35.1


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 66D056245D6
	for <lists+devicetree@lfdr.de>; Thu, 10 Nov 2022 16:28:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230043AbiKJP2t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Nov 2022 10:28:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230145AbiKJP2a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Nov 2022 10:28:30 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 227413F05A
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 07:27:46 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id j16so3876633lfe.12
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 07:27:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zMTNRymomDQ3rRnInquGSb7C4nCWTHxIANcPwu/VfpU=;
        b=Jcho9/ooGBA9vNjKXdeE9BzBmnBx/JMLBJFVPU50n7BtN3FH4peOZ1lMMW2AeUc634
         CnGSZNoKGPIDjVcTwEJBTViTOcTG5eqfBLZFRlZkwR9UcQdmDzQLR6INW3knWUmtairU
         8mrPz/x0w868zzuHt7PW6iKrgoY8gZDctZfHcQAVYpQ5JLIP9dq5k4lP8FqCbsAFWh0Y
         aX3dyo3VMYxCuXAfeQ3EkWnm3SbSBUUi+mgZgDCckRG+rXVDjDe3kgzAHjsEW5wweKqo
         VcXhKfbEWA7/A+HrZubqw01MdKfYiNIhQ3APFTvsXor5Clh8wnHF33vOvgT8V4rU90/G
         fJhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zMTNRymomDQ3rRnInquGSb7C4nCWTHxIANcPwu/VfpU=;
        b=v+m4Vg+IcmbZsGZ0NADGrg1liGINfNRCn7GwQ7dzL9eTb8vgjdVqr7C+psO1nSczyL
         pKe97G75QYGeYPVVt7+HYC4vWBm49jz+erocVjJ0scHJHa/ewwGQS+lYijujJD/5H6Uu
         OxrczD6aRSkhT6RRMRO5ucKDeMFce4BDpLzyNgO6qeRBAZSLsEDcY1ecuzVYDt3P225P
         XZZxkM5w4MulISPQXPNGi+z5ER/zTu3zXhO1qoABj2G0zvQNxKmpDO8RchlT4bjyuU/9
         Y5I/WtUoC3rO4+mVCpEc4z4VTA3hBLaS1M4ejnv8kFt7nCqtvB7ql9eThmY6I5qwjt3b
         QXEg==
X-Gm-Message-State: ACrzQf2hwJwhT16PreuJvYcftxtQ78vj6lewSctLJ5jRQtP9HwD3tFSx
        GYJjpDXqG6iVezYFP0Ksxze+/g==
X-Google-Smtp-Source: AMsMyM7Ng4Idy67LMvKWjSVjuSpc7wHkzeAQxIzf1GD65xohTtE6+AYZTEJaIIUXzOSTCJwPfnRqpA==
X-Received: by 2002:a05:6512:3989:b0:4a2:7d73:495a with SMTP id j9-20020a056512398900b004a27d73495amr22044172lfu.492.1668094064350;
        Thu, 10 Nov 2022 07:27:44 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id f29-20020a05651c03dd00b0026e897e3236sm2743504ljp.6.2022.11.10.07.27.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 07:27:43 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: qcom: sm8450: drop incorrect spi-max-frequency
Date:   Thu, 10 Nov 2022 16:27:41 +0100
Message-Id: <20221110152741.542024-1-krzysztof.kozlowski@linaro.org>
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

spi-max-frequency is a property of SPI device, not the controller:

  qcom/sm8450-hdk.dtb: geniqup@8c0000: spi@880000: Unevaluated properties are not allowed ('spi-max-frequency' was unexpected

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 9bdda0163573..e9f34c102a6f 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -794,7 +794,6 @@ spi15: spi@880000 {
 				interrupts = <GIC_SPI 373 IRQ_TYPE_LEVEL_HIGH>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&qup_spi15_data_clk>, <&qup_spi15_cs>;
-				spi-max-frequency = <50000000>;
 				interconnects = <&clk_virt MASTER_QUP_CORE_2 0 &clk_virt SLAVE_QUP_CORE_2 0>,
 						<&system_noc MASTER_A2NOC_SNOC 0 &gem_noc SLAVE_LLCC 0>;
 				interconnect-names = "qup-core", "qup-config";
@@ -834,7 +833,6 @@ spi16: spi@884000 {
 				interrupts = <GIC_SPI 583 IRQ_TYPE_LEVEL_HIGH>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&qup_spi16_data_clk>, <&qup_spi16_cs>;
-				spi-max-frequency = <50000000>;
 				interconnects = <&clk_virt MASTER_QUP_CORE_2 0 &clk_virt SLAVE_QUP_CORE_2 0>,
 						<&system_noc MASTER_A2NOC_SNOC 0 &gem_noc SLAVE_LLCC 0>;
 				interconnect-names = "qup-core", "qup-config";
@@ -874,7 +872,6 @@ spi17: spi@888000 {
 				interrupts = <GIC_SPI 584 IRQ_TYPE_LEVEL_HIGH>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&qup_spi17_data_clk>, <&qup_spi17_cs>;
-				spi-max-frequency = <50000000>;
 				interconnects = <&clk_virt MASTER_QUP_CORE_2 0 &clk_virt SLAVE_QUP_CORE_2 0>,
 						<&system_noc MASTER_A2NOC_SNOC 0 &gem_noc SLAVE_LLCC 0>;
 				interconnect-names = "qup-core", "qup-config";
@@ -914,7 +911,6 @@ spi18: spi@88c000 {
 				interrupts = <GIC_SPI 585 IRQ_TYPE_LEVEL_HIGH>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&qup_spi18_data_clk>, <&qup_spi18_cs>;
-				spi-max-frequency = <50000000>;
 				interconnects = <&clk_virt MASTER_QUP_CORE_2 0 &clk_virt SLAVE_QUP_CORE_2 0>,
 						<&system_noc MASTER_A2NOC_SNOC 0 &gem_noc SLAVE_LLCC 0>;
 				interconnect-names = "qup-core", "qup-config";
@@ -954,7 +950,6 @@ spi19: spi@890000 {
 				interrupts = <GIC_SPI 586 IRQ_TYPE_LEVEL_HIGH>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&qup_spi19_data_clk>, <&qup_spi19_cs>;
-				spi-max-frequency = <50000000>;
 				interconnects = <&clk_virt MASTER_QUP_CORE_2 0 &clk_virt SLAVE_QUP_CORE_2 0>,
 						<&system_noc MASTER_A2NOC_SNOC 0 &gem_noc SLAVE_LLCC 0>;
 				interconnect-names = "qup-core", "qup-config";
@@ -1007,7 +1002,6 @@ spi20: spi@894000 {
 				interrupts = <GIC_SPI 587 IRQ_TYPE_LEVEL_HIGH>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&qup_spi20_data_clk>, <&qup_spi20_cs>;
-				spi-max-frequency = <50000000>;
 				interconnects = <&clk_virt MASTER_QUP_CORE_2 0 &clk_virt SLAVE_QUP_CORE_2 0>,
 						<&system_noc MASTER_A2NOC_SNOC 0 &gem_noc SLAVE_LLCC 0>;
 				interconnect-names = "qup-core", "qup-config";
@@ -1047,7 +1041,6 @@ spi21: spi@898000 {
 				interrupts = <GIC_SPI 579 IRQ_TYPE_LEVEL_HIGH>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&qup_spi21_data_clk>, <&qup_spi21_cs>;
-				spi-max-frequency = <50000000>;
 				interconnects = <&clk_virt MASTER_QUP_CORE_2 0 &clk_virt SLAVE_QUP_CORE_2 0>,
 						<&system_noc MASTER_A2NOC_SNOC 0 &gem_noc SLAVE_LLCC 0>;
 				interconnect-names = "qup-core", "qup-config";
-- 
2.34.1


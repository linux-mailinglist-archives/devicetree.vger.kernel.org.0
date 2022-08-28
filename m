Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F08D55A3CD2
	for <lists+devicetree@lfdr.de>; Sun, 28 Aug 2022 10:47:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233573AbiH1IoL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 28 Aug 2022 04:44:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233220AbiH1IoD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 28 Aug 2022 04:44:03 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89EC97662
        for <devicetree@vger.kernel.org>; Sun, 28 Aug 2022 01:43:55 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id bn9so5343286ljb.6
        for <devicetree@vger.kernel.org>; Sun, 28 Aug 2022 01:43:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=b2xx1rcJFnHsee52/KckMTWu4TI4qntlxCFE/bInxqY=;
        b=ZuxlSQ5Lv/p0hKJuY68m+E3W1Bp9l8GpyVdKumArPn2sQMW0tP9Za/rtk6Ou+ndECk
         vvCtLhsNWDcpsglSXhjOk+gjVCbHt5NrHgvyvRmTfqXITOifDdRj6m/Y5p4hIJvwr6LP
         O6OiuZSxfegXIRka4d+q0fSLGvdgX9qj0kUxJbpQ9KWA+5TbjW50YRzzGXJzCBCEcuzf
         AYUwDTIElYOLGUigFhQ8Mu7kQU16vkatThczFHcdhtRt1RHGzbA9RpYuq4KyJpg+UnV5
         2jH6UKo8HIVwnOmwby2moAU49jpVVQaD418SqFRCQwGks6zhxm6xVGedRUO5VpNwqpcy
         Y2EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=b2xx1rcJFnHsee52/KckMTWu4TI4qntlxCFE/bInxqY=;
        b=278hB+wH0+ZuFd5VgKmWxTfW3FT3E+ltB6OCiZsKVG9tJsrSKES9l9oSEheYFpvHeI
         ut9ywEhfOY1Hwr35Vh8h4iLbsgOBhDckGUbS6QxWo6jXWb1vpi0ndiu+N4ekzkf1PwDm
         HON2dlWSdseMVZMdQkjnsq1iZgO8oz8LUHFoEuxmDqkvcfzoY2j8aZoUlz/KolJugiI7
         PLmwAuO6nNKyzOb37nStVaBKye94+4G+bFppwzZ+pMyUR3Xte1Ya7xnBPFbdzcCh82ds
         CE+osFCs5jFavhsUpfxeWUbEkJNCVwXQ3FQnweXktRXL2AXJjI1zKRwq0uQoxZXVmwNY
         iIJA==
X-Gm-Message-State: ACgBeo34uRQ21yIs7i3a1U3xBPVwa+NFoMqy0UPCvYxMLB2ubvjk+eZN
        eqp8JoxOuXfbkbM7oegrOosSYQ==
X-Google-Smtp-Source: AA6agR7cvOyw04TI5qCpruiy/MjwhPhutK86QodI5w0YkXO5c37EVDmd8VSiOb1gXZrFNPMFobZTjA==
X-Received: by 2002:a2e:940d:0:b0:261:c5c8:3403 with SMTP id i13-20020a2e940d000000b00261c5c83403mr4544514ljh.86.1661676234912;
        Sun, 28 Aug 2022 01:43:54 -0700 (PDT)
Received: from krzk-bin.starman.ee (82.131.98.15.cable.starman.ee. [82.131.98.15])
        by smtp.gmail.com with ESMTPSA id c6-20020ac25f66000000b0048afe02c925sm890114lfc.219.2022.08.28.01.43.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Aug 2022 01:43:54 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        David Heidelberg <david@ixit.cz>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 09/14] arm64: dts: qcom: align SPMI PMIC Power-on node name with dtschema
Date:   Sun, 28 Aug 2022 11:43:36 +0300
Message-Id: <20220828084341.112146-10-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220828084341.112146-1-krzysztof.kozlowski@linaro.org>
References: <20220828084341.112146-1-krzysztof.kozlowski@linaro.org>
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

Bindings expect Power-on node name to be "pon":

  'power-on@800' do not match any of the regexes

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/pm8150.dtsi      | 2 +-
 arch/arm64/boot/dts/qcom/pm8150b.dtsi     | 2 +-
 arch/arm64/boot/dts/qcom/pm8150l.dtsi     | 2 +-
 arch/arm64/boot/dts/qcom/pmm8155au_1.dtsi | 2 +-
 arch/arm64/boot/dts/qcom/pmm8155au_2.dtsi | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/pm8150.dtsi b/arch/arm64/boot/dts/qcom/pm8150.dtsi
index fd8434215924..574fa95a2871 100644
--- a/arch/arm64/boot/dts/qcom/pm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm8150.dtsi
@@ -47,7 +47,7 @@ pm8150_0: pmic@0 {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		pon: power-on@800 {
+		pon: pon@800 {
 			compatible = "qcom,pm8998-pon";
 			reg = <0x0800>;
 			mode-bootloader = <0x2>;
diff --git a/arch/arm64/boot/dts/qcom/pm8150b.dtsi b/arch/arm64/boot/dts/qcom/pm8150b.dtsi
index 47f74b547a3a..cdded791d96e 100644
--- a/arch/arm64/boot/dts/qcom/pm8150b.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm8150b.dtsi
@@ -46,7 +46,7 @@ pmic@2 {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		power-on@800 {
+		pon@800 {
 			compatible = "qcom,pm8916-pon";
 			reg = <0x0800>;
 
diff --git a/arch/arm64/boot/dts/qcom/pm8150l.dtsi b/arch/arm64/boot/dts/qcom/pm8150l.dtsi
index e1479e6a371e..135bfb8d629b 100644
--- a/arch/arm64/boot/dts/qcom/pm8150l.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm8150l.dtsi
@@ -46,7 +46,7 @@ pmic@4 {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		power-on@800 {
+		pon@800 {
 			compatible = "qcom,pm8916-pon";
 			reg = <0x0800>;
 
diff --git a/arch/arm64/boot/dts/qcom/pmm8155au_1.dtsi b/arch/arm64/boot/dts/qcom/pmm8155au_1.dtsi
index 68e9122363ae..20c5d60c8c2c 100644
--- a/arch/arm64/boot/dts/qcom/pmm8155au_1.dtsi
+++ b/arch/arm64/boot/dts/qcom/pmm8155au_1.dtsi
@@ -46,7 +46,7 @@ pmic@0 {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		pon: power-on@800 {
+		pon: pon@800 {
 			compatible = "qcom,pm8916-pon";
 			reg = <0x0800>;
 			pwrkey {
diff --git a/arch/arm64/boot/dts/qcom/pmm8155au_2.dtsi b/arch/arm64/boot/dts/qcom/pmm8155au_2.dtsi
index c307fc662511..1da4606e8ee6 100644
--- a/arch/arm64/boot/dts/qcom/pmm8155au_2.dtsi
+++ b/arch/arm64/boot/dts/qcom/pmm8155au_2.dtsi
@@ -45,7 +45,7 @@ pmic@4 {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		power-on@800 {
+		pon@800 {
 			compatible = "qcom,pm8916-pon";
 			reg = <0x0800>;
 
-- 
2.34.1


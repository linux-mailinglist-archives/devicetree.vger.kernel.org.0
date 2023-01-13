Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C1E43669E11
	for <lists+devicetree@lfdr.de>; Fri, 13 Jan 2023 17:28:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229772AbjAMQ2s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Jan 2023 11:28:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230003AbjAMQ2U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Jan 2023 11:28:20 -0500
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94AF48099C
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 08:22:54 -0800 (PST)
Received: by mail-ed1-x530.google.com with SMTP id 18so31821175edw.7
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 08:22:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9WqL6KCJ/Vj1K3Gwygg8uoJ29qI2425hp2cgj9g3I38=;
        b=hMds/y4P89Fz5T91QTHQ0HMIGuo1G+F1uCW4tA9HBiVj7MQE898SGHNSYkAHSDWuWu
         xYgm9yvgKrTV0PRRWsCqm9ePDULwsJzkmEELJIzHStAPt+tr4G8OZ3FrXdXNuaNMw87Y
         6mZTE34ZXebLq0od9dF5A5yJo2oWDh7lq0l7bJDis2hi7sBjPE+HG1jwOpUKjyPcDzHP
         jTe112U1OXwKew94Um+qUFkPGC9H0fRcbxHxj7LKxmGoEMkOrFVTM1s3tGugWOxKvVWi
         4My92qPtIV8cSYL2SxEu6ZYdpRrztLKczFC2acPyoskhtdJ0i3MiS8qp0pmS1u8wM9S5
         xBnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9WqL6KCJ/Vj1K3Gwygg8uoJ29qI2425hp2cgj9g3I38=;
        b=GRkgsngPCHwIxp5eb2AirpA41CGO6s+10RDks8ilaGhnDzRGjNXLxaV00FdWSPTnLy
         4f2L1CgSRvH8SOcZRAp229r8jAmYeAx0bZ4eya8qjYHI4k5DNGHz77/mqfcFR8saWk56
         Q667uBUaTtUDhGxVX4yrZC0KG6j2Xs51uXT8361wwinDI58w9/LThS8asRpVEnsGui8F
         +kjLq3ftF/pbe7J36twscWuDjaEXJvoESgqVzPIrouK1HBYQBMGDsobi3XK4+rlM7fUL
         pelbkewK5vdLGY54Bg9+HJFhYUriNodd6Shje/EWKsRMOwPDXBNphM7mT0pZ7kgqVdgV
         UC8Q==
X-Gm-Message-State: AFqh2krzXxJbj4RBeg1HfbN1HIdCzB18qD8rSeqN3EoReCAPzVYLaf7G
        LFpsLKKCN8jgyv3Eek5lM7lFoA==
X-Google-Smtp-Source: AMrXdXvD5o6MQYQiQ+iEJZtZtbshjXm3q6U6pitxrH1sPjseNSgkryJDnY/JQqk+0SHDP3Bxpbu6Ag==
X-Received: by 2002:aa7:c1d9:0:b0:499:1ed2:645d with SMTP id d25-20020aa7c1d9000000b004991ed2645dmr17216781edp.17.1673626973192;
        Fri, 13 Jan 2023 08:22:53 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id q1-20020a17090676c100b007c0d4d3a0c1sm8739479ejn.32.2023.01.13.08.22.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 08:22:52 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 4/6] arm64: dts: qcom: sdm845-audio-wcd9340: commonize clocks
Date:   Fri, 13 Jan 2023 17:22:43 +0100
Message-Id: <20230113162245.117324-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230113162245.117324-1-krzysztof.kozlowski@linaro.org>
References: <20230113162245.117324-1-krzysztof.kozlowski@linaro.org>
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

Clock for WCD9340 is coming from the SoC and is the same in all users,
so move it to common file to reduce the code duplication (which still
allows further customizations per board).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845-audio-wcd9340.dtsi           | 3 +++
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts                   | 2 --
 arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi | 2 --
 arch/arm64/boot/dts/qcom/sdm845-xiaomi-polaris.dts           | 2 --
 arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts         | 2 --
 arch/arm64/boot/dts/qcom/sdm850-samsung-w737.dts             | 2 --
 6 files changed, 3 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-audio-wcd9340.dtsi b/arch/arm64/boot/dts/qcom/sdm845-audio-wcd9340.dtsi
index 33718cb95c83..0d7c37f39176 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-audio-wcd9340.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845-audio-wcd9340.dtsi
@@ -29,6 +29,9 @@ wcd9340: codec@1,0 {
 			interrupt-controller;
 			#interrupt-cells = <1>;
 
+			clock-names = "extclk";
+			clocks = <&rpmhcc RPMH_LN_BB_CLK2>;
+
 			#clock-cells = <0>;
 			clock-frequency = <9600000>;
 			clock-output-names = "mclk";
diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
index 33ec79afbb62..9c9a587ea7a9 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
@@ -1076,8 +1076,6 @@ &venus {
 };
 
 &wcd9340 {
-	clock-names = "extclk";
-	clocks = <&rpmhcc RPMH_LN_BB_CLK2>;
 	reset-gpios = <&tlmm 64 GPIO_ACTIVE_HIGH>;
 	vdd-buck-supply = <&vreg_s4a_1p8>;
 	vdd-buck-sido-supply = <&vreg_s4a_1p8>;
diff --git a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
index a7a3f7ce2809..4f8ffc0da141 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
@@ -534,8 +534,6 @@ &venus {
 };
 
 &wcd9340 {
-	clock-names = "extclk";
-	clocks = <&rpmhcc RPMH_LN_BB_CLK2>;
 	reset-gpios = <&tlmm 64 GPIO_ACTIVE_HIGH>;
 	vdd-buck-supply = <&vreg_s4a_1p8>;
 	vdd-buck-sido-supply = <&vreg_s4a_1p8>;
diff --git a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-polaris.dts b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-polaris.dts
index 1ceeea0885b9..d9c4af06ab63 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-polaris.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-polaris.dts
@@ -692,8 +692,6 @@ &venus {
 };
 
 &wcd9340 {
-	clock-names = "extclk";
-	clocks = <&rpmhcc RPMH_LN_BB_CLK2>;
 	reset-gpios = <&tlmm 64 GPIO_ACTIVE_HIGH>;
 	vdd-buck-sido-supply = <&vreg_s4a_1p8>;
 	vdd-buck-supply = <&vreg_s4a_1p8>;
diff --git a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
index f3dd0ff1d5c6..5094e7e6dc48 100644
--- a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
+++ b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
@@ -738,8 +738,6 @@ &venus {
 };
 
 &wcd9340 {
-	clock-names = "extclk";
-	clocks = <&rpmhcc RPMH_LN_BB_CLK2>;
 	reset-gpios = <&tlmm 64 GPIO_ACTIVE_HIGH>;
 	vdd-buck-supply = <&vreg_s4a_1p8>;
 	vdd-buck-sido-supply = <&vreg_s4a_1p8>;
diff --git a/arch/arm64/boot/dts/qcom/sdm850-samsung-w737.dts b/arch/arm64/boot/dts/qcom/sdm850-samsung-w737.dts
index fc9369eafd23..65de8d595736 100644
--- a/arch/arm64/boot/dts/qcom/sdm850-samsung-w737.dts
+++ b/arch/arm64/boot/dts/qcom/sdm850-samsung-w737.dts
@@ -647,8 +647,6 @@ &venus {
 };
 
 &wcd9340 {
-	clock-names = "extclk";
-	clocks = <&rpmhcc RPMH_LN_BB_CLK2>;
 	reset-gpios = <&tlmm 64 GPIO_ACTIVE_HIGH>;
 	vdd-buck-supply = <&vreg_s4a_1p8>;
 	vdd-buck-sido-supply = <&vreg_s4a_1p8>;
-- 
2.34.1


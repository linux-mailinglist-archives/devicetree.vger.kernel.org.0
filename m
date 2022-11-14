Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 53282627B03
	for <lists+devicetree@lfdr.de>; Mon, 14 Nov 2022 11:50:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236179AbiKNKuz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Nov 2022 05:50:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236254AbiKNKuy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Nov 2022 05:50:54 -0500
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88EC818E0F
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 02:50:52 -0800 (PST)
Received: by mail-ej1-x62a.google.com with SMTP id bj12so27172155ejb.13
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 02:50:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WJ+8qImc7VzRHMuYxKRoIhoSQ+nTJCDRXzPuvxgENI8=;
        b=yMYRVak0EffYvJtukQ4qPOso/BXa5clD6zcUa5wrnF+iDrfM/fgzGMYvYS56pFHYEu
         Iy1bdVimPLjF6xnrzGmudswQ7JfTg40YfIQ4Accaxb7MhG3fqzyw6pzXXMpnUYW8Clks
         /vBQtMG+LwiXxKAQgzGDni7lek1nYW2Ya7njVXPaMyOMfxEjS5kIzG9V6BsvnktSG2Rr
         SbZNvpw7uLfGAU73vFbA1nAqogmXoXbPqENP380nr4GS9E8hcDEtWPjJyq7XtChrUZ+n
         wrjmAA3Atbf6a6wlMGFvZ4xtaB43cg844ZBI4e9z8FNghA1ciqOAJD4zLzthDNEpCfHf
         PJ4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WJ+8qImc7VzRHMuYxKRoIhoSQ+nTJCDRXzPuvxgENI8=;
        b=0V3mpb0Op0puiSjJldDxwvrN2QrkYiqUfv2Hz0rDnOKTkUdBjU6FOKgyYJYRo+pZew
         HKUJvhdrRnsNTZLH7BV518n1s9BLPNeJ4gNpyLCRVzLWtpP5YZwhaIDW6ga8kDNmzECx
         mLdCJ1ymMLGZrqPiHLPAz3nqV/djNaZ2YlqQRRALvPWorjKLdLG+NRTEc1Pa5Mlf0mjj
         AGNKCEcX150/88k7Hrc3PuAjvXTNpuqpNU6AY9yvxrv8o9uNviB9NpgYXfCMuaStILkU
         PIVUow0yqACVhFj0HuBkdYAtga+aZoJJDD5UgsDLNZJGt8gNRbzz+tpofj4n4SSxNZ9/
         8uAA==
X-Gm-Message-State: ANoB5plbyzmBm+S0GeCBAvh11gknyr9j74xE9AsV5cajWAMIPJV6ibTm
        I9VMaj88xkEU9hXowQFbHfMtuA==
X-Google-Smtp-Source: AA0mqf7oMpyGyhlUtonXRddkhSHR7uQyQONRkbr79ZCqq4C8/hmBAGJDhqh3J4U/Sig3iZfeG7gUcA==
X-Received: by 2002:a17:906:4e54:b0:78d:a30f:3f3a with SMTP id g20-20020a1709064e5400b0078da30f3f3amr9820547ejw.386.1668423051146;
        Mon, 14 Nov 2022 02:50:51 -0800 (PST)
Received: from localhost.localdomain ([194.29.137.22])
        by smtp.gmail.com with ESMTPSA id kv20-20020a17090778d400b007402796f065sm4037053ejc.132.2022.11.14.02.50.49
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 14 Nov 2022 02:50:50 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     patches@linaro.org, Konrad Dybcio <konrad.dybcio@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/3] arm64: dts: qcom: sm6375: Add SDHCI2
Date:   Mon, 14 Nov 2022 11:50:42 +0100
Message-Id: <20221114105043.36698-3-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.32.0 (Apple Git-132)
In-Reply-To: <20221114105043.36698-1-konrad.dybcio@linaro.org>
References: <20221114105043.36698-1-konrad.dybcio@linaro.org>
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

Configure the second SDHCI bus controller, which usually the
interface used for SD cards.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
Changes in v3:
- pick up rb

Changes in v2:
- use mmc@ node name instead of sdhci@

 arch/arm64/boot/dts/qcom/sm6375.dtsi | 82 ++++++++++++++++++++++++++++
 1 file changed, 82 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6375.dtsi b/arch/arm64/boot/dts/qcom/sm6375.dtsi
index 6adffd927a8e..08587c8681b2 100644
--- a/arch/arm64/boot/dts/qcom/sm6375.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6375.dtsi
@@ -540,6 +540,46 @@ tlmm: pinctrl@500000 {
 			#interrupt-cells = <2>;
 			#gpio-cells = <2>;
 
+			sdc2_off_state: sdc2-off-state {
+				clk-pins {
+					pins = "sdc2_clk";
+					drive-strength = <2>;
+					bias-disable;
+				};
+
+				cmd-pins {
+					pins = "sdc2_cmd";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+
+				data-pins {
+					pins = "sdc2_data";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+			};
+
+			sdc2_on_state: sdc2-on-state {
+				clk-pins {
+					pins = "sdc2_clk";
+					drive-strength = <16>;
+					bias-disable;
+				};
+
+				cmd-pins {
+					pins = "sdc2_cmd";
+					drive-strength = <10>;
+					bias-pull-up;
+				};
+
+				data-pins {
+					pins = "sdc2_data";
+					drive-strength = <10>;
+					bias-pull-up;
+				};
+			};
+
 			qup_i2c0_default: qup-i2c0-default-state {
 				pins = "gpio0", "gpio1";
 				function = "qup00";
@@ -630,6 +670,48 @@ rpm_msg_ram: sram@45f0000 {
 			reg = <0 0x045f0000 0 0x7000>;
 		};
 
+		sdhc_2: mmc@4784000 {
+			compatible = "qcom,sm6375-sdhci", "qcom,sdhci-msm-v5";
+			reg = <0 0x04784000 0 0x1000>;
+
+			interrupts = <GIC_SPI 350 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 353 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "hc_irq", "pwr_irq";
+
+			clocks = <&gcc GCC_SDCC2_AHB_CLK>,
+				 <&gcc GCC_SDCC2_APPS_CLK>,
+				 <&rpmcc RPM_SMD_XO_CLK_SRC>;
+			clock-names = "iface", "core", "xo";
+			resets = <&gcc GCC_SDCC2_BCR>;
+			iommus = <&apps_smmu 0x40 0x0>;
+
+			pinctrl-0 = <&sdc2_on_state>;
+			pinctrl-1 = <&sdc2_off_state>;
+			pinctrl-names = "default", "sleep";
+
+			qcom,dll-config = <0x0007642c>;
+			qcom,ddr-config = <0x80040868>;
+			power-domains = <&rpmpd SM6375_VDDCX>;
+			operating-points-v2 = <&sdhc2_opp_table>;
+			bus-width = <4>;
+
+			status = "disabled";
+
+			sdhc2_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				opp-100000000 {
+					opp-hz = /bits/ 64 <100000000>;
+					required-opps = <&rpmpd_opp_low_svs>;
+				};
+
+				opp-202000000 {
+					opp-hz = /bits/ 64 <202000000>;
+					required-opps = <&rpmpd_opp_svs_plus>;
+				};
+			};
+		};
+
 		gpi_dma0: dma-controller@4a00000 {
 			compatible = "qcom,sm6375-gpi-dma", "qcom,sm6350-gpi-dma";
 			reg = <0 0x04a00000 0 0x60000>;
-- 
2.38.1


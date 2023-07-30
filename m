Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8461A7684F7
	for <lists+devicetree@lfdr.de>; Sun, 30 Jul 2023 13:15:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229998AbjG3LPs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Jul 2023 07:15:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229637AbjG3LPq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Jul 2023 07:15:46 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A7551BC9
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 04:15:43 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-5221c6a2d3dso5165252a12.3
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 04:15:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690715741; x=1691320541;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FdrXrw0tM7qLPBUw96LDt57zzlXAWOZHTbDIVs5pK4U=;
        b=MVhYnMrsEtVuDCtnvjWStQcJHE5mWSvQEbcp+lrXRsRdVJTr7N9u147+h3Zu9zHbAg
         mScVBt2yVdAS6UR4HCEnrLMyaKhxuDXy/JIlI2BUfbPO5TEqkTQmwpwB9jTgpXGM21lt
         sVKYnt/Y8qMptmFFyHy9T71Tj2AMenOF87s4KhYzD6RlNRmV0pjKK15lcn0BXZ+U7WVA
         JKri/ZKgSk4J/YzMMNQ0wVitYBTL8BTeWq/sbNBYG1moUu7ixXszQm23Ggvk0GDOc4x6
         zB+JEzXaUmOUriesZv5fe5X36gzPxw8PEtsoxCeDoMfOnxxmKf/r2Eafb2wYSjjQeu81
         rkpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690715741; x=1691320541;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FdrXrw0tM7qLPBUw96LDt57zzlXAWOZHTbDIVs5pK4U=;
        b=ZE7M3dyPAlUaogRwqA2DgMQ9VibTyqvHIY4jXBAbl12LcbAT87zkn2n7Qv/FeqH3U5
         VRCfujO12hyew95TLqhbOR/hWWmS2uxIWBCcR1JHrfEzL0Po6dWptWhDRkU1CimI1tG1
         LR6t+w1T27jTDA5DJGRfuEgR1wql5YJ0P9MbZWod8QV31TQsH+3WOrGVziOrl2TmPu4N
         CPIodFtTfxW+xGu0uKdC0jFrhI0kt7eF6ttc4JSEXAn0nj/yUxoDyP4WmJ7Qv/5SSweD
         QCzV4NvGMaw7xsw09knVV1zX+IWIDXbZaojzPERgUI9ozh96ic25waU6X0uao277O3w+
         R5cg==
X-Gm-Message-State: ABy/qLak0BpyLpBTteSrALPwZF1564SHTGfE8Ya8aOpBakybblarCG3Z
        FjV/XKkvQx1zJQ8fACy8Pa9MkQ==
X-Google-Smtp-Source: APBJJlFVFF2fBIppVxMb0htrH9acaHpmQ6oEPL5dD+VejnT8yIxzzEgCqy+2uqb4wLl8hl8qS0yuDA==
X-Received: by 2002:aa7:c68f:0:b0:522:2c44:a915 with SMTP id n15-20020aa7c68f000000b005222c44a915mr6812406edq.24.1690715741628;
        Sun, 30 Jul 2023 04:15:41 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.183])
        by smtp.gmail.com with ESMTPSA id l1-20020a056402028100b005224d15d3dfsm4007591edv.87.2023.07.30.04.15.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Jul 2023 04:15:41 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: nxp: mxs: split interrupts per cells
Date:   Sun, 30 Jul 2023 13:15:39 +0200
Message-Id: <20230730111539.98210-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Each interrupt should be in its own cell.  This is much more readable.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/nxp/mxs/imx23.dtsi | 21 +++++++++++----------
 arch/arm/boot/dts/nxp/mxs/imx28.dtsi | 24 ++++++++++++------------
 2 files changed, 23 insertions(+), 22 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/mxs/imx23.dtsi b/arch/arm/boot/dts/nxp/mxs/imx23.dtsi
index a3668a0827fc..5eca942a52fd 100644
--- a/arch/arm/boot/dts/nxp/mxs/imx23.dtsi
+++ b/arch/arm/boot/dts/nxp/mxs/imx23.dtsi
@@ -62,8 +62,8 @@ icoll: interrupt-controller@80000000 {
 			dma_apbh: dma-controller@80004000 {
 				compatible = "fsl,imx23-dma-apbh";
 				reg = <0x80004000 0x2000>;
-				interrupts = <0 14 20 0
-					      13 13 13 13>;
+				interrupts = <0>, <14>, <20>, <0>,
+					     <13>, <13>, <13>, <13>;
 				#dma-cells = <1>;
 				dma-channels = <8>;
 				clocks = <&clks 15>;
@@ -415,10 +415,10 @@ emi@80020000 {
 			dma_apbx: dma-apbx@80024000 {
 				compatible = "fsl,imx23-dma-apbx";
 				reg = <0x80024000 0x2000>;
-				interrupts = <7 5 9 26
-					      19 0 25 23
-					      60 58 9 0
-					      0 0 0 0>;
+				interrupts = <7>, <5>, <9>, <26>,
+					     <19>, <0>, <25>, <23>,
+					     <60>, <58>, <9>, <0>,
+					     <0>, <0>, <0>, <0>;
 				interrupt-names = "audio-adc", "audio-dac", "spdif-tx", "i2c",
 						  "saif0", "empty", "auart0-rx", "auart0-tx",
 						  "auart1-rx", "auart1-tx", "saif1", "empty",
@@ -431,7 +431,7 @@ dma_apbx: dma-apbx@80024000 {
 			dcp: crypto@80028000 {
 				compatible = "fsl,imx23-dcp";
 				reg = <0x80028000 0x2000>;
-				interrupts = <53 54>;
+				interrupts = <53>, <54>;
 				status = "okay";
 			};
 
@@ -456,7 +456,7 @@ axi-ahb@8002e000 {
 			lcdif@80030000 {
 				compatible = "fsl,imx23-lcdif";
 				reg = <0x80030000 2000>;
-				interrupts = <46 45>;
+				interrupts = <46>, <45>;
 				clocks = <&clks 38>;
 				status = "disabled";
 			};
@@ -525,7 +525,8 @@ audio-in@8004c000 {
 			lradc: lradc@80050000 {
 				compatible = "fsl,imx23-lradc";
 				reg = <0x80050000 0x2000>;
-				interrupts = <36 37 38 39 40 41 42 43 44>;
+				interrupts = <36>, <37>, <38>, <39>, <40>,
+					     <41>, <42>, <43>, <44>;
 				status = "disabled";
 				clocks = <&clks 26>;
 				#io-channel-cells = <1>;
@@ -568,7 +569,7 @@ pwm: pwm@80064000 {
 			timrot@80068000 {
 				compatible = "fsl,imx23-timrot", "fsl,timrot";
 				reg = <0x80068000 0x2000>;
-				interrupts = <28 29 30 31>;
+				interrupts = <28>, <29>, <30>, <31>;
 				clocks = <&clks 28>;
 			};
 
diff --git a/arch/arm/boot/dts/nxp/mxs/imx28.dtsi b/arch/arm/boot/dts/nxp/mxs/imx28.dtsi
index 29e37b1fae66..763adeb995ee 100644
--- a/arch/arm/boot/dts/nxp/mxs/imx28.dtsi
+++ b/arch/arm/boot/dts/nxp/mxs/imx28.dtsi
@@ -81,10 +81,10 @@ hsadc: hsadc@80002000 {
 			dma_apbh: dma-controller@80004000 {
 				compatible = "fsl,imx28-dma-apbh";
 				reg = <0x80004000 0x2000>;
-				interrupts = <82 83 84 85
-					      88 88 88 88
-					      88 88 88 88
-					      87 86 0 0>;
+				interrupts = <82>, <83>, <84>, <85>,
+					     <88>, <88>, <88>, <88>,
+					     <88>, <88>, <88>, <88>,
+					     <87>, <86>, <0>, <0>;
 				#dma-cells = <1>;
 				dma-channels = <16>;
 				clocks = <&clks 25>;
@@ -993,10 +993,10 @@ etm: etm@80022000 {
 			dma_apbx: dma-apbx@80024000 {
 				compatible = "fsl,imx28-dma-apbx";
 				reg = <0x80024000 0x2000>;
-				interrupts = <78 79 66 0
-					      80 81 68 69
-					      70 71 72 73
-					      74 75 76 77>;
+				interrupts = <78>, <79>, <66>, <0>,
+					     <80>, <81>, <68>, <69>,
+					     <70>, <71>, <72>, <73>,
+					     <74>, <75>, <76>, <77>;
 				#dma-cells = <1>;
 				dma-channels = <16>;
 				clocks = <&clks 26>;
@@ -1005,7 +1005,7 @@ dma_apbx: dma-apbx@80024000 {
 			dcp: crypto@80028000 {
 				compatible = "fsl,imx28-dcp", "fsl,imx23-dcp";
 				reg = <0x80028000 0x2000>;
-				interrupts = <52 53 54>;
+				interrupts = <52>, <53>, <54>;
 				status = "okay";
 			};
 
@@ -1136,8 +1136,8 @@ saif1: saif@80046000 {
 			lradc: lradc@80050000 {
 				compatible = "fsl,imx28-lradc";
 				reg = <0x80050000 0x2000>;
-				interrupts = <10 14 15 16 17 18 19
-						20 21 22 23 24 25>;
+				interrupts = <10>, <14>, <15>, <16>, <17>, <18>, <19>,
+					     <20>, <21>, <22>, <23>, <24>, <25>;
 				status = "disabled";
 				clocks = <&clks 41>;
 				#io-channel-cells = <1>;
@@ -1193,7 +1193,7 @@ pwm: pwm@80064000 {
 			timer: timrot@80068000 {
 				compatible = "fsl,imx28-timrot", "fsl,timrot";
 				reg = <0x80068000 0x2000>;
-				interrupts = <48 49 50 51>;
+				interrupts = <48>, <49>, <50>, <51>;
 				clocks = <&clks 26>;
 			};
 
-- 
2.34.1


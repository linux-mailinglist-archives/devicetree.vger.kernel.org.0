Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C55265B4E47
	for <lists+devicetree@lfdr.de>; Sun, 11 Sep 2022 13:16:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231230AbiIKLQi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 11 Sep 2022 07:16:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230494AbiIKLQH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 11 Sep 2022 07:16:07 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43B853F1E8
        for <devicetree@vger.kernel.org>; Sun, 11 Sep 2022 04:13:30 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id y18so7379306ljh.12
        for <devicetree@vger.kernel.org>; Sun, 11 Sep 2022 04:13:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=CL2/j/JItz+3oLrNQS5aOSC401S6zfG+DX5xNbB/udc=;
        b=p1o0qlHK47licEeXcSEOxvdC4w42n+HpYsRejgOMH6KBJaR6EGFBYltiadanLkADDJ
         fOyHDuYa2rzgAju0CJJJnUiu0N1OOMfGfTqyuXoTNBhKjGUQ5Rk+X5u376iV1lq3f1yK
         po3VtgrOvazLMGEWoiVUujZUVnKlA+M/FzKjFtEUODnAROEvCwR763TNEh8BGkxgbRT1
         CJSwwm2u6nnjaYbVl2jMTWrn0S5xTI26mH2kSk+njz49t/e5YNBzUBcNNCKgE/jbOoRB
         PuqvbBEMHG//ITtop2fV/EnHSJOhmNiAst62LOWmkEzZ0SNHX+i8di9ooYiBnLpRKzie
         L7sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=CL2/j/JItz+3oLrNQS5aOSC401S6zfG+DX5xNbB/udc=;
        b=zY71JFfbC1LrixiVeoL99dFHVUmfi2vKYBapeXC5bcE5VOdNYHkGl5Q5fGyW9nGSle
         N94OLRVYAaVJF5/BljY/W13ipwijiyeOIWiE3v+ICe+MRwWNa6QR5XarMbTmcC5VUaoC
         fETLUZed7P+FGqr1rWGccLFc0T4t4uAW/JKMCMt1zM0xy0oxdigR+6jjboauzOJD1OHe
         qwDmxZzrWejPcpjkXiP1TUESE9RGsdYV2XW5K1snDZpPoy2WhOlGP1OiqwlEeeJSf2Gx
         S7PqZ15+4ZehbuNbeVRamw/Xh7gHulIUanHun0zBm1e2+ZcZHx4DcsdZQMZSjKmYpVy8
         bc1g==
X-Gm-Message-State: ACgBeo1/O8h6n0aPhEOAYxgM/D2qd+o21iVaQbEyxQfdOWiHYhGDK3A1
        U/Rof+qaNdghj/ZfmJj44oOrIA==
X-Google-Smtp-Source: AA6agR5kGSIUGOJg3pllHovdg/FAi8EeRBdF9haQMJlycsyu9wEzNRl6O0W6185/GX7SL5j9g9zBlQ==
X-Received: by 2002:a05:651c:1a14:b0:26a:c8ca:7ed8 with SMTP id by20-20020a05651c1a1400b0026ac8ca7ed8mr6219435ljb.415.1662894772539;
        Sun, 11 Sep 2022 04:12:52 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id 11-20020a05651c128b00b0025dfd8c9287sm607365ljc.69.2022.09.11.04.12.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Sep 2022 04:12:51 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Iskren Chernev <iskren.chernev@gmail.com>,
        Martin Botka <martin.botka@somainline.org>,
        Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 37/40] arm64: dts: qcom: sm8350: align TLMM pin configuration with DT schema
Date:   Sun, 11 Sep 2022 13:11:57 +0200
Message-Id: <20220911111200.199182-38-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220911111200.199182-1-krzysztof.kozlowski@linaro.org>
References: <20220911111200.199182-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DT schema expects TLMM pin configuration nodes to be named with '-state'
suffix and their optional children with '-pins' suffix.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../dts/qcom/sm8350-sony-xperia-sagami.dtsi   |  2 +-
 arch/arm64/boot/dts/qcom/sm8350.dtsi          | 44 +++++++++----------
 2 files changed, 23 insertions(+), 23 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi b/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi
index b702ab1605bb..b3c9952ac173 100644
--- a/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi
@@ -222,7 +222,7 @@ &spi14 {
 &tlmm {
 	gpio-reserved-ranges = <44 4>;
 
-	ts_int_default: ts-int-default {
+	ts_int_default: ts-int-default-state {
 		pins = "gpio23";
 		function = "gpio";
 		drive-strength = <2>;
diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index e72a04411888..cd5503642a23 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -1762,150 +1762,150 @@ tlmm: pinctrl@f100000 {
 			wakeup-parent = <&pdc>;
 
 			qup_uart3_default_state: qup-uart3-default-state {
-				rx {
+				rx-pins {
 					pins = "gpio18";
 					function = "qup3";
 				};
-				tx {
+				tx-pins {
 					pins = "gpio19";
 					function = "qup3";
 				};
 			};
 
-			qup_uart6_default: qup-uart6-default {
+			qup_uart6_default: qup-uart6-default-state {
 				pins = "gpio30", "gpio31";
 				function = "qup6";
 				drive-strength = <2>;
 				bias-disable;
 			};
 
-			qup_uart18_default: qup-uart18-default {
+			qup_uart18_default: qup-uart18-default-state {
 				pins = "gpio58", "gpio59";
 				function = "qup18";
 				drive-strength = <2>;
 				bias-disable;
 			};
 
-			qup_i2c0_default: qup-i2c0-default {
+			qup_i2c0_default: qup-i2c0-default-state {
 				pins = "gpio4", "gpio5";
 				function = "qup0";
 				drive-strength = <2>;
 				bias-pull-up;
 			};
 
-			qup_i2c1_default: qup-i2c1-default {
+			qup_i2c1_default: qup-i2c1-default-state {
 				pins = "gpio8", "gpio9";
 				function = "qup1";
 				drive-strength = <2>;
 				bias-pull-up;
 			};
 
-			qup_i2c2_default: qup-i2c2-default {
+			qup_i2c2_default: qup-i2c2-default-state {
 				pins = "gpio12", "gpio13";
 				function = "qup2";
 				drive-strength = <2>;
 				bias-pull-up;
 			};
 
-			qup_i2c4_default: qup-i2c4-default {
+			qup_i2c4_default: qup-i2c4-default-state {
 				pins = "gpio20", "gpio21";
 				function = "qup4";
 				drive-strength = <2>;
 				bias-pull-up;
 			};
 
-			qup_i2c5_default: qup-i2c5-default {
+			qup_i2c5_default: qup-i2c5-default-state {
 				pins = "gpio24", "gpio25";
 				function = "qup5";
 				drive-strength = <2>;
 				bias-pull-up;
 			};
 
-			qup_i2c6_default: qup-i2c6-default {
+			qup_i2c6_default: qup-i2c6-default-state {
 				pins = "gpio28", "gpio29";
 				function = "qup6";
 				drive-strength = <2>;
 				bias-pull-up;
 			};
 
-			qup_i2c7_default: qup-i2c7-default {
+			qup_i2c7_default: qup-i2c7-default-state {
 				pins = "gpio32", "gpio33";
 				function = "qup7";
 				drive-strength = <2>;
 				bias-disable;
 			};
 
-			qup_i2c8_default: qup-i2c8-default {
+			qup_i2c8_default: qup-i2c8-default-state {
 				pins = "gpio36", "gpio37";
 				function = "qup8";
 				drive-strength = <2>;
 				bias-pull-up;
 			};
 
-			qup_i2c9_default: qup-i2c9-default {
+			qup_i2c9_default: qup-i2c9-default-state {
 				pins = "gpio40", "gpio41";
 				function = "qup9";
 				drive-strength = <2>;
 				bias-pull-up;
 			};
 
-			qup_i2c10_default: qup-i2c10-default {
+			qup_i2c10_default: qup-i2c10-default-state {
 				pins = "gpio44", "gpio45";
 				function = "qup10";
 				drive-strength = <2>;
 				bias-pull-up;
 			};
 
-			qup_i2c11_default: qup-i2c11-default {
+			qup_i2c11_default: qup-i2c11-default-state {
 				pins = "gpio48", "gpio49";
 				function = "qup11";
 				drive-strength = <2>;
 				bias-pull-up;
 			};
 
-			qup_i2c12_default: qup-i2c12-default {
+			qup_i2c12_default: qup-i2c12-default-state {
 				pins = "gpio52", "gpio53";
 				function = "qup12";
 				drive-strength = <2>;
 				bias-pull-up;
 			};
 
-			qup_i2c13_default: qup-i2c13-default {
+			qup_i2c13_default: qup-i2c13-default-state {
 				pins = "gpio0", "gpio1";
 				function = "qup13";
 				drive-strength = <2>;
 				bias-pull-up;
 			};
 
-			qup_i2c14_default: qup-i2c14-default {
+			qup_i2c14_default: qup-i2c14-default-state {
 				pins = "gpio56", "gpio57";
 				function = "qup14";
 				drive-strength = <2>;
 				bias-disable;
 			};
 
-			qup_i2c15_default: qup-i2c15-default {
+			qup_i2c15_default: qup-i2c15-default-state {
 				pins = "gpio60", "gpio61";
 				function = "qup15";
 				drive-strength = <2>;
 				bias-disable;
 			};
 
-			qup_i2c16_default: qup-i2c16-default {
+			qup_i2c16_default: qup-i2c16-default-state {
 				pins = "gpio64", "gpio65";
 				function = "qup16";
 				drive-strength = <2>;
 				bias-disable;
 			};
 
-			qup_i2c17_default: qup-i2c17-default {
+			qup_i2c17_default: qup-i2c17-default-state {
 				pins = "gpio72", "gpio73";
 				function = "qup17";
 				drive-strength = <2>;
 				bias-disable;
 			};
 
-			qup_i2c19_default: qup-i2c19-default {
+			qup_i2c19_default: qup-i2c19-default-state {
 				pins = "gpio76", "gpio77";
 				function = "qup19";
 				drive-strength = <2>;
-- 
2.34.1


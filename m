Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B8416D34A9
	for <lists+devicetree@lfdr.de>; Sun,  2 Apr 2023 00:08:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230261AbjDAWI1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 1 Apr 2023 18:08:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230218AbjDAWIX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 1 Apr 2023 18:08:23 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE21926275
        for <devicetree@vger.kernel.org>; Sat,  1 Apr 2023 15:08:20 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id a11so26632347lji.6
        for <devicetree@vger.kernel.org>; Sat, 01 Apr 2023 15:08:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680386900;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=566P1oEdGUnwQYipK9fvtxMeISuZlL/SKkQhiagAQZs=;
        b=tgLrMFjCqn22fp34MT5t69p4Q0FiqKaMZw+CLj7zr3psxSHtbX1yYEbbtBhxPC7ozA
         XdWpfM27HDs5oS4Qb9/CaRNll5fN7naH2gWdTFZuMdEvMLgmCU31lec+pWBY7AaTV5by
         H62EMFEzYHDMqgumICPEw4b0bi8bXlLm/mfdYvOuIpZ9sTiUguzV+HRa5cafqTe2KSPg
         qeUQAal+rMyGyIQKXWgowkhfjy01T9flD7WmPUXxtQZ3v0yEtRJ3NVeDjNCDRlVLpCEv
         syiq2OcZRcr/KWq2XMR+oXQMvqwZJfenkByQ9Tnkd+mzyybmqB93qGnl/tSExuslCM7Y
         rP/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680386900;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=566P1oEdGUnwQYipK9fvtxMeISuZlL/SKkQhiagAQZs=;
        b=yX1lRyz+IF3gQJEW+K2Iszs6Gve9MtXUs/aW5dp4On9wC49oEv+RdVGTcYporw6/dO
         3ywtKQYshx9RfS/+KU3KXPt4HXaYa2xVB1gGCml/3HpwyL4EIt9dWPoLYZgcZcguvpY9
         9Gnmk2Hi1Y8ObkRsPiZs+5vHONwMFGwZM8/d/pcpLRqVnqfPhQxqrh3x/tRh/2UxQfig
         I9o32QcKO5bruwnjqps/eW3NOfPhe0LHE8Le5EE1DUC+tbR2932Lq8ni1AznhGuGDDXf
         PiQEHPnmML54Te1UWmKr4rqaXt+Wj5KReYBJCmU63UK3rMJv7jaIo1chvMFAsAITPXXG
         nLsQ==
X-Gm-Message-State: AAQBX9fSUHKKVDd3zl2k160Ezv+S3E2/9mfpKCw4PvukNLNU/2Sufz2u
        1SVPH4l3Y860xIw3oGXGEaAWoQ==
X-Google-Smtp-Source: AKy350YIw4NyPSk+07lE5eoo886mPe9HrYEqRCY2wxq+nsbQFzC0ON1ttGbQelMHp5Ha/w5KzO5TEA==
X-Received: by 2002:a2e:9b81:0:b0:295:a8e6:6b15 with SMTP id z1-20020a2e9b81000000b00295a8e66b15mr3987590lji.4.1680386900340;
        Sat, 01 Apr 2023 15:08:20 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id k17-20020a2e9211000000b0029bd4d0d3f2sm997590ljg.33.2023.04.01.15.08.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Apr 2023 15:08:20 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Johan Hovold <johan+linaro@kernel.org>,
        Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>, linux-iio@vger.kernel.org
Subject: [PATCH v2 14/22] arm64: dts: qcom: sc8280xp*: use pm8350.dtsi
Date:   Sun,  2 Apr 2023 01:08:02 +0300
Message-Id: <20230401220810.3563708-15-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230401220810.3563708-1-dmitry.baryshkov@linaro.org>
References: <20230401220810.3563708-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Employ PMIC_SID/PMIC_LABEL and switch sc8280xp-pmics to use pm8350.dtsi
in order to reduce duplication and possible discrepancies.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi | 100 ++-----------------
 1 file changed, 9 insertions(+), 91 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi
index 6c183b6c9207..69f79ed87f62 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi
@@ -7,79 +7,21 @@
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/spmi/spmi.h>
 
-/ {
-	thermal-zones {
-		pm8280_1_thermal: pm8280-1-thermal {
-			polling-delay-passive = <100>;
-			polling-delay = <0>;
-			thermal-sensors = <&pm8280_1_temp_alarm>;
-
-			trips {
-				trip0 {
-					temperature = <95000>;
-					hysteresis = <0>;
-					type = "passive";
-				};
-
-				trip1 {
-					temperature = <115000>;
-					hysteresis = <0>;
-					type = "critical";
-				};
-			};
-		};
-
-		pm8280_2_thermal: pm8280-2-thermal {
-			polling-delay-passive = <100>;
-			polling-delay = <0>;
-			thermal-sensors = <&pm8280_2_temp_alarm>;
-
-			trips {
-				trip0 {
-					temperature = <95000>;
-					hysteresis = <0>;
-					type = "passive";
-				};
-
-				trip1 {
-					temperature = <115000>;
-					hysteresis = <0>;
-					type = "critical";
-				};
-			};
-		};
-	};
-};
-
 /* SID 0 */
 #define PMIC_LABEL pmk8280
 #include "pmk8350.dtsi"
 
-&spmi_bus {
-	pmc8280_1: pmic@1 {
-		compatible = "qcom,pm8350", "qcom,spmi-pmic";
-		reg = <0x1 SPMI_USID>;
-		#address-cells = <1>;
-		#size-cells = <0>;
+#define PMIC_SID 1
+#define PMIC_LABEL pmc8280_1
+#define PMIC_NODE pmc82801
+#include "pm8350.dtsi"
 
-		pm8280_1_temp_alarm: temp-alarm@a00 {
-			compatible = "qcom,spmi-temp-alarm";
-			reg = <0xa00>;
-			interrupts-extended = <&spmi_bus 0x1 0xa 0x0 IRQ_TYPE_EDGE_BOTH>;
-			#thermal-sensor-cells = <0>;
-		};
-
-		pmc8280_1_gpios: gpio@8800 {
-			compatible = "qcom,pm8350-gpio", "qcom,spmi-gpio";
-			reg = <0x8800>;
-			gpio-controller;
-			gpio-ranges = <&pmc8280_1_gpios 0 0 10>;
-			#gpio-cells = <2>;
-			interrupt-controller;
-			#interrupt-cells = <2>;
-		};
-	};
+#define PMIC_SID 3
+#define PMIC_LABEL pmc8280_2
+#define PMIC_NODE pmc82802
+#include "pm8350.dtsi"
 
+&spmi_bus {
 	pmc8280c: pmic@2 {
 		compatible = "qcom,pm8350c", "qcom,spmi-pmic";
 		reg = <0x2 SPMI_USID>;
@@ -108,30 +50,6 @@ pmc8280c_lpg: pwm {
 		};
 	};
 
-	pmc8280_2: pmic@3 {
-		compatible = "qcom,pm8350", "qcom,spmi-pmic";
-		reg = <0x3 SPMI_USID>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		pm8280_2_temp_alarm: temp-alarm@a00 {
-			compatible = "qcom,spmi-temp-alarm";
-			reg = <0xa00>;
-			interrupts-extended = <&spmi_bus 0x3 0xa 0x0 IRQ_TYPE_EDGE_BOTH>;
-			#thermal-sensor-cells = <0>;
-		};
-
-		pmc8280_2_gpios: gpio@8800 {
-			compatible = "qcom,pm8350-gpio", "qcom,spmi-gpio";
-			reg = <0x8800>;
-			gpio-controller;
-			gpio-ranges = <&pmc8280_2_gpios 0 0 10>;
-			#gpio-cells = <2>;
-			interrupt-controller;
-			#interrupt-cells = <2>;
-		};
-	};
-
 	pmr735a: pmic@4 {
 		compatible = "qcom,pmr735a", "qcom,spmi-pmic";
 		reg = <0x4 SPMI_USID>;
-- 
2.30.2


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C9C0A62B9B3
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 11:44:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238871AbiKPKor (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 05:44:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238680AbiKPKoV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 05:44:21 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8288E326ED
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 02:32:26 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id o30so11575033wms.2
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 02:32:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hN+FF5b10U9u5b3X80NCWb//I7PpVmPUTmgHrwmcTRM=;
        b=NaIxLKZFDN3yFP5TrGsVbGy/qkr9dfFF6m7hCwNGLb8cSHiD0ixYkl+dW8QGQ5cd0b
         KQQc1PmHUJuz9kupK3T2hOM4HCwijx/YR6IKXOzvYDMMWvcAvVSzFoeZ6zjeer7MNf3d
         5YAHDbbgw3B0QA42zMfgzzSNjH9vArSnqRPvH3tpCcF891XM7wnHsfQRHA4C1hV9CsAh
         rRyoAagDztBYnSMHf6qO0ypahum3CDMuLNSPdXIDkE5ceolMdea2mKn0S6HQcxIXAMof
         xAq+xoo4BL46ZbJfoH/kL3kajaKuLSZAvqzaFIsiF6l6U6LwQQdMvc39Jx4mveyyiDqs
         uyKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hN+FF5b10U9u5b3X80NCWb//I7PpVmPUTmgHrwmcTRM=;
        b=4gJ/5oUCFbs5joj6MPi8E+ZH/FMIVg1w5GNr12r+euLtGT8fvMcKCOQti1fsg0361b
         hs5K7qFuM4lmqQ2MduN18k1CR84xTCyOcPrupP3pm43bjkP7Jwdv5Gn6oRR0b4MiMkQp
         YkwJS9uZHCdLZ+OC6l0TficYlJKhXLDMqc10nBXLh3p+LCo4M6cbmVLiHuNSMdvzv0LX
         YJ9Vw907iDr3oe5c7pMgwgnvNBe9jy6pwzYuy0tQ56mHoZFA0Gv0sQeHFoKRmddEjGsy
         N7zjmoa9HZCxjUy2kaX01V3VWCLbBaBQMqD1V7ENB2cZaplqblVEKzVLgO1W8y+LjJFH
         dETg==
X-Gm-Message-State: ANoB5plql0ePQFD7Tsl1OdFKJVGTUmZOJqoowCiK67l6d8+pHSiBaErE
        yMqFRzj3mu+IVF/qd+xrBumhXA==
X-Google-Smtp-Source: AA0mqf78FmLg1NzJS+xUwnIhrWVQUzY24TEs8ROqG3K5AOrpGz/BoTzLPMDnV3gBMHqrqQepqu1EMA==
X-Received: by 2002:a1c:e908:0:b0:3b3:3084:5ddb with SMTP id q8-20020a1ce908000000b003b330845ddbmr1636214wmc.108.1668594745056;
        Wed, 16 Nov 2022 02:32:25 -0800 (PST)
Received: from localhost.localdomain ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id bh9-20020a05600005c900b0022e36c1113fsm15107032wrb.13.2022.11.16.02.32.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 02:32:24 -0800 (PST)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        "vkoul@kernel.org" <vkoul@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH 03/10] arm64: dts: qcom: Add pm8010 pmic dtsi
Date:   Wed, 16 Nov 2022 12:31:39 +0200
Message-Id: <20221116103146.2556846-4-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221116103146.2556846-1-abel.vesa@linaro.org>
References: <20221116103146.2556846-1-abel.vesa@linaro.org>
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

From: Neil Armstrong <neil.armstrong@linaro.org>

Add nodes for pm8010 in separate dtsi file.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/pm8010.dtsi | 84 ++++++++++++++++++++++++++++
 1 file changed, 84 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/pm8010.dtsi

diff --git a/arch/arm64/boot/dts/qcom/pm8010.dtsi b/arch/arm64/boot/dts/qcom/pm8010.dtsi
new file mode 100644
index 000000000000..0ea641e12209
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/pm8010.dtsi
@@ -0,0 +1,84 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) 2022, Linaro Limited
+ */
+
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/spmi/spmi.h>
+
+/ {
+	thermal-zones {
+		pm8010-m-thermal {
+			polling-delay-passive = <100>;
+			polling-delay = <0>;
+
+			thermal-sensors = <&pm8010_m_temp_alarm>;
+
+			trips {
+				trip0 {
+					temperature = <95000>;
+					hysteresis = <0>;
+					type = "passive";
+				};
+
+				trip1 {
+					temperature = <115000>;
+					hysteresis = <0>;
+					type = "hot";
+				};
+			};
+		};
+
+		pm8010-n-thermal {
+			polling-delay-passive = <100>;
+			polling-delay = <0>;
+
+			thermal-sensors = <&pm8010_n_temp_alarm>;
+
+			trips {
+				trip0 {
+					temperature = <95000>;
+					hysteresis = <0>;
+					type = "passive";
+				};
+
+				trip1 {
+					temperature = <115000>;
+					hysteresis = <0>;
+					type = "hot";
+				};
+			};
+		};
+	};
+};
+
+
+&spmi_bus {
+	pm8010_m: pmic@c {
+		compatible = "qcom,pm8010", "qcom,spmi-pmic";
+		reg = <0xc SPMI_USID>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		pm8010_m_temp_alarm: temp-alarm@2400 {
+			compatible = "qcom,spmi-temp-alarm";
+			reg = <0x2400>;
+			interrupts = <0xc 0x24 0x0 IRQ_TYPE_EDGE_BOTH>;
+			#thermal-sensor-cells = <0>;
+		};
+	};
+
+	pm8010_n: pmic@d {
+		compatible = "qcom,pm8010", "qcom,spmi-pmic";
+		reg = <0xd SPMI_USID>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		pm8010_n_temp_alarm: temp-alarm@2400 {
+			compatible = "qcom,spmi-temp-alarm";
+			reg = <0x2400>;
+			interrupts = <0xd 0x24 0x0 IRQ_TYPE_EDGE_BOTH>;
+			#thermal-sensor-cells = <0>;
+		};
+	};
+};
-- 
2.34.1


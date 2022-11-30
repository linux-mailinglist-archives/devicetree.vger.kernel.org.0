Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C19B163D320
	for <lists+devicetree@lfdr.de>; Wed, 30 Nov 2022 11:19:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235670AbiK3KTG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Nov 2022 05:19:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49052 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235822AbiK3KS7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Nov 2022 05:18:59 -0500
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83FAB1B1C9
        for <devicetree@vger.kernel.org>; Wed, 30 Nov 2022 02:18:58 -0800 (PST)
Received: by mail-ej1-x62c.google.com with SMTP id bj12so40077877ejb.13
        for <devicetree@vger.kernel.org>; Wed, 30 Nov 2022 02:18:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TxTuDuP9N5RzZdY9G7Umgi4OKE3T+v4Fwox44/I+AkY=;
        b=o9no4LYiw1fUR3643F9X5Ma+j2EXpnymXEUxNfBx1DoWpJkZBsirTgYGRC8bmyhk58
         Bi5ar2hRt7DxiRsarqGoCTCyqpQFC/I+7sXtc/0DEwaQoXtOrYitgCPYV04/Vwcc6T+P
         Vn6QUUW4qqY1guoOb9t0mcgoHdh4S/7V9tzOOo7thgtojusTcDmfNREFAruNybCTmdXy
         /VWa6dYYWD07HGr0zv0CNPP5t9fhwwVDs7mSKgJCKU66VTpABAwiTER+CvN64iXrCqpZ
         DIycCqTb0b+VUVj+4Lu98MkgsnnNyf7D4wdK1WaQDDgCPLXqU1j6eTNsEITImb+O8zmZ
         ifgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TxTuDuP9N5RzZdY9G7Umgi4OKE3T+v4Fwox44/I+AkY=;
        b=6ND3t2q3dvSYDGD9iNQGOQGLLEixm5OEZ3h4hITBk/t3rj082sS2Onk+5RR02vN88V
         2z4zXv4H2Exb2DCriIzSrPVmOYl5dwWkrh26IyDDktjAftZlRjeFeXQOB/soM9AkDR/D
         2t39dcwccU2zUXZW2Nh6LY9ceXXKCIltG7x4sAQeMF8ovnnPMsfRjPKuIUTP02Lz5EXV
         SapMUNcuaN/zf59tFL4oyvBMB3bM2vyUo07lzaCOWil6Spy7WxLIeM9e59Of7O5InROZ
         hCu7rKPccXCEDvOlMXQbK5Bc/KE9Y3MONZyEAJR6OofxYfXENRgV84wHWCnPJtl9UHw2
         XgWQ==
X-Gm-Message-State: ANoB5pnEnpkK4h0BUIIVWQZCnAOGvIPGLD4gwA9z8VeTfS0FI0xBwnUG
        LOiQUd+m7izaFktMjEGpEifJ2w==
X-Google-Smtp-Source: AA0mqf6fi91WGg5qvH75VhwwK2JWN/xbiAiQ1uJOfuG07tz6NT1MYt+PVqmxa98opaRbZDz9slsolg==
X-Received: by 2002:a17:907:2a92:b0:7bd:7f47:d5bb with SMTP id fl18-20020a1709072a9200b007bd7f47d5bbmr18798137ejc.625.1669803538080;
        Wed, 30 Nov 2022 02:18:58 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id l4-20020aa7c304000000b00458dc7e8ecasm449462edq.72.2022.11.30.02.18.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Nov 2022 02:18:57 -0800 (PST)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v4 09/10] arm64: dts: qcom: Add PMR735d pmic dtsi
Date:   Wed, 30 Nov 2022 12:17:43 +0200
Message-Id: <20221130101744.2849294-10-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221130101744.2849294-1-abel.vesa@linaro.org>
References: <20221130101744.2849294-1-abel.vesa@linaro.org>
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

From: Neil Armstrong <neil.armstrong@linaro.org>

Add nodes for PMR735d in separate dtsi file.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/pmr735d.dtsi | 104 ++++++++++++++++++++++++++
 1 file changed, 104 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/pmr735d.dtsi

diff --git a/arch/arm64/boot/dts/qcom/pmr735d.dtsi b/arch/arm64/boot/dts/qcom/pmr735d.dtsi
new file mode 100644
index 000000000000..41fb664a10b3
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/pmr735d.dtsi
@@ -0,0 +1,104 @@
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
+		pmr735d-k-thermal {
+			polling-delay-passive = <100>;
+			polling-delay = <0>;
+
+			thermal-sensors = <&pmr735d_k_temp_alarm>;
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
+		pmr735d-l-thermal {
+			polling-delay-passive = <100>;
+			polling-delay = <0>;
+
+			thermal-sensors = <&pmr735d_l_temp_alarm>;
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
+	pmr735d_k: pmic@a {
+		compatible = "qcom,pmr735d", "qcom,spmi-pmic";
+		reg = <0xa SPMI_USID>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		pmr735d_k_temp_alarm: temp-alarm@a00 {
+			compatible = "qcom,spmi-temp-alarm";
+			reg = <0xa00>;
+			interrupts = <0xa 0xa 0x0 IRQ_TYPE_EDGE_BOTH>;
+			#thermal-sensor-cells = <0>;
+		};
+
+		pmr735d_k_gpios: gpio@8800 {
+			compatible = "qcom,pmr735d-gpio", "qcom,spmi-gpio";
+			reg = <0x8800>;
+			gpio-controller;
+			gpio-ranges = <&pmr735d_k_gpios 0 0 2>;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+	};
+
+	pmr735d_l: pmic@b {
+		compatible = "qcom,pmr735d", "qcom,spmi-pmic";
+		reg = <0xb SPMI_USID>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		pmr735d_l_temp_alarm: temp-alarm@a00 {
+			compatible = "qcom,spmi-temp-alarm";
+			reg = <0xa00>;
+			interrupts = <0xb 0xa 0x0 IRQ_TYPE_EDGE_BOTH>;
+			#thermal-sensor-cells = <0>;
+		};
+
+		pmr735d_l_gpios: gpio@8800 {
+			compatible = "qcom,pmr735d-gpio", "qcom,spmi-gpio";
+			reg = <0x8800>;
+			gpio-controller;
+			gpio-ranges = <&pmr735d_l_gpios 0 0 2>;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+	};
+};
-- 
2.34.1


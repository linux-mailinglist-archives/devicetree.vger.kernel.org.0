Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 088E26395CA
	for <lists+devicetree@lfdr.de>; Sat, 26 Nov 2022 12:46:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229641AbiKZLqv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 26 Nov 2022 06:46:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229646AbiKZLqm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 26 Nov 2022 06:46:42 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8514B209AC
        for <devicetree@vger.kernel.org>; Sat, 26 Nov 2022 03:46:40 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id h11so2857214wrw.13
        for <devicetree@vger.kernel.org>; Sat, 26 Nov 2022 03:46:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q4rFInHPvXMY21RVSYqFleaDBM1EbzDLtUryUWQU3DY=;
        b=Q3/u8IXoRijsoDHyanWARiuc5nz3Z1/sE7wLR15eTffOQ8ew91ENsnSmPesfgKxnko
         niTRlQr00Xk6eMcvUULGWpYEsWj4xkfqoLfx8xJ+tbUdYKY48TgNKPLjJK1OTJ1TbrP+
         wwopS0lB5GF/pJx46OTUE0Wt3ncomIuacz6YaeU8LNgFuve9iRuVSs5qIE8xoXz6UzmJ
         tcIIQoEvBvPFwpgMB5FUeiEV9PQN39AtKh6qOWgsrZknwmSI6rE+oGIvjRgsprgmTtXF
         9BnAZYl0nm2w1qKjG3DccQZI2mCHXGAWceeykKvUu3bXf7RAeQCoogW3lmdAeC+rPyRT
         55mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q4rFInHPvXMY21RVSYqFleaDBM1EbzDLtUryUWQU3DY=;
        b=RUAajR9YKGwNj1kzsK5rSSd6u5nbGzgDP+qVUbGc0skQlXzD0OshTQIELfpvAue6AE
         REk8COF+n1etBd3gs9vrG6aJArc11KUIxZabIuwHuPNp2NtQWEi9ChS+k1WUbrQPHAnU
         4QQcYNRznakTOGbTaBXfyOc9URusj3NLZwYqjM0rqBoylPvirceDxWQMeZZxtxFE3MYM
         0nD6gtEb4PkIDDnFdgk955SSOTdmf7YTkAFoLNsTc+LvM9iylus/qbOB5ssIRjtHd7gn
         VrskA8i5rS5yyM4iM5DiKHcH0uReMIDBnT6zBkuUmQ1P4Obd5mAx2Hwja6HOV0E9XW3b
         bQvg==
X-Gm-Message-State: ANoB5pk4Xy1OEKwk5BLagOKgTlj7+1aaBgDQMEwF56j/yMWEwpgn4kHh
        YXxfLZz/RMHYgZTBSeVWl5MoFA==
X-Google-Smtp-Source: AA0mqf6Kflk+kdGQ/hNDhqtwbph4rdwH16q4osqgez1gc4zM642Pk6Is34WNmStDhfSUupd+53fP3g==
X-Received: by 2002:a5d:6706:0:b0:241:cf90:ab1e with SMTP id o6-20020a5d6706000000b00241cf90ab1emr16578149wru.685.1669463200144;
        Sat, 26 Nov 2022 03:46:40 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id h5-20020adfa4c5000000b0023659925b2asm5942621wrb.51.2022.11.26.03.46.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Nov 2022 03:46:37 -0800 (PST)
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
Subject: [PATCH v3 03/10] arm64: dts: qcom: Add pm8010 pmic dtsi
Date:   Sat, 26 Nov 2022 13:46:10 +0200
Message-Id: <20221126114617.497677-4-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221126114617.497677-1-abel.vesa@linaro.org>
References: <20221126114617.497677-1-abel.vesa@linaro.org>
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

Add nodes for pm8010 in separate dtsi file.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
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


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7853C63D314
	for <lists+devicetree@lfdr.de>; Wed, 30 Nov 2022 11:19:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235813AbiK3KS7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Nov 2022 05:18:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49050 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235717AbiK3KSz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Nov 2022 05:18:55 -0500
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0630B25EAC
        for <devicetree@vger.kernel.org>; Wed, 30 Nov 2022 02:18:53 -0800 (PST)
Received: by mail-ej1-x62d.google.com with SMTP id bj12so40077276ejb.13
        for <devicetree@vger.kernel.org>; Wed, 30 Nov 2022 02:18:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YiSyzj5bxhBZ228Fs3MQ7cHv3+MhOBcyO/fL/boI7rc=;
        b=baDCorx0sp2SMwdHMpSuaC78AEJ8NRBcKd1QnxcI9dSU0SKdrBBfYmGwi2L/3+TFGX
         N7mYtYEK25081YngGaho0JUX+iHF6Iy8nmqZ3pY6ithDpyu2NXIrIj6TQfurj71kACRQ
         AhFjCWp1GuCNQ7t977YpjRjdw3Lm6oY57R/c3NsSvr5wrhEUjZk8y55VMMxPKAjCOIAF
         WEGlXL5Jw4LbrV17MveF+yB9/dminFmPLhlCehcpjpDGWbhZESQJgCD8dhq4dXuj+gli
         RTtgOQDIWwgZpWLTeJU7st0OCPJiFlCra45i91TZDZ3oA+kQxv+CgOpMoLgjSVzmUw+C
         epEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YiSyzj5bxhBZ228Fs3MQ7cHv3+MhOBcyO/fL/boI7rc=;
        b=WK75PTWwXGEUkJj2ezktthu2UqZC7TRloZ2JFvel/DkDwXr37oS42NY7PPdKBg5zi1
         EhfFnoIBFD1g2/ZcnStWRdqhXBMV1LrJbhHFP41x/wvw8R6o6i10vRYeUkuxd0WMSGx/
         rpvtU3Vj68r3eNQXZB+fapCZzdI5HtbZwW62dRLDmcXGH+HICaAiPR3ML3SY7yRgrvch
         vep+xwjEEiZKPyc1mIxStd/uB3c5bFYi6CK8mjcSxOcHAMot5hpa9wo8PoCmPy1lJjxS
         Mhx50FHscwV/r5fAUAK6gOK7DjIPnyEywCXKbDOR3uDIwYjTDkj7sZMRHg9lWgo/s0uY
         h36g==
X-Gm-Message-State: ANoB5pmjiSZ4gTrmfUYmmblQFoaNwSQjJjret9qrFdHb6ki8szKMKOVP
        5Xgzk/2HOiRNhBggREpQTWd/CA==
X-Google-Smtp-Source: AA0mqf5mIBoyan1GjJGTBigK0do70J+YsCnMKUuI9F9/r811WfdEyQTdx1D/wlZYBqblXQZJ35FCoQ==
X-Received: by 2002:a17:906:cd03:b0:7c0:27e6:582e with SMTP id oz3-20020a170906cd0300b007c027e6582emr10685696ejb.370.1669803531484;
        Wed, 30 Nov 2022 02:18:51 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id l4-20020aa7c304000000b00458dc7e8ecasm449462edq.72.2022.11.30.02.18.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Nov 2022 02:18:51 -0800 (PST)
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
Subject: [PATCH v4 04/10] arm64: dts: qcom: Add PM8550 pmic dtsi
Date:   Wed, 30 Nov 2022 12:17:38 +0200
Message-Id: <20221130101744.2849294-5-abel.vesa@linaro.org>
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

Add nodes for PM8550 in separate dtsi file.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/pm8550.dtsi | 59 ++++++++++++++++++++++++++++
 1 file changed, 59 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/pm8550.dtsi

diff --git a/arch/arm64/boot/dts/qcom/pm8550.dtsi b/arch/arm64/boot/dts/qcom/pm8550.dtsi
new file mode 100644
index 000000000000..46396ec1a330
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/pm8550.dtsi
@@ -0,0 +1,59 @@
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
+		pm8550-thermal {
+			polling-delay-passive = <100>;
+			polling-delay = <0>;
+
+			thermal-sensors = <&pm8550_temp_alarm>;
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
+	pm8550: pmic@1 {
+		compatible = "qcom,pm8550", "qcom,spmi-pmic";
+		reg = <0x1 SPMI_USID>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		pm8550_temp_alarm: temp-alarm@a00 {
+			compatible = "qcom,spmi-temp-alarm";
+			reg = <0xa00>;
+			interrupts = <0x1 0xa 0x0 IRQ_TYPE_EDGE_BOTH>;
+			#thermal-sensor-cells = <0>;
+		};
+
+		pm8550_gpios: gpio@8800 {
+			compatible = "qcom,pm8550-gpio", "qcom,spmi-gpio";
+			reg = <0x8800>;
+			gpio-controller;
+			gpio-ranges = <&pm8550_gpios 0 0 12>;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+	};
+};
-- 
2.34.1


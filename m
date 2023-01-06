Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 22A386607DE
	for <lists+devicetree@lfdr.de>; Fri,  6 Jan 2023 21:12:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236498AbjAFUL5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Jan 2023 15:11:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236581AbjAFULP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Jan 2023 15:11:15 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49E86392DC
        for <devicetree@vger.kernel.org>; Fri,  6 Jan 2023 12:11:02 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id p1-20020a05600c1d8100b003d8c9b191e0so1850078wms.4
        for <devicetree@vger.kernel.org>; Fri, 06 Jan 2023 12:11:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2GBkrjGOYCG/vFk7NUYRuiiITSa0YV9dEfizXvTyQ5c=;
        b=PkJvsIWFDxO8kCREFC9LJdFxiIeb9umwB9UMQ6OmvpCI8SJSKllgWxIJOE8YEK9tkr
         eBPu3dEwHtCtad6mjczL3zrhkNqbDJtNctMdlS/CN5Z+SqWPFP/KVCnSaiO7AocWVSOa
         N2u8ocVOibWVKarmLRtkcfTiwhjdQvPrwPfTJhmp0L9sKFhVTQLy3N7ipxPQRCH7rZts
         FzL/WbxiUQPfPGsZBxrSDuVZDWRlpO5kuHO6+3R/g19hBXAL9/++pFUqJRKF71gD7JaS
         twl/tDZ4Yp6SDLdEjQlAaYdQzcYgYlN8eTNfrIeuBuEHtP4emFQS2Jw90HrjnUu2LVDl
         lY+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2GBkrjGOYCG/vFk7NUYRuiiITSa0YV9dEfizXvTyQ5c=;
        b=ejK8OMcunX3cTbSSpgvL+sl1yrsCBp5wFZjMWTfYUFUbc/JNtSAusqErKXv7Plkf5m
         ywkqKoD22uHK8+T1glCCnbD/6Ab8PXQb5LniZu/4Ivmcug5RR/Q/ojdLHrTnP1FJ2gk6
         O76DXzi1GW+kBhoplHGt9qEY99Tud0W1AoSenspbG+8g0wwbAV+/RoGNs3/hBVAoP+sM
         cUSXXlZE2q1nU/LY7hDKMKUPLf9AG08iF4BriKlZytMUvLYlcznjoygtlw8197Qmtmhs
         WCTRAqyMzW69+09OVHsqplRXF9zoKZ0d6MHthjFqGLOkvE6TQuALOsoeZRDsuTdAzxyl
         ci3w==
X-Gm-Message-State: AFqh2kqN0PQ0V/FOaChP0TXbA+haiwiF93gl2I2Ss48uYBjPwXFTLtBl
        ZqxIgXB/x5GpsTv4inudzC98yg==
X-Google-Smtp-Source: AMrXdXvFAWLNu8GRanGePDs4vwbjjMlIV87HVEw5JqPP+sNPSdoO+nVnXGM+Z69wTeE9VTIdwYLFew==
X-Received: by 2002:a05:600c:358e:b0:3d9:9755:d659 with SMTP id p14-20020a05600c358e00b003d99755d659mr22737513wmq.22.1673035862176;
        Fri, 06 Jan 2023 12:11:02 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id z14-20020a05600c220e00b003d99fad7511sm2665240wml.22.2023.01.06.12.11.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Jan 2023 12:11:01 -0800 (PST)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: [PATCH v9 06/10] arm64: dts: qcom: Add PM8550ve pmic dtsi
Date:   Fri,  6 Jan 2023 22:10:43 +0200
Message-Id: <20230106201047.337409-7-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230106201047.337409-1-abel.vesa@linaro.org>
References: <20230106201047.337409-1-abel.vesa@linaro.org>
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

Add nodes for PM8550ve in separate dtsi file.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/pm8550ve.dtsi | 59 ++++++++++++++++++++++++++
 1 file changed, 59 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/pm8550ve.dtsi

diff --git a/arch/arm64/boot/dts/qcom/pm8550ve.dtsi b/arch/arm64/boot/dts/qcom/pm8550ve.dtsi
new file mode 100644
index 000000000000..c47646a467be
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/pm8550ve.dtsi
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
+		pm8550ve-thermal {
+			polling-delay-passive = <100>;
+			polling-delay = <0>;
+
+			thermal-sensors = <&pm8550ve_temp_alarm>;
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
+	pm8550ve: pmic@5 {
+		compatible = "qcom,pm8550", "qcom,spmi-pmic";
+		reg = <0x5 SPMI_USID>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		pm8550ve_temp_alarm: temp-alarm@a00 {
+			compatible = "qcom,spmi-temp-alarm";
+			reg = <0xa00>;
+			interrupts = <0x5 0xa 0x0 IRQ_TYPE_EDGE_BOTH>;
+			#thermal-sensor-cells = <0>;
+		};
+
+		pm8550ve_gpios: gpio@8800 {
+			compatible = "qcom,pm8550ve-gpio", "qcom,spmi-gpio";
+			reg = <0x8800>;
+			gpio-controller;
+			gpio-ranges = <&pm8550ve_gpios 0 0 8>;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+	};
+};
-- 
2.34.1


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B1942659BE5
	for <lists+devicetree@lfdr.de>; Fri, 30 Dec 2022 21:23:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235464AbiL3UWu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Dec 2022 15:22:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235498AbiL3UWr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Dec 2022 15:22:47 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C3231B9C0
        for <devicetree@vger.kernel.org>; Fri, 30 Dec 2022 12:22:45 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id i17-20020a05600c355100b003d99434b1cfso5591046wmq.1
        for <devicetree@vger.kernel.org>; Fri, 30 Dec 2022 12:22:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q4rFInHPvXMY21RVSYqFleaDBM1EbzDLtUryUWQU3DY=;
        b=SIGc+apV/7NiEvvcJ2qaFoSDyS4qE4Ut5QzX88KVQB9rzqqHpoksohZSNBgH8Ds68h
         RkKufaSawrUczxwItQQ8HJJ7+H6/jwMcIfLY17uxQPRJB9DYp79r9chc8Jfvv25Uiwcz
         lmHpZFrHSErCWHszGbquHHmp/lEKEhGriOuwmWuKUPjd59szhbuI7RCg//1d/jIeipDu
         IfXdZfmsSS5cwEG+UfZwr5aMZ4ZmVfa1SBzVnzmFJmXdFhGRwc0ozq6LIqLEyg6kuiRU
         9ZpowmXO+xNz2FzDwZbSo/6m0evWlWy6GiJCEdtox1hEpoUyZSzpbjI7kvbIwCIbgOko
         7kWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q4rFInHPvXMY21RVSYqFleaDBM1EbzDLtUryUWQU3DY=;
        b=A8DU3IwxByZQfLB7K6xmT3AdYbW+UZuVxwUAS20Vdj8Jg98/SmTmMUR8Bqo0oqVTRv
         /qgJ0t1DL2vToaDe8uuB2VkrJCGtub4OOZSV4+SxC6YcKBsBoATuZrLwEzJhS2ApMFV+
         yZBON4u4NLsMF/h7quM3wxbVxMXtf98HbcXBSH8NtlYwcJc6H7nrgowz7JCNYRgpamPE
         RjIj+yTL7VnAiw48bZiGvmkQRtPrrmONRWWn53SNg5S/KKSAYLgdYss+I54XgzaULmRY
         5VRPNzjLDfw0NSiWst8lGkLPRlw0j2HOnFVllX454Voo68TLSE8PSflOo4nRr7egIh/J
         8+nQ==
X-Gm-Message-State: AFqh2kqFf7xw/d2/9Lh7VkMnBmf9mrc898hM32xthZ8O01mctKSGEE7u
        4Bpen0W9Byb9Bl0xYT9+ufsPaA==
X-Google-Smtp-Source: AMrXdXu6V2VlPA7hYkH4lh3o+LMJst9a65HOCMMzqH00HgT6nuAVkka+zuNfehAhRDZFnUpoY+tDXQ==
X-Received: by 2002:a05:600c:1c8e:b0:3d2:4234:e8fe with SMTP id k14-20020a05600c1c8e00b003d24234e8femr23712917wms.19.1672431763884;
        Fri, 30 Dec 2022 12:22:43 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id z1-20020adfdf81000000b00268aae5fb5bsm21359142wrl.3.2022.12.30.12.22.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Dec 2022 12:22:43 -0800 (PST)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc:     Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: [PATCH v8 03/10] arm64: dts: qcom: Add pm8010 pmic dtsi
Date:   Fri, 30 Dec 2022 22:22:23 +0200
Message-Id: <20221230202230.2493494-4-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221230202230.2493494-1-abel.vesa@linaro.org>
References: <20221230202230.2493494-1-abel.vesa@linaro.org>
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


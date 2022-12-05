Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1DDDD6438FC
	for <lists+devicetree@lfdr.de>; Tue,  6 Dec 2022 00:04:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232988AbiLEXEP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Dec 2022 18:04:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234040AbiLEXEM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Dec 2022 18:04:12 -0500
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E4E2109
        for <devicetree@vger.kernel.org>; Mon,  5 Dec 2022 15:04:11 -0800 (PST)
Received: by mail-ed1-x534.google.com with SMTP id d14so12980369edj.11
        for <devicetree@vger.kernel.org>; Mon, 05 Dec 2022 15:04:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2GBkrjGOYCG/vFk7NUYRuiiITSa0YV9dEfizXvTyQ5c=;
        b=oWLws2TCPTDEK0RV/qEQiUMHoC9JzG9VLd93h/A5H87ZGJ7bhE+AV8i/RvLYWaB0dt
         uR7ytoAT2unHswjSaoytYqmcXmcYqJPotCWvGqhnWs04WAVLKYflwhWNwGJPKY7Hywu4
         DMPK1LydP0Pq7EBAE8jC0mnc0ATkEUGGH8/RWpjFdojPur71kasxC08ycP/UUwa17wAe
         cEf0+9BsJhWueQq7OI/PoCGhQJ3dR2i/LF4zArakIbj3sBNndCBjmtfdKMIpNSBaFgKI
         qVd8dIo0jPcAeTvUbC+MOeHwZUNkpVztySWl1bIXUAgU3BUopwgzdh5S7Vzq02HfBUo/
         TD0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2GBkrjGOYCG/vFk7NUYRuiiITSa0YV9dEfizXvTyQ5c=;
        b=6DQgscwyEWxPmbb4s33mFvRQ+56GxCMaDYBi3u7LUtuArdihjygwft0+bRwSveZV3p
         Cfr6oPBfl86Legl+RPbmxo5sVoqnUpjfZyK4BdsGLYjd1H9gnVcmPVLlXVCiy7RKhygK
         YJgP+RJyGPmsoALTLcKAeR8OkjVuCVJREwkGhdqZhQ8+EQOhGeSe4gCspQ7PDv/FTf+0
         QjaEsqGrIwCA6ZcVY4EBbmSS9YRzgNzHcjq13+xFM/W4xy8KQzYFc5bUTmAAEBwyVqoC
         cLUuYlPhWQMesOCP+KqUbvyBUoaIEVl6QkewjB8TSusKsZbnJfc1729visvNQRaprz/B
         N8Fg==
X-Gm-Message-State: ANoB5plN2BcP00B/Tcc28x+mq2hkml1p0ieknIBQj8l3opu3Z+FqyYNk
        phl5eBZkpJr7WS4jY5PHW18K8g==
X-Google-Smtp-Source: AA0mqf4L0qyrYn8B2RVYUsRPpZqWX0D6L22Jt/xCQMKTNixssxlZdkKPIkn79CLt7PakMtMFDvszpA==
X-Received: by 2002:a05:6402:c88:b0:46c:aa8b:da52 with SMTP id cm8-20020a0564020c8800b0046caa8bda52mr7038984edb.262.1670281449975;
        Mon, 05 Dec 2022 15:04:09 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id kw26-20020a170907771a00b00783f32d7eaesm6655642ejc.164.2022.12.05.15.04.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Dec 2022 15:04:09 -0800 (PST)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc:     Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: [PATCH v5 06/10] arm64: dts: qcom: Add PM8550ve pmic dtsi
Date:   Tue,  6 Dec 2022 01:03:38 +0200
Message-Id: <20221205230342.494923-7-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221205230342.494923-1-abel.vesa@linaro.org>
References: <20221205230342.494923-1-abel.vesa@linaro.org>
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


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7BDB053C776
	for <lists+devicetree@lfdr.de>; Fri,  3 Jun 2022 11:25:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243011AbiFCJYk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Jun 2022 05:24:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243019AbiFCJYg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Jun 2022 05:24:36 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4AD5C3A1B1
        for <devicetree@vger.kernel.org>; Fri,  3 Jun 2022 02:24:35 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id v9so7815453lja.12
        for <devicetree@vger.kernel.org>; Fri, 03 Jun 2022 02:24:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Je30aYZ11Dl2L6y+1vegW4XSBOxhRLgm60jldN/jvc8=;
        b=tmovn0i2v+YlnhOifDOB92gz3fftk8q5HBI8IwchlunQ7WVl+3VVwp3cGlfVAaZIXQ
         xRpglKCTM8w+vZngtv1Vo30BBgZO5lmPCJ2Dg+8HLepc1VszL/l69f5Uhjiu6lq2RczB
         kUjdjC+rsGhNw3pYOgLC0ZyQiF4y0Ib1vgzhL5ah8EpvRM08cwvCzK1eF4gSahUXLMmy
         MO+rVEvdleijOt80GqA3EhfMRQ90KouPF3KaxEaYuuK+25XHiVgR1jaeMYrJViZRPkYP
         6i7GlOuT7Pp/BhobufHn+WyO3Qv7e6T+M39aRXXrvTNsED1PcZV5uiRC3fw8koimYcDc
         oShQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Je30aYZ11Dl2L6y+1vegW4XSBOxhRLgm60jldN/jvc8=;
        b=co9G6iwRlUXLMXggoQdrtnPYUzpFxf4I4RntPmwuIWuuhRlajxeAAn+6hoF8PuG29J
         0XP3APubtq5VysjaKepzTAUxCV4NPVp/VoT/F9MP+yK1Pi7aVzds1q3bY5zDgaekoeRn
         JorXMoOBgyAMRJTIY00jx7EuItTb0j3fR++krpJm2Qzw+eO6lYyGptHF3LKOTUo1zZn+
         rQV8XTP7e+PcT2HiS6cXjHbCgLdkSug/Iksl1rI2ysTAl1i4pL0RFbNPDTeEtCH2p3b3
         6TaahN01CtLY2+0ODB49MgCO2O01cRw9iMNk/kvSBaV+pf0EM57LBrBdt+YfqMe1hKmt
         /l8Q==
X-Gm-Message-State: AOAM532xJP4FM2lBpCxc1KYxBFUP7juW77Q7HL5tauaXxUmhVCboAET+
        N2vn61U4QSn5KUZjDaapkGLHXQ==
X-Google-Smtp-Source: ABdhPJyJPDfOlJ8V1+tIV9Gp5appHola+ByvLd8/MoPbSuL0PYsrdMGQsDt7bKTgnYFPX6GBu96opg==
X-Received: by 2002:a05:651c:1024:b0:255:81b3:43df with SMTP id w4-20020a05651c102400b0025581b343dfmr680569ljm.51.1654248273550;
        Fri, 03 Jun 2022 02:24:33 -0700 (PDT)
Received: from panikiel.roam.corp.google.com (staticline-31-182-204-250.toya.net.pl. [31.182.204.250])
        by smtp.gmail.com with ESMTPSA id e10-20020a2e9e0a000000b002555dd9c20fsm1224434ljk.20.2022.06.03.02.24.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jun 2022 02:24:33 -0700 (PDT)
From:   =?UTF-8?q?Pawe=C5=82=20Anikiel?= <pan@semihalf.com>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        dinguyen@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, amstan@chromium.org,
        upstream@semihalf.com,
        =?UTF-8?q?Pawe=C5=82=20Anikiel?= <pan@semihalf.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 4/5] ARM: dts: socfpga: Add Google Chameleon v3 devicetree
Date:   Fri,  3 Jun 2022 11:23:53 +0200
Message-Id: <20220603092354.141927-5-pan@semihalf.com>
X-Mailer: git-send-email 2.36.1.255.ge46751e96f-goog
In-Reply-To: <20220603092354.141927-1-pan@semihalf.com>
References: <20220603092354.141927-1-pan@semihalf.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Add devicetree for the Google Chameleon v3 board.

Signed-off-by: Paweł Anikiel <pan@semihalf.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/Makefile                    |  1 +
 .../boot/dts/socfpga_arria10_chameleonv3.dts  | 90 +++++++++++++++++++
 2 files changed, 91 insertions(+)
 create mode 100644 arch/arm/boot/dts/socfpga_arria10_chameleonv3.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 023c8b4ba45c..9417106d3289 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1146,6 +1146,7 @@ dtb-$(CONFIG_ARCH_S5PV210) += \
 	s5pv210-torbreck.dtb
 dtb-$(CONFIG_ARCH_INTEL_SOCFPGA) += \
 	socfpga_arria5_socdk.dtb \
+	socfpga_arria10_chameleonv3.dtb \
 	socfpga_arria10_socdk_nand.dtb \
 	socfpga_arria10_socdk_qspi.dtb \
 	socfpga_arria10_socdk_sdmmc.dtb \
diff --git a/arch/arm/boot/dts/socfpga_arria10_chameleonv3.dts b/arch/arm/boot/dts/socfpga_arria10_chameleonv3.dts
new file mode 100644
index 000000000000..422d00cd4c74
--- /dev/null
+++ b/arch/arm/boot/dts/socfpga_arria10_chameleonv3.dts
@@ -0,0 +1,90 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2022 Google LLC
+ */
+/dts-v1/;
+#include "socfpga_arria10_mercury_aa1.dtsi"
+
+/ {
+	model = "Google Chameleon V3";
+	compatible = "google,chameleon-v3", "enclustra,mercury-aa1",
+		     "altr,socfpga-arria10", "altr,socfpga";
+
+	aliases {
+		serial0 = &uart0;
+		i2c0 = &i2c0;
+		i2c1 = &i2c1;
+	};
+};
+
+&gmac0 {
+	status = "okay";
+};
+
+&gpio0 {
+	status = "okay";
+};
+
+&gpio1 {
+	status = "okay";
+};
+
+&gpio2 {
+	status = "okay";
+};
+
+&i2c0 {
+	status = "okay";
+
+	ssm2603: audio-codec@1a {
+		compatible = "adi,ssm2603";
+		reg = <0x1a>;
+	};
+};
+
+&i2c1 {
+	status = "okay";
+
+	u80: gpio@21 {
+		compatible = "nxp,pca9535";
+		reg = <0x21>;
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		gpio-line-names =
+			"SOM_AUD_MUTE",
+			"DP1_OUT_CEC_EN",
+			"DP2_OUT_CEC_EN",
+			"DP1_SOM_PS8469_CAD",
+			"DPD_SOM_PS8469_CAD",
+			"DP_OUT_PWR_EN",
+			"STM32_RST_L",
+			"STM32_BOOT0",
+
+			"FPGA_PROT",
+			"STM32_FPGA_COMM0",
+			"TP119",
+			"TP120",
+			"TP121",
+			"TP122",
+			"TP123",
+			"TP124";
+	};
+};
+
+&mmc {
+	status = "okay";
+};
+
+&uart0 {
+	status = "okay";
+};
+
+&uart1 {
+	status = "okay";
+};
+
+&usb0 {
+	status = "okay";
+	dr_mode = "host";
+};
-- 
2.36.1.255.ge46751e96f-goog


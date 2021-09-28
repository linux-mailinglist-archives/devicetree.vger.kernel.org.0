Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC38841A4F3
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 03:49:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238481AbhI1Bv0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 21:51:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238466AbhI1BvZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Sep 2021 21:51:25 -0400
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15504C061604
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 18:49:47 -0700 (PDT)
Received: by mail-pj1-x102d.google.com with SMTP id me5-20020a17090b17c500b0019af76b7bb4so586629pjb.2
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 18:49:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DBB9PqXKAn7JtQopDAKE4raqjGwkNHbNRgTQPsWiL3c=;
        b=m/sLHK5M5r56kh/xekWvOHB003T89XyitfCHc4bhfZOZGs9hzR3qUE1Cqv8WDqpyab
         5NtRbV5GSeVe0AxGLXznaHhgf/MxETYAnUPTpAbKD4ZhyhPNtFTaL2wYlSscgoZYx/qD
         yXxkJAf384J74xXg524GpkHr3G+83jO/3oO9c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DBB9PqXKAn7JtQopDAKE4raqjGwkNHbNRgTQPsWiL3c=;
        b=Ry17I+gYeXkzZjpogzatOQWuzHIpjN/4CmDWQOR179qaKa2RJqlMMzDQW8jsZIcva+
         Ches5jUcRSRkRQlr3DzG4ZTKvDzoVgOjVapyNdB8FJUpO0FpVY1cF0KNHQCKWYwWeZD3
         XGh8dT3jtebNdg9TuKfot2avUeq3xOUFjS9rereyKyqWpdgHmHQk3y0nIQ9yQ59jdyRV
         CbL1DsTcyRntTCRL4TTEis6i5Yrgs8frBOapnt3yVfF+CierMr8sF6F+zp7UaOA3rb7Y
         MlL4VzG27XdWuTX6yqrX7xvX6XWux+Havh4YvCeFtpqoPdzXioTMg/PmVuezh9BwCEN2
         9vhw==
X-Gm-Message-State: AOAM5323NnaSdYVyG89iQAHpB555Jd4J9ZO+KJc7TfdxZ0y38PFbKWWw
        d5rF6OoVGhYLripcrKlBddcIjg==
X-Google-Smtp-Source: ABdhPJx1mrpaEOexp4+9hCYNAayQ9lluQub+fVgerntdSlhmwqQYqw4lWi11WCoNSGprgT/cbc0grw==
X-Received: by 2002:a17:90a:ec0b:: with SMTP id l11mr2442117pjy.30.1632793786461;
        Mon, 27 Sep 2021 18:49:46 -0700 (PDT)
Received: from philipchen.mtv.corp.google.com ([2620:15c:202:201:8016:e67e:e320:7523])
        by smtp.gmail.com with ESMTPSA id e15sm13013744pfc.134.2021.09.27.18.49.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Sep 2021 18:49:45 -0700 (PDT)
From:   Philip Chen <philipchen@chromium.org>
To:     LKML <linux-kernel@vger.kernel.org>
Cc:     dianders@chromium.org, swboyd@chromium.org,
        Philip Chen <philipchen@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: [PATCH 1/2] arm64: dts: sc7180: Factor out ti-sn65dsi86 support
Date:   Mon, 27 Sep 2021 18:49:39 -0700
Message-Id: <20210927184858.1.Ib7e63ae17e827ce0636a09d5dec9796043e4f80a@changeid>
X-Mailer: git-send-email 2.33.0.685.g46640cef36-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Factor out ti-sn65dsi86 edp bridge as a separate dts fragment.
This helps us introduce the second source edp bridge later.

Signed-off-by: Philip Chen <philipchen@chromium.org>
---

 .../boot/dts/qcom/sc7180-trogdor-coachz.dtsi  |  1 +
 .../boot/dts/qcom/sc7180-trogdor-lazor.dtsi   |  1 +
 .../boot/dts/qcom/sc7180-trogdor-pompom.dtsi  |  1 +
 .../arm64/boot/dts/qcom/sc7180-trogdor-r1.dts |  1 +
 .../dts/qcom/sc7180-trogdor-ti-sn65dsi86.dtsi | 87 +++++++++++++++++++
 arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi  | 81 -----------------
 6 files changed, 91 insertions(+), 81 deletions(-)
 create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-ti-sn65dsi86.dtsi

diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz.dtsi
index a758e4d22612..1d13fba3bd2f 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz.dtsi
@@ -11,6 +11,7 @@
 ap_h1_spi: &spi0 {};
 
 #include "sc7180-trogdor.dtsi"
+#include "sc7180-trogdor-ti-sn65dsi86.dtsi"
 
 /* Deleted nodes from trogdor.dtsi */
 
diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor.dtsi
index 00535aaa43c9..27b26a782af9 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor.dtsi
@@ -11,6 +11,7 @@
 ap_h1_spi: &spi0 {};
 
 #include "sc7180-trogdor.dtsi"
+#include "sc7180-trogdor-ti-sn65dsi86.dtsi"
 
 &ap_sar_sensor {
 	semtech,cs0-ground;
diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom.dtsi
index a246dbd74cc1..e7c7cad14989 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom.dtsi
@@ -11,6 +11,7 @@
 ap_h1_spi: &spi0 {};
 
 #include "sc7180-trogdor.dtsi"
+#include "sc7180-trogdor-ti-sn65dsi86.dtsi"
 
 / {
 	thermal-zones {
diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-r1.dts b/arch/arm64/boot/dts/qcom/sc7180-trogdor-r1.dts
index 2b522f9e0d8f..457c25499863 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-r1.dts
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-r1.dts
@@ -13,6 +13,7 @@
 ap_h1_spi: &spi0 {};
 
 #include "sc7180-trogdor.dtsi"
+#include "sc7180-trogdor-ti-sn65dsi86.dtsi"
 
 / {
 	model = "Google Trogdor (rev1+)";
diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-ti-sn65dsi86.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-ti-sn65dsi86.dtsi
new file mode 100644
index 000000000000..7b1034a5a8e9
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-ti-sn65dsi86.dtsi
@@ -0,0 +1,87 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Google Trogdor dts fragment for the boards with TI sn65dsi86 edp bridge
+ *
+ * Copyright 2021 Google LLC.
+ */
+
+&dsi0_out {
+	remote-endpoint = <&sn65dsi86_in>;
+	data-lanes = <0 1 2 3>;
+};
+
+&edp_brij_i2c {
+	sn65dsi86_bridge: bridge@2d {
+		compatible = "ti,sn65dsi86";
+		reg = <0x2d>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&edp_brij_en>, <&edp_brij_irq>;
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		interrupt-parent = <&tlmm>;
+		interrupts = <11 IRQ_TYPE_LEVEL_HIGH>;
+
+		enable-gpios = <&tlmm 104 GPIO_ACTIVE_HIGH>;
+
+		vpll-supply = <&pp1800_edp_vpll>;
+		vccio-supply = <&pp1800_brij_vccio>;
+		vcca-supply = <&pp1200_brij>;
+		vcc-supply = <&pp1200_brij>;
+
+		clocks = <&rpmhcc RPMH_LN_BB_CLK3>;
+		clock-names = "refclk";
+
+		no-hpd;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				sn65dsi86_in: endpoint {
+					remote-endpoint = <&dsi0_out>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+				sn65dsi86_out: endpoint {
+					data-lanes = <0 1>;
+					remote-endpoint = <&panel_in_edp>;
+				};
+			};
+		};
+
+		aux-bus {
+			panel: panel {
+				/* Compatible will be filled in per-board */
+				power-supply = <&pp3300_dx_edp>;
+				backlight = <&backlight>;
+				hpd-gpios = <&sn65dsi86_bridge 2 GPIO_ACTIVE_HIGH>;
+
+				port {
+					panel_in_edp: endpoint {
+						remote-endpoint = <&sn65dsi86_out>;
+					};
+				};
+			};
+		};
+	};
+};
+
+&tlmm {
+	edp_brij_irq: edp-brij-irq {
+		pinmux {
+			pins = "gpio11";
+			function = "gpio";
+		};
+
+		pinconf {
+			pins = "gpio11";
+			drive-strength = <2>;
+			bias-pull-down;
+		};
+	};
+};
diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
index 0f2b3c00e434..5ad3f15652d5 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
@@ -602,15 +602,6 @@ &camcc {
 &dsi0 {
 	status = "okay";
 	vdda-supply = <&vdda_mipi_dsi0_1p2>;
-
-	ports {
-		port@1 {
-			endpoint {
-				remote-endpoint = <&sn65dsi86_in>;
-				data-lanes = <0 1 2 3>;
-			};
-		};
-	};
 };
 
 &dsi_phy {
@@ -621,65 +612,6 @@ &dsi_phy {
 edp_brij_i2c: &i2c2 {
 	status = "okay";
 	clock-frequency = <400000>;
-
-	sn65dsi86_bridge: bridge@2d {
-		compatible = "ti,sn65dsi86";
-		reg = <0x2d>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&edp_brij_en>, <&edp_brij_irq>;
-		gpio-controller;
-		#gpio-cells = <2>;
-
-		interrupt-parent = <&tlmm>;
-		interrupts = <11 IRQ_TYPE_LEVEL_HIGH>;
-
-		enable-gpios = <&tlmm 104 GPIO_ACTIVE_HIGH>;
-
-		vpll-supply = <&pp1800_edp_vpll>;
-		vccio-supply = <&pp1800_brij_vccio>;
-		vcca-supply = <&pp1200_brij>;
-		vcc-supply = <&pp1200_brij>;
-
-		clocks = <&rpmhcc RPMH_LN_BB_CLK3>;
-		clock-names = "refclk";
-
-		no-hpd;
-
-		ports {
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			port@0 {
-				reg = <0>;
-				sn65dsi86_in: endpoint {
-					remote-endpoint = <&dsi0_out>;
-				};
-			};
-
-			port@1 {
-				reg = <1>;
-				sn65dsi86_out: endpoint {
-					data-lanes = <0 1>;
-					remote-endpoint = <&panel_in_edp>;
-				};
-			};
-		};
-
-		aux-bus {
-			panel: panel {
-				/* Compatible will be filled in per-board */
-				power-supply = <&pp3300_dx_edp>;
-				backlight = <&backlight>;
-				hpd-gpios = <&sn65dsi86_bridge 2 GPIO_ACTIVE_HIGH>;
-
-				port {
-					panel_in_edp: endpoint {
-						remote-endpoint = <&sn65dsi86_out>;
-					};
-				};
-			};
-		};
-	};
 };
 
 ap_sar_sensor_i2c: &i2c5 {
@@ -1245,19 +1177,6 @@ pinconf {
 		};
 	};
 
-	edp_brij_irq: edp-brij-irq {
-		pinmux {
-			pins = "gpio11";
-			function = "gpio";
-		};
-
-		pinconf {
-			pins = "gpio11";
-			drive-strength = <2>;
-			bias-pull-down;
-		};
-	};
-
 	en_pp3300_codec: en-pp3300-codec {
 		pinmux {
 			pins = "gpio83";
-- 
2.33.0.685.g46640cef36-goog


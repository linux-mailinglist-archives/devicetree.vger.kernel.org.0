Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4E2AE41D09A
	for <lists+devicetree@lfdr.de>; Thu, 30 Sep 2021 02:35:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347363AbhI3Agv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Sep 2021 20:36:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347385AbhI3Agv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Sep 2021 20:36:51 -0400
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com [IPv6:2607:f8b0:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AAE9C061769
        for <devicetree@vger.kernel.org>; Wed, 29 Sep 2021 17:35:09 -0700 (PDT)
Received: by mail-pg1-x52d.google.com with SMTP id 17so4494423pgp.4
        for <devicetree@vger.kernel.org>; Wed, 29 Sep 2021 17:35:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XjJMyo4nepY67DLXBfdTq1qdfOniUTOoSKlZO422mI0=;
        b=c/uR3dVM+1NVe4obbihceA7rgd8OA3E91zAv+gUeWoCAc7PfSZl1E1/2TwtoCrvWJq
         6TD0hT9OuycedZg4J6eFUAvC/nBuDeH4nOZpqyFtIj+ym/scWUXWB7hZdGo42QpdJl5h
         NCbO35gOrQB1k0gimHMkZ3z1HMzd2H3Z1XeR8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XjJMyo4nepY67DLXBfdTq1qdfOniUTOoSKlZO422mI0=;
        b=ea3zl+SBGNepf7yCHWFE0t9xI+1qL2l+jorFhau+wXMaWE8HEAXDhQ7s2eghTPtJ2W
         3PfHyRzOMnouEgHzCCDnXrridkZ5AoWYp4A5sdQLmx6ONcEL5IjDp7hTkemD48JDtQg1
         DTh+M7MleNHx6DwM3GQUmWcBogOLvgew7XirzL2Q5jYXDutD2wQUv4K9VgUKnKF8+ttQ
         tlj9R+YjR+jtIDj5x5nW+FcrLIc9qju9JfkkBxtYAtItr1SEYJAx1aBEVTj0AQ3PLsmB
         VSKAEwZh6fgepKsTjwH0e3BbdhQVB3iPSL4yf34oBE1E0mczNeGcp4nCifxDJPJFjAYg
         tMlA==
X-Gm-Message-State: AOAM5309C0GjzetnGKnpt5hZ4SZH2tmEhvkIEUaynaFsNYLT5UnOaF6S
        1B846ZsIw4Soik9EryIN65PHRQ==
X-Google-Smtp-Source: ABdhPJzCl8vaM3acFT6ZGZlpSD0orUBM5WLa1c4jnTLVnWtCLiy3A2a6dGM0AmTqMoh5N1nCrM0mZQ==
X-Received: by 2002:a62:3881:0:b0:44b:6639:6c20 with SMTP id f123-20020a623881000000b0044b66396c20mr1336754pfa.78.1632962108997;
        Wed, 29 Sep 2021 17:35:08 -0700 (PDT)
Received: from philipchen.mtv.corp.google.com ([2620:15c:202:201:b6b6:ed63:b801:ded7])
        by smtp.gmail.com with ESMTPSA id 23sm711648pgk.89.2021.09.29.17.35.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Sep 2021 17:35:08 -0700 (PDT)
From:   Philip Chen <philipchen@chromium.org>
To:     LKML <linux-kernel@vger.kernel.org>
Cc:     dianders@chromium.org, swboyd@chromium.org,
        Philip Chen <philipchen@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: [PATCH v2 3/3] arm64: dts: sc7180: Support Parade ps8640 edp bridge
Date:   Wed, 29 Sep 2021 17:34:58 -0700
Message-Id: <20210929173343.v2.3.I630340a51130f4582dbe14e42f673b74e0531a2b@changeid>
X-Mailer: git-send-email 2.33.0.685.g46640cef36-goog
In-Reply-To: <20210929173343.v2.1.Ib7e63ae17e827ce0636a09d5dec9796043e4f80a@changeid>
References: <20210929173343.v2.1.Ib7e63ae17e827ce0636a09d5dec9796043e4f80a@changeid>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a dts fragment file to support the sc7180 boards with the second
source edp bridge, Parade ps8640.

Signed-off-by: Philip Chen <philipchen@chromium.org>
---

Changes in v2:
- Add the definition of edp_brij_i2c and some other properties to
  ps8640 dts, making it match ti-sn65dsi86 dts better

 .../qcom/sc7180-trogdor-parade-ps8640.dtsi    | 108 ++++++++++++++++++
 1 file changed, 108 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-parade-ps8640.dtsi

diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-parade-ps8640.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-parade-ps8640.dtsi
new file mode 100644
index 000000000000..c274ab41bd67
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-parade-ps8640.dtsi
@@ -0,0 +1,108 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Google Trogdor dts fragment for the boards with Parade ps8640 edp bridge
+ *
+ * Copyright 2021 Google LLC.
+ */
+
+/ {
+	pp3300_brij_ps8640: pp3300-brij-ps8640 {
+		compatible = "regulator-fixed";
+		status = "okay";
+		regulator-name = "pp3300_brij_ps8640";
+
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+
+		gpio = <&tlmm 32 GPIO_ACTIVE_HIGH>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&en_pp3300_edp_brij_ps8640>;
+
+		vin-supply = <&pp3300_a>;
+	};
+};
+
+&dsi0_out {
+	remote-endpoint = <&ps8640_in>;
+};
+
+edp_brij_i2c: &i2c2 {
+	status = "okay";
+	clock-frequency = <400000>;
+
+	ps8640_bridge: edp-bridge@8 {
+		compatible = "parade,ps8640";
+		reg = <0x8>;
+
+		powerdown-gpios = <&tlmm 104 GPIO_ACTIVE_LOW>;
+		reset-gpios = <&tlmm 11 GPIO_ACTIVE_LOW>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&edp_brij_en>, <&edp_brij_ps8640_rst>;
+
+		vdd12-supply = <&pp1200_brij>;
+		vdd33-supply = <&pp3300_brij_ps8640>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				ps8640_in: endpoint {
+					remote-endpoint = <&dsi0_out>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+				ps8640_out: endpoint {
+					remote-endpoint = <&panel_in_edp>;
+				};
+			};
+		};
+
+		aux_bus: aux-bus {
+			panel: panel {
+				/* Compatible will be filled in per-board */
+				power-supply = <&pp3300_dx_edp>;
+				backlight = <&backlight>;
+
+				port {
+					panel_in_edp: endpoint {
+						remote-endpoint = <&ps8640_out>;
+					};
+				};
+			};
+		};
+	};
+};
+
+&tlmm {
+	edp_brij_ps8640_rst: edp-brij-ps8640-rst {
+		pinmux {
+			pins = "gpio11";
+			function = "gpio";
+		};
+
+		pinconf {
+			pins = "gpio11";
+			drive-strength = <2>;
+			bias-disable;
+		};
+	};
+
+	en_pp3300_edp_brij_ps8640: en-pp3300-edp-brij-ps8640 {
+		pinmux {
+			pins = "gpio32";
+			function = "gpio";
+		};
+
+		pinconf {
+			pins = "gpio32";
+			drive-strength = <2>;
+			bias-disable;
+		};
+	};
+};
-- 
2.33.0.685.g46640cef36-goog


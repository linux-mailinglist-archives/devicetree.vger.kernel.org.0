Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 81C754270E2
	for <lists+devicetree@lfdr.de>; Fri,  8 Oct 2021 20:39:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231725AbhJHSlj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Oct 2021 14:41:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231496AbhJHSlj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Oct 2021 14:41:39 -0400
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 990DBC061570
        for <devicetree@vger.kernel.org>; Fri,  8 Oct 2021 11:39:43 -0700 (PDT)
Received: by mail-pj1-x102a.google.com with SMTP id pf6-20020a17090b1d8600b0019fa884ab85so9983296pjb.5
        for <devicetree@vger.kernel.org>; Fri, 08 Oct 2021 11:39:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DsdQtCuqj7NeCW/+vaJ8AIZ5ek4xa9z9QEi1HjmFjxA=;
        b=gnJtz5yzqOiLtUcf8XEDf4DVdaws3u2lKXBE4F7Pd90CQmjnJVAVV/CGnupfSfL6Mc
         jcTBVs1V2Pc7okqkjFfnmHkYz6LgIvxV3MdpLXlPGP4dSZz/xyOaf40nleHjx4ZLtnHq
         Wd/e7a8vPrY/tWNqtMSOuaI1hxvSBQZy5K62s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DsdQtCuqj7NeCW/+vaJ8AIZ5ek4xa9z9QEi1HjmFjxA=;
        b=0Waki1zxkziv17Ye001Nry4KJ7I5BPg8qIJHSYV8ElEw55ZaukvpkqibFS5//T6QAh
         glLM8KyMxluQD5HEU5ReO1ioO2+wiILagxX8fvZY7z5jpjswZCxKXjWqKF9Wpa9asc6W
         cI65y1yLKOtmvXZWbxXJYP5yoFF7oLk20GL9olTfUl5a09jTSFzCIlVqAKFqkfSsBnpm
         pRkoHybmmjQVeaZ+IH7klHU0A0h2w4grpdMfoSEiWQ33kOO6z40MzKIQjIHeyCW4cWRx
         biQU5hYevrd5THQIVjfj61qa4j+jVFfZ83nDD/RERFHlun8DUnvSA63ir6swtKdbe7ex
         5+zg==
X-Gm-Message-State: AOAM532K7i0N5xef85Vm+g6J8ba/HMs+hrdLaqwHrrWNPuHCT2ME++9t
        IIYnwlTUzqlVCHU32jaA0S3HuQ==
X-Google-Smtp-Source: ABdhPJzV47fkcDiN1zA1ercI7JgCF5r1xun2xQeJzqhcs0q9xBC5+w63o9/NHYvr0+MclQL6clTevw==
X-Received: by 2002:a17:90a:af92:: with SMTP id w18mr13392893pjq.98.1633718383195;
        Fri, 08 Oct 2021 11:39:43 -0700 (PDT)
Received: from philipchen.mtv.corp.google.com ([2620:15c:202:201:d589:5290:5a04:2c2b])
        by smtp.gmail.com with ESMTPSA id i123sm71695pfg.157.2021.10.08.11.39.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Oct 2021 11:39:42 -0700 (PDT)
From:   Philip Chen <philipchen@chromium.org>
To:     LKML <linux-kernel@vger.kernel.org>
Cc:     swboyd@chromium.org, dianders@chromium.org,
        Philip Chen <philipchen@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: [PATCH v3 2/2] arm64: dts: sc7180: Support Parade ps8640 edp bridge
Date:   Fri,  8 Oct 2021 11:39:35 -0700
Message-Id: <20211008113839.v3.2.I187502fa747bc01a1c624ccf20d985fdffe9c320@changeid>
X-Mailer: git-send-email 2.33.0.882.g93a45727a2-goog
In-Reply-To: <20211008113839.v3.1.Ibada67e75d2982157e64164f1d11715d46cdc42c@changeid>
References: <20211008113839.v3.1.Ibada67e75d2982157e64164f1d11715d46cdc42c@changeid>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a dts fragment file to support the sc7180 boards with the second
source edp bridge, Parade ps8640.

Signed-off-by: Philip Chen <philipchen@chromium.org>
---

Changes in v3:
- Set gpio32 active high
- Rename edp-bridge to bridge to align with ti-sn65 dts
- Remove the unused label 'aux_bus'

Changes in v2:
- Add the definition of edp_brij_i2c and some other properties to
  ps8640 dts, making it match ti-sn65dsi86 dts better

 .../qcom/sc7180-trogdor-parade-ps8640.dtsi    | 109 ++++++++++++++++++
 1 file changed, 109 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-parade-ps8640.dtsi

diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-parade-ps8640.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-parade-ps8640.dtsi
new file mode 100644
index 000000000000..a3d69540d4e4
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-parade-ps8640.dtsi
@@ -0,0 +1,109 @@
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
+		enable-active-high;
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
+	ps8640_bridge: bridge@8 {
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
+		aux-bus {
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
2.33.0.882.g93a45727a2-goog


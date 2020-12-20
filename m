Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AC1C32DF636
	for <lists+devicetree@lfdr.de>; Sun, 20 Dec 2020 18:00:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727826AbgLTRAT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Dec 2020 12:00:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727396AbgLTRAS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Dec 2020 12:00:18 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B90DAC0611D0
        for <devicetree@vger.kernel.org>; Sun, 20 Dec 2020 08:58:59 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id a12so18070545lfl.6
        for <devicetree@vger.kernel.org>; Sun, 20 Dec 2020 08:58:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=y5W4txAZ3GE7OBSlwDNmPew8Z4ZGoIzAKXrW8t0fFDs=;
        b=RYQQZNz78v2X1T+ZYZAiV9DeWegSWSe+KASeSXAd75iMZDdUIYMig3Bgs9lzeATWaJ
         kGAHgKqeglZVwaJxQOa7wDkqmPzgN8Y9P7wtVL2bquEPkP0y/sYiiAS4YorzKPqCf3pR
         XmdrTXWL6jqrAeA/KcR66QYkZR4t+Bi0XAoU329wb3crqsoVzajgyINROIRnW0U/9EB2
         9udvkYHBwFu7A3vUH1MRugJRhTng11m4ZkD13M8cvYYdQ660o/Xo2aStiEUs+EiBNBUq
         Ws2MRt5yNSpdjhxYbDwvm+B5rvbCz/OxzWVu0JOW17e6AapHvRMjK8MRsaPigQmggHZw
         O27w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=y5W4txAZ3GE7OBSlwDNmPew8Z4ZGoIzAKXrW8t0fFDs=;
        b=mFv+nZ7yDIqOIlDAiONQe0nu9vYFvMzv9xJsTcm0nqMaOask5aR5BFsltXAYj7+2kG
         gpHGytb2nEgk9dj69DUrrPbU8liq/lxckH8hFoYg6VbbBZ+U7zZWNG7rzI74JnE+bHcN
         vbHaMf95eIc2aHybRCMTWay/IdAkbnzfT1of3eTgZv6nwR9ID2DPnh9PgaWWpC0qE5b1
         k8NHzlq1Q6te58Cpih3YbhQtGYtquEV3l+gNB1hHNfZN2HxMXhni/0/pv/Bnz5gLTghP
         h3xHlMzudnCA8TV/jeiQCnLg0m7QOoMq6odTIC2Rl7RIGLlKcL7QhrNhURsjY47SD5Kg
         leTw==
X-Gm-Message-State: AOAM533HrbawiX5nmjBCOpleZjr5hg3bt0OZPgCfhXBNjjJnueoI2vPS
        6XeV5mxkzW8KqYVPkh1pUvziRQ==
X-Google-Smtp-Source: ABdhPJxOGICqM3nrfnZsqPBtkuLp5SPMjMzzDcucv9uQo+OXCsW4Z62C+5CUY7R4fNkX7WpX3/ieEA==
X-Received: by 2002:a05:651c:1063:: with SMTP id y3mr5372919ljm.431.1608483538304;
        Sun, 20 Dec 2020 08:58:58 -0800 (PST)
Received: from eriador.lumag.spb.ru ([188.162.64.15])
        by smtp.gmail.com with ESMTPSA id t30sm1696638lft.266.2020.12.20.08.58.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Dec 2020 08:58:57 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Lee Jones <lee.jones@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] arm64: dts: qcom: Add Bluetooth support on RB5
Date:   Sun, 20 Dec 2020 19:58:44 +0300
Message-Id: <20201220165845.3712599-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201220165845.3712599-1-dmitry.baryshkov@linaro.org>
References: <20201220165845.3712599-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Add Bluetooth support on RB5 using the onboard QCA6391 WLAN+BT chipset.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
[DB: added qca639x power domain]
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 97 ++++++++++++++++++++++++
 1 file changed, 97 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index 1be984d89f48..e6bab9960cea 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -17,6 +17,7 @@ / {
 	compatible = "qcom,qrb5165-rb5", "qcom,sm8250";
 
 	aliases {
+		hsuart0 = &uart6;
 		serial0 = &uart12;
 		sdhc2 = &sdhc_2;
 	};
@@ -118,6 +119,23 @@ vreg_s4a_1p8: vreg-s4a-1p8 {
 		regulator-max-microvolt = <1800000>;
 		regulator-always-on;
 	};
+
+	qca639x: qca639x {
+		compatible = "qcom,qca639x";
+		#power-domain-cells = <0>;
+
+		vddaon-supply = <&vreg_s6a_0p95>;
+		vddpmu-supply = <&vreg_s2f_0p95>;
+		vddrfa1-supply = <&vreg_s2f_0p95>;
+		vddrfa2-supply = <&vreg_s8c_1p3>;
+		vddrfa3-supply = <&vreg_s5a_1p9>;
+		vddpcie1-supply = <&vreg_s8c_1p3>;
+		vddpcie2-supply = <&vreg_s5a_1p9>;
+		vddio-supply = <&vreg_s4a_1p8>;
+		pinctrl-names = "default", "active";
+		pinctrl-0 = <&wlan_default_state &bt_default_state>;
+		pinctrl-1 = <&wlan_active_state &bt_active_state>;
+	};
 };
 
 &apps_rsc {
@@ -131,6 +149,13 @@ pm8009-rpmh-regulators {
 		vdd-l5-l6-supply = <&vreg_bob>;
 		vdd-l7-supply = <&vreg_s4a_1p8>;
 
+		vreg_s2f_0p95: smps2 {
+			regulator-name = "vreg_s2f_0p95";
+			regulator-min-microvolt = <512000>;
+			regulator-max-microvolt = <1100000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_AUTO>;
+		};
+
 		vreg_l1f_1p1: ldo1 {
 			regulator-name = "vreg_l1f_1p1";
 			regulator-min-microvolt = <1104000>;
@@ -513,6 +538,26 @@ &pm8150_rtc {
 	status = "okay";
 };
 
+&qup_uart6_default {
+	ctsrx {
+		pins = "gpio16", "gpio19";
+		drive-strength = <2>;
+		bias-disable;
+	};
+
+	rts {
+		pins = "gpio17";
+		drive-strength = <2>;
+		bias-disable;
+	};
+
+	tx {
+		pins = "gpio18";
+		drive-strength = <2>;
+		bias-pull-up;
+	};
+};
+
 &qupv3_id_0 {
 	status = "okay";
 };
@@ -738,6 +783,28 @@ &tlmm {
 		"HST_WLAN_UART_TX",
 		"HST_WLAN_UART_RX";
 
+	bt_default_state: bt-default-state {
+		bt-en {
+			pins = "gpio21";
+			function = "gpio";
+
+			drive-strength = <16>;
+			output-low;
+			bias-pull-up;
+		};
+	};
+
+	bt_active_state: bt-active-state {
+		bt-en {
+			pins = "gpio21";
+			function = "gpio";
+
+			drive-strength = <16>;
+			output-high;
+			bias-pull-up;
+		};
+	};
+
 	pcie0_default_state: pcie0-default {
 		clkreq {
 			pins = "gpio80";
@@ -838,6 +905,36 @@ sdc2_card_det_n: sd-card-det-n {
 		function = "gpio";
 		bias-pull-up;
 	};
+
+	wlan_default_state: wlan-default-state {
+		wlan-en {
+			pins = "gpio20";
+			function = "gpio";
+
+			drive-strength = <16>;
+			output-low;
+			bias-pull-up;
+		};
+	};
+
+	wlan_active_state: wlan-active-state {
+		wlan-en {
+			pins = "gpio20";
+			function = "gpio";
+
+			drive-strength = <16>;
+			output-high;
+			bias-pull-up;
+		};
+	};
+};
+
+&uart6 {
+	status = "okay";
+	bluetooth {
+		compatible = "qcom,qca6390-bt";
+		power-domains = <&qca639x>;
+	};
 };
 
 &uart12 {
-- 
2.29.2


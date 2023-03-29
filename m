Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4F0076CCE97
	for <lists+devicetree@lfdr.de>; Wed, 29 Mar 2023 02:08:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229980AbjC2AIq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 20:08:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229668AbjC2AIo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 20:08:44 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD5792D53
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 17:08:42 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id br6so17957375lfb.11
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 17:08:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680048521;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ebf7jyLJf0YeFfOywV30tQ3Yu3KMKIOaI0KbggP0I44=;
        b=fpDNoe37hld0GXJbbw6UMapmDlKUTjH3G/UFe0O+iDb8qFCa4jRRIl2tEqTYLbSUQ7
         DM1XVGjDgNSbgM+kpz6I2jgFc9DL1CwqBkhem7aEW08WWhaWoVvMT0UMdNZYElI2OwFj
         Y5vuAL1bzjdJOD1vr7VWWsRSD5Udg7eVKsNnU6inMM5uNnZ4y9+e89HGei/fWjxEDSF7
         i45XpB3teDhsxzROXVpKCEplzek4ZLkc6eo39hPEAxgcpL2DU4NS6lDfJjbyzdUnUI1I
         8n/Kp+f5VCRNpX2smqZDlnDxM3FL8RuUnzVD8RQU+bP1WVFjRo2TEt7zQBQ+VjreCZ9L
         bPfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680048521;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ebf7jyLJf0YeFfOywV30tQ3Yu3KMKIOaI0KbggP0I44=;
        b=KMZvByy/KVr9Y87cJp5erD+yvqy2sW4Wsg4J6E1Ju0jI+TpHqWt87d/YUBTW87aNzW
         bVkWpeHdiPWqx+ENn7CqHw09FcJ+lGroP4LdXg+WSjWYTRXshjII27WiczU7W2NreHN0
         H+gFtw07YAAVw0xiXKQz7j+fi3WwVizBB4BzAL+xJKQ9BDDuuZCp1CdhUez2pho5D4wS
         pQeUzQJNTcOLdfyFgF4ogAEyuUP7ivxHDYQ7zJ6Rt4Rfj2RsSjrhMgpR9Ya5P3If5Ziq
         XNidE8s+kdJiVlwmLdXVEka9jDEchhvrRyNI+UWZZm4aTNahlTT6VKjgX8SVhWBys8JD
         MfZg==
X-Gm-Message-State: AAQBX9fB2KVEvedjk5Wfgb33zhlGUThXST8p0jTyvfYwzj4MlNXL2UZb
        edF9EfgID+iC+PXplLIFhIJLPQ==
X-Google-Smtp-Source: AKy350Y/2LQyLvqfj8TEXfojvFP6bCipVPpkwxs4RmfJABUBSMk7uf2ZuaVRC85iF6aENDARp0e1zA==
X-Received: by 2002:ac2:5519:0:b0:4de:e802:b7e3 with SMTP id j25-20020ac25519000000b004dee802b7e3mr5071162lfk.19.1680048521127;
        Tue, 28 Mar 2023 17:08:41 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id p21-20020ac246d5000000b004e8011cbaa0sm5238341lfo.111.2023.03.28.17.08.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Mar 2023 17:08:40 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org,
        Johan Hovold <johan+linaro@kernel.org>,
        devicetree@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>, linux-iio@vger.kernel.org
Subject: [PATCH 6/6] arm64: dts: qcom: sc8280xp*: use pm8350c.dtsi and pmr735a.dtsi
Date:   Wed, 29 Mar 2023 03:08:33 +0300
Message-Id: <20230329000833.2507594-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230329000833.2507594-1-dmitry.baryshkov@linaro.org>
References: <20230329000833.2507594-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Stop duplicating declarations of pm8350c and pmr735a PMICs, use existing
files to prevent possible future issues.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp-crd.dts     |  6 +--
 .../qcom/sc8280xp-lenovo-thinkpad-x13s.dts    |  6 +--
 arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi  | 51 ++-----------------
 3 files changed, 11 insertions(+), 52 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts b/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
index 58a14c39633b..aabdacc15aab 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
+++ b/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
@@ -24,7 +24,7 @@ aliases {
 
 	backlight: backlight {
 		compatible = "pwm-backlight";
-		pwms = <&pmc8280c_lpg 3 1000000>;
+		pwms = <&pm8350c_pwm 3 1000000>;
 		enable-gpios = <&pm8350_1_gpios 8 GPIO_ACTIVE_HIGH>;
 		power-supply = <&vreg_edp_bl>;
 
@@ -555,7 +555,7 @@ &pcie4_phy {
 	status = "okay";
 };
 
-&pmc8280c_lpg {
+&pm8350c_pwm {
 	status = "okay";
 };
 
@@ -710,7 +710,7 @@ wwan_sw_en: wwan-sw-en-state {
 	};
 };
 
-&pmc8280c_gpios {
+&pm8350c_gpios {
 	edp_bl_pwm: edp-bl-pwm-state {
 		pins = "gpio8";
 		function = "func1";
diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
index 023ccb7725ef..7e589e5f6a2e 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
+++ b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
@@ -54,7 +54,7 @@ wcd938x: audio-codec {
 
 	backlight: backlight {
 		compatible = "pwm-backlight";
-		pwms = <&pmc8280c_lpg 3 1000000>;
+		pwms = <&pm8350c_pwm 3 1000000>;
 		enable-gpios = <&pm8350_1_gpios 8 GPIO_ACTIVE_HIGH>;
 		power-supply = <&vreg_edp_bl>;
 
@@ -725,7 +725,7 @@ &pcie4_phy {
 	status = "okay";
 };
 
-&pmc8280c_lpg {
+&pm8350c_pwm {
 	status = "okay";
 };
 
@@ -1172,7 +1172,7 @@ wwan_sw_en: wwan-sw-en-state {
 	};
 };
 
-&pmc8280c_gpios {
+&pm8350c_gpios {
 	edp_bl_pwm: edp-bl-pwm-state {
 		pins = "gpio8";
 		function = "func1";
diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi
index 505bb8f9a13c..a37fe4b1458c 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi
@@ -15,53 +15,12 @@
 #include "pm8350.dtsi"
 #undef PM8350_SID
 
+/* SID 2 */
+#include "pm8350c.dtsi"
+
 #define PM8350_SID 3
 #include "pm8350.dtsi"
 #undef PM8350_SID
 
-&spmi_bus {
-	pmc8280c: pmic@2 {
-		compatible = "qcom,pm8350c", "qcom,spmi-pmic";
-		reg = <0x2 SPMI_USID>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		pmc8280c_gpios: gpio@8800 {
-			compatible = "qcom,pm8350c-gpio", "qcom,spmi-gpio";
-			reg = <0x8800>;
-			gpio-controller;
-			gpio-ranges = <&pmc8280c_gpios 0 0 9>;
-			#gpio-cells = <2>;
-			interrupt-controller;
-			#interrupt-cells = <2>;
-		};
-
-		pmc8280c_lpg: pwm {
-			compatible = "qcom,pm8350c-pwm";
-
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			#pwm-cells = <2>;
-
-			status = "disabled";
-		};
-	};
-
-	pmr735a: pmic@4 {
-		compatible = "qcom,pmr735a", "qcom,spmi-pmic";
-		reg = <0x4 SPMI_USID>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		pmr735a_gpios: gpio@8800 {
-			compatible = "qcom,pmr735a-gpio", "qcom,spmi-gpio";
-			reg = <0x8800>;
-			gpio-controller;
-			gpio-ranges = <&pmr735a_gpios 0 0 4>;
-			#gpio-cells = <2>;
-			interrupt-controller;
-			#interrupt-cells = <2>;
-		};
-	};
-};
+/* SID 4 */
+#include "pmr735a.dtsi"
-- 
2.30.2


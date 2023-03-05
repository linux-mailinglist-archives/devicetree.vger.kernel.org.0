Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C6286AAFD1
	for <lists+devicetree@lfdr.de>; Sun,  5 Mar 2023 14:00:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229815AbjCENAc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Mar 2023 08:00:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229748AbjCENAX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Mar 2023 08:00:23 -0500
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CB1513D69
        for <devicetree@vger.kernel.org>; Sun,  5 Mar 2023 05:00:08 -0800 (PST)
Received: by mail-ed1-x52b.google.com with SMTP id i34so27964743eda.7
        for <devicetree@vger.kernel.org>; Sun, 05 Mar 2023 05:00:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678021206;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AEJ3iniOoQqjtKRQMQS5oCYu9HLlPtutFtGbqThK5Is=;
        b=ywjmn3UX9c6mfmrz/ZZXth8nn/jd/sTFqIhCBp/+maEmm1e1A5TmE36XgswFr04Cac
         E3JIqEpERPFgGVM1CaShAcR6MFD+pRuh/SAedWWcCNRv53nmghV3Z9yciFP+Zu8SIMsU
         gSgcmB2xIv2vzffZt5g17+xtQWJadwRb7UOHjToIT5qsOZxyDDOf0kBwBL5vP/HWb0b1
         aHnDD+xK/qvRzU0HJdkqCGNQx/3RKUl5/hcweTkXNycJYBR62zBW6xfmJIK315JBABBo
         1bI+MuYnvDN+o5rS9jhOgCE4t4ianBzacedaErKFJeEYaAn+HwKDxECOxQF7PrcNqtGM
         pgzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678021206;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AEJ3iniOoQqjtKRQMQS5oCYu9HLlPtutFtGbqThK5Is=;
        b=m4oO1rgIq/ohP5Src3XmUx6x4WUpVfE4jTSQZWXV3FIZi6tROCx89WBlhjHcDqN/LR
         0ZQ9+PMEZzo7IoI0s+HW6uHNf0+Uv/8KbM4PiUNIEqhASijrbnUFU/znjfJsdHzpepfi
         klHJXxTJgldcO9w4XRd6OPYujJuCAyaKbJTPXSp1KngHCwK/l17bFzQVbp9xzjfKZuyo
         HMTFOT5F0j06ymaN8SoXNa4CEnJ9cTPSO+Vd13IZP37IlmZqiwiNyBtrewARqNwNb06n
         XGt+9V2365+YbnSKww7KF8+W8JYDC3oqkMmTu32OgS+pB4Y/pcXBP132JOxLRrqkBMZI
         oOHQ==
X-Gm-Message-State: AO0yUKU4Hu+cjULzGISpVdWhb4cvdMOiJQfFwzD28YtaJJMi3Y0/tOfp
        PE0rdUnNv2HeF82w0TW8Q3rHMw==
X-Google-Smtp-Source: AK7set/hkCNIeO2vQrQ2B6HQBipELdelycCLTeQ/RQxy25m+tObJZfIK65AHyZdPz0xMr3qs464l3w==
X-Received: by 2002:a17:906:308e:b0:8b1:3ba7:723b with SMTP id 14-20020a170906308e00b008b13ba7723bmr7377010ejv.30.1678021206759;
        Sun, 05 Mar 2023 05:00:06 -0800 (PST)
Received: from krzk-bin.. ([2a02:810d:15c0:828:71e7:13d:1c29:505f])
        by smtp.gmail.com with ESMTPSA id l15-20020a170906078f00b008ea8effe947sm3193158ejc.225.2023.03.05.05.00.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Mar 2023 05:00:06 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Melody Olvera <quic_molvera@quicinc.com>,
        Souradeep Chowdhury <quic_schowdhu@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 11/11] arm64: dts: qcom: msm8996-oneplus: do not enable incomplete nodes
Date:   Sun,  5 Mar 2023 13:59:54 +0100
Message-Id: <20230305125954.209559-11-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230305125954.209559-1-krzysztof.kozlowski@linaro.org>
References: <20230305125954.209559-1-krzysztof.kozlowski@linaro.org>
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

status=okay should appear in final place where all required properties
are provided, because that makes the code the easiest to read.  Move the
status from common OnePlus DTSI to board DTS.  No functional changes.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../boot/dts/qcom/msm8996-oneplus-common.dtsi   | 17 -----------------
 arch/arm64/boot/dts/qcom/msm8996-oneplus3.dts   |  6 ++++++
 arch/arm64/boot/dts/qcom/msm8996-oneplus3t.dts  |  6 ++++++
 3 files changed, 12 insertions(+), 17 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996-oneplus-common.dtsi b/arch/arm64/boot/dts/qcom/msm8996-oneplus-common.dtsi
index 104deaee74e5..2adadc1e5b7c 100644
--- a/arch/arm64/boot/dts/qcom/msm8996-oneplus-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996-oneplus-common.dtsi
@@ -85,10 +85,6 @@ wlan_en: wlan-en-regulator {
 	};
 };
 
-&adsp_pil {
-	status = "okay";
-};
-
 &blsp1_i2c3 {
 	status = "okay";
 
@@ -183,10 +179,6 @@ &dsi0_phy {
 	status = "okay";
 };
 
-&gpu {
-	status = "okay";
-};
-
 &hsusb_phy1 {
 	vdd-supply = <&vreg_l28a_0p925>;
 	vdda-pll-supply = <&vreg_l12a_1p8>;
@@ -215,7 +207,6 @@ &mmcc {
 
 &mss_pil {
 	pll-supply = <&vreg_l12a_1p8>;
-	status = "okay";
 };
 
 &pcie0 {
@@ -548,10 +539,6 @@ wcd9335: codec@1,0 {
 	};
 };
 
-&slpi_pil {
-	status = "okay";
-};
-
 &sound {
 	compatible = "qcom,apq8096-sndcard";
 	model = "OnePlus3";
@@ -812,7 +799,3 @@ &usb3_dwc3 {
 
 	maximum-speed = "high-speed";
 };
-
-&venus {
-	status = "okay";
-};
diff --git a/arch/arm64/boot/dts/qcom/msm8996-oneplus3.dts b/arch/arm64/boot/dts/qcom/msm8996-oneplus3.dts
index 1bdc1b134305..dfe75119b8d2 100644
--- a/arch/arm64/boot/dts/qcom/msm8996-oneplus3.dts
+++ b/arch/arm64/boot/dts/qcom/msm8996-oneplus3.dts
@@ -17,6 +17,7 @@ / {
 
 &adsp_pil {
 	firmware-name = "qcom/msm8996/oneplus3/adsp.mbn";
+	status = "okay";
 };
 
 &battery {
@@ -25,6 +26,8 @@ &battery {
 };
 
 &gpu {
+	status = "okay";
+
 	zap-shader {
 		firmware-name = "qcom/msm8996/oneplus3/a530_zap.mbn";
 	};
@@ -33,12 +36,15 @@ zap-shader {
 &mss_pil {
 	firmware-name = "qcom/msm8996/oneplus3/mba.mbn",
 			"qcom/msm8996/oneplus3/modem.mbn";
+	status = "okay";
 };
 
 &slpi_pil {
 	firmware-name = "qcom/msm8996/oneplus3/slpi.mbn";
+	status = "okay";
 };
 
 &venus {
 	firmware-name = "qcom/msm8996/oneplus3/venus.mbn";
+	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/qcom/msm8996-oneplus3t.dts b/arch/arm64/boot/dts/qcom/msm8996-oneplus3t.dts
index 34f837dd0c12..51fce65e89f1 100644
--- a/arch/arm64/boot/dts/qcom/msm8996-oneplus3t.dts
+++ b/arch/arm64/boot/dts/qcom/msm8996-oneplus3t.dts
@@ -18,6 +18,7 @@ / {
 
 &adsp_pil {
 	firmware-name = "qcom/msm8996/oneplus3t/adsp.mbn";
+	status = "okay";
 };
 
 &battery {
@@ -26,6 +27,8 @@ &battery {
 };
 
 &gpu {
+	status = "okay";
+
 	zap-shader {
 		firmware-name = "qcom/msm8996/oneplus3t/a530_zap.mbn";
 	};
@@ -34,12 +37,15 @@ zap-shader {
 &mss_pil {
 	firmware-name = "qcom/msm8996/oneplus3t/mba.mbn",
 			"qcom/msm8996/oneplus3t/modem.mbn";
+	status = "okay";
 };
 
 &slpi_pil {
 	firmware-name = "qcom/msm8996/oneplus3t/slpi.mbn";
+	status = "okay";
 };
 
 &venus {
 	firmware-name = "qcom/msm8996/oneplus3t/venus.mbn";
+	status = "okay";
 };
-- 
2.34.1


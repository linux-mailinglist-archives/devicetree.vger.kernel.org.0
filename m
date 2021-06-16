Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 013B33A8DEB
	for <lists+devicetree@lfdr.de>; Wed, 16 Jun 2021 02:58:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231656AbhFPBAz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Jun 2021 21:00:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231437AbhFPBAz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Jun 2021 21:00:55 -0400
Received: from relay08.th.seeweb.it (relay08.th.seeweb.it [IPv6:2001:4b7a:2000:18::169])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DBCDEC061574
        for <devicetree@vger.kernel.org>; Tue, 15 Jun 2021 17:58:49 -0700 (PDT)
Received: from localhost.localdomain (83.6.168.161.neoplus.adsl.tpnet.pl [83.6.168.161])
        by m-r2.th.seeweb.it (Postfix) with ESMTPA id A92C13ED3F;
        Wed, 16 Jun 2021 02:58:47 +0200 (CEST)
From:   Konrad Dybcio <konrad.dybcio@somainline.org>
To:     ~postmarketos/upstreaming@lists.sr.ht
Cc:     martin.botka@somainline.org,
        angelogioacchino.delregno@somainline.org,
        marijn.suijten@somainline.org, jamipkettunen@somainline.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 1/6] arm64: dts: qcom: sm8250-edo: Add hardware keys
Date:   Wed, 16 Jun 2021 02:58:38 +0200
Message-Id: <20210616005843.79579-1-konrad.dybcio@somainline.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Volume Down, GAssist (pdx206 only) and camera keys live on PMIC pins,
with the latter kind being broken for now.. Add these and PON-connected
Volume Up & PWR.

Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
---
Depends on https://patchwork.kernel.org/project/linux-arm-msm/patch/20210613124822.124039-1-konrad.dybcio@somainline.org/
 .../qcom/sm8250-sony-xperia-edo-pdx206.dts    | 11 +++++++
 .../boot/dts/qcom/sm8250-sony-xperia-edo.dtsi | 30 +++++++++++++++++++
 2 files changed, 41 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250-sony-xperia-edo-pdx206.dts b/arch/arm64/boot/dts/qcom/sm8250-sony-xperia-edo-pdx206.dts
index 999b662f4679..16c96e838534 100644
--- a/arch/arm64/boot/dts/qcom/sm8250-sony-xperia-edo-pdx206.dts
+++ b/arch/arm64/boot/dts/qcom/sm8250-sony-xperia-edo-pdx206.dts
@@ -18,6 +18,17 @@ &framebuffer {
 	stride = <(1080 * 4)>;
 };
 
+&gpio_keys {
+	g-assist-key {
+		label = "Google Assistant Key";
+		linux,code = <KEY_LEFTMETA>;
+		gpios = <&pm8150_gpios 6 GPIO_ACTIVE_LOW>;
+		debounce-interval = <15>;
+		linux,can-disable;
+		gpio-key,wakeup;
+	};
+};
+
 &vreg_l2f_1p3 {
 	regulator-min-microvolt = <1200000>;
 	regulator-max-microvolt = <1200000>;
diff --git a/arch/arm64/boot/dts/qcom/sm8250-sony-xperia-edo.dtsi b/arch/arm64/boot/dts/qcom/sm8250-sony-xperia-edo.dtsi
index 0db63eb08c60..52ed4b082bd7 100644
--- a/arch/arm64/boot/dts/qcom/sm8250-sony-xperia-edo.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250-sony-xperia-edo.dtsi
@@ -47,6 +47,26 @@ framebuffer: framebuffer@9c000000 {
 		};
 	};
 
+	gpio_keys: gpio-keys {
+		compatible = "gpio-keys";
+
+		/*
+		 * Camera focus (light press) and camera snapshot (full press)
+		 * seem not to work properly.. Adding the former one stalls the CPU
+		 * and the latter kills the volume down key for whatever reason. In any
+		 * case, they are both on &pm8150b_gpios: camera focus(2), camera snapshot(1).
+		 */
+
+		vol-down {
+			label = "Volume Down";
+			linux,code = <KEY_VOLUMEDOWN>;
+			gpios = <&pm8150_gpios 1 GPIO_ACTIVE_LOW>;
+			debounce-interval = <15>;
+			linux,can-disable;
+			gpio-key,wakeup;
+		};
+	};
+
 	vph_pwr: vph-pwr-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vph_pwr";
@@ -436,6 +456,16 @@ &i2c15 {
 	/* Richwave RTC6226 FM Radio Receiver @ 64 */
 };
 
+&pon_pwrkey {
+	status = "okay";
+};
+
+&pon_resin {
+	status = "okay";
+
+	linux,code = <KEY_VOLUMEUP>;
+};
+
 &qupv3_id_0 {
 	status = "okay";
 };
-- 
2.32.0


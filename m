Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A115D327256
	for <lists+devicetree@lfdr.de>; Sun, 28 Feb 2021 14:09:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230217AbhB1NJf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 28 Feb 2021 08:09:35 -0500
Received: from relay02.th.seeweb.it ([5.144.164.163]:40823 "EHLO
        relay02.th.seeweb.it" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229834AbhB1NJe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 28 Feb 2021 08:09:34 -0500
Received: from localhost.localdomain (abab236.neoplus.adsl.tpnet.pl [83.6.165.236])
        by m-r1.th.seeweb.it (Postfix) with ESMTPA id 48DA91F547;
        Sun, 28 Feb 2021 14:08:51 +0100 (CET)
From:   Konrad Dybcio <konrad.dybcio@somainline.org>
To:     phone-devel@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, martin.botka@somainline.org,
        angelogioacchino.delregno@somainline.org,
        marijn.suijten@somainline.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 06/11] arm64: dts: qcom: msm8996: Disable MDSS and Adreno by default
Date:   Sun, 28 Feb 2021 14:08:24 +0100
Message-Id: <20210228130831.203765-6-konrad.dybcio@somainline.org>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210228130831.203765-1-konrad.dybcio@somainline.org>
References: <20210228130831.203765-1-konrad.dybcio@somainline.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Disable them by default to allow for booting without a display
and proprietary firmware. Then, enable them on boards that didn't
previously disable them. Hence, this commit brings no functional
difference.

Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
---
 arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi | 4 ++++
 arch/arm64/boot/dts/qcom/apq8096-ifc6640.dts | 8 ++++++++
 arch/arm64/boot/dts/qcom/msm8996.dtsi        | 7 ++++++-
 3 files changed, 18 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi b/arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi
index 7f57cdf9c753..63c7cd0ad2ee 100644
--- a/arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi
+++ b/arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi
@@ -200,6 +200,10 @@ &camss {
 	vdda-supply = <&vreg_l2a_1p25>;
 };
 
+&gpu {
+	status = "okay";
+};
+
 &hdmi {
 	status = "okay";
 
diff --git a/arch/arm64/boot/dts/qcom/apq8096-ifc6640.dts b/arch/arm64/boot/dts/qcom/apq8096-ifc6640.dts
index 4f67aa48633b..c6d7c6250de4 100644
--- a/arch/arm64/boot/dts/qcom/apq8096-ifc6640.dts
+++ b/arch/arm64/boot/dts/qcom/apq8096-ifc6640.dts
@@ -88,6 +88,14 @@ &blsp2_uart2 {
 	pinctrl-1 = <&blsp2_uart2_2pins_sleep>;
 };
 
+&gpu {
+	status = "okay";
+};
+
+&mdss {
+	status = "okay";
+};
+
 &tlmm {
 	sdc2_pins_default: sdc2-pins-default {
 		clk {
diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index 5bc9473551ad..e0f042cf8295 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -521,6 +521,8 @@ mdss: mdss@900000 {
 			#size-cells = <1>;
 			ranges;
 
+			status = "disabled";
+
 			mdp: mdp@901000 {
 				compatible = "qcom,mdp5";
 				reg = <0x00901000 0x90000>;
@@ -618,7 +620,8 @@ hdmi_phy: hdmi-phy@9a0600 {
 					      "ref";
 			};
 		};
-		gpu@b00000 {
+
+		gpu: gpu@b00000 {
 			compatible = "qcom,adreno-530.2", "qcom,adreno";
 			#stream-id-cells = <16>;
 
@@ -650,6 +653,8 @@ gpu@b00000 {
 
 			operating-points-v2 = <&gpu_opp_table>;
 
+			status = "disabled";
+
 			gpu_opp_table: opp-table {
 				compatible  ="operating-points-v2";
 
-- 
2.30.1


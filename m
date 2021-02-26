Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 58B2B3267CC
	for <lists+devicetree@lfdr.de>; Fri, 26 Feb 2021 21:08:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230305AbhBZUHG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Feb 2021 15:07:06 -0500
Received: from m-r1.th.seeweb.it ([5.144.164.170]:37477 "EHLO
        m-r1.th.seeweb.it" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230237AbhBZUGu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Feb 2021 15:06:50 -0500
Received: from localhost.localdomain (abab236.neoplus.adsl.tpnet.pl [83.6.165.236])
        by m-r1.th.seeweb.it (Postfix) with ESMTPA id 971B91FAB6;
        Fri, 26 Feb 2021 21:05:41 +0100 (CET)
From:   Konrad Dybcio <konrad.dybcio@somainline.org>
To:     phone-devel@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, martin.botka@somainline.org,
        angelogioacchino.delregno@somainline.org,
        marijn.suijten@somainline.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 15/41] arm64: dts: qcom: sdm630: Add TSENS node
Date:   Fri, 26 Feb 2021 21:03:45 +0100
Message-Id: <20210226200414.167762-16-konrad.dybcio@somainline.org>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210226200414.167762-1-konrad.dybcio@somainline.org>
References: <20210226200414.167762-1-konrad.dybcio@somainline.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This will enable temperature reporting for various SoC
components.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
---
 .../devicetree/bindings/thermal/qcom-tsens.yaml       |  1 +
 arch/arm64/boot/dts/qcom/sdm630.dtsi                  | 11 +++++++++++
 2 files changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
index 95462e071ab4..cdc2ab662436 100644
--- a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
+++ b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
@@ -40,6 +40,7 @@ properties:
               - qcom,msm8996-tsens
               - qcom,msm8998-tsens
               - qcom,sc7180-tsens
+              - qcom,sdm630-tsens
               - qcom,sdm845-tsens
               - qcom,sm8150-tsens
               - qcom,sm8250-tsens
diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
index deeb1237e67a..2f35415cefed 100644
--- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
@@ -627,6 +627,17 @@ mnoc: interconnect@1745000 {
 				 <&mmcc AHB_CLK_SRC>;
 		};
 
+		tsens: thermal-sensor@10ae000 {
+			compatible = "qcom,sdm630-tsens", "qcom,tsens-v2";
+			reg = <0x010ae000 0x1000>, /* TM */
+				  <0x010ad000 0x1000>; /* SROT */
+			#qcom,sensors = <12>;
+			interrupts = <GIC_SPI 184 IRQ_TYPE_LEVEL_HIGH>,
+					 <GIC_SPI 430 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "uplow", "critical";
+			#thermal-sensor-cells = <1>;
+		};
+
 		tcsr_mutex_regs: syscon@1f40000 {
 			compatible = "syscon";
 			reg = <0x01f40000 0x20000>;
-- 
2.30.1


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 121F93D987C
	for <lists+devicetree@lfdr.de>; Thu, 29 Jul 2021 00:26:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232831AbhG1W0S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Jul 2021 18:26:18 -0400
Received: from relay02.th.seeweb.it ([5.144.164.163]:42179 "EHLO
        relay02.th.seeweb.it" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232487AbhG1W0H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Jul 2021 18:26:07 -0400
Received: from localhost.localdomain (83.6.168.174.neoplus.adsl.tpnet.pl [83.6.168.174])
        by m-r1.th.seeweb.it (Postfix) with ESMTPA id A60521FFEA;
        Thu, 29 Jul 2021 00:26:01 +0200 (CEST)
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
Subject: [PATCH 11/39] arm64: dts: qcom: sdm630: Add GPU Clock Controller node
Date:   Thu, 29 Jul 2021 00:25:14 +0200
Message-Id: <20210728222542.54269-12-konrad.dybcio@somainline.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210728222542.54269-1-konrad.dybcio@somainline.org>
References: <20210728222542.54269-1-konrad.dybcio@somainline.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>

Add the GPU Clock Controller in SDM630 and keep it disabled by
default.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
---
 arch/arm64/boot/dts/qcom/sdm630.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
index 71ec193c2d0a..fd8f3678cf5d 100644
--- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
@@ -4,6 +4,7 @@
  */
 
 #include <dt-bindings/clock/qcom,gcc-sdm660.h>
+#include <dt-bindings/clock/qcom,gpucc-sdm660.h>
 #include <dt-bindings/clock/qcom,mmcc-sdm660.h>
 #include <dt-bindings/clock/qcom,rpmcc.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
@@ -922,6 +923,22 @@ kgsl_smmu: iommu@5040000 {
 			status = "disabled";
 		};
 
+		gpucc: clock-controller@5065000 {
+			compatible = "qcom,gpucc-sdm630";
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+			reg = <0x05065000 0x9038>;
+
+			clocks = <&xo_board>,
+				 <&gcc GCC_GPU_GPLL0_CLK>,
+				 <&gcc GCC_GPU_GPLL0_DIV_CLK>;
+			clock-names = "xo",
+				      "gcc_gpu_gpll0_clk",
+				      "gcc_gpu_gpll0_div_clk";
+			status = "disabled";
+		};
+
 		lpass_smmu: iommu@5100000 {
 			compatible = "qcom,sdm630-smmu-v2", "qcom,smmu-v2";
 			reg = <0x05100000 0x40000>;
-- 
2.32.0


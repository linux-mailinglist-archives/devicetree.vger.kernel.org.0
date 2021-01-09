Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC8902F018B
	for <lists+devicetree@lfdr.de>; Sat,  9 Jan 2021 17:31:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726215AbhAIQbS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 9 Jan 2021 11:31:18 -0500
Received: from m-r2.th.seeweb.it ([5.144.164.171]:32979 "EHLO
        m-r2.th.seeweb.it" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726780AbhAIQbQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 9 Jan 2021 11:31:16 -0500
Received: from localhost.localdomain (abaf53.neoplus.adsl.tpnet.pl [83.6.169.53])
        by m-r2.th.seeweb.it (Postfix) with ESMTPA id 6ADBF3EFCF;
        Sat,  9 Jan 2021 17:30:33 +0100 (CET)
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
Subject: [PATCH 4/5] arm64: dts: qcom: msm8998: Add capacity-dmips-mhz to CPU cores
Date:   Sat,  9 Jan 2021 17:29:58 +0100
Message-Id: <20210109163001.146867-5-konrad.dybcio@somainline.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210109163001.146867-1-konrad.dybcio@somainline.org>
References: <20210109163001.146867-1-konrad.dybcio@somainline.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add capacity-dmips-mhz to ensure the scheduler can efficiently
make use of the big.LITTLE core configuration.

Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
Tested-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
---
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index c7d6dbd24f1e..b2481043205a 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -133,6 +133,7 @@ CPU0: cpu@0 {
 			compatible = "qcom,kryo280";
 			reg = <0x0 0x0>;
 			enable-method = "psci";
+			capacity-dmips-mhz = <1024>;
 			cpu-idle-states = <&LITTLE_CPU_SLEEP_0 &LITTLE_CPU_SLEEP_1>;
 			next-level-cache = <&L2_0>;
 			L2_0: l2-cache {
@@ -152,6 +153,7 @@ CPU1: cpu@1 {
 			compatible = "qcom,kryo280";
 			reg = <0x0 0x1>;
 			enable-method = "psci";
+			capacity-dmips-mhz = <1024>;
 			cpu-idle-states = <&LITTLE_CPU_SLEEP_0 &LITTLE_CPU_SLEEP_1>;
 			next-level-cache = <&L2_0>;
 			L1_I_1: l1-icache {
@@ -167,6 +169,7 @@ CPU2: cpu@2 {
 			compatible = "qcom,kryo280";
 			reg = <0x0 0x2>;
 			enable-method = "psci";
+			capacity-dmips-mhz = <1024>;
 			cpu-idle-states = <&LITTLE_CPU_SLEEP_0 &LITTLE_CPU_SLEEP_1>;
 			next-level-cache = <&L2_0>;
 			L1_I_2: l1-icache {
@@ -182,6 +185,7 @@ CPU3: cpu@3 {
 			compatible = "qcom,kryo280";
 			reg = <0x0 0x3>;
 			enable-method = "psci";
+			capacity-dmips-mhz = <1024>;
 			cpu-idle-states = <&LITTLE_CPU_SLEEP_0 &LITTLE_CPU_SLEEP_1>;
 			next-level-cache = <&L2_0>;
 			L1_I_3: l1-icache {
@@ -197,6 +201,7 @@ CPU4: cpu@100 {
 			compatible = "qcom,kryo280";
 			reg = <0x0 0x100>;
 			enable-method = "psci";
+			capacity-dmips-mhz = <1536>;
 			cpu-idle-states = <&BIG_CPU_SLEEP_0 &BIG_CPU_SLEEP_1>;
 			next-level-cache = <&L2_1>;
 			L2_1: l2-cache {
@@ -216,6 +221,7 @@ CPU5: cpu@101 {
 			compatible = "qcom,kryo280";
 			reg = <0x0 0x101>;
 			enable-method = "psci";
+			capacity-dmips-mhz = <1536>;
 			cpu-idle-states = <&BIG_CPU_SLEEP_0 &BIG_CPU_SLEEP_1>;
 			next-level-cache = <&L2_1>;
 			L1_I_101: l1-icache {
@@ -231,6 +237,7 @@ CPU6: cpu@102 {
 			compatible = "qcom,kryo280";
 			reg = <0x0 0x102>;
 			enable-method = "psci";
+			capacity-dmips-mhz = <1536>;
 			cpu-idle-states = <&BIG_CPU_SLEEP_0 &BIG_CPU_SLEEP_1>;
 			next-level-cache = <&L2_1>;
 			L1_I_102: l1-icache {
@@ -246,6 +253,7 @@ CPU7: cpu@103 {
 			compatible = "qcom,kryo280";
 			reg = <0x0 0x103>;
 			enable-method = "psci";
+			capacity-dmips-mhz = <1536>;
 			cpu-idle-states = <&BIG_CPU_SLEEP_0 &BIG_CPU_SLEEP_1>;
 			next-level-cache = <&L2_1>;
 			L1_I_103: l1-icache {
-- 
2.29.2


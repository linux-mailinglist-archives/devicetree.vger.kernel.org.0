Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 09DEC3D98D2
	for <lists+devicetree@lfdr.de>; Thu, 29 Jul 2021 00:28:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232588AbhG1W2H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Jul 2021 18:28:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233146AbhG1W15 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Jul 2021 18:27:57 -0400
Received: from relay01.th.seeweb.it (relay01.th.seeweb.it [IPv6:2001:4b7a:2000:18::162])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0509AC0619E4
        for <devicetree@vger.kernel.org>; Wed, 28 Jul 2021 15:26:42 -0700 (PDT)
Received: from localhost.localdomain (83.6.168.174.neoplus.adsl.tpnet.pl [83.6.168.174])
        by m-r1.th.seeweb.it (Postfix) with ESMTPA id EAB911FAEC;
        Thu, 29 Jul 2021 00:26:35 +0200 (CEST)
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
Subject: [PATCH 39/39] arm64: dts: qcom: sdm630: Add DMA to I2C hosts
Date:   Thu, 29 Jul 2021 00:25:42 +0200
Message-Id: <20210728222542.54269-40-konrad.dybcio@somainline.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210728222542.54269-1-konrad.dybcio@somainline.org>
References: <20210728222542.54269-1-konrad.dybcio@somainline.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add DMA properties to I2C hosts to allow for DMA transfers.

Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
---
 arch/arm64/boot/dts/qcom/sdm630.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
index 004df7a6eb6c..312f16efd91d 100644
--- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
@@ -1802,6 +1802,8 @@ blsp_i2c1: i2c@c175000 {
 					<&gcc GCC_BLSP1_AHB_CLK>;
 			clock-names = "core", "iface";
 			clock-frequency = <400000>;
+			dmas = <&blsp1_dma 4>, <&blsp1_dma 5>;
+			dma-names = "tx", "rx";
 
 			pinctrl-names = "default", "sleep";
 			pinctrl-0 = <&i2c1_default>;
@@ -1820,6 +1822,8 @@ blsp_i2c2: i2c@c176000 {
 				 <&gcc GCC_BLSP1_AHB_CLK>;
 			clock-names = "core", "iface";
 			clock-frequency = <400000>;
+			dmas = <&blsp1_dma 6>, <&blsp1_dma 7>;
+			dma-names = "tx", "rx";
 
 			pinctrl-names = "default", "sleep";
 			pinctrl-0 = <&i2c2_default>;
@@ -1838,6 +1842,8 @@ blsp_i2c3: i2c@c177000 {
 				 <&gcc GCC_BLSP1_AHB_CLK>;
 			clock-names = "core", "iface";
 			clock-frequency = <400000>;
+			dmas = <&blsp1_dma 8>, <&blsp1_dma 9>;
+			dma-names = "tx", "rx";
 
 			pinctrl-names = "default", "sleep";
 			pinctrl-0 = <&i2c3_default>;
@@ -1856,6 +1862,8 @@ blsp_i2c4: i2c@c178000 {
 				 <&gcc GCC_BLSP1_AHB_CLK>;
 			clock-names = "core", "iface";
 			clock-frequency = <400000>;
+			dmas = <&blsp1_dma 10>, <&blsp1_dma 11>;
+			dma-names = "tx", "rx";
 
 			pinctrl-names = "default", "sleep";
 			pinctrl-0 = <&i2c4_default>;
@@ -1902,6 +1910,8 @@ blsp_i2c5: i2c@c1b5000 {
 				 <&gcc GCC_BLSP2_AHB_CLK>;
 			clock-names = "core", "iface";
 			clock-frequency = <400000>;
+			dmas = <&blsp2_dma 4>, <&blsp2_dma 5>;
+			dma-names = "tx", "rx";
 
 			pinctrl-names = "default", "sleep";
 			pinctrl-0 = <&i2c5_default>;
@@ -1920,6 +1930,8 @@ blsp_i2c6: i2c@c1b6000 {
 				 <&gcc GCC_BLSP2_AHB_CLK>;
 			clock-names = "core", "iface";
 			clock-frequency = <400000>;
+			dmas = <&blsp2_dma 6>, <&blsp2_dma 7>;
+			dma-names = "tx", "rx";
 
 			pinctrl-names = "default", "sleep";
 			pinctrl-0 = <&i2c6_default>;
@@ -1938,6 +1950,8 @@ blsp_i2c7: i2c@c1b7000 {
 				 <&gcc GCC_BLSP2_AHB_CLK>;
 			clock-names = "core", "iface";
 			clock-frequency = <400000>;
+			dmas = <&blsp2_dma 8>, <&blsp2_dma 9>;
+			dma-names = "tx", "rx";
 
 			pinctrl-names = "default", "sleep";
 			pinctrl-0 = <&i2c7_default>;
@@ -1956,6 +1970,8 @@ blsp_i2c8: i2c@c1b8000 {
 				 <&gcc GCC_BLSP2_AHB_CLK>;
 			clock-names = "core", "iface";
 			clock-frequency = <400000>;
+			dmas = <&blsp2_dma 10>, <&blsp2_dma 11>;
+			dma-names = "tx", "rx";
 
 			pinctrl-names = "default", "sleep";
 			pinctrl-0 = <&i2c8_default>;
-- 
2.32.0


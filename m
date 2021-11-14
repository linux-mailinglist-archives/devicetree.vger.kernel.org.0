Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3F35B44F616
	for <lists+devicetree@lfdr.de>; Sun, 14 Nov 2021 02:29:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236349AbhKNBb0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 Nov 2021 20:31:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236200AbhKNBbP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 13 Nov 2021 20:31:15 -0500
Received: from relay06.th.seeweb.it (relay06.th.seeweb.it [IPv6:2001:4b7a:2000:18::167])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81AADC061207
        for <devicetree@vger.kernel.org>; Sat, 13 Nov 2021 17:28:22 -0800 (PST)
Received: from localhost.localdomain (83.6.165.118.neoplus.adsl.tpnet.pl [83.6.165.118])
        by m-r2.th.seeweb.it (Postfix) with ESMTPA id 5F0983EE65;
        Sun, 14 Nov 2021 02:28:20 +0100 (CET)
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
Subject: [PATCH 15/16] arm64: dts: qcom: sm8350-sagami: Configure remote processors
Date:   Sun, 14 Nov 2021 02:27:54 +0100
Message-Id: <20211114012755.112226-15-konrad.dybcio@somainline.org>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211114012755.112226-1-konrad.dybcio@somainline.org>
References: <20211114012755.112226-1-konrad.dybcio@somainline.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Configure ADSP, CDSP, MPSS, SLPI and IPA on SoMC Sagami.

Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
---
 .../dts/qcom/sm8350-sony-xperia-sagami.dtsi   | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi b/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi
index c44376aa0742..90b13cbe2fa6 100644
--- a/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi
@@ -75,6 +75,16 @@ ramoops@ffc00000 {
 	};
 };
 
+&adsp {
+	status = "okay";
+	firmware-name = "qcom/adsp.mbn";
+};
+
+&cdsp {
+	status = "okay";
+	firmware-name = "qcom/cdsp.mbn";
+};
+
 &i2c1 {
 	status = "okay";
 	clock-frequency = <1000000>;
@@ -162,6 +172,17 @@ &i2c17 {
 	/* Cirrus Logic CS40L25A boosted haptics driver @ 40 */
 };
 
+&ipa {
+	status = "okay";
+	memory-region = <&pil_ipa_fw_mem>;
+	firmware-name = "qcom/ipa_fws.mbn";
+};
+
+&mpss {
+	status = "okay";
+	firmware-name = "qcom/modem.mbn";
+};
+
 &pmk8350_rtc {
 	status = "okay";
 };
@@ -187,6 +208,11 @@ &qupv3_id_2 {
 	status = "okay";
 };
 
+&slpi {
+	status = "okay";
+	firmware-name = "qcom/slpi.mbn";
+};
+
 &spi14 {
 	status = "okay";
 
-- 
2.33.1


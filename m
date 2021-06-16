Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 31AB73A8DF6
	for <lists+devicetree@lfdr.de>; Wed, 16 Jun 2021 02:59:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231853AbhFPBBE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Jun 2021 21:01:04 -0400
Received: from relay08.th.seeweb.it ([5.144.164.169]:39889 "EHLO
        relay08.th.seeweb.it" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231838AbhFPBBA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Jun 2021 21:01:00 -0400
Received: from localhost.localdomain (83.6.168.161.neoplus.adsl.tpnet.pl [83.6.168.161])
        by m-r2.th.seeweb.it (Postfix) with ESMTPA id 0D7C73F1F9;
        Wed, 16 Jun 2021 02:58:50 +0200 (CEST)
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
Subject: [PATCH 4/6] arm64: dts: qcom: sm8250-edo: Enable ADSP/CDSP/SLPI
Date:   Wed, 16 Jun 2021 02:58:41 +0200
Message-Id: <20210616005843.79579-4-konrad.dybcio@somainline.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210616005843.79579-1-konrad.dybcio@somainline.org>
References: <20210616005843.79579-1-konrad.dybcio@somainline.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enabling the hardware thankfully comes down to a simple status = "okay".
We assume that the firmware is provided by the Linux distribution, as it's
signed and needs to come from the stock Android.

Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
---
 arch/arm64/boot/dts/qcom/sm8250-sony-xperia-edo.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250-sony-xperia-edo.dtsi b/arch/arm64/boot/dts/qcom/sm8250-sony-xperia-edo.dtsi
index 0d7e3dbb12b1..82ae246694ad 100644
--- a/arch/arm64/boot/dts/qcom/sm8250-sony-xperia-edo.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250-sony-xperia-edo.dtsi
@@ -118,6 +118,10 @@ ramoops@ffc00000 {
 	};
 };
 
+&adsp {
+	status = "okay";
+};
+
 &apps_rsc {
 	pm8150-rpmh-regulators {
 		compatible = "qcom,pm8150-rpmh-regulators";
@@ -410,6 +414,10 @@ vreg_l7f_1p8: ldo7 {
 	};
 };
 
+&cdsp {
+	status = "okay";
+};
+
 &i2c1 {
 	status = "okay";
 	clock-frequency = <400000>;
@@ -516,6 +524,10 @@ &sdhc_2 {
 	no-emmc;
 };
 
+&slpi {
+	status = "okay";
+};
+
 &tlmm {
 	gpio-reserved-ranges = <40 4>, <52 4>;
 
-- 
2.32.0


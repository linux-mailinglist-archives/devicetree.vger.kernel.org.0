Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 701052FA622
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 17:28:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2406771AbhARQ1i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jan 2021 11:27:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2406730AbhARQ0q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jan 2021 11:26:46 -0500
Received: from relay02.th.seeweb.it (relay02.th.seeweb.it [IPv6:2001:4b7a:2000:18::163])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CFA99C061786;
        Mon, 18 Jan 2021 08:25:12 -0800 (PST)
Received: from localhost.localdomain (abaf224.neoplus.adsl.tpnet.pl [83.6.169.224])
        by m-r1.th.seeweb.it (Postfix) with ESMTPA id D2ACB1FD06;
        Mon, 18 Jan 2021 17:25:10 +0100 (CET)
From:   Konrad Dybcio <konrad.dybcio@somainline.org>
To:     phone-devel@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 08/11] arm64: dts: qcom: msm8994-kitakami: Add VDD_GFX regulator
Date:   Mon, 18 Jan 2021 17:24:28 +0100
Message-Id: <20210118162432.107275-8-konrad.dybcio@somainline.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210118162432.107275-1-konrad.dybcio@somainline.org>
References: <20210118162432.107275-1-konrad.dybcio@somainline.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is required for the GPU to function.

Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
---
 .../dts/qcom/msm8994-sony-xperia-kitakami.dtsi | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8994-sony-xperia-kitakami.dtsi b/arch/arm64/boot/dts/qcom/msm8994-sony-xperia-kitakami.dtsi
index 26b54f360fc3..05155859cf6a 100644
--- a/arch/arm64/boot/dts/qcom/msm8994-sony-xperia-kitakami.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8994-sony-xperia-kitakami.dtsi
@@ -185,6 +185,24 @@ &blsp2_uart2 {
 	status = "okay";
 };
 
+&pmi8994_spmi_regulators {
+	/*
+	 * Yeah, this one *is* managed by RPMPD, but also needs
+	 * to be hacked up as a-o due to the GPU device only accepting a single
+	 * power domain.. which still isn't enough and forces us to bind
+	 * OXILI_CX and OXILI_GX together!
+	 */
+	vdd_gfx: s2@1700 {
+		reg = <0x1700 0x100>;
+		regulator-name = "VDD_GFX";
+		regulator-min-microvolt = <980000>;
+		regulator-max-microvolt = <980000>;
+
+		/* hack until we rig up the gpu consumer */
+		regulator-always-on;
+	};
+};
+
 &rpm_requests {
 	pm8994_regulators: pm8994-regulators {
 		compatible = "qcom,rpm-pm8994-regulators";
-- 
2.29.2


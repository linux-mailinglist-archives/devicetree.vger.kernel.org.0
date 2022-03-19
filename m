Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 168184DE9B9
	for <lists+devicetree@lfdr.de>; Sat, 19 Mar 2022 18:47:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243686AbiCSRsZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 19 Mar 2022 13:48:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243424AbiCSRsY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 19 Mar 2022 13:48:24 -0400
X-Greylist: delayed 8947 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 19 Mar 2022 10:47:02 PDT
Received: from relay06.th.seeweb.it (relay06.th.seeweb.it [5.144.164.167])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B5EC2467D0
        for <devicetree@vger.kernel.org>; Sat, 19 Mar 2022 10:47:02 -0700 (PDT)
Received: from localhost.localdomain (abxi119.neoplus.adsl.tpnet.pl [83.9.2.119])
        by m-r2.th.seeweb.it (Postfix) with ESMTPA id 2394E3F64C;
        Sat, 19 Mar 2022 18:46:59 +0100 (CET)
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
Subject: [PATCH 02/15] arm64: dts: qcom: msm8992-libra: Add CPU regulators
Date:   Sat, 19 Mar 2022 18:46:32 +0100
Message-Id: <20220319174645.340379-3-konrad.dybcio@somainline.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220319174645.340379-1-konrad.dybcio@somainline.org>
References: <20220319174645.340379-1-konrad.dybcio@somainline.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Specify CPU regulator voltages for both VDD_APC rails.

Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
---
 .../boot/dts/qcom/msm8992-xiaomi-libra.dts      | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8992-xiaomi-libra.dts b/arch/arm64/boot/dts/qcom/msm8992-xiaomi-libra.dts
index 84558ab5fe86..6371719aacc5 100644
--- a/arch/arm64/boot/dts/qcom/msm8992-xiaomi-libra.dts
+++ b/arch/arm64/boot/dts/qcom/msm8992-xiaomi-libra.dts
@@ -126,6 +126,23 @@ &peripheral_region {
 	no-map;
 };
 
+&pm8994_spmi_regulators {
+	VDD_APC0: s8 {
+		regulator-min-microvolt = <680000>;
+		regulator-max-microvolt = <1180000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	/* APC1 is 3-phase, but quoting downstream, s11 is "the gang leader" */
+	VDD_APC1: s11 {
+		regulator-min-microvolt = <700000>;
+		regulator-max-microvolt = <1225000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+};
+
 &rpm_requests {
 	pm8994-regulators {
 		compatible = "qcom,rpm-pm8994-regulators";
-- 
2.35.1


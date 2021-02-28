Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8A75532726C
	for <lists+devicetree@lfdr.de>; Sun, 28 Feb 2021 14:12:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230433AbhB1NKz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 28 Feb 2021 08:10:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230486AbhB1NKd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 28 Feb 2021 08:10:33 -0500
Received: from relay02.th.seeweb.it (relay02.th.seeweb.it [IPv6:2001:4b7a:2000:18::163])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3FC5C061797
        for <devicetree@vger.kernel.org>; Sun, 28 Feb 2021 05:09:05 -0800 (PST)
Received: from localhost.localdomain (abab236.neoplus.adsl.tpnet.pl [83.6.165.236])
        by m-r1.th.seeweb.it (Postfix) with ESMTPA id C044C1F578;
        Sun, 28 Feb 2021 14:09:02 +0100 (CET)
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
Subject: [PATCH 10/11] arm64: dts: qcom: pmi8994: Add WLED node
Date:   Sun, 28 Feb 2021 14:08:28 +0100
Message-Id: <20210228130831.203765-10-konrad.dybcio@somainline.org>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210228130831.203765-1-konrad.dybcio@somainline.org>
References: <20210228130831.203765-1-konrad.dybcio@somainline.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add and configure WLED node to enable backlight
control on WLED-enabled devices.

Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
---
 arch/arm64/boot/dts/qcom/pmi8994.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/pmi8994.dtsi b/arch/arm64/boot/dts/qcom/pmi8994.dtsi
index e5ed28ab9b2d..b21c01fea37a 100644
--- a/arch/arm64/boot/dts/qcom/pmi8994.dtsi
+++ b/arch/arm64/boot/dts/qcom/pmi8994.dtsi
@@ -32,5 +32,18 @@ pmi8994_spmi_regulators: regulators {
 			#address-cells = <1>;
 			#size-cells = <1>;
 		};
+
+		pmi8994_wled: wled@d800 {
+			compatible = "qcom,pmi8994-wled";
+			reg = <0xd800 0xd900>;
+			interrupts = <3 0xd8 0x02 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "short";
+			qcom,num-strings = <3>;
+			/* Yes, all four strings *have to* be defined or things won't work. */
+			qcom,enabled-strings = <0 1 2 3>;
+			qcom,cabc;
+			qcom,eternal-pfet;
+			status = "disabled";
+		};
 	};
 };
-- 
2.30.1


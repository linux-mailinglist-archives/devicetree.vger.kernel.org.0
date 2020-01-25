Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D37AB149246
	for <lists+devicetree@lfdr.de>; Sat, 25 Jan 2020 01:13:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729598AbgAYANa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Jan 2020 19:13:30 -0500
Received: from mail-pg1-f196.google.com ([209.85.215.196]:38430 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729563AbgAYANa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Jan 2020 19:13:30 -0500
Received: by mail-pg1-f196.google.com with SMTP id a33so1950253pgm.5
        for <devicetree@vger.kernel.org>; Fri, 24 Jan 2020 16:13:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZQFMTxiNgAgnz1mNYc286/lpApTLDKm8nfS5t4xRGVQ=;
        b=ZdPzzyLrulvX84FmYk6lsY9KOu6xBA6x7gnH3/2Qd1Dd618dAgooxJg2C6/RggRPH8
         YF76CL9KxybJgPwiHAz6wmbZ9LUVoqX1GxJMsQvVKq03ntc34SDSZGTUizaapPsWNBJm
         F6RHFi2vkt7awrI1Ub7ZsI/zpzgsjGBmGF/1Z1rb01Qt5AfFg4G411crVS4lDp/juuXZ
         KtmB+9AQ8Yk/L1xP51oMkfxDxO8yAhYxYhZLM5+o728dF+NL1WhlzjQiLEWqu48lJ7Oh
         p1O71HCXl8MuBihZgD4fcMM0+IEUTMUH9m7W9YKYgtlCjkvr5M3oVM9+8iWJ15qeLyED
         Txfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZQFMTxiNgAgnz1mNYc286/lpApTLDKm8nfS5t4xRGVQ=;
        b=o0EMgF2Oix5WPi0ZSHjJky3vNJpwTiBxLexoLmxBuSzvU0FJenDjWd8sSH7kaDKteY
         iUejd13E/I6kIQh650mpy0g+e0JfMxWSZ9ix8YSA6g8ocIsFhCOb9kTlla6WwDB0NxWu
         U6OzHVOLw69TuRB6z2Ceqv/nFe2IRGh8ncqzPsEvhUYqLB0dPHQkcB+YynmMeZGcttsf
         zNnOMJ0jAFNtxVceVR8K+NFbxiWAGaCLauEp5uIrxJolXR8sfoCA5f86mOaUWtkUSz4o
         2UtTX4AFuyvbUvyR0whAIZ1j+9SLPLkUl9BTeuheuEe9HZZQNwiGhmqFcDTKdODPyV7v
         z6fg==
X-Gm-Message-State: APjAAAVWGphEmDMWUO3mj/B2Yegy3+xASC857FrWSEVint1e59ZxmVOr
        b1rN6mt6450OPhAxSS8SYYdVNQ==
X-Google-Smtp-Source: APXvYqwyxBFc6HeLCoHjBbDosTlm+VwZ7yjixgLlOB3waOs9pwiyvAfqnA6s76uFYVX/JVCnglRvgA==
X-Received: by 2002:a63:941:: with SMTP id 62mr7304358pgj.203.1579911210111;
        Fri, 24 Jan 2020 16:13:30 -0800 (PST)
Received: from localhost.localdomain (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id a185sm8063323pge.15.2020.01.24.16.13.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jan 2020 16:13:29 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v3] arm64: dts: qcom: msm8996: Use generic QMP driver for UFS
Date:   Fri, 24 Jan 2020 16:12:34 -0800
Message-Id: <20200125001234.435384-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

With support for the MSM8996 UFS PHY added to the common QMP driver,
migrate the DTS to use the common QMP binding.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Depends on https://lore.kernel.org/linux-arm-msm/20200125000803.435264-1-bjorn.andersson@linaro.org/

Changes since v2:
- Rebased patch

 arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi |  6 -----
 arch/arm64/boot/dts/qcom/msm8996.dtsi        | 25 +++++++++++++-------
 2 files changed, 17 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi b/arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi
index fff6115f2670..af87350b5547 100644
--- a/arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi
+++ b/arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi
@@ -999,13 +999,7 @@ &ufsphy {
 
 	vdda-phy-supply = <&vreg_l28a_0p925>;
 	vdda-pll-supply = <&vreg_l12a_1p8>;
-
-	vdda-phy-max-microamp = <18380>;
-	vdda-pll-max-microamp = <9440>;
-
 	vddp-ref-clk-supply = <&vreg_l25a_1p2>;
-	vddp-ref-clk-max-microamp = <100>;
-	vddp-ref-clk-always-on;
 };
 
 &ufshc {
diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index 30cdbbe43d6c..a599761228a7 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -885,7 +885,7 @@ ufshc: ufshc@624000 {
 			reg = <0x00624000 0x2500>;
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
 
-			phys = <&ufsphy>;
+			phys = <&ufsphy_lane>;
 			phy-names = "ufsphy";
 
 			power-domains = <&gcc UFS_GDSC>;
@@ -937,16 +937,25 @@ ufs_variant {
 		};
 
 		ufsphy: phy@627000 {
-			compatible = "qcom,msm8996-ufs-phy-qmp-14nm";
-			reg = <0x00627000 0xda8>;
-			reg-names = "phy_mem";
-			#phy-cells = <0>;
+			compatible = "qcom,msm8996-qmp-ufs-phy";
+			reg = <0x00627000 0x1c4>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges;
+
+			clocks = <&gcc GCC_UFS_CLKREF_CLK>;
+			clock-names = "ref";
 
-			clock-names = "ref_clk_src", "ref_clk";
-			clocks = <&rpmcc RPM_SMD_LN_BB_CLK>,
-				 <&gcc GCC_UFS_CLKREF_CLK>;
 			resets = <&ufshc 0>;
+			reset-names = "ufsphy";
 			status = "disabled";
+
+			ufsphy_lane: lanes@627400 {
+				reg = <0x627400 0x12c>,
+				      <0x627600 0x200>,
+				      <0x627c00 0x1b4>;
+				#phy-cells = <0>;
+			};
 		};
 
 		camss: camss@a00000 {
-- 
2.24.0


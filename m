Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 892BB64E4D9
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 00:57:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229676AbiLOX51 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Dec 2022 18:57:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229537AbiLOX5Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Dec 2022 18:57:25 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 117815EDC1
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 15:57:24 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id E99358531D;
        Fri, 16 Dec 2022 00:57:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1671148642;
        bh=sa/6LzwyZl4TtZXLtTBpcIaZhUUI/G7uzQbGV+9rNVk=;
        h=From:To:Cc:Subject:Date:From;
        b=G/hfE3n0G/xd1rfPUvZEV6uP8piQKzuI2YH/5hgEF7g4yiFdoUrgVd80rCDY6p2nn
         Dqb/cwWhy5pg+E7rOuKR2jed6WSn5Vq/jwZiOmOwCYIfuSkLR590yUaGzn9isTLZkV
         rizZRpxt36m3neLoLbRa4c8FTbFZZcfoHLCuHg8Xn6EOk8awC4lxFNd6eJRjW8BKGN
         Iz9yVIkTpZRdpbUs4meAvxr6ndw7upuXkUPgMv5CwIhmV4mOvlmWWMgnAawQduUIRz
         26H1rdIrIluejIJrdUAOYbuXVeWYFKa+BKahHQXZnesI2xeCKlsAyDZqRclIrn6JpJ
         0fnjFYrnh6E5Q==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>,
        Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        Fabio Estevam <festevam@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        kernel@dh-electronics.com, devicetree@vger.kernel.org
Subject: [PATCH 1/2] arm64: dts: imx8mp: Drop deprecated regulator-compatible from i.MX8M Plus DHCOM
Date:   Fri, 16 Dec 2022 00:57:09 +0100
Message-Id: <20221215235710.228500-1-marex@denx.de>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The "regulator-compatible" property is deprecated and unused, as the
match happens on the node name in Linux of_regulator_match() in case
the property is not present. Drop the deprecated property from DT.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Christoph Niedermaier <cniedermaier@dh-electronics.com>
Cc: Fabio Estevam <festevam@denx.de>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: kernel@dh-electronics.com
Cc: devicetree@vger.kernel.org
To: linux-arm-kernel@lists.infradead.org
---
 arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
index 6e1192e751f81..21b1d75a9a1cf 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
@@ -248,7 +248,6 @@ pmic: pmic@25 {
 		 */
 		regulators {
 			buck1: BUCK1 {	/* VDD_SOC (dual-phase with BUCK3) */
-				regulator-compatible = "BUCK1";
 				regulator-min-microvolt = <850000>;
 				regulator-max-microvolt = <1000000>;
 				regulator-ramp-delay = <3125>;
@@ -257,7 +256,6 @@ buck1: BUCK1 {	/* VDD_SOC (dual-phase with BUCK3) */
 			};
 
 			buck2: BUCK2 {	/* VDD_ARM */
-				regulator-compatible = "BUCK2";
 				regulator-min-microvolt = <850000>;
 				regulator-max-microvolt = <1000000>;
 				regulator-ramp-delay = <3125>;
@@ -266,7 +264,6 @@ buck2: BUCK2 {	/* VDD_ARM */
 			};
 
 			buck4: BUCK4 {	/* VDD_3V3 */
-				regulator-compatible = "BUCK4";
 				regulator-min-microvolt = <3300000>;
 				regulator-max-microvolt = <3300000>;
 				regulator-always-on;
@@ -274,7 +271,6 @@ buck4: BUCK4 {	/* VDD_3V3 */
 			};
 
 			buck5: BUCK5 {	/* VDD_1V8 */
-				regulator-compatible = "BUCK5";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
 				regulator-always-on;
@@ -282,7 +278,6 @@ buck5: BUCK5 {	/* VDD_1V8 */
 			};
 
 			buck6: BUCK6 {	/* NVCC_DRAM_1V1 */
-				regulator-compatible = "BUCK6";
 				regulator-min-microvolt = <1100000>;
 				regulator-max-microvolt = <1100000>;
 				regulator-always-on;
@@ -290,7 +285,6 @@ buck6: BUCK6 {	/* NVCC_DRAM_1V1 */
 			};
 
 			ldo1: LDO1 {	/* NVCC_SNVS_1V8 */
-				regulator-compatible = "LDO1";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
 				regulator-always-on;
@@ -298,7 +292,6 @@ ldo1: LDO1 {	/* NVCC_SNVS_1V8 */
 			};
 
 			ldo3: LDO3 {	/* VDDA_1V8 */
-				regulator-compatible = "LDO3";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
 				regulator-always-on;
@@ -306,13 +299,11 @@ ldo3: LDO3 {	/* VDDA_1V8 */
 			};
 
 			ldo4: LDO4 {	/* PMIC_LDO4 */
-				regulator-compatible = "LDO4";
 				regulator-min-microvolt = <3300000>;
 				regulator-max-microvolt = <3300000>;
 			};
 
 			ldo5: LDO5 {	/* NVCC_SD2 */
-				regulator-compatible = "LDO5";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <3300000>;
 			};
-- 
2.35.1


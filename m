Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3166964E4D8
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 00:57:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229815AbiLOX50 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Dec 2022 18:57:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229676AbiLOX5Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Dec 2022 18:57:25 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 334A45EDD1
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 15:57:24 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 6F2528532A;
        Fri, 16 Dec 2022 00:57:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1671148642;
        bh=jd7sk+lN9wjuPPN0eHyInQMEBd8nH0VbYg7dzahQKk0=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=JZ3cZwAV1yp/f3r7zhmnAW2Urs98GsF8ABgy3+xOXIqjeEdzBiKPJCHWRwS+peVtB
         +IKXjP8UYWxepttloF9OGUtLhI/TUoP3kqDthyyXo397Pdr9E4ECBjSWUmGxf0Msqf
         NSpN0MyuQAjmDlqd6zGuJRlDJwJo66uvAqQIW5xWcZR4HXg8f3nwsqRMcYLI+CHD2Y
         8yA9cIHjDz8x9fhLJftGs+B8gVQfeUjXhk7/tUFhXobs7EYAJlgdlE3I1J+jsp8Xhh
         Q9c4rTxmIPa46lSAawutgylNzvqsPk0L/P8JmucttyB884AkOPmnFlcYhn4Pivco/l
         B1QE1Quz9kXUQ==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@denx.de>,
        Jonas Kuenstler <j.kuenstler@phytec.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Teresa Remmet <t.remmet@phytec.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: imx8mp: Drop deprecated regulator-compatible from i.MX8M Plus PhyCore SoM
Date:   Fri, 16 Dec 2022 00:57:10 +0100
Message-Id: <20221215235710.228500-2-marex@denx.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221215235710.228500-1-marex@denx.de>
References: <20221215235710.228500-1-marex@denx.de>
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
Cc: Fabio Estevam <festevam@denx.de>
Cc: Jonas Kuenstler <j.kuenstler@phytec.de>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Teresa Remmet <t.remmet@phytec.de>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: devicetree@vger.kernel.org
To: linux-arm-kernel@lists.infradead.org
---
 arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi
index 79b290a002c19..ecc4bce6db97c 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi
@@ -99,7 +99,6 @@ pmic: pmic@25 {
 
 		regulators {
 			buck1: BUCK1 {
-				regulator-compatible = "BUCK1";
 				regulator-min-microvolt = <600000>;
 				regulator-max-microvolt = <2187500>;
 				regulator-boot-on;
@@ -108,7 +107,6 @@ buck1: BUCK1 {
 			};
 
 			buck2: BUCK2 {
-				regulator-compatible = "BUCK2";
 				regulator-min-microvolt = <600000>;
 				regulator-max-microvolt = <2187500>;
 				regulator-boot-on;
@@ -119,7 +117,6 @@ buck2: BUCK2 {
 			};
 
 			buck4: BUCK4 {
-				regulator-compatible = "BUCK4";
 				regulator-min-microvolt = <600000>;
 				regulator-max-microvolt = <3400000>;
 				regulator-boot-on;
@@ -127,7 +124,6 @@ buck4: BUCK4 {
 			};
 
 			buck5: BUCK5 {
-				regulator-compatible = "BUCK5";
 				regulator-min-microvolt = <600000>;
 				regulator-max-microvolt = <3400000>;
 				regulator-boot-on;
@@ -135,7 +131,6 @@ buck5: BUCK5 {
 			};
 
 			buck6: BUCK6 {
-				regulator-compatible = "BUCK6";
 				regulator-min-microvolt = <600000>;
 				regulator-max-microvolt = <3400000>;
 				regulator-boot-on;
@@ -143,7 +138,6 @@ buck6: BUCK6 {
 			};
 
 			ldo1: LDO1 {
-				regulator-compatible = "LDO1";
 				regulator-min-microvolt = <1600000>;
 				regulator-max-microvolt = <3300000>;
 				regulator-boot-on;
@@ -151,7 +145,6 @@ ldo1: LDO1 {
 			};
 
 			ldo2: LDO2 {
-				regulator-compatible = "LDO2";
 				regulator-min-microvolt = <800000>;
 				regulator-max-microvolt = <1150000>;
 				regulator-boot-on;
@@ -159,7 +152,6 @@ ldo2: LDO2 {
 			};
 
 			ldo3: LDO3 {
-				regulator-compatible = "LDO3";
 				regulator-min-microvolt = <800000>;
 				regulator-max-microvolt = <3300000>;
 				regulator-boot-on;
@@ -167,13 +159,11 @@ ldo3: LDO3 {
 			};
 
 			ldo4: LDO4 {
-				regulator-compatible = "LDO4";
 				regulator-min-microvolt = <800000>;
 				regulator-max-microvolt = <3300000>;
 			};
 
 			ldo5: LDO5 {
-				regulator-compatible = "LDO5";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <3300000>;
 				regulator-boot-on;
-- 
2.35.1


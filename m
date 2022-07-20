Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F71F57B12E
	for <lists+devicetree@lfdr.de>; Wed, 20 Jul 2022 08:42:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229614AbiGTGmN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jul 2022 02:42:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229607AbiGTGmL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jul 2022 02:42:11 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC78942ACE
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 23:42:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1658299330; x=1689835330;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=fso64yZ/tT0AchTED0gV+fhTHSh8SoR+8DKN8uHLwm0=;
  b=jothzLU4MKROnCYGDLZvhvCeeOmDpp0dAaXCfOmS2WPaGXKboJlLucnd
   bIvk3wmJnw5DahzvCdnPrWn09rQE3F96ashnHRW6GuTIckqjflA5wip7W
   ImqHS3gGoTfY7najVvhYVUnomycsvliep4CxyGVcVvfKngbPCvIOgGv+4
   NnqMWoxcA08ohnCQAraBMMwGKvzMEJTClERFMjy63GJEBEuTjS7PE7rP9
   2yWshmacMl6gS1ohyU3NK/5q5x7rf3CKFTXvM2q8snBBizYNG9hrxzGx+
   YaHBsUN3XXLCcjMjZqHQc8GCPclmNMbgrQIzHoLvuQ08kyAcyPnDX8HiN
   A==;
X-IronPort-AV: E=Sophos;i="5.92,286,1650924000"; 
   d="scan'208";a="25147578"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 20 Jul 2022 08:42:09 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 20 Jul 2022 08:42:09 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 20 Jul 2022 08:42:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1658299329; x=1689835329;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=fso64yZ/tT0AchTED0gV+fhTHSh8SoR+8DKN8uHLwm0=;
  b=cDK+6i2SACAOEqBLbLG3RZgGHr3/z9X8Ug8eDUS4BCaHLcQEeIEWCXDG
   uXJIdsJKsNvhzzxeXVAC9Ayf+TPx0B7zQUycf2yq2zmap+9F/P2EG7ae3
   G/Y1s28h+ym1vaIdTOzV7EaOeoxd0ypCDO+TReZWerOyS3O4RZ1Wc5Gci
   ec4dg7ZXsvTDVnYZdO6tF3LNIJKGlM7q/PXrKvXiUPuXZHnk/wuHv4a0i
   f0zN+qmd1LgWBxPa57VrxkOBR6bAExZU+BMmrvFPkLjJlS5i6Qo984zd4
   mGl4stxJrEWag7LKmBmEj6XLmMe92K2d0XRgmk5CiSrYxztD21t79I2B9
   A==;
X-IronPort-AV: E=Sophos;i="5.92,286,1650924000"; 
   d="scan'208";a="25147577"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 20 Jul 2022 08:42:09 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id D7D5A280056;
        Wed, 20 Jul 2022 08:42:08 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] ARM: dts: imx6: delete interrupts property if interrupts-extended is set
Date:   Wed, 20 Jul 2022 08:41:58 +0200
Message-Id: <20220720064158.1413330-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In most cases this is related to fsl,err006687-workaround-present, which
requires a GPIO interrupt next a GIC interrupt.

This fixes the dtbs_check warning:
imx6dl-mba6a.dtb: ethernet@2188000: More than one condition true in oneOf schema:
        {'$filename': 'Documentation/devicetree/bindings/net/fsl,fec.yaml',
[...]

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
Given that all DT add interrupts-extended on the very next line, this
seems the correct thing to do.

 arch/arm/boot/dts/imx6dl-riotboard.dts        | 1 +
 arch/arm/boot/dts/imx6q-arm2.dts              | 1 +
 arch/arm/boot/dts/imx6q-evi.dts               | 1 +
 arch/arm/boot/dts/imx6q-mccmon6.dts           | 1 +
 arch/arm/boot/dts/imx6qdl-nit6xlite.dtsi      | 1 +
 arch/arm/boot/dts/imx6qdl-nitrogen6_max.dtsi  | 1 +
 arch/arm/boot/dts/imx6qdl-nitrogen6_som2.dtsi | 1 +
 arch/arm/boot/dts/imx6qdl-nitrogen6x.dtsi     | 1 +
 arch/arm/boot/dts/imx6qdl-sabreauto.dtsi      | 1 +
 arch/arm/boot/dts/imx6qdl-tqma6a.dtsi         | 1 +
 arch/arm/boot/dts/imx6qdl-ts7970.dtsi         | 1 +
 11 files changed, 11 insertions(+)

diff --git a/arch/arm/boot/dts/imx6dl-riotboard.dts b/arch/arm/boot/dts/imx6dl-riotboard.dts
index e7d9bfbfd0e4..e7be05f205d3 100644
--- a/arch/arm/boot/dts/imx6dl-riotboard.dts
+++ b/arch/arm/boot/dts/imx6dl-riotboard.dts
@@ -90,6 +90,7 @@ &fec {
 	pinctrl-0 = <&pinctrl_enet>;
 	phy-mode = "rgmii-id";
 	phy-handle = <&rgmii_phy>;
+	/delete-property/ interrupts;
 	interrupts-extended = <&gpio1 6 IRQ_TYPE_LEVEL_HIGH>,
 			      <&intc 0 119 IRQ_TYPE_LEVEL_HIGH>;
 	fsl,err006687-workaround-present;
diff --git a/arch/arm/boot/dts/imx6q-arm2.dts b/arch/arm/boot/dts/imx6q-arm2.dts
index 0b40f52268b3..75586299d9ca 100644
--- a/arch/arm/boot/dts/imx6q-arm2.dts
+++ b/arch/arm/boot/dts/imx6q-arm2.dts
@@ -178,6 +178,7 @@ &fec {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_enet>;
 	phy-mode = "rgmii";
+	/delete-property/ interrupts;
 	interrupts-extended = <&gpio1 6 IRQ_TYPE_LEVEL_HIGH>,
 			      <&intc 0 119 IRQ_TYPE_LEVEL_HIGH>;
 	fsl,err006687-workaround-present;
diff --git a/arch/arm/boot/dts/imx6q-evi.dts b/arch/arm/boot/dts/imx6q-evi.dts
index c63f371ede8b..78d941fef5df 100644
--- a/arch/arm/boot/dts/imx6q-evi.dts
+++ b/arch/arm/boot/dts/imx6q-evi.dts
@@ -146,6 +146,7 @@ &fec {
 	pinctrl-0 = <&pinctrl_enet>;
 	phy-mode = "rgmii";
 	phy-reset-gpios = <&gpio1 25 GPIO_ACTIVE_LOW>;
+	/delete-property/ interrupts;
 	interrupts-extended = <&gpio1 6 IRQ_TYPE_LEVEL_HIGH>,
 			      <&intc 0 119 IRQ_TYPE_LEVEL_HIGH>;
 	fsl,err006687-workaround-present;
diff --git a/arch/arm/boot/dts/imx6q-mccmon6.dts b/arch/arm/boot/dts/imx6q-mccmon6.dts
index 55692c73943d..64ab01018b71 100644
--- a/arch/arm/boot/dts/imx6q-mccmon6.dts
+++ b/arch/arm/boot/dts/imx6q-mccmon6.dts
@@ -100,6 +100,7 @@ &fec {
 	pinctrl-0 = <&pinctrl_enet>;
 	phy-mode = "rgmii";
 	phy-reset-gpios = <&gpio1 27 GPIO_ACTIVE_LOW>;
+	/delete-property/ interrupts;
 	interrupts-extended = <&gpio1 6 IRQ_TYPE_LEVEL_HIGH>,
 			      <&intc 0 119 IRQ_TYPE_LEVEL_HIGH>;
 	status = "okay";
diff --git a/arch/arm/boot/dts/imx6qdl-nit6xlite.dtsi b/arch/arm/boot/dts/imx6qdl-nit6xlite.dtsi
index 0ad4cb4f1e82..a53a5d0766a5 100644
--- a/arch/arm/boot/dts/imx6qdl-nit6xlite.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-nit6xlite.dtsi
@@ -192,6 +192,7 @@ &fec {
 	phy-mode = "rgmii";
 	phy-handle = <&ethphy>;
 	phy-reset-gpios = <&gpio1 27 GPIO_ACTIVE_LOW>;
+	/delete-property/ interrupts;
 	interrupts-extended = <&gpio1 6 IRQ_TYPE_LEVEL_HIGH>,
 			      <&intc 0 119 IRQ_TYPE_LEVEL_HIGH>;
 	fsl,err006687-workaround-present;
diff --git a/arch/arm/boot/dts/imx6qdl-nitrogen6_max.dtsi b/arch/arm/boot/dts/imx6qdl-nitrogen6_max.dtsi
index beaa2dcd436c..57c21a01f126 100644
--- a/arch/arm/boot/dts/imx6qdl-nitrogen6_max.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-nitrogen6_max.dtsi
@@ -334,6 +334,7 @@ &fec {
 	phy-mode = "rgmii";
 	phy-handle = <&ethphy>;
 	phy-reset-gpios = <&gpio1 27 GPIO_ACTIVE_LOW>;
+	/delete-property/ interrupts;
 	interrupts-extended = <&gpio1 6 IRQ_TYPE_LEVEL_HIGH>,
 			      <&intc 0 119 IRQ_TYPE_LEVEL_HIGH>;
 	fsl,err006687-workaround-present;
diff --git a/arch/arm/boot/dts/imx6qdl-nitrogen6_som2.dtsi b/arch/arm/boot/dts/imx6qdl-nitrogen6_som2.dtsi
index ee7e2371f94b..000e9dc97b1a 100644
--- a/arch/arm/boot/dts/imx6qdl-nitrogen6_som2.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-nitrogen6_som2.dtsi
@@ -263,6 +263,7 @@ &fec {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_enet>;
 	phy-mode = "rgmii";
+	/delete-property/ interrupts;
 	interrupts-extended = <&gpio1 6 IRQ_TYPE_LEVEL_HIGH>,
 			      <&intc 0 119 IRQ_TYPE_LEVEL_HIGH>;
 	fsl,err006687-workaround-present;
diff --git a/arch/arm/boot/dts/imx6qdl-nitrogen6x.dtsi b/arch/arm/boot/dts/imx6qdl-nitrogen6x.dtsi
index 904d5d051d63..731759bdd7f5 100644
--- a/arch/arm/boot/dts/imx6qdl-nitrogen6x.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-nitrogen6x.dtsi
@@ -267,6 +267,7 @@ &fec {
 	phy-mode = "rgmii";
 	phy-handle = <&ethphy>;
 	phy-reset-gpios = <&gpio1 27 GPIO_ACTIVE_LOW>;
+	/delete-property/ interrupts;
 	interrupts-extended = <&gpio1 6 IRQ_TYPE_LEVEL_HIGH>,
 			      <&intc 0 119 IRQ_TYPE_LEVEL_HIGH>;
 	fsl,err006687-workaround-present;
diff --git a/arch/arm/boot/dts/imx6qdl-sabreauto.dtsi b/arch/arm/boot/dts/imx6qdl-sabreauto.dtsi
index 1368a4762037..3dbb460ef102 100644
--- a/arch/arm/boot/dts/imx6qdl-sabreauto.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-sabreauto.dtsi
@@ -295,6 +295,7 @@ &fec {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_enet>;
 	phy-mode = "rgmii-id";
+	/delete-property/ interrupts;
 	interrupts-extended = <&gpio1 6 IRQ_TYPE_LEVEL_HIGH>,
 			      <&intc 0 119 IRQ_TYPE_LEVEL_HIGH>;
 	fsl,err006687-workaround-present;
diff --git a/arch/arm/boot/dts/imx6qdl-tqma6a.dtsi b/arch/arm/boot/dts/imx6qdl-tqma6a.dtsi
index 7dc3f0005b0f..0a36e1bce375 100644
--- a/arch/arm/boot/dts/imx6qdl-tqma6a.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-tqma6a.dtsi
@@ -7,6 +7,7 @@
 #include <dt-bindings/gpio/gpio.h>
 
 &fec {
+	/delete-property/ interrupts;
 	interrupts-extended = <&gpio1 6 IRQ_TYPE_LEVEL_HIGH>,
 			      <&intc 0 119 IRQ_TYPE_LEVEL_HIGH>;
 	fsl,err006687-workaround-present;
diff --git a/arch/arm/boot/dts/imx6qdl-ts7970.dtsi b/arch/arm/boot/dts/imx6qdl-ts7970.dtsi
index d6ba4b2a60f6..c096d25a6f5b 100644
--- a/arch/arm/boot/dts/imx6qdl-ts7970.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-ts7970.dtsi
@@ -192,6 +192,7 @@ &fec {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_enet>;
 	phy-mode = "rgmii";
+	/delete-property/ interrupts;
 	interrupts-extended = <&gpio1 6 IRQ_TYPE_LEVEL_HIGH>,
 			      <&intc 0 119 IRQ_TYPE_LEVEL_HIGH>;
 	fsl,err006687-workaround-present;
-- 
2.25.1


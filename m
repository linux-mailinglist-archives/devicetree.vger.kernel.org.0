Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA228784056
	for <lists+devicetree@lfdr.de>; Tue, 22 Aug 2023 14:08:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235543AbjHVMIP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Aug 2023 08:08:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235110AbjHVMIO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Aug 2023 08:08:14 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F5FC185
        for <devicetree@vger.kernel.org>; Tue, 22 Aug 2023 05:08:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1692706092; x=1724242092;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=s7WeywFXWdE+FhnI+O3G/g0/p2PvbzCwYKweQiQxrFE=;
  b=qHLaNl4HJnwv22+O/KimTMr+EgInOp0G/laV7DAb9b3SRs9ELVF6twEu
   aa0iCnlUxffKWyLO54Sp0Md76CagRFrcZkstJXl+IlxK2/9Rktq+wZxzU
   ebN4ah66EPDtEvPD7u2Q1K+7OMoks2xOrRo6+MymezdSqrPgsRHn9IbK7
   gxjKb4a699Wa0J4EvpxGB1R6TFG8uEOoOw/dgo77ZpF3sEgvln3sz2ux8
   WmmwYrt8zZzPmdJJVgwA4v55575GObKSsBdSE2rixQ0oYu81N+PHLWG4G
   1LAWpTy0dBON9b4NIrhIfqeQRjAqjw9c1hO0e/ghE0Xf7jlTvJIc8istD
   w==;
X-IronPort-AV: E=Sophos;i="6.01,193,1684792800"; 
   d="scan'208";a="32562948"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 22 Aug 2023 14:08:09 +0200
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 53363280086;
        Tue, 22 Aug 2023 14:08:09 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux@ew.tq-group.com,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/5] arm64: dts: imx8mm-tqma8mqml-mba8mx: Add LVDS overlay
Date:   Tue, 22 Aug 2023 14:08:01 +0200
Message-Id: <20230822120804.717592-3-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230822120804.717592-1-alexander.stein@ew.tq-group.com>
References: <20230822120804.717592-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This overlay enables the DSI-LVDS display chain and configures the
actual panel compatible. Also add the DSIM supply voltages.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/Makefile        |  4 ++
 ...8mm-tqma8mqml-mba8mx-lvds-tm070jvhg33.dtso | 45 +++++++++++++++++++
 .../boot/dts/freescale/imx8mm-tqma8mqml.dtsi  |  5 +++
 3 files changed, 54 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx-lvds-tm070jvhg33.dtso

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index a3e037e5bd8ae..ad86cc60da7ca 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -82,6 +82,10 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mm-verdin-nonwifi-yavia.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-verdin-wifi-dahlia.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-verdin-wifi-dev.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-verdin-wifi-yavia.dtb
+
+imx8mm-tqma8mqml-mba8mx-lvds-tm070jvhg33-dtbs += imx8mm-tqma8mqml-mba8mx.dtb imx8mm-tqma8mqml-mba8mx-lvds-tm070jvhg33.dtbo
+dtb-$(CONFIG_ARCH_MXC) += imx8mm-tqma8mqml-mba8mx-lvds-tm070jvhg33.dtb
+
 dtb-$(CONFIG_ARCH_MXC) += imx8mn-beacon-kit.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mn-bsh-smm-s2.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mn-bsh-smm-s2pro.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx-lvds-tm070jvhg33.dtso b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx-lvds-tm070jvhg33.dtso
new file mode 100644
index 0000000000000..e44249c6d8a09
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx-lvds-tm070jvhg33.dtso
@@ -0,0 +1,45 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Copyright (c) 2022-2023 TQ-Systems GmbH <linux@ew.tq-group.com>,
+ * D-82229 Seefeld, Germany.
+ * Author: Alexander Stein
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/gpio/gpio.h>
+
+&{/} {
+	compatible = "tq,imx8mm-tqma8mqml-mba8mx", "tq,imx8mm-tqma8mqml", "fsl,imx8mm";
+};
+
+&backlight_lvds {
+	status = "okay";
+};
+
+&dsi_lvds_bridge {
+	status = "okay";
+};
+
+&expander0 {
+	dsi-mux-oe-hog {
+		gpio-hog;
+		gpios = <10 GPIO_ACTIVE_LOW>;
+		output-high;
+		line-name = "DSI_MUX_OE#";
+	};
+};
+
+&lcdif {
+	status = "okay";
+};
+
+&mipi_dsi {
+       status = "okay";
+};
+
+&panel {
+	compatible = "tianma,tm070jvhg33";
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi
index b4466a26d838a..8c0c6e7159247 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi
@@ -230,6 +230,11 @@ eeprom0: eeprom@57 {
 	};
 };
 
+&mipi_dsi {
+	vddcore-supply = <&ldo4_reg>;
+	vddio-supply = <&ldo3_reg>;
+};
+
 &pcie_phy {
 	fsl,refclk-pad-mode = <IMX8_PCIE_REFCLK_PAD_INPUT>;
 	fsl,clkreq-unsupported;
-- 
2.34.1


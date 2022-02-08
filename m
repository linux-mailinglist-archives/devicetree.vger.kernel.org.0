Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0186B4ADA4A
	for <lists+devicetree@lfdr.de>; Tue,  8 Feb 2022 14:43:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1359685AbiBHNmk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Feb 2022 08:42:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1376265AbiBHNmj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Feb 2022 08:42:39 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F18FC03FED7
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 05:42:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1644327755; x=1675863755;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Ycoso3i/6dEAlu8uB/Q8dDlbjxkyB3rBymOOluTJl78=;
  b=lzgWMp++uOgPHqyl+MnvpwmvFJf5HmA+S9CgqHlt1krMJVSkPltdViWs
   YHwF1jJLBFTBnPe2lkcQPh5f2WkGk7aQhAmJ/NjwCsUzh1LvJB17MS22i
   4svyelpfTW+5mDYDPVs9nSCZVb+DpGDfPQSjccU0Aqh1kg9hapO2WnfGe
   KL9iFGaxRGI+oUzPjNBVvzTk+mK2yTbaM22k0GL/J8aXpnTKtE3pZFjjS
   FwN+y+aqUsqg6xr7IUyUb/2o/m7T6Gcfd0pXTvx044ir+OE3DuEllfnEd
   OebOSSB/UPk6oItDdXBwPGb7Nn7eSuGuPp3Wlq3xm4rS1Srz4BGO+r2qv
   A==;
X-IronPort-AV: E=Sophos;i="5.88,352,1635199200"; 
   d="scan'208";a="21962446"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 08 Feb 2022 14:42:30 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 08 Feb 2022 14:42:30 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 08 Feb 2022 14:42:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1644327750; x=1675863750;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Ycoso3i/6dEAlu8uB/Q8dDlbjxkyB3rBymOOluTJl78=;
  b=Qwah7CEQ2oJMfsd7vpZNBJ5Chk0Eq8F7zh/n6q7xnTui55rgcIfM9MJO
   OvVGizoWTWh/7a9woE1PxwOFnSPjDxOmbcr+ui7vOaJqW9LUIKoMy3RAY
   YdOwa1Dxn6gmz5KwRTF1hCNRbwOCsnq70TQJ792A4mSc+t18ZX4QZZqGH
   SJVq7MWemOPp85QmOFp/Do5RCsKzck9GzLMDlVO3Mw2JCE9plrpKfS5aN
   xLjyr4BZTqlnF0cePvfH23JI4wYwt3ZYBHgDbAuv+eJFvDPrb+063bkRU
   TyWaylXBN34nAFpEBYXLGHJWYbNQVO/lOTeCNC5qrOWPml0vpSzCYfAmH
   w==;
X-IronPort-AV: E=Sophos;i="5.88,352,1635199200"; 
   d="scan'208";a="21962445"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 08 Feb 2022 14:42:30 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 7987F280065;
        Tue,  8 Feb 2022 14:42:30 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/5] ARM: dts: imx6ul: add TQ-Systems MBa6ULx device trees
Date:   Tue,  8 Feb 2022 14:42:20 +0100
Message-Id: <20220208134223.908757-3-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220208134223.908757-1-alexander.stein@ew.tq-group.com>
References: <20220208134223.908757-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add device trees for the MBa6ULx mainboard with TQMa6ULx SoMs.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/Makefile                    |   2 +
 arch/arm/boot/dts/imx6ul-tqma6ul-common.dtsi  | 215 ++++++
 arch/arm/boot/dts/imx6ul-tqma6ul1-mba6ulx.dts |  56 ++
 arch/arm/boot/dts/imx6ul-tqma6ul1.dtsi        |  37 ++
 arch/arm/boot/dts/imx6ul-tqma6ul2-mba6ulx.dts |  15 +
 arch/arm/boot/dts/imx6ul-tqma6ul2.dtsi        |  71 ++
 arch/arm/boot/dts/imx6ul-tqma6ulx-common.dtsi |  43 ++
 arch/arm/boot/dts/mba6ulx.dtsi                | 615 ++++++++++++++++++
 8 files changed, 1054 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6ul-tqma6ul-common.dtsi
 create mode 100644 arch/arm/boot/dts/imx6ul-tqma6ul1-mba6ulx.dts
 create mode 100644 arch/arm/boot/dts/imx6ul-tqma6ul1.dtsi
 create mode 100644 arch/arm/boot/dts/imx6ul-tqma6ul2-mba6ulx.dts
 create mode 100644 arch/arm/boot/dts/imx6ul-tqma6ul2.dtsi
 create mode 100644 arch/arm/boot/dts/imx6ul-tqma6ulx-common.dtsi
 create mode 100644 arch/arm/boot/dts/mba6ulx.dtsi

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 6a920b1a83bb..ce4673e270a2 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -686,6 +686,8 @@ dtb-$(CONFIG_SOC_IMX6UL) += \
 	imx6ul-kontron-n6310-s.dtb \
 	imx6ul-kontron-n6310-s-43.dtb \
 	imx6ul-liteboard.dtb \
+	imx6ul-tqma6ul1-mba6ulx.dtb \
+	imx6ul-tqma6ul2-mba6ulx.dtb \
 	imx6ul-opos6uldev.dtb \
 	imx6ul-pico-dwarf.dtb \
 	imx6ul-pico-hobbit.dtb \
diff --git a/arch/arm/boot/dts/imx6ul-tqma6ul-common.dtsi b/arch/arm/boot/dts/imx6ul-tqma6ul-common.dtsi
new file mode 100644
index 000000000000..8cc20f04501c
--- /dev/null
+++ b/arch/arm/boot/dts/imx6ul-tqma6ul-common.dtsi
@@ -0,0 +1,215 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Copyright 2018-2022 TQ-Systems GmbH
+ * Author: Markus Niebel <Markus.Niebel@tq-group.com>
+ */
+
+/*
+ * Common for
+ * - TQMa6ULx
+ * - TQMa6ULxL
+ * - TQMa6ULLx
+ * - TQMa6ULLxL
+ */
+
+/ {
+	memory@80000000 {
+		device_type = "memory";
+		reg = <0x80000000 0x10000000>;
+	};
+};
+
+&i2c4 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c4>;
+	pinctrl-1 = <&pinctrl_i2c4_recovery>;
+	scl-gpios = <&gpio1 20 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio1 21 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	status = "okay";
+
+	pfuze3000: pmic@8 {
+		compatible = "fsl,pfuze3000";
+		reg = <0x08>;
+
+		regulators {
+			reg_sw1a: sw1a {
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-ramp-delay = <6250>;
+				/* not used */
+			};
+
+			reg_sw1b_core: sw1b {
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <1475000>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <6250>;
+			};
+
+			reg_sw2: sw2 {
+				regulator-min-microvolt = <2500000>;
+				regulator-max-microvolt = <3300000>;
+			};
+
+			reg_sw3_ddr: sw3 {
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <1650000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			reg_swbst: swbst {
+				regulator-min-microvolt = <5000000>;
+				regulator-max-microvolt = <5150000>;
+				/* not used */
+			};
+
+			reg_snvs_3v0: vsnvs {
+				regulator-min-microvolt = <1000000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			reg_vrefddr: vrefddr {
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			reg_vccsd: vccsd {
+				regulator-min-microvolt = <2850000>;
+				regulator-max-microvolt = <3300000>;
+			};
+
+			reg_v33_3v3: v33 {
+				regulator-min-microvolt = <2850000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			reg_vldo1_3v3: vldo1 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				/* not used */
+			};
+
+			reg_vldo2: vldo2 {
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1550000>;
+				/* not used */
+			};
+
+			reg_vldo3: vldo3 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				/* not used */
+			};
+
+			reg_vldo4: vldo4 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-always-on;
+			};
+		};
+	};
+
+	jc42_1a: eeprom-temperature-sensor@1a {
+		compatible = "nxp,se97", "jedec,jc-42.4-temp";
+		reg = <0x1a>;
+		status = "okay";
+	};
+
+	m24c64_50: eeprom@50 {
+		compatible = "atmel,24c64";
+		reg = <0x50>;
+		pagesize = <32>;
+		status = "okay";
+	};
+
+	m24c02_52: eeprom@52 {
+		compatible = "nxp,se97b", "atmel,24c02";
+		reg = <0x52>;
+		pagesize = <16>;
+		read-only;
+		status = "okay";
+	};
+
+	rtc0: rtc@68 {
+		compatible = "dallas,ds1339";
+		reg = <0x68>;
+		status = "okay";
+	};
+};
+
+&gpio4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pmic>;
+
+	/*
+	 * PMIC & temperature sensor IRQ
+	 * Both do currently not use IRQ
+	 * potentially dangerous if used on baseboard
+	 */
+	pmic-int-hog {
+		gpio-hog;
+		gpios = <24 0>;
+		input;
+	};
+};
+
+&qspi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_qspi>;
+	status = "okay";
+
+	flash0: flash@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "jedec,spi-nor";
+		spi-max-frequency = <33000000>;
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <1>;
+		reg = <0>;
+	};
+};
+
+/* eMMC */
+&usdhc2 {
+	pinctrl-names = "default", "state_100mhz" , "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc2>;
+	pinctrl-1 = <&pinctrl_usdhc2_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc2_200mhz>;
+
+	bus-width = <8>;
+	disable-wp;
+	non-removable;
+	no-sdio;
+	no-sd;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl_i2c4: i2c4grp {
+		fsl,pins = <
+			MX6UL_PAD_UART2_TX_DATA__I2C4_SCL	0x4001b8b0
+			MX6UL_PAD_UART2_RX_DATA__I2C4_SDA	0x4001b8b0
+		>;
+	};
+
+	pinctrl_i2c4_recovery: i2c4recoverygrp {
+		fsl,pins = <
+			MX6UL_PAD_UART2_TX_DATA__GPIO1_IO20	0x4001b8b0
+			MX6UL_PAD_UART2_RX_DATA__GPIO1_IO21	0x4001b8b0
+		>;
+	};
+
+	pinctrl_pmic: pmic {
+		fsl,pins = <
+			/* PMIC irq */
+			MX6UL_PAD_CSI_DATA03__GPIO4_IO24	0x1b099
+		>;
+	};
+};
diff --git a/arch/arm/boot/dts/imx6ul-tqma6ul1-mba6ulx.dts b/arch/arm/boot/dts/imx6ul-tqma6ul1-mba6ulx.dts
new file mode 100644
index 000000000000..58f847ae2631
--- /dev/null
+++ b/arch/arm/boot/dts/imx6ul-tqma6ul1-mba6ulx.dts
@@ -0,0 +1,56 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Copyright 2018-2022 TQ-Systems GmbH
+ * Author: Markus Niebel <Markus.Niebel@tq-group.com>
+ */
+
+/dts-v1/;
+
+#include "imx6ul-tqma6ul1.dtsi"
+#include "mba6ulx.dtsi"
+
+/ {
+	model = "TQ-Systems TQMa6UL1 SoM on MBa6ULx board";
+	compatible = "tq,imx6ul-tqma6ul1-mba6ulx", "tq,imx6ul-tqma6ul1", "fsl,imx6ul";
+};
+
+/*
+ * Note: can2 and fec2 are enabled on mba6ulx level (for i.MX6ULG2 usage)
+ * and need to be disabled here again
+ */
+
+&can2 {
+	status = "disabled";
+};
+
+&fec1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet1>, <&pinctrl_enet1_mdc>;
+	status = "okay";
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy0: ethernet-phy@0 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			max-speed = <100>;
+			reg = <0>;
+		};
+	};
+};
+
+&fec2 {
+	status = "disabled";
+	/delete-property/ phy-handle;
+	/delete-node/ mdio;
+};
+
+&iomuxc {
+	pinctrl_enet1_mdc: enet1mdcgrp {
+		fsl,pins = <
+			/* mdio */
+			MX6UL_PAD_GPIO1_IO07__ENET1_MDC		0x1b0b0
+			MX6UL_PAD_GPIO1_IO06__ENET1_MDIO	0x1b0b0
+		>;
+	};
+};
diff --git a/arch/arm/boot/dts/imx6ul-tqma6ul1.dtsi b/arch/arm/boot/dts/imx6ul-tqma6ul1.dtsi
new file mode 100644
index 000000000000..24192d012ef7
--- /dev/null
+++ b/arch/arm/boot/dts/imx6ul-tqma6ul1.dtsi
@@ -0,0 +1,37 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Copyright 2018-2022 TQ-Systems GmbH
+ * Author: Markus Niebel <Markus.Niebel@tq-group.com>
+ */
+
+#include "imx6ul-tqma6ul2.dtsi"
+
+/ {
+	model = "TQ-Systems TQMa6UL1 SoM";
+	compatible = "tq,imx6ul-tqma6ul1", "fsl,imx6ul";
+};
+
+/*
+ * There are no module specific differences compared to TQMa6UL2,
+ * only external interfaces differ
+ */
+
+/*
+ * Devices not available on i.MX6ULG1 and should not be enabled on
+ * mainboard level (again)
+ */
+&can2 {
+	status = "disabled";
+};
+
+&csi {
+	status = "disabled";
+};
+
+&fec2 {
+	status = "disabled";
+};
+
+&lcdif {
+	status = "disabled";
+};
diff --git a/arch/arm/boot/dts/imx6ul-tqma6ul2-mba6ulx.dts b/arch/arm/boot/dts/imx6ul-tqma6ul2-mba6ulx.dts
new file mode 100644
index 000000000000..0757df2b8f48
--- /dev/null
+++ b/arch/arm/boot/dts/imx6ul-tqma6ul2-mba6ulx.dts
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Copyright 2018-2022 TQ-Systems GmbH
+ * Author: Markus Niebel <Markus.Niebel@tq-group.com>
+ */
+
+/dts-v1/;
+
+#include "imx6ul-tqma6ul2.dtsi"
+#include "mba6ulx.dtsi"
+
+/ {
+	model = "TQ-Systems TQMa6ULx SoM on MBa6ULx board";
+	compatible = "tq,imx6ul-tqma6ul2-mba6ulx", "tq,imx6ul-tqma6ul2", "fsl,imx6ul";
+};
diff --git a/arch/arm/boot/dts/imx6ul-tqma6ul2.dtsi b/arch/arm/boot/dts/imx6ul-tqma6ul2.dtsi
new file mode 100644
index 000000000000..e2e95dd92263
--- /dev/null
+++ b/arch/arm/boot/dts/imx6ul-tqma6ul2.dtsi
@@ -0,0 +1,71 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Copyright 2018-2022 TQ-Systems GmbH
+ * Author: Markus Niebel <Markus.Niebel@tq-group.com>
+ */
+
+#include "imx6ul.dtsi"
+#include "imx6ul-tqma6ul-common.dtsi"
+#include "imx6ul-tqma6ulx-common.dtsi"
+
+/ {
+	model = "TQ-Systems TQMa6UL2 SoM";
+	compatible = "tq,imx6ul-tqma6ul2", "fsl,imx6ul";
+};
+
+&usdhc2 {
+	fsl,tuning-step = <6>;
+};
+
+&iomuxc {
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			MX6UL_PAD_NAND_RE_B__USDHC2_CLK		0x00017051
+			MX6UL_PAD_NAND_WE_B__USDHC2_CMD		0x00017051
+			MX6UL_PAD_NAND_DATA00__USDHC2_DATA0	0x00017051
+			MX6UL_PAD_NAND_DATA01__USDHC2_DATA1	0x00017051
+			MX6UL_PAD_NAND_DATA02__USDHC2_DATA2	0x00017051
+			MX6UL_PAD_NAND_DATA03__USDHC2_DATA3	0x00017051
+			MX6UL_PAD_NAND_DATA04__USDHC2_DATA4	0x00017051
+			MX6UL_PAD_NAND_DATA05__USDHC2_DATA5	0x00017051
+			MX6UL_PAD_NAND_DATA06__USDHC2_DATA6	0x00017051
+			MX6UL_PAD_NAND_DATA07__USDHC2_DATA7	0x00017051
+			/* rst */
+			MX6UL_PAD_NAND_ALE__GPIO4_IO10		0x0001b051
+		>;
+	};
+
+	pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
+		fsl,pins = <
+			MX6UL_PAD_NAND_RE_B__USDHC2_CLK		0x000170e1
+			MX6UL_PAD_NAND_WE_B__USDHC2_CMD		0x000170f1
+			MX6UL_PAD_NAND_DATA00__USDHC2_DATA0	0x000170f1
+			MX6UL_PAD_NAND_DATA01__USDHC2_DATA1	0x000170f1
+			MX6UL_PAD_NAND_DATA02__USDHC2_DATA2	0x000170f1
+			MX6UL_PAD_NAND_DATA03__USDHC2_DATA3	0x000170f1
+			MX6UL_PAD_NAND_DATA04__USDHC2_DATA4	0x000170f1
+			MX6UL_PAD_NAND_DATA05__USDHC2_DATA5	0x000170f1
+			MX6UL_PAD_NAND_DATA06__USDHC2_DATA6	0x000170f1
+			MX6UL_PAD_NAND_DATA07__USDHC2_DATA7	0x000170f1
+			/* rst */
+			MX6UL_PAD_NAND_ALE__GPIO4_IO10		0x0001b051
+		>;
+	};
+
+	pinctrl_usdhc2_200mhz: usdhc2-200mhzgrp {
+		fsl,pins = <
+			MX6UL_PAD_NAND_RE_B__USDHC2_CLK		0x000170f1
+			MX6UL_PAD_NAND_WE_B__USDHC2_CMD		0x000170e1
+			MX6UL_PAD_NAND_DATA00__USDHC2_DATA0	0x000170e1
+			MX6UL_PAD_NAND_DATA01__USDHC2_DATA1	0x000170e1
+			MX6UL_PAD_NAND_DATA02__USDHC2_DATA2	0x000170e1
+			MX6UL_PAD_NAND_DATA03__USDHC2_DATA3	0x000170e1
+			MX6UL_PAD_NAND_DATA04__USDHC2_DATA4	0x000170e1
+			MX6UL_PAD_NAND_DATA05__USDHC2_DATA5	0x000170e1
+			MX6UL_PAD_NAND_DATA06__USDHC2_DATA6	0x000170e1
+			MX6UL_PAD_NAND_DATA07__USDHC2_DATA7	0x000170e1
+			/* rst */
+			MX6UL_PAD_NAND_ALE__GPIO4_IO10		0x0001b051
+		>;
+	};
+};
diff --git a/arch/arm/boot/dts/imx6ul-tqma6ulx-common.dtsi b/arch/arm/boot/dts/imx6ul-tqma6ulx-common.dtsi
new file mode 100644
index 000000000000..5afb9046c202
--- /dev/null
+++ b/arch/arm/boot/dts/imx6ul-tqma6ulx-common.dtsi
@@ -0,0 +1,43 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Copyright 2018-2022 TQ-Systems GmbH
+ * Author: Markus Niebel <Markus.Niebel@tq-group.com>
+ */
+
+/*
+ * Common for
+ * - TQMa6ULx
+ * - TQMa6ULLx
+ */
+
+&m24c64_50 {
+	vcc-supply = <&reg_sw2>;
+};
+
+&m24c02_52 {
+	vcc-supply = <&reg_sw2>;
+};
+
+&reg_sw2 {
+	regulator-boot-on;
+	regulator-always-on;
+};
+
+/* eMMC */
+&usdhc2 {
+	vmmc-supply = <&reg_sw2>;
+	vqmmc-supply = <&reg_vldo4>;
+};
+
+&iomuxc {
+	pinctrl_qspi: qspigrp {
+		fsl,pins = <
+			MX6UL_PAD_NAND_WP_B__QSPI_A_SCLK      0x70b9
+			MX6UL_PAD_NAND_READY_B__QSPI_A_DATA00 0x70b9
+			MX6UL_PAD_NAND_CE0_B__QSPI_A_DATA01   0x70b9
+			MX6UL_PAD_NAND_CE1_B__QSPI_A_DATA02   0x70b9
+			MX6UL_PAD_NAND_CLE__QSPI_A_DATA03     0x70b9
+			MX6UL_PAD_NAND_DQS__QSPI_A_SS0_B      0x70a1
+		>;
+	};
+};
diff --git a/arch/arm/boot/dts/mba6ulx.dtsi b/arch/arm/boot/dts/mba6ulx.dtsi
new file mode 100644
index 000000000000..3a35b1efdc1f
--- /dev/null
+++ b/arch/arm/boot/dts/mba6ulx.dtsi
@@ -0,0 +1,615 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Copyright 2018-2022 TQ-Systems GmbH
+ * Author: Markus Niebel <Markus.Niebel@tq-group.com>
+ */
+
+/ {
+	model = "TQ-Systems MBA6ULx Baseboard";
+
+	aliases {
+		mmc0 = &usdhc2;
+		mmc1 = &usdhc1;
+		rtc0 = &rtc0;
+		rtc1 = &snvs_rtc;
+	};
+
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		power-supply = <&reg_mba6ul_3v3>;
+		enable-gpios = <&expander_out0 4 GPIO_ACTIVE_HIGH>;
+		status = "disabled";
+	};
+
+	beeper: beeper {
+		compatible = "gpio-beeper";
+		gpios = <&expander_out1 6 GPIO_ACTIVE_HIGH>;
+	};
+
+	chosen {
+		stdout-path = &uart1;
+	};
+
+	gpio_buttons: gpio-keys {
+		compatible = "gpio-keys";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_buttons>;
+
+		button@0 {
+			label = "s14";
+			linux,code = <KEY_1>;
+			gpios = <&expander_in0 0 GPIO_ACTIVE_LOW>;
+		};
+
+		button@1 {
+			label = "s6";
+			linux,code = <KEY_2>;
+			gpios = <&expander_in0 1 GPIO_ACTIVE_LOW>;
+		};
+
+		button@2 {
+			label = "s7";
+			linux,code = <KEY_3>;
+			gpios = <&expander_in0 2 GPIO_ACTIVE_LOW>;
+		};
+
+		button@3 {
+			label = "POWER";
+			linux,code = <KEY_POWER>;
+			gpios = <&gpio1 3 GPIO_ACTIVE_LOW>;
+			gpio-key,wakeup;
+		};
+	};
+
+	gpio-leds {
+		compatible = "gpio-leds";
+		status = "okay";
+
+		led1 {
+			label = "led1";
+			gpios = <&expander_out1 4 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "default-on";
+		};
+
+		led2 {
+			label = "led2";
+			gpios = <&expander_out1 5 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+
+	reg_lcd_pwr: regulator-lcd-pwr {
+		compatible = "regulator-fixed";
+		regulator-name = "lcd-pwr";
+		gpio = <&expander_out0 1 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		status = "disabled";
+	};
+
+	reg_mba6ul_3v3: regulator-mba6ul-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "supply-mba6ul-3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+
+	reg_mba6ul_5v0: regulator-mba6ul-5v0 {
+		compatible = "regulator-fixed";
+		regulator-name = "supply-mba6ul-5v0";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+	};
+
+	reg_mpcie: regulator-mpcie-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "mpcie-3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&expander_out0 2 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		regulator-always-on;
+		startup-delay-us = <500000>;
+		vin-supply = <&reg_mba6ul_3v3>;
+	};
+
+	reg_otg2vbus_5v0: regulator-otg2-vbus-5v0 {
+		compatible = "regulator-fixed";
+		gpio = <&expander_out1 0 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		regulator-name = "otg2-vbus-supply-5v0";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&reg_mpcie>;
+	};
+
+	reserved-memory {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+
+		linux,cma {
+			compatible = "shared-dma-pool";
+			reusable;
+			size = <0x6000000>;
+			linux,cma-default;
+		};
+	};
+
+	sound {
+		compatible = "fsl,imx-audio-tlv320aic32x4";
+		model = "imx-audio-tlv320aic32x4";
+		ssi-controller = <&sai1>;
+		audio-codec = <&tlv320aic32x4>;
+		audio-asrc = <&asrc>;
+	};
+};
+
+&can1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexcan1>;
+	xceiver-supply = <&reg_mba6ul_3v3>;
+	status = "okay";
+};
+
+&can2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexcan2>;
+	xceiver-supply = <&reg_mba6ul_3v3>;
+	status = "okay";
+};
+
+&clks {
+	assigned-clocks = <&clks IMX6UL_CLK_PLL4_AUDIO_DIV>;
+	assigned-clock-rates = <768000000>;
+};
+
+&ecspi2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi2>;
+	num-cs = <1>;
+	status = "okay";
+
+	spidev2_0: spidev2-0@0 {
+		compatible = "tq,testdev";
+		spi-max-frequency = <5000000>;
+		reg = <0>;
+		status = "okay";
+	};
+};
+
+&fec1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet1>;
+	phy-mode = "rmii";
+	phy-handle = <&ethphy0>;
+	phy-supply = <&reg_mba6ul_3v3>;
+	phy-reset-gpios = <&expander_out1 1 GPIO_ACTIVE_LOW>;
+	phy-reset-duration = <25>;
+	phy-reset-post-delay = <1>;
+	status = "okay";
+};
+
+&fec2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet2>, <&pinctrl_enet2_mdc>;
+	phy-mode = "rmii";
+	phy-handle = <&ethphy1>;
+	phy-supply = <&reg_mba6ul_3v3>;
+	phy-reset-gpios = <&expander_out1 2 GPIO_ACTIVE_LOW>;
+	phy-reset-duration = <25>;
+	phy-reset-post-delay = <1>;
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy0: ethernet-phy@0 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			clocks = <&clks IMX6UL_CLK_ENET_REF>;
+			reg = <0>;
+			max-speed = <100>;
+		};
+
+		ethphy1: ethernet-phy@1 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			clocks = <&clks IMX6UL_CLK_ENET2_REF_125M>;
+			reg = <1>;
+			max-speed = <100>;
+		};
+	};
+};
+
+&flash0 {
+	partition@0 {
+		label = "U-Boot";
+		reg = <0x0 0xd0000>;
+	};
+
+	partition@d0000 {
+		label = "ENV1";
+		reg = <0xd0000 0x10000>;
+	};
+
+	partition@e0000 {
+		label = "ENV2";
+		reg = <0xe0000 0x10000>;
+	};
+
+	partition@f0000 {
+		label = "DTB";
+		reg = <0xf0000 0x10000>;
+	};
+
+	partition@100000 {
+		label = "Linux";
+		reg = <0x100000 0x700000>;
+	};
+
+	partition@800000 {
+		label = "RootFS";
+		reg = <0x800000 0x3800000>;
+	};
+};
+
+&i2c4 {
+	tlv320aic32x4: codec@18 {
+		compatible = "ti,tlv320aic32x4";
+		reg = <0x18>;
+		clocks = <&clks IMX6UL_CLK_SAI1>;
+		clock-names = "mclk";
+		ldoin-supply = <&reg_mba6ul_3v3>;
+		iov-supply = <&reg_mba6ul_3v3>;
+	};
+
+	jc42: temperature-sensor@19 {
+		compatible = "nxp,se97", "jedec,jc-42.4-temp";
+		reg = <0x19>;
+		status = "okay";
+	};
+
+	expander_out0: gpio-expander@20 {
+		compatible = "nxp,pca9554";
+		reg = <0x20>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		status = "okay";
+	};
+
+	expander_in0: gpio-expander@21 {
+		compatible = "nxp,pca9554";
+		reg = <0x21>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_expander_in0>;
+		interrupt-parent = <&gpio4>;
+		interrupts = <23 IRQ_TYPE_LEVEL_LOW>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		status = "okay";
+
+		enet1_int-hog {
+			gpio-hog;
+			gpios = <6 0>;
+			input;
+		};
+
+		enet2_int-hog {
+			gpio-hog;
+			gpios = <7 0>;
+			input;
+		};
+	};
+
+	expander_out1: gpio-expander@22 {
+		compatible = "nxp,pca9554";
+		reg = <0x22>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		status = "okay";
+	};
+
+	analog_touch: touchscreen@41 {
+		compatible = "st,stmpe811";
+		reg = <0x41>;
+		interrupts = <21 IRQ_TYPE_EDGE_FALLING>;
+		interrupt-parent = <&gpio4>;
+		interrupt-controller;
+		status = "disabled";
+
+		stmpe_touchscreen {
+			compatible = "st,stmpe-ts";
+			st,adc-freq = <1>;      /* 3.25 MHz ADC clock speed */
+			st,ave-ctrl = <3>;      /* 8 sample average control */
+			st,fraction-z = <7>;    /* 7 length fractional part in z */
+			/*
+			 * 50 mA typical 80 mA max touchscreen drivers
+			 * current limit value
+			 */
+			st,i-drive = <1>;
+			st,mod-12b = <1>;       /* 12-bit ADC */
+			st,ref-sel = <0>;       /* internal ADC reference */
+			st,sample-time = <4>;   /* ADC converstion time: 80 clocks */
+			st,settling = <3>;      /* 1 ms panel driver settling time */
+			st,touch-det-delay = <5>; /* 5 ms touch detect interrupt delay */
+		};
+	};
+
+	/* NXP SE97BTP with temperature sensor + eeprom */
+	se97b: eeprom@51 {
+		compatible = "nxp,se97b", "atmel,24c02";
+		reg = <0x51>;
+		pagesize = <16>;
+		status = "okay";
+	};
+};
+
+&pwm2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm2>;
+	status = "okay";
+};
+
+&sai1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_sai1>;
+	assigned-clocks = <&clks IMX6UL_CLK_SAI1_SEL>,
+			  <&clks IMX6UL_CLK_SAI1>;
+	assigned-clock-parents = <&clks IMX6UL_CLK_PLL4_AUDIO_DIV>;
+	assigned-clock-rates = <0>, <24000000>;
+	fsl,sai-mclk-direction-output;
+	status = "okay";
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	status = "okay";
+};
+
+&uart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart3>;
+	status = "okay";
+};
+
+&uart6 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart6>;
+	/* for DTE mode, add below change */
+	/* fsl,dte-mode; */
+	/* pinctrl-0 = <&pinctrl_uart6dte>; */
+	uart-has-rtscts;
+	linux,rs485-enabled-at-boot-time;
+	rs485-rts-active-low;
+	rs485-rx-during-tx;
+	status = "okay";
+};
+
+/* otg-port */
+&usbotg1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usb_otg1>;
+	power-active-high;
+	over-current-active-low;
+	/* we implement only dual role but not a fully featured OTG */
+	hnp-disable;
+	srp-disable;
+	adp-disable;
+	dr_mode = "otg";
+	status = "okay";
+};
+
+/* 7-port usb hub */
+/* id, pwr, oc pins not connected */
+&usbotg2 {
+	disable-over-current;
+	vbus-supply = <&reg_otg2vbus_5v0>;
+	dr_mode = "host";
+	status = "okay";
+};
+
+&usdhc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc1>;
+	cd-gpios = <&gpio1 19 GPIO_ACTIVE_LOW>;
+	wp-gpios = <&gpio1 18 GPIO_ACTIVE_HIGH>;
+	bus-width = <4>;
+	vmmc-supply = <&reg_mba6ul_3v3>;
+	vqmmc-supply = <&reg_vccsd>;
+	no-1-8-v;
+	no-mmc;
+	no-sdio;
+	status = "okay";
+};
+
+&wdog1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_wdog1>;
+	fsl,ext-reset-output;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl_buttons: buttonsgrp {
+		fsl,pins = <
+			MX6UL_PAD_GPIO1_IO03__GPIO1_IO03	0x100b0
+		>;
+	};
+
+	pinctrl_ecspi2: ecspi2grp {
+		fsl,pins = <
+			MX6UL_PAD_UART4_TX_DATA__ECSPI2_SCLK	0x1b020
+			MX6UL_PAD_UART5_RX_DATA__ECSPI2_MISO	0x1b020
+			MX6UL_PAD_UART5_TX_DATA__ECSPI2_MOSI	0x1b020
+			MX6UL_PAD_UART4_RX_DATA__ECSPI2_SS0	0x1b020
+		>;
+	};
+
+	pinctrl_enet1: enet1grp {
+		fsl,pins = <
+			MX6UL_PAD_ENET1_RX_EN__ENET1_RX_EN	0x1b0b0
+			MX6UL_PAD_ENET1_RX_ER__ENET1_RX_ER	0x1b0b0
+			MX6UL_PAD_ENET1_RX_DATA0__ENET1_RDATA00	0x1b0b0
+			MX6UL_PAD_ENET1_RX_DATA1__ENET1_RDATA01	0x1b0b0
+			MX6UL_PAD_ENET1_TX_DATA0__ENET1_TDATA00	0x1b0b0
+			MX6UL_PAD_ENET1_TX_DATA1__ENET1_TDATA01	0x1b0b0
+			MX6UL_PAD_ENET1_TX_EN__ENET1_TX_EN	0x1b0b0
+			MX6UL_PAD_ENET1_TX_CLK__ENET1_REF_CLK1	0x4001b0a8
+		>;
+	};
+
+	pinctrl_enet2: enet2grp {
+		fsl,pins = <
+			MX6UL_PAD_ENET2_RX_EN__ENET2_RX_EN	0x1b0b0
+			MX6UL_PAD_ENET2_RX_ER__ENET2_RX_ER	0x1b0b0
+			MX6UL_PAD_ENET2_RX_DATA0__ENET2_RDATA00	0x1b0b0
+			MX6UL_PAD_ENET2_RX_DATA1__ENET2_RDATA01	0x1b0b0
+			MX6UL_PAD_ENET2_TX_DATA0__ENET2_TDATA00	0x1b0a0
+			MX6UL_PAD_ENET2_TX_DATA1__ENET2_TDATA01	0x1b0a0
+			MX6UL_PAD_ENET2_TX_EN__ENET2_TX_EN	0x1b0b0
+			MX6UL_PAD_ENET2_TX_CLK__ENET2_REF_CLK2	0x4001b0a8
+		>;
+	};
+
+	pinctrl_enet2_mdc: enet2mdcgrp {
+		fsl,pins = <
+			/* mdio */
+			MX6UL_PAD_GPIO1_IO07__ENET2_MDC		0x1b0b0
+			MX6UL_PAD_GPIO1_IO06__ENET2_MDIO	0x1b0b0
+		>;
+	};
+
+	pinctrl_expander_in0: expanderin0grp {
+		fsl,pins = <
+			MX6UL_PAD_CSI_DATA02__GPIO4_IO23	0x1b0b1
+		>;
+	};
+
+	pinctrl_flexcan1: flexcan1grp {
+		fsl,pins = <
+			MX6UL_PAD_UART3_RTS_B__FLEXCAN1_RX	0x1b020
+			MX6UL_PAD_UART3_CTS_B__FLEXCAN1_TX	0x1b020
+		>;
+	};
+
+	pinctrl_flexcan2: flexcan2grp {
+		fsl,pins = <
+			MX6UL_PAD_UART2_RTS_B__FLEXCAN2_RX	0x1b020
+			MX6UL_PAD_UART2_CTS_B__FLEXCAN2_TX	0x1b020
+		>;
+	};
+
+	pinctrl_pwm2: pwm2grp {
+		fsl,pins = <
+			/* 100 k PD, DSE 120 OHM, SPPEED LO */
+			MX6UL_PAD_GPIO1_IO09__PWM2_OUT		0x00003050
+		>;
+	};
+
+	pinctrl_sai1: sai1grp {
+		fsl,pins = <
+			MX6UL_PAD_CSI_DATA05__SAI1_TX_BCLK	0x1b0b1
+			MX6UL_PAD_CSI_DATA04__SAI1_TX_SYNC	0x1b0b1
+			MX6UL_PAD_CSI_DATA07__SAI1_TX_DATA	0x1f0b8
+			MX6UL_PAD_CSI_DATA06__SAI1_RX_DATA	0x110b0
+			MX6UL_PAD_CSI_DATA01__SAI1_MCLK		0x1b0b1
+		>;
+	};
+
+	pinctrl_uart1: uart1grp {
+		fsl,pins = <
+			MX6UL_PAD_UART1_TX_DATA__UART1_DCE_TX	0x1b0b1
+			MX6UL_PAD_UART1_RX_DATA__UART1_DCE_RX	0x1b0b1
+		>;
+	};
+
+	pinctrl_uart3: uart3grp {
+		fsl,pins = <
+			MX6UL_PAD_UART3_TX_DATA__UART3_DCE_TX	0x1b0b1
+			MX6UL_PAD_UART3_RX_DATA__UART3_DCE_RX	0x1b0b1
+		>;
+	};
+
+	pinctrl_uart6: uart6grp {
+		fsl,pins = <
+			MX6UL_PAD_CSI_MCLK__UART6_DCE_TX	0x1b0b1
+			MX6UL_PAD_CSI_PIXCLK__UART6_DCE_RX	0x1b0b1
+			MX6UL_PAD_CSI_VSYNC__UART6_DCE_RTS	0x1b0b1
+			MX6UL_PAD_CSI_HSYNC__UART6_DCE_CTS	0x1b0b1
+		>;
+	};
+
+	pinctrl_uart6dte: uart6dte {
+		fsl,pins = <
+			MX6UL_PAD_CSI_PIXCLK__UART6_DTE_TX	0x1b0b1
+			MX6UL_PAD_CSI_MCLK__UART6_DTE_RX	0x1b0b1
+			MX6UL_PAD_CSI_HSYNC__UART6_DTE_RTS	0x1b0b1
+			MX6UL_PAD_CSI_VSYNC__UART6_DTE_CTS	0x1b0b1
+		>;
+	};
+
+	pinctrl_usb_otg1: usbotg1grp {
+		fsl,pins = <
+			MX6UL_PAD_GPIO1_IO00__ANATOP_OTG1_ID	0x00017059
+			MX6UL_PAD_GPIO1_IO01__USB_OTG1_OC	0x0001b0b0
+			MX6UL_PAD_GPIO1_IO04__USB_OTG1_PWR	0x0001b099
+		>;
+	};
+
+	pinctrl_usdhc1: usdhc1grp {
+		fsl,pins = <
+			MX6UL_PAD_SD1_CLK__USDHC1_CLK		0x00017069
+			MX6UL_PAD_SD1_CMD__USDHC1_CMD		0x00017059
+			MX6UL_PAD_SD1_DATA0__USDHC1_DATA0	0x00017059
+			MX6UL_PAD_SD1_DATA1__USDHC1_DATA1	0x00017059
+			MX6UL_PAD_SD1_DATA2__USDHC1_DATA2	0x00017059
+			MX6UL_PAD_SD1_DATA3__USDHC1_DATA3	0x00017059
+			/* WP */
+			MX6UL_PAD_UART1_CTS_B__GPIO1_IO18	0x0001b099
+			/* CD */
+			MX6UL_PAD_UART1_RTS_B__GPIO1_IO19	0x0001b099
+		>;
+	};
+
+	pinctrl_usdhc1_100mhz: usdhc1grp100mhz {
+		fsl,pins = <
+			MX6UL_PAD_SD1_CLK__USDHC1_CLK		0x00017069
+			MX6UL_PAD_SD1_CMD__USDHC1_CMD		0x000170b9
+			MX6UL_PAD_SD1_DATA0__USDHC1_DATA0	0x000170b9
+			MX6UL_PAD_SD1_DATA1__USDHC1_DATA1	0x000170b9
+			MX6UL_PAD_SD1_DATA2__USDHC1_DATA2	0x000170b9
+			MX6UL_PAD_SD1_DATA3__USDHC1_DATA3	0x000170b9
+			/* WP */
+			MX6UL_PAD_UART1_CTS_B__GPIO1_IO18	0x0001b099
+			/* CD */
+			MX6UL_PAD_UART1_RTS_B__GPIO1_IO19	0x0001b099
+		>;
+	};
+
+	pinctrl_usdhc1_200mhz: usdhc1grp200mhz {
+		fsl,pins = <
+			MX6UL_PAD_SD1_CLK__USDHC1_CLK		0x00017069
+			MX6UL_PAD_SD1_CMD__USDHC1_CMD		0x000170f9
+			MX6UL_PAD_SD1_DATA0__USDHC1_DATA0	0x000170f9
+			MX6UL_PAD_SD1_DATA1__USDHC1_DATA1	0x000170f9
+			MX6UL_PAD_SD1_DATA2__USDHC1_DATA2	0x000170f9
+			MX6UL_PAD_SD1_DATA3__USDHC1_DATA3	0x000170f9
+			/* WP */
+			MX6UL_PAD_UART1_CTS_B__GPIO1_IO18	0x0001b099
+			/* CD */
+			MX6UL_PAD_UART1_RTS_B__GPIO1_IO19	0x0001b099
+		>;
+	};
+
+	pinctrl_wdog1: wdog1grp {
+		fsl,pins = <
+			MX6UL_PAD_GPIO1_IO08__WDOG1_WDOG_B	0x0001b099
+		>;
+	};
+};
-- 
2.25.1


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B9ECF53B712
	for <lists+devicetree@lfdr.de>; Thu,  2 Jun 2022 12:27:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232927AbiFBK1K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Jun 2022 06:27:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233765AbiFBK1J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Jun 2022 06:27:09 -0400
Received: from mickerik.phytec.de (mickerik.phytec.de [195.145.39.210])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D3025A094
        for <devicetree@vger.kernel.org>; Thu,  2 Jun 2022 03:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1654164699; x=1656756699;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=zKo4P2MG0RNTvabkqJv6i94QKEdWUAldj3lO3k/Ibhk=;
        b=apoDiFByml62JNFEPAL0MMvESR/slHsGMezSTkL3+fbOu8lT+VaO1YBknRyouAMH
        wgd1bvy7n40qK8gacklt6FHN6GymCoQrNepggdfIG3VElqs9u1Gi5fYzSLB0zMut
        HKyHHpo+nmD7b+1DCsi1607BigsYXOBp4hB2XSHdPeA=;
X-AuditID: c39127d2-b5e2e70000001dbe-2b-62988cdbc8da
Received: from idefix.phytec.de (Unknown_Domain [172.25.0.20])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id DF.E1.07614.BDC88926; Thu,  2 Jun 2022 12:11:39 +0200 (CEST)
Received: from augenblix2.phytec.de ([172.25.0.51])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2022060212113934-85943 ;
          Thu, 2 Jun 2022 12:11:39 +0200 
From:   Teresa Remmet <t.remmet@phytec.de>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>, upstream@phytec.de
Subject: [PATCH 3/3] arm64: dts: freescale: Add phyBOARD-Polis-i.MX8MM support
Date:   Thu, 2 Jun 2022 12:11:38 +0200
Message-Id: <20220602101138.2492028-3-t.remmet@phytec.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220602101138.2492028-1-t.remmet@phytec.de>
References: <20220602101138.2492028-1-t.remmet@phytec.de>
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 02.06.2022 12:11:39,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 02.06.2022 12:11:39
X-TNEFEvaluated: 1
Content-Transfer-Encoding: quoted-printable
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrHLMWRmVeSWpSXmKPExsWyRpJBRPd2z4wkg73XlC3mHznHavHwqr9F
        34uHzBabHl9jtej6tZLZonXvEXaLv9s3sVi82CLuwOGxc9Zddo9NqzrZPO5c28PmsXlJvcfG
        dzuYPPr/Gnh83iQXwB7FZZOSmpNZllqkb5fAlfHgcCdzwZEbjBVvNl9lamCcs5mxi5GTQ0LA
        RKKx/whbFyMXh5DANkaJm50boZyzjBLbd/9jA6liE9CQeLriNBOILSLgItH5YB0LSBGzQCOT
        xI5jF5hBEsICfhLHll8Da2ARUJGYuvkHO4jNK2ApsfbYNFaIdfISMy99B4tzClhJzL63Cmyo
        EFDNk7VzGSHqBSVOznwCtkBC4AqjRG/vLiaIZiGJ04vPgi1jFtCWWLbwNfMERoFZSHpmIUkt
        YGRaxSiUm5mcnVqUma1XkFFZkpqsl5K6iREY5ocnql/awdg3x+MQIxMH4yFGCQ5mJRHekl1T
        k4R4UxIrq1KL8uOLSnNSiw8xSnOwKInz3u9hShQSSE8sSc1OTS1ILYLJMnFwSjUw+l+6tWZP
        9qeg2axHv37SNRAzUt29pfP/pr8s7SHaXR1nVPtXihWZH1Hjd75f9Uo8puW8e04ba5Mnz/HD
        83MWK61dsKC8pW/dRfcn+l5PT0yYanxgXV1peoxa085su29v/Rpa57H8OyHeNstjfvHCVW53
        Mp45y/yz3H9njVxRcIepPKOX7rTvSizFGYmGWsxFxYkA4+UJAGECAAA=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add initial support for phyBOARD-Polis-i.MX8MM.
Main features are:
	* Bluetooth and Wifi
	* CANFD
	* eMMC
	* i2c RTC
	* Ethernet
	* PCIe
	* RS232/RS485
	* SD-Card
	* SPI-NOR flash
	* USB

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../freescale/imx8mm-phyboard-polis-rdk.dts   | 450 ++++++++++++++++++
 .../dts/freescale/imx8mm-phycore-som.dtsi     | 433 +++++++++++++++++
 3 files changed, 884 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-rdk=
.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-phycore-som.dtsi

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/f=
reescale/Makefile
index 238a83e5b8c6..1e25dec2109b 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -58,6 +58,7 @@ dtb-$(CONFIG=5FARCH=5FMXC) +=3D imx8mm-icore-mx8mm-edimm2=
.2.dtb
 dtb-$(CONFIG=5FARCH=5FMXC) +=3D imx8mm-kontron-n801x-s.dtb
 dtb-$(CONFIG=5FARCH=5FMXC) +=3D imx8mm-mx8menlo.dtb
 dtb-$(CONFIG=5FARCH=5FMXC) +=3D imx8mm-nitrogen-r2.dtb
+dtb-$(CONFIG=5FARCH=5FMXC) +=3D imx8mm-phyboard-polis-rdk.dtb
 dtb-$(CONFIG=5FARCH=5FMXC) +=3D imx8mm-tqma8mqml-mba8mx.dtb
 dtb-$(CONFIG=5FARCH=5FMXC) +=3D imx8mm-var-som-symphony.dtb
 dtb-$(CONFIG=5FARCH=5FMXC) +=3D imx8mm-venice-gw71xx-0x.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-rdk.dts b/=
arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-rdk.dts
new file mode 100644
index 000000000000..532b435b6871
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-rdk.dts
@@ -0,0 +1,450 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2022 PHYTEC Messtechnik GmbH
+ * Author: Teresa Remmet <t.remmet@phytec.de>
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/phy/phy-imx8-pcie.h>
+#include "imx8mm-phycore-som.dtsi"
+
+/ {
+	model =3D "PHYTEC phyBOARD-Polis-i.MX8MM RDK";
+	compatible =3D "phytec,imx8mm-phyboard-polis-rdk",
+		     "phytec,imx8mm-phycore-som","fsl,imx8mm";
+
+	chosen {
+		stdout-path =3D &uart3;
+	};
+
+	bt=5Fosc=5F32k: bt=5Flp-clock {
+		compatible =3D "fixed-clock";
+		clock-frequency =3D <32768>;
+		clock-output-names =3D "bt=5Fosc=5F32k";
+		#clock-cells =3D <0>;
+	};
+
+	can=5Fosc=5F40m: can-clock {
+		compatible =3D "fixed-clock";
+		clock-frequency =3D <40000000>;
+		clock-output-names =3D "can=5Fosc=5F40m";
+		#clock-cells =3D <0>;
+	};
+
+	fan {
+		compatible =3D "gpio-fan";
+		gpios =3D <&gpio4 8 GPIO=5FACTIVE=5FHIGH>;
+		gpio-fan,speed-map =3D <0     0
+				      13000 1>;
+		pinctrl-names =3D "default";
+		pinctrl-0 =3D <&pinctrl=5Ffan>;
+		#cooling-cells =3D <2>;
+	};
+
+	leds {
+		compatible =3D "gpio-leds";
+		pinctrl-names =3D "default";
+		pinctrl-0 =3D <&pinctrl=5Fleds>;
+
+		led-0 {
+			color =3D <LED=5FCOLOR=5FID=5FRED>;
+			function =3D LED=5FFUNCTION=5FDISK;
+			gpios =3D <&gpio1 1 GPIO=5FACTIVE=5FHIGH>;
+			linux,default-trigger =3D "mmc2";
+		};
+
+		led-1 {
+			color =3D <LED=5FCOLOR=5FID=5FBLUE>;
+			function =3D LED=5FFUNCTION=5FDISK;
+			gpios =3D <&gpio1 15 GPIO=5FACTIVE=5FHIGH>;
+			linux,default-trigger =3D "mmc1";
+		};
+
+		led-2 {
+			color =3D <LED=5FCOLOR=5FID=5FGREEN>;
+			function =3D LED=5FFUNCTION=5FCPU;
+			gpios =3D <&gpio1 14 GPIO=5FACTIVE=5FHIGH>;
+			linux,default-trigger =3D "heartbeat";
+		};
+	};
+
+	usdhc1=5Fpwrseq: pwr-seq {
+		compatible =3D "mmc-pwrseq-simple";
+		post-power-on-delay-ms =3D <100>;
+		power-off-delay-us =3D <60>;
+		reset-gpios =3D <&gpio2 7 GPIO=5FACTIVE=5FLOW>;
+	};
+
+	reg=5Fcan=5Fen: regulator-can-en {
+		compatible =3D "regulator-fixed";
+		gpio =3D <&gpio1 9 GPIO=5FACTIVE=5FLOW>;
+		pinctrl-names =3D "default";
+		pinctrl-0 =3D <&pinctrl=5Fcan=5Fen>;
+		regulator-max-microvolt =3D <3300000>;
+		regulator-min-microvolt =3D <3300000>;
+		regulator-name =3D "CAN=5FEN";
+		startup-delay-us =3D <20>;
+	};
+
+	reg=5Fusb=5Fotg1=5Fvbus: regulator-usb-otg1 {
+		compatible =3D "regulator-fixed";
+		enable-active-high;
+		gpio =3D <&gpio1 12 GPIO=5FACTIVE=5FHIGH>;
+		pinctrl-names =3D "default";
+		pinctrl-0 =3D <&pinctrl=5Fusbotg1pwrgrp>;
+		regulator-name =3D "usb=5Fotg1=5Fvbus";
+		regulator-max-microvolt =3D <5000000>;
+		regulator-min-microvolt =3D <5000000>;
+	};
+
+       reg=5Fusdhc2=5Fvmmc: regulator-usdhc2 {
+		compatible =3D "regulator-fixed";
+		enable-active-high;
+		gpio =3D <&gpio2 19 GPIO=5FACTIVE=5FHIGH>;
+		off-on-delay-us =3D <20000>;
+		pinctrl-names =3D "default";
+		pinctrl-0 =3D <&pinctrl=5Freg=5Fusdhc2=5Fvmmc>;
+		regulator-max-microvolt =3D <3300000>;
+		regulator-min-microvolt =3D <3300000>;
+		regulator-name =3D "VSD=5F3V3";
+	};
+
+	reg=5Fvcc=5F3v3: regulator-vcc=5F3v3 {
+		compatible =3D "regulator-fixed";
+		regulator-max-microvolt =3D <3300000>;
+		regulator-min-microvolt =3D <3300000>;
+		regulator-name =3D "VCC=5F3V3";
+	};
+};
+
+/* SPI - CAN MCP251XFD */
+&ecspi1 {
+	cs-gpios =3D <&gpio5 9 GPIO=5FACTIVE=5FLOW>;
+	pinctrl-names =3D "default";
+	pinctrl-0 =3D <&pinctrl=5Fecspi1>;
+	status =3D "okay";
+
+	can0: can@0 {
+		compatible =3D "microchip,mcp251xfd";
+		clocks =3D <&can=5Fosc=5F40m>;
+		interrupt-parent =3D <&gpio1>;
+		interrupts =3D <8 IRQ=5FTYPE=5FLEVEL=5FLOW>;
+		pinctrl-names =3D "default";
+		pinctrl-0 =3D <&pinctrl=5Fcan=5Fint>;
+		reg =3D <0>;
+		spi-max-frequency =3D <20000000>;
+		xceiver-supply =3D <&reg=5Fcan=5Fen>;
+	};
+};
+
+&gpio1 {
+	gpio-line-names =3D "nINT=5FETHPHY", "LED=5FRED", "WDOG=5FINT", "X=5FRTC=
=5FINT",
+		"", "", "", "RESET=5FETHPHY",
+		"CAN=5FnINT", "CAN=5FEN", "nENABLE=5FFLATLINK", "",
+		"USB=5FOTG=5FVBUS=5FEN", "", "LED=5FGREEN", "LED=5FBLUE";
+};
+
+&gpio2 {
+	gpio-line-names =3D "", "", "", "",
+		"", "", "BT=5FREG=5FON", "WL=5FREG=5FON",
+		"BT=5FDEV=5FWAKE", "BT=5FHOST=5FWAKE", "", "",
+		"X=5FSD2=5FCD=5FB", "", "", "",
+		"", "", "", "SD2=5FRESET=5FB";
+};
+
+&gpio4 {
+	gpio-line-names =3D "", "", "", "",
+		"", "", "", "",
+		"FAN", "miniPCIe=5FnPERST", "", "",
+		"COEX1", "COEX2";
+};
+
+&gpio5 {
+	gpio-line-names =3D "", "", "", "",
+		"", "", "", "",
+		"", "ECSPI1=5FSS0";
+};
+
+/* PCIe */
+&pcie0 {
+	assigned-clocks =3D <&clk IMX8MM=5FCLK=5FPCIE1=5FAUX>,
+			  <&clk IMX8MM=5FCLK=5FPCIE1=5FCTRL>;
+	assigned-clock-parents =3D <&clk IMX8MM=5FSYS=5FPLL2=5F50M>,
+				 <&clk IMX8MM=5FSYS=5FPLL2=5F250M>;
+	assigned-clock-rates =3D <10000000>, <250000000>;
+	clocks =3D <&clk IMX8MM=5FCLK=5FPCIE1=5FROOT>, <&clk IMX8MM=5FCLK=5FPCIE1=
=5FAUX>,
+		 <&clk IMX8MM=5FCLK=5FPCIE1=5FPHY>;
+	clock-names =3D "pcie", "pcie=5Faux", "pcie=5Fbus";
+	pinctrl-names =3D "default";
+	pinctrl-0 =3D <&pinctrl=5Fpcie>;
+	reset-gpio =3D <&gpio4 9 GPIO=5FACTIVE=5FLOW>;
+	status =3D "okay";
+};
+
+&pcie=5Fphy {
+	clocks =3D <&clk IMX8MM=5FCLK=5FPCIE1=5FPHY>;
+	fsl,clkreq-unsupported;
+	fsl,refclk-pad-mode =3D <IMX8=5FPCIE=5FREFCLK=5FPAD=5FOUTPUT>;
+	fsl,tx-deemph-gen1 =3D <0x2d>;
+	fsl,tx-deemph-gen2 =3D <0xf>;
+	status =3D "okay";
+};
+
+&rv3028 {
+	trickle-resistor-ohms =3D <3000>;
+};
+
+&snvs=5Fpwrkey {
+	status =3D "okay";
+};
+
+/* UART - RS232/RS485 */
+&uart1 {
+	assigned-clocks =3D <&clk IMX8MM=5FCLK=5FUART1>;
+	assigned-clock-parents =3D <&clk IMX8MM=5FSYS=5FPLL1=5F80M>;
+	pinctrl-names =3D "default";
+	pinctrl-0 =3D <&pinctrl=5Fuart1>;
+	status =3D "okay";
+	uart-has-rtscts;
+};
+
+/* UART - Sterling-LWB Bluetooth */
+&uart2 {
+	assigned-clocks =3D <&clk IMX8MM=5FCLK=5FUART2>;
+	assigned-clock-parents =3D <&clk IMX8MM=5FSYS=5FPLL1=5F80M>;
+	fsl,dte-mode;
+	pinctrl-names =3D "default";
+	pinctrl-0 =3D <&pinctrl=5Fuart2=5Fbt>;
+	status =3D "okay";
+	uart-has-rtscts;
+
+	bluetooth {
+		compatible =3D "brcm,bcm43438-bt";
+		clocks =3D <&bt=5Fosc=5F32k>;
+		clock-names =3D "lpo";
+		device-wakeup-gpios =3D <&gpio2 8 GPIO=5FACTIVE=5FHIGH>;
+		interrupt-names =3D "host-wakeup";
+		interrupt-parent =3D <&gpio2>;
+		interrupts =3D <9 IRQ=5FTYPE=5FEDGE=5FBOTH>;
+		max-speed =3D <2000000>;
+		pinctrl-names =3D "default";
+		pinctrl-0 =3D <&pinctrl=5Fbt>;
+		shutdown-gpios =3D <&gpio2 6 GPIO=5FACTIVE=5FHIGH>;
+		vddio-supply =3D <&reg=5Fvcc=5F3v3>;
+	};
+};
+
+/* UART - console */
+&uart3 {
+	pinctrl-names =3D "default";
+	pinctrl-0 =3D <&pinctrl=5Fuart3>;
+	status =3D "okay";
+};
+
+/* USB */
+&usbotg1 {
+	adp-disable;
+	dr=5Fmode =3D "otg";
+	over-current-active-low;
+	samsung,picophy-pre-emp-curr-control =3D <3>;
+	samsung,picophy-dc-vol-level-adjust =3D <7>;
+	srp-disable;
+	status =3D "okay";
+	vbus-supply =3D <&reg=5Fusb=5Fotg1=5Fvbus>;
+};
+
+&usbotg2 {
+	disable-over-current;
+	dr=5Fmode =3D "host";
+	samsung,picophy-pre-emp-curr-control =3D <3>;
+	samsung,picophy-dc-vol-level-adjust =3D <7>;
+	status =3D "okay";
+};
+
+/* SDIO - Sterling-LWB Wifi */
+&usdhc1 {
+	assigned-clocks =3D <&clk IMX8MM=5FCLK=5FUSDHC1>;
+	assigned-clock-rates =3D <200000000>;
+	bus-width =3D <4>;
+	mmc-pwrseq =3D <&usdhc1=5Fpwrseq>;
+	non-removable;
+	no-1-8-v;
+	pinctrl-names =3D "default";
+	pinctrl-0 =3D <&pinctrl=5Fusdhc1>, <&pinctrl=5Fwlan>;
+	status =3D "okay";
+	#address-cells =3D <1>;
+	#size-cells =3D <0>;
+
+	brcmf: wifi@1 {
+		compatible =3D "brcm,bcm4329-fmac";
+		reg =3D <1>;
+	};
+};
+
+/* SD-Card */
+&usdhc2 {
+	assigned-clocks =3D <&clk IMX8MM=5FCLK=5FUSDHC2>;
+	assigned-clock-rates =3D <200000000>;
+	bus-width =3D <4>;
+	cd-gpios =3D <&gpio2 12 GPIO=5FACTIVE=5FLOW>;
+	disable-wp;
+	pinctrl-names =3D "default", "state=5F100mhz", "state=5F200mhz";
+	pinctrl-0 =3D <&pinctrl=5Fusdhc2>, <&pinctrl=5Fusdhc2=5Fgpio>;
+	pinctrl-1 =3D <&pinctrl=5Fusdhc2=5F100mhz>, <&pinctrl=5Fusdhc2=5Fgpio>;
+	pinctrl-2 =3D <&pinctrl=5Fusdhc2=5F200mhz>, <&pinctrl=5Fusdhc2=5Fgpio>;
+	status =3D "okay";
+	vmmc-supply =3D <&reg=5Fusdhc2=5Fvmmc>;
+	vqmmc-supply =3D <&reg=5Fnvcc=5Fsd2>;
+};
+
+&iomuxc {
+	pinctrl=5Fbt: btgrp {
+		fsl,pins =3D <
+			MX8MM=5FIOMUXC=5FSD1=5FDATA4=5FGPIO2=5FIO6	0x00
+			MX8MM=5FIOMUXC=5FSD1=5FDATA6=5FGPIO2=5FIO8	0x00
+			MX8MM=5FIOMUXC=5FSD1=5FDATA7=5FGPIO2=5FIO9	0x00
+		>;
+	};
+
+	pinctrl=5Fcan=5Fen: can-engrp {
+		fsl,pins =3D <
+			MX8MM=5FIOMUXC=5FGPIO1=5FIO09=5FGPIO1=5FIO9	0x00
+		>;
+	};
+
+	pinctrl=5Fcan=5Fint: can-intgrp {
+		fsl,pins =3D <
+			MX8MM=5FIOMUXC=5FGPIO1=5FIO08=5FGPIO1=5FIO8	0x00
+		>;
+	};
+
+	pinctrl=5Fecspi1: ecspi1grp {
+		fsl,pins =3D <
+			MX8MM=5FIOMUXC=5FECSPI1=5FMISO=5FECSPI1=5FMISO	0x80
+			MX8MM=5FIOMUXC=5FECSPI1=5FMOSI=5FECSPI1=5FMOSI	0x80
+			MX8MM=5FIOMUXC=5FECSPI1=5FSCLK=5FECSPI1=5FSCLK	0x80
+			MX8MM=5FIOMUXC=5FECSPI1=5FSS0=5FGPIO5=5FIO9	0x00
+		>;
+	};
+
+	pinctrl=5Ffan: fan0grp {
+		fsl,pins =3D <
+			MX8MM=5FIOMUXC=5FSAI1=5FRXD6=5FGPIO4=5FIO8	0x16
+		>;
+	};
+
+	pinctrl=5Fleds: leds1grp {
+		fsl,pins =3D <
+			MX8MM=5FIOMUXC=5FGPIO1=5FIO01=5FGPIO1=5FIO1	0x16
+			MX8MM=5FIOMUXC=5FGPIO1=5FIO14=5FGPIO1=5FIO14	0x16
+			MX8MM=5FIOMUXC=5FGPIO1=5FIO15=5FGPIO1=5FIO15	0x16
+		>;
+	};
+
+	pinctrl=5Fpcie: pciegrp {
+		fsl,pins =3D <
+			MX8MM=5FIOMUXC=5FSAI1=5FRXD7=5FGPIO4=5FIO9	0x00
+			MX8MM=5FIOMUXC=5FSAI1=5FTXD0=5FGPIO4=5FIO12	0x12
+			MX8MM=5FIOMUXC=5FSAI1=5FTXD7=5FGPIO4=5FIO19	0x12
+		>;
+	};
+
+	pinctrl=5Freg=5Fusdhc2=5Fvmmc: regusdhc2vmmcgrp {
+		fsl,pins =3D <
+			MX8MM=5FIOMUXC=5FSD2=5FRESET=5FB=5FGPIO2=5FIO19	0x41
+		>;
+	};
+
+	pinctrl=5Fuart1: uart1grp {
+		fsl,pins =3D <
+			MX8MM=5FIOMUXC=5FSAI2=5FRXC=5FUART1=5FDCE=5FRX	0x00
+			MX8MM=5FIOMUXC=5FSAI2=5FRXD0=5FUART1=5FDCE=5FRTS=5FB	0x00
+			MX8MM=5FIOMUXC=5FSAI2=5FRXFS=5FUART1=5FDCE=5FTX	0x00
+			MX8MM=5FIOMUXC=5FSAI2=5FTXFS=5FUART1=5FDCE=5FCTS=5FB	0x00
+		>;
+	};
+
+	pinctrl=5Fuart2=5Fbt: uart2btgrp {
+		fsl,pins =3D <
+			MX8MM=5FIOMUXC=5FSAI3=5FRXC=5FUART2=5FDTE=5FRTS=5FB	0x00
+			MX8MM=5FIOMUXC=5FSAI3=5FRXD=5FUART2=5FDTE=5FCTS=5FB	0x00
+			MX8MM=5FIOMUXC=5FSAI3=5FTXC=5FUART2=5FDTE=5FRX	0x00
+			MX8MM=5FIOMUXC=5FSAI3=5FTXFS=5FUART2=5FDTE=5FTX	0x00
+		>;
+	};
+
+	pinctrl=5Fuart3: uart3grp {
+		fsl,pins =3D <
+			MX8MM=5FIOMUXC=5FUART3=5FRXD=5FUART3=5FDCE=5FRX	0x49
+			MX8MM=5FIOMUXC=5FUART3=5FTXD=5FUART3=5FDCE=5FTX	0x49
+		>;
+	};
+
+	pinctrl=5Fusbotg1pwrgrp: usbotg1pwrgrp {
+		fsl,pins =3D <
+			MX8MM=5FIOMUXC=5FGPIO1=5FIO12=5FGPIO1=5FIO12	0x00
+		>;
+	};
+
+	pinctrl=5Fusdhc1: usdhc1grp {
+		fsl,pins =3D <
+			MX8MM=5FIOMUXC=5FSD1=5FCLK=5FUSDHC1=5FCLK		0x182
+			MX8MM=5FIOMUXC=5FSD1=5FCMD=5FUSDHC1=5FCMD		0xc6
+			MX8MM=5FIOMUXC=5FSD1=5FDATA0=5FUSDHC1=5FDATA0	0xc6
+			MX8MM=5FIOMUXC=5FSD1=5FDATA1=5FUSDHC1=5FDATA1	0xc6
+			MX8MM=5FIOMUXC=5FSD1=5FDATA2=5FUSDHC1=5FDATA2	0xc6
+			MX8MM=5FIOMUXC=5FSD1=5FDATA3=5FUSDHC1=5FDATA3	0xc6
+		>;
+	};
+
+	pinctrl=5Fusdhc2=5Fgpio: usdhc2gpiogrp {
+		fsl,pins =3D <
+			MX8MM=5FIOMUXC=5FSD2=5FCD=5FB=5FGPIO2=5FIO12	0x41
+		>;
+	};
+
+	pinctrl=5Fusdhc2: usdhc2grp {
+		fsl,pins =3D <
+			MX8MM=5FIOMUXC=5FGPIO1=5FIO04=5FUSDHC2=5FVSELECT	0x1d0
+			MX8MM=5FIOMUXC=5FSD2=5FCLK=5FUSDHC2=5FCLK		0x192
+			MX8MM=5FIOMUXC=5FSD2=5FCMD=5FUSDHC2=5FCMD		0x1d2
+			MX8MM=5FIOMUXC=5FSD2=5FDATA0=5FUSDHC2=5FDATA0	0x1d2
+			MX8MM=5FIOMUXC=5FSD2=5FDATA1=5FUSDHC2=5FDATA1	0x1d2
+			MX8MM=5FIOMUXC=5FSD2=5FDATA2=5FUSDHC2=5FDATA2	0x1d2
+			MX8MM=5FIOMUXC=5FSD2=5FDATA3=5FUSDHC2=5FDATA3	0x1d2
+		>;
+	};
+
+	pinctrl=5Fusdhc2=5F100mhz: usdhc2-100mhzgrp {
+		fsl,pins =3D <
+			MX8MM=5FIOMUXC=5FGPIO1=5FIO04=5FUSDHC2=5FVSELECT	0x1d0
+			MX8MM=5FIOMUXC=5FSD2=5FCLK=5FUSDHC2=5FCLK		0x194
+			MX8MM=5FIOMUXC=5FSD2=5FCMD=5FUSDHC2=5FCMD		0x1d4
+			MX8MM=5FIOMUXC=5FSD2=5FDATA0=5FUSDHC2=5FDATA0	0x1d4
+			MX8MM=5FIOMUXC=5FSD2=5FDATA1=5FUSDHC2=5FDATA1	0x1d4
+			MX8MM=5FIOMUXC=5FSD2=5FDATA2=5FUSDHC2=5FDATA2	0x1d4
+			MX8MM=5FIOMUXC=5FSD2=5FDATA3=5FUSDHC2=5FDATA3	0x1d4
+		>;
+	};
+
+	pinctrl=5Fusdhc2=5F200mhz: usdhc2-200mhzgrp {
+		fsl,pins =3D <
+			MX8MM=5FIOMUXC=5FGPIO1=5FIO04=5FUSDHC2=5FVSELECT	0x1d0
+			MX8MM=5FIOMUXC=5FSD2=5FCLK=5FUSDHC2=5FCLK		0x196
+			MX8MM=5FIOMUXC=5FSD2=5FCMD=5FUSDHC2=5FCMD		0x1d6
+			MX8MM=5FIOMUXC=5FSD2=5FDATA0=5FUSDHC2=5FDATA0	0x1d6
+			MX8MM=5FIOMUXC=5FSD2=5FDATA1=5FUSDHC2=5FDATA1	0x1d6
+			MX8MM=5FIOMUXC=5FSD2=5FDATA2=5FUSDHC2=5FDATA2	0x1d6
+			MX8MM=5FIOMUXC=5FSD2=5FDATA3=5FUSDHC2=5FDATA3	0x1d6
+		>;
+	};
+
+	pinctrl=5Fwlan: wlangrp {
+		fsl,pins =3D <
+			MX8MM=5FIOMUXC=5FSD1=5FDATA5=5FGPIO2=5FIO7	0x00
+		>;
+	};
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-phycore-som.dtsi b/arch/a=
rm64/boot/dts/freescale/imx8mm-phycore-som.dtsi
new file mode 100644
index 000000000000..1aa27291c7ff
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mm-phycore-som.dtsi
@@ -0,0 +1,433 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2022 PHYTEC Messtechnik GmbH
+ * Author: Teresa Remmet <t.remmet@phytec.de>
+ */
+
+#include "imx8mm.dtsi"
+#include <dt-bindings/net/ti-dp83867.h>
+
+/ {
+	model =3D "PHYTEC phyCORE-i.MX8MM";
+	compatible =3D "phytec,imx8mm-phycore-som", "fsl,imx8mm";
+
+	aliases {
+		rtc0 =3D &rv3028;
+		rtc1 =3D &snvs=5Frtc;
+	};
+
+	memory@40000000 {
+		device=5Ftype =3D "memory";
+		reg =3D <0x0 0x40000000 0 0x80000000>;
+	};
+
+	reg=5Fvdd=5F3v3=5Fs: regulator-vdd=5F3v3=5Fs {
+		compatible =3D "regulator-fixed";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-max-microvolt =3D <3300000>;
+		regulator-min-microvolt =3D <3300000>;
+		regulator-name =3D "VDD=5F3V3=5FS";
+	};
+};
+
+&A53=5F0 {
+	cpu-supply =3D <&reg=5Fvdd=5Farm>;
+};
+
+&A53=5F1 {
+	cpu-supply =3D <&reg=5Fvdd=5Farm>;
+};
+
+&A53=5F2 {
+	cpu-supply =3D <&reg=5Fvdd=5Farm>;
+};
+
+&A53=5F3 {
+	cpu-supply =3D <&reg=5Fvdd=5Farm>;
+};
+
+&ddrc {
+	operating-points-v2 =3D <&ddrc=5Fopp=5Ftable>;
+
+	ddrc=5Fopp=5Ftable: opp-table {
+		compatible =3D "operating-points-v2";
+
+		opp-25M {
+			opp-hz =3D /bits/ 64 <25000000>;
+		};
+
+		opp-100M {
+			opp-hz =3D /bits/ 64 <100000000>;
+		};
+
+		opp-750M {
+			opp-hz =3D /bits/ 64 <750000000>;
+		};
+	};
+};
+
+/* Ethernet */
+&fec1 {
+	fsl,magic-packet;
+	phy-mode =3D "rgmii-id";
+	phy-handle =3D <&ethphy0>;
+	pinctrl-names =3D "default";
+	pinctrl-0 =3D <&pinctrl=5Ffec1>;
+	status =3D "okay";
+
+	mdio {
+		#address-cells =3D <1>;
+		#size-cells =3D <0>;
+
+		ethphy0: ethernet-phy@0 {
+			compatible =3D "ethernet-phy-ieee802.3-c22";
+			enet-phy-lane-no-swap;
+			interrupts =3D <0 IRQ=5FTYPE=5FEDGE=5FFALLING>;
+			interrupt-parent =3D <&gpio1>;
+			ti,clk-output-sel =3D <DP83867=5FCLK=5FO=5FSEL=5FOFF>;
+			ti,fifo-depth =3D <DP83867=5FPHYCR=5FFIFO=5FDEPTH=5F4=5FB=5FNIB>;
+			ti,rx-internal-delay =3D <DP83867=5FRGMIIDCTL=5F2=5F00=5FNS>;
+			ti,tx-internal-delay =3D <DP83867=5FRGMIIDCTL=5F2=5F00=5FNS>;
+			reg =3D <0>;
+			reset-gpios =3D <&gpio1 7 GPIO=5FACTIVE=5FHIGH>;
+			reset-assert-us =3D <1000>;
+			reset-deassert-us =3D <1000>;
+		};
+	};
+};
+
+/* SPI Flash */
+&flexspi {
+	pinctrl-names =3D "default";
+	pinctrl-0 =3D <&pinctrl=5Fflexspi0>;
+	status =3D "okay";
+
+	som=5Fflash: flash@0 {
+		compatible =3D "jedec,spi-nor";
+		reg =3D <0>;
+		spi-max-frequency =3D <80000000>;
+		spi-rx-bus-width =3D <4>;
+		spi-tx-bus-width =3D <1>;
+	};
+};
+
+&gpio1 {
+	gpio-line-names =3D "nINT=5FETHPHY", "", "WDOG=5FINT", "X=5FRTC=5FINT",
+		"", "", "", "RESET=5FETHPHY",
+		"", "", "nENABLE=5FFLATLINK";
+};
+
+/* I2C1 */
+&i2c1 {
+	clock-frequency =3D <400000>;
+	pinctrl-names =3D "default","gpio";
+	pinctrl-0 =3D <&pinctrl=5Fi2c1>;
+	pinctrl-1 =3D <&pinctrl=5Fi2c1=5Fgpio>;
+	scl-gpios =3D <&gpio5 14 (GPIO=5FACTIVE=5FHIGH | GPIO=5FOPEN=5FDRAIN)>;
+	sda-gpios =3D <&gpio5 15 (GPIO=5FACTIVE=5FHIGH | GPIO=5FOPEN=5FDRAIN)>;
+	status =3D "okay";
+
+	pmic@8 {
+		compatible =3D "nxp,pf8121a";
+		reg =3D <0x08>;
+
+		regulators {
+			reg=5Fnvcc=5Fsd1: ldo1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt =3D <3300000>;
+				regulator-min-microvolt =3D <3300000>;
+				regulator-name =3D "NVCC=5FSD1 (LDO1)";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			reg=5Fnvcc=5Fsd2: ldo2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt =3D <3300000>;
+				regulator-min-microvolt =3D <1800000>;
+				regulator-name =3D "NVCC=5FSD2 (LDO2)";
+				vselect-en;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			reg=5Fvcc=5Fenet: ldo3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt =3D <2500000>;
+				regulator-min-microvolt =3D <1500000>;
+				regulator-name =3D "VCC=5FENET=5F2V5 (LDO3)";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			reg=5Fvdda=5F1v8: ldo4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt =3D <1800000>;
+				regulator-min-microvolt =3D <1500000>;
+				regulator-name =3D "VDDA=5F1V8 (LDO4)";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-min-microvolt =3D <1500000>;
+					regulator-suspend-max-microvolt =3D <1500000>;
+				};
+			};
+
+			reg=5Fsoc=5Fvdda=5Fphy: buck1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt =3D <900000>;
+				regulator-min-microvolt =3D <400000>;
+				regulator-name =3D "VDD=5FSOC=5FVDDA=5FPHY=5F0P8 (BUCK1)";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-min-microvolt =3D <400000>;
+					regulator-suspend-max-microvolt =3D <400000>;
+				};
+			};
+
+			reg=5Fvdd=5Fgpu=5Fdram: buck2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt =3D <1000000>;
+				regulator-min-microvolt =3D <1000000>;
+				regulator-name =3D "VDD=5FGPU=5FDRAM (BUCK2)";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-max-microvolt =3D <1000000>;
+					regulator-suspend-min-microvolt =3D <1000000>;
+				};
+			};
+
+			reg=5Fvdd=5Fgpu: buck3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt =3D <1000000>;
+				regulator-min-microvolt =3D <400000>;
+				regulator-name =3D "VDD=5FVPU (BUCK3)";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			reg=5Fvdd=5Fmipi: buck4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt =3D <1050000>;
+				regulator-min-microvolt =3D <900000>;
+				regulator-name =3D "VDD=5FMIPI=5F0P9 (BUCK4)";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			reg=5Fvdd=5Farm: buck5 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt =3D <1050000>;
+				regulator-min-microvolt =3D <400000>;
+				regulator-name =3D "VDD=5FARM (BUCK5)";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			reg=5Fvdd=5F1v8: buck6 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt =3D <1800000>;
+				regulator-min-microvolt =3D <1800000>;
+				regulator-name =3D "VDD=5F1V8 (BUCK6)";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-max-microvolt =3D <1800000>;
+					regulator-suspend-min-microvolt =3D <1800000>;
+				};
+			};
+
+			reg=5Fnvcc=5Fdram: buck7 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt =3D <1100000>;
+				regulator-min-microvolt =3D <1100000>;
+				regulator-name =3D "NVCC=5FDRAM=5F1P1V (BUCK7)";
+			};
+
+			reg=5Fvsnvs: vsnvs {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt =3D <1800000>;
+				regulator-min-microvolt =3D <1800000>;
+				regulator-name =3D "NVCC=5FSNVS=5F1P8 (VSNVS)";
+			};
+		};
+	};
+
+	eeprom@51 {
+		compatible =3D "atmel,24c32";
+		pagesize =3D <32>;
+		reg =3D <0x51>;
+		vcc-supply =3D <&reg=5Fvdd=5F3v3=5Fs>;
+	};
+
+	sn65dsi83: mipitolvds@2d {
+		compatible =3D "ti,sn65dsi83";
+		enable-gpios =3D <&gpio1 10 GPIO=5FACTIVE=5FLOW>;
+		pinctrl-names =3D "default";
+		pinctrl-0 =3D <&pinctrl=5Fsn65dsi83>;
+		reg =3D <0x2d>;
+		status =3D "disabled";
+	};
+
+	rv3028: rtc@52 {
+		compatible =3D "microcrystal,rv3028";
+		interrupts =3D <3 IRQ=5FTYPE=5FLEVEL=5FLOW>;
+		interrupt-parent =3D <&gpio1>;
+		pinctrl-names =3D "default";
+		pinctrl-0 =3D <&pinctrl=5Frtc>;
+		reg =3D <0x52>;
+	};
+};
+
+/* EMMC */
+&usdhc3 {
+	assigned-clocks =3D <&clk IMX8MM=5FCLK=5FUSDHC3=5FROOT>;
+	assigned-clock-rates =3D <400000000>;
+	bus-width =3D <8>;
+	keep-power-in-suspend;
+	pinctrl-names =3D "default", "state=5F100mhz", "state=5F200mhz";
+	pinctrl-0 =3D <&pinctrl=5Fusdhc3>;
+	pinctrl-1 =3D <&pinctrl=5Fusdhc3=5F100mhz>;
+	pinctrl-2 =3D <&pinctrl=5Fusdhc3=5F200mhz>;
+	non-removable;
+	status =3D "okay";
+};
+
+/* Watchdog */
+&wdog1 {
+	fsl,ext-reset-output;
+	pinctrl-names =3D "default";
+	pinctrl-0 =3D <&pinctrl=5Fwdog>;
+	status =3D "okay";
+};
+
+&iomuxc {
+	pinctrl=5Ffec1: fec1grp {
+		fsl,pins =3D <
+			MX8MM=5FIOMUXC=5FENET=5FMDC=5FENET1=5FMDC			0x3
+			MX8MM=5FIOMUXC=5FENET=5FMDIO=5FENET1=5FMDIO		0x3
+			MX8MM=5FIOMUXC=5FENET=5FRD0=5FENET1=5FRGMII=5FRD0		0x91
+			MX8MM=5FIOMUXC=5FENET=5FRD1=5FENET1=5FRGMII=5FRD1		0x91
+			MX8MM=5FIOMUXC=5FENET=5FRD2=5FENET1=5FRGMII=5FRD2		0x91
+			MX8MM=5FIOMUXC=5FENET=5FRD3=5FENET1=5FRGMII=5FRD3		0x91
+			MX8MM=5FIOMUXC=5FENET=5FRXC=5FENET1=5FRGMII=5FRXC		0x91
+			MX8MM=5FIOMUXC=5FENET=5FRX=5FCTL=5FENET1=5FRGMII=5FRX=5FCTL	0x91
+			MX8MM=5FIOMUXC=5FENET=5FTD0=5FENET1=5FRGMII=5FTD0		0x1f
+			MX8MM=5FIOMUXC=5FENET=5FTD1=5FENET1=5FRGMII=5FTD1		0x1f
+			MX8MM=5FIOMUXC=5FENET=5FTD2=5FENET1=5FRGMII=5FTD2		0x1f
+			MX8MM=5FIOMUXC=5FENET=5FTD3=5FENET1=5FRGMII=5FTD3		0x1f
+			MX8MM=5FIOMUXC=5FENET=5FTXC=5FENET1=5FRGMII=5FTXC		0x1f
+			MX8MM=5FIOMUXC=5FENET=5FTX=5FCTL=5FENET1=5FRGMII=5FTX=5FCTL	0x1f
+			MX8MM=5FIOMUXC=5FGPIO1=5FIO00=5FGPIO1=5FIO0		0x19
+			MX8MM=5FIOMUXC=5FGPIO1=5FIO07=5FGPIO1=5FIO7		0x19
+		>;
+	};
+
+	pinctrl=5Fflexspi0: flexspi0grp {
+		fsl,pins =3D <
+			MX8MM=5FIOMUXC=5FNAND=5FALE=5FQSPI=5FA=5FSCLK		0x1c2
+			MX8MM=5FIOMUXC=5FNAND=5FCE0=5FB=5FQSPI=5FA=5FSS0=5FB		0x82
+			MX8MM=5FIOMUXC=5FNAND=5FDATA00=5FQSPI=5FA=5FDATA0		0x82
+			MX8MM=5FIOMUXC=5FNAND=5FDATA01=5FQSPI=5FA=5FDATA1		0x82
+			MX8MM=5FIOMUXC=5FNAND=5FDATA02=5FQSPI=5FA=5FDATA2		0x82
+			MX8MM=5FIOMUXC=5FNAND=5FDATA03=5FQSPI=5FA=5FDATA3		0x82
+		>;
+	};
+
+	pinctrl=5Fi2c1: i2c1grp {
+		fsl,pins =3D <
+			MX8MM=5FIOMUXC=5FI2C1=5FSDA=5FI2C1=5FSDA			0x400001c0
+			MX8MM=5FIOMUXC=5FI2C1=5FSCL=5FI2C1=5FSCL			0x400001c0
+		>;
+	};
+
+	pinctrl=5Fi2c1=5Fgpio: i2c1gpiogrp {
+		fsl,pins =3D <
+			MX8MM=5FIOMUXC=5FI2C1=5FSDA=5FGPIO5=5FIO15		0x1e0
+			MX8MM=5FIOMUXC=5FI2C1=5FSCL=5FGPIO5=5FIO14		0x1e0
+		>;
+	};
+
+	pinctrl=5Frtc: rtcgrp {
+		fsl,pins =3D <
+			MX8MM=5FIOMUXC=5FGPIO1=5FIO03=5FGPIO1=5FIO3		0x1c0
+		>;
+	};
+
+	pinctrl=5Fsn65dsi83: sn65dsi83grp {
+		fsl,pins =3D <
+			MX8MM=5FIOMUXC=5FGPIO1=5FIO10=5FGPIO1=5FIO10		0x0
+		>;
+	};
+
+	pinctrl=5Fusdhc3: usdhc3grp {
+		fsl,pins =3D <
+			MX8MM=5FIOMUXC=5FNAND=5FCLE=5FUSDHC3=5FDATA7		0x1d0
+			MX8MM=5FIOMUXC=5FNAND=5FCE1=5FB=5FUSDHC3=5FSTROBE		0x190
+			MX8MM=5FIOMUXC=5FNAND=5FCE2=5FB=5FUSDHC3=5FDATA5		0x1d0
+			MX8MM=5FIOMUXC=5FNAND=5FCE3=5FB=5FUSDHC3=5FDATA6		0x1d0
+			MX8MM=5FIOMUXC=5FNAND=5FDATA04=5FUSDHC3=5FDATA0		0x1d0
+			MX8MM=5FIOMUXC=5FNAND=5FDATA05=5FUSDHC3=5FDATA1		0x1d0
+			MX8MM=5FIOMUXC=5FNAND=5FDATA06=5FUSDHC3=5FDATA2		0x1d0
+			MX8MM=5FIOMUXC=5FNAND=5FDATA07=5FUSDHC3=5FDATA3		0x1d0
+			MX8MM=5FIOMUXC=5FNAND=5FRE=5FB=5FUSDHC3=5FDATA4		0x1d0
+			MX8MM=5FIOMUXC=5FNAND=5FWE=5FB=5FUSDHC3=5FCLK		0x190
+			MX8MM=5FIOMUXC=5FNAND=5FWP=5FB=5FUSDHC3=5FCMD		0x1d0
+		>;
+	};
+
+	pinctrl=5Fusdhc3=5F100mhz: usdhc3-100mhzgrp {
+		fsl,pins =3D <
+			MX8MM=5FIOMUXC=5FNAND=5FCLE=5FUSDHC3=5FDATA7		0x1d4
+			MX8MM=5FIOMUXC=5FNAND=5FCE1=5FB=5FUSDHC3=5FSTROBE		0x194
+			MX8MM=5FIOMUXC=5FNAND=5FCE2=5FB=5FUSDHC3=5FDATA5		0x1d4
+			MX8MM=5FIOMUXC=5FNAND=5FCE3=5FB=5FUSDHC3=5FDATA6		0x1d4
+			MX8MM=5FIOMUXC=5FNAND=5FDATA04=5FUSDHC3=5FDATA0		0x1d4
+			MX8MM=5FIOMUXC=5FNAND=5FDATA05=5FUSDHC3=5FDATA1		0x1d4
+			MX8MM=5FIOMUXC=5FNAND=5FDATA06=5FUSDHC3=5FDATA2		0x1d4
+			MX8MM=5FIOMUXC=5FNAND=5FDATA07=5FUSDHC3=5FDATA3		0x1d4
+			MX8MM=5FIOMUXC=5FNAND=5FRE=5FB=5FUSDHC3=5FDATA4		0x1d4
+			MX8MM=5FIOMUXC=5FNAND=5FWE=5FB=5FUSDHC3=5FCLK		0x194
+			MX8MM=5FIOMUXC=5FNAND=5FWP=5FB=5FUSDHC3=5FCMD		0x1d4
+		>;
+	};
+
+	pinctrl=5Fusdhc3=5F200mhz: usdhc3-200mhzgrp {
+		fsl,pins =3D <
+			MX8MM=5FIOMUXC=5FNAND=5FCLE=5FUSDHC3=5FDATA7		0x1d6
+			MX8MM=5FIOMUXC=5FNAND=5FCE1=5FB=5FUSDHC3=5FSTROBE		0x196
+			MX8MM=5FIOMUXC=5FNAND=5FCE2=5FB=5FUSDHC3=5FDATA5		0x1d6
+			MX8MM=5FIOMUXC=5FNAND=5FCE3=5FB=5FUSDHC3=5FDATA6		0x1d6
+			MX8MM=5FIOMUXC=5FNAND=5FDATA04=5FUSDHC3=5FDATA0		0x1d6
+			MX8MM=5FIOMUXC=5FNAND=5FDATA05=5FUSDHC3=5FDATA1		0x1d6
+			MX8MM=5FIOMUXC=5FNAND=5FDATA06=5FUSDHC3=5FDATA2		0x1d6
+			MX8MM=5FIOMUXC=5FNAND=5FDATA07=5FUSDHC3=5FDATA3		0x1d6
+			MX8MM=5FIOMUXC=5FNAND=5FRE=5FB=5FUSDHC3=5FDATA4		0x1d6
+			MX8MM=5FIOMUXC=5FNAND=5FWE=5FB=5FUSDHC3=5FCLK		0x196
+			MX8MM=5FIOMUXC=5FNAND=5FWP=5FB=5FUSDHC3=5FCMD		0x1d6
+		>;
+	};
+
+	pinctrl=5Fwdog: wdoggrp {
+		fsl,pins =3D <
+			MX8MM=5FIOMUXC=5FGPIO1=5FIO02=5FWDOG1=5FWDOG=5FB		0x26
+		>;
+	};
+};
--=20
2.25.1


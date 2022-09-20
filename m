Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5294D5BE224
	for <lists+devicetree@lfdr.de>; Tue, 20 Sep 2022 11:33:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229590AbiITJdu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Sep 2022 05:33:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231246AbiITJdo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Sep 2022 05:33:44 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEF1D13F3F
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 02:33:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1663666424; x=1695202424;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=K5iROaqmuZTrCp2cKiKRvhaSPdddfMNU1rnN4ZgvctY=;
  b=Dg6njZYBr3ndbY6njEahXYbVr/EvixTxqZ6YP83DMKHZvlvt/i5QSkxM
   Q4dwqQKyAGH+L9NdO77RLqPvorpBWW5ZBhu3D1Ih1eQqkKniZKAeVLoJe
   2CWCABB7rCVL2lTwYu1HQwcHd6j08SywR0MdMyiwNUN/OwavPbz5XR6QP
   ycj8LmKyGyMppTL3WFYLsiuHhJx5oWPkW1ww4l6xMsPGc/UEUmSKevW73
   ovlDgVwMLqwtxFPEB9fG6gzqp+E75u3+/nPxexK31djLA4vTxIEglJ29H
   DLjfMGm4bjwVYRHR+3Z4PhIyBsiuH3c/KgHAW6veilRwng2XMx9rNcZBS
   w==;
X-IronPort-AV: E=Sophos;i="5.93,330,1654585200"; 
   d="scan'208";a="174700575"
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 20 Sep 2022 02:33:44 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.12; Tue, 20 Sep 2022 02:33:39 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2507.12 via Frontend
 Transport; Tue, 20 Sep 2022 02:33:38 -0700
From:   Conor Dooley <conor.dooley@microchip.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor.dooley@microchip.com>,
        Daire McNamara <daire.mcnamara@microchip.com>
CC:     <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>
Subject: [PATCH v6] riscv: dts: microchip: add the mpfs' fabric clock control
Date:   Tue, 20 Sep 2022 10:31:55 +0100
Message-ID: <20220920093154.24765-1-conor.dooley@microchip.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The "fabric clocks" in current PolarFire SoC device trees are not
really fixed clocks. Their frequency is set by the bitstream, so having
them located in -fabric.dtsi is not a problem - they're just as "fixed"
as the IP blocks etc used in the FPGA fabric.
However, their configuration can be read at runtime (and to an extent
they can be controlled, although the intended usage is static
configurations set by the bitstream) through the system controller bus.

In the v2022.09 icicle kit reference design a single CCC (north-west
corner) is enabled, using a 50 MHz off-chip oscillator as its reference.

Updating to the v2022.09 icicle kit reference design is required, as
prior to this release, the CCC was not fixed & could change for any
given run of the synthesis tool.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
Claudiu has applied the rest of the series & sent a PR to Stephen for
it. Since v5, I've rebased this on top of the 2022.09 memory map
changes & made the PWM use the correct clock.

 .../dts/microchip/mpfs-icicle-kit-fabric.dtsi | 31 +++++++++---------
 .../boot/dts/microchip/mpfs-icicle-kit.dts    |  4 +++
 arch/riscv/boot/dts/microchip/mpfs.dtsi       | 32 +++++++++++++++++++
 3 files changed, 52 insertions(+), 15 deletions(-)

diff --git a/arch/riscv/boot/dts/microchip/mpfs-icicle-kit-fabric.dtsi b/arch/riscv/boot/dts/microchip/mpfs-icicle-kit-fabric.dtsi
index c2aac1a7e862..c196bbfc0c24 100644
--- a/arch/riscv/boot/dts/microchip/mpfs-icicle-kit-fabric.dtsi
+++ b/arch/riscv/boot/dts/microchip/mpfs-icicle-kit-fabric.dtsi
@@ -11,7 +11,7 @@ core_pwm0: pwm@40000000 {
 		reg = <0x0 0x40000000 0x0 0xF0>;
 		microchip,sync-update-mask = /bits/ 32 <0>;
 		#pwm-cells = <2>;
-		clocks = <&fabric_clk3>;
+		clocks = <&ccc_nw CLK_CCC_PLL0_OUT3>;
 		status = "disabled";
 	};
 
@@ -20,25 +20,13 @@ i2c2: i2c@40000200 {
 		reg = <0x0 0x40000200 0x0 0x1000>;
 		#address-cells = <1>;
 		#size-cells = <0>;
-		clocks = <&fabric_clk3>;
+		clocks = <&ccc_nw CLK_CCC_PLL0_OUT3>;
 		interrupt-parent = <&plic>;
 		interrupts = <122>;
 		clock-frequency = <100000>;
 		status = "disabled";
 	};
 
-	fabric_clk3: fabric-clk3 {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <50000000>;
-	};
-
-	fabric_clk1: fabric-clk1 {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <125000000>;
-	};
-
 	pcie: pcie@3000000000 {
 		compatible = "microchip,pcie-host-1.0";
 		#address-cells = <0x3>;
@@ -55,7 +43,7 @@ pcie: pcie@3000000000 {
 				<0 0 0 3 &pcie_intc 2>,
 				<0 0 0 4 &pcie_intc 3>;
 		interrupt-map-mask = <0 0 0 7>;
-		clocks = <&fabric_clk1>, <&fabric_clk3>;
+		clocks = <&ccc_nw CLK_CCC_PLL0_OUT1>, <&ccc_nw CLK_CCC_PLL0_OUT3>;
 		clock-names = "fic1", "fic3";
 		ranges = <0x3000000 0x0 0x8000000 0x30 0x8000000 0x0 0x80000000>;
 		dma-ranges = <0x02000000 0x0 0x00000000 0x0 0x00000000 0x1 0x00000000>;
@@ -68,4 +56,17 @@ pcie_intc: interrupt-controller {
 			interrupt-controller;
 		};
 	};
+
+	refclk_ccc: cccrefclk {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+	};
+};
+
+&ccc_nw {
+	clocks = <&refclk_ccc>, <&refclk_ccc>, <&refclk_ccc>, <&refclk_ccc>,
+		 <&refclk_ccc>, <&refclk_ccc>;
+	clock-names = "pll0_ref0", "pll0_ref1", "pll1_ref0", "pll1_ref1",
+		      "dll0_ref", "dll1_ref";
+	status = "okay";
 };
diff --git a/arch/riscv/boot/dts/microchip/mpfs-icicle-kit.dts b/arch/riscv/boot/dts/microchip/mpfs-icicle-kit.dts
index 5e2b8aa2ff64..bc3621df2e15 100644
--- a/arch/riscv/boot/dts/microchip/mpfs-icicle-kit.dts
+++ b/arch/riscv/boot/dts/microchip/mpfs-icicle-kit.dts
@@ -138,6 +138,10 @@ &refclk {
 	clock-frequency = <125000000>;
 };
 
+&refclk_ccc {
+	clock-frequency = <50000000>;
+};
+
 &rtc {
 	status = "okay";
 };
diff --git a/arch/riscv/boot/dts/microchip/mpfs.dtsi b/arch/riscv/boot/dts/microchip/mpfs.dtsi
index 8f463399a568..0a9bb84af438 100644
--- a/arch/riscv/boot/dts/microchip/mpfs.dtsi
+++ b/arch/riscv/boot/dts/microchip/mpfs.dtsi
@@ -236,6 +236,38 @@ clkcfg: clkcfg@20002000 {
 			#clock-cells = <1>;
 		};
 
+		ccc_se: clock-controller@38010000 {
+			compatible = "microchip,mpfs-ccc";
+			reg = <0x0 0x38010000 0x0 0x1000>, <0x0 0x38020000 0x0 0x1000>,
+			      <0x0 0x39010000 0x0 0x1000>, <0x0 0x39020000 0x0 0x1000>;
+			#clock-cells = <1>;
+			status = "disabled";
+		};
+
+		ccc_ne: clock-controller@38040000 {
+			compatible = "microchip,mpfs-ccc";
+			reg = <0x0 0x38040000 0x0 0x1000>, <0x0 0x38080000 0x0 0x1000>,
+			      <0x0 0x39040000 0x0 0x1000>, <0x0 0x39080000 0x0 0x1000>;
+			#clock-cells = <1>;
+			status = "disabled";
+		};
+
+		ccc_nw: clock-controller@38100000 {
+			compatible = "microchip,mpfs-ccc";
+			reg = <0x0 0x38100000 0x0 0x1000>, <0x0 0x38200000 0x0 0x1000>,
+			      <0x0 0x39100000 0x0 0x1000>, <0x0 0x39200000 0x0 0x1000>;
+			#clock-cells = <1>;
+			status = "disabled";
+		};
+
+		ccc_sw: clock-controller@38400000 {
+			compatible = "microchip,mpfs-ccc";
+			reg = <0x0 0x38400000 0x0 0x1000>, <0x0 0x38800000 0x0 0x1000>,
+			      <0x0 0x39400000 0x0 0x1000>, <0x0 0x39800000 0x0 0x1000>;
+			#clock-cells = <1>;
+			status = "disabled";
+		};
+
 		mmuart0: serial@20000000 {
 			compatible = "ns16550a";
 			reg = <0x0 0x20000000 0x0 0x400>;
-- 
2.37.3


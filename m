Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CF8DD59B006
	for <lists+devicetree@lfdr.de>; Sat, 20 Aug 2022 21:49:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229735AbiHTTst (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 20 Aug 2022 15:48:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229600AbiHTTss (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 20 Aug 2022 15:48:48 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E71B6220C3
        for <devicetree@vger.kernel.org>; Sat, 20 Aug 2022 12:48:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
        Message-Id:Date:Subject:Cc:To:From:From:Sender:Reply-To:Subject:Date:
        Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=9c/m3HYF5objKw9/G2hjUYwRsYS3THqF8Se7/W8r5Hw=; b=4S2rbcbD73PjCugdvWpxHnHnCT
        IWk/0UbGcn49JBH8tepmrjKiC8wLtyVR+1ZX/U+i/z8MLjHSSKeMmWGJWKWBwS1/mMVxRzVWvuYJB
        TOM5FgE5hYGcrYTp7N9ThHxY0h/uNcu1fbGngm0LWiS7isX3lretfVYURsw7Rg9ggzY8=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1oPUSL-00E48d-SX; Sat, 20 Aug 2022 21:48:29 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Gregory Clement <gregory.clement@bootlin.com>
Cc:     arm-soc <arm@kernel.org>, Device Tree <devicetree@vger.kernel.org>,
        Andrew Lunn <andrew@lunn.ch>
Subject: [PATCH 11/11] DT: clock: Convert mvebu-gated-clock.txt to YAML
Date:   Sat, 20 Aug 2022 21:48:04 +0200
Message-Id: <20220820194804.3352415-12-andrew@lunn.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220820194804.3352415-1-andrew@lunn.ch>
References: <20220820194804.3352415-1-andrew@lunn.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Signed-off-by: Andrew Lunn <andrew@lunn.ch>
---
 .../clock/marvell,kirkwood-gating-clock.yaml  | 230 ++++++++++++++++++
 .../bindings/clock/mvebu-gated-clock.txt      | 205 ----------------
 2 files changed, 230 insertions(+), 205 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/marvell,kirkwood-gating-clock.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/mvebu-gated-clock.txt

diff --git a/Documentation/devicetree/bindings/clock/marvell,kirkwood-gating-clock.yaml b/Documentation/devicetree/bindings/clock/marvell,kirkwood-gating-clock.yaml
new file mode 100644
index 000000000000..b420a2c2a8d3
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/marvell,kirkwood-gating-clock.yaml
@@ -0,0 +1,230 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/marvell,kirkwood-gating-clock.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Marvel Gating Clock Device Tree Bindings
+
+maintainers:
+  - Andrew Lunn <andrew@lunn.ch>
+
+# Marvell Armada 370/375/380/385/39x/XP, Dove and Kirkwood allow some
+# peripheral clocks to be gated to save some power. The clock consumer
+# should specify the desired clock by having the clock ID in its
+# "clocks" phandle cell. The clock ID is directly mapped to the
+# corresponding clock gating control bit in HW to ease manual clock
+# lookup in datasheet.
+#
+# The following is a list of provided IDs for Armada 370:
+# ID	Clock	Peripheral
+# -----------------------------------
+# 0	Audio	AC97 Cntrl
+# 1	pex0_en	PCIe 0 Clock out
+# 2	pex1_en	PCIe 1 Clock out
+# 3	ge1	Gigabit Ethernet 1
+# 4	ge0	Gigabit Ethernet 0
+# 5	pex0	PCIe Cntrl 0
+# 9	pex1	PCIe Cntrl 1
+# 15	sata0	SATA Host 0
+# 17	sdio	SDHCI Host
+# 23	crypto	CESA (crypto engine)
+# 25	tdm	Time Division Mplx
+# 28	ddr	DDR Cntrl
+# 30	sata1	SATA Host 0
+#
+# The following is a list of provided IDs for Armada 375:
+# ID	Clock		Peripheral
+# -----------------------------------
+# 2	mu		Management Unit
+# 3	pp		Packet Processor
+# 4	ptp		PTP
+# 5	pex0		PCIe 0 Clock out
+# 6	pex1		PCIe 1 Clock out
+# 8	audio		Audio Cntrl
+# 11	nd_clk		Nand Flash Cntrl
+# 14	sata0_link	SATA 0 Link
+# 15	sata0_core	SATA 0 Core
+# 16	usb3		USB3 Host
+# 17	sdio		SDHCI Host
+# 18	usb		USB Host
+# 19	gop		Gigabit Ethernet MAC
+# 20	sata1_link	SATA 1 Link
+# 21	sata1_core	SATA 1 Core
+# 22	xor0		XOR DMA 0
+# 23	xor1		XOR DMA 0
+# 24	copro		Coprocessor
+# 25	tdm		Time Division Mplx
+# 28	crypto0_enc	Cryptographic Unit Port 0 Encryption
+# 29	crypto0_core	Cryptographic Unit Port 0 Core
+# 30	crypto1_enc	Cryptographic Unit Port 1 Encryption
+# 31	crypto1_core	Cryptographic Unit Port 1 Core
+#
+# The following is a list of provided IDs for Armada 380/385:
+# ID	Clock		Peripheral
+# -----------------------------------
+# 0	audio		Audio
+# 2	ge2		Gigabit Ethernet 2
+# 3	ge1		Gigabit Ethernet 1
+# 4	ge0		Gigabit Ethernet 0
+# 5	pex1		PCIe 1
+# 6	pex2		PCIe 2
+# 7	pex3		PCIe 3
+# 8	pex0		PCIe 0
+# 9	usb3h0		USB3 Host 0
+# 10	usb3h1		USB3 Host 1
+# 11	usb3d		USB3 Device
+# 13	bm		Buffer Management
+# 14	crypto0z	Cryptographic 0 Z
+# 15	sata0		SATA 0
+# 16	crypto1z	Cryptographic 1 Z
+# 17	sdio		SDIO
+# 18	usb2		USB 2
+# 21	crypto1		Cryptographic 1
+# 22	xor0		XOR 0
+# 23	crypto0		Cryptographic 0
+# 25	tdm		Time Division Multiplexing
+# 28	xor1		XOR 1
+# 30	sata1		SATA 1
+#
+# The following is a list of provided IDs for Armada 39x:
+# ID	Clock		Peripheral
+# -----------------------------------
+# 5	pex1		PCIe 1
+# 6	pex2		PCIe 2
+# 7	pex3		PCIe 3
+# 8	pex0		PCIe 0
+# 9	usb3h0		USB3 Host 0
+# 10	usb3h1		USB3 Host 1
+# 15	sata0		SATA 0
+# 17	sdio		SDIO
+# 22	xor0		XOR 0
+# 28	xor1		XOR 1
+#
+# The following is a list of provided IDs for Armada XP:
+# ID	Clock	Peripheral
+# -----------------------------------
+# 0	audio	Audio Cntrl
+# 1	ge3	Gigabit Ethernet 3
+# 2	ge2	Gigabit Ethernet 2
+# 3	ge1	Gigabit Ethernet 1
+# 4	ge0	Gigabit Ethernet 0
+# 5	pex0	PCIe Cntrl 0
+# 6	pex1	PCIe Cntrl 1
+# 7	pex2	PCIe Cntrl 2
+# 8	pex3	PCIe Cntrl 3
+# 13	bp
+# 14	sata0lnk
+# 15	sata0	SATA Host 0
+# 16	lcd	LCD Cntrl
+# 17	sdio	SDHCI Host
+# 18	usb0	USB Host 0
+# 19	usb1	USB Host 1
+# 20	usb2	USB Host 2
+# 22	xor0	XOR DMA 0
+# 23	crypto	CESA engine
+# 25	tdm	Time Division Mplx
+# 28	xor1	XOR DMA 1
+# 29	sata1lnk
+# 30	sata1	SATA Host 1
+#
+# The following is a list of provided IDs for 98dx3236:
+# ID	Clock	Peripheral
+# -----------------------------------
+# 3	ge1	Gigabit Ethernet 1
+# 4	ge0	Gigabit Ethernet 0
+# 5	pex0	PCIe Cntrl 0
+# 17	sdio	SDHCI Host
+# 18	usb0	USB Host 0
+# 22	xor0	XOR DMA 0
+#
+# The following is a list of provided IDs for Dove:
+# ID	Clock	Peripheral
+# -----------------------------------
+# 0	usb0	USB Host 0
+# 1	usb1	USB Host 1
+# 2	ge	Gigabit Ethernet
+# 3	sata	SATA Host
+# 4	pex0	PCIe Cntrl 0
+# 5	pex1	PCIe Cntrl 1
+# 8	sdio0	SDHCI Host 0
+# 9	sdio1	SDHCI Host 1
+# 10	nand	NAND Cntrl
+# 11	camera	Camera Cntrl
+# 12	i2s0	I2S Cntrl 0
+# 13	i2s1	I2S Cntrl 1
+# 15	crypto	CESA engine
+# 21	ac97	AC97 Cntrl
+# 22	pdma	Peripheral DMA
+# 23	xor0	XOR DMA 0
+# 24	xor1	XOR DMA 1
+# 30	gephy	Gigabit Ethernel PHY
+# Note: gephy(30) is implemented as a parent clock of ge(2)
+#
+# The following is a list of provided IDs for Kirkwood:
+# ID	Clock	Peripheral
+# -----------------------------------
+# 0	ge0	Gigabit Ethernet 0
+# 2	pex0	PCIe Cntrl 0
+# 3	usb0	USB Host 0
+# 4	sdio	SDIO Cntrl
+# 5	tsu	Transp. Stream Unit
+# 6	dunit	SDRAM Cntrl
+# 7	runit	Runit
+# 8	xor0	XOR DMA 0
+# 9	audio	I2S Cntrl 0
+# 14	sata0	SATA Host 0
+# 15	sata1	SATA Host 1
+# 16	xor1	XOR DMA 1
+# 17	crypto	CESA engine
+# 18	pex1	PCIe Cntrl 1
+# 19	ge1	Gigabit Ethernet 1
+# 20	tdm	Time Division Mplx
+#
+#
+
+properties:
+  compatible:
+    enum:
+      - marvell,armada-370-gating-clock
+      - marvell,armada-375-gating-clock
+      - marvell,armada-380-gating-clock
+      - marvell,armada-390-gating-clock
+      - marvell,armada-xp-gating-clock
+      - marvell,mv98dx3236-gating-clock
+      - marvell,dove-gating-clock
+      - marvell,kirkwood-gating-clock
+
+  reg:
+    description:
+      Shall be the register address of the Clock Gating Control register
+    maxItems: 1
+
+  "#clock-cells":
+    const: 1
+    description:
+      This additional argument passed to that clock is the offset of
+      the bit controlling this particular gate in the register.
+
+  clocks:
+    description:
+      default parent clock phandle (e.g. tclk)
+    maxItems: 1
+
+required:
+  - "#clock-cells"
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    gate_clk: clock-gating-control@d0038 {
+      compatible = "marvell,dove-gating-clock";
+      reg = <0xd0038 0x4>;
+      /* default parent clock is tclk */
+      clocks = <&core_clk 0>;
+      #clock-cells = <1>;
+    };
+...
diff --git a/Documentation/devicetree/bindings/clock/mvebu-gated-clock.txt b/Documentation/devicetree/bindings/clock/mvebu-gated-clock.txt
deleted file mode 100644
index de562da2ae77..000000000000
--- a/Documentation/devicetree/bindings/clock/mvebu-gated-clock.txt
+++ /dev/null
@@ -1,205 +0,0 @@
-* Gated Clock bindings for Marvell EBU SoCs
-
-Marvell Armada 370/375/380/385/39x/XP, Dove and Kirkwood allow some
-peripheral clocks to be gated to save some power. The clock consumer
-should specify the desired clock by having the clock ID in its
-"clocks" phandle cell. The clock ID is directly mapped to the
-corresponding clock gating control bit in HW to ease manual clock
-lookup in datasheet.
-
-The following is a list of provided IDs for Armada 370:
-ID	Clock	Peripheral
------------------------------------
-0	Audio	AC97 Cntrl
-1	pex0_en	PCIe 0 Clock out
-2	pex1_en	PCIe 1 Clock out
-3	ge1	Gigabit Ethernet 1
-4	ge0	Gigabit Ethernet 0
-5	pex0	PCIe Cntrl 0
-9	pex1	PCIe Cntrl 1
-15	sata0	SATA Host 0
-17	sdio	SDHCI Host
-23	crypto	CESA (crypto engine)
-25	tdm	Time Division Mplx
-28	ddr	DDR Cntrl
-30	sata1	SATA Host 0
-
-The following is a list of provided IDs for Armada 375:
-ID	Clock		Peripheral
------------------------------------
-2	mu		Management Unit
-3	pp		Packet Processor
-4	ptp		PTP
-5	pex0		PCIe 0 Clock out
-6	pex1		PCIe 1 Clock out
-8	audio		Audio Cntrl
-11	nd_clk		Nand Flash Cntrl
-14	sata0_link	SATA 0 Link
-15	sata0_core	SATA 0 Core
-16	usb3		USB3 Host
-17	sdio		SDHCI Host
-18	usb		USB Host
-19	gop		Gigabit Ethernet MAC
-20	sata1_link	SATA 1 Link
-21	sata1_core	SATA 1 Core
-22	xor0		XOR DMA 0
-23	xor1		XOR DMA 0
-24	copro		Coprocessor
-25	tdm		Time Division Mplx
-28	crypto0_enc	Cryptographic Unit Port 0 Encryption
-29	crypto0_core	Cryptographic Unit Port 0 Core
-30	crypto1_enc	Cryptographic Unit Port 1 Encryption
-31	crypto1_core	Cryptographic Unit Port 1 Core
-
-The following is a list of provided IDs for Armada 380/385:
-ID	Clock		Peripheral
------------------------------------
-0	audio		Audio
-2	ge2		Gigabit Ethernet 2
-3	ge1		Gigabit Ethernet 1
-4	ge0		Gigabit Ethernet 0
-5	pex1		PCIe 1
-6	pex2		PCIe 2
-7	pex3		PCIe 3
-8	pex0		PCIe 0
-9	usb3h0		USB3 Host 0
-10	usb3h1		USB3 Host 1
-11	usb3d		USB3 Device
-13	bm		Buffer Management
-14	crypto0z	Cryptographic 0 Z
-15	sata0		SATA 0
-16	crypto1z	Cryptographic 1 Z
-17	sdio		SDIO
-18	usb2		USB 2
-21	crypto1		Cryptographic 1
-22	xor0		XOR 0
-23	crypto0		Cryptographic 0
-25	tdm		Time Division Multiplexing
-28	xor1		XOR 1
-30	sata1		SATA 1
-
-The following is a list of provided IDs for Armada 39x:
-ID	Clock		Peripheral
------------------------------------
-5	pex1		PCIe 1
-6	pex2		PCIe 2
-7	pex3		PCIe 3
-8	pex0		PCIe 0
-9	usb3h0		USB3 Host 0
-10	usb3h1		USB3 Host 1
-15	sata0		SATA 0
-17	sdio		SDIO
-22	xor0		XOR 0
-28	xor1		XOR 1
-
-The following is a list of provided IDs for Armada XP:
-ID	Clock	Peripheral
------------------------------------
-0	audio	Audio Cntrl
-1	ge3	Gigabit Ethernet 3
-2	ge2	Gigabit Ethernet 2
-3	ge1	Gigabit Ethernet 1
-4	ge0	Gigabit Ethernet 0
-5	pex0	PCIe Cntrl 0
-6	pex1	PCIe Cntrl 1
-7	pex2	PCIe Cntrl 2
-8	pex3	PCIe Cntrl 3
-13	bp
-14	sata0lnk
-15	sata0	SATA Host 0
-16	lcd	LCD Cntrl
-17	sdio	SDHCI Host
-18	usb0	USB Host 0
-19	usb1	USB Host 1
-20	usb2	USB Host 2
-22	xor0	XOR DMA 0
-23	crypto	CESA engine
-25	tdm	Time Division Mplx
-28	xor1	XOR DMA 1
-29	sata1lnk
-30	sata1	SATA Host 1
-
-The following is a list of provided IDs for 98dx3236:
-ID	Clock	Peripheral
------------------------------------
-3	ge1	Gigabit Ethernet 1
-4	ge0	Gigabit Ethernet 0
-5	pex0	PCIe Cntrl 0
-17	sdio	SDHCI Host
-18	usb0	USB Host 0
-22	xor0	XOR DMA 0
-
-The following is a list of provided IDs for Dove:
-ID	Clock	Peripheral
------------------------------------
-0	usb0	USB Host 0
-1	usb1	USB Host 1
-2	ge	Gigabit Ethernet
-3	sata	SATA Host
-4	pex0	PCIe Cntrl 0
-5	pex1	PCIe Cntrl 1
-8	sdio0	SDHCI Host 0
-9	sdio1	SDHCI Host 1
-10	nand	NAND Cntrl
-11	camera	Camera Cntrl
-12	i2s0	I2S Cntrl 0
-13	i2s1	I2S Cntrl 1
-15	crypto	CESA engine
-21	ac97	AC97 Cntrl
-22	pdma	Peripheral DMA
-23	xor0	XOR DMA 0
-24	xor1	XOR DMA 1
-30	gephy	Gigabit Ethernel PHY
-Note: gephy(30) is implemented as a parent clock of ge(2)
-
-The following is a list of provided IDs for Kirkwood:
-ID	Clock	Peripheral
------------------------------------
-0	ge0	Gigabit Ethernet 0
-2	pex0	PCIe Cntrl 0
-3	usb0	USB Host 0
-4	sdio	SDIO Cntrl
-5	tsu	Transp. Stream Unit
-6	dunit	SDRAM Cntrl
-7	runit	Runit
-8	xor0	XOR DMA 0
-9	audio	I2S Cntrl 0
-14	sata0	SATA Host 0
-15	sata1	SATA Host 1
-16	xor1	XOR DMA 1
-17	crypto	CESA engine
-18	pex1	PCIe Cntrl 1
-19	ge1	Gigabit Ethernet 1
-20	tdm	Time Division Mplx
-
-Required properties:
-- compatible : shall be one of the following:
-	"marvell,armada-370-gating-clock" - for Armada 370 SoC clock gating
-	"marvell,armada-375-gating-clock" - for Armada 375 SoC clock gating
-	"marvell,armada-380-gating-clock" - for Armada 380/385 SoC clock gating
-	"marvell,armada-390-gating-clock" - for Armada 39x SoC clock gating
-	"marvell,armada-xp-gating-clock" - for Armada XP SoC clock gating
-	"marvell,mv98dx3236-gating-clock" - for 98dx3236 SoC clock gating
-	"marvell,dove-gating-clock" - for Dove SoC clock gating
-	"marvell,kirkwood-gating-clock" - for Kirkwood SoC clock gating
-- reg : shall be the register address of the Clock Gating Control register
-- #clock-cells : from common clock binding; shall be set to 1
-
-Optional properties:
-- clocks : default parent clock phandle (e.g. tclk)
-
-Example:
-
-gate_clk: clock-gating-control@d0038 {
-	compatible = "marvell,dove-gating-clock";
-	reg = <0xd0038 0x4>;
-	/* default parent clock is tclk */
-	clocks = <&core_clk 0>;
-	#clock-cells = <1>;
-};
-
-sdio0: sdio@92000 {
-	compatible = "marvell,dove-sdhci";
-	/* get clk gate bit 8 (sdio0) */
-	clocks = <&gate_clk 8>;
-};
-- 
2.37.2


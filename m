Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7ED8C25EB3B
	for <lists+devicetree@lfdr.de>; Sun,  6 Sep 2020 00:06:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728687AbgIEWGn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Sep 2020 18:06:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728327AbgIEWGm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Sep 2020 18:06:42 -0400
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8033C061244
        for <devicetree@vger.kernel.org>; Sat,  5 Sep 2020 15:06:41 -0700 (PDT)
Received: by mail-ej1-x643.google.com with SMTP id z22so13064973ejl.7
        for <devicetree@vger.kernel.org>; Sat, 05 Sep 2020 15:06:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BavnvCOxCzZQWtTTkCSljzYGcq3QfkyQfjPqMyH/um0=;
        b=UYAITV0W1DYaNHpWZrAI5PQd8ii+Db/ix5/oW3X8cicrm4SibCDv+2GmDq0prlf7Iq
         hc/W1SWWzKuCBWBfIE6BK0++BY1QX7OuF4sAcL+vJHnZBz+1oaP02lbM5EiAybg2SewQ
         6Bns++VSTe4qIy5BHaGEYc8C7FkbCOGAAv1kOylCC6vEpTKQef5psTjNR26XxYcVEx2A
         j6EDI6SN5cxqfgkGFiAIoumpAz/OIxIICLSzwbEn5fBoGu2DQ1kMufWvz6tA0IHqMMVM
         x59lOj0/N19E2R4BmSZUV83dwVjONkGi8XVaM1BwzfTubuuSfh6/KGmePNIi/TnpcgpI
         EQ6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BavnvCOxCzZQWtTTkCSljzYGcq3QfkyQfjPqMyH/um0=;
        b=B/5Z2FPkrLYrbFjuFDT0F6A++OGMcS0yRIJxkmOg/JDuP70oVh8q+Ubzet7qlZui+y
         Y3i92lyzAo6Duj9zfsnxHD/qo5DJbDVxBk5RitEh4wU8fu9WsauSC22g14mDzfoie4cg
         gnXonyzklNNle/8kmMRWANpu0sPkSG+YBjGQi6nix3xwYfaoN6pbocTcS2opF4fJzVtN
         CFlDaPAw1V/GdTwXA1GSvUNFw6xpm9Y4sFcNmzs0chIWQ+kIWXrgVRnpW3tQukkzfAn4
         7QjHeM8Co1kl4M4R0LsVDiAOvcmqdBTfHp+yxKnlxRJuIlfQ6+CVg0tTjaQoE4q8Bvr5
         fGYg==
X-Gm-Message-State: AOAM533vsZj/6MElb4v7zIOZMdH59lGPkRITZVh2w05/JVtkfbZwft8X
        BcREB/wrUTMJlkkBTPyxnGc=
X-Google-Smtp-Source: ABdhPJynLU0TiIQOIIrLDatln7rFwHorPgXqTYId57R/MmQEhk9I8lsFlVzY1iwbL92yrAHyAK/7fw==
X-Received: by 2002:a17:906:3191:: with SMTP id 17mr13640009ejy.239.1599343600131;
        Sat, 05 Sep 2020 15:06:40 -0700 (PDT)
Received: from debian64.daheim (pd9e292e7.dip0.t-ipconnect.de. [217.226.146.231])
        by smtp.gmail.com with ESMTPSA id gw6sm10399802ejb.47.2020.09.05.15.06.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Sep 2020 15:06:39 -0700 (PDT)
Received: from chuck by debian64.daheim with local (Exim 4.94)
        (envelope-from <chunkeey@gmail.com>)
        id 1kEgKG-000FIn-Ot; Sun, 06 Sep 2020 00:06:24 +0200
From:   Christian Lamparter <chunkeey@gmail.com>
To:     linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org
Cc:     Chris Blake <chrisrblake93@gmail.com>,
        Paul Mackerras <paulus@samba.org>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 2/5] powerpc: apm82181: create shared dtsi for APM bluestone
Date:   Sun,  6 Sep 2020 00:06:12 +0200
Message-Id: <47109d80c7bd481c7747c949e8a3ecd498d9c039.1599343429.git.chunkeey@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <cover.1599343429.git.chunkeey@gmail.com>
References: <cover.1599343429.git.chunkeey@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds an DTSI-File that can be used by various device-tree
files for APM82181-based devices.

Some of the nodes (like UART, PCIE, SATA) are used by the uboot and
need to stick with the naming-conventions of the old times'.
I've added comments whenever this was the case.

Signed-off-by: Chris Blake <chrisrblake93@gmail.com>
Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
---
rfc v1 -> v2:
	- removed PKA (this CryptoPU will need driver)
	- stick with compatibles, nodes, ... from either
	  Bluestone (APM82181) or Canyonlands (PPC460EX).
	- add labels for NAND and NOR to help with access.
v2 -> v3:
	- nodename of pciex@d.... was changed to pcie@d..
	  due to upstream patch.
	- use simple-bus on the ebc, opb and plb nodes
---
 arch/powerpc/boot/dts/apm82181.dtsi | 466 ++++++++++++++++++++++++++++
 1 file changed, 466 insertions(+)
 create mode 100644 arch/powerpc/boot/dts/apm82181.dtsi

diff --git a/arch/powerpc/boot/dts/apm82181.dtsi b/arch/powerpc/boot/dts/apm82181.dtsi
new file mode 100644
index 000000000000..60283430978d
--- /dev/null
+++ b/arch/powerpc/boot/dts/apm82181.dtsi
@@ -0,0 +1,466 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Device Tree template include for various APM82181 boards.
+ *
+ * The SoC is an evolution of the PPC460EX predecessor.
+ * This is why dt-nodes from the canyonlands EBC, OPB, USB,
+ * DMA, SATA, EMAC, ... ended up in here.
+ *
+ * Copyright (c) 2010, Applied Micro Circuits Corporation
+ * Author: Tirumala R Marri <tmarri@apm.com>,
+ *	   Christian Lamparter <chunkeey@gmail.com>,
+ *	   Chris Blake <chrisrblake93@gmail.com>
+ */
+
+#include <dt-bindings/dma/dw-dmac.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	#address-cells = <2>;
+	#size-cells = <1>;
+	dcr-parent = <&{/cpus/cpu@0}>;
+
+	aliases {
+		ethernet0 = &EMAC0; /* needed for BSP u-boot */
+	};
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		CPU0: cpu@0 {
+			device_type = "cpu";
+			model = "PowerPC,apm82181";
+			reg = <0x00000000>;
+			clock-frequency = <0>; /* Filled in by U-Boot */
+			timebase-frequency = <0>; /* Filled in by U-Boot */
+			i-cache-line-size = <32>;
+			d-cache-line-size = <32>;
+			i-cache-size = <32768>;
+			d-cache-size = <32768>;
+			dcr-controller;
+			dcr-access-method = "native";
+			next-level-cache = <&L2C0>;
+		};
+	};
+
+	memory {
+		device_type = "memory";
+		reg = <0x00000000 0x00000000 0x00000000>; /* Filled in by U-Boot */
+	};
+
+	UIC0: interrupt-controller0 {
+		compatible = "apm,uic-apm82181", "ibm,uic";
+		interrupt-controller;
+		cell-index = <0>;
+		dcr-reg = <0x0c0 0x009>;
+		#address-cells = <0>;
+		#size-cells = <0>;
+		#interrupt-cells = <2>;
+	};
+
+	UIC1: interrupt-controller1 {
+		compatible = "apm,uic-apm82181", "ibm,uic";
+		interrupt-controller;
+		cell-index = <1>;
+		dcr-reg = <0x0d0 0x009>;
+		#address-cells = <0>;
+		#size-cells = <0>;
+		#interrupt-cells = <2>;
+		interrupts = <0x1e IRQ_TYPE_LEVEL_HIGH>,
+			     <0x1f IRQ_TYPE_LEVEL_HIGH>; /* cascade */
+		interrupt-parent = <&UIC0>;
+	};
+
+	UIC2: interrupt-controller2 {
+		compatible = "apm,uic-apm82181", "ibm,uic";
+		interrupt-controller;
+		cell-index = <2>;
+		dcr-reg = <0x0e0 0x009>;
+		#address-cells = <0>;
+		#size-cells = <0>;
+		#interrupt-cells = <2>;
+		interrupts = <0x0a IRQ_TYPE_LEVEL_HIGH>,
+			     <0x0b IRQ_TYPE_LEVEL_HIGH>; /* cascade */
+		interrupt-parent = <&UIC0>;
+	};
+
+	UIC3: interrupt-controller3 {
+		compatible = "apm,uic-apm82181","ibm,uic";
+		interrupt-controller;
+		cell-index = <3>;
+		dcr-reg = <0x0f0 0x009>;
+		#address-cells = <0>;
+		#size-cells = <0>;
+		#interrupt-cells = <2>;
+		interrupts = <0x10 IRQ_TYPE_LEVEL_HIGH>,
+			     <0x11 IRQ_TYPE_LEVEL_HIGH>; /* cascade */
+		interrupt-parent = <&UIC0>;
+	};
+
+	OCM: ocm@400040000 {
+		compatible = "ibm,ocm";
+		status = "okay";
+		cell-index = <1>;
+		/* configured in U-Boot */
+		reg = <4 0x00040000 0x8000>; /* 32K */
+	};
+
+	SDR0: sdr {
+		compatible = "apm,sdr-apm821xx";
+		dcr-reg = <0x00e 0x002>;
+	};
+
+	CPR0: cpr {
+		compatible = "apm,cpr-apm821xx";
+		dcr-reg = <0x00c 0x002>;
+	};
+
+	L2C0: l2c {
+		compatible = "ibm,l2-cache-apm82181", "ibm,l2-cache";
+		dcr-reg = <0x020 0x008
+			   0x030 0x008>;
+		cache-line-size = <32>;
+		cache-size = <262144>;
+		interrupt-parent = <&UIC1>;
+		interrupts = <0xb IRQ_TYPE_EDGE_RISING>;
+	};
+
+	CPM0: cpm {
+		compatible = "ibm,cpm";
+		dcr-access-method = "native";
+		dcr-reg = <0x160 0x003>;
+		unused-units = <0x00000100>;
+		idle-doze = <0x02000000>;
+		standby = <0xfeff791d>;
+	};
+
+	plb {
+		compatible = "simple-bus"; /* PLB4 - Part of IBM's CoreConnect concept */
+		#address-cells = <2>;
+		#size-cells = <1>;
+		ranges; /* Filled in by U-Boot */
+		clock-frequency = <0>; /* Filled in by U-Boot */
+
+		SDRAM0: sdram {
+			compatible = "apm,sdram-apm82181", "ibm,sdram-460ex", "ibm,sdram-405gp";
+			dcr-reg = <0x010 0x002>;
+		};
+
+		HWRNG: trng@110000 {
+			compatible = "amcc,ppc460ex-rng", "ppc4xx-rng";
+			reg = <4 0x00110000 0x100>;
+			interrupt-parent = <&UIC1>;
+			interrupts = <0x03 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled"; /* hardware option */
+		};
+
+		CRYPTO: crypto@180000 {
+			compatible = "amcc,ppc460ex-crypto", "amcc,ppc4xx-crypto";
+			reg = <4 0x00180000 0x80400>;
+			interrupt-parent = <&UIC0>;
+			interrupts = <0x1d IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled"; /* hardware option */
+		};
+
+		MAL0: mcmal {
+			compatible = "ibm,mcmal-460ex", "ibm,mcmal2";
+			descriptor-memory = "ocm";
+			dcr-reg = <0x180 0x062>;
+			num-tx-chans = <1>;
+			num-rx-chans = <1>;
+			#address-cells = <0>;
+			#size-cells = <0>;
+			interrupt-parent = <&UIC2>;
+			interrupts = <0x06 IRQ_TYPE_LEVEL_HIGH>,
+				     <0x07 IRQ_TYPE_LEVEL_HIGH>,
+				     <0x03 IRQ_TYPE_LEVEL_HIGH>,
+				     <0x04 IRQ_TYPE_LEVEL_HIGH>,
+				     <0x05 IRQ_TYPE_LEVEL_HIGH>,
+				     <0x08 IRQ_TYPE_EDGE_FALLING>,
+				     <0x09 IRQ_TYPE_EDGE_FALLING>,
+				     <0x0c IRQ_TYPE_EDGE_FALLING>,
+				     <0x0d IRQ_TYPE_EDGE_FALLING>;
+			interrupt-names = "txeob", "rxeob", "serr",
+					  "txde", "rxde",
+					  "tx0coal", "tx1coal",
+					  "rx0coal", "rx1coal";
+		};
+
+		POB0: opb {
+			compatible = "simple-bus"; /* on-chip peripheral bus */
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0xb0000000 0x00000004 0xb0000000 0x50000000>;
+			clock-frequency = <0>; /* Filled in by U-Boot */
+
+			EBC0: ebc {
+				compatible = "simple-bus"; /* external bus controller */
+				dcr-reg = <0x012 0x002>;
+				#address-cells = <2>;
+				#size-cells = <1>;
+				clock-frequency = <0>; /* Filled in by U-Boot */
+				/* ranges property is supplied by U-Boot */
+				ranges = <0x00000003 0x00000000 0xe0000000 0x8000000>;
+				interrupts = <0x06 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-parent = <&UIC1>;
+
+				NOR: nor_flash@0,0 {
+					compatible = "cfi-flash";
+					bank-width = <1>;
+					reg = <0x00000000 0x00000000 0x00100000>;
+					#address-cells = <1>;
+					#size-cells = <1>;
+					status = "disabled";
+				};
+
+				NAND: ndfc@1,0 {
+					compatible = "ibm,ndfc";
+					reg = <00000003 00000000 00002000>;
+					ccr = <0x00001000>;
+					bank-settings = <0x80002222>;
+					status = "disabled";
+
+					nand {
+						#address-cells = <1>;
+						#size-cells = <1>;
+					};
+				};
+			};
+
+			UART0: serial@ef600300 {
+				/*
+				 * AMCC's BSP u-boot scans for the "ns16550"
+				 * compatible, without it, u-boot wouldn't
+				 * set the required "clock-frequency".
+				 *
+				 * The hardware documentation states:
+				 * "Register compatibility with 16750 register set"
+				 */
+				compatible = "ns16750", "ns16550";
+				reg = <0xef600300 0x00000008>;
+				virtual-reg = <0xef600300>;
+				clock-frequency = <0>; /* Filled in by U-Boot */
+				interrupt-parent = <&UIC1>;
+				interrupts = <0x01 IRQ_TYPE_LEVEL_HIGH>;
+				status = "disabled";
+			};
+
+			UART1: serial@ef600400 {
+				/* same "ns16750" as with UART0 */
+				compatible = "ns16750", "ns16550";
+				reg = <0xef600400 0x00000008>;
+				virtual-reg = <0xef600400>;
+				clock-frequency = <0>; /* Filled in by U-Boot */
+				interrupt-parent = <&UIC0>;
+				interrupts = <0x01 IRQ_TYPE_LEVEL_HIGH>;
+				status = "disabled";
+			};
+
+			IIC0: i2c@ef600700 {
+				compatible = "ibm,iic";
+				reg = <0xef600700 0x00000014>;
+				interrupt-parent = <&UIC0>;
+				interrupts = <0x02 IRQ_TYPE_LEVEL_HIGH>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				status = "disabled";
+			};
+
+			IIC1: i2c@ef600800 {
+				compatible = "ibm,iic";
+				reg = <0xef600800 0x00000014>;
+				interrupt-parent = <&UIC0>;
+				interrupts = <0x03 IRQ_TYPE_LEVEL_HIGH>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				status = "disabled";
+			};
+
+			GPIO0: gpio@ef600b00 {
+				compatible = "ibm,ppc4xx-gpio";
+				reg = <0xef600b00 0x00000048>;
+				#gpio-cells = <2>;
+				gpio-controller;
+				status = "disabled";
+			};
+
+			EMAC0: ethernet@ef600c00 {
+				device_type = "network";
+				compatible = "ibm,emac-apm821xx", "ibm,emac4sync";
+				interrupt-parent = <&EMAC0>;
+				interrupts = <0x0 0x1>;
+				#interrupt-cells = <1>;
+				#address-cells = <0>;
+				#size-cells = <0>;
+				interrupt-map = <0 &UIC2 0x10 IRQ_TYPE_LEVEL_HIGH>,
+						<1 &UIC2 0x14 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-names = "status", "wake";
+
+				reg = <0xef600c00 0x000000c4>;
+				local-mac-address = [000000000000]; /* Filled in by U-Boot */
+				mal-device = <&MAL0>;
+				mal-tx-channel = <0>;
+				mal-rx-channel = <0>;
+				cell-index = <0>;
+				max-frame-size = <9000>;
+				rx-fifo-size = <16384>;
+				tx-fifo-size = <2048>;
+				phy-mode = "rgmii";
+				phy-map = <0x00000000>;
+				rgmii-device = <&RGMII0>;
+				rgmii-channel = <0>;
+				tah-device = <&TAH0>;
+				tah-channel = <0>;
+				has-inverted-stacr-oc;
+				has-new-stacr-staopc;
+				status = "disabled";
+			};
+
+			TAH0: emac-tah@ef601350 {
+				compatible = "ibm,tah";
+				reg = <0xef601350 0x00000030>;
+			};
+
+			RGMII0: emac-rgmii@ef601500 {
+				compatible = "ibm,rgmii";
+				reg = <0xef601500 0x00000008>;
+				has-mdio;
+			};
+		};
+
+		USBOTG0: usbotg@bff80000 {
+			compatible = "amcc,dwc-otg";
+			reg = <4 0xbff80000 0x10000>;
+			interrupt-parent = <&USBOTG0>;
+			interrupts = <0 1 2>;
+			#interrupt-cells = <1>;
+			#address-cells = <0>;
+			#size-cells = <0>;
+			interrupt-map = <0 &UIC2 0x1c IRQ_TYPE_LEVEL_HIGH>,
+					<1 &UIC1 0x1a IRQ_TYPE_LEVEL_LOW>,
+					<2 &UIC0 0x0c IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "usb-otg", "high-power", "dma";
+			dr_mode = "host";
+			status = "disabled";
+		};
+
+		AHBDMA0: dma@bffd0800 {
+			compatible = "snps,dma-spear1340";
+			reg = <4 0xbffd0800 0x400>;
+			interrupt-parent = <&UIC0>;
+			interrupts = <0x19 IRQ_TYPE_LEVEL_HIGH>;
+			#dma-cells = <3>;
+
+			dma-channels = <2>;
+			dma-masters = <3>;
+			block_size = <4095>;
+			data-width = <4>, <4>, <4>;
+			multi-block = <1>, <1>;
+
+			chan_allocation_order = <1>;
+			chan_priority = <1>;
+
+			snps,dma-protection-control =
+				<(DW_DMAC_HPROT1_PRIVILEGED_MODE |
+				  DW_DMAC_HPROT2_BUFFERABLE)>;
+			is_memcpy;
+		};
+
+		SATA0: sata@bffd1000 {
+			compatible = "amcc,sata-460ex";
+			reg = <4 0xbffd1000 0x800>;
+			interrupt-parent = <&UIC0>;
+			interrupts = <0x1a IRQ_TYPE_LEVEL_HIGH>;
+			dmas = <&AHBDMA0 0 0 1>;
+			dma-names = "sata-dma";
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		SATA1: sata@bffd1800 {
+			compatible = "amcc,sata-460ex";
+			reg = <4 0xbffd1800 0x800>;
+			interrupt-parent = <&UIC0>;
+			interrupts = <0x1b IRQ_TYPE_LEVEL_HIGH>;
+			dmas = <&AHBDMA0 1 0 2>;
+			dma-names = "sata-dma";
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		MSI: ppc4xx-msi@c10000000 {
+			compatible = "amcc,ppc4xx-msi", "ppc4xx-msi";
+			reg = <0xc 0x10000000 0x100
+			       0xc 0x10000000 0x100>;
+			sdr-base = <0x36C>;
+			msi-data = <0x00004440>;
+			msi-mask = <0x0000ffe0>;
+			interrupts =<0 1 2 3 4 5 6 7>;
+			interrupt-parent = <&MSI>;
+			#interrupt-cells = <1>;
+			#address-cells = <0>;
+			#size-cells = <0>;
+			msi-available-ranges = <0x0 0x100>;
+			interrupt-map =
+				<0 &UIC3 0x18 IRQ_TYPE_EDGE_RISING>,
+				<1 &UIC3 0x19 IRQ_TYPE_EDGE_RISING>,
+				<2 &UIC3 0x1a IRQ_TYPE_EDGE_RISING>,
+				<3 &UIC3 0x1b IRQ_TYPE_EDGE_RISING>,
+				<4 &UIC3 0x1c IRQ_TYPE_EDGE_RISING>,
+				<5 &UIC3 0x1d IRQ_TYPE_EDGE_RISING>,
+				<6 &UIC3 0x1e IRQ_TYPE_EDGE_RISING>,
+				<7 &UIC3 0x1f IRQ_TYPE_EDGE_RISING>;
+			status = "disabled";
+		};
+
+		PCIE0: pcie@d00000000 {
+			device_type = "pci"; /* see ppc4xx_pci_find_bridge */
+			#interrupt-cells = <1>;
+			#size-cells = <2>;
+			#address-cells = <3>;
+			compatible = "ibm,plb-pciex-apm821xx", "ibm,plb-pciex";
+			primary;
+			port = <0x0>; /* port number */
+			reg = <0x0000000d 0x00000000 0x20000000>, /* Config space access */
+			      <0x0000000c 0x08010000 0x00001000>; /* Registers */
+			dcr-reg = <0x100 0x020>;
+			sdr-base = <0x300>;
+
+			/*
+			 * Outbound ranges, one memory and one IO,
+			 * later cannot be changed
+			 */
+			ranges = <0x02000000 0x00000000 0x80000000 0x0000000e 0x00000000 0x00000000 0x80000000>,
+				 <0x02000000 0x00000000 0x00000000 0x0000000f 0x00000000 0x00000000 0x00100000>,
+				 <0x01000000 0x00000000 0x00000000 0x0000000f 0x80000000 0x00000000 0x00010000>;
+
+			/* Inbound 2GB range starting at 0 */
+			dma-ranges = <0x42000000 0x0 0x0 0x0 0x0 0x0 0x80000000>;
+
+			/* This drives busses 0x40 to 0x7f */
+			bus-range = <0x40 0x7f>;
+
+			/*
+			 * Legacy interrupts (note the weird polarity, the bridge seems
+			 * to invert PCIe legacy interrupts).
+			 * We are de-swizzling here because the numbers are actually for
+			 * port of the root complex virtual P2P bridge. But I want
+			 * to avoid putting a node for it in the tree, so the numbers
+			 * below are basically de-swizzled numbers.
+			 * The real slot is on idsel 0, so the swizzling is 1:1
+			 */
+			interrupt-map-mask = <0x0 0x0 0x0 0x7>;
+			interrupt-map =
+				<0x0 0x0 0x0 0x1 &UIC3 0x0c IRQ_TYPE_LEVEL_HIGH>, /* swizzled int A */
+				<0x0 0x0 0x0 0x2 &UIC3 0x0d IRQ_TYPE_LEVEL_HIGH>, /* swizzled int B */
+				<0x0 0x0 0x0 0x3 &UIC3 0x0e IRQ_TYPE_LEVEL_HIGH>, /* swizzled int C */
+				<0x0 0x0 0x0 0x4 &UIC3 0x0f IRQ_TYPE_LEVEL_HIGH>; /* swizzled int D */
+			status = "disabled";
+		};
+	};
+};
-- 
2.28.0


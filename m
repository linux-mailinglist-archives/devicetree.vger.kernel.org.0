Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 333F938C2F1
	for <lists+devicetree@lfdr.de>; Fri, 21 May 2021 11:21:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236166AbhEUJXA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 May 2021 05:23:00 -0400
Received: from szxga05-in.huawei.com ([45.249.212.191]:4568 "EHLO
        szxga05-in.huawei.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232774AbhEUJW4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 May 2021 05:22:56 -0400
Received: from dggems705-chm.china.huawei.com (unknown [172.30.72.58])
        by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4FmgyX4nQ9zqVJs;
        Fri, 21 May 2021 17:18:44 +0800 (CST)
Received: from dggpemm500006.china.huawei.com (7.185.36.236) by
 dggems705-chm.china.huawei.com (10.3.19.182) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Fri, 21 May 2021 17:21:31 +0800
Received: from thunder-town.china.huawei.com (10.174.177.72) by
 dggpemm500006.china.huawei.com (7.185.36.236) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Fri, 21 May 2021 17:21:30 +0800
From:   Zhen Lei <thunder.leizhen@huawei.com>
To:     Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>
CC:     Zhen Lei <thunder.leizhen@huawei.com>
Subject: [PATCH 1/1] arm64: dts: freescale: Separate each group of data in the property 'reg'
Date:   Fri, 21 May 2021 17:20:42 +0800
Message-ID: <20210521092042.8365-1-thunder.leizhen@huawei.com>
X-Mailer: git-send-email 2.26.0.windows.1
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [10.174.177.72]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 dggpemm500006.china.huawei.com (7.185.36.236)
X-CFilter-Loop: Reflected
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Do not write the 'reg' of multiple groups of data into a uint32 array,
use <> to separate them. Otherwise, the errors similar to the following
will be reported by reg.yaml.

arch/arm64/boot/dts/freescale/fsl-ls1012a-frdm.dt.yaml:
 soc: pcie@3400000:reg:0: \
 [0, 54525952, 0, 1048576, 64, 0, 0, 8192] is too long

Signed-off-by: Zhen Lei <thunder.leizhen@huawei.com>
---
 .../arm64/boot/dts/freescale/fsl-ls1012a.dtsi | 14 +++++------
 .../arm64/boot/dts/freescale/fsl-ls1028a.dtsi |  8 +++----
 .../arm64/boot/dts/freescale/fsl-ls1043a.dtsi | 12 +++++-----
 .../arm64/boot/dts/freescale/fsl-ls1046a.dtsi | 24 +++++++++----------
 .../arm64/boot/dts/freescale/fsl-ls1088a.dtsi | 24 +++++++++----------
 .../arm64/boot/dts/freescale/fsl-ls2080a.dtsi | 16 ++++++-------
 .../arm64/boot/dts/freescale/fsl-ls2088a.dtsi | 16 ++++++-------
 .../arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 24 +++++++++----------
 8 files changed, 69 insertions(+), 69 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi
index 9058cfa4980f273..054ae888d4f1306 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi
@@ -238,35 +238,35 @@ rtic@60000 {
 					     "fsl,sec-v4.0-rtic";
 				#address-cells = <1>;
 				#size-cells = <1>;
-				reg = <0x60000 0x100 0x60e00 0x18>;
+				reg = <0x60000 0x100>, <0x60e00 0x18>;
 				ranges = <0x0 0x60100 0x500>;
 
 				rtic_a: rtic-a@0 {
 					compatible = "fsl,sec-v5.4-rtic-memory",
 						     "fsl,sec-v5.0-rtic-memory",
 						     "fsl,sec-v4.0-rtic-memory";
-					reg = <0x00 0x20 0x100 0x100>;
+					reg = <0x00 0x20>, <0x100 0x100>;
 				};
 
 				rtic_b: rtic-b@20 {
 					compatible = "fsl,sec-v5.4-rtic-memory",
 						     "fsl,sec-v5.0-rtic-memory",
 						     "fsl,sec-v4.0-rtic-memory";
-					reg = <0x20 0x20 0x200 0x100>;
+					reg = <0x20 0x20>, <0x200 0x100>;
 				};
 
 				rtic_c: rtic-c@40 {
 					compatible = "fsl,sec-v5.4-rtic-memory",
 						     "fsl,sec-v5.0-rtic-memory",
 						     "fsl,sec-v4.0-rtic-memory";
-					reg = <0x40 0x20 0x300 0x100>;
+					reg = <0x40 0x20>, <0x300 0x100>;
 				};
 
 				rtic_d: rtic-d@60 {
 					compatible = "fsl,sec-v5.4-rtic-memory",
 						     "fsl,sec-v5.0-rtic-memory",
 						     "fsl,sec-v4.0-rtic-memory";
-					reg = <0x60 0x20 0x400 0x100>;
+					reg = <0x60 0x20>, <0x400 0x100>;
 				};
 			};
 		};
@@ -522,8 +522,8 @@ msi: msi-controller1@1572000 {
 
 		pcie1: pcie@3400000 {
 			compatible = "fsl,ls1012a-pcie";
-			reg = <0x00 0x03400000 0x0 0x00100000   /* controller registers */
-			       0x40 0x00000000 0x0 0x00002000>; /* configuration space */
+			reg = <0x00 0x03400000 0x0 0x00100000>, /* controller registers */
+			      <0x40 0x00000000 0x0 0x00002000>; /* configuration space */
 			reg-names = "regs", "config";
 			interrupts = <0 118 0x4>, /* controller interrupt */
 				     <0 117 0x4>; /* PME interrupt */
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index eca06a0c3cf8766..96c54d0c54efca2 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -617,8 +617,8 @@ sata: sata@3200000 {
 
 		pcie1: pcie@3400000 {
 			compatible = "fsl,ls1028a-pcie";
-			reg = <0x00 0x03400000 0x0 0x00100000   /* controller registers */
-			       0x80 0x00000000 0x0 0x00002000>; /* configuration space */
+			reg = <0x00 0x03400000 0x0 0x00100000>, /* controller registers */
+			      <0x80 0x00000000 0x0 0x00002000>; /* configuration space */
 			reg-names = "regs", "config";
 			interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>, /* PME interrupt */
 				     <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>; /* aer interrupt */
@@ -644,8 +644,8 @@ pcie1: pcie@3400000 {
 
 		pcie2: pcie@3500000 {
 			compatible = "fsl,ls1028a-pcie";
-			reg = <0x00 0x03500000 0x0 0x00100000   /* controller registers */
-			       0x88 0x00000000 0x0 0x00002000>; /* configuration space */
+			reg = <0x00 0x03500000 0x0 0x00100000>, /* controller registers */
+			      <0x88 0x00000000 0x0 0x00002000>; /* configuration space */
 			reg-names = "regs", "config";
 			interrupts = <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1043a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1043a.dtsi
index 28c51e521cb2229..37b7cb4ad1567c6 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1043a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1043a.dtsi
@@ -869,8 +869,8 @@ msi3: msi-controller3@1573000 {
 
 		pcie1: pcie@3400000 {
 			compatible = "fsl,ls1043a-pcie";
-			reg = <0x00 0x03400000 0x0 0x00100000   /* controller registers */
-			       0x40 0x00000000 0x0 0x00002000>; /* configuration space */
+			reg = <0x00 0x03400000 0x0 0x00100000>, /* controller registers */
+			      <0x40 0x00000000 0x0 0x00002000>; /* configuration space */
 			reg-names = "regs", "config";
 			interrupts = <0 118 0x4>, /* controller interrupt */
 				     <0 117 0x4>; /* PME interrupt */
@@ -895,8 +895,8 @@ pcie1: pcie@3400000 {
 
 		pcie2: pcie@3500000 {
 			compatible = "fsl,ls1043a-pcie";
-			reg = <0x00 0x03500000 0x0 0x00100000   /* controller registers */
-			       0x48 0x00000000 0x0 0x00002000>; /* configuration space */
+			reg = <0x00 0x03500000 0x0 0x00100000>, /* controller registers */
+			      <0x48 0x00000000 0x0 0x00002000>; /* configuration space */
 			reg-names = "regs", "config";
 			interrupts = <0 128 0x4>,
 				     <0 127 0x4>;
@@ -921,8 +921,8 @@ pcie2: pcie@3500000 {
 
 		pcie3: pcie@3600000 {
 			compatible = "fsl,ls1043a-pcie";
-			reg = <0x00 0x03600000 0x0 0x00100000   /* controller registers */
-			       0x50 0x00000000 0x0 0x00002000>; /* configuration space */
+			reg = <0x00 0x03600000 0x0 0x00100000>, /* controller registers */
+			      <0x50 0x00000000 0x0 0x00002000>; /* configuration space */
 			reg-names = "regs", "config";
 			interrupts = <0 162 0x4>,
 				     <0 161 0x4>;
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
index 39458305e3334cc..7f521f75e4ff3ed 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
@@ -773,8 +773,8 @@ msi3: msi-controller@15a0000 {
 
 		pcie1: pcie@3400000 {
 			compatible = "fsl,ls1046a-pcie";
-			reg = <0x00 0x03400000 0x0 0x00100000   /* controller registers */
-			       0x40 0x00000000 0x0 0x00002000>; /* configuration space */
+			reg = <0x00 0x03400000 0x0 0x00100000>, /* controller registers */
+			      <0x40 0x00000000 0x0 0x00002000>; /* configuration space */
 			reg-names = "regs", "config";
 			interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>, /* controller interrupt */
 				     <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>; /* PME interrupt */
@@ -799,8 +799,8 @@ pcie1: pcie@3400000 {
 
 		pcie_ep1: pcie_ep@3400000 {
 			compatible = "fsl,ls1046a-pcie-ep","fsl,ls-pcie-ep";
-			reg = <0x00 0x03400000 0x0 0x00100000
-				0x40 0x00000000 0x8 0x00000000>;
+			reg = <0x00 0x03400000 0x0 0x00100000>,
+			      <0x40 0x00000000 0x8 0x00000000>;
 			reg-names = "regs", "addr_space";
 			num-ib-windows = <6>;
 			num-ob-windows = <8>;
@@ -809,8 +809,8 @@ pcie_ep1: pcie_ep@3400000 {
 
 		pcie2: pcie@3500000 {
 			compatible = "fsl,ls1046a-pcie";
-			reg = <0x00 0x03500000 0x0 0x00100000   /* controller registers */
-			       0x48 0x00000000 0x0 0x00002000>; /* configuration space */
+			reg = <0x00 0x03500000 0x0 0x00100000>, /* controller registers */
+			      <0x48 0x00000000 0x0 0x00002000>; /* configuration space */
 			reg-names = "regs", "config";
 			interrupts = <GIC_SPI 128 IRQ_TYPE_LEVEL_HIGH>, /* controller interrupt */
 				     <GIC_SPI 127 IRQ_TYPE_LEVEL_HIGH>; /* PME interrupt */
@@ -835,8 +835,8 @@ pcie2: pcie@3500000 {
 
 		pcie_ep2: pcie_ep@3500000 {
 			compatible = "fsl,ls1046a-pcie-ep","fsl,ls-pcie-ep";
-			reg = <0x00 0x03500000 0x0 0x00100000
-				0x48 0x00000000 0x8 0x00000000>;
+			reg = <0x00 0x03500000 0x0 0x00100000>,
+			      <0x48 0x00000000 0x8 0x00000000>;
 			reg-names = "regs", "addr_space";
 			num-ib-windows = <6>;
 			num-ob-windows = <8>;
@@ -845,8 +845,8 @@ pcie_ep2: pcie_ep@3500000 {
 
 		pcie3: pcie@3600000 {
 			compatible = "fsl,ls1046a-pcie";
-			reg = <0x00 0x03600000 0x0 0x00100000   /* controller registers */
-			       0x50 0x00000000 0x0 0x00002000>; /* configuration space */
+			reg = <0x00 0x03600000 0x0 0x00100000>, /* controller registers */
+			      <0x50 0x00000000 0x0 0x00002000>; /* configuration space */
 			reg-names = "regs", "config";
 			interrupts = <GIC_SPI 162 IRQ_TYPE_LEVEL_HIGH>, /* controller interrupt */
 				     <GIC_SPI 161 IRQ_TYPE_LEVEL_HIGH>; /* PME interrupt */
@@ -871,8 +871,8 @@ pcie3: pcie@3600000 {
 
 		pcie_ep3: pcie_ep@3600000 {
 			compatible = "fsl,ls1046a-pcie-ep", "fsl,ls-pcie-ep";
-			reg = <0x00 0x03600000 0x0 0x00100000
-				0x50 0x00000000 0x8 0x00000000>;
+			reg = <0x00 0x03600000 0x0 0x00100000>,
+			      <0x50 0x00000000 0x8 0x00000000>;
 			reg-names = "regs", "addr_space";
 			num-ib-windows = <6>;
 			num-ob-windows = <8>;
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
index 8ffbc9fde0415e2..3b1b8ac77dd3cfb 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
@@ -536,8 +536,8 @@ sec_jr3: jr@40000 {
 
 		pcie1: pcie@3400000 {
 			compatible = "fsl,ls1088a-pcie";
-			reg = <0x00 0x03400000 0x0 0x00100000   /* controller registers */
-			       0x20 0x00000000 0x0 0x00002000>; /* configuration space */
+			reg = <0x00 0x03400000 0x0 0x00100000>, /* controller registers */
+			      <0x20 0x00000000 0x0 0x00002000>; /* configuration space */
 			reg-names = "regs", "config";
 			interrupts = <0 108 IRQ_TYPE_LEVEL_HIGH>; /* aer interrupt */
 			interrupt-names = "aer";
@@ -562,8 +562,8 @@ pcie1: pcie@3400000 {
 
 		pcie_ep1: pcie-ep@3400000 {
 			compatible = "fsl,ls1088a-pcie-ep", "fsl,ls-pcie-ep";
-			reg = <0x00 0x03400000 0x0 0x00100000
-			       0x20 0x00000000 0x8 0x00000000>;
+			reg = <0x00 0x03400000 0x0 0x00100000>,
+			      <0x20 0x00000000 0x8 0x00000000>;
 			reg-names = "regs", "addr_space";
 			num-ib-windows = <24>;
 			num-ob-windows = <256>;
@@ -573,8 +573,8 @@ pcie_ep1: pcie-ep@3400000 {
 
 		pcie2: pcie@3500000 {
 			compatible = "fsl,ls1088a-pcie";
-			reg = <0x00 0x03500000 0x0 0x00100000   /* controller registers */
-			       0x28 0x00000000 0x0 0x00002000>; /* configuration space */
+			reg = <0x00 0x03500000 0x0 0x00100000>, /* controller registers */
+			      <0x28 0x00000000 0x0 0x00002000>; /* configuration space */
 			reg-names = "regs", "config";
 			interrupts = <0 113 IRQ_TYPE_LEVEL_HIGH>; /* aer interrupt */
 			interrupt-names = "aer";
@@ -599,8 +599,8 @@ pcie2: pcie@3500000 {
 
 		pcie_ep2: pcie-ep@3500000 {
 			compatible = "fsl,ls1088a-pcie-ep", "fsl,ls-pcie-ep";
-			reg = <0x00 0x03500000 0x0 0x00100000
-			       0x28 0x00000000 0x8 0x00000000>;
+			reg = <0x00 0x03500000 0x0 0x00100000>,
+			      <0x28 0x00000000 0x8 0x00000000>;
 			reg-names = "regs", "addr_space";
 			num-ib-windows = <6>;
 			num-ob-windows = <6>;
@@ -609,8 +609,8 @@ pcie_ep2: pcie-ep@3500000 {
 
 		pcie3: pcie@3600000 {
 			compatible = "fsl,ls1088a-pcie";
-			reg = <0x00 0x03600000 0x0 0x00100000   /* controller registers */
-			       0x30 0x00000000 0x0 0x00002000>; /* configuration space */
+			reg = <0x00 0x03600000 0x0 0x00100000>, /* controller registers */
+			      <0x30 0x00000000 0x0 0x00002000>; /* configuration space */
 			reg-names = "regs", "config";
 			interrupts = <0 118 IRQ_TYPE_LEVEL_HIGH>; /* aer interrupt */
 			interrupt-names = "aer";
@@ -635,8 +635,8 @@ pcie3: pcie@3600000 {
 
 		pcie_ep3: pcie-ep@3600000 {
 			compatible = "fsl,ls1088a-pcie-ep", "fsl,ls-pcie-ep";
-			reg = <0x00 0x03600000 0x0 0x00100000
-			       0x30 0x00000000 0x8 0x00000000>;
+			reg = <0x00 0x03600000 0x0 0x00100000>,
+			      <0x30 0x00000000 0x8 0x00000000>;
 			reg-names = "regs", "addr_space";
 			num-ib-windows = <6>;
 			num-ob-windows = <6>;
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls2080a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls2080a.dtsi
index 76ab68d2de0bfa9..368a66948fddb4d 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls2080a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls2080a.dtsi
@@ -120,32 +120,32 @@ CPU_PW20: cpu-pw20 {
 };
 
 &pcie1 {
-	reg = <0x00 0x03400000 0x0 0x00100000   /* controller registers */
-	       0x10 0x00000000 0x0 0x00002000>; /* configuration space */
+	reg = <0x00 0x03400000 0x0 0x00100000>, /* controller registers */
+	      <0x10 0x00000000 0x0 0x00002000>; /* configuration space */
 
 	ranges = <0x81000000 0x0 0x00000000 0x10 0x00010000 0x0 0x00010000   /* downstream I/O */
 		  0x82000000 0x0 0x40000000 0x10 0x40000000 0x0 0x40000000>; /* non-prefetchable memory */
 };
 
 &pcie2 {
-	reg = <0x00 0x03500000 0x0 0x00100000   /* controller registers */
-	       0x12 0x00000000 0x0 0x00002000>; /* configuration space */
+	reg = <0x00 0x03500000 0x0 0x00100000>, /* controller registers */
+	      <0x12 0x00000000 0x0 0x00002000>; /* configuration space */
 
 	ranges = <0x81000000 0x0 0x00000000 0x12 0x00010000 0x0 0x00010000   /* downstream I/O */
 		  0x82000000 0x0 0x40000000 0x12 0x40000000 0x0 0x40000000>; /* non-prefetchable memory */
 };
 
 &pcie3 {
-	reg = <0x00 0x03600000 0x0 0x00100000   /* controller registers */
-	       0x14 0x00000000 0x0 0x00002000>; /* configuration space */
+	reg = <0x00 0x03600000 0x0 0x00100000>, /* controller registers */
+	      <0x14 0x00000000 0x0 0x00002000>; /* configuration space */
 
 	ranges = <0x81000000 0x0 0x00000000 0x14 0x00010000 0x0 0x00010000   /* downstream I/O */
 		  0x82000000 0x0 0x40000000 0x14 0x40000000 0x0 0x40000000>; /* non-prefetchable memory */
 };
 
 &pcie4 {
-	reg = <0x00 0x03700000 0x0 0x00100000   /* controller registers */
-	       0x16 0x00000000 0x0 0x00002000>; /* configuration space */
+	reg = <0x00 0x03700000 0x0 0x00100000>, /* controller registers */
+	      <0x16 0x00000000 0x0 0x00002000>; /* configuration space */
 
 	ranges = <0x81000000 0x0 0x00000000 0x16 0x00010000 0x0 0x00010000   /* downstream I/O */
 		  0x82000000 0x0 0x40000000 0x16 0x40000000 0x0 0x40000000>; /* non-prefetchable memory */
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls2088a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls2088a.dtsi
index da24dc127698392..0851468c0c2eee0 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls2088a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls2088a.dtsi
@@ -121,8 +121,8 @@ CPU_PW20: cpu-pw20 {
 
 &pcie1 {
 	compatible = "fsl,ls2088a-pcie";
-	reg = <0x00 0x03400000 0x0 0x00100000   /* controller registers */
-	       0x20 0x00000000 0x0 0x00002000>; /* configuration space */
+	reg = <0x00 0x03400000 0x0 0x00100000>, /* controller registers */
+	      <0x20 0x00000000 0x0 0x00002000>; /* configuration space */
 
 	ranges = <0x81000000 0x0 0x00000000 0x20 0x00010000 0x0 0x00010000
 		  0x82000000 0x0 0x40000000 0x20 0x40000000 0x0 0x40000000>;
@@ -130,8 +130,8 @@ &pcie1 {
 
 &pcie2 {
 	compatible = "fsl,ls2088a-pcie";
-	reg = <0x00 0x03500000 0x0 0x00100000   /* controller registers */
-	       0x28 0x00000000 0x0 0x00002000>; /* configuration space */
+	reg = <0x00 0x03500000 0x0 0x00100000>, /* controller registers */
+	      <0x28 0x00000000 0x0 0x00002000>; /* configuration space */
 
 	ranges = <0x81000000 0x0 0x00000000 0x28 0x00010000 0x0 0x00010000
 		  0x82000000 0x0 0x40000000 0x28 0x40000000 0x0 0x40000000>;
@@ -139,8 +139,8 @@ &pcie2 {
 
 &pcie3 {
 	compatible = "fsl,ls2088a-pcie";
-	reg = <0x00 0x03600000 0x0 0x00100000   /* controller registers */
-	       0x30 0x00000000 0x0 0x00002000>; /* configuration space */
+	reg = <0x00 0x03600000 0x0 0x00100000>, /* controller registers */
+	      <0x30 0x00000000 0x0 0x00002000>; /* configuration space */
 
 	ranges = <0x81000000 0x0 0x00000000 0x30 0x00010000 0x0 0x00010000
 		  0x82000000 0x0 0x40000000 0x30 0x40000000 0x0 0x40000000>;
@@ -148,8 +148,8 @@ &pcie3 {
 
 &pcie4 {
 	compatible = "fsl,ls2088a-pcie";
-	reg = <0x00 0x03700000 0x0 0x00100000   /* controller registers */
-	       0x38 0x00000000 0x0 0x00002000>; /* configuration space */
+	reg = <0x00 0x03700000 0x0 0x00100000>, /* controller registers */
+	      <0x38 0x00000000 0x0 0x00002000>; /* configuration space */
 
 	ranges = <0x81000000 0x0 0x00000000 0x38 0x00010000 0x0 0x00010000
 		  0x82000000 0x0 0x40000000 0x38 0x40000000 0x0 0x40000000>;
diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
index 0551f6f4c313cb8..4fcc869c21a4a0a 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
@@ -1089,8 +1089,8 @@ sata3: sata@3230000 {
 
 		pcie1: pcie@3400000 {
 			compatible = "fsl,lx2160a-pcie";
-			reg = <0x00 0x03400000 0x0 0x00100000   /* controller registers */
-			       0x80 0x00000000 0x0 0x00002000>; /* configuration space */
+			reg = <0x00 0x03400000 0x0 0x00100000>, /* controller registers */
+			      <0x80 0x00000000 0x0 0x00002000>; /* configuration space */
 			reg-names = "csr_axi_slave", "config_axi_slave";
 			interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>, /* AER interrupt */
 				     <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>, /* PME interrupt */
@@ -1117,8 +1117,8 @@ pcie1: pcie@3400000 {
 
 		pcie2: pcie@3500000 {
 			compatible = "fsl,lx2160a-pcie";
-			reg = <0x00 0x03500000 0x0 0x00100000   /* controller registers */
-			       0x88 0x00000000 0x0 0x00002000>; /* configuration space */
+			reg = <0x00 0x03500000 0x0 0x00100000>, /* controller registers */
+			      <0x88 0x00000000 0x0 0x00002000>; /* configuration space */
 			reg-names = "csr_axi_slave", "config_axi_slave";
 			interrupts = <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>, /* AER interrupt */
 				     <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>, /* PME interrupt */
@@ -1145,8 +1145,8 @@ pcie2: pcie@3500000 {
 
 		pcie3: pcie@3600000 {
 			compatible = "fsl,lx2160a-pcie";
-			reg = <0x00 0x03600000 0x0 0x00100000   /* controller registers */
-			       0x90 0x00000000 0x0 0x00002000>; /* configuration space */
+			reg = <0x00 0x03600000 0x0 0x00100000>, /* controller registers */
+			      <0x90 0x00000000 0x0 0x00002000>; /* configuration space */
 			reg-names = "csr_axi_slave", "config_axi_slave";
 			interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>, /* AER interrupt */
 				     <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>, /* PME interrupt */
@@ -1173,8 +1173,8 @@ pcie3: pcie@3600000 {
 
 		pcie4: pcie@3700000 {
 			compatible = "fsl,lx2160a-pcie";
-			reg = <0x00 0x03700000 0x0 0x00100000   /* controller registers */
-			       0x98 0x00000000 0x0 0x00002000>; /* configuration space */
+			reg = <0x00 0x03700000 0x0 0x00100000>, /* controller registers */
+			      <0x98 0x00000000 0x0 0x00002000>; /* configuration space */
 			reg-names = "csr_axi_slave", "config_axi_slave";
 			interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>, /* AER interrupt */
 				     <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>, /* PME interrupt */
@@ -1201,8 +1201,8 @@ pcie4: pcie@3700000 {
 
 		pcie5: pcie@3800000 {
 			compatible = "fsl,lx2160a-pcie";
-			reg = <0x00 0x03800000 0x0 0x00100000   /* controller registers */
-			       0xa0 0x00000000 0x0 0x00002000>; /* configuration space */
+			reg = <0x00 0x03800000 0x0 0x00100000>, /* controller registers */
+			      <0xa0 0x00000000 0x0 0x00002000>; /* configuration space */
 			reg-names = "csr_axi_slave", "config_axi_slave";
 			interrupts = <GIC_SPI 128 IRQ_TYPE_LEVEL_HIGH>, /* AER interrupt */
 				     <GIC_SPI 128 IRQ_TYPE_LEVEL_HIGH>, /* PME interrupt */
@@ -1229,8 +1229,8 @@ pcie5: pcie@3800000 {
 
 		pcie6: pcie@3900000 {
 			compatible = "fsl,lx2160a-pcie";
-			reg = <0x00 0x03900000 0x0 0x00100000   /* controller registers */
-			       0xa8 0x00000000 0x0 0x00002000>; /* configuration space */
+			reg = <0x00 0x03900000 0x0 0x00100000>, /* controller registers */
+			      <0xa8 0x00000000 0x0 0x00002000>; /* configuration space */
 			reg-names = "csr_axi_slave", "config_axi_slave";
 			interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>, /* AER interrupt */
 				     <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>, /* PME interrupt */
-- 
2.26.0.106.g9fadedd



Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 39B0629EB28
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 12:58:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725830AbgJ2L6t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Oct 2020 07:58:49 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:38516 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725710AbgJ2L6s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Oct 2020 07:58:48 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 09T3clVY078130;
        Wed, 28 Oct 2020 22:38:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1603942727;
        bh=jlq5mE9P6aWdSNd08eeRk2/mtUWKzyFX9VAjGHL496g=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=E13vV8RM6+LX1qZ80GlAS4lUqUZyFONbcRaMagFRcvpjyORbHjR0+5sqWw/jECxAw
         cx4RJv+Yhq4h0Kfhw7tsI2JqzUcHuxCd8PX9pwq+ydBqVoIPsj+2tDn1Cm2K6XmLFg
         dJ0cr8luOdEWZyf5wpVjXCOuvZdDfax1t8GRQjP8=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 09T3clUI006083
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 28 Oct 2020 22:38:47 -0500
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 28
 Oct 2020 22:38:47 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 28 Oct 2020 22:38:47 -0500
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com [10.247.120.73])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 09T3clVm101923;
        Wed, 28 Oct 2020 22:38:47 -0500
Received: from localhost ([10.250.39.72])
        by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 09T3ck9C033823;
        Wed, 28 Oct 2020 22:38:46 -0500
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>
CC:     Lokesh Vutla <lokeshvutla@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 6/8] arm64: dts: ti: k3-j721e-main: Add MAIN domain R5F cluster nodes
Date:   Wed, 28 Oct 2020 22:38:00 -0500
Message-ID: <20201029033802.15366-7-s-anna@ti.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201029033802.15366-1-s-anna@ti.com>
References: <20201029033802.15366-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The J721E SoCs have 3 dual-core Arm Cortex-R5F processor (R5FSS)
subsystems/clusters. One R5F cluster (MCU_R5FSS0) is present within
the MCU domain, and the remaining two clusters are present in the
MAIN domain (MAIN_R5FSS0 & MAIN_R5FSS1). Each of these can be
configured at boot time to be either run in a LockStep mode or in
an Asymmetric Multi Processing (AMP) fashion in Split-mode. These
subsystems have 64 KB each Tightly-Coupled Memory (TCM) internal
memories for each core split between two banks - ATCM and BTCM
(further interleaved into two banks). There are some IP integration
differences from standard Arm R5 clusters such as the absence of
an ACP port, presence of an additional TI-specific Region Address
Translater (RAT) module for translating 32-bit CPU addresses into
larger system bus addresses etc.

Add the DT nodes for these two MAIN domain R5F cluster/subsystems,
the two R5F cores are each added as child nodes to the corresponding
main cluster node. Both the clusters are configured to run in LockStep
mode by default, with the ATCMs enabled to allow the R5 cores to execute
code from DDR with boot-strapping code from ATCM. The inter-processor
communication between the main A72 cores and these processors is
achieved through shared memory and Mailboxes.

The following firmware names are used by default for these cores, and
can be overridden in a board dts file if needed:
    MAIN R5FSS0 Core0: j7-main-r5f0_0-fw (both in LockStep and Split modes)
    MAIN R5FSS0 Core1: j7-main-r5f0_1-fw (needed only in Split mode)
    MAIN R5FSS1 Core0: j7-main-r5f1_0-fw (both in LockStep and Split modes)
    MAIN R5FSS1 Core1: j7-main-r5f1_1-fw (needed only in Split mode)

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 82 ++++++++++++++++++++++-
 1 file changed, 81 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
index e2a96b2c423c..b5cae2e03a09 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
@@ -2,7 +2,7 @@
 /*
  * Device Tree Source for J721E SoC Family Main Domain peripherals
  *
- * Copyright (C) 2016-2019 Texas Instruments Incorporated - https://www.ti.com/
+ * Copyright (C) 2016-2020 Texas Instruments Incorporated - https://www.ti.com/
  */
 #include <dt-bindings/phy/phy.h>
 #include <dt-bindings/mux/mux.h>
@@ -1581,6 +1581,86 @@ watchdog1: watchdog@2210000 {
 		assigned-clock-parents = <&k3_clks 253 5>;
 	};
 
+	main_r5fss0: r5fss@5c00000 {
+		compatible = "ti,j721e-r5fss";
+		ti,cluster-mode = <1>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x5c00000 0x00 0x5c00000 0x20000>,
+			 <0x5d00000 0x00 0x5d00000 0x20000>;
+		power-domains = <&k3_pds 243 TI_SCI_PD_EXCLUSIVE>;
+
+		main_r5fss0_core0: r5f@5c00000 {
+			compatible = "ti,j721e-r5f";
+			reg = <0x5c00000 0x00008000>,
+			      <0x5c10000 0x00008000>;
+			reg-names = "atcm", "btcm";
+			ti,sci = <&dmsc>;
+			ti,sci-dev-id = <245>;
+			ti,sci-proc-ids = <0x06 0xff>;
+			resets = <&k3_reset 245 1>;
+			firmware-name = "j7-main-r5f0_0-fw";
+			ti,atcm-enable = <1>;
+			ti,btcm-enable = <1>;
+			ti,loczrama = <1>;
+		};
+
+		main_r5fss0_core1: r5f@5d00000 {
+			compatible = "ti,j721e-r5f";
+			reg = <0x5d00000 0x00008000>,
+			      <0x5d10000 0x00008000>;
+			reg-names = "atcm", "btcm";
+			ti,sci = <&dmsc>;
+			ti,sci-dev-id = <246>;
+			ti,sci-proc-ids = <0x07 0xff>;
+			resets = <&k3_reset 246 1>;
+			firmware-name = "j7-main-r5f0_1-fw";
+			ti,atcm-enable = <1>;
+			ti,btcm-enable = <1>;
+			ti,loczrama = <1>;
+		};
+	};
+
+	main_r5fss1: r5fss@5e00000 {
+		compatible = "ti,j721e-r5fss";
+		ti,cluster-mode = <1>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x5e00000 0x00 0x5e00000 0x20000>,
+			 <0x5f00000 0x00 0x5f00000 0x20000>;
+		power-domains = <&k3_pds 244 TI_SCI_PD_EXCLUSIVE>;
+
+		main_r5fss1_core0: r5f@5e00000 {
+			compatible = "ti,j721e-r5f";
+			reg = <0x5e00000 0x00008000>,
+			      <0x5e10000 0x00008000>;
+			reg-names = "atcm", "btcm";
+			ti,sci = <&dmsc>;
+			ti,sci-dev-id = <247>;
+			ti,sci-proc-ids = <0x08 0xff>;
+			resets = <&k3_reset 247 1>;
+			firmware-name = "j7-main-r5f1_0-fw";
+			ti,atcm-enable = <1>;
+			ti,btcm-enable = <1>;
+			ti,loczrama = <1>;
+		};
+
+		main_r5fss1_core1: r5f@5f00000 {
+			compatible = "ti,j721e-r5f";
+			reg = <0x5f00000 0x00008000>,
+			      <0x5f10000 0x00008000>;
+			reg-names = "atcm", "btcm";
+			ti,sci = <&dmsc>;
+			ti,sci-dev-id = <248>;
+			ti,sci-proc-ids = <0x09 0xff>;
+			resets = <&k3_reset 248 1>;
+			firmware-name = "j7-main-r5f1_1-fw";
+			ti,atcm-enable = <1>;
+			ti,btcm-enable = <1>;
+			ti,loczrama = <1>;
+		};
+	};
+
 	c66_0: dsp@4d80800000 {
 		compatible = "ti,j721e-c66-dsp";
 		reg = <0x4d 0x80800000 0x00 0x00048000>,
-- 
2.28.0


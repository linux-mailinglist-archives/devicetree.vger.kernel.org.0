Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 61C2F29EB26
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 12:58:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725854AbgJ2L6r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Oct 2020 07:58:47 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:38516 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725710AbgJ2L6r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Oct 2020 07:58:47 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 09T3cgKV078073;
        Wed, 28 Oct 2020 22:38:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1603942722;
        bh=LoDaJnppNIOJlWZHS1VEMHQvvUjkHBnx4uTkXMVW/+g=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=e8fD/vO8d465n5e8fgaMLLt/UyhX63T5D636gB6bmYzHKMhSFgltlvcajdnzN5j2T
         CBeuEe+PFn4XnYaGx3WdK0hN+btpgPPIgI1aehld4PNKjGtwdF4Do56rR1vLd1yaDH
         wcHeO7n+DwICCm6g15d36zBYoG4W2JNaUVSczBXs=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 09T3cguc005123
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 28 Oct 2020 22:38:42 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 28
 Oct 2020 22:38:41 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 28 Oct 2020 22:38:41 -0500
Received: from lelv0597.itg.ti.com (lelv0597.itg.ti.com [10.181.64.32])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 09T3cfPW102668;
        Wed, 28 Oct 2020 22:38:41 -0500
Received: from localhost ([10.250.39.72])
        by lelv0597.itg.ti.com (8.14.7/8.14.7) with ESMTP id 09T3cfrw113610;
        Wed, 28 Oct 2020 22:38:41 -0500
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>
CC:     Lokesh Vutla <lokeshvutla@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 5/8] arm64: dts: ti: k3-j721e-mcu: Add MCU domain R5F cluster node
Date:   Wed, 28 Oct 2020 22:37:59 -0500
Message-ID: <20201029033802.15366-6-s-anna@ti.com>
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

Add the DT node for the MCU domain R5F cluster/subsystem, the two
R5F cores are added as child nodes to the main cluster/subsystem node.
The cluster is configured to run in LockStep mode by default, with the
ATCMs enabled to allow the R5 cores to execute code from DDR with
boot-strapping code from ATCM. The inter-processor communication
between the main A72 cores and these processors is achieved through
shared memory and Mailboxes.

The following firmware names are used by default for these cores, and
can be overridden in a board dts file if needed:
    MCU R5FSS0 Core0: j7-mcu-r5f0_0-fw (both in LockStep and Split modes)
    MCU R5FSS0 Core1: j7-mcu-r5f0_1-fw (needed only in Split mode)

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 .../boot/dts/ti/k3-j721e-mcu-wakeup.dtsi      | 42 ++++++++++++++++++-
 1 file changed, 41 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
index e581cb1d87ee..6c44afae9187 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
@@ -2,7 +2,7 @@
 /*
  * Device Tree Source for J721E SoC Family MCU/WAKEUP Domain peripherals
  *
- * Copyright (C) 2016-2019 Texas Instruments Incorporated - https://www.ti.com/
+ * Copyright (C) 2016-2020 Texas Instruments Incorporated - https://www.ti.com/
  */
 
 &cbass_mcu_wakeup {
@@ -353,4 +353,44 @@ cpts@3d000 {
 			ti,cpts-periodic-outputs = <2>;
 		};
 	};
+
+	mcu_r5fss0: r5fss@41000000 {
+		compatible = "ti,j721e-r5fss";
+		ti,cluster-mode = <1>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x41000000 0x00 0x41000000 0x20000>,
+			 <0x41400000 0x00 0x41400000 0x20000>;
+		power-domains = <&k3_pds 249 TI_SCI_PD_EXCLUSIVE>;
+
+		mcu_r5fss0_core0: r5f@41000000 {
+			compatible = "ti,j721e-r5f";
+			reg = <0x41000000 0x00008000>,
+			      <0x41010000 0x00008000>;
+			reg-names = "atcm", "btcm";
+			ti,sci = <&dmsc>;
+			ti,sci-dev-id = <250>;
+			ti,sci-proc-ids = <0x01 0xff>;
+			resets = <&k3_reset 250 1>;
+			firmware-name = "j7-mcu-r5f0_0-fw";
+			ti,atcm-enable = <1>;
+			ti,btcm-enable = <1>;
+			ti,loczrama = <1>;
+		};
+
+		mcu_r5fss0_core1: r5f@41400000 {
+			compatible = "ti,j721e-r5f";
+			reg = <0x41400000 0x00008000>,
+			      <0x41410000 0x00008000>;
+			reg-names = "atcm", "btcm";
+			ti,sci = <&dmsc>;
+			ti,sci-dev-id = <251>;
+			ti,sci-proc-ids = <0x02 0xff>;
+			resets = <&k3_reset 251 1>;
+			firmware-name = "j7-mcu-r5f0_1-fw";
+			ti,atcm-enable = <1>;
+			ti,btcm-enable = <1>;
+			ti,loczrama = <1>;
+		};
+	};
 };
-- 
2.28.0


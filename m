Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BB37929E93D
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 11:44:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726174AbgJ2KoM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Oct 2020 06:44:12 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:49046 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726483AbgJ2KoM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Oct 2020 06:44:12 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 09T3cLYT081343;
        Wed, 28 Oct 2020 22:38:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1603942701;
        bh=Kvi4Y2WBuDQgtqCbvJ0I48luqEjuyjlqRGLgl/4gsDE=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=l9olxWcVhmnWW4/9ZexeTSylAfq7mFNg/NO5fC6acfcpE5uZqsNED1VkrsYglS8xx
         /y6yoT4LMSBiRTPqVu7a2VU/d7R/Mpp8xGyJ/M9sdn+5qYvLJRDEiHvZMB5O7RY7DM
         lzsimkm0/1t0g5ZfFX/MgnmEy+RBYZCJyzGKedUM=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 09T3cLEU005803
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 28 Oct 2020 22:38:21 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 28
 Oct 2020 22:38:20 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 28 Oct 2020 22:38:20 -0500
Received: from lelv0597.itg.ti.com (lelv0597.itg.ti.com [10.181.64.32])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 09T3cKFr037173;
        Wed, 28 Oct 2020 22:38:20 -0500
Received: from localhost ([10.250.39.72])
        by lelv0597.itg.ti.com (8.14.7/8.14.7) with ESMTP id 09T3cKGk113541;
        Wed, 28 Oct 2020 22:38:20 -0500
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>
CC:     Lokesh Vutla <lokeshvutla@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 1/8] arm64: dts: ti: k3-am65-mcu: Add MCU domain R5F cluster node
Date:   Wed, 28 Oct 2020 22:37:55 -0500
Message-ID: <20201029033802.15366-2-s-anna@ti.com>
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

The AM65x SoCs have a single dual-core Arm Cortex-R5F processor (R5FSS)
subsystem/cluster. This R5F cluster (MCU_R5FSS0) is present within the
MCU domain, and can be configured at boot time to be either run in a
LockStep mode or in an Asymmetric Multi Processing (AMP) fashion in
Split-mode. This subsystem has 64 KB each Tightly-Coupled Memory (TCM)
internal memories for each core split between two banks - TCMA and TCMB
(further interleaved into two banks). There are some IP integration
differences from standard Arm R5F clusters such as the absence of an ACP
port, presence of an additional TI-specific Region Address Translater
(RAT) module for translating 32-bit CPU addresses into larger system
bus addresses etc.

Add the DT node for this R5F cluster/subsystem, the two R5F cores are
added as child nodes to the main cluster node. The cluster is configured
to run in LockStep mode by default, with the ATCMs enabled to allow the
R5 cores to execute code from DDR with boot-strapping code from ATCM.
The inter-processor communication between the main A53 cores and these
processors is achieved through shared memory and Mailboxes.

The following firmware names are used by default for these cores, and
can be overridden in a board dts file if needed:
    am65x-mcu-r5f0_0-fw (LockStep mode and for Core0 in Split mode)
    am65x-mcu-r5f0_1-fw (Core1 in Split mode)

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi | 42 ++++++++++++++++++++++++-
 1 file changed, 41 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi b/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
index 044042b166d9..7454c8cec0cc 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
@@ -2,7 +2,7 @@
 /*
  * Device Tree Source for AM6 SoC Family MCU Domain peripherals
  *
- * Copyright (C) 2016-2018 Texas Instruments Incorporated - https://www.ti.com/
+ * Copyright (C) 2016-2020 Texas Instruments Incorporated - https://www.ti.com/
  */
 
 &cbass_mcu {
@@ -268,4 +268,44 @@ mcu_cpsw_cpts_mux: refclk-mux {
 			};
 		};
 	};
+
+	mcu_r5fss0: r5fss@41000000 {
+		compatible = "ti,am654-r5fss";
+		ti,cluster-mode = <1>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x41000000 0x00 0x41000000 0x20000>,
+			 <0x41400000 0x00 0x41400000 0x20000>;
+		power-domains = <&k3_pds 129 TI_SCI_PD_EXCLUSIVE>;
+
+		mcu_r5fss0_core0: r5f@41000000 {
+			compatible = "ti,am654-r5f";
+			reg = <0x41000000 0x00008000>,
+			      <0x41010000 0x00008000>;
+			reg-names = "atcm", "btcm";
+			ti,sci = <&dmsc>;
+			ti,sci-dev-id = <159>;
+			ti,sci-proc-ids = <0x01 0xff>;
+			resets = <&k3_reset 159 1>;
+			firmware-name = "am65x-mcu-r5f0_0-fw";
+			ti,atcm-enable = <1>;
+			ti,btcm-enable = <1>;
+			ti,loczrama = <1>;
+		};
+
+		mcu_r5fss0_core1: r5f@41400000 {
+			compatible = "ti,am654-r5f";
+			reg = <0x41400000 0x00008000>,
+			      <0x41410000 0x00008000>;
+			reg-names = "atcm", "btcm";
+			ti,sci = <&dmsc>;
+			ti,sci-dev-id = <245>;
+			ti,sci-proc-ids = <0x02 0xff>;
+			resets = <&k3_reset 245 1>;
+			firmware-name = "am65x-mcu-r5f0_1-fw";
+			ti,atcm-enable = <1>;
+			ti,btcm-enable = <1>;
+			ti,loczrama = <1>;
+		};
+	};
 };
-- 
2.28.0


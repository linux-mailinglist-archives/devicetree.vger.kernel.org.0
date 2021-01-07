Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 48FF32ED6D2
	for <lists+devicetree@lfdr.de>; Thu,  7 Jan 2021 19:41:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729081AbhAGSlK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jan 2021 13:41:10 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:47558 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726427AbhAGSlH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jan 2021 13:41:07 -0500
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 107IdTrO064674;
        Thu, 7 Jan 2021 12:39:29 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1610044769;
        bh=MQTqffJ/BEngP+DKCiaYecjDKfUr1TbLNIh28LwlU2M=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=cELavhLTvFqwURPD0Iqn17Z2dT/Ck6kkR+cI4RN3Za9jqqM15tMCNEl+b5Hb+ld+I
         RV2UJzIehI+46uiFgPSklJGu9rUm1mOD3ldbxpSz1vpz0pP01ddlkFV2e3+m7+G45g
         +7tdTey7cGRJ0z/tkj1FBcZs3szO3htJj7eO+K8Y=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 107IdT3U092089
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 7 Jan 2021 12:39:29 -0600
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 7 Jan
 2021 12:39:28 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 7 Jan 2021 12:39:28 -0600
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com [10.247.120.73])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 107IdS7R049466;
        Thu, 7 Jan 2021 12:39:28 -0600
Received: from localhost ([10.250.33.36])
        by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 107IdSQp128871;
        Thu, 7 Jan 2021 12:39:28 -0600
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>
CC:     Lokesh Vutla <lokeshvutla@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 2/5] arm64: dts: ti: k3-j7200-main: Add MAIN domain R5F cluster node
Date:   Thu, 7 Jan 2021 12:39:04 -0600
Message-ID: <20210107183907.6545-3-s-anna@ti.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210107183907.6545-1-s-anna@ti.com>
References: <20210107183907.6545-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The J7200 SoCs have 2 dual-core Arm Cortex-R5F processor (R5FSS)
subsystems/clusters. One R5F cluster is present within the MCU
domain (MCU_R5FSS0), and the other one is present within the MAIN
domain (MAIN_R5FSS0). Each of these can be configured at boot time
to be either run in a LockStep mode or in an Asymmetric Multi
Processing (AMP) fashion in Split-mode. These subsystems have 64 KB
each Tightly-Coupled Memory (TCM) internal memories for each core
split between two banks - ATCM and BTCM (further interleaved into
two banks). The TCMs of both Cores are combined in LockStep-mode
to provide a larger 128 KB of memory, , but otherwise are functionally
similar to those on J721E SoCs.

Add the DT node for the MAIN domain R5F cluster/subsystem, the two
R5F cores are added as child nodes to the R5F cluster/subsystem node.
The cluster is configured to run in LockStep mode by default, with
the ATCMs enabled to allow the R5 cores to execute code from DDR with
boot-strapping code from ATCM. The inter-processor communication
between the main A72 cores and these processors is achieved through
shared memory and Mailboxes.

The following firmware names are used by default for these cores, and
can be overridden in a board dts file if desired:
   MAIN R5FSS0 Core0: j7200-main-r5f0_0-fw (both in LockStep & Split modes)
   MAIN R5FSS0 Core1: j7200-main-r5f0_1-fw (needed only in Split mode)

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j7200-main.dtsi | 42 ++++++++++++++++++++++-
 1 file changed, 41 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
index b0094212aa82..c825e1c88cf8 100644
--- a/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
@@ -2,7 +2,7 @@
 /*
  * Device Tree Source for J7200 SoC Family Main Domain peripherals
  *
- * Copyright (C) 2020 Texas Instruments Incorporated - https://www.ti.com/
+ * Copyright (C) 2020-2021 Texas Instruments Incorporated - https://www.ti.com/
  */
 
 &cbass_main {
@@ -560,4 +560,44 @@ usb0: usb@6000000 {
 			dr_mode = "otg";
 		};
 	};
+
+	main_r5fss0: r5fss@5c00000 {
+		compatible = "ti,j7200-r5fss";
+		ti,cluster-mode = <1>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x5c00000 0x00 0x5c00000 0x20000>,
+			 <0x5d00000 0x00 0x5d00000 0x20000>;
+		power-domains = <&k3_pds 243 TI_SCI_PD_EXCLUSIVE>;
+
+		main_r5fss0_core0: r5f@5c00000 {
+			compatible = "ti,j7200-r5f";
+			reg = <0x5c00000 0x00010000>,
+			      <0x5c10000 0x00010000>;
+			reg-names = "atcm", "btcm";
+			ti,sci = <&dmsc>;
+			ti,sci-dev-id = <245>;
+			ti,sci-proc-ids = <0x06 0xff>;
+			resets = <&k3_reset 245 1>;
+			firmware-name = "j7200-main-r5f0_0-fw";
+			ti,atcm-enable = <1>;
+			ti,btcm-enable = <1>;
+			ti,loczrama = <1>;
+		};
+
+		main_r5fss0_core1: r5f@5d00000 {
+			compatible = "ti,j7200-r5f";
+			reg = <0x5d00000 0x00008000>,
+			      <0x5d10000 0x00008000>;
+			reg-names = "atcm", "btcm";
+			ti,sci = <&dmsc>;
+			ti,sci-dev-id = <246>;
+			ti,sci-proc-ids = <0x07 0xff>;
+			resets = <&k3_reset 246 1>;
+			firmware-name = "j7200-main-r5f0_1-fw";
+			ti,atcm-enable = <1>;
+			ti,btcm-enable = <1>;
+			ti,loczrama = <1>;
+		};
+	};
 };
-- 
2.29.2


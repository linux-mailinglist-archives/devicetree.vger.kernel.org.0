Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EC22D2ED6CF
	for <lists+devicetree@lfdr.de>; Thu,  7 Jan 2021 19:41:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726406AbhAGSlB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jan 2021 13:41:01 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:47488 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726386AbhAGSlB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jan 2021 13:41:01 -0500
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 107IdNr9064632;
        Thu, 7 Jan 2021 12:39:23 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1610044763;
        bh=QWZGWPWqs3jX5y2y7j3r4yDNVyVBpG7F28POgA8/wLI=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=LeKYLPmgefnpcmQQbO1nHmTCPfjBgB6pyiXqoxzYA8+vnejhadhoJ+/uM6aY9wynY
         F9JxtnCCl9DaUdhJpEuSby9DptIaa8h3gQPC7OBMHluWYLfOq3OYy7VCYOMQXN23BI
         j1p42u5CgSQDw9YV8UmIW6pkkE5aZgycv6VwMMDA=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 107IdNQ8015274
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 7 Jan 2021 12:39:23 -0600
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 7 Jan
 2021 12:39:23 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 7 Jan 2021 12:39:23 -0600
Received: from lelv0597.itg.ti.com (lelv0597.itg.ti.com [10.181.64.32])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 107IdNkk096452;
        Thu, 7 Jan 2021 12:39:23 -0600
Received: from localhost ([10.250.33.36])
        by lelv0597.itg.ti.com (8.14.7/8.14.7) with ESMTP id 107IdMmc016461;
        Thu, 7 Jan 2021 12:39:23 -0600
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>
CC:     Lokesh Vutla <lokeshvutla@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 1/5] arm64: dts: ti: k3-j7200-mcu: Add MCU domain R5F cluster node
Date:   Thu, 7 Jan 2021 12:39:03 -0600
Message-ID: <20210107183907.6545-2-s-anna@ti.com>
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
to provide a larger 128 KB of memory, but otherwise are functionally
similar to those on J721E SoCs.

Add the DT node for the MCU domain R5F cluster/subsystem, the two
R5F cores are added as child nodes to the main cluster/subsystem node.
The cluster is configured to run in LockStep mode by default, with
the ATCMs enabled to allow the R5 cores to execute code from DDR with
boot-strapping code from ATCM. The inter-processor communication
between the main A72 cores and these processors is achieved through
shared memory and Mailboxes.

The following firmware names are used by default for these cores, and
can be overridden in a board dts file if desired:
   MCU R5FSS0 Core0: j7200-mcu-r5f0_0-fw (both in LockStep and Split modes)
   MCU R5FSS0 Core1: j7200-mcu-r5f0_1-fw (needed only in Split mode)

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 .../boot/dts/ti/k3-j7200-mcu-wakeup.dtsi      | 42 ++++++++++++++++++-
 1 file changed, 41 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
index bb1fe9c12e44..359e3e8a8cd0 100644
--- a/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
@@ -2,7 +2,7 @@
 /*
  * Device Tree Source for J7200 SoC Family MCU/WAKEUP Domain peripherals
  *
- * Copyright (C) 2020 Texas Instruments Incorporated - https://www.ti.com/
+ * Copyright (C) 2020-2021 Texas Instruments Incorporated - https://www.ti.com/
  */
 
 &cbass_mcu_wakeup {
@@ -289,4 +289,44 @@ adc {
 			compatible = "ti,am3359-adc";
 		};
 	};
+
+	mcu_r5fss0: r5fss@41000000 {
+		compatible = "ti,j7200-r5fss";
+		ti,cluster-mode = <1>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x41000000 0x00 0x41000000 0x20000>,
+			 <0x41400000 0x00 0x41400000 0x20000>;
+		power-domains = <&k3_pds 249 TI_SCI_PD_EXCLUSIVE>;
+
+		mcu_r5fss0_core0: r5f@41000000 {
+			compatible = "ti,j7200-r5f";
+			reg = <0x41000000 0x00010000>,
+			      <0x41010000 0x00010000>;
+			reg-names = "atcm", "btcm";
+			ti,sci = <&dmsc>;
+			ti,sci-dev-id = <250>;
+			ti,sci-proc-ids = <0x01 0xff>;
+			resets = <&k3_reset 250 1>;
+			firmware-name = "j7200-mcu-r5f0_0-fw";
+			ti,atcm-enable = <1>;
+			ti,btcm-enable = <1>;
+			ti,loczrama = <1>;
+		};
+
+		mcu_r5fss0_core1: r5f@41400000 {
+			compatible = "ti,j7200-r5f";
+			reg = <0x41400000 0x00008000>,
+			      <0x41410000 0x00008000>;
+			reg-names = "atcm", "btcm";
+			ti,sci = <&dmsc>;
+			ti,sci-dev-id = <251>;
+			ti,sci-proc-ids = <0x02 0xff>;
+			resets = <&k3_reset 251 1>;
+			firmware-name = "j7200-mcu-r5f0_1-fw";
+			ti,atcm-enable = <1>;
+			ti,btcm-enable = <1>;
+			ti,loczrama = <1>;
+		};
+	};
 };
-- 
2.29.2


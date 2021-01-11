Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 801B42F1E37
	for <lists+devicetree@lfdr.de>; Mon, 11 Jan 2021 19:47:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389378AbhAKSrM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Jan 2021 13:47:12 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:33210 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389492AbhAKSrK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Jan 2021 13:47:10 -0500
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10BIkPKr059910;
        Mon, 11 Jan 2021 12:46:25 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1610390785;
        bh=sfXVf07Ajh8M8lgKRpmT+0uSOn5AhXbgWPCvdBA/rog=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=xiuuMbOKqtQlulM4T9LZu3lUXntNQfqDTF3agrqSugHe1+YYDgELg0w7o/4kWg0Wl
         7r8oGG1PMByzjtRMme60JpsSStw+jgELXkcKkUmz0GJqidIvJdFz0V4N1zQmYWUY5w
         Pt2zO/4YWkA1j/PeHwqYof9yeF5+xHpmI1FJ3PS8=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10BIkOe0040611
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 11 Jan 2021 12:46:25 -0600
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 11
 Jan 2021 12:46:24 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 11 Jan 2021 12:46:24 -0600
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com [10.247.120.73])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10BIkOhp059656;
        Mon, 11 Jan 2021 12:46:24 -0600
Received: from localhost ([10.250.67.236])
        by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 10BIkOuO004122;
        Mon, 11 Jan 2021 12:46:24 -0600
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>
CC:     Lokesh Vutla <lokeshvutla@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH v2 1/3] arm64: dts: ti: k3-j7200: Add R5F cluster nodes
Date:   Mon, 11 Jan 2021 12:45:52 -0600
Message-ID: <20210111184554.6748-2-s-anna@ti.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210111184554.6748-1-s-anna@ti.com>
References: <20210111184554.6748-1-s-anna@ti.com>
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

Add the DT nodes for both the MCU and MAIN domain R5F cluster/subsystems,
the two R5F cores are added as child nodes to each of the R5F cluster
nodes. The clusters are configured to run in LockStep mode by default,
with the ATCMs enabled to allow the R5 cores to execute code from DDR
with boot-strapping code from ATCM. The inter-processor communication
between the main A72 cores and these processors is achieved through
shared memory and Mailboxes.

The following firmware names are used by default for these cores, and
can be overridden in a board dts file if desired:
   MCU R5FSS0 Core0: j7200-mcu-r5f0_0-fw (both in LockStep and Split modes)
   MCU R5FSS0 Core1: j7200-mcu-r5f0_1-fw (needed only in Split mode)
   MAIN R5FSS0 Core0: j7200-main-r5f0_0-fw (both in LockStep & Split modes)
   MAIN R5FSS0 Core1: j7200-main-r5f0_1-fw (needed only in Split mode)

Signed-off-by: Suman Anna <s-anna@ti.com>
---
v2:
 - Squashed patch 2 from v1
 - Updated patch title and description
v1: 
https://patchwork.kernel.org/project/linux-arm-kernel/patch/20210107183907.6545-2-s-anna@ti.com/
https://patchwork.kernel.org/project/linux-arm-kernel/patch/20210107183907.6545-3-s-anna@ti.com/

 arch/arm64/boot/dts/ti/k3-j7200-main.dtsi     | 42 ++++++++++++++++++-
 .../boot/dts/ti/k3-j7200-mcu-wakeup.dtsi      | 42 ++++++++++++++++++-
 2 files changed, 82 insertions(+), 2 deletions(-)

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


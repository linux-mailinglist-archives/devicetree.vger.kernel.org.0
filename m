Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 60E672F1E39
	for <lists+devicetree@lfdr.de>; Mon, 11 Jan 2021 19:48:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390094AbhAKSsH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Jan 2021 13:48:07 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:46290 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390054AbhAKSsH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Jan 2021 13:48:07 -0500
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10BIkPh9000836;
        Mon, 11 Jan 2021 12:46:25 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1610390785;
        bh=kNqSrnNci/GAWyk+sGVAHtqQdgneK4ESyhviLVJ/TXI=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=zNB1mtpj8MU+ujwCP5hZem39nIspm4cWuw5VkEB8OH9xMwrFtXPvnZGvrU37SbDTk
         iJPw+vghsq6nK6NC5+c6tZUTc+2+YSDfkHmNOiiYE9E+19LuigM4DyCs4lU14WHz/G
         ivxN0QvWTDEESpJ5NMW+OgxvWU0pTwK7C3s/t5oo=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10BIkPEN046606
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 11 Jan 2021 12:46:25 -0600
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 11
 Jan 2021 12:46:25 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 11 Jan 2021 12:46:24 -0600
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com [10.247.120.73])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10BIkPdi125294;
        Mon, 11 Jan 2021 12:46:25 -0600
Received: from localhost ([10.250.67.236])
        by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 10BIkOJI004129;
        Mon, 11 Jan 2021 12:46:24 -0600
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>
CC:     Lokesh Vutla <lokeshvutla@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH v2 3/3] arm64: dts: ti: k3-j7200-som-p0: Add DDR carveout memory nodes for R5Fs
Date:   Mon, 11 Jan 2021 12:45:54 -0600
Message-ID: <20210111184554.6748-4-s-anna@ti.com>
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

Two carveout reserved memory nodes each have been added for each of the
R5F remote processor devices within both the MCU and MAIN domains on the
TI J7200 EVM boards. These nodes are assigned to the respective rproc
device nodes as well. The first region will be used as the DMA pool for
the rproc device, and the second region will furnish the static carveout
regions for the firmware memory.

An additional reserved memory node is also added to reserve a portion of
the DDR memory to be used for performing inter-processor communication
between all the remote processors running RTOS. 8 MB of memory is reserved
for this purpose, and this accounts for all the vrings and vring buffers
between all the possible pairs of remote processors.

The current carveout addresses and sizes are defined statically for each
device. The R5F processors do not have an MMU, and as such require the
exact memory used by the firmwares to be set-aside. The firmware images
do not require any RSC_CARVEOUT entries in their resource tables either
to allocate the memory for firmware memory segments.

NOTE:
1. The R5F1 carveouts are needed only if the R5F cluster is running in
   Split (non-LockStep) mode. The reserved memory nodes can be disabled
   later on if there is no use-case defined to use the corresponding
   remote processor.
2. The J7200 SoCs have no DSPs and one less R5F cluster compared to J721E
   SoCs. So, while the carveout memories reserved for the R5F clusters
   present on the SoC match to those on J721E, the overall memory map
   reserved for firmwares is quite different.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
v2:
 - Squashed in Patch 5 from v1
 - Updated patch description
v1: 
https://patchwork.kernel.org/project/linux-arm-kernel/patch/20210107183907.6545-5-s-anna@ti.com/
https://patchwork.kernel.org/project/linux-arm-kernel/patch/20210107183907.6545-6-s-anna@ti.com/

 arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi | 62 +++++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi
index 3a82982902c8..a988e2ab2ba1 100644
--- a/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi
@@ -25,6 +25,60 @@ secure_ddr: optee@9e800000 {
 			alignment = <0x1000>;
 			no-map;
 		};
+
+		mcu_r5fss0_core0_dma_memory_region: r5f-dma-memory@a0000000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa0000000 0x00 0x100000>;
+			no-map;
+		};
+
+		mcu_r5fss0_core0_memory_region: r5f-memory@a0100000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa0100000 0x00 0xf00000>;
+			no-map;
+		};
+
+		mcu_r5fss0_core1_dma_memory_region: r5f-dma-memory@a1000000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa1000000 0x00 0x100000>;
+			no-map;
+		};
+
+		mcu_r5fss0_core1_memory_region: r5f-memory@a1100000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa1100000 0x00 0xf00000>;
+			no-map;
+		};
+
+		main_r5fss0_core0_dma_memory_region: r5f-dma-memory@a2000000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa2000000 0x00 0x100000>;
+			no-map;
+		};
+
+		main_r5fss0_core0_memory_region: r5f-memory@a2100000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa2100000 0x00 0xf00000>;
+			no-map;
+		};
+
+		main_r5fss0_core1_dma_memory_region: r5f-dma-memory@a3000000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa3000000 0x00 0x100000>;
+			no-map;
+		};
+
+		main_r5fss0_core1_memory_region: r5f-memory@a3100000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa3100000 0x00 0xf00000>;
+			no-map;
+		};
+
+		rtos_ipc_memory_region: ipc-memories@a4000000 {
+			reg = <0x00 0xa4000000 0x00 0x00800000>;
+			alignment = <0x1000>;
+			no-map;
+		};
 	};
 };
 
@@ -143,18 +197,26 @@ &mailbox0_cluster11 {
 
 &mcu_r5fss0_core0 {
 	mboxes = <&mailbox0_cluster0 &mbox_mcu_r5fss0_core0>;
+	memory-region = <&mcu_r5fss0_core0_dma_memory_region>,
+			<&mcu_r5fss0_core0_memory_region>;
 };
 
 &mcu_r5fss0_core1 {
 	mboxes = <&mailbox0_cluster0 &mbox_mcu_r5fss0_core1>;
+	memory-region = <&mcu_r5fss0_core1_dma_memory_region>,
+			<&mcu_r5fss0_core1_memory_region>;
 };
 
 &main_r5fss0_core0 {
 	mboxes = <&mailbox0_cluster1 &mbox_main_r5fss0_core0>;
+	memory-region = <&main_r5fss0_core0_dma_memory_region>,
+			<&main_r5fss0_core0_memory_region>;
 };
 
 &main_r5fss0_core1 {
 	mboxes = <&mailbox0_cluster1 &mbox_main_r5fss0_core1>;
+	memory-region = <&main_r5fss0_core1_dma_memory_region>,
+			<&main_r5fss0_core1_memory_region>;
 };
 
 &main_i2c0 {
-- 
2.29.2


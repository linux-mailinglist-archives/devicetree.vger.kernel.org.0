Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3B8CC29E93C
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 11:44:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726636AbgJ2KoM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Oct 2020 06:44:12 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:49046 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726174AbgJ2KoM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Oct 2020 06:44:12 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 09T3cVC8081379;
        Wed, 28 Oct 2020 22:38:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1603942711;
        bh=8r1ySBIhtiVNXWtJbQJeY/URuU2x92A4Lbv+J2BZstY=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=CgYBs7l6S8RIB9h77QrpE9sArGeqpv8WwxOIa4khkXTqyFQiPVd82GDhEhPkwibtZ
         5JXRpgg5fRX/R5ghCyamTjG/r67/cdEoQbxTCTxJPZCFJNCJdr8I6l1TD5H+3F0M7s
         /8MzqB05ljvlG2YbZLakaCdMYjfULm1q44z5BGw8=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 09T3cVcL005018
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 28 Oct 2020 22:38:31 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 28
 Oct 2020 22:38:31 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 28 Oct 2020 22:38:30 -0500
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com [10.247.120.73])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 09T3cUkf102538;
        Wed, 28 Oct 2020 22:38:30 -0500
Received: from localhost ([10.250.39.72])
        by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 09T3cUP3033728;
        Wed, 28 Oct 2020 22:38:30 -0500
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>
CC:     Lokesh Vutla <lokeshvutla@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 3/8] arm64: dts: ti: k3-am654-base-board: Add DDR carveout memory nodes for R5Fs
Date:   Wed, 28 Oct 2020 22:37:57 -0500
Message-ID: <20201029033802.15366-4-s-anna@ti.com>
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

The R5F processors do not have an MMU, and as such require the exact memory
used by the firmwares to be set-aside. Four carveout reserved memory nodes
have been added with two each (1 MB and 15 MB in size) used for each of the
MCU R5F remote processor devices on all the TI K3 AM65x boards. These nodes
are assigned to the respective rproc device nodes as well.

The current carveout addresses and sizes are defined statically for each
device. The first region will be used as the DMA pool for the rproc
device, and the second region will furnish the static carveout regions
for the firmware memory.

Note that the R5F1 carveouts are needed only if the corresponding R5F
cluster is running in Split (non-LockStep) mode. The corresponding
reserved memory nodes can be disabled later on if there is no use-case
defined to use the corresponding remote processor.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 .../arm64/boot/dts/ti/k3-am654-base-board.dts | 29 +++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
index 0cb5b9cb65ba..23a1f266d1d4 100644
--- a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
@@ -29,11 +29,36 @@ reserved-memory {
 		#address-cells = <2>;
 		#size-cells = <2>;
 		ranges;
+
 		secure_ddr: secure-ddr@9e800000 {
 			reg = <0 0x9e800000 0 0x01800000>; /* for OP-TEE */
 			alignment = <0x1000>;
 			no-map;
 		};
+
+		mcu_r5fss0_core0_dma_memory_region: r5f-dma-memory@a0000000 {
+			compatible = "shared-dma-pool";
+			reg = <0 0xa0000000 0 0x100000>;
+			no-map;
+		};
+
+		mcu_r5fss0_core0_memory_region: r5f-memory@a0100000 {
+			compatible = "shared-dma-pool";
+			reg = <0 0xa0100000 0 0xf00000>;
+			no-map;
+		};
+
+		mcu_r5fss0_core1_dma_memory_region: r5f-dma-memory@a1000000 {
+			compatible = "shared-dma-pool";
+			reg = <0 0xa1000000 0 0x100000>;
+			no-map;
+		};
+
+		mcu_r5fss0_core1_memory_region: r5f-memory@a1100000 {
+			compatible = "shared-dma-pool";
+			reg = <0 0xa1100000 0 0xf00000>;
+			no-map;
+		};
 	};
 
 	gpio-keys {
@@ -442,10 +467,14 @@ &mailbox0_cluster11 {
 };
 
 &mcu_r5fss0_core0 {
+	memory-region = <&mcu_r5fss0_core0_dma_memory_region>,
+			<&mcu_r5fss0_core0_memory_region>;
 	mboxes = <&mailbox0_cluster0 &mbox_mcu_r5fss0_core0>;
 };
 
 &mcu_r5fss0_core1 {
+	memory-region = <&mcu_r5fss0_core1_dma_memory_region>,
+			<&mcu_r5fss0_core1_memory_region>;
 	mboxes = <&mailbox0_cluster1 &mbox_mcu_r5fss0_core1>;
 };
 
-- 
2.28.0


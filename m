Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D04A39446B
	for <lists+devicetree@lfdr.de>; Fri, 28 May 2021 16:47:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234677AbhE1OtL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 May 2021 10:49:11 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:55668 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235068AbhE1OtL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 May 2021 10:49:11 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 14SElYYT101811;
        Fri, 28 May 2021 09:47:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1622213254;
        bh=J8JuftoEr6qvgEew2bCN0KeQXS3c2K09aumTJTgnmgE=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=F7EIYsHOx8QSHALYLvTFpVtdve2kzeN2kAnkLKfsACCz5ktd8aQ604ewAlbW397Di
         PPijac6oqXBwgWv3agXjsCMr0EQ9hM34Z1fh8zv67I7H4AY8NHfyEyjt+NCoVJAmS5
         ifKxZYuzeUV+WxLwOR1VSlU7F3AUcB9dNS0ApZUs=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 14SElYNM124518
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 28 May 2021 09:47:34 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 28
 May 2021 09:47:34 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 28 May 2021 09:47:34 -0500
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com [10.247.120.73])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 14SElYNb111617;
        Fri, 28 May 2021 09:47:34 -0500
Received: from localhost ([10.250.35.153])
        by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 14SElYd5005174;
        Fri, 28 May 2021 09:47:34 -0500
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>
CC:     Lokesh Vutla <lokeshvutla@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 4/4] arm64: dts: ti: k3-am642-evm/sk: Reserve some on-chip SRAM for R5Fs
Date:   Fri, 28 May 2021 09:47:18 -0500
Message-ID: <20210528144718.25132-5-s-anna@ti.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210528144718.25132-1-s-anna@ti.com>
References: <20210528144718.25132-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Reserve some portions of the MAIN domain on-chip SRAM for use by various
R5F cores on AM642 EVM and SK boards. A bank (256 KB) each is reserved
from the on-chip SRAM for each R5F core. This is done through specific
child SRAM nodes in the board dts file.

The memory regions are also assigned to each R5F remoteproc node using
the sram property. The reserved SRAM banks are as follows for each core:
  Main R5FSS0 Core0 : OCSRAM1
  Main R5FSS0 Core1 : OCSRAM2
  Main R5FSS1 Core0 : OCSRAM3
  Main R5FSS1 Core1 : OCSRAM4

Signed-off-by: Suman Anna <s-anna@ti.com>
Signed-off-by: Ming Wei <mwei@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am642-evm.dts | 22 ++++++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am642-sk.dts  | 22 ++++++++++++++++++++++
 2 files changed, 44 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am642-evm.dts b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
index 4d0b3f86525e..083df636d7ff 100644
--- a/arch/arm64/boot/dts/ti/k3-am642-evm.dts
+++ b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
@@ -184,28 +184,50 @@ cpsw3g_phy3: ethernet-phy@3 {
 	};
 };
 
+&oc_sram {
+	main_r5fss0_core0_sram: r5f-sram@40000 {
+		reg = <0x40000 0x40000>;
+	};
+
+	main_r5fss0_core1_sram: r5f-sram@80000 {
+		reg = <0x80000 0x40000>;
+	};
+
+	main_r5fss1_core0_sram: r5f-sram@c0000 {
+		reg = <0xc0000 0x40000>;
+	};
+
+	main_r5fss1_core1_sram: r5f-sram@100000 {
+		reg = <0x100000 0x40000>;
+	};
+};
+
 &main_r5fss0_core0 {
 	mboxes = <&mailbox0_cluster2 &mbox_main_r5fss0_core0>;
 	memory-region = <&main_r5fss0_core0_dma_memory_region>,
 			<&main_r5fss0_core0_memory_region>;
+	sram = <&main_r5fss0_core0_sram>;
 };
 
 &main_r5fss0_core1 {
 	mboxes = <&mailbox0_cluster2 &mbox_main_r5fss0_core1>;
 	memory-region = <&main_r5fss0_core1_dma_memory_region>,
 			<&main_r5fss0_core1_memory_region>;
+	sram = <&main_r5fss0_core1_sram>;
 };
 
 &main_r5fss1_core0 {
 	mboxes = <&mailbox0_cluster4 &mbox_main_r5fss1_core0>;
 	memory-region = <&main_r5fss1_core0_dma_memory_region>,
 			<&main_r5fss1_core0_memory_region>;
+	sram = <&main_r5fss1_core0_sram>;
 };
 
 &main_r5fss1_core1 {
 	mboxes = <&mailbox0_cluster4 &mbox_main_r5fss1_core1>;
 	memory-region = <&main_r5fss1_core1_dma_memory_region>,
 			<&main_r5fss1_core1_memory_region>;
+	sram = <&main_r5fss1_core1_sram>;
 };
 
 &main_pmx0 {
diff --git a/arch/arm64/boot/dts/ti/k3-am642-sk.dts b/arch/arm64/boot/dts/ti/k3-am642-sk.dts
index 5891e6a05ddf..b388b3ca210a 100644
--- a/arch/arm64/boot/dts/ti/k3-am642-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am642-sk.dts
@@ -387,26 +387,48 @@ &mailbox0_cluster7 {
 	status = "disabled";
 };
 
+&oc_sram {
+	main_r5fss0_core0_sram: r5f-sram@40000 {
+		reg = <0x40000 0x40000>;
+	};
+
+	main_r5fss0_core1_sram: r5f-sram@80000 {
+		reg = <0x80000 0x40000>;
+	};
+
+	main_r5fss1_core0_sram: r5f-sram@c0000 {
+		reg = <0xc0000 0x40000>;
+	};
+
+	main_r5fss1_core1_sram: r5f-sram@100000 {
+		reg = <0x100000 0x40000>;
+	};
+};
+
 &main_r5fss0_core0 {
 	mboxes = <&mailbox0_cluster2 &mbox_main_r5fss0_core0>;
 	memory-region = <&main_r5fss0_core0_dma_memory_region>,
 			<&main_r5fss0_core0_memory_region>;
+	sram = <&main_r5fss0_core0_sram>;
 };
 
 &main_r5fss0_core1 {
 	mboxes = <&mailbox0_cluster2 &mbox_main_r5fss0_core1>;
 	memory-region = <&main_r5fss0_core1_dma_memory_region>,
 			<&main_r5fss0_core1_memory_region>;
+	sram = <&main_r5fss0_core1_sram>;
 };
 
 &main_r5fss1_core0 {
 	mboxes = <&mailbox0_cluster4 &mbox_main_r5fss1_core0>;
 	memory-region = <&main_r5fss1_core0_dma_memory_region>,
 			<&main_r5fss1_core0_memory_region>;
+	sram = <&main_r5fss1_core0_sram>;
 };
 
 &main_r5fss1_core1 {
 	mboxes = <&mailbox0_cluster4 &mbox_main_r5fss1_core1>;
 	memory-region = <&main_r5fss1_core1_dma_memory_region>,
 			<&main_r5fss1_core1_memory_region>;
+	sram = <&main_r5fss1_core1_sram>;
 };
-- 
2.30.1


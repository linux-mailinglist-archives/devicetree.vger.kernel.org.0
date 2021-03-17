Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 202C533FBB6
	for <lists+devicetree@lfdr.de>; Thu, 18 Mar 2021 00:11:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229601AbhCQXKi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Mar 2021 19:10:38 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:39696 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229512AbhCQXK2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Mar 2021 19:10:28 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 12HNANHY094897;
        Wed, 17 Mar 2021 18:10:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1616022623;
        bh=khCW1g2ORRW9ukgfAPbQ+I2Y4vXzn5UGwDzR+gSDbW8=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=T6HpB/s7ZmovY0OyZG44CCu7PqWYsoizukJGp2JdyJrXeFepF78yBPO/glXsBmShy
         VdNqnt04IQhdZIbqOkgJaIzhnrIH1dlwqoqV7KhVCqZn7HwBdgIhA66agJhi7IYrMK
         gCbPny76AYrjrLwJVqcuvSlvwCSMZOiVFXp6QZq0=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 12HNANLd023884
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 17 Mar 2021 18:10:23 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Wed, 17
 Mar 2021 18:10:23 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Wed, 17 Mar 2021 18:10:23 -0500
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com [10.247.120.73])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 12HNANcQ004735;
        Wed, 17 Mar 2021 18:10:23 -0500
Received: from localhost ([10.250.32.139])
        by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 12HNANmA002864;
        Wed, 17 Mar 2021 18:10:23 -0500
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 4/4] arm64: dts: ti: k3-am642-sk: Add IPC sub-mailbox nodes
Date:   Wed, 17 Mar 2021 18:09:46 -0500
Message-ID: <20210317230946.23675-5-s-anna@ti.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210317230946.23675-1-s-anna@ti.com>
References: <20210317230946.23675-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the sub-mailbox nodes that are used to communicate between MPU and
various remote processors present in the AM64x SoCs for the AM642 SK
board. These include the R5F remote processors in the two dual-R5F
clusters (MAIN_R5FSS0 & MAIN_R5FSS1) in the MAIN domain; and a M4
processor in the MCU safety island.

These sub-mailbox nodes utilize the System Mailbox clusters 2, 4 and 6.
The remaining clusters 3, 5 and 7 are currently not used, and so are
disabled. Clusters 0 and 1 were never added to the dts file as they do
not support interrupts towards the A53 core.

The sub-mailbox nodes added match the hard-coded mailbox configuration
used within the TI RTOS IPC software packages. The R5F processor
sub-systems are assumed to be running in Split mode, so a sub-mailbox
node is used by each of the R5F cores. Only the sub-mailbox node for
the first R5F core in each cluster is used in case of a Single-CPU mode
for that R5F cluster. The nodes are all identical to those added on the
AM64x EVM board to maintain firmware compatibility between the two boards.

NOTE:
The cluster nodes only have the Mailbox IP interrupt outputs that are
routed to the GIC_SPI. The sub-mailbox nodes' irq-id are indexing into
the listed interrupts, with the usr-id using the actual interrupt output
line number from the Mailbox IP.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am642-sk.dts | 43 ++++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am642-sk.dts b/arch/arm64/boot/dts/ti/k3-am642-sk.dts
index 397ed3b2e121..fad0cddd67d6 100644
--- a/arch/arm64/boot/dts/ti/k3-am642-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am642-sk.dts
@@ -244,3 +244,46 @@ cpsw3g_phy1: ethernet-phy@1 {
 		ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
 	};
 };
+
+&mailbox0_cluster2 {
+	mbox_main_r5fss0_core0: mbox-main-r5fss0-core0 {
+		ti,mbox-rx = <0 0 2>;
+		ti,mbox-tx = <1 0 2>;
+	};
+
+	mbox_main_r5fss0_core1: mbox-main-r5fss0-core1 {
+		ti,mbox-rx = <2 0 2>;
+		ti,mbox-tx = <3 0 2>;
+	};
+};
+
+&mailbox0_cluster3 {
+	status = "disabled";
+};
+
+&mailbox0_cluster4 {
+	mbox_main_r5fss1_core0: mbox-main-r5fss1-core0 {
+		ti,mbox-rx = <0 0 2>;
+		ti,mbox-tx = <1 0 2>;
+	};
+
+	mbox_main_r5fss1_core1: mbox-main-r5fss1-core1 {
+		ti,mbox-rx = <2 0 2>;
+		ti,mbox-tx = <3 0 2>;
+	};
+};
+
+&mailbox0_cluster5 {
+	status = "disabled";
+};
+
+&mailbox0_cluster6 {
+	mbox_m4_0: mbox-m4-0 {
+		ti,mbox-rx = <0 0 2>;
+		ti,mbox-tx = <1 0 2>;
+	};
+};
+
+&mailbox0_cluster7 {
+	status = "disabled";
+};
-- 
2.30.1


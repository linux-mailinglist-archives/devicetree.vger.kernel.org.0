Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 11E42299A69
	for <lists+devicetree@lfdr.de>; Tue, 27 Oct 2020 00:27:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2406107AbgJZX1h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Oct 2020 19:27:37 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:59168 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2406101AbgJZX1h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Oct 2020 19:27:37 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 09QNRYYA022121;
        Mon, 26 Oct 2020 18:27:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1603754854;
        bh=WxKQuLr2hYC4EJoMGCFZ/dcul6vlInAZcRmsMTFpn7I=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=UmcALQEsb9FomVJh6KHX1xzUneCspP+QOaDWJZ98XcUyG9fFTpI9u+PSyRF1bKfs0
         oZ0J53tdMxsIX1gee7dwO8fm/gDCZeTBfDDcHBZPif/OtLPDaP/S3a80n2zg4R2vZg
         92g3WIScKmS2xdAkxZZFXpJEepWZuPg25c68zAi0=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 09QNRYRX009543
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 26 Oct 2020 18:27:34 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 26
 Oct 2020 18:27:33 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 26 Oct 2020 18:27:33 -0500
Received: from lelv0597.itg.ti.com (lelv0597.itg.ti.com [10.181.64.32])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 09QNRXrC125794;
        Mon, 26 Oct 2020 18:27:33 -0500
Received: from localhost ([10.250.39.72])
        by lelv0597.itg.ti.com (8.14.7/8.14.7) with ESMTP id 09QNRXN5032594;
        Mon, 26 Oct 2020 18:27:33 -0500
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 3/3] arm64: dts: ti: k3-j7200-som-p0: Add IPC sub-mailbox nodes
Date:   Mon, 26 Oct 2020 18:26:37 -0500
Message-ID: <20201026232637.15681-4-s-anna@ti.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201026232637.15681-1-s-anna@ti.com>
References: <20201026232637.15681-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the sub-mailbox nodes that are used to communicate between MPU and
various remote processors present in the J7200 SoCs to the J7200 common
processor board. These include the R5F remote processors in the dual-R5F
clusters in the MCU domain (MCU_R5FSS0) and the MAIN domain (MAIN_R5FSS0).
These sub-mailbox nodes utilize the System Mailbox clusters 0 and 1. All
the remaining mailbox clusters are currently not used on A72 core, and
so are disabled. The nodes are added in the k3-j7200-som-p0.dtsi file
to co-locate these alongside future reserved-memory nodes required for
remoteprocs.

The sub-mailbox nodes added match the hard-coded mailbox configuration
used within the TI RTOS IPC software packages. A sub-mailbox node is added
for each of the R5F cores to accommodate the R5F processor sub-systems
running in Split mode. Only the sub-mailbox node for the first R5F core in
each cluster is used in case of Lockstep mode for that R5F cluster.

NOTE:
The GIC_SPI interrupts to be used are dynamically allocated and managed
by the System Firmware through the ti-sci-intr irqchip driver. So, only
valid interrupts that are used by the sub-mailbox devices (each cluster's
User 0 IRQ output) are enabled. This is done to minimize the number of
NavSS Interrupt Router outputs utilized.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi | 68 +++++++++++++++++++++
 1 file changed, 68 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi
index 6a98ba499bc2..fbd17d38f6b6 100644
--- a/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi
@@ -63,3 +63,71 @@ flash@0,0 {
 		reg = <0x00 0x00 0x4000000>;
 	};
 };
+
+&mailbox0_cluster0 {
+	interrupts = <436>;
+
+	mbox_mcu_r5fss0_core0: mbox-mcu-r5fss0-core0 {
+		ti,mbox-rx = <0 0 0>;
+		ti,mbox-tx = <1 0 0>;
+	};
+
+	mbox_mcu_r5fss0_core1: mbox-mcu-r5fss0-core1 {
+		ti,mbox-rx = <2 0 0>;
+		ti,mbox-tx = <3 0 0>;
+	};
+};
+
+&mailbox0_cluster1 {
+	interrupts = <432>;
+
+	mbox_main_r5fss0_core0: mbox-main-r5fss0-core0 {
+		ti,mbox-rx = <0 0 0>;
+		ti,mbox-tx = <1 0 0>;
+	};
+
+	mbox_main_r5fss0_core1: mbox-main-r5fss0-core1 {
+		ti,mbox-rx = <2 0 0>;
+		ti,mbox-tx = <3 0 0>;
+	};
+};
+
+&mailbox0_cluster2 {
+	status = "disabled";
+};
+
+&mailbox0_cluster3 {
+	status = "disabled";
+};
+
+&mailbox0_cluster4 {
+	status = "disabled";
+};
+
+&mailbox0_cluster5 {
+	status = "disabled";
+};
+
+&mailbox0_cluster6 {
+	status = "disabled";
+};
+
+&mailbox0_cluster7 {
+	status = "disabled";
+};
+
+&mailbox0_cluster8 {
+	status = "disabled";
+};
+
+&mailbox0_cluster9 {
+	status = "disabled";
+};
+
+&mailbox0_cluster10 {
+	status = "disabled";
+};
+
+&mailbox0_cluster11 {
+	status = "disabled";
+};
-- 
2.28.0


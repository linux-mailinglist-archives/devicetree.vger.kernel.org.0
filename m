Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D45BA70A8B
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2019 22:20:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729687AbfGVUUr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 16:20:47 -0400
Received: from lelv0142.ext.ti.com ([198.47.23.249]:46560 "EHLO
        lelv0142.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729377AbfGVUUq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Jul 2019 16:20:46 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6MKKhkp024076;
        Mon, 22 Jul 2019 15:20:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1563826843;
        bh=N9Id44vPnHBsGn8qtGEL/OKGV6syaAqFqHY6EVGYDdM=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=xfrpynzPsWpAGycl0kv4DILD26MnK9UQOQ+9EsDPBn9yOoKOIH4kbhG99dosOcK5E
         xFCe+3qwTTBguksKpl7MXhyJyQl9+F1m6zC3zn310U6CK86dn/by9aT7Bxc6nxyuWc
         jNGmeJ2hTu6grQiGw+9EQRCYWAfnUDOcv7y3UtxY=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6MKKhVw115462
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 22 Jul 2019 15:20:43 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 22
 Jul 2019 15:20:42 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 22 Jul 2019 15:20:43 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com [128.247.22.53])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6MKKgdF100023;
        Mon, 22 Jul 2019 15:20:42 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
        by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x6MKKgZ21525;
        Mon, 22 Jul 2019 15:20:42 -0500 (CDT)
From:   Suman Anna <s-anna@ti.com>
To:     Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 4/4] arm64: dts: ti: k3-j721e-main: Add IPC sub-mailbox nodes for all R5Fs & DSPs
Date:   Mon, 22 Jul 2019 15:20:24 -0500
Message-ID: <20190722202024.14867-5-s-anna@ti.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190722202024.14867-1-s-anna@ti.com>
References: <20190722202024.14867-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the sub-mailbox nodes that are used to communicate between MPU and
various remote processors present in the J721E SoCs. These include the
R5F remote processors in the dual-R5F cluster (MCU_R5FSS0) in the MCU
domain and the two dual-R5F clusters (MAIN_R5FSS0 & MAIN_R5FSS1) in the
MAIN domain; the two C66x DSP remote processors and the single C71x DSP
remote processor in the MAIN domain. The parent mailbox cluster nodes
are also enabled.

The sub-mailbox nodes utilize the System Mailbox clusters 0 through 4.
These sub-mailbox nodes are added to match the hard-coded mailbox
configuration used within the TI RTOS IPC software packages. The R5F
processor sub-systems are assumed to be running in Split mode, so a
sub-mailbox node is used by each of the R5F cores. The sub-mailbox node
for the first R5F core in each cluster is used in case of Lockstep mode.

NOTE:
The GIC_SPI interrupts to be used are dynamically allocated and managed
by the System Firmware through the ti-sci-intr irqchip driver. So, only
valid interrupts (each cluster's User 0 IRQ output) that are used by the
sub-mailbox devices are enabled. This is done to minimize the number of
NavSS Interrupt Router outputs utilized.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 60 +++++++++++++++++++++--
 1 file changed, 55 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
index 319d423b3440..2985c73154fd 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
@@ -102,7 +102,18 @@
 			#mbox-cells = <1>;
 			ti,mbox-num-users = <4>;
 			ti,mbox-num-fifos = <16>;
-			status = "disabled";
+			interrupt-parent = <&main_navss_intr>;
+			interrupts = <214 0>;
+
+			mbox_mcu_r5fss0_core0: mbox-mcu-r5fss0-core0 {
+				ti,mbox-rx = <0 0 0>;
+				ti,mbox-tx = <1 0 0>;
+			};
+
+			mbox_mcu_r5fss0_core1: mbox-mcu-r5fss0-core1 {
+				ti,mbox-rx = <2 0 0>;
+				ti,mbox-tx = <3 0 0>;
+			};
 		};
 
 		mailbox0_cluster1: mailbox@31f81000 {
@@ -111,7 +122,18 @@
 			#mbox-cells = <1>;
 			ti,mbox-num-users = <4>;
 			ti,mbox-num-fifos = <16>;
-			status = "disabled";
+			interrupt-parent = <&main_navss_intr>;
+			interrupts = <215 0>;
+
+			mbox_main_r5fss0_core0: mbox-main-r5fss0-core0 {
+				ti,mbox-rx = <0 0 0>;
+				ti,mbox-tx = <1 0 0>;
+			};
+
+			mbox_main_r5fss0_core1: mbox-main-r5fss0-core1 {
+				ti,mbox-rx = <2 0 0>;
+				ti,mbox-tx = <3 0 0>;
+			};
 		};
 
 		mailbox0_cluster2: mailbox@31f82000 {
@@ -120,7 +142,18 @@
 			#mbox-cells = <1>;
 			ti,mbox-num-users = <4>;
 			ti,mbox-num-fifos = <16>;
-			status = "disabled";
+			interrupt-parent = <&main_navss_intr>;
+			interrupts = <216 0>;
+
+			mbox_main_r5fss1_core0: mbox-main-r5fss1-core0 {
+				ti,mbox-rx = <0 0 0>;
+				ti,mbox-tx = <1 0 0>;
+			};
+
+			mbox_main_r5fss1_core1: mbox-main-r5fss1-core1 {
+				ti,mbox-rx = <2 0 0>;
+				ti,mbox-tx = <3 0 0>;
+			};
 		};
 
 		mailbox0_cluster3: mailbox@31f83000 {
@@ -129,7 +162,18 @@
 			#mbox-cells = <1>;
 			ti,mbox-num-users = <4>;
 			ti,mbox-num-fifos = <16>;
-			status = "disabled";
+			interrupt-parent = <&main_navss_intr>;
+			interrupts = <217 0>;
+
+			mbox_c66_0: mbox-c66-0 {
+				ti,mbox-rx = <0 0 0>;
+				ti,mbox-tx = <1 0 0>;
+			};
+
+			mbox_c66_1: mbox-c66-1 {
+				ti,mbox-rx = <2 0 0>;
+				ti,mbox-tx = <3 0 0>;
+			};
 		};
 
 		mailbox0_cluster4: mailbox@31f84000 {
@@ -138,7 +182,13 @@
 			#mbox-cells = <1>;
 			ti,mbox-num-users = <4>;
 			ti,mbox-num-fifos = <16>;
-			status = "disabled";
+			interrupt-parent = <&main_navss_intr>;
+			interrupts = <218 0>;
+
+			mbox_c71_0: mbox-c71-0 {
+				ti,mbox-rx = <0 0 0>;
+				ti,mbox-tx = <1 0 0>;
+			};
 		};
 
 		mailbox0_cluster5: mailbox@31f85000 {
-- 
2.22.0


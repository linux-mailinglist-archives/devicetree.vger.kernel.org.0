Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5E58770A89
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2019 22:20:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727808AbfGVUUn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 16:20:43 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:53358 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729377AbfGVUUm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Jul 2019 16:20:42 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6MKKdoZ107367;
        Mon, 22 Jul 2019 15:20:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1563826839;
        bh=xSJYWr6Q8dYY3cdBz2U1xq3NTPqBkr/olNgj1NHVlMI=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=vvOKleEYyCUM4lW2vCR9ETAa3WjMlaau8FhJ0c+MZyOhIZqfaUaQVMnBnbU1wdT+O
         vyUuBDWl9TgGx8Sg7RaWQlRavw2pOpR21+76HPhfOE9kLCWD47GnFIb9RbnYo+JlAl
         fDUeCGp11+tjkwMqgwU0CZ11g8+RX2QNi5gYZQGE=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6MKKdDG001721
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 22 Jul 2019 15:20:39 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 22
 Jul 2019 15:20:38 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 22 Jul 2019 15:20:38 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com [128.247.22.53])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6MKKcUB099967;
        Mon, 22 Jul 2019 15:20:38 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
        by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x6MKKcZ21510;
        Mon, 22 Jul 2019 15:20:38 -0500 (CDT)
From:   Suman Anna <s-anna@ti.com>
To:     Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 2/4] arm64: dts: ti: k3-am65-main: Add IPC sub-mailbox nodes for R5Fs
Date:   Mon, 22 Jul 2019 15:20:22 -0500
Message-ID: <20190722202024.14867-3-s-anna@ti.com>
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

Add the sub-mailbox nodes that are used to communicate between
MPU and the two R5F remote processors present in the MCU domain.
The parent mailbox cluster nodes are enabled and the interrupts
associated with the Mailbox Cluster User interrupt used by the
sub-mailbox nodes are also added. The GIC_SPI interrupt to be
used is dynamically allocated and managed by the System Firmware
through the ti-sci-intr irqchip driver.

The sub-mailbox nodes utilize the System Mailbox clusters 1 and 2.
These sub-mailbox nodes are added to match the hard-coded mailbox
configuration used within the TI RTOS IPC software packages. The
Cortex R5F processor sub-system is assumed to be running in Split
mode, so a sub-mailbox node is used by each of the R5F cores. Only
the sub-mailbox node from cluster 0 is used in case of Lockstep
mode.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
index 0b3ea2a871ee..317563c995b1 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -426,7 +426,13 @@
 			#mbox-cells = <1>;
 			ti,mbox-num-users = <4>;
 			ti,mbox-num-fifos = <16>;
-			status = "disabled";
+			interrupt-parent = <&intr_main_navss>;
+			interrupts = <164 0>;
+
+			mbox_mcu_r5fss0_core0: mbox-mcu-r5fss0-core0 {
+				ti,mbox-tx = <1 0 0>;
+				ti,mbox-rx = <0 0 0>;
+			};
 		};
 
 		mailbox0_cluster1: mailbox@31f81000 {
@@ -435,7 +441,13 @@
 			#mbox-cells = <1>;
 			ti,mbox-num-users = <4>;
 			ti,mbox-num-fifos = <16>;
-			status = "disabled";
+			interrupt-parent = <&intr_main_navss>;
+			interrupts = <165 0>;
+
+			mbox_mcu_r5fss0_core1: mbox-mcu-r5fss0-core1 {
+				ti,mbox-tx = <1 0 0>;
+				ti,mbox-rx = <0 0 0>;
+			};
 		};
 
 		mailbox0_cluster2: mailbox@31f82000 {
-- 
2.22.0


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E3D197426D
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2019 02:10:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388585AbfGYAKd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Jul 2019 20:10:33 -0400
Received: from lelv0143.ext.ti.com ([198.47.23.248]:59980 "EHLO
        lelv0143.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388569AbfGYAKd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Jul 2019 20:10:33 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6P0ATwV122045;
        Wed, 24 Jul 2019 19:10:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1564013429;
        bh=qDreqCR73pbPENS9RmPYUr2C38wb56QlLWKMCBYTvao=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=FsRKLusBBkHHGxournzCefucjDxNG4SNNUxAfxUxBlcyAmDA6WXGYzvVFRv5gddDy
         L2W6besepVx8SwZYQIvRY/NuEvpykAsAy9HXetT0sAfM9x4ffFirWg89Pl8vBsEW+8
         7GTSmvQ+YpRswpQ39PIAoCajTsbEcY+97lpj0KGU=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6P0ATUf116874
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 24 Jul 2019 19:10:29 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 24
 Jul 2019 19:10:29 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 24 Jul 2019 19:10:29 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com [128.247.22.53])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6P0ATl8066063;
        Wed, 24 Jul 2019 19:10:29 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
        by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x6P0ATZ03271;
        Wed, 24 Jul 2019 19:10:29 -0500 (CDT)
From:   Suman Anna <s-anna@ti.com>
To:     Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH v2 2/4] arm64: dts: ti: k3-am65-base-board: Add IPC sub-mailbox nodes for R5Fs
Date:   Wed, 24 Jul 2019 19:10:18 -0500
Message-ID: <20190725001020.23781-3-s-anna@ti.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190725001020.23781-1-s-anna@ti.com>
References: <20190725001020.23781-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the sub-mailbox nodes that are used to communicate between MPU and
the two R5F remote processors present in the MCU domain to the AM654
EVM base board. These sub-mailbox nodes utilize the System Mailbox
clusters 0 and 1. The interrupts associated with the Mailbox Cluster
User interrupt used by the sub-mailbox nodes are also added. The GIC_SPI
interrupt to be used is dynamically allocated and managed by the System
Firmware through the ti-sci-intr irqchip driver. All the remaining
mailbox clusters are currently not used on A53 core, and so are disabled.

The sub-mailbox nodes added match the hard-coded mailbox configuration
used within the TI RTOS IPC software packages. The Cortex R5F processor
sub-system is assumed to be running in Split mode, so a sub-mailbox node
is used by each of the R5F cores. Only the sub-mailbox node from cluster 0
is used in case of Lockstep mode.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
v2:
 - Sub-mailboxes added in board dts file instead of base dtsi file
 - Unused mailbox clusters 2 through 11 disabled
 - Patch description and title updated
v1: https://patchwork.kernel.org/patch/11053405/

 .../arm64/boot/dts/ti/k3-am654-base-board.dts | 58 +++++++++++++++++++
 1 file changed, 58 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
index 52c245d36db9..579b7a474f35 100644
--- a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
@@ -279,3 +279,61 @@
 &pcie1_ep {
 	status = "disabled";
 };
+
+&mailbox0_cluster0 {
+	interrupts = <164 0>;
+
+	mbox_mcu_r5fss0_core0: mbox-mcu-r5fss0-core0 {
+		ti,mbox-tx = <1 0 0>;
+		ti,mbox-rx = <0 0 0>;
+	};
+};
+
+&mailbox0_cluster1 {
+	interrupts = <165 0>;
+
+	mbox_mcu_r5fss0_core1: mbox-mcu-r5fss0-core1 {
+		ti,mbox-tx = <1 0 0>;
+		ti,mbox-rx = <0 0 0>;
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
2.22.0


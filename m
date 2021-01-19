Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E1E722FBCC0
	for <lists+devicetree@lfdr.de>; Tue, 19 Jan 2021 17:44:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389278AbhASQm0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jan 2021 11:42:26 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:53096 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389445AbhASQlj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jan 2021 11:41:39 -0500
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10JGdSY5013326;
        Tue, 19 Jan 2021 10:39:28 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1611074368;
        bh=wom21ZvA8/JbeF5hTDFRnUvokXDCZIE5hBeKSj2dnds=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=tAFRkHPk2TcFUgaj413s6p2WKGneNtXCcd6MQKYvVdMcydNzhLptSMjBtlA5GyFM9
         GyFvqZmcgJnNJ62glLWU0zSbyc645qLItaWXf1zyKMHGVk98P/jiSdajMezlRi16Y5
         fongI7V7UzKe5XBZrzgLeB0fSbQ2nartfZ0a1nGU=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10JGdScq036645
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 19 Jan 2021 10:39:28 -0600
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 19
 Jan 2021 10:39:27 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 19 Jan 2021 10:39:27 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10JGdRa9124425;
        Tue, 19 Jan 2021 10:39:27 -0600
From:   Dave Gerlach <d-gerlach@ti.com>
To:     Nishanth Menon <nm@ti.com>
CC:     Dave Gerlach <d-gerlach@ti.com>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Tony Lindgren <tony@atomide.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Suman Anna <s-anna@ti.com>, Sekhar Nori <nsekhar@ti.com>,
        Kishon Vijay Abraham <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Aswath Govindraju <a-govindraju@ti.com>
Subject: [PATCH v2 4/5] arm64: dts: ti: k3-am64-main: Enable DMA support
Date:   Tue, 19 Jan 2021 10:39:26 -0600
Message-ID: <20210119163927.774-5-d-gerlach@ti.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210119163927.774-1-d-gerlach@ti.com>
References: <20210119163927.774-1-d-gerlach@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Peter Ujfalusi <peter.ujfalusi@ti.com>

Add the nodes for DMSS INTA, BCDMA and PKTDMA to enable the use of the
DMAs in the system.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
Signed-off-by: Dave Gerlach <d-gerlach@ti.com>
---
v1 -> v2:
* New patch from v1

 arch/arm64/boot/dts/ti/k3-am64-main.dtsi | 74 ++++++++++++++++++++++++
 1 file changed, 74 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am64-main.dtsi b/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
index e65fdb358c4c..d0c804111079 100644
--- a/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
@@ -49,6 +49,8 @@ dmss: dmss {
 		dma-ranges;
 		ranges;
 
+		ti,sci-dev-id = <25>;
+
 		secure_proxy_main: mailbox@4d000000 {
 			compatible = "ti,am654-secure-proxy";
 			#mbox-cells = <1>;
@@ -59,6 +61,78 @@ secure_proxy_main: mailbox@4d000000 {
 			interrupt-names = "rx_012";
 			interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
 		};
+
+		inta_main_dmss: interrupt-controller@48000000 {
+			compatible = "ti,sci-inta";
+			reg = <0x00 0x48000000 0x00 0x100000>;
+			#address-cells = <0>;
+			#interrupt-cells = <0>;
+			interrupt-controller;
+			interrupt-parent = <&gic500>;
+			msi-controller;
+			ti,sci = <&dmsc>;
+			ti,sci-dev-id = <28>;
+			ti,interrupt-ranges = <4 68 36>;
+			ti,unmapped-event-sources = <&main_bcdma>, <&main_pktdma>;
+		};
+
+		main_bcdma: dma-controller@485c0100 {
+			compatible = "ti,am64-dmss-bcdma";
+			reg = <0x00 0x485c0100 0x00 0x100>,
+			      <0x00 0x4c000000 0x00 0x20000>,
+			      <0x00 0x4a820000 0x00 0x20000>,
+			      <0x00 0x4aa40000 0x00 0x20000>,
+			      <0x00 0x4bc00000 0x00 0x100000>;
+			reg-names = "gcfg", "bchanrt", "rchanrt", "tchanrt", "ringrt";
+			msi-parent = <&inta_main_dmss>;
+			#dma-cells = <3>;
+
+			ti,sci = <&dmsc>;
+			ti,sci-dev-id = <26>;
+			ti,sci-rm-range-bchan = <0x20>; /* BLOCK_COPY_CHAN */
+			ti,sci-rm-range-rchan = <0x21>; /* SPLIT_TR_RX_CHAN */
+			ti,sci-rm-range-tchan = <0x22>; /* SPLIT_TR_TX_CHAN */
+		};
+
+		main_pktdma: dma-controller@485c0000 {
+			compatible = "ti,am64-dmss-pktdma";
+			reg = <0x00 0x485c0000 0x00 0x100>,
+			      <0x00 0x4a800000 0x00 0x20000>,
+			      <0x00 0x4aa00000 0x00 0x40000>,
+			      <0x00 0x4b800000 0x00 0x400000>;
+			reg-names = "gcfg", "rchanrt", "tchanrt", "ringrt";
+			msi-parent = <&inta_main_dmss>;
+			#dma-cells = <2>;
+
+			ti,sci = <&dmsc>;
+			ti,sci-dev-id = <30>;
+			ti,sci-rm-range-tchan = <0x23>, /* UNMAPPED_TX_CHAN */
+						<0x24>, /* CPSW_TX_CHAN */
+						<0x25>, /* SAUL_TX_0_CHAN */
+						<0x26>, /* SAUL_TX_1_CHAN */
+						<0x27>, /* ICSSG_0_TX_CHAN */
+						<0x28>; /* ICSSG_1_TX_CHAN */
+			ti,sci-rm-range-tflow = <0x10>, /* RING_UNMAPPED_TX_CHAN */
+						<0x11>, /* RING_CPSW_TX_CHAN */
+						<0x12>, /* RING_SAUL_TX_0_CHAN */
+						<0x13>, /* RING_SAUL_TX_1_CHAN */
+						<0x14>, /* RING_ICSSG_0_TX_CHAN */
+						<0x15>; /* RING_ICSSG_1_TX_CHAN */
+			ti,sci-rm-range-rchan = <0x29>, /* UNMAPPED_RX_CHAN */
+						<0x2b>, /* CPSW_RX_CHAN */
+						<0x2d>, /* SAUL_RX_0_CHAN */
+						<0x2f>, /* SAUL_RX_1_CHAN */
+						<0x31>, /* SAUL_RX_2_CHAN */
+						<0x33>, /* SAUL_RX_3_CHAN */
+						<0x35>, /* ICSSG_0_RX_CHAN */
+						<0x37>; /* ICSSG_1_RX_CHAN */
+			ti,sci-rm-range-rflow = <0x2a>, /* FLOW_UNMAPPED_RX_CHAN */
+						<0x2c>, /* FLOW_CPSW_RX_CHAN */
+						<0x2e>, /* FLOW_SAUL_RX_0/1_CHAN */
+						<0x32>, /* FLOW_SAUL_RX_2/3_CHAN */
+						<0x36>, /* FLOW_ICSSG_0_RX_CHAN */
+						<0x38>; /* FLOW_ICSSG_1_RX_CHAN */
+		};
 	};
 
 	dmsc: dmsc@44043000 {
-- 
2.28.0


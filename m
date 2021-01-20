Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1566F2FDB2A
	for <lists+devicetree@lfdr.de>; Wed, 20 Jan 2021 21:49:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732247AbhATUtY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 15:49:24 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:49236 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388484AbhATU0s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 15:26:48 -0500
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10KKPWAi039657;
        Wed, 20 Jan 2021 14:25:32 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1611174332;
        bh=a860Bk2b6O2EQ43esiaErREx0zOF1XcsHCWahHr1ROM=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=ZrZoC+JJ5tKnPmoyGEe/OlUqikGZtp0nTqDEtl16pSEBLaj2vp6TuK472OrhVCcU2
         f9EzvO0cTt6OLYGLI6YocRGRlg3ARf1D3FyBsLDo30DEbtqEWybi4bopfxlYo6h4Zo
         AGPYTTN46WN2O3TUmc95LvkspTiTYjGgcWqEWSI4=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10KKPW63081479
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 20 Jan 2021 14:25:32 -0600
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 20
 Jan 2021 14:25:32 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 20 Jan 2021 14:25:32 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10KKPW2s090499;
        Wed, 20 Jan 2021 14:25:32 -0600
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
Subject: [PATCH v3 4/5] arm64: dts: ti: k3-am64-main: Enable DMA support
Date:   Wed, 20 Jan 2021 14:25:31 -0600
Message-ID: <20210120202532.9011-5-d-gerlach@ti.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210120202532.9011-1-d-gerlach@ti.com>
References: <20210120202532.9011-1-d-gerlach@ti.com>
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
 arch/arm64/boot/dts/ti/k3-am64-main.dtsi | 74 ++++++++++++++++++++++++
 1 file changed, 74 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am64-main.dtsi b/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
index e3ef4bff04af..25b702303637 100644
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


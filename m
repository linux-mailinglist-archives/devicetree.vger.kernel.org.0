Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6C7B6344F4B
	for <lists+devicetree@lfdr.de>; Mon, 22 Mar 2021 19:55:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232101AbhCVSzL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Mar 2021 14:55:11 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:35870 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232246AbhCVSyn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Mar 2021 14:54:43 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 12MIsZCR108101;
        Mon, 22 Mar 2021 13:54:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1616439276;
        bh=LgnkISi5sP9nD3D55mg+BQJYMT4pSZVW2X270a8GdjE=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=Cilo3vJ9y7y9B0gxnfQDYjfoBunmE7e7sTlFtGbwNaick59rtPyftfS3hKYwj2bVF
         TqvFh2anHmPj3iszHAoWavAVYwedpW1mag4rVtiUEw+dPJrx5g+wSirRhR9TaRta/w
         86kVoG67DiFnLYNn8RgyPu9DOdt1vG3k0wMlZLqU=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 12MIsZ90010993
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 22 Mar 2021 13:54:35 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Mon, 22
 Mar 2021 13:54:35 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Mon, 22 Mar 2021 13:54:35 -0500
Received: from lelv0597.itg.ti.com (lelv0597.itg.ti.com [10.181.64.32])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 12MIsZgE037590;
        Mon, 22 Mar 2021 13:54:35 -0500
Received: from localhost ([10.250.66.107])
        by lelv0597.itg.ti.com (8.14.7/8.14.7) with ESMTP id 12MIsZlJ019565;
        Mon, 22 Mar 2021 13:54:35 -0500
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>
CC:     Gowtham Tammana <g-tammana@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH v2 3/3] arm64: dts: ti: k3-am642-evm/sk: Add IPC sub-mailbox nodes
Date:   Mon, 22 Mar 2021 13:54:30 -0500
Message-ID: <20210322185430.957-4-s-anna@ti.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210322185430.957-1-s-anna@ti.com>
References: <20210322185430.957-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the sub-mailbox nodes that are used to communicate between MPU and
various remote processors present in the AM64x SoCs for the AM642 EVM
and AM642 SK boards. These include the R5F remote processors in the two
dual-R5F clusters (MAIN_R5FSS0 & MAIN_R5FSS1) in the MAIN domain; and a
M4 processor in the MCU safety island.

These sub-mailbox nodes utilize the System Mailbox clusters 2, 4 and 6.
The remaining clusters 3, 5 and 7 are currently not used, and so are
disabled. Clusters 0 and 1 were never added to the dts file as they do
not support interrupts towards the A53 core.

The sub-mailbox nodes added match the hard-coded mailbox configuration
used within the TI RTOS IPC software packages. The R5F processor
sub-systems are assumed to be running in Split mode, so a sub-mailbox
node is used by each of the R5F cores. Only the sub-mailbox node for
the first R5F core in each cluster is used in case of a Single-CPU mode
for that R5F cluster.

NOTE:
The cluster nodes only have the Mailbox IP interrupt outputs that are
routed to the GIC_SPI. The sub-mailbox nodes' irq-id are indexing into
the listed interrupts, with the usr-id using the actual interrupt output
line number from the Mailbox IP.

Signed-off-by: Suman Anna <s-anna@ti.com>
Reviewed-by: Gowtham Tammana <g-tammana@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am642-evm.dts | 43 +++++++++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am642-sk.dts  | 43 +++++++++++++++++++++++++
 2 files changed, 86 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am642-evm.dts b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
index 9522f104d979..0ebdd7981853 100644
--- a/arch/arm64/boot/dts/ti/k3-am642-evm.dts
+++ b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
@@ -418,3 +418,46 @@ flash@0{
 		#size-cells = <1>;
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
diff --git a/arch/arm64/boot/dts/ti/k3-am642-sk.dts b/arch/arm64/boot/dts/ti/k3-am642-sk.dts
index 3a5bee4b0b0c..5503fc6ddc0d 100644
--- a/arch/arm64/boot/dts/ti/k3-am642-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am642-sk.dts
@@ -284,3 +284,46 @@ flash@0{
 		#size-cells = <1>;
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


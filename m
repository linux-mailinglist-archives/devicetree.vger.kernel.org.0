Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 64B5E33FBB4
	for <lists+devicetree@lfdr.de>; Thu, 18 Mar 2021 00:11:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229793AbhCQXKi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Mar 2021 19:10:38 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:46340 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229613AbhCQXKR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Mar 2021 19:10:17 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 12HNA8ix024282;
        Wed, 17 Mar 2021 18:10:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1616022608;
        bh=9E81joDQEm5DAawrcMdIBnzqfL2JeUEOD7l1pNyvYLs=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=qECuqOjvQ3bRo20/+n+gFmyCHEHiVbQppeaYoCcpEbGkKTtDuqNHvRtr5anYUuggY
         Ej/hGYndsNQkOQgyjQR9UST2ZP+wXAHNg8OOaPZiJE8+ALBWOwKP3HP/27/NY1Mitj
         U2vtNrgeddTrPb1c/quolJUmxWbMRLjqEg9Qr0TI=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 12HNA8eA072392
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 17 Mar 2021 18:10:08 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Wed, 17
 Mar 2021 18:10:07 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Wed, 17 Mar 2021 18:10:08 -0500
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com [10.247.120.73])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 12HNA7Ix004442;
        Wed, 17 Mar 2021 18:10:07 -0500
Received: from localhost ([10.250.32.139])
        by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 12HNA7Yh002830;
        Wed, 17 Mar 2021 18:10:07 -0500
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 2/4] arm64: dts: ti: k3-am64-main: Add mailbox cluster nodes
Date:   Wed, 17 Mar 2021 18:09:44 -0500
Message-ID: <20210317230946.23675-3-s-anna@ti.com>
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

The AM64 MAIN domain contains a Mailbox IP instance with multiple
clusters, and is a variant of the IP on current AM65x and J721E
SoCs. The AM64x SoC has only 8 clusters with no interrupts routed
to the A53 core on the first 2 clusters. The interrupt outputs
from the IP do not go through any Interrupt Routers and are
hard-wired to each processor, with only couple of interrupts
from each cluster reaching the A53 core.

Add all the Mailbox clusters that generate interrupts towards the
A53 core as their own nodes under the cbass_main node instead of
creating an almost empty parent node for the Mailbox IP and the
clusters as its child nodes. All these nodes are enabled by default
in the base dtsi file, but any cluster that does not define any
child sub-mailbox nodes should be disabled in the corresponding
board dts files.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am64-main.dtsi | 58 ++++++++++++++++++++++++
 1 file changed, 58 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am64-main.dtsi b/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
index 96a19d4be9d5..1c8dc531e6d8 100644
--- a/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
@@ -527,4 +527,62 @@ hwspinlock: spinlock@2a000000 {
 		reg = <0x00 0x2a000000 0x00 0x1000>;
 		#hwlock-cells = <1>;
 	};
+
+	mailbox0_cluster2: mailbox@29020000 {
+		compatible = "ti,am64-mailbox";
+		reg = <0x00 0x29020000 0x00 0x200>;
+		interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
+		#mbox-cells = <1>;
+		ti,mbox-num-users = <4>;
+		ti,mbox-num-fifos = <16>;
+	};
+
+	mailbox0_cluster3: mailbox@29030000 {
+		compatible = "ti,am64-mailbox";
+		reg = <0x00 0x29030000 0x00 0x200>;
+		interrupts = <GIC_SPI 82 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
+		#mbox-cells = <1>;
+		ti,mbox-num-users = <4>;
+		ti,mbox-num-fifos = <16>;
+	};
+
+	mailbox0_cluster4: mailbox@29040000 {
+		compatible = "ti,am64-mailbox";
+		reg = <0x00 0x29040000 0x00 0x200>;
+		interrupts = <GIC_SPI 84 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>;
+		#mbox-cells = <1>;
+		ti,mbox-num-users = <4>;
+		ti,mbox-num-fifos = <16>;
+	};
+
+	mailbox0_cluster5: mailbox@29050000 {
+		compatible = "ti,am64-mailbox";
+		reg = <0x00 0x29050000 0x00 0x200>;
+		interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
+		#mbox-cells = <1>;
+		ti,mbox-num-users = <4>;
+		ti,mbox-num-fifos = <16>;
+	};
+
+	mailbox0_cluster6: mailbox@29060000 {
+		compatible = "ti,am64-mailbox";
+		reg = <0x00 0x29060000 0x00 0x200>;
+		interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH>;
+		#mbox-cells = <1>;
+		ti,mbox-num-users = <4>;
+		ti,mbox-num-fifos = <16>;
+	};
+
+	mailbox0_cluster7: mailbox@29070000 {
+		compatible = "ti,am64-mailbox";
+		reg = <0x00 0x29070000 0x00 0x200>;
+		interrupts = <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>;
+		#mbox-cells = <1>;
+		ti,mbox-num-users = <4>;
+		ti,mbox-num-fifos = <16>;
+	};
 };
-- 
2.30.1


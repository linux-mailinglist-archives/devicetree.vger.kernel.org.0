Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 23DB7116AB
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2019 11:42:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726371AbfEBJmA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 May 2019 05:42:00 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:60392 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726268AbfEBJmA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 May 2019 05:42:00 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x429fsxG002376;
        Thu, 2 May 2019 04:41:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1556790115;
        bh=S8mft0y3RIyfD4taw6HTF4nknUaE5gN5fBVEGSLXx7c=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=eexBEWC86jtrY/yV4aoWgQdtt1tWIj16NySwT5PCEGskYcSSZv+Bua5pYmXjXJoku
         PS/fxoLXZY6zkvTMfnfk5IBCpfLzgiHypDMfTQWlaWriR5CYxVqbIwlUIunqdZIYJa
         ggdDgBBfPzb33iSlkMFsbb4+M+fW0ZvSc3vAtcCM=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x429fsac070564
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 2 May 2019 04:41:54 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 2 May
 2019 04:41:54 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 2 May 2019 04:41:54 -0500
Received: from uda0131933.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x429fkS1038664;
        Thu, 2 May 2019 04:41:52 -0500
From:   Lokesh Vutla <lokeshvutla@ti.com>
To:     Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>,
        Rob Herring <robh+dt@kernel.org>
CC:     Sekhar Nori <nsekhar@ti.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Peter Ujfalusi <peter.ujfalusi@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH 2/3] arm64: dts: ti: k3-am654: Add interrupt controllers in main domain
Date:   Thu, 2 May 2019 15:11:18 +0530
Message-ID: <20190502094119.16350-3-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190502094119.16350-1-lokeshvutla@ti.com>
References: <20190502094119.16350-1-lokeshvutla@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Main domain in AM654 has the following interrupt controller instances:
- Main Domain GPIO Interrupt router connected to gpio in main domain.
- Under the Main Domain Navigator Subsystem(NAVSS)
    - Main Navss Interrupt Router connected to main navss inta and mailboxes.
    - Main Navss Interrupt Aggregator connected to main domain UDMASS

Add DT nodes for the above three interrupt controllers available
in main domain.

Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 41 ++++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
index 752455269fab..22154f401930 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -309,4 +309,45 @@
 		clock-names = "wkupclk", "refclk";
 		#phy-cells = <0>;
 	};
+
+	intr_main_gpio: interrupt-controller0 {
+		compatible = "ti,sci-intr";
+		ti,intr-trigger-type = <1>;
+		interrupt-controller;
+		interrupt-parent = <&gic500>;
+		#interrupt-cells = <2>;
+		ti,sci = <&dmsc>;
+		ti,sci-dst-id = <56>;
+		ti,sci-rm-range-girq = <0x1>;
+	};
+
+	cbass_main_navss: interconnect0 {
+		compatible = "simple-bus";
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		intr_main_navss: interrupt-controller1 {
+			compatible = "ti,sci-intr";
+			ti,intr-trigger-type = <4>;
+			interrupt-controller;
+			interrupt-parent = <&gic500>;
+			#interrupt-cells = <2>;
+			ti,sci = <&dmsc>;
+			ti,sci-dst-id = <56>;
+			ti,sci-rm-range-girq = <0x0>, <0x2>;
+		};
+
+		inta_main_udmass: interrupt-controller@33d00000 {
+			compatible = "ti,sci-inta";
+			reg = <0x0 0x33d00000 0x0 0x100000>;
+			interrupt-controller;
+			interrupt-parent = <&intr_main_navss>;
+			msi-controller;
+			ti,sci = <&dmsc>;
+			ti,sci-dev-id = <179>;
+			ti,sci-rm-range-vint = <0x0>;
+			ti,sci-rm-range-global-event = <0x1>;
+		};
+	};
 };
-- 
2.21.0


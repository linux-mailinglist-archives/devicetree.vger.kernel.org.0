Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D796D83460
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2019 16:55:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733133AbfHFOzR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Aug 2019 10:55:17 -0400
Received: from relay4-d.mail.gandi.net ([217.70.183.196]:49861 "EHLO
        relay4-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1733129AbfHFOzR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Aug 2019 10:55:17 -0400
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 0EB56E0002;
        Tue,  6 Aug 2019 14:55:13 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     <devicetree@vger.kernel.org>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Antoine Tenart <antoine.tenart@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Nadav Haklai <nadavh@marvell.com>,
        <linux-arm-kernel@lists.infradead.org>,
        Grzegorz Jaszczyk <jaz@semihalf.com>,
        Marcin Wojtas <mw@semihalf.com>,
        Stefan Chulski <stefanc@marvell.com>,
        Yan Markman <ymarkman@marvell.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH 06/20] arm64: dts: marvell: Move clocks to AP806 specific file
Date:   Tue,  6 Aug 2019 16:54:46 +0200
Message-Id: <20190806145500.24109-7-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190806145500.24109-1-miquel.raynal@bootlin.com>
References: <20190806145500.24109-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Regular clocks and CPU clocks are specific to AP806, move them out of
the generic AP80x file so that AP807 can use its own clocks.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 arch/arm64/boot/dts/marvell/armada-ap806.dtsi | 16 ++++++++++++++++
 arch/arm64/boot/dts/marvell/armada-ap80x.dtsi | 12 ------------
 2 files changed, 16 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-ap806.dtsi b/arch/arm64/boot/dts/marvell/armada-ap806.dtsi
index cdadb28f287e..866628679ac7 100644
--- a/arch/arm64/boot/dts/marvell/armada-ap806.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-ap806.dtsi
@@ -12,3 +12,19 @@
 	model = "Marvell Armada AP806";
 	compatible = "marvell,armada-ap806";
 };
+
+&ap_syscon0 {
+	ap_clk: clock {
+		compatible = "marvell,ap806-clock";
+		#clock-cells = <1>;
+	};
+};
+
+&ap_syscon1 {
+	cpu_clk: clock-cpu@278 {
+		compatible = "marvell,ap806-cpu-clock";
+		clocks = <&ap_clk 0>, <&ap_clk 1>;
+		#clock-cells = <1>;
+		reg = <0x278 0xa30>;
+	};
+};
diff --git a/arch/arm64/boot/dts/marvell/armada-ap80x.dtsi b/arch/arm64/boot/dts/marvell/armada-ap80x.dtsi
index c44cd7c64bf6..b74b5cf724be 100644
--- a/arch/arm64/boot/dts/marvell/armada-ap80x.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-ap80x.dtsi
@@ -248,11 +248,6 @@
 				compatible = "syscon", "simple-mfd";
 				reg = <0x6f4000 0x2000>;
 
-				ap_clk: clock {
-					compatible = "marvell,ap806-clock";
-					#clock-cells = <1>;
-				};
-
 				ap_pinctrl: pinctrl {
 					compatible = "marvell,ap806-pinctrl";
 
@@ -278,13 +273,6 @@
 				#address-cells = <1>;
 				#size-cells = <1>;
 
-				cpu_clk: clock-cpu@278 {
-					compatible = "marvell,ap806-cpu-clock";
-					clocks = <&ap_clk 0>, <&ap_clk 1>;
-					#clock-cells = <1>;
-					reg = <0x278 0xa30>;
-				};
-
 				ap_thermal: thermal-sensor@80 {
 					compatible = "marvell,armada-ap806-thermal";
 					reg = <0x80 0x10>;
-- 
2.20.1


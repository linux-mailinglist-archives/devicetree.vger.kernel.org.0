Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 691C483464
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2019 16:55:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733115AbfHFOzX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Aug 2019 10:55:23 -0400
Received: from relay4-d.mail.gandi.net ([217.70.183.196]:33267 "EHLO
        relay4-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1733134AbfHFOzW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Aug 2019 10:55:22 -0400
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id CA3E6E0011;
        Tue,  6 Aug 2019 14:55:19 +0000 (UTC)
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
Subject: [PATCH 10/20] arm64: dts: marvell: Add AP807-quad cache description
Date:   Tue,  6 Aug 2019 16:54:50 +0200
Message-Id: <20190806145500.24109-11-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190806145500.24109-1-miquel.raynal@bootlin.com>
References: <20190806145500.24109-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Grzegorz Jaszczyk <jaz@semihalf.com>

Adding appropriate entries to device-tree allows the cache description
to show up in sysfs under: /sys/devices/system/cpu/cpuX/cache/.

Signed-off-by: Grzegorz Jaszczyk <jaz@semihalf.com>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../boot/dts/marvell/armada-ap807-quad.dtsi   | 42 +++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/armada-ap807-quad.dtsi b/arch/arm64/boot/dts/marvell/armada-ap807-quad.dtsi
index 65364691257d..840466e143b4 100644
--- a/arch/arm64/boot/dts/marvell/armada-ap807-quad.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-ap807-quad.dtsi
@@ -22,6 +22,13 @@
 			enable-method = "psci";
 			#cooling-cells = <2>;
 			clocks = <&cpu_clk 0>;
+			i-cache-size = <0xc000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			next-level-cache = <&l2_0>;
 		};
 		cpu1: cpu@1 {
 			device_type = "cpu";
@@ -30,6 +37,13 @@
 			enable-method = "psci";
 			#cooling-cells = <2>;
 			clocks = <&cpu_clk 0>;
+			i-cache-size = <0xc000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			next-level-cache = <&l2_0>;
 		};
 		cpu2: cpu@100 {
 			device_type = "cpu";
@@ -38,6 +52,13 @@
 			enable-method = "psci";
 			#cooling-cells = <2>;
 			clocks = <&cpu_clk 1>;
+			i-cache-size = <0xc000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			next-level-cache = <&l2_1>;
 		};
 		cpu3: cpu@101 {
 			device_type = "cpu";
@@ -46,6 +67,27 @@
 			enable-method = "psci";
 			#cooling-cells = <2>;
 			clocks = <&cpu_clk 1>;
+			i-cache-size = <0xc000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			next-level-cache = <&l2_1>;
+		};
+
+		l2_0: l2-cache0 {
+			compatible = "cache";
+			cache-size = <0x80000>;
+			cache-line-size = <64>;
+			cache-sets = <512>;
+		};
+
+		l2_1: l2-cache1 {
+			compatible = "cache";
+			cache-size = <0x80000>;
+			cache-line-size = <64>;
+			cache-sets = <512>;
 		};
 	};
 };
-- 
2.20.1


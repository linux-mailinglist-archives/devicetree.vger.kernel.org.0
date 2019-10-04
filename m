Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A1668CBD1F
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2019 16:27:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388919AbfJDO1x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Oct 2019 10:27:53 -0400
Received: from relay6-d.mail.gandi.net ([217.70.183.198]:42777 "EHLO
        relay6-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388780AbfJDO1x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Oct 2019 10:27:53 -0400
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 22A37C0025;
        Fri,  4 Oct 2019 14:27:50 +0000 (UTC)
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
Subject: [PATCH v2 07/21] arm64: dts: marvell: Add support for AP807/AP807-quad
Date:   Fri,  4 Oct 2019 16:27:24 +0200
Message-Id: <20191004142738.7370-8-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191004142738.7370-1-miquel.raynal@bootlin.com>
References: <20191004142738.7370-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Describe AP807 and AP807-quad support.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../boot/dts/marvell/armada-ap807-quad.dtsi   | 51 +++++++++++++++++++
 arch/arm64/boot/dts/marvell/armada-ap807.dtsi | 29 +++++++++++
 2 files changed, 80 insertions(+)
 create mode 100644 arch/arm64/boot/dts/marvell/armada-ap807-quad.dtsi
 create mode 100644 arch/arm64/boot/dts/marvell/armada-ap807.dtsi

diff --git a/arch/arm64/boot/dts/marvell/armada-ap807-quad.dtsi b/arch/arm64/boot/dts/marvell/armada-ap807-quad.dtsi
new file mode 100644
index 000000000000..65364691257d
--- /dev/null
+++ b/arch/arm64/boot/dts/marvell/armada-ap807-quad.dtsi
@@ -0,0 +1,51 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Device Tree file for Marvell Armada AP807 Quad
+ *
+ * Copyright (C) 2019 Marvell Technology Group Ltd.
+ */
+
+#include "armada-ap807.dtsi"
+
+/ {
+	model = "Marvell Armada AP807 Quad";
+	compatible = "marvell,armada-ap807-quad", "marvell,armada-ap807";
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu0: cpu@0 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a72", "arm,armv8";
+			reg = <0x000>;
+			enable-method = "psci";
+			#cooling-cells = <2>;
+			clocks = <&cpu_clk 0>;
+		};
+		cpu1: cpu@1 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a72", "arm,armv8";
+			reg = <0x001>;
+			enable-method = "psci";
+			#cooling-cells = <2>;
+			clocks = <&cpu_clk 0>;
+		};
+		cpu2: cpu@100 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a72", "arm,armv8";
+			reg = <0x100>;
+			enable-method = "psci";
+			#cooling-cells = <2>;
+			clocks = <&cpu_clk 1>;
+		};
+		cpu3: cpu@101 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a72", "arm,armv8";
+			reg = <0x101>;
+			enable-method = "psci";
+			#cooling-cells = <2>;
+			clocks = <&cpu_clk 1>;
+		};
+	};
+};
diff --git a/arch/arm64/boot/dts/marvell/armada-ap807.dtsi b/arch/arm64/boot/dts/marvell/armada-ap807.dtsi
new file mode 100644
index 000000000000..623010f3ca89
--- /dev/null
+++ b/arch/arm64/boot/dts/marvell/armada-ap807.dtsi
@@ -0,0 +1,29 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Device Tree file for Marvell Armada AP807
+ *
+ * Copyright (C) 2019 Marvell Technology Group Ltd.
+ */
+
+#define AP_NAME		ap807
+#include "armada-ap80x.dtsi"
+
+/ {
+	model = "Marvell Armada AP807";
+	compatible = "marvell,armada-ap807";
+};
+
+&ap_syscon0 {
+	ap_clk: clock {
+		compatible = "marvell,ap807-clock";
+		#clock-cells = <1>;
+	};
+};
+
+&ap_syscon1 {
+	cpu_clk: clock-cpu {
+		compatible = "marvell,ap807-cpu-clock";
+		clocks = <&ap_clk 0>, <&ap_clk 1>;
+		#clock-cells = <1>;
+	};
+};
-- 
2.20.1


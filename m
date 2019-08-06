Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C81968346D
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2019 16:55:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733150AbfHFOzd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Aug 2019 10:55:33 -0400
Received: from relay4-d.mail.gandi.net ([217.70.183.196]:56477 "EHLO
        relay4-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1733142AbfHFOzd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Aug 2019 10:55:33 -0400
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 585AEE0006;
        Tue,  6 Aug 2019 14:55:30 +0000 (UTC)
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
Subject: [PATCH 17/20] arm64: dts: marvell: Add support for Marvell CN9130 SoC support
Date:   Tue,  6 Aug 2019 16:54:57 +0200
Message-Id: <20190806145500.24109-18-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190806145500.24109-1-miquel.raynal@bootlin.com>
References: <20190806145500.24109-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

A CN9130 SoC has one AP807 and one internal CP115.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 arch/arm64/boot/dts/marvell/cn9130.dtsi | 37 +++++++++++++++++++++++++
 1 file changed, 37 insertions(+)
 create mode 100644 arch/arm64/boot/dts/marvell/cn9130.dtsi

diff --git a/arch/arm64/boot/dts/marvell/cn9130.dtsi b/arch/arm64/boot/dts/marvell/cn9130.dtsi
new file mode 100644
index 000000000000..a2b7e5ec979d
--- /dev/null
+++ b/arch/arm64/boot/dts/marvell/cn9130.dtsi
@@ -0,0 +1,37 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2019 Marvell International Ltd.
+ *
+ * Device tree for the CN9130 SoC.
+ */
+
+#include "armada-ap807-quad.dtsi"
+
+/ {
+	model = "Marvell Armada CN9130 SoC";
+	compatible = "marvell,cn9130", "marvell,armada-ap807-quad",
+		     "marvell,armada-ap807";
+};
+
+/*
+ * Instantiate the internal CP115
+ */
+
+#define CP11X_NAME		cp0
+#define CP11X_BASE		f2000000
+#define CP11X_PCIEx_MEM_BASE(iface) ((iface == 0) ? 0xc0000000 : \
+						    0xe0000000 + ((iface - 1) * 0x1000000))
+#define CP11X_PCIEx_MEM_SIZE(iface) ((iface == 0) ? 0x1ff00000 : 0xf00000)
+#define CP11X_PCIE0_BASE	f2600000
+#define CP11X_PCIE1_BASE	f2620000
+#define CP11X_PCIE2_BASE	f2640000
+
+#include "armada-cp115.dtsi"
+
+#undef CP11X_NAME
+#undef CP11X_BASE
+#undef CP11X_PCIEx_MEM_BASE
+#undef CP11X_PCIEx_MEM_SIZE
+#undef CP11X_PCIE0_BASE
+#undef CP11X_PCIE1_BASE
+#undef CP11X_PCIE2_BASE
-- 
2.20.1


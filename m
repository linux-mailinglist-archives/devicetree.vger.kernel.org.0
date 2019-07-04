Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D897F5F4F9
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2019 10:53:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726966AbfGDIxh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Jul 2019 04:53:37 -0400
Received: from inva020.nxp.com ([92.121.34.13]:35948 "EHLO inva020.nxp.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726993AbfGDIxh (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 4 Jul 2019 04:53:37 -0400
Received: from inva020.nxp.com (localhost [127.0.0.1])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id BBBA21A055D;
        Thu,  4 Jul 2019 10:53:35 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com [134.27.226.22])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id AF41E1A0145;
        Thu,  4 Jul 2019 10:53:35 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
        by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id E5517205D9;
        Thu,  4 Jul 2019 10:53:34 +0200 (CEST)
From:   Leonard Crestez <leonard.crestez@nxp.com>
To:     Shawn Guo <shawnguo@kernel.org>, Will Deacon <will@kernel.org>,
        Frank Li <Frank.li@nxp.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Andrey Smirnov <andrew.smirnov@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Fabio Estevam <fabio.estevam@nxp.com>,
        Jacky Bai <ping.bai@nxp.com>, devicetree@vger.kernel.org,
        kernel@pengutronix.de, linux-imx@nxp.com,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/3] arm64: dts: imx8m: Add ddr-pmu nodes
Date:   Thu,  4 Jul 2019 11:53:21 +0300
Message-Id: <b8aeb9caf6c2380a7c8f65b19e420e18498d5c1a.1562230183.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1562230183.git.leonard.crestez@nxp.com>
References: <cover.1562230183.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1562230183.git.leonard.crestez@nxp.com>
References: <cover.1562230183.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The same ddr perfomance counter IP from 8qxp is also available on imx8m
series so add it to dts.

Tested with `perf stat` and `memtester` on imx8mm-evk and obtained
plausible results.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 7 +++++++
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 7 +++++++
 2 files changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 232a7412755a..9a8d8cd21ef0 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -816,7 +816,14 @@
 			      <0x38880000 0xc0000>; /* GICR (RD_base + SGI_base) */
 			#interrupt-cells = <3>;
 			interrupt-controller;
 			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
 		};
+
+		ddr-pmu@3d800000 {
+			compatible = "fsl,imx8mm-ddr-pmu", "fsl,imx8m-ddr-pmu";
+			reg = <0x3d800000 0x400000>;
+			interrupt-parent = <&gic>;
+			interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
+		};
 	};
 };
diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index d09b808eff87..fb0fdee5f889 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -1031,7 +1031,14 @@
 			#interrupt-cells = <3>;
 			interrupt-controller;
 			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-parent = <&gic>;
 		};
+
+		ddr-pmu@3d800000 {
+			compatible = "fsl,imx8mq-ddr-pmu", "fsl,imx8m-ddr-pmu";
+			reg = <0x3d800000 0x400000>;
+			interrupt-parent = <&gic>;
+			interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
+		};
 	};
 };
-- 
2.17.1


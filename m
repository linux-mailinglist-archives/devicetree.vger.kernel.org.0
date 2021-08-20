Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 538343F2981
	for <lists+devicetree@lfdr.de>; Fri, 20 Aug 2021 11:52:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236532AbhHTJwh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Aug 2021 05:52:37 -0400
Received: from inva020.nxp.com ([92.121.34.13]:54676 "EHLO inva020.nxp.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S236861AbhHTJwg (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 20 Aug 2021 05:52:36 -0400
Received: from inva020.nxp.com (localhost [127.0.0.1])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 359061A080B;
        Fri, 20 Aug 2021 11:51:58 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id C620E1A07FA;
        Fri, 20 Aug 2021 11:51:57 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
        by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id 83897183ACDC;
        Fri, 20 Aug 2021 17:51:56 +0800 (+08)
From:   haibo.chen@nxp.com
To:     robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de
Cc:     kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] arm64: dts: imx8: change the spi-nor tx
Date:   Fri, 20 Aug 2021 17:29:50 +0800
Message-Id: <1629451790-10507-2-git-send-email-haibo.chen@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1629451790-10507-1-git-send-email-haibo.chen@nxp.com>
References: <1629451790-10507-1-git-send-email-haibo.chen@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Haibo Chen <haibo.chen@nxp.com>

Before commit 0e30f47232ab5 ("mtd: spi-nor: add support for DTR protocol"),
for all PP command, it only support 1-1-1 mode, no matter the tx setting
in dts. But after the upper commit, the logic change. It will choose
the best mode(fastest mode) which flash device and spi-nor host controller
both support.

qspi and fspi host controller do not support read 1-4-4 mode. so need to
set the tx to 1, let the common code finally select read 1-1-4 mode.

Signed-off-by: Haibo Chen <haibo.chen@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm-beacon-som.dtsi        | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-evk.dts                | 2 +-
 arch/arm64/boot/dts/freescale/imx8mn-beacon-som.dtsi        | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi       | 2 +-
 arch/arm64/boot/dts/freescale/imx8mq-evk.dts                | 2 ++
 arch/arm64/boot/dts/freescale/imx8mq-kontron-pitx-imx8m.dts | 2 +-
 6 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-beacon-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-beacon-som.dtsi
index 988f8ab679ad..40f5e7a3b064 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-beacon-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-beacon-som.dtsi
@@ -91,7 +91,7 @@
 		#size-cells = <1>;
 		compatible = "jedec,spi-nor";
 		spi-max-frequency = <80000000>;
-		spi-tx-bus-width = <4>;
+		spi-tx-bus-width = <1>;
 		spi-rx-bus-width = <4>;
 	};
 };
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
index 4e2820d19244..a2b24d4d4e3e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
@@ -48,7 +48,7 @@
 		#size-cells = <1>;
 		compatible = "jedec,spi-nor";
 		spi-max-frequency = <80000000>;
-		spi-tx-bus-width = <4>;
+		spi-tx-bus-width = <1>;
 		spi-rx-bus-width = <4>;
 	};
 };
diff --git a/arch/arm64/boot/dts/freescale/imx8mn-beacon-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-beacon-som.dtsi
index 54eaf3d6055b..3b2d627a0342 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-beacon-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn-beacon-som.dtsi
@@ -101,7 +101,7 @@
 		#size-cells = <1>;
 		compatible = "jedec,spi-nor";
 		spi-max-frequency = <80000000>;
-		spi-tx-bus-width = <4>;
+		spi-tx-bus-width = <1>;
 		spi-rx-bus-width = <4>;
 	};
 };
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi
index aa78e0d8c72b..fc178eebf8aa 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi
@@ -74,7 +74,7 @@
 		compatible = "jedec,spi-nor";
 		reg = <0>;
 		spi-max-frequency = <80000000>;
-		spi-tx-bus-width = <4>;
+		spi-tx-bus-width = <1>;
 		spi-rx-bus-width = <4>;
 	};
 };
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-evk.dts b/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
index 49f9db971f3b..b83df77195ec 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
@@ -337,6 +337,8 @@
 		#size-cells = <1>;
 		compatible = "micron,n25q256a", "jedec,spi-nor";
 		spi-max-frequency = <29000000>;
+		spi-tx-bus-width = <1>;
+		spi-rx-bus-width = <4>;
 	};
 };
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-kontron-pitx-imx8m.dts b/arch/arm64/boot/dts/freescale/imx8mq-kontron-pitx-imx8m.dts
index f593e4ff62e1..564746d5000d 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-kontron-pitx-imx8m.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-kontron-pitx-imx8m.dts
@@ -281,7 +281,7 @@
 		#address-cells = <1>;
 		#size-cells = <1>;
 		reg = <0>;
-		spi-tx-bus-width = <4>;
+		spi-tx-bus-width = <1>;
 		spi-rx-bus-width = <4>;
 		m25p,fast-read;
 		spi-max-frequency = <50000000>;
-- 
2.17.1


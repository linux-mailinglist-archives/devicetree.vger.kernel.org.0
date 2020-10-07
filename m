Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9CAD1285645
	for <lists+devicetree@lfdr.de>; Wed,  7 Oct 2020 03:25:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726841AbgJGBZa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Oct 2020 21:25:30 -0400
Received: from perceval.ideasonboard.com ([213.167.242.64]:39276 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726597AbgJGBZa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Oct 2020 21:25:30 -0400
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 238C142B4;
        Wed,  7 Oct 2020 03:25:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1602033927;
        bh=gTAk8aujAnyMuNR06OQU0RAHFc9wwIj4Jv9anULiR5M=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=G4lW0hLXSHatWyzLo0lqpYTK9O98ABC3+KQ/v6ZXelKZN21EQ+WmQNnfnV+Qsi70o
         seBZE2b7ox5DAPDOqDL4PnvjOKn6X/nJFImzicbteW1oUKnJPGQM1VtOhmY7fBWTq/
         67Zja9eBTtaYyxV51s1Qnw2L0YsFTBHVKznQV+/0=
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     dri-devel@lists.freedesktop.org
Cc:     Stefan Agner <stefan@agner.ch>, Marek Vasut <marex@denx.de>,
        devicetree@vger.kernel.org,
        =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
        Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 4/7] ARM: dts: imx: Fix LCDIF compatible strings
Date:   Wed,  7 Oct 2020 04:24:35 +0300
Message-Id: <20201007012438.27970-5-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201007012438.27970-1-laurent.pinchart@ideasonboard.com>
References: <20201007012438.27970-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The LCDIF in the i.MX6 SoCs has additional features compared to the
i.MX28. Replace the fsl,imx28-lcdif fallback compatible string with
fsl,imx6sx-lcdif to reflect that.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/boot/dts/imx6sl.dtsi  | 2 +-
 arch/arm/boot/dts/imx6sll.dtsi | 2 +-
 arch/arm/boot/dts/imx6sx.dtsi  | 4 ++--
 arch/arm/boot/dts/imx6ul.dtsi  | 2 +-
 4 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/imx6sl.dtsi b/arch/arm/boot/dts/imx6sl.dtsi
index 1c7180f28539..1e506ffbcecc 100644
--- a/arch/arm/boot/dts/imx6sl.dtsi
+++ b/arch/arm/boot/dts/imx6sl.dtsi
@@ -769,7 +769,7 @@ epdc: epdc@20f4000 {
 			};
 
 			lcdif: lcdif@20f8000 {
-				compatible = "fsl,imx6sl-lcdif", "fsl,imx28-lcdif";
+				compatible = "fsl,imx6sl-lcdif", "fsl,imx6sx-lcdif";
 				reg = <0x020f8000 0x4000>;
 				interrupts = <0 39 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6SL_CLK_LCDIF_PIX>,
diff --git a/arch/arm/boot/dts/imx6sll.dtsi b/arch/arm/boot/dts/imx6sll.dtsi
index fb5d3bc50c6b..81137ba427a1 100644
--- a/arch/arm/boot/dts/imx6sll.dtsi
+++ b/arch/arm/boot/dts/imx6sll.dtsi
@@ -644,7 +644,7 @@ pxp: pxp@20f0000 {
 			};
 
 			lcdif: lcd-controller@20f8000 {
-				compatible = "fsl,imx6sll-lcdif", "fsl,imx28-lcdif";
+				compatible = "fsl,imx6sll-lcdif", "fsl,imx6sx-lcdif";
 				reg = <0x020f8000 0x4000>;
 				interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6SLL_CLK_LCDIF_PIX>,
diff --git a/arch/arm/boot/dts/imx6sx.dtsi b/arch/arm/boot/dts/imx6sx.dtsi
index b480dfa9e251..1f2b1c56757b 100644
--- a/arch/arm/boot/dts/imx6sx.dtsi
+++ b/arch/arm/boot/dts/imx6sx.dtsi
@@ -1261,7 +1261,7 @@ csi2: csi@221c000 {
 				};
 
 				lcdif1: lcdif@2220000 {
-					compatible = "fsl,imx6sx-lcdif", "fsl,imx28-lcdif";
+					compatible = "fsl,imx6sx-lcdif";
 					reg = <0x02220000 0x4000>;
 					interrupts = <GIC_SPI 5 IRQ_TYPE_EDGE_RISING>;
 					clocks = <&clks IMX6SX_CLK_LCDIF1_PIX>,
@@ -1273,7 +1273,7 @@ lcdif1: lcdif@2220000 {
 				};
 
 				lcdif2: lcdif@2224000 {
-					compatible = "fsl,imx6sx-lcdif", "fsl,imx28-lcdif";
+					compatible = "fsl,imx6sx-lcdif";
 					reg = <0x02224000 0x4000>;
 					interrupts = <GIC_SPI 6 IRQ_TYPE_EDGE_RISING>;
 					clocks = <&clks IMX6SX_CLK_LCDIF2_PIX>,
diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
index 2b088f210331..776493923474 100644
--- a/arch/arm/boot/dts/imx6ul.dtsi
+++ b/arch/arm/boot/dts/imx6ul.dtsi
@@ -1003,7 +1003,7 @@ csi: csi@21c4000 {
 			};
 
 			lcdif: lcdif@21c8000 {
-				compatible = "fsl,imx6ul-lcdif", "fsl,imx28-lcdif";
+				compatible = "fsl,imx6ul-lcdif", "fsl,imx6sx-lcdif";
 				reg = <0x021c8000 0x4000>;
 				interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6UL_CLK_LCDIF_PIX>,
-- 
Regards,

Laurent Pinchart


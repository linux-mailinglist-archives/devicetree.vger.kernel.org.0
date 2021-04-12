Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9C1A135BB73
	for <lists+devicetree@lfdr.de>; Mon, 12 Apr 2021 09:53:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236929AbhDLHyA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Apr 2021 03:54:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236974AbhDLHx7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Apr 2021 03:53:59 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4851DC06138C
        for <devicetree@vger.kernel.org>; Mon, 12 Apr 2021 00:53:41 -0700 (PDT)
Received: from deskari.lan (91-157-208-71.elisa-laajakaista.fi [91.157.208.71])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id B0E265A9;
        Mon, 12 Apr 2021 09:53:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1618214018;
        bh=pYDIvBcFCEmVMFHBSfoW6dUfoYmXSp6WbSv3GOmUWPI=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=qhFOezCepteIr3f7gb9EV/98J596saeRTzSSVlYTn8rdiHb+NaICa/iTSsecyFT2s
         SlRWUdJ+u0l4pFjgU8XtDuTzNe2UcL/cYBKdchD6lZWedrYm7t40nF2d4Gxy6xN97R
         HA25rZV+1wzSCKGDoe+/vJL1WtfEjprPqMgPHsN0=
From:   Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
To:     Nishanth Menon <nm@ti.com>, Benoit Parrot <bparrot@ti.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Tony Lindgren <tony@atomide.com>,
        Pratyush Yadav <p.yadav@ti.com>
Cc:     Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Subject: [PATCH 2/2] arm64: dts: ti: k3-am654-base-board: remove ov5640
Date:   Mon, 12 Apr 2021 10:53:06 +0300
Message-Id: <20210412075306.102884-2-tomi.valkeinen@ideasonboard.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210412075306.102884-1-tomi.valkeinen@ideasonboard.com>
References: <20210412075306.102884-1-tomi.valkeinen@ideasonboard.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

AM654 EVM boards are not shipped with OV5640 sensor module, it is a
separate purchase. OV5640 module is also just one of the possible
sensors or capture boards you can connect.

However, for some reason, OV5640 has been added to the board dts file,
making it cumbersome to use other sensors.

Remove the OV5640 from the dts file so that it is easy to use other
sensors via DT overlays.

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 .../arm64/boot/dts/ti/k3-am654-base-board.dts | 27 -------------------
 1 file changed, 27 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
index fe3043943906..76358b4944e1 100644
--- a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
@@ -85,12 +85,6 @@ sw6 {
 			gpios = <&wkup_gpio0 27 GPIO_ACTIVE_LOW>;
 		};
 	};
-
-	clk_ov5640_fixed: clock {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <24000000>;
-	};
 };
 
 &wkup_pmx0 {
@@ -288,22 +282,6 @@ &main_i2c1 {
 	pinctrl-0 = <&main_i2c1_pins_default>;
 	clock-frequency = <400000>;
 
-	ov5640: camera@3c {
-		compatible = "ovti,ov5640";
-		reg = <0x3c>;
-
-		clocks = <&clk_ov5640_fixed>;
-		clock-names = "xclk";
-
-		port {
-			csi2_cam0: endpoint {
-				remote-endpoint = <&csi2_phy0>;
-				clock-lanes = <0>;
-				data-lanes = <1 2>;
-			};
-		};
-	};
-
 };
 
 &main_i2c2 {
@@ -497,11 +475,6 @@ flash@0{
 };
 
 &csi2_0 {
-	csi2_phy0: endpoint {
-		remote-endpoint = <&csi2_cam0>;
-		clock-lanes = <0>;
-		data-lanes = <1 2>;
-	};
 };
 
 &mcu_cpsw {
-- 
2.25.1


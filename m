Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8B325368EDB
	for <lists+devicetree@lfdr.de>; Fri, 23 Apr 2021 10:31:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230059AbhDWIcZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Apr 2021 04:32:25 -0400
Received: from perceval.ideasonboard.com ([213.167.242.64]:34622 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230100AbhDWIcY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Apr 2021 04:32:24 -0400
Received: from deskari.lan (91-157-208-71.elisa-laajakaista.fi [91.157.208.71])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 9D95F332;
        Fri, 23 Apr 2021 10:31:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1619166707;
        bh=8Jm2BhtNQItmGoRHnzkSu1IWqknOaz1Wv9EcOPOdXNI=;
        h=From:To:Cc:Subject:Date:From;
        b=JXw71hcjJXcIQCsBFb8G8ZHqz08I9/2hxz8iRtoJJHeAtQPFBiFXXMBDUbWdfvoPm
         /2vTujzs2LvyKjWkOX5IdvTmSyBR7WzpNNYVNsjGtfcX+G6/5vONRvjExkp/K2Xf7Q
         FSMrUqrZeAGjRt/77rCBMw+5KnukbAfC+WBmyuI8=
From:   Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Subject: [PATCH v2] arm64: dts: ti: k3-am654-base-board: remove ov5640
Date:   Fri, 23 Apr 2021 11:31:20 +0300
Message-Id: <20210423083120.73476-1-tomi.valkeinen@ideasonboard.com>
X-Mailer: git-send-email 2.25.1
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

Changes in v2:
- drop empty csi2_0 node

A DT overlay with OV5640 can be found from:

https://git.kernel.org/pub/scm/linux/kernel/git/tomba/linux-dt.git/commit/?h=multistream/work&id=ff7a6469a8c40e1fec14f0a186322ee114892117

 .../arm64/boot/dts/ti/k3-am654-base-board.dts | 31 -------------------
 1 file changed, 31 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
index fe3043943906..7f27ba7e7256 100644
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
@@ -287,23 +281,6 @@ &main_i2c1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&main_i2c1_pins_default>;
 	clock-frequency = <400000>;
-
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
@@ -496,14 +473,6 @@ flash@0{
 	};
 };
 
-&csi2_0 {
-	csi2_phy0: endpoint {
-		remote-endpoint = <&csi2_cam0>;
-		clock-lanes = <0>;
-		data-lanes = <1 2>;
-	};
-};
-
 &mcu_cpsw {
 	pinctrl-names = "default";
 	pinctrl-0 = <&mcu_cpsw_pins_default &mcu_mdio_pins_default>;
-- 
2.25.1


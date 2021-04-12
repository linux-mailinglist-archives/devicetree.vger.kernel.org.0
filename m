Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5D90535BB72
	for <lists+devicetree@lfdr.de>; Mon, 12 Apr 2021 09:53:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236920AbhDLHx4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Apr 2021 03:53:56 -0400
Received: from perceval.ideasonboard.com ([213.167.242.64]:44498 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236974AbhDLHx4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Apr 2021 03:53:56 -0400
Received: from deskari.lan (91-157-208-71.elisa-laajakaista.fi [91.157.208.71])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 7E1DD3F0;
        Mon, 12 Apr 2021 09:53:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1618214017;
        bh=wvu/vFeREu8Tj1vbRsN405FMXmZTzQAX7dHgiNpMnUs=;
        h=From:To:Cc:Subject:Date:From;
        b=I5eXXF11VwNpKJsrDmBrZCkBvo+vYXxb7eLwIVnIsR+3TTM/Pwt7oLEh5pXAh0amf
         r7+6uILS9E+tvRH7+JEXfwmQ66c/GIbtfOoVtPA/OLZ8WBND3LswwUveORtEDUqKe4
         EWjvA9P+XlG6BFdha/b5ERFbxHcCozBpIeFBn3tc=
From:   Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
To:     Nishanth Menon <nm@ti.com>, Benoit Parrot <bparrot@ti.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Tony Lindgren <tony@atomide.com>,
        Pratyush Yadav <p.yadav@ti.com>
Cc:     Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Subject: [PATCH 1/2] ARM: dts: dra76-evm: remove ov5640
Date:   Mon, 12 Apr 2021 10:53:05 +0300
Message-Id: <20210412075306.102884-1-tomi.valkeinen@ideasonboard.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DRA76 EVM boards are not shipped with OV5640 sensor module, it is a
separate purchase. OV5640 module is also just one of the possible
sensors or capture boards you can connect.

However, for some reason, OV5640 has been added to the board dts file,
making it cumbersome to use other sensors.

Remove the OV5640 from the dts file so that it is easy to use other
sensors via DT overlays.

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 arch/arm/boot/dts/dra76-evm.dts | 27 ---------------------------
 1 file changed, 27 deletions(-)

diff --git a/arch/arm/boot/dts/dra76-evm.dts b/arch/arm/boot/dts/dra76-evm.dts
index 9bd01ae40b1d..f3c900e1b953 100644
--- a/arch/arm/boot/dts/dra76-evm.dts
+++ b/arch/arm/boot/dts/dra76-evm.dts
@@ -158,12 +158,6 @@ aic_dvdd: fixedregulator-aic_dvdd {
 		regulator-max-microvolt = <1800000>;
 	};
 
-	clk_ov5640_fixed: clock {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <24000000>;
-	};
-
 	hdmi0: connector {
 		compatible = "hdmi-connector";
 		label = "hdmi";
@@ -409,22 +403,6 @@ tlv320aic3106: tlv320aic3106@19 {
 &i2c5 {
 	status = "okay";
 	clock-frequency = <400000>;
-
-	ov5640@3c {
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
 };
 
 &cpu0 {
@@ -574,11 +552,6 @@ can-transceiver {
 };
 
 &csi2_0 {
-	csi2_phy0: endpoint {
-		remote-endpoint = <&csi2_cam0>;
-		clock-lanes = <0>;
-		data-lanes = <1 2>;
-	};
 };
 
 &ipu2 {
-- 
2.25.1


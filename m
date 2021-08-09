Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9E3BF3E3D94
	for <lists+devicetree@lfdr.de>; Mon,  9 Aug 2021 03:35:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232599AbhHIBfk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 8 Aug 2021 21:35:40 -0400
Received: from perceval.ideasonboard.com ([213.167.242.64]:39122 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231324AbhHIBfk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 8 Aug 2021 21:35:40 -0400
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id A68CA38E4;
        Mon,  9 Aug 2021 03:35:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1628472920;
        bh=czYnMLw55aev0w/sww1irKHreag8/ToyaejbqyVEoNA=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=MwahcXhMsj6hhmqf7TLA0QX+vKUY6Lf0haCsCn+cXIb44H3vzLvbf6WEiHRZPAlwr
         eK3PC8KFNYw+CKxZIEuleWuc8Ec8sqEO2vZ6dx/Dd06WNQhgjwOGXQk6JvlUAtgehh
         ew4UIseTJ9bpQwGhw7HKRTYmebYf2tsj3phFKXOo=
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     dri-devel@lists.freedesktop.org
Cc:     Michal Simek <michal.simek@xilinx.com>,
        Jianqiang Chen <jianqian@xilinx.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH 36/36] arm64: dts: zynqmp: zcu106a: Describe DisplayPort connector
Date:   Mon,  9 Aug 2021 04:34:57 +0300
Message-Id: <20210809013457.11266-37-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210809013457.11266-1-laurent.pinchart@ideasonboard.com>
References: <20210809013457.11266-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a device tree node to describe the DisplayPort connector, and
connect it to the DPSUB output.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../boot/dts/xilinx/zynqmp-zcu106-revA.dts    | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
index eff7c6447087..aaf44ab256a1 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
@@ -146,6 +146,18 @@ refhdmi: refhdmi {
 		#clock-cells = <0>;
 		clock-frequency = <114285000>;
 	};
+
+	dpcon {
+		compatible = "dp-connector";
+		label = "P11";
+		type = "full-size";
+
+		port {
+			dpcon_in: endpoint {
+				remote-endpoint = <&dpsub_dp_out>;
+			};
+		};
+	};
 };
 
 &can1 {
@@ -165,6 +177,14 @@ &zynqmp_dpsub {
 	phy-names = "dp-phy0", "dp-phy1";
 	phys = <&psgtr 1 PHY_TYPE_DP 0 3>,
 	       <&psgtr 0 PHY_TYPE_DP 1 3>;
+
+	ports {
+		port@5 {
+			dpsub_dp_out: endpoint {
+				remote-endpoint = <&dpcon_in>;
+			};
+		};
+	};
 };
 
 /* fpd_dma clk 667MHz, lpd_dma 500MHz */
-- 
Regards,

Laurent Pinchart


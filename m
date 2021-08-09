Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 541093E3D93
	for <lists+devicetree@lfdr.de>; Mon,  9 Aug 2021 03:35:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232620AbhHIBfk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 8 Aug 2021 21:35:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232599AbhHIBfk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 8 Aug 2021 21:35:40 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2889C061757
        for <devicetree@vger.kernel.org>; Sun,  8 Aug 2021 18:35:20 -0700 (PDT)
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 1A88B18D3;
        Mon,  9 Aug 2021 03:35:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1628472919;
        bh=gtKlvc+6OW2msXKp7nVECwP4ZX/SQgTx9q+OAb5yCVI=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=dMqnf8fTT21tYJ71ulHy4PhHe5laxr4RWwgPggl40ox9qjMPdMkq7f3wWX+GLdIbv
         1AGojHsBCVlEYxtqUW59b2/ANlAVrRGkn9woJzLCaWIdrdQsuWR9yAy7gg+b3WTEsh
         Lp6eIf27qFQEUou56tK/ZScyUeUe57HrPV2/h+vg=
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     dri-devel@lists.freedesktop.org
Cc:     Michal Simek <michal.simek@xilinx.com>,
        Jianqiang Chen <jianqian@xilinx.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH 35/36] arm64: dts: zynqmp: Add ports for the DisplayPort subsystem
Date:   Mon,  9 Aug 2021 04:34:56 +0300
Message-Id: <20210809013457.11266-36-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210809013457.11266-1-laurent.pinchart@ideasonboard.com>
References: <20210809013457.11266-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The DPSUB DT bindings now specify ports to model the connections with
the programmable logic and the DisplayPort output. Add them to the
device tree.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 arch/arm64/boot/dts/xilinx/zynqmp.dtsi | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
index 28dccb891a53..5128beb1dac0 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
+++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
@@ -879,6 +879,30 @@ zynqmp_dpsub: display@fd4a0000 {
 			       <&zynqmp_dpdma ZYNQMP_DPDMA_VIDEO1>,
 			       <&zynqmp_dpdma ZYNQMP_DPDMA_VIDEO2>,
 			       <&zynqmp_dpdma ZYNQMP_DPDMA_GRAPHICS>;
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+				};
+				port@1 {
+					reg = <1>;
+				};
+				port@2 {
+					reg = <2>;
+				};
+				port@3 {
+					reg = <3>;
+				};
+				port@4 {
+					reg = <4>;
+				};
+				port@5 {
+					reg = <5>;
+				};
+			};
 		};
 	};
 };
-- 
Regards,

Laurent Pinchart


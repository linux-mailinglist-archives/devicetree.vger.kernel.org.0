Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 412FB5EE996
	for <lists+devicetree@lfdr.de>; Thu, 29 Sep 2022 00:48:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233911AbiI1WsX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Sep 2022 18:48:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233733AbiI1WsW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Sep 2022 18:48:22 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B42110FC69
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 15:48:21 -0700 (PDT)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id C14A76BE;
        Thu, 29 Sep 2022 00:48:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1664405300;
        bh=YzfN3VYcDGcQaSdTnCFKg+FF9QUsHsFayCIDMzmic5Q=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=wHGAT77++0auHYD9vRi12mmkI00KmGhQxmiVmUk4rS8Z6yQBpf6TUPjlxddYsMeK6
         r/ZGYdMXB2WvSnugWSolrAex8S0cE+/ivgZnOmbbNVCKDBAHZaPphxf6/uniw+ugzr
         Fn26gn2PDR/ZOd9KQmKCgxR7N04jGHEEaidlE8oA=
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     dri-devel@lists.freedesktop.org
Cc:     Michal Simek <michal.simek@xilinx.com>,
        Jianqiang Chen <jianqian@xilinx.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v2 36/37] arm64: dts: zynqmp: Add ports for the DisplayPort subsystem
Date:   Thu, 29 Sep 2022 01:47:18 +0300
Message-Id: <20220928224719.3291-37-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220928224719.3291-1-laurent.pinchart@ideasonboard.com>
References: <20220928224719.3291-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
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
index a549265e55f6..307c76cd8544 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
+++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
@@ -930,6 +930,30 @@ zynqmp_dpsub: display@fd4a0000 {
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


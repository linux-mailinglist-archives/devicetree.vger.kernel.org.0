Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B23E41D3324
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2020 16:37:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727927AbgENOgg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 May 2020 10:36:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726146AbgENOgg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 May 2020 10:36:36 -0400
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15D0DC061A0C
        for <devicetree@vger.kernel.org>; Thu, 14 May 2020 07:36:36 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: rcn)
        with ESMTPSA id 2E8ED2A2EE6
From:   =?UTF-8?q?Ricardo=20Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To:     Laurent.pinchart@ideasonboard.com
Cc:     kernel@collabora.com, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, jason@lakedaemon.net,
        tomi.valkeinen@ti.com, robh+dt@kernel.org, airlied@linux.ie,
        shawnguo@kernel.org
Subject: [PATCH v2 2/4] ARM: dts: ims53: Group port definitions for the dvi-converter
Date:   Thu, 14 May 2020 16:36:10 +0200
Message-Id: <20200514143612.2094-3-ricardo.canuelo@collabora.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200514143612.2094-1-ricardo.canuelo@collabora.com>
References: <20200514143612.2094-1-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Group the port definitions of the dvi-converter in a 'ports' node to
make it compliant with the ti,tfp410 binding.

Signed-off-by: Ricardo Cañuelo <ricardo.canuelo@collabora.com>
---
 arch/arm/boot/dts/imx53-cx9020.dts | 25 ++++++++++++++-----------
 1 file changed, 14 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boot/dts/imx53-cx9020.dts b/arch/arm/boot/dts/imx53-cx9020.dts
index 0a475c234054..cfb18849a92b 100644
--- a/arch/arm/boot/dts/imx53-cx9020.dts
+++ b/arch/arm/boot/dts/imx53-cx9020.dts
@@ -59,23 +59,26 @@
 	};
 
 	dvi-converter {
-		#address-cells = <1>;
-		#size-cells = <0>;
 		compatible = "ti,tfp410";
 
-		port@0 {
-			reg = <0>;
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
 
-			tfp410_in: endpoint {
-				remote-endpoint = <&display0_out>;
+				tfp410_in: endpoint {
+					remote-endpoint = <&display0_out>;
+				};
 			};
-		};
 
-		port@1 {
-			reg = <1>;
+			port@1 {
+				reg = <1>;
 
-			tfp410_out: endpoint {
-				remote-endpoint = <&dvi_connector_in>;
+				tfp410_out: endpoint {
+					remote-endpoint = <&dvi_connector_in>;
+				};
 			};
 		};
 	};
-- 
2.18.0


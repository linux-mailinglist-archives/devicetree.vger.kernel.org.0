Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7D5AB14538C
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2020 12:17:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728811AbgAVLRO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Jan 2020 06:17:14 -0500
Received: from bhuna.collabora.co.uk ([46.235.227.227]:59886 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726094AbgAVLRN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Jan 2020 06:17:13 -0500
Received: from localhost.localdomain (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: bbrezillon)
        by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 03B2929389E;
        Wed, 22 Jan 2020 11:17:11 +0000 (GMT)
From:   Boris Brezillon <boris.brezillon@collabora.com>
To:     dri-devel@lists.freedesktop.org
Cc:     Lucas Stach <l.stach@pengutronix.de>,
        Chris Healy <cphealy@gmail.com>,
        Andrey Smirnov <andrew.smirnov@gmail.com>,
        Nikita Yushchenko <nikita.yoush@cogentembedded.com>,
        kernel@collabora.com, Daniel Vetter <daniel@ffwll.ch>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org,
        Boris Brezillon <boris.brezillon@collabora.com>
Subject: [PATCH v7 12/12] ARM: dts: imx: imx51-zii-rdu1: Fix the display pipeline definition
Date:   Wed, 22 Jan 2020 12:17:00 +0100
Message-Id: <20200122111700.1924960-13-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200122111700.1924960-1-boris.brezillon@collabora.com>
References: <20200122111700.1924960-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The current definition does not represent the exact display pipeline we
have on the board: the LVDS panel is actually connected through a
parallel -> LVDS bridge. Let's fix that so the driver can select the
proper bus format on the CRTC end.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
Changes in v7:
* None
---
 arch/arm/boot/dts/imx51-zii-rdu1.dts | 24 +++++++++++++++++++++++-
 1 file changed, 23 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx51-zii-rdu1.dts b/arch/arm/boot/dts/imx51-zii-rdu1.dts
index 3596060f52e7..3fb84ea7f993 100644
--- a/arch/arm/boot/dts/imx51-zii-rdu1.dts
+++ b/arch/arm/boot/dts/imx51-zii-rdu1.dts
@@ -95,6 +95,28 @@ port@1 {
 			reg = <1>;
 
 			display_out: endpoint {
+				remote-endpoint = <&lvds_encoder_in>;
+			};
+		};
+	};
+
+	lvds-encoder {
+		compatible = "lvds-encoder";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		port@0 {
+			reg = <0>;
+			bus-width = <24>;
+			lvds_encoder_in: endpoint {
+				remote-endpoint = <&display_out>;
+			};
+		};
+
+		port@1 {
+			reg = <1>;
+			data-mapping = "jeida-24";
+			lvds_encoder_out: endpoint {
 				remote-endpoint = <&panel_in>;
 			};
 		};
@@ -110,7 +132,7 @@ panel {
 
 		port {
 			panel_in: endpoint {
-				remote-endpoint = <&display_out>;
+				remote-endpoint = <&lvds_encoder_out>;
 			};
 		};
 	};
-- 
2.24.1


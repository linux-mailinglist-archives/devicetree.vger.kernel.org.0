Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 17537615E6
	for <lists+devicetree@lfdr.de>; Sun,  7 Jul 2019 20:26:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727070AbfGGS03 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 Jul 2019 14:26:29 -0400
Received: from perceval.ideasonboard.com ([213.167.242.64]:53206 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726623AbfGGS03 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 Jul 2019 14:26:29 -0400
Received: from pendragon.nordic-sky.finnair.com (unknown [38.98.37.142])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id A955FCC;
        Sun,  7 Jul 2019 20:25:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1562523987;
        bh=hbovLggOUGzloPbhS9RvkC3KFIMQMw/2RNJbB0AnQM4=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=fhNOIefizRPcbR4KtJDXPnUU9GpZMgOJ/9OYg0CRwDNl+ak+R26choJa1mZRQSkQO
         E4xQuKb5arP/sKogmIX30aQXF3ZY/7RqxR6uUsGIQo6DpZNcC0A41lWEGsIcbvZRQh
         tc4F9ZbbSAglPRnnymInQJFRp4TS1kdUyqFqnUhQ=
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     dri-devel@lists.freedesktop.org
Cc:     Tomi Valkeinen <tomi.valkeinen@ti.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Sean Paul <sean@poorly.run>, Daniel Vetter <daniel@ffwll.ch>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 18/60] dt-bindings: display: panel: Add bindings for NEC NL8048HL11 panel
Date:   Sun,  7 Jul 2019 21:18:55 +0300
Message-Id: <20190707181937.6250-15-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190707181937.6250-1-laurent.pinchart@ideasonboard.com>
References: <20190707180852.5512-1-laurent.pinchart@ideasonboard.com>
 <20190707181937.6250-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The NEC NL8048HL11 is a 10.4cm WVGA (800x480) panel with a 24-bit RGB
parallel data interface and an SPI control interface.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../bindings/display/panel/nec,nl8048hl11.txt | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/nec,nl8048hl11.txt

diff --git a/Documentation/devicetree/bindings/display/panel/nec,nl8048hl11.txt b/Documentation/devicetree/bindings/display/panel/nec,nl8048hl11.txt
new file mode 100644
index 000000000000..a2559c74a45b
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/nec,nl8048hl11.txt
@@ -0,0 +1,38 @@
+NEC NL8048HL11 Panel
+====================
+
+The NEC NL8048HL11 is a 10.4cm WVGA (800x480) panel with a 24-bit RGB parallel
+data interface and an SPI control interface.
+
+Required properties:
+- compatible: Shall contain "nec,nl8048hl11".
+- reset-gpios: The panel reset GPIO specifier.
+
+Optional properties:
+- label: A symbolic name for the panel.
+
+Required nodes:
+- Video port for DPI input
+
+The device node shall contain one 'port' child node corresponding to the DPI
+input, with one child 'endpoint' node, according to the bindings defined in
+[1].
+
+[1]: Documentation/devicetree/bindings/media/video-interfaces.txt
+
+Example
+-------
+
+lcd-panel: panel@0 {
+	compatible = "nec,nl8048hl11";
+	reg = <0>;
+	spi-max-frequency = <10000000>;
+
+	reset-gpios = <&gpio7 7 GPIO_ACTIVE_LOW>;
+
+	port {
+		lcd_in: endpoint {
+			remote-endpoint = <&dpi_out>;
+		};
+	};
+};
-- 
Regards,

Laurent Pinchart


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A7C2388EBD
	for <lists+devicetree@lfdr.de>; Sun, 11 Aug 2019 01:10:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726201AbfHJXK7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Aug 2019 19:10:59 -0400
Received: from perceval.ideasonboard.com ([213.167.242.64]:39438 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725863AbfHJXK6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Aug 2019 19:10:58 -0400
Received: from pendragon.bb.dnainternet.fi (dfj612yhrgyx302h3jwwy-3.rev.dnainternet.fi [IPv6:2001:14ba:21f5:5b00:ce28:277f:58d7:3ca4])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id D36D5E17;
        Sun, 11 Aug 2019 01:10:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1565478657;
        bh=hxZ/GXHBi+qa4IwcSpC180c5YAUxNPLiehYoVo7tcg8=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=WXk3oajK7IpU2sQN+oc1aFYAHnV9FIg1Ij1dCSz4Xr2pP+oWPzzyqzCV80lqpC4Lb
         UgisrLwGlPZgs42mubwB26cusv0WNSP67YYPhazMnk3fDLgYKQsErN4/8sSLwa1SI5
         TiTt1AaaqjKH3nU1AY78kKfCTZ1+VqUOTGR02j58=
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     dri-devel@lists.freedesktop.org
Cc:     Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 3/9] dt-bindings: display: panel: Add bindings for NEC NL8048HL11 panel
Date:   Sun, 11 Aug 2019 02:10:42 +0300
Message-Id: <20190810231048.1921-4-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190810231048.1921-1-laurent.pinchart@ideasonboard.com>
References: <20190810231048.1921-1-laurent.pinchart@ideasonboard.com>
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
Changes since v1:

- Convert to YAML
---
 .../display/panel/nec,nl8048hl11.yaml         | 49 +++++++++++++++++++
 1 file changed, 49 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/nec,nl8048hl11.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/nec,nl8048hl11.yaml b/Documentation/devicetree/bindings/display/panel/nec,nl8048hl11.yaml
new file mode 100644
index 000000000000..cc3d40975828
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/nec,nl8048hl11.yaml
@@ -0,0 +1,49 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/nec,nl8048hl11.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NEC NL8048HL11 4.1" WVGA TFT LCD panel
+
+description:
+  The NEC NL8048HL11 is a 4.1" WVGA TFT LCD panel with a 24-bit RGB parallel
+  data interface and an SPI control interface.
+
+maintainers:
+  - Laurent Pinchart <laurent.pinchart@ideasonboard.com>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    const: nec,nl8048hl11
+
+  label: true
+  reset-gpios: true
+  port: true
+
+required:
+  - compatible
+  - reset-gpios
+  - port
+
+additionalProperties: false
+
+examples:
+  - |
+    lcd_panel: panel {
+      compatible = "nec,nl8048hl11";
+      spi-max-frequency = <10000000>;
+
+      reset-gpios = <&gpio7 7 GPIO_ACTIVE_LOW>;
+
+      port {
+        lcd_in: endpoint {
+          remote-endpoint = <&dpi_out>;
+        };
+      };
+    };
+
+...
-- 
Regards,

Laurent Pinchart


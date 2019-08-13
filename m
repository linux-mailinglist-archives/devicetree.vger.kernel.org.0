Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 394AC8BA4A
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2019 15:33:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728249AbfHMNdV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Aug 2019 09:33:21 -0400
Received: from perceval.ideasonboard.com ([213.167.242.64]:58338 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728229AbfHMNdV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Aug 2019 09:33:21 -0400
Received: from pendragon.bb.dnainternet.fi (dfj612yhrgyx302h3jwwy-3.rev.dnainternet.fi [IPv6:2001:14ba:21f5:5b00:ce28:277f:58d7:3ca4])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id A10DF9DA;
        Tue, 13 Aug 2019 15:33:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1565703200;
        bh=mB3B4SiX6b2GN4T7smCgiANRIkYwQ4wWZHI5yIyA+eo=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=CFTfUxFmIUhLay3u57vYQO7O4fAsaMNQGkM1E3tcyb/0Jf6jesQheS2cS214MKLgw
         x0mfVhXMWTDGsTZ06538Gnj4CG9KCm57rfwJCXJ28j2mAcOSj0rN+7v7N9zkf+tAQO
         DLiF+Vuh73bu1XiNgxjGR3cokQFCE1ftwzoX1pPw=
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     dri-devel@lists.freedesktop.org
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 3/9] dt-bindings: display: panel: Add bindings for NEC NL8048HL11 panel
Date:   Tue, 13 Aug 2019 16:33:05 +0300
Message-Id: <20190813133311.26441-4-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190813133311.26441-1-laurent.pinchart@ideasonboard.com>
References: <20190813133311.26441-1-laurent.pinchart@ideasonboard.com>
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
Changes since v2:

- Add reg and spi-max-frequency properties
- Make the example pass the checks

Changes since v1:

- Convert to YAML
---
 .../display/panel/nec,nl8048hl11.yaml         | 62 +++++++++++++++++++
 1 file changed, 62 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/nec,nl8048hl11.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/nec,nl8048hl11.yaml b/Documentation/devicetree/bindings/display/panel/nec,nl8048hl11.yaml
new file mode 100644
index 000000000000..aa788eaa2f71
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/nec,nl8048hl11.yaml
@@ -0,0 +1,62 @@
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
+  port: true
+  reg: true
+  reset-gpios: true
+
+  spi-max-frequency:
+    maximum: 10000000
+
+required:
+  - compatible
+  - reg
+  - reset-gpios
+  - port
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    spi0 {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      lcd_panel: panel@0 {
+        compatible = "nec,nl8048hl11";
+        reg = <0>;
+        spi-max-frequency = <10000000>;
+
+        reset-gpios = <&gpio7 7 GPIO_ACTIVE_LOW>;
+
+        port {
+          lcd_in: endpoint {
+            remote-endpoint = <&dpi_out>;
+          };
+        };
+      };
+    };
+
+...
-- 
Regards,

Laurent Pinchart


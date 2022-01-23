Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9ADC9497396
	for <lists+devicetree@lfdr.de>; Sun, 23 Jan 2022 18:34:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233158AbiAWRe6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Jan 2022 12:34:58 -0500
Received: from asav21.altibox.net ([109.247.116.8]:50652 "EHLO
        asav21.altibox.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238595AbiAWRe6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 23 Jan 2022 12:34:58 -0500
Received: from localhost.localdomain (211.81-166-168.customer.lyse.net [81.166.168.211])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: noralf.tronnes@ebnett.no)
        by asav21.altibox.net (Postfix) with ESMTPSA id E39F980071;
        Sun, 23 Jan 2022 18:25:42 +0100 (CET)
From:   =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>
To:     robh+dt@kernel.org, thierry.reding@gmail.com
Cc:     sam@ravnborg.org, maxime@cerno.tech,
        dave.stevenson@raspberrypi.com, david@lechnology.com,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>
Subject: [PATCH 1/3] dt-bindings: display: add bindings for MIPI DBI compatible SPI panels
Date:   Sun, 23 Jan 2022 18:25:18 +0100
Message-Id: <20220123172520.48741-2-noralf@tronnes.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20220123172520.48741-1-noralf@tronnes.org>
References: <20220123172520.48741-1-noralf@tronnes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=ZLv5Z0zb c=1 sm=1 tr=0
        a=OYZzhG0JTxDrWp/F2OJbnw==:117 a=OYZzhG0JTxDrWp/F2OJbnw==:17
        a=IkcTkHD0fZMA:10 a=M51BFTxLslgA:10 a=SJz97ENfAAAA:8 a=gEfo2CItAAAA:8
        a=_-IPm86n_tWj2rs9gvkA:9 a=7Zwj6sZBwVKJAoWSPKxL6X1jA+E=:19
        a=QEXdDO2ut3YA:10 a=vFet0B0WnEQeilDPIY6i:22 a=sptkURWiP4Gy88Gu7hUp:22
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add binding for MIPI DBI compatible SPI panels.

Signed-off-by: Noralf Trønnes <noralf@tronnes.org>
---
 .../display/panel/panel-mipi-dbi-spi.yaml     | 69 +++++++++++++++++++
 1 file changed, 69 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml b/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
new file mode 100644
index 000000000000..d6c8accb045c
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
@@ -0,0 +1,69 @@
+# SPDX-License-Identifier: GPL-2.0-only
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/panel-mipi-dbi-spi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MIPI DBI SPI Panels Device Tree Bindings
+
+maintainers:
+  - Noralf Trønnes <noralf@tronnes.org>
+
+description:
+  This binding is for display panels using a MIPI DBI controller
+  in SPI mode.
+
+allOf:
+  - $ref: panel/panel-common.yaml#
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+
+properties:
+  compatible:
+    const: panel-mipi-dbi-spi
+
+  model:
+    $ref: /schemas/types.yaml#/definitions/string
+    description: The name of the display panel.
+
+  write-only:
+    type: boolean
+    description:
+      Controller is not readable (ie. MISO is not wired up).
+
+  dc-gpios:
+    maxItems: 1
+    description: |
+      Controller data/command selection (D/CX) in 4-line SPI mode.
+      If not set, the controller is in 3-line SPI mode.
+
+  backlight: true
+  reg: true
+  reset-gpios: true
+
+required:
+  - compatible
+  - model
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    spi {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            display@0{
+                    compatible = "panel-mipi-dbi-spi";
+                    model = "sainsmart18";
+                    reg = <0>;
+                    spi-max-frequency = <40000000>;
+                    dc-gpios = <&gpio 24 GPIO_ACTIVE_HIGH>;
+                    reset-gpios = <&gpio 25 GPIO_ACTIVE_HIGH>;
+                    write-only;
+            };
+    };
+
+...
-- 
2.33.0


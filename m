Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EF2941170CD
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2019 16:45:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726379AbfLIPpq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Dec 2019 10:45:46 -0500
Received: from lelv0143.ext.ti.com ([198.47.23.248]:35566 "EHLO
        lelv0143.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726197AbfLIPpq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Dec 2019 10:45:46 -0500
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xB9Fjhxn013555;
        Mon, 9 Dec 2019 09:45:43 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1575906343;
        bh=4Q9QtNIx1DUqHBCmQZLSWE7fPvofI6doebRsNcHjlSg=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=YmoFYuB9zYYo0cCGVVwEoN5RKzmoLZ5c+7qXgeSutFRgm95mpUuwrX5gxGvXI0C+X
         wzlQ06FjXwljk2eRjJp6uV26vbVTAW1y9m9uTgdkFEZ0z7n7cd4mwHkSaa0X1c0FcR
         rvNg1VGZ3VkozNxBI0HtVTu+T+1Y9wYkOmL8a9DQ=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xB9FjgrI079227
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 9 Dec 2019 09:45:43 -0600
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 9 Dec
 2019 09:45:42 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 9 Dec 2019 09:45:42 -0600
Received: from jadmar.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id xB9Fjf5I112084;
        Mon, 9 Dec 2019 09:45:41 -0600
From:   Jyri Sarha <jsarha@ti.com>
To:     <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>
CC:     <tomi.valkeinen@ti.com>, <thierry.reding@gmail.com>,
        <robh+dt@kernel.org>
Subject: [PATCH v2 1/2] dt-bindings: display: DT schema for rocktech,rk101ii01d-ct panel
Date:   Mon, 9 Dec 2019 17:45:40 +0200
Message-ID: <60034f9cd4580bf3b7c8c5c87bb9247fdc3f345a.1575903975.git.jsarha@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1575903975.git.jsarha@ti.com>
References: <cover.1575903975.git.jsarha@ti.com>
MIME-Version: 1.0
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add DT schema binding for Rocktech Displays Limited RK101II01D-CT
10.1" TFT 1280x800 Pixels with LVDS interface, LED Backlight and
capacitive touch panel.

Signed-off-by: Jyri Sarha <jsarha@ti.com>
---
 .../display/panel/rocktech,rk101ii01d-ct.yaml | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/rocktech,rk101ii01d-ct.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/rocktech,rk101ii01d-ct.yaml b/Documentation/devicetree/bindings/display/panel/rocktech,rk101ii01d-ct.yaml
new file mode 100644
index 000000000000..b37f89ca4bd0
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/rocktech,rk101ii01d-ct.yaml
@@ -0,0 +1,48 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/rocktech,rk101ii01d-ct.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rocktech Displays Ltd RK101II01D-CT 10.1" TFT 1280x800 Pixels
+
+maintainers:
+  - Jyri Sarha <jsarha@ti.com>
+  - Thierry Reding <thierry.reding@gmail.com>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+description: |
+  Rocktech Displays Limited RK101II01D-CT 10.1" TFT 1280x800 Pixels
+  with LVDS interface, LED Backlight and capacitive touch panel. For
+  touch screen details see "goodix,gt928" in:
+  Documentation/devicetree/bindings/input/touchscreen/goodix.txt
+
+properties:
+  compatible:
+    const: rocktech,rk101ii01d-ct
+
+  reset-gpios: true
+  enable-gpios: true
+  backlight: true
+  port: true
+
+required:
+  - compatible
+  - power-supply
+
+examples:
+  - |
+        display0 {
+                compatible = "rocktech,rk101ii01d-ct";
+                backlight = <&lcd_bl>;
+                enable-gpios = <&pca9555 8 GPIO_ACTIVE_HIGH>;
+                power-supply = <&dummy_supply>;
+
+                port {
+                        lcd_in0: endpoint {
+                                remote-endpoint = <&oldi_out0>;
+                        };
+                };
+        };
-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


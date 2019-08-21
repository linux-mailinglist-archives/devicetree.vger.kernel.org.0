Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9183498749
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2019 00:24:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731131AbfHUWY1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Aug 2019 18:24:27 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:44926 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729767AbfHUWY0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Aug 2019 18:24:26 -0400
Received: by mail-wr1-f68.google.com with SMTP id p17so3460305wrf.11
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2019 15:24:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=XcX2XfXI5RWl+qmPGtbnaP1+JiH+jtO4YYoKGP+64Jw=;
        b=Y19lRcDFSb95UM2o4oHaVdAKInX7LjtGZ7ONvY71k8sb/Qi4XJNB5NDm0gZnNN4X7m
         vNc1hVwSIMSEFjOv1lkFOHTZ1V9W26/uHhYWFn/Srei6PxJpDIF0gAasNX14rLuRZ4Mh
         m1MSnZcfCTJ+ZtRwjEmGq84hSXItsG/4WnwE3H4WiM3OqI6ZsuufCsxY1bZimNfMcBVE
         IDLvgqkRptXGX4iul+cGO8JqMB+n9kJiwCSJgSFQRnfBqc+QXSDOJBq6yie8VCCyaBX4
         ni0i6EQ5dKFOjV1IWf19d14VDfXrE/2LrshZ02orC624BzJvRl+WRTMxcVbcbiLx34wH
         JLDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=XcX2XfXI5RWl+qmPGtbnaP1+JiH+jtO4YYoKGP+64Jw=;
        b=BI1TVcGv7wgrtLXQq0/AEHXCSYMhs0CBwBv9VEVaIXnevO8DtzY2huGYkHqfBl2G/z
         t76uKLPeXR36SLMuEUFsFxKpwIG7cEw9iaW+p8NmuICycO2Q7nbYkAapSrwrYtRO4whi
         QamshP7rd/1228HMtM2kgdp9dzbXUP4rdrVA6YL04ac8zjjAshZ0J2+eZwi10wZpbq83
         GHxxemLSXgigUDpiNTDHlItmYgBiAj00RwRl+Om1E50nKY3afmouC/w4DgmUMJLzDb4c
         1M99AcZKBFqfXcxRj2tfVTNb+zK4YmJPxmAGccF53eE/xHZWxs8yExuKRMfwWUneIqLn
         mwIg==
X-Gm-Message-State: APjAAAUTpuheMDymhurDkRgK3a0TG3iqlF4xYXsFfKyzlw0NP1VbJwk5
        +Ck39+VX7+AxW0YPKY9qSsqijGgLKE0=
X-Google-Smtp-Source: APXvYqzio+ssPLSEM+HBqzThdCWa9cLYSj5TVfppU45s05F6VnVEL6giT+0XA9MorRrbp7MOZttjaQ==
X-Received: by 2002:a5d:6606:: with SMTP id n6mr45412511wru.346.1566426264948;
        Wed, 21 Aug 2019 15:24:24 -0700 (PDT)
Received: from localhost.localdomain ([2a01:cb1d:6e7:d500:82a9:347a:43f3:d2ca])
        by smtp.gmail.com with ESMTPSA id f197sm3548549wme.22.2019.08.21.15.24.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Aug 2019 15:24:24 -0700 (PDT)
From:   Guillaume La Roque <glaroque@baylibre.com>
To:     rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org
Subject: [PATCH v4 1/6] dt-bindings: thermal: Add DT bindings documentation for Amlogic Thermal
Date:   Thu, 22 Aug 2019 00:24:16 +0200
Message-Id: <20190821222421.30242-2-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190821222421.30242-1-glaroque@baylibre.com>
References: <20190821222421.30242-1-glaroque@baylibre.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Adding the devicetree binding documentation for the Amlogic temperature
sensor found in the Amlogic Meson G12 SoCs.
the G12A  and G12B SoCs are supported.

Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/thermal/amlogic,thermal.yaml     | 54 +++++++++++++++++++
 1 file changed, 54 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml

diff --git a/Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml b/Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml
new file mode 100644
index 000000000000..f761681e4c0d
--- /dev/null
+++ b/Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml
@@ -0,0 +1,54 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/thermal/amlogic,thermal.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Amlogic Thermal
+
+maintainers:
+  - Guillaume La Roque <glaroque@baylibre.com>
+
+description: Binding for Amlogic Thermal
+
+properties:
+  compatible:
+      items:
+        - enum:
+            - amlogic,g12a-cpu-thermal
+            - amlogic,g12a-ddr-thermal
+        - const: amlogic,g12a-thermal
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  amlogic,ao-secure:
+    description: phandle to the ao-secure syscon
+    $ref: '/schemas/types.yaml#/definitions/phandle'
+
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - amlogic,ao-secure
+
+examples:
+  - |
+        cpu_temp: temperature-sensor@ff634800 {
+                compatible = "amlogic,g12a-cpu-thermal",
+                             "amlogic,g12a-thermal";
+                reg = <0xff634800 0x50>;
+                interrupts = <0x0 0x24 0x0>;
+                clocks = <&clk 164>;
+                #thermal-sensor-cells = <0>;
+                amlogic,ao-secure = <&sec_AO>;
+        };
+...
-- 
2.17.1


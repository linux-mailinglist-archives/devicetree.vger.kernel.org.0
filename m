Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3437019D90E
	for <lists+devicetree@lfdr.de>; Fri,  3 Apr 2020 16:25:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2403878AbgDCOZE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Apr 2020 10:25:04 -0400
Received: from mail-pj1-f65.google.com ([209.85.216.65]:51329 "EHLO
        mail-pj1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2403869AbgDCOZE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Apr 2020 10:25:04 -0400
Received: by mail-pj1-f65.google.com with SMTP id w9so3058647pjh.1
        for <devicetree@vger.kernel.org>; Fri, 03 Apr 2020 07:25:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=vKBRMX/UzCOn34k/kAwE26KCgVenN+ytvHTmdWU7Okc=;
        b=ZMtQ3Z/uwSYiMhhw2nTl6CsbXXgH9xLLOhxQrgzJsrv3UW4kLSwgmTsE+7IuS36SVf
         nNr3S9XTiC1OASHDsk3Kjfy1pztgLDzzIXtliEDLztXZmr+sVH40xM7/Q9Gd23g7LO7t
         QfJPhwHti/wJtJsJ6E7HVd7ge9OGsfoe7PzWc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=vKBRMX/UzCOn34k/kAwE26KCgVenN+ytvHTmdWU7Okc=;
        b=Tf9q9oeLLOb7zkmaQ3esl7jqBNzVo/8e4zn7SC/cjiZHjU7dMc95s2vpuaqG3t0sdz
         suuRooRtww/axW84jKeMVmdzmzQUES75MSZLuf+3ZHRLcPvjsvgWwdiFcBPfdUMwfM61
         c7rSJ0d/WYYrPWkww/5OM3zzA2ltTLaxgbLn0U7eXmRf3TbPP9INp5QlAQxal6pib2M6
         aM3NFPaVt+XeKpPfnfIfx67PQ6j0s6+23j1/trTqwA+Bs7xJFzCmprsGv3QfLLjr+qaq
         85/0w08ziPbxRiKkMmy+ALYKHWBMdBObF1y/M3tRw+hWX28RY7WWDO5ENH12+2yXndE5
         UBHA==
X-Gm-Message-State: AGi0PubwtHyYP6a+XXXKc9e5zNPwZBJTPt7qz0E+0kMUjeJFIZRkMX05
        lT9jiioe46CdJHWammC+GhXAPb56WM4=
X-Google-Smtp-Source: APiQypK/FOTXW2tO2HaeGhqMJi79/X/DjEIrHqAV05vSXxlPqEGWtElSKJxS/FsqoFPl8lB1RiTSIg==
X-Received: by 2002:a17:90b:3615:: with SMTP id ml21mr10361300pjb.145.1585923902916;
        Fri, 03 Apr 2020 07:25:02 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:9cd7:b821:2c84:e325])
        by smtp.gmail.com with ESMTPSA id g75sm5857060pje.37.2020.04.03.07.24.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Apr 2020 07:25:02 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Mark Rutland <mark.rutland@arm.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v3 1/3] dt-bindings: display: panel: Convert feiyang,fy07024di26a30d to DT schema
Date:   Fri,  3 Apr 2020 19:54:51 +0530
Message-Id: <20200403142453.25307-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the feiyang,fy07024di26a30d panel bindings to DT schema.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- update the licence, used (GPL-2.0-only OR BSD-2-Clause) since
  I'm the author for old binding
- use panel-common.yaml
- mark true for common properties 
- use maxItems: 1 for reg
- update example
Changes for v2:
- fix dt_binding_check 

 .../display/panel/feiyang,fy07024di26a30d.txt | 20 -------
 .../panel/feiyang,fy07024di26a30d.yaml        | 58 +++++++++++++++++++
 2 files changed, 58 insertions(+), 20 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/panel/feiyang,fy07024di26a30d.txt
 create mode 100644 Documentation/devicetree/bindings/display/panel/feiyang,fy07024di26a30d.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/feiyang,fy07024di26a30d.txt b/Documentation/devicetree/bindings/display/panel/feiyang,fy07024di26a30d.txt
deleted file mode 100644
index 82caa7b65ae8..000000000000
--- a/Documentation/devicetree/bindings/display/panel/feiyang,fy07024di26a30d.txt
+++ /dev/null
@@ -1,20 +0,0 @@
-Feiyang FY07024DI26A30-D 7" MIPI-DSI LCD Panel
-
-Required properties:
-- compatible: must be "feiyang,fy07024di26a30d"
-- reg: DSI virtual channel used by that screen
-- avdd-supply: analog regulator dc1 switch
-- dvdd-supply: 3v3 digital regulator
-- reset-gpios: a GPIO phandle for the reset pin
-
-Optional properties:
-- backlight: phandle for the backlight control.
-
-panel@0 {
-	compatible = "feiyang,fy07024di26a30d";
-	reg = <0>;
-	avdd-supply = <&reg_dc1sw>;
-	dvdd-supply = <&reg_dldo2>;
-	reset-gpios = <&pio 3 24 GPIO_ACTIVE_HIGH>; /* LCD-RST: PD24 */
-	backlight = <&backlight>;
-};
diff --git a/Documentation/devicetree/bindings/display/panel/feiyang,fy07024di26a30d.yaml b/Documentation/devicetree/bindings/display/panel/feiyang,fy07024di26a30d.yaml
new file mode 100644
index 000000000000..95acf9e96f1c
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/feiyang,fy07024di26a30d.yaml
@@ -0,0 +1,58 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/feiyang,fy07024di26a30d.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Feiyang FY07024DI26A30-D 7" MIPI-DSI LCD Panel
+
+maintainers:
+  - Jagan Teki <jagan@amarulasolutions.com>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    const: feiyang,fy07024di26a30d
+
+  reg:
+    description: DSI virtual channel used by that screen
+    maxItems: 1
+
+  avdd-supply:
+    description: analog regulator dc1 switch
+
+  dvdd-supply:
+    description: 3v3 digital regulator
+
+  reset-gpios: true
+
+  backlight: true
+
+required:
+  - compatible
+  - reg
+  - avdd-supply
+  - dvdd-supply
+  - reset-gpios
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    dsi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        panel@0 {
+            compatible = "feiyang,fy07024di26a30d";
+            reg = <0>;
+            avdd-supply = <&reg_dc1sw>;
+            dvdd-supply = <&reg_dldo2>;
+            reset-gpios = <&pio 3 24 GPIO_ACTIVE_HIGH>; /* LCD-RST: PD24 */
+            backlight = <&backlight>;
+        };
+    };
-- 
2.17.1


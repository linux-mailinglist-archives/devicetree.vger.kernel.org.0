Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D7EBF428490
	for <lists+devicetree@lfdr.de>; Mon, 11 Oct 2021 03:22:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233102AbhJKBYS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Oct 2021 21:24:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232813AbhJKBYS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Oct 2021 21:24:18 -0400
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com [IPv6:2607:f8b0:4864:20::849])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0268AC061570
        for <devicetree@vger.kernel.org>; Sun, 10 Oct 2021 18:22:18 -0700 (PDT)
Received: by mail-qt1-x849.google.com with SMTP id l14-20020ac8458e000000b002a7829805b8so1897351qtn.22
        for <devicetree@vger.kernel.org>; Sun, 10 Oct 2021 18:22:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=pelpqGop9lNK0ivkhrG4qKsEmnDb1OiP8EZo1Fz2vqE=;
        b=hp7SXw7jtocsPJY2qeNaqGCipXyVGn6axSHZaPOQaTyZ26+Xroo5tcvNvJ7ZipX/Yt
         KPq611KjO+9iLfrdcLY6JcLHrUp6OvfmMM++nkzaq2SetrEWyL8r32lOj6YyfoSXeAbH
         Fr/wOlK1kFMfP+nB54KD7G754v1lmkJIa4WbRj1jcOX+5Le/RCNazkJpvS77BNWUyuAp
         byhfpwzYyKsuqgdhQs2OMnES6J0dn7WuOPOwBixVtdqwHf8P+aWu4c75nMC8xemVADCT
         UafLuSCaCfwwYweoMppmYC52PdvcA02o/q4ywMEVWJeRJHG/Pm2Dh8/L9AR2Nr5wLA0Y
         0hPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=pelpqGop9lNK0ivkhrG4qKsEmnDb1OiP8EZo1Fz2vqE=;
        b=wagQonBzqC+NZVPKO/4bXOg5GUscpjFh/YojerESRW2lXigh53qzLh7Vjy/hWuVfSm
         zgv6XpSudUCAPQFTdwLN5nCqtSPhI1nBJ9ThCNLAX2RXB/7s5R4Ruy0gshOYaNlOa9/B
         PDuzTYuxGC5PNMZsMflmcI+SkMW+JSx0hofSg+1koBvnC0OqZwiiyYrcp/z4FvUTwHBA
         Y0PAiC4oVEgn3tIyemLHg6znEwWteRuWw+a0xU+GUvmmNRiXNGeOwlaTNMOY1sObdkU5
         W2DxxbYcfxIlHdCLaZM3Cq3Wmb7np5CMoYfuDbq1fzb485CCSVsN8g0ntvyv4vxbLrrf
         1Y8g==
X-Gm-Message-State: AOAM531HOZSfHNhm2lA+bXiPPY7ChotQVFHKSKgykP4fFcx+nu57H7Sh
        Ld0B1Vosb5yYB8YsGDA9Orwo2OA=
X-Google-Smtp-Source: ABdhPJxakqS3R8xOFBlupR06TVZ/cUaN2aXRdEF/OW4Gfgmo0Ro10oYgMUoHGtdJNMM/YAHTF5V+zHg=
X-Received: from osk.cam.corp.google.com ([2620:0:1004:1a:8461:b843:7404:1394])
 (user=osk job=sendgmr) by 2002:ac8:7e86:: with SMTP id w6mr11757072qtj.277.1633915336530;
 Sun, 10 Oct 2021 18:22:16 -0700 (PDT)
Date:   Sun, 10 Oct 2021 21:22:11 -0400
Message-Id: <20211011012212.91357-1-osk@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.33.0.882.g93a45727a2-goog
Subject: [PATCH v7 1/2] dt-bindings: hwmon: Add nct7802 bindings
From:   Oskar Senft <osk@google.com>
To:     Jean Delvare <jdelvare@suse.com>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>, linux-hwmon@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc:     Oskar Senft <osk@google.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This change documents the device tree bindings for the Nuvoton
NCT7802Y driver.

Signed-off-by: Oskar Senft <osk@google.com>
---
Changes from PATCH v6:
- Fixed formatting error reported by yamllint

Changes from PATCH v5:
- Refactored to use patternProperties.
- Added validation for sensor-type and temperature-mode.
---
 .../bindings/hwmon/nuvoton,nct7802.yaml       | 144 ++++++++++++++++++
 1 file changed, 144 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwmon/nuvoton,nct7802.yaml

diff --git a/Documentation/devicetree/bindings/hwmon/nuvoton,nct7802.yaml b/Documentation/devicetree/bindings/hwmon/nuvoton,nct7802.yaml
new file mode 100644
index 000000000000..a0a245938528
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/nuvoton,nct7802.yaml
@@ -0,0 +1,144 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+
+$id: http://devicetree.org/schemas/hwmon/nuvoton,nct7802.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Nuvoton NCT7802Y Hardware Monitoring IC
+
+maintainers:
+  - Guenter Roeck <linux@roeck-us.net>
+
+description: |
+  The NCT7802Y is a hardware monitor IC which supports one on-die and up to
+  5 remote temperature sensors with SMBus interface.
+
+  Datasheets:
+    https://www.nuvoton.com/export/resource-files/Nuvoton_NCT7802Y_Datasheet_V12.pdf
+
+properties:
+  compatible:
+    enum:
+      - nuvoton,nct7802
+
+  reg:
+    maxItems: 1
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+patternProperties:
+  "^channel@[0-3]$":
+    type: object
+    properties:
+      reg:
+        items:
+          - enum:
+              - 0    # Local Temperature Sensor ("LTD")
+              - 1    # Remote Temperature Sensor or Voltage Sensor 1 ("RTD1")
+              - 2    # Remote Temperature Sensor or Voltage Sensor 2 ("RTD2")
+              - 3    # Remote Temperature Sensor or Voltage Sensor 3 ("RTD3")
+      sensor-type:
+        items:
+          - enum:
+              - temperature
+              - voltage
+      temperature-mode:
+        items:
+          - enum:
+              - thermistor
+              - thermal-diode
+    required:
+      - reg
+    allOf:
+      # For channels RTD1, RTD2 and RTD3, require sensor-type to be set.
+      # Otherwise (for all other channels), do not allow temperature-mode to be
+      # set.
+      - if:
+          properties:
+            reg:
+              items:
+                - enum:
+                    - 1
+                    - 2
+                    - 3
+        then:
+          required:
+            - sensor-type
+        else:
+          not:
+            required:
+              - sensor-type
+
+      # For channels RTD1 and RTD2 and if sensor-type is "temperature", require
+      # temperature-mode to be set. Otherwise (for all other channels or
+      # sensor-type settings), do not allow temperature-mode to be set
+      - if:
+          properties:
+            reg:
+              items:
+                - enum:
+                    - 1
+                    - 2
+            sensor-type:
+              items:
+                - enum:
+                    - temperature
+        then:
+          required:
+            - temperature-mode
+        else:
+          not:
+            required:
+              - temperature-mode
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        nct7802@28 {
+            compatible = "nuvoton,nct7802";
+            reg = <0x28>;
+
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            channel@0 { /* LTD */
+              reg = <0>;
+              status = "okay";
+            };
+
+            channel@1 { /* RTD1 */
+              reg = <1>;
+              status = "okay";
+              sensor-type = "voltage";
+            };
+
+            channel@2 { /* RTD2 */
+              reg = <2>;
+              status = "okay";
+              sensor-type = "temperature";
+              temperature-mode = "thermal-diode";
+            };
+
+            channel@3 { /* RTD3 */
+              reg = <3>;
+              status = "okay";
+              sensor-type = "temperature";
+            };
+        };
+    };
-- 
2.33.0.882.g93a45727a2-goog


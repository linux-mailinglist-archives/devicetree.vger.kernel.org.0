Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1FAF02830B9
	for <lists+devicetree@lfdr.de>; Mon,  5 Oct 2020 09:14:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725901AbgJEHOm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Oct 2020 03:14:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725873AbgJEHOm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Oct 2020 03:14:42 -0400
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6ACF5C0613CE
        for <devicetree@vger.kernel.org>; Mon,  5 Oct 2020 00:14:42 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: rcn)
        with ESMTPSA id E56232996CA
From:   =?UTF-8?q?Ricardo=20Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To:     robh@kernel.org
Cc:     kernel@collabora.com, enric.balletbo@collabora.com,
        bleung@chromium.org, groeck@chromium.org, sjg@chromium.org,
        dianders@chromium.org, devicetree@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: i2c: convert i2c-cros-ec-tunnel to json-schema
Date:   Mon,  5 Oct 2020 09:14:00 +0200
Message-Id: <20201005071403.17450-2-ricardo.canuelo@collabora.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20201005071403.17450-1-ricardo.canuelo@collabora.com>
References: <20201005071403.17450-1-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the google,cros-ec-i2c-tunnel binding to YAML.

Signed-off-by: Ricardo Cañuelo <ricardo.canuelo@collabora.com>
---
 .../i2c/google,cros-ec-i2c-tunnel.yaml        | 56 +++++++++++++++++++
 .../bindings/i2c/i2c-cros-ec-tunnel.txt       | 39 -------------
 2 files changed, 56 insertions(+), 39 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/i2c/google,cros-ec-i2c-tunnel.yaml
 delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-cros-ec-tunnel.txt

diff --git a/Documentation/devicetree/bindings/i2c/google,cros-ec-i2c-tunnel.yaml b/Documentation/devicetree/bindings/i2c/google,cros-ec-i2c-tunnel.yaml
new file mode 100644
index 000000000000..905dbc788dc0
--- /dev/null
+++ b/Documentation/devicetree/bindings/i2c/google,cros-ec-i2c-tunnel.yaml
@@ -0,0 +1,56 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+
+$id: http://devicetree.org/schemas/i2c/google,cros-ec-i2c-tunnel.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: I2C bus that tunnels through the ChromeOS EC (cros-ec)
+
+maintainers:
+  - Doug Anderson <dianders@chromium.org>
+  - Benson Leung <bleung@chromium.org>
+  - Enric Balletbo i Serra <enric.balletbo@collabora.com>
+
+description: |
+  On some ChromeOS board designs we've got a connection to the EC
+  (embedded controller) but no direct connection to some devices on the
+  other side of the EC (like a battery and PMIC).  To get access to
+  those devices we need to tunnel our i2c commands through the EC.
+
+  The node for this device should be under a cros-ec node like
+  google,cros-ec-spi or google,cros-ec-i2c.
+
+properties:
+  compatible:
+    const: google,cros-ec-i2c-tunnel
+
+  google,remote-bus:
+    description: The EC bus we'd like to talk to.
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+required:
+  - compatible
+  - google,remote-bus
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    cros-ec {
+        compatible = "google,cros-ec-spi";
+
+        i2c-tunnel {
+            compatible = "google,cros-ec-i2c-tunnel";
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            google,remote-bus = <0>;
+
+            battery: sbs-battery@b {
+                compatible = "sbs,sbs-battery";
+                reg = <0xb>;
+                sbs,poll-retry-count = <1>;
+            };
+        };
+    };
diff --git a/Documentation/devicetree/bindings/i2c/i2c-cros-ec-tunnel.txt b/Documentation/devicetree/bindings/i2c/i2c-cros-ec-tunnel.txt
deleted file mode 100644
index 898f030eba62..000000000000
--- a/Documentation/devicetree/bindings/i2c/i2c-cros-ec-tunnel.txt
+++ /dev/null
@@ -1,39 +0,0 @@
-I2C bus that tunnels through the ChromeOS EC (cros-ec)
-======================================================
-On some ChromeOS board designs we've got a connection to the EC (embedded
-controller) but no direct connection to some devices on the other side of
-the EC (like a battery and PMIC).  To get access to those devices we need
-to tunnel our i2c commands through the EC.
-
-The node for this device should be under a cros-ec node like google,cros-ec-spi
-or google,cros-ec-i2c.
-
-
-Required properties:
-- compatible: google,cros-ec-i2c-tunnel
-- google,remote-bus: The EC bus we'd like to talk to.
-
-Optional child nodes:
-- One node per I2C device connected to the tunnelled I2C bus.
-
-
-Example:
-	cros-ec@0 {
-		compatible = "google,cros-ec-spi";
-
-		...
-
-		i2c-tunnel {
-			compatible = "google,cros-ec-i2c-tunnel";
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			google,remote-bus = <0>;
-
-			battery: sbs-battery@b {
-				compatible = "sbs,sbs-battery";
-				reg = <0xb>;
-				sbs,poll-retry-count = <1>;
-			};
-		};
-	}
-- 
2.18.0


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4B36639C1BC
	for <lists+devicetree@lfdr.de>; Fri,  4 Jun 2021 22:57:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231245AbhFDU7H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Jun 2021 16:59:07 -0400
Received: from foss.arm.com ([217.140.110.172]:48038 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230177AbhFDU7H (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 4 Jun 2021 16:59:07 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C77141478;
        Fri,  4 Jun 2021 13:57:20 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id AAFBF3F719;
        Fri,  4 Jun 2021 13:57:19 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     devicetree@vger.kernel.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>,
        linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Cristian Marussi <cristian.marussi@arm.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>
Subject: [PATCH v3 3/6] dt-bindings: firmware: amlogic,scpi: Convert to json schema
Date:   Fri,  4 Jun 2021 21:57:07 +0100
Message-Id: <20210604205710.1944363-4-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210604205710.1944363-1-sudeep.holla@arm.com>
References: <20210604205710.1944363-1-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert/merge the existing text format SCPI binding additions for
amlogic,scpi into the common arm,scpi json scheme.

Couple of things to note:
"amlogic,meson-gxbb-scpi" is always used with "arm,scpi-pre-1.0" and
"amlogic,meson-gxbb-scpi-sensors" is used always with "arm,scpi-sensors"

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Kevin Hilman <khilman@baylibre.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 .../devicetree/bindings/arm/amlogic,scpi.txt  | 15 ------------
 .../bindings/firmware/arm,scpi.yaml           | 24 ++++++++++++++++++-
 2 files changed, 23 insertions(+), 16 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/amlogic,scpi.txt

diff --git a/Documentation/devicetree/bindings/arm/amlogic,scpi.txt b/Documentation/devicetree/bindings/arm/amlogic,scpi.txt
deleted file mode 100644
index ebfe302fb747..000000000000
--- a/Documentation/devicetree/bindings/arm/amlogic,scpi.txt
+++ /dev/null
@@ -1,15 +0,0 @@
-System Control and Power Interface (SCPI) Message Protocol
-(in addition to the standard binding in [0])
-----------------------------------------------------------
-Required properties
-
-- compatible : should be "amlogic,meson-gxbb-scpi"
-
-Sensor bindings for the sensors based on SCPI Message Protocol
---------------------------------------------------------------
-SCPI provides an API to access the various sensors on the SoC.
-
-Required properties:
-- compatible : should be "amlogic,meson-gxbb-scpi-sensors".
-
-[0] Documentation/devicetree/bindings/arm/arm,scpi.txt
diff --git a/Documentation/devicetree/bindings/firmware/arm,scpi.yaml b/Documentation/devicetree/bindings/firmware/arm,scpi.yaml
index 6cb70e2008fc..ce429cf2bdc0 100644
--- a/Documentation/devicetree/bindings/firmware/arm,scpi.yaml
+++ b/Documentation/devicetree/bindings/firmware/arm,scpi.yaml
@@ -32,6 +32,10 @@ description: |
     oneOf:
       - const: arm,scpi               # SCPI v1.0 and above
       - const: arm,scpi-pre-1.0       # Unversioned SCPI before v1.0
+      - items:
+          - enum:
+              - amlogic,meson-gxbb-scpi
+          - const: arm,scpi-pre-1.0
 
   mboxes:
     description: |
@@ -84,7 +88,12 @@ additionalProperties: false
 
     properties:
       compatible:
-        const: arm,scpi-sensors
+        oneOf:
+          - const: arm,scpi-sensors
+          - items:
+              - enum:
+                  - amlogic,meson-gxbb-scpi-sensors
+              - const: arm,scpi-sensors
 
       '#thermal-sensor-cells':
         const: 1
@@ -224,4 +233,17 @@ additionalProperties: false
         };
     };
 
+  - |
+    firmware {
+        scpi {
+            compatible = "amlogic,meson-gxbb-scpi", "arm,scpi-pre-1.0";
+            mboxes = <&mailbox 1 &mailbox 2>;
+            shmem = <&cpu_scp_lpri &cpu_scp_hpri>;
+
+            scpi_sensors1: sensors {
+                compatible = "amlogic,meson-gxbb-scpi-sensors", "arm,scpi-sensors";
+                #thermal-sensor-cells = <1>;
+            };
+        };
+    };
 ...
-- 
2.25.1


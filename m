Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 69179397CB9
	for <lists+devicetree@lfdr.de>; Wed,  2 Jun 2021 00:49:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235034AbhFAWvE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 18:51:04 -0400
Received: from foss.arm.com ([217.140.110.172]:59798 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S235080AbhFAWvC (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 1 Jun 2021 18:51:02 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 222511042;
        Tue,  1 Jun 2021 15:49:19 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 0661B3F719;
        Tue,  1 Jun 2021 15:49:17 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     devicetree@vger.kernel.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>,
        linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Cristian Marussi <cristian.marussi@arm.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>
Subject: [PATCH v2 7/8] dt-bindings: firmware: amlogic,scpi: Convert to json schema
Date:   Tue,  1 Jun 2021 23:49:03 +0100
Message-Id: <20210601224904.917990-8-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210601224904.917990-1-sudeep.holla@arm.com>
References: <20210601224904.917990-1-sudeep.holla@arm.com>
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
 .../devicetree/bindings/arm/amlogic,scpi.txt  | 15 ---------
 .../bindings/firmware/arm,scpi.yaml           | 32 +++++++++++++++++++
 2 files changed, 32 insertions(+), 15 deletions(-)
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
index b44a5a7040fc..59eea4e0fbed 100644
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
@@ -62,6 +66,10 @@ description: |
         oneOf:
           - const: arm,scpi-sensors
           - const: arm,scpi-power-domains
+          - items:
+              - enum:
+                  - amlogic,meson-gxbb-scpi-sensors
+              - const: arm,scpi-sensors
 
   "^clocks(-[0-9a-f]+)?$":
     type: object
@@ -282,4 +290,28 @@ description: |
         };
     };
 
+  - |
+    firmware {
+        scpi {
+            compatible = "amlogic,meson-gxbb-scpi", "arm,scpi-pre-1.0";
+            mboxes = <&mailbox 1 &mailbox 2>;
+            shmem = <&cpu_scp_lpri &cpu_scp_hpri>;
+
+            clocks {
+                compatible = "arm,scpi-clocks";
+
+                scpi_dvfs1: clocks-0 {
+                    compatible = "arm,scpi-dvfs-clocks";
+                    #clock-cells = <1>;
+                    clock-indices = <0>;
+                    clock-output-names = "vcpu";
+                };
+            };
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


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A1460397CB8
	for <lists+devicetree@lfdr.de>; Wed,  2 Jun 2021 00:49:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235048AbhFAWvA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 18:51:00 -0400
Received: from foss.arm.com ([217.140.110.172]:59794 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S235046AbhFAWvA (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 1 Jun 2021 18:51:00 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C7F2011B3;
        Tue,  1 Jun 2021 15:49:17 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 9183F3F719;
        Tue,  1 Jun 2021 15:49:16 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     devicetree@vger.kernel.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>,
        linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Cristian Marussi <cristian.marussi@arm.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>
Subject: [PATCH v2 6/8] dt-bindings: firmware: arm,scpi: Convert to json schema
Date:   Tue,  1 Jun 2021 23:49:02 +0100
Message-Id: <20210601224904.917990-7-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210601224904.917990-1-sudeep.holla@arm.com>
References: <20210601224904.917990-1-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the old text format binding for System Control and Power Interface
(SCPI) Message Protocol into the new and shiny YAML format.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Kevin Hilman <khilman@baylibre.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>
Cc: Viresh Kumar <viresh.kumar@linaro.org
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 .../devicetree/bindings/arm/arm,scpi.txt      | 204 -------------
 .../bindings/firmware/arm,scpi.yaml           | 285 ++++++++++++++++++
 MAINTAINERS                                   |   2 +-
 3 files changed, 286 insertions(+), 205 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/arm,scpi.txt
 create mode 100644 Documentation/devicetree/bindings/firmware/arm,scpi.yaml

diff --git a/Documentation/devicetree/bindings/arm/arm,scpi.txt b/Documentation/devicetree/bindings/arm/arm,scpi.txt
deleted file mode 100644
index bcb8b3d61e68..000000000000
--- a/Documentation/devicetree/bindings/arm/arm,scpi.txt
+++ /dev/null
@@ -1,204 +0,0 @@
-System Control and Power Interface (SCPI) Message Protocol
-----------------------------------------------------------
-
-Firmware implementing the SCPI described in ARM document number ARM DUI 0922B
-("ARM Compute Subsystem SCP: Message Interface Protocols")[0] can be used
-by Linux to initiate various system control and power operations.
-
-Required properties:
-
-- compatible : should be
-	* "arm,scpi" : For implementations complying to SCPI v1.0 or above
-	* "arm,scpi-pre-1.0" : For implementations complying to all
-		unversioned releases prior to SCPI v1.0
-- mboxes: List of phandle and mailbox channel specifiers
-	  All the channels reserved by remote SCP firmware for use by
-	  SCPI message protocol should be specified in any order
-- shmem : List of phandle pointing to the shared memory(SHM) area between the
-	  processors using these mailboxes for IPC, one for each mailbox
-	  SHM can be any memory reserved for the purpose of this communication
-	  between the processors.
-
-See Documentation/devicetree/bindings/mailbox/mailbox.txt
-for more details about the generic mailbox controller and
-client driver bindings.
-
-Clock bindings for the clocks based on SCPI Message Protocol
-------------------------------------------------------------
-
-This binding uses the common clock binding[1].
-
-Container Node
-==============
-Required properties:
-- compatible : should be "arm,scpi-clocks"
-	       All the clocks provided by SCP firmware via SCPI message
-	       protocol much be listed as sub-nodes under this node.
-
-Sub-nodes
-=========
-Required properties:
-- compatible : shall include one of the following
-	"arm,scpi-dvfs-clocks" - all the clocks that are variable and index based.
-		These clocks don't provide an entire range of values between the
-		limits but only discrete points within the range. The firmware
-		provides the mapping for each such operating frequency and the
-		index associated with it. The firmware also manages the
-		voltage scaling appropriately with the clock scaling.
-	"arm,scpi-variable-clocks" - all the clocks that are variable and provide full
-		range within the specified range. The firmware provides the
-		range of values within a specified range.
-
-Other required properties for all clocks(all from common clock binding):
-- #clock-cells : Should be 1. Contains the Clock ID value used by SCPI commands.
-- clock-output-names : shall be the corresponding names of the outputs.
-- clock-indices: The identifying number for the clocks(i.e.clock_id) in the
-	node. It can be non linear and hence provide the mapping of identifiers
-	into the clock-output-names array.
-
-Sensor bindings for the sensors based on SCPI Message Protocol
---------------------------------------------------------------
-SCPI provides an API to access the various sensors on the SoC.
-
-Required properties:
-- compatible : should be "arm,scpi-sensors".
-- #thermal-sensor-cells: should be set to 1. This property follows the
-			 thermal device tree bindings[2].
-
-			 Valid cell values are raw identifiers (Sensor ID)
-			 as used by the firmware. Refer to  platform details
-			 for your implementation for the IDs to use.
-
-Power domain bindings for the power domains based on SCPI Message Protocol
-------------------------------------------------------------
-
-This binding uses the generic power domain binding[4].
-
-PM domain providers
-===================
-
-Required properties:
- - #power-domain-cells : Should be 1. Contains the device or the power
-			 domain ID value used by SCPI commands.
- - num-domains: Total number of power domains provided by SCPI. This is
-		needed as the SCPI message protocol lacks a mechanism to
-		query this information at runtime.
-
-PM domain consumers
-===================
-
-Required properties:
- - power-domains : A phandle and PM domain specifier as defined by bindings of
-                   the power controller specified by phandle.
-
-[0] http://infocenter.arm.com/help/topic/com.arm.doc.dui0922b/index.html
-[1] Documentation/devicetree/bindings/clock/clock-bindings.txt
-[2] Documentation/devicetree/bindings/thermal/thermal*.yaml
-[3] Documentation/devicetree/bindings/sram/sram.yaml
-[4] Documentation/devicetree/bindings/power/power-domain.yaml
-
-Example:
-
-sram: sram@50000000 {
-	compatible = "arm,juno-sram-ns", "mmio-sram";
-	reg = <0x0 0x50000000 0x0 0x10000>;
-
-	#address-cells = <1>;
-	#size-cells = <1>;
-	ranges = <0 0x0 0x50000000 0x10000>;
-
-	cpu_scp_lpri: scp-shmem@0 {
-		compatible = "arm,juno-scp-shmem";
-		reg = <0x0 0x200>;
-	};
-
-	cpu_scp_hpri: scp-shmem@200 {
-		compatible = "arm,juno-scp-shmem";
-		reg = <0x200 0x200>;
-	};
-};
-
-mailbox: mailbox0@40000000 {
-	....
-	#mbox-cells = <1>;
-};
-
-scpi_protocol: scpi@2e000000 {
-	compatible = "arm,scpi";
-	mboxes = <&mailbox 0 &mailbox 1>;
-	shmem = <&cpu_scp_lpri &cpu_scp_hpri>;
-
-	clocks {
-		compatible = "arm,scpi-clocks";
-
-		scpi_dvfs: scpi_clocks@0 {
-			compatible = "arm,scpi-dvfs-clocks";
-			#clock-cells = <1>;
-			clock-indices = <0>, <1>, <2>;
-			clock-output-names = "atlclk", "aplclk","gpuclk";
-		};
-		scpi_clk: scpi_clocks@3 {
-			compatible = "arm,scpi-variable-clocks";
-			#clock-cells = <1>;
-			clock-indices = <3>, <4>;
-			clock-output-names = "pxlclk0", "pxlclk1";
-		};
-	};
-
-	scpi_sensors0: sensors {
-		compatible = "arm,scpi-sensors";
-		#thermal-sensor-cells = <1>;
-	};
-
-	scpi_devpd: scpi-power-domains {
-		compatible = "arm,scpi-power-domains";
-		num-domains = <2>;
-		#power-domain-cells = <1>;
-	};
-};
-
-cpu@0 {
-	...
-	reg = <0 0>;
-	clocks = <&scpi_dvfs 0>;
-};
-
-hdlcd@7ff60000 {
-	...
-	reg = <0 0x7ff60000 0 0x1000>;
-	clocks = <&scpi_clk 4>;
-	power-domains = <&scpi_devpd 1>;
-};
-
-thermal-zones {
-	soc_thermal {
-		polling-delay-passive = <100>;
-		polling-delay = <1000>;
-
-				/* sensor         ID */
-		thermal-sensors = <&scpi_sensors0 3>;
-		...
-	};
-};
-
-In the above example, the #clock-cells is set to 1 as required.
-scpi_dvfs has 3 output clocks namely: atlclk, aplclk, and gpuclk with 0,
-1 and 2 as clock-indices. scpi_clk has 2 output clocks namely: pxlclk0
-and pxlclk1 with 3 and 4 as clock-indices.
-
-The first consumer in the example is cpu@0 and it has '0' as the clock
-specifier which points to the first entry in the output clocks of
-scpi_dvfs i.e. "atlclk".
-
-Similarly the second example is hdlcd@7ff60000 and it has pxlclk1 as input
-clock. '4' in the clock specifier here points to the second entry
-in the output clocks of scpi_clocks  i.e. "pxlclk1"
-
-The thermal-sensors property in the soc_thermal node uses the
-temperature sensor provided by SCP firmware to setup a thermal
-zone. The ID "3" is the sensor identifier for the temperature sensor
-as used by the firmware.
-
-The num-domains property in scpi-power-domains domain specifies that
-SCPI provides 2 power domains. The hdlcd node uses the power domain with
-domain ID 1.
diff --git a/Documentation/devicetree/bindings/firmware/arm,scpi.yaml b/Documentation/devicetree/bindings/firmware/arm,scpi.yaml
new file mode 100644
index 000000000000..b44a5a7040fc
--- /dev/null
+++ b/Documentation/devicetree/bindings/firmware/arm,scpi.yaml
@@ -0,0 +1,285 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2021 ARM Ltd.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/firmware/arm,scpi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: System Control and Power Interface (SCPI) Message Protocol bindings
+
+maintainers:
+  - Sudeep Holla <sudeep.holla@arm.com>
+
+description: |
+  Firmware implementing the SCPI described in ARM document number ARM DUI
+  0922B ("ARM Compute Subsystem SCP: Message Interface Protocols")[0] can be
+  used by Linux to initiate various system control and power operations.
+
+  This binding is intended to define the interface the firmware implementing
+  the SCPI provide for OSPM in the device tree.
+
+  [0] http://infocenter.arm.com/help/topic/com.arm.doc.dui0922b/index.html
+
+properties:
+  $nodename:
+    const: scpi
+
+  compatible:
+    description: |
+      SCPI compliant firmware complying to SCPI v1.0 and above OR
+      SCPI compliant firmware complying to all unversioned releases
+      prior to SCPI v1.0
+    oneOf:
+      - const: arm,scpi               # SCPI v1.0 and above
+      - const: arm,scpi-pre-1.0       # Unversioned SCPI before v1.0
+
+  mboxes:
+    description: |
+      List of phandle and mailbox channel specifiers. All the channels reserved
+      by remote SCP firmware for use by SCPI message protocol should be
+      specified in any order.
+    minItems: 1
+
+  shmem:
+    description: |
+      List of phandle pointing to the shared memory(SHM) area between the
+      processors using these mailboxes for IPC, one for each mailbox SHM can
+      be any memory reserved for the purpose of this communication between the
+      processors.
+    minItems: 1
+
+additionalProperties:
+  type: object
+
+patternProperties:
+  "^(sensors|power-domains)(-[0-9a-f]+)?$":
+    type: object
+    description: |
+      Each sub-node represents one of the controller - power domains or sensors.
+
+    properties:
+      compatible:
+        oneOf:
+          - const: arm,scpi-sensors
+          - const: arm,scpi-power-domains
+
+  "^clocks(-[0-9a-f]+)?$":
+    type: object
+    description: |
+      "arm,scpi-clocks" - This is the container node. Each sub-node
+      represents one of the types of clock controller - indexed or full range.
+
+      "arm,scpi-dvfs-clocks" - all the clocks that are variable and index
+      based. These clocks don't provide an entire range of values
+      between the limits but only discrete points within the range. The
+      firmware provides the mapping for each such operating frequency
+      and the index associated with it. The firmware also manages the
+      voltage scaling appropriately with the clock scaling.
+
+      "arm,scpi-variable-clocks" - all the clocks that are variable and
+      provide full range within the specified range. The firmware
+      provides the range of values within a specified range.
+
+    properties:
+      compatible:
+        oneOf:
+          - const: arm,scpi-clocks
+          - const: arm,scpi-dvfs-clocks
+          - const: arm,scpi-variable-clocks
+
+required:
+  - compatible
+  - mboxes
+  - shmem
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: arm,scpi-sensors
+    then:
+      properties:
+        '#thermal-sensor-cells':
+          const: 1
+
+      required:
+        - '#thermal-sensor-cells'
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: arm,scpi-power-domains
+    then:
+      properties:
+        '#power-domain-cells':
+          const: 1
+
+        num-domains:
+          $ref: /schemas/types.yaml#/definitions/uint32
+          description: |
+            Total number of power domains provided by SCPI. This is needed as
+            the SCPI message protocol lacks a mechanism to query this
+            information at runtime.
+
+      required:
+        - '#power-domain-cells'
+        - num-domains
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - arm,scpi-dvfs-clocks
+              - arm,scpi-variable-clocks
+    then:
+      properties:
+        '#clock-cells':
+          const: 1
+        clock-output-names:
+          $ref: /schemas/types.yaml#/definitions/string-array
+        clock-indices:
+          $ref: /schemas/types.yaml#/definitions/uint32-array
+          description: |
+            The identifying number for the clocks(i.e.clock_id) in the node.
+            It can be non linear and hence provide the mapping of identifiers
+            into the clock-output-names array.
+
+      required:
+        - '#clock-cells'
+        - clock-output-names
+        - clock-indices
+
+examples:
+  - |
+    firmware {
+        scpi {
+            compatible = "arm,scpi";
+            mboxes = <&mhuA 1>;
+            shmem = <&cpu_scp_hpri>; /* HP-NonSecure */
+
+            scpi_devpd: power-domains-0 {
+                compatible = "arm,scpi-power-domains";
+                num-domains = <2>;
+                #power-domain-cells = <1>;
+            };
+
+            clocks {
+                compatible = "arm,scpi-clocks";
+
+                scpi_dvfs: clocks-0 {
+                    compatible = "arm,scpi-dvfs-clocks";
+                    #clock-cells = <1>;
+                    clock-indices = <0>, <1>, <2>;
+                    clock-output-names = "atlclk", "aplclk","gpuclk";
+                };
+
+                scpi_clk: clocks-1 {
+                    compatible = "arm,scpi-variable-clocks";
+                    #clock-cells = <1>;
+                    clock-indices = <3>, <4>;
+                    clock-output-names = "pxlclk0", "pxlclk1";
+                };
+            };
+
+            scpi_sensors: sensors-0 {
+                compatible = "arm,scpi-sensors";
+                #thermal-sensor-cells = <1>;
+            };
+
+        };
+    };
+
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        sram@50000000 {
+            compatible = "mmio-sram";
+            reg = <0x0 0x50000000 0x0 0x10000>;
+
+            #address-cells = <1>;
+            #size-cells = <1>;
+            ranges = <0 0x0 0x50000000 0x10000>;
+
+            cpu_scp_lpri: scp-sram-section@0 {
+                compatible = "arm,scp-shmem";
+                reg = <0x0 0x200>;
+            };
+
+            cpu_scp_hpri: scp-sram-section@200 {
+                compatible = "arm,scp-shmem";
+                reg = <0x200 0x200>;
+            };
+        };
+
+        mhuA: mailbox@2b2f0000 {
+            #mbox-cells = <1>;
+            compatible = "arm,mhu", "arm,primecell";
+            reg = <0 0x2b2f0000 0 0x1000>;
+            interrupts = <0 36 4>, /* LP-NonSecure */
+                         <0 35 4>, /* HP-NonSecure */
+                         <0 37 4>; /* Secure */
+            clocks = <&clock 0 2 1>;
+            clock-names = "apb_pclk";
+        };
+
+        gpu@ffe40000 {
+            compatible = "amlogic,meson-g12a-mali", "arm,mali-bifrost";
+            reg = <0x0 0xffe40000 0x0 0x10000>;
+            interrupts = <0 160 4>, <0 161 4>, <0 162 4>;
+            interrupt-names = "job", "mmu", "gpu";
+            clocks = <&scpi_clk 1>;
+            power-domains = <&scpi_devpd 8>;
+            resets = <&scpi_reset 0>, <&scpi_reset 1>;
+        };
+
+        display@20930000 {
+            compatible = "intel,keembay-display";
+            reg = <0x0 0x20930000 0x0 0x3000>;
+            reg-names = "lcd";
+            interrupts = <0 33 4>;
+            clocks = <&scpi_clk 0x83>,
+                     <&scpi_clk 0x0>;
+            clock-names = "clk_lcd", "clk_pll0";
+
+            port {
+                disp_out: endpoint {
+                    remote-endpoint = <&dsi_in>;
+                };
+            };
+        };
+
+        thermal-zones {
+            soc-thermal {
+                polling-delay-passive = <100>;
+                polling-delay = <1000>;
+                thermal-sensors = <&scpi_sensors0 3>;
+
+                trips {
+                    mpu0_crit: mpu0_crit {
+                      temperature = <125000>; /* milliCelsius */
+                      hysteresis = <2000>; /* milliCelsius */
+                      type = "critical";
+                    };
+                };
+            };
+        };
+    };
+
+    cpus {
+        #size-cells = <0>;
+        #address-cells = <2>;
+
+        cpu@0 {
+            device_type = "cpu";
+            compatible = "arm,cortex-a57";
+            reg = <0x0 0x0>;
+            enable-method = "psci";
+            clocks = <&scpi_dvfs 0>;
+        };
+    };
+
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index bd7aff0c120f..6a12597a86e1 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -17696,7 +17696,7 @@ M:	Sudeep Holla <sudeep.holla@arm.com>
 R:	Cristian Marussi <cristian.marussi@arm.com>
 L:	linux-arm-kernel@lists.infradead.org
 S:	Maintained
-F:	Documentation/devicetree/bindings/arm/arm,sc[mp]i.txt
+F:	Documentation/devicetree/bindings/firmware/arm,sc[mp]i.yaml
 F:	drivers/clk/clk-sc[mp]i.c
 F:	drivers/cpufreq/sc[mp]i-cpufreq.c
 F:	drivers/firmware/arm_scmi/
-- 
2.25.1


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7456839C1BD
	for <lists+devicetree@lfdr.de>; Fri,  4 Jun 2021 22:57:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231512AbhFDU7L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Jun 2021 16:59:11 -0400
Received: from foss.arm.com ([217.140.110.172]:48048 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230177AbhFDU7J (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 4 Jun 2021 16:59:09 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3F6DB2B;
        Fri,  4 Jun 2021 13:57:22 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 07AF03F719;
        Fri,  4 Jun 2021 13:57:20 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     devicetree@vger.kernel.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>,
        linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Cristian Marussi <cristian.marussi@arm.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Jim Quinlan <jim2101024@gmail.com>,
        Etienne Carriere <etienne.carriere@linaro.org>,
        Peter Hilber <peter.hilber@opensynergy.com>
Subject: [PATCH v3 4/6] dt-bindings: firmware: arm,scmi: Convert to json schema
Date:   Fri,  4 Jun 2021 21:57:08 +0100
Message-Id: <20210604205710.1944363-5-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210604205710.1944363-1-sudeep.holla@arm.com>
References: <20210604205710.1944363-1-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the old text format binding for System Control and Management Interface
(SCMI) Message Protocol into the new and shiny YAML format.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Cristian Marussi <cristian.marussi@arm.com>
Cc: Florian Fainelli <f.fainelli@gmail.com>
Cc: Jim Quinlan <jim2101024@gmail.com>
Cc: Etienne Carriere <etienne.carriere@linaro.org>
Cc: Peter Hilber <peter.hilber@opensynergy.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 .../devicetree/bindings/arm/arm,scmi.txt      | 224 ------------
 .../bindings/firmware/arm,scmi.yaml           | 338 ++++++++++++++++++
 2 files changed, 338 insertions(+), 224 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/arm,scmi.txt
 create mode 100644 Documentation/devicetree/bindings/firmware/arm,scmi.yaml

diff --git a/Documentation/devicetree/bindings/arm/arm,scmi.txt b/Documentation/devicetree/bindings/arm/arm,scmi.txt
deleted file mode 100644
index b7be2000afcb..000000000000
--- a/Documentation/devicetree/bindings/arm/arm,scmi.txt
+++ /dev/null
@@ -1,224 +0,0 @@
-System Control and Management Interface (SCMI) Message Protocol
-----------------------------------------------------------
-
-The SCMI is intended to allow agents such as OSPM to manage various functions
-that are provided by the hardware platform it is running on, including power
-and performance functions.
-
-This binding is intended to define the interface the firmware implementing
-the SCMI as described in ARM document number ARM DEN 0056A ("ARM System Control
-and Management Interface Platform Design Document")[0] provide for OSPM in
-the device tree.
-
-Required properties:
-
-The scmi node with the following properties shall be under the /firmware/ node.
-
-- compatible : shall be "arm,scmi" or "arm,scmi-smc" for smc/hvc transports
-- mboxes: List of phandle and mailbox channel specifiers. It should contain
-	  exactly one or two mailboxes, one for transmitting messages("tx")
-	  and another optional for receiving the notifications("rx") if
-	  supported.
-- shmem : List of phandle pointing to the shared memory(SHM) area as per
-	  generic mailbox client binding.
-- #address-cells : should be '1' if the device has sub-nodes, maps to
-	  protocol identifier for a given sub-node.
-- #size-cells : should be '0' as 'reg' property doesn't have any size
-	  associated with it.
-- arm,smc-id : SMC id required when using smc or hvc transports
-
-Optional properties:
-
-- mbox-names: shall be "tx" or "rx" depending on mboxes entries.
-
-- interrupts : when using smc or hvc transports, this optional
-	 property indicates that msg completion by the platform is indicated
-	 by an interrupt rather than by the return of the smc call. This
-	 should not be used except when the platform requires such behavior.
-
-- interrupt-names : if "interrupts" is present, interrupt-names must also
-	 be present and have the value "a2p".
-
-See Documentation/devicetree/bindings/mailbox/mailbox.txt for more details
-about the generic mailbox controller and client driver bindings.
-
-The mailbox is the only permitted method of calling the SCMI firmware.
-Mailbox doorbell is used as a mechanism to alert the presence of a
-messages and/or notification.
-
-Each protocol supported shall have a sub-node with corresponding compatible
-as described in the following sections. If the platform supports dedicated
-communication channel for a particular protocol, the 3 properties namely:
-mboxes, mbox-names and shmem shall be present in the sub-node corresponding
-to that protocol.
-
-Clock/Performance bindings for the clocks/OPPs based on SCMI Message Protocol
-------------------------------------------------------------
-
-This binding uses the common clock binding[1].
-
-Required properties:
-- #clock-cells : Should be 1. Contains the Clock ID value used by SCMI commands.
-
-Power domain bindings for the power domains based on SCMI Message Protocol
-------------------------------------------------------------
-
-This binding for the SCMI power domain providers uses the generic power
-domain binding[2].
-
-Required properties:
- - #power-domain-cells : Should be 1. Contains the device or the power
-			 domain ID value used by SCMI commands.
-
-Regulator bindings for the SCMI Regulator based on SCMI Message Protocol
-------------------------------------------------------------
-An SCMI Regulator is permanently bound to a well defined SCMI Voltage Domain,
-and should be always positioned as a root regulator.
-It does not support any current operation.
-
-SCMI Regulators are grouped under a 'regulators' node which in turn is a child
-of the SCMI Voltage protocol node inside the desired SCMI instance node.
-
-This binding uses the common regulator binding[6].
-
-Required properties:
- - reg : shall identify an existent SCMI Voltage Domain.
-
-Sensor bindings for the sensors based on SCMI Message Protocol
---------------------------------------------------------------
-SCMI provides an API to access the various sensors on the SoC.
-
-Required properties:
-- #thermal-sensor-cells: should be set to 1. This property follows the
-			 thermal device tree bindings[3].
-
-			 Valid cell values are raw identifiers (Sensor ID)
-			 as used by the firmware. Refer to  platform details
-			 for your implementation for the IDs to use.
-
-Reset signal bindings for the reset domains based on SCMI Message Protocol
-------------------------------------------------------------
-
-This binding for the SCMI reset domain providers uses the generic reset
-signal binding[5].
-
-Required properties:
- - #reset-cells : Should be 1. Contains the reset domain ID value used
-		  by SCMI commands.
-
-[0] http://infocenter.arm.com/help/topic/com.arm.doc.den0056a/index.html
-[1] Documentation/devicetree/bindings/clock/clock-bindings.txt
-[2] Documentation/devicetree/bindings/power/power-domain.yaml
-[3] Documentation/devicetree/bindings/thermal/thermal*.yaml
-[4] Documentation/devicetree/bindings/sram/sram.yaml
-[5] Documentation/devicetree/bindings/reset/reset.txt
-[6] Documentation/devicetree/bindings/regulator/regulator.yaml
-
-Example:
-
-sram@50000000 {
-	compatible = "mmio-sram";
-	reg = <0x0 0x50000000 0x0 0x10000>;
-
-	#address-cells = <1>;
-	#size-cells = <1>;
-	ranges = <0 0x0 0x50000000 0x10000>;
-
-	cpu_scp_lpri: scp-shmem@0 {
-		compatible = "arm,scmi-shmem";
-		reg = <0x0 0x200>;
-	};
-
-	cpu_scp_hpri: scp-shmem@200 {
-		compatible = "arm,scmi-shmem";
-		reg = <0x200 0x200>;
-	};
-};
-
-mailbox@40000000 {
-	....
-	#mbox-cells = <1>;
-	reg = <0x0 0x40000000 0x0 0x10000>;
-};
-
-firmware {
-
-	...
-
-	scmi {
-		compatible = "arm,scmi";
-		mboxes = <&mailbox 0 &mailbox 1>;
-		mbox-names = "tx", "rx";
-		shmem = <&cpu_scp_lpri &cpu_scp_hpri>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		scmi_devpd: protocol@11 {
-			reg = <0x11>;
-			#power-domain-cells = <1>;
-		};
-
-		scmi_dvfs: protocol@13 {
-			reg = <0x13>;
-			#clock-cells = <1>;
-		};
-
-		scmi_clk: protocol@14 {
-			reg = <0x14>;
-			#clock-cells = <1>;
-		};
-
-		scmi_sensors0: protocol@15 {
-			reg = <0x15>;
-			#thermal-sensor-cells = <1>;
-		};
-
-		scmi_reset: protocol@16 {
-			reg = <0x16>;
-			#reset-cells = <1>;
-		};
-
-		scmi_voltage: protocol@17 {
-			reg = <0x17>;
-
-			regulators {
-				regulator_devX: regulator@0 {
-					reg = <0x0>;
-					regulator-max-microvolt = <3300000>;
-				};
-
-				regulator_devY: regulator@9 {
-					reg = <0x9>;
-					regulator-min-microvolt = <500000>;
-					regulator-max-microvolt = <4200000>;
-				};
-
-				...
-			};
-		};
-	};
-};
-
-cpu@0 {
-	...
-	reg = <0 0>;
-	clocks = <&scmi_dvfs 0>;
-};
-
-hdlcd@7ff60000 {
-	...
-	reg = <0 0x7ff60000 0 0x1000>;
-	clocks = <&scmi_clk 4>;
-	power-domains = <&scmi_devpd 1>;
-	resets = <&scmi_reset 10>;
-};
-
-thermal-zones {
-	soc_thermal {
-		polling-delay-passive = <100>;
-		polling-delay = <1000>;
-					/* sensor ID */
-		thermal-sensors = <&scmi_sensors0 3>;
-		...
-	};
-};
diff --git a/Documentation/devicetree/bindings/firmware/arm,scmi.yaml b/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
new file mode 100644
index 000000000000..165d713fd0cd
--- /dev/null
+++ b/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
@@ -0,0 +1,338 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2021 ARM Ltd.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/firmware/arm,scmi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: System Control and Management Interface (SCMI) Message Protocol bindings
+
+maintainers:
+  - Sudeep Holla <sudeep.holla@arm.com>
+
+description: |
+  The SCMI is intended to allow agents such as OSPM to manage various functions
+  that are provided by the hardware platform it is running on, including power
+  and performance functions.
+
+  This binding is intended to define the interface the firmware implementing
+  the SCMI as described in ARM document number ARM DEN 0056 ("ARM System Control
+  and Management Interface Platform Design Document")[0] provide for OSPM in
+  the device tree.
+
+  [0] https://developer.arm.com/documentation/den0056/latest
+
+properties:
+  $nodename:
+    const: scmi
+
+  compatible:
+    oneOf:
+      - description: SCMI compliant firmware with mailbox transport
+        items:
+          - const: arm,scmi
+      - description: SCMI compliant firmware with ARM SMC/HVC transport
+        items:
+          - const: arm,scmi-smc
+
+  mbox-names:
+    description: |
+      Specifies the mailboxes used to communicate with SCMI compliant
+      firmware.
+    items:
+      - const: tx
+      - const: rx
+
+  mboxes:
+    description: |
+      List of phandle and mailbox channel specifiers. It should contain
+      exactly one or two mailboxes, one for transmitting messages("tx")
+      and another optional for receiving the notifications("rx") if supported.
+    minItems: 1
+    maxItems: 2
+
+  shmem:
+    description: |
+      List of phandle pointing to the shared memory(SHM) area, for each
+      transport channel specified.
+    minItems: 1
+    maxItems: 2
+
+  '#address-cells':
+    description: |
+      The address cells map to the protocol identifier for a given sub-node.
+    const: 1
+
+  '#size-cells':
+    description: |
+      The size cells are not present as 'reg' property doesn't have any
+      size associated with it.
+    const: 0
+
+  arm,smc-id:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      SMC id required when using smc or hvc transports
+
+  protocol@11:
+    type: object
+    properties:
+      reg:
+        const: 0x11
+
+      '#power-domain-cells':
+        const: 1
+
+    required:
+      - '#power-domain-cells'
+
+  protocol@13:
+    type: object
+    properties:
+      reg:
+        const: 0x13
+
+      '#clock-cells':
+        const: 1
+
+    required:
+      - '#clock-cells'
+
+  protocol@14:
+    type: object
+    properties:
+      reg:
+        const: 0x14
+
+      '#clock-cells':
+        const: 1
+
+    required:
+      - '#clock-cells'
+
+  protocol@15:
+    type: object
+    properties:
+      reg:
+        const: 0x15
+
+      '#thermal-sensor-cells':
+        const: 1
+
+    required:
+      - '#thermal-sensor-cells'
+
+  protocol@16:
+    type: object
+    properties:
+      reg:
+        const: 0x16
+
+      '#reset-cells':
+        const: 1
+
+    required:
+      - '#reset-cells'
+
+  protocol@17:
+    type: object
+    properties:
+      reg:
+        const: 0x17
+
+      regulators:
+        type: object
+        description: |
+            The list of all regulators provided by this SCMI controller.
+        patternProperties:
+          '^regulators@[0-9a-f]+$':
+            type: object
+            $ref: "../regulator/regulator.yaml#"
+            properties:
+              reg:
+                maxItems: 1
+                description: Identifier for the voltage regulator.
+            required:
+              - reg
+
+additionalProperties: false
+
+patternProperties:
+  '^protocol@[0-9a-f]+$':
+    type: object
+    description: |
+      Each sub-node represents a protocol supported. If the platform
+      supports a dedicated communication channel for a particular protocol,
+      then the corresponding transport properties must be present.
+
+    properties:
+      reg:
+        maxItems: 1
+
+      mbox-names:
+        items:
+          - const: tx
+          - const: rx
+
+      mboxes:
+        minItems: 1
+        maxItems: 2
+
+      shmem:
+        minItems: 1
+        maxItems: 2
+
+    required:
+      - reg
+
+required:
+  - compatible
+  - shmem
+
+if:
+  properties:
+    compatible:
+      contains:
+        const: arm,scmi
+  required:
+    - mboxes
+
+else:
+  if:
+    properties:
+      compatible:
+        contains:
+          const: arm,scmi-smc
+  then:
+    properties:
+      interrupts:
+        description: |
+          The interrupt that indicates message completion by the platform
+          rather than by the return of the smc call. This should not be used
+          except when the platform requires such behavior.
+
+      interrupt-names:
+        const: a2p
+
+    required:
+      - arm,smc-id
+
+examples:
+  - |
+    firmware {
+        scmi {
+            compatible = "arm,scmi";
+            mboxes = <&mhuB 0 0>,
+                     <&mhuB 0 1>;
+            mbox-names = "tx", "rx";
+            shmem = <&cpu_scp_lpri0>,
+                    <&cpu_scp_lpri1>;
+
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            scmi_devpd: protocol@11 {
+                reg = <0x11>;
+                #power-domain-cells = <1>;
+            };
+
+            scmi_dvfs: protocol@13 {
+                reg = <0x13>;
+                #clock-cells = <1>;
+
+                mboxes = <&mhuB 1 0>,
+                         <&mhuB 1 1>;
+                mbox-names = "tx", "rx";
+                shmem = <&cpu_scp_hpri0>,
+                        <&cpu_scp_hpri1>;
+            };
+
+            scmi_clk: protocol@14 {
+                reg = <0x14>;
+                #clock-cells = <1>;
+            };
+
+            scmi_sensors: protocol@15 {
+                reg = <0x15>;
+                #thermal-sensor-cells = <1>;
+            };
+
+            scmi_reset: protocol@16 {
+                reg = <0x16>;
+                #reset-cells = <1>;
+            };
+
+            scmi_voltage: protocol@17 {
+                reg = <0x17>;
+                regulators {
+                    #address-cells = <1>;
+                    #size-cells = <0>;
+
+                    regulator_devX: regulator@0 {
+                        reg = <0x0>;
+                        regulator-max-microvolt = <3300000>;
+                    };
+
+                    regulator_devY: regulator@9 {
+                        reg = <0x9>;
+                        regulator-min-microvolt = <500000>;
+                        regulator-max-microvolt = <4200000>;
+                    };
+                };
+            };
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
+            cpu_scp_lpri0: scp-sram-section@0 {
+                compatible = "arm,scmi-shmem";
+                reg = <0x0 0x80>;
+            };
+
+            cpu_scp_lpri1: scp-sram-section@80 {
+                compatible = "arm,scmi-shmem";
+                reg = <0x80 0x80>;
+            };
+
+            cpu_scp_hpri0: scp-sram-section@100 {
+                compatible = "arm,scmi-shmem";
+                reg = <0x100 0x80>;
+            };
+
+            cpu_scp_hpri2: scp-sram-section@180 {
+                compatible = "arm,scmi-shmem";
+                reg = <0x180 0x80>;
+            };
+        };
+    };
+
+  - |
+    firmware {
+        scmi {
+            compatible = "arm,scmi-smc";
+            shmem = <&cpu_scp_lpri0 &cpu_scp_lpri1>;
+            arm,smc-id = <0xc3000001>;
+
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            scmi_devpd1: protocol@11 {
+                reg = <0x11>;
+                #power-domain-cells = <1>;
+            };
+
+        };
+    };
+
+...
-- 
2.25.1


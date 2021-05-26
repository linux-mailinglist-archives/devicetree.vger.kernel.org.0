Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 21642391F37
	for <lists+devicetree@lfdr.de>; Wed, 26 May 2021 20:35:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232367AbhEZShA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 May 2021 14:37:00 -0400
Received: from foss.arm.com ([217.140.110.172]:48630 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S235472AbhEZSgy (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 26 May 2021 14:36:54 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 71C47143B;
        Wed, 26 May 2021 11:35:22 -0700 (PDT)
Received: from bogus (unknown [10.57.70.210])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AAE623F73B;
        Wed, 26 May 2021 11:35:20 -0700 (PDT)
Date:   Wed, 26 May 2021 19:35:15 +0100
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     devicetree@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Cristian Marussi <cristian.marussi@arm.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Jim Quinlan <jim2101024@gmail.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Etienne Carriere <etienne.carriere@linaro.org>,
        Peter Hilber <peter.hilber@opensynergy.com>
Subject: Re: [PATCH 8/8] dt-bindings: firmware: arm,scmi: Convert to json
 schema
Message-ID: <20210526183455.q6wmhm6qjggu65hs@bogus>
References: <20210526182807.548118-1-sudeep.holla@arm.com>
 <20210526182807.548118-9-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210526182807.548118-9-sudeep.holla@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 26, 2021 at 07:28:07PM +0100, Sudeep Holla wrote:
> Convert the old text format binding for System Control and Management Interface
> (SCMI) Message Protocol into the new and shiny YAML format.
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Cristian Marussi <cristian.marussi@arm.com>
> Cc: Florian Fainelli <f.fainelli@gmail.com>
> Cc: Jim Quinlan <jim2101024@gmail.com>
> Cc: Etienne Carriere <etienne.carriere@linaro.org>
> Cc: Peter Hilber <peter.hilber@opensynergy.com>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  .../devicetree/bindings/arm/arm,scmi.txt      | 224 ---------------
>  .../bindings/firmware/arm,scmi.yaml           | 270 ++++++++++++++++++
>  2 files changed, 270 insertions(+), 224 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/arm,scmi.txt
>  create mode 100644 Documentation/devicetree/bindings/firmware/arm,scmi.yaml
> 
> Hi,
> 
> I have converted all the bindings except the below regulator part of the
> binding. This needs to be addressed before merging ofcourse. Just posting
> the remaining changes to get feedback and also ask suggestion for the below:
> 
>         scmi_voltage: protocol@17 {
>           reg = <0x17>;
>           regulators {
>             regulator_devX: regulator@0 {
>               reg = <0x0>;
>               regulator-max-microvolt = <3300000>;
>             };
> 
>             regulator_devY: regulator@9 {
>               reg = <0x9>;
>               regulator-min-microvolt = <500000>;
>               regulator-max-microvolt = <4200000>;
>             };
>           };
>         };
> 
> I will reply with things I have tried separately to avoid confusion with this
> the patch here.
>

Below is the patch I have tried. I even started without a separate binding
for scmi regulator. Irrespective of what I have tried so far, I keep getting
the same error, I even added '#address-cells' and '#size-cells' to the node
but makes no difference.

Documentation/devicetree/bindings/firmware/arm,scmi.example.dt.yaml
Documentation/devicetree/bindings/firmware/arm,scmi.example.dts:62.19-31: Warning (reg_format): /example-0/firmware/scmi/protocol@17/regulators/regulator@0:reg: property has invalid length (4 bytes) (#address-cells == 2, #size-cells == 1)
Documentation/devicetree/bindings/firmware/arm,scmi.example.dts:67.19-31: Warning (reg_format): /example-0/firmware/scmi/protocol@17/regulators/regulator@9:reg: property has invalid length (4 bytes) (#address-cells == 2, #size-cells == 1)
Documentation/devicetree/bindings/firmware/arm,scmi.example.dt.yaml: Warning (pci_device_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/firmware/arm,scmi.example.dt.yaml: Warning (pci_device_bus_num): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/firmware/arm,scmi.example.dt.yaml: Warning (simple_bus_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/firmware/arm,scmi.example.dt.yaml: Warning (i2c_bus_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/firmware/arm,scmi.example.dt.yaml: Warning (spi_bus_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/firmware/arm,scmi.example.dts:61.45-64.19: Warning (avoid_default_addr_size): /example-0/firmware/scmi/protocol@17/regulators/regulator@0: Relying on default #address-cells value
Documentation/devicetree/bindings/firmware/arm,scmi.example.dts:61.45-64.19: Warning (avoid_default_addr_size): /example-0/firmware/scmi/protocol@17/regulators/regulator@0: Relying on default #size-cells value
Documentation/devicetree/bindings/firmware/arm,scmi.example.dts:66.45-70.19: Warning (avoid_default_addr_size): /example-0/firmware/scmi/protocol@17/regulators/regulator@9: Relying on default #address-cells value
Documentation/devicetree/bindings/firmware/arm,scmi.example.dts:66.45-70.19: Warning (avoid_default_addr_size): /example-0/firmware/scmi/protocol@17/regulators/regulator@9: Relying on default #size-cells value
Documentation/devicetree/bindings/firmware/arm,scmi.example.dt.yaml: Warning (unique_unit_address): Failed prerequisite 'avoid_default_addr_size'
  CHECK   Documentation/devicetree/bindings/firmware/arm,scmi.example.dt.yaml


Regards,
Sudeep

--->8

diff --git c/Documentation/devicetree/bindings/firmware/arm,scmi.yaml i/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
index 36072585fc45..1fe23ef36adf 100644
--- c/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
+++ i/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
@@ -101,6 +101,10 @@ description: |
       '#thermal-sensor-cells':
         const: 1
 
+  '^regulator@[0-9]+$':
+    type: object
+    $ref: "/schemas/regulator/arm,scmi-regulator.yaml#"
+
 required:
   - compatible
   - shmem
@@ -173,6 +177,21 @@ description: |
 
         scmi_voltage: protocol@17 {
           reg = <0x17>;
+          #address-cells = <1>;
+          #size-cells = <0>;
+
+          regulators {
+            regulator_devX: regulator@0 {
+              reg = <0x0>;
+              regulator-max-microvolt = <3300000>;
+            };
+
+            regulator_devY: regulator@9 {
+              reg = <0x9>;
+              regulator-min-microvolt = <500000>;
+              regulator-max-microvolt = <4200000>;
+            };
+          };
         };
       };
     };
diff --git c/Documentation/devicetree/bindings/regulator/arm,scmi-regulator.yaml i/Documentation/devicetree/bindings/regulator/arm,scmi-regulator.yaml
new file mode 100644
index 000000000000..2111676e3494
--- /dev/null
+++ i/Documentation/devicetree/bindings/regulator/arm,scmi-regulator.yaml
@@ -0,0 +1,27 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/regulator/arm,scmi-regulator.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ARM SCMI controlled voltage regulators
+
+maintainers:
+  - Sudeep Holla <sudeep.holla@arm.com>
+
+description:
+  Any property defined as part of the core regulator binding, defined in
+  regulator.yaml, can also be used.
+
+allOf:
+  - $ref: "regulator.yaml#"
+
+properties:
+  reg:
+    maxItems: 1
+    description: Identifier for the voltage regulator.
+
+required:
+  - reg
+
+unevaluatedProperties: false

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7CFFC6D0BE1
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 18:53:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232010AbjC3QxU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 12:53:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231825AbjC3QxG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 12:53:06 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id C9579DBD5
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 09:52:52 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E56302F4;
        Thu, 30 Mar 2023 09:53:36 -0700 (PDT)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.177])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ED3C93F6C4;
        Thu, 30 Mar 2023 09:52:50 -0700 (PDT)
From:   James Morse <james.morse@arm.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Marc Zyngier <maz@kernel.org>,
        Oliver Upton <oliver.upton@linux.dev>,
        James Morse <james.morse@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andre Przywara <andre.przywara@arm.com>
Subject: [PATCH 1/6] dt-bindings: firmware: Add arm,errata-management
Date:   Thu, 30 Mar 2023 17:51:23 +0100
Message-Id: <20230330165128.3237939-2-james.morse@arm.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230330165128.3237939-1-james.morse@arm.com>
References: <20230330165128.3237939-1-james.morse@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.3 required=5.0 tests=RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Errata Management SMCCC interface allows firmware to advertise whether
the OS is affected by an erratum, or if a higher exception level has
mitigated the issue. This allows properties of the device that are not
discoverable by the OS to be described. e.g. some errata depend on the
behaviour of the interconnect, which is not visible to the OS.

Deployed devices may find it significantly harder to update EL3
firmware than the device tree. Erratum workarounds typically have to
fail safe, and assume the platform is affected putting correctness
above performance.

Instead of adding a device-tree entry for any CPU errata that is
relevant (or not) to the platform, allow the device-tree to describe
firmware's responses for the SMCCC interface. This could be used as
the data source for the firmware interface, or be parsed by the OS if
the firmware interface is missing.

Most errata can be detected from CPU id registers. These mechanisms
are only needed for the rare cases that external knowledge is needed.

Suggested-by: Andre Przywara <andre.przywara@arm.com>
Signed-off-by: James Morse <james.morse@arm.com>
---
 .../devicetree/bindings/arm/cpus.yaml         |  5 ++
 .../firmware/arm,errata-management.yaml       | 77 +++++++++++++++++++
 2 files changed, 82 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/firmware/arm,errata-management.yaml

diff --git a/Documentation/devicetree/bindings/arm/cpus.yaml b/Documentation/devicetree/bindings/arm/cpus.yaml
index c145f6a035ee..47b12761f305 100644
--- a/Documentation/devicetree/bindings/arm/cpus.yaml
+++ b/Documentation/devicetree/bindings/arm/cpus.yaml
@@ -257,6 +257,11 @@ properties:
       List of phandles to idle state nodes supported
       by this cpu (see ./idle-states.yaml).
 
+  arm,erratum-list:
+    $ref: '/schemas/types.yaml#/definitions/phandle'
+    description:
+      Specifies the firmware cpu-erratum-list node associated with this CPU.
+
   capacity-dmips-mhz:
     description:
       u32 value representing CPU capacity (see ../cpu/cpu-capacity.txt) in
diff --git a/Documentation/devicetree/bindings/firmware/arm,errata-management.yaml b/Documentation/devicetree/bindings/firmware/arm,errata-management.yaml
new file mode 100644
index 000000000000..9baeb3d35213
--- /dev/null
+++ b/Documentation/devicetree/bindings/firmware/arm,errata-management.yaml
@@ -0,0 +1,77 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/firmware/arm,errata-management.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Errata Management Firmware Interface
+
+maintainers:
+  - James Morse <james.morse@arm.com>
+
+description: |+
+  The SMC-CC has an erratum discovery interface that allows the OS to discover
+  whether a particular CPU is affected by a specific erratum when the
+  configurations affected is only known by firmware. See the specification of
+  the same title on developer.arm.com, document DEN0100.
+  Provide the values that should be used by the interface, either to supplement
+  firmware, or override the values firmware provides.
+  Most errata can be detected from CPU id registers. These mechanisms are only
+  needed for the rare cases that external knowledge is needed.
+  The CPU node should hold a phandle that points to the cpu-erratum-list node.
+
+properties:
+  compatible:
+    items:
+      - const: arm,cpu-erratum-list
+
+  arm,erratum-affected:
+    description: Erratum numbers that this CPU is affected by.
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 1
+
+  arm,erratum-not-affected:
+    description: Erratum numbers that this CPU is not affected by.
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 1
+
+  arm,erratum-higher-el-mitigation:
+    description: Erratum numbers that have been mitigated by a higher level
+      of firmware
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 1
+
+required:
+  - compatible
+anyOf:
+  - required:
+    - 'arm,erratum-affected'
+  - required:
+    - 'arm,erratum-not-affected'
+  - required:
+    - 'arm,erratum-higher-el-mitigation'
+
+additionalProperties: false
+
+examples:
+  - |
+    firmware {
+      CL1_ERRATA: cluster1-errata {
+          compatible = "arm,cpu-erratum-list";
+          arm,erratum-not-affected = <2701952>;
+      };
+    };
+
+    cpus {
+      #size-cells = <0>;
+      #address-cells = <1>;
+
+      cpu@0 {
+        device_type = "cpu";
+        compatible = "arm,cortex-x2";
+        reg = <0x0>;
+        arm,erratum-list = <&CL1_ERRATA>;
+      };
+    };
+
+...
-- 
2.39.2


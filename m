Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 617F42A4D5D
	for <lists+devicetree@lfdr.de>; Tue,  3 Nov 2020 18:44:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728697AbgKCRoA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Nov 2020 12:44:00 -0500
Received: from foss.arm.com ([217.140.110.172]:53032 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727901AbgKCRoA (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 3 Nov 2020 12:44:00 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DA929147A;
        Tue,  3 Nov 2020 09:43:59 -0800 (PST)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 31E0E3F718;
        Tue,  3 Nov 2020 09:43:58 -0800 (PST)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>,
        Trilok Soni <tsoni@codeaurora.org>,
        Trilok Soni <tsoni@quicinc.com>, arve@android.com,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Android Kernel Team <kernel-team@android.com>,
        Fuad Tabba <tabba@google.com>, Will Deacon <will@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 1/9] dt-bindings: Arm: Add Firmware Framework for Armv8-A (FF-A) binding
Date:   Tue,  3 Nov 2020 17:43:42 +0000
Message-Id: <20201103174350.991593-2-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201103174350.991593-1-sudeep.holla@arm.com>
References: <20201103174350.991593-1-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Will Deacon <will@kernel.org>

Add devicetree bindings for a FF-A-compliant hypervisor, its partitions
and their memory regions. The naming is ludicrous but also not by fault.

Cc: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Will Deacon <will@kernel.org>
(sudeep.holla: Dropped PSA from name and elsewhere as it seem to have
 disappeared mysteriously just before the final release, renamed
 arm,ffa.yaml as arm,ffa-hyp.yaml)
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 .../devicetree/bindings/arm/arm,ffa-hyp.yaml  | 102 ++++++++++++++++++
 .../reserved-memory/arm,ffa-memory.yaml       |  71 ++++++++++++
 2 files changed, 173 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/arm,ffa-hyp.yaml
 create mode 100644 Documentation/devicetree/bindings/reserved-memory/arm,ffa-memory.yaml

Hi Rob,

Sorry I haven't waited for the discussion on the previous version to
conclude and posting new version to re-trigger (more) discussion on the
series.

Regards,
Sudeep

diff --git a/Documentation/devicetree/bindings/arm/arm,ffa-hyp.yaml b/Documentation/devicetree/bindings/arm/arm,ffa-hyp.yaml
new file mode 100644
index 000000000000..054e36d317ff
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/arm,ffa-hyp.yaml
@@ -0,0 +1,102 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/arm,ffa-hyp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Arm Firmware Framework for Arm v8-A
+
+maintainers:
+  - Will Deacon <will@kernel.org>
+
+description: |
+  Firmware frameworks implementing partition setup according to the FF-A
+  specification defined by ARM document number ARM DEN 0077A ("Arm Firmware
+  Framework for Arm v8-A") [0] must provide a "manifest and image" for each
+  partition to the "partition manager" so that the partition execution contexts
+  can be initialised.
+
+  In the case of a virtual FFA instance, the manifest and image details can be
+  passed to the hypervisor (e.g. Linux KVM) using this binding.
+
+  [0] https://developer.arm.com/docs/den0077/latest
+
+properties:
+  $nodename:
+    const: ffa_hyp
+
+  compatible:
+    oneOf:
+      - const: arm,ffa-1.0-hypervisor
+
+  memory-region:
+    $ref: '/schemas/types.yaml#/definitions/phandle'
+    description: |
+      A phandle to the reserved memory region [1] to be used by the hypervisor.
+      The reserved memory region must be compatible with
+      "arm,ffa-1.0-hypervisor-memory-region".
+
+      [1] Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
+
+patternProperties:
+  "^ffa_partition[0-9]+$":
+    type: object
+    description: One or more child nodes, each describing an FFA partition.
+    properties:
+      $nodename:
+        const: ffa_partition
+
+      compatible:
+        oneOf:
+          - const: arm,ffa-1.0-partition
+
+      uuid:
+        $ref: '/schemas/types.yaml#definitions/string'
+        description: |
+          The 128-bit UUID [2] of the service implemented by this partition.
+
+          [2] https://tools.ietf.org/html/rfc4122
+
+      nr-exec-ctxs:
+        $ref: '/schemas/types.yaml#/definitions/uint32'
+        description: |
+          The number of virtual CPUs to instantiate for this partition.
+
+      exec-state:
+        description: The execution state in which to execute the partition.
+        oneOf:
+          - const: "AArch64"
+          - const: "AArch32"
+
+      entry-point:
+        $ref: '/schemas/types.yaml#/definitions/uint32-matrix'
+        description: |
+          The entry address of the partition specified as an Intermediate
+          Physical Address (IPA) encoded according to the '#address-cells'
+          property.
+
+      memory-region:
+        $ref: '/schemas/types.yaml#/definitions/phandle-array'
+        description: |
+          A list of phandles to FFA reserved memory regions [3] for this
+          partition.
+
+          [3] Documentation/devicetree/bindings/reserved-memory/arm,ffa-memory.yaml
+
+additionalProperties: false
+
+examples:
+  - |
+    ffa_hyp {
+        compatible = "arm,ffa-1.0-hypervisor";
+        memory-region = <&ffa_hyp_reserved>;
+
+        ffa_partition0 {
+            compatible = "arm,ffa-1.0-partition";
+            uuid = "12345678-9abc-def0-1234-56789abcdef0";
+            nr-exec-ctxs = <2>;
+            exec-state = "AArch64";
+            entry-point = <0x80000>;
+            memory-region = <&ffa_reserved0 &ffa_reserved1>;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/reserved-memory/arm,ffa-memory.yaml b/Documentation/devicetree/bindings/reserved-memory/arm,ffa-memory.yaml
new file mode 100644
index 000000000000..5335e07abcfc
--- /dev/null
+++ b/Documentation/devicetree/bindings/reserved-memory/arm,ffa-memory.yaml
@@ -0,0 +1,71 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/reserved-memory/arm,ffa-memory.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Memory Region for Arm Firmware Framework for Arm v8-A
+
+maintainers:
+  - Will Deacon <will@kernel.org>
+
+description: |
+  This binding allows a FF-A implementation to describe the normal memory
+  regions of a partition [1] to a hypervisor according to [2].
+
+  The physical address range reserved for the partition can be specified as a
+  static allocation using the 'reg' property or as a dynamic allocation using
+  the 'size' property. If both properties are omitted, then the hypervisor can
+  allocate physical memory for the partition however it sees fit.
+
+  [1] Documentation/devicetree/bindings/arm/arm,ffa.yaml
+  [2] Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
+
+properties:
+  $nodename:
+    pattern: "^ffa_mem(@[0-9a-f]+)?$"
+
+  compatible:
+    oneOf:
+      - const: arm,ffa-1.0-partition-memory-region
+
+  ipa-range:
+    $ref: '/schemas/types.yaml#/definitions/uint32-matrix'
+    description: |
+      The Intermediate Physical Address (IPA) range (encoded in the same way as
+      a 'reg' property) at which to map the physical memory. If the IPA range is
+      larger than the physical memory region then the region is mapped starting
+      at the base of the IPA range.
+
+  read-only:
+    type: boolean
+    description: |
+      (static allocation only) The memory region has been pre-populated
+      by the firmware framework and must be mapped without write permission
+      at stage 2.
+
+  non-executable:
+    type: boolean
+    description: |
+      The memory region must be mapped without execute permission at stage 2.
+
+
+required:
+  - compatible
+
+# The "reserved-memory" binding defines additional properties.
+additionalProperties: true
+
+examples:
+  - |
+    reserved-memory {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        ffa_reserved0: ffa_mem@100000000 {
+            compatible = "arm,ffa-1.0-partition-memory-region";
+            reg = <0x1 0x0 0x0 0x04000000>;          // 64M @ 1GB
+            ipa-range = <0x0 0x0 0x0 0x04000000>;    // 64M @ 0x0
+            read-only;
+        };
+    };
-- 
2.25.1


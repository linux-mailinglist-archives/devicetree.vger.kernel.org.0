Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 05CD62A4D5E
	for <lists+devicetree@lfdr.de>; Tue,  3 Nov 2020 18:44:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729073AbgKCRoC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Nov 2020 12:44:02 -0500
Received: from foss.arm.com ([217.140.110.172]:53048 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727901AbgKCRoC (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 3 Nov 2020 12:44:02 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A12301474;
        Tue,  3 Nov 2020 09:44:01 -0800 (PST)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 1C1783F718;
        Tue,  3 Nov 2020 09:44:00 -0800 (PST)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>,
        Trilok Soni <tsoni@codeaurora.org>,
        Trilok Soni <tsoni@quicinc.com>, arve@android.com,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Android Kernel Team <kernel-team@android.com>,
        Fuad Tabba <tabba@google.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 2/9] dt-bindings: Arm: Extend FF-A binding to support in-kernel usage of partitions
Date:   Tue,  3 Nov 2020 17:43:43 +0000
Message-Id: <20201103174350.991593-3-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201103174350.991593-1-sudeep.holla@arm.com>
References: <20201103174350.991593-1-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Since the FF-A v1.0 specification doesn't list the UUID of all the
partitions in the discovery API, we need to specify the UUID of the
partitions that need to be accessed by drivers within the kernel.

This extends the binding to provide the list of partitions that kernel
drivers may need to access and are not part of the partitions managed
by the hypervisor.

Cc: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 .../devicetree/bindings/arm/arm,ffa.yaml      | 58 +++++++++++++++++++
 1 file changed, 58 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/arm,ffa.yaml

Hi,

I struggled to keep both these(arm,ffa and arm,ffa-hyp) in the single yaml
file. I couldn't understand the errors and couldn't find an example that
has something similar. I will continue to explore, just posting as separate
for now to continue discussions.

Regards,
Sudeep


diff --git a/Documentation/devicetree/bindings/arm/arm,ffa.yaml b/Documentation/devicetree/bindings/arm/arm,ffa.yaml
new file mode 100644
index 000000000000..a014a5801c34
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/arm,ffa.yaml
@@ -0,0 +1,58 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/arm,ffa.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Arm Firmware Framework for Arm v8-A (in-kernel users)
+
+maintainers:
+  - Sudeep Holla <sudeep.holla@arm.com>
+
+description: |
+  Firmware frameworks implementing partition according to the FF-A
+  specification defined by ARM document number ARM DEN 0077A ("Arm Firmware
+  Framework for Arm v8-A") [0], providing services to be used by other
+  partitions.
+
+  [0] https://developer.arm.com/docs/den0077/latest
+
+properties:
+  $nodename:
+    const: ffa
+
+  compatible:
+    oneOf:
+      - const: arm,ffa-1.0
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
+additionalProperties: false
+
+examples:
+  - |
+    ffa {
+      compatible = "arm,ffa-1.0";
+
+      ffa_partition0 {
+        compatible = "arm,ffa-1.0-partition";
+        uuid = "12345678-9abc-def0-1234-56789abcdef0";
+      };
+    };
-- 
2.25.1


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1EF702CEDD2
	for <lists+devicetree@lfdr.de>; Fri,  4 Dec 2020 13:13:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730207AbgLDMMd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Dec 2020 07:12:33 -0500
Received: from foss.arm.com ([217.140.110.172]:33076 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1730204AbgLDMMc (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 4 Dec 2020 07:12:32 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4A76F142F;
        Fri,  4 Dec 2020 04:11:46 -0800 (PST)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E7A1E3F575;
        Fri,  4 Dec 2020 04:11:44 -0800 (PST)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>,
        Trilok Soni <tsoni@codeaurora.org>, arve@android.com,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Jens Wiklander <jens.wiklander@linaro.org>,
        Arunachalam Ganapathy <arunachalam.ganapathy@arm.com>
Subject: [PATCH v3 1/7] dt-bindings: Arm: Add Firmware Framework for Armv8-A (FF-A) binding
Date:   Fri,  4 Dec 2020 12:11:31 +0000
Message-Id: <20201204121137.2966778-2-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201204121137.2966778-1-sudeep.holla@arm.com>
References: <20201204121137.2966778-1-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Since the FF-A v1.0 specification doesn't list the UUID of all the
partitions in the discovery API, we need to specify the UUID of the
partitions that need to be accessed by drivers within the kernel.

This binding to provide the list of partitions that kernel drivers
may need to access.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 .../devicetree/bindings/arm/arm,ffa.yaml      | 58 +++++++++++++++++++
 1 file changed, 58 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/arm,ffa.yaml

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


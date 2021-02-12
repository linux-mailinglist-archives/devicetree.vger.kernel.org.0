Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E7C3E31A208
	for <lists+devicetree@lfdr.de>; Fri, 12 Feb 2021 16:47:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232034AbhBLPrY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Feb 2021 10:47:24 -0500
Received: from foss.arm.com ([217.140.110.172]:38970 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231731AbhBLPrL (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 12 Feb 2021 10:47:11 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0D24A11B3;
        Fri, 12 Feb 2021 07:46:26 -0800 (PST)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 896DB3F73B;
        Fri, 12 Feb 2021 07:46:24 -0800 (PST)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>,
        Trilok Soni <tsoni@codeaurora.org>, arve@android.com,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Jens Wiklander <jens.wiklander@linaro.org>,
        Arunachalam Ganapathy <arunachalam.ganapathy@arm.com>,
        Marc Bonnici <marc.bonnici@arm.com>
Subject: [PATCH v4 1/7] dt-bindings: Arm: Add Firmware Framework for Armv8-A (FF-A) binding
Date:   Fri, 12 Feb 2021 15:46:08 +0000
Message-Id: <20210212154614.38604-2-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210212154614.38604-1-sudeep.holla@arm.com>
References: <20210212154614.38604-1-sudeep.holla@arm.com>
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

Hi Rob,

Sorry to send the same version again just to keep the driver review progress.
I am still exploring on how to add "format: uuid" support in the dt-schemas.
I am seeing errors as format is used in some of the audio/video DT bindings.
I get errors for all those files, may be I need to use $format, initial
trial to do that also failed.

Regarding other comment, I had replied earlier[1] as why we need to keep
separate DT nodes for each partitions.

[1] https://lore.kernel.org/linux-arm-kernel/20210113100011.bnn75jogx22cgkk4@bogus/

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


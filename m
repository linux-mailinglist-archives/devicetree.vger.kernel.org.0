Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ACE4A25693D
	for <lists+devicetree@lfdr.de>; Sat, 29 Aug 2020 19:09:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728470AbgH2RJf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Aug 2020 13:09:35 -0400
Received: from foss.arm.com ([217.140.110.172]:45040 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728412AbgH2RJf (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 29 Aug 2020 13:09:35 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 56C2E113E;
        Sat, 29 Aug 2020 10:09:34 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 57A6D3F71F;
        Sat, 29 Aug 2020 10:09:33 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>, kernel-team@android.com,
        Will Deacon <will@kernel.org>, tsoni@quicinc.com,
        pratikp@quicinc.com
Subject: [PATCH 2/9] dt-bindings: Arm: Extend FF-A binding to support in-kernel usage of partitions
Date:   Sat, 29 Aug 2020 18:09:16 +0100
Message-Id: <20200829170923.29949-3-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200829170923.29949-1-sudeep.holla@arm.com>
References: <20200829170923.29949-1-sudeep.holla@arm.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Since the FF-A v1.0 specification doesn't list the UUID of all the
partitions in the discovery API, we need to specify the UUID of the
partitions that need to be accessed by drivers within the kernel.

This extends the binding to provide the list of partitions that kernel
drivers may need to access and are not part of the partitions managed
by the hypervisor.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 .../devicetree/bindings/arm/arm,ffa.yaml      | 34 +++++++++++++++++--
 1 file changed, 32 insertions(+), 2 deletions(-)

Hi,

I am sure this is incomplete, but I couldn't figure out how to make all
the child properties optional if it is not managed by hypervisor.

Moreover, if we don't like the idea of adding UUID of all the partitions
that in-kernel drivers may need to communicate to, one alternative I can
think of is to allow the creation of FFA device from the FFA driver
itself.

Regards,
Sudeep

diff --git a/Documentation/devicetree/bindings/arm/arm,ffa.yaml b/Documentation/devicetree/bindings/arm/arm,ffa.yaml
index 668a5995fcab..d5c6d71c99de 100644
--- a/Documentation/devicetree/bindings/arm/arm,ffa.yaml
+++ b/Documentation/devicetree/bindings/arm/arm,ffa.yaml
@@ -23,11 +23,12 @@ description: |

 properties:
   $nodename:
-    const: ffa_hyp
+    pattern: "^(ffa|ffa_hyp)$"

   compatible:
     oneOf:
       - const: arm,ffa-1.0-hypervisor
+      - const: arm,ffa-1.0

   memory-region:
     $ref: '/schemas/types.yaml#/definitions/phandle'
@@ -83,10 +84,26 @@ description: |

           [3] Documentation/devicetree/bindings/reserved-memory/arm,ffa-memory.yaml

+required:
+  - compatible
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: arm,ffa-1.0-hypervisor
+    then:
+      required:
+	- memory-region
+
 additionalProperties: false

 examples:
-  - |
+  - |+
+
+    // Case 1: Partitions managed by hypervisor
+
     ffa_hyp {
         compatible = "arm,ffa-1.0-hypervisor";
         memory-region = <&ffa_hyp_reserved>;
@@ -100,3 +117,16 @@ additionalProperties: false
             memory-region = <&ffa_reserved0 &ffa_reserved1>;
         };
     };
+
+  - |+
+
+    // Case 2: Partitions needing in-kernel usage
+
+    ffa {
+        compatible = "arm,ffa-1.0";
+
+        ffa_partition1 {
+            compatible = "arm,ffa-1.0-partition";
+            uuid = "589fc454-4502-4e66-9347-97b61e27cf73";
+        };
+   };
--
2.17.1


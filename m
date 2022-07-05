Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 74FEB567609
	for <lists+devicetree@lfdr.de>; Tue,  5 Jul 2022 19:55:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232649AbiGERy7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jul 2022 13:54:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233300AbiGERy7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jul 2022 13:54:59 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 024291928E
        for <devicetree@vger.kernel.org>; Tue,  5 Jul 2022 10:54:58 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 8A87F617E4
        for <devicetree@vger.kernel.org>; Tue,  5 Jul 2022 17:54:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7C99C341CA;
        Tue,  5 Jul 2022 17:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1657043696;
        bh=bzS5/icSd3OP47Xv0OO0WdiLYFtixHEB4UzpT1kEwg0=;
        h=From:To:Cc:Subject:Date:From;
        b=mEEXGHlXP7FsSazrRtbcaKOXslFv1hjOmF8iPiv6LHajoI6hoVMoPmh7cu2DISDj9
         2V14IGuHnrn1Gp4qMGD/PzXVmuoaCfmK20KuWVF74p1TSig9V6QlTxBsBET0S1R0hM
         hV+YjrV49JhjxDR2TT2+EBSnYj3Oux3LKX2n4mrRx++CVb0n3ilIvJQ5D4Va+OwYks
         7y45M8FSseVnk/cRxYEQXcwkEEjoshyIv3fHMBYyByV7F/3+STVjjalQjBoiSiDVVq
         DiRJT1VasUy083ZVhJCuklpAJFSHSSm1zzdm6zPlPPkgbxxxU2JxGSCw/o0WpW9R2Q
         q9Jx1bLcNUerA==
From:   =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Cc:     pali@kernel.org, =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
Subject: [PATCH] dt-bindings: bus: add device tree bindings for fsl,p1021rdb-pc-cpld
Date:   Tue,  5 Jul 2022 19:54:50 +0200
Message-Id: <20220705175450.11886-1-kabel@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-7.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add binding for CPLD bus interface of Freescale P1021RDB Combo Board
CPLD Design.

Signed-off-by: Marek Behún <kabel@kernel.org>
---
 .../bindings/bus/fsl,p1021rdb-pc-cpld.yaml    | 73 +++++++++++++++++++
 1 file changed, 73 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/bus/fsl,p1021rdb-pc-cpld.yaml

diff --git a/Documentation/devicetree/bindings/bus/fsl,p1021rdb-pc-cpld.yaml b/Documentation/devicetree/bindings/bus/fsl,p1021rdb-pc-cpld.yaml
new file mode 100644
index 000000000000..822dfb93dcd8
--- /dev/null
+++ b/Documentation/devicetree/bindings/bus/fsl,p1021rdb-pc-cpld.yaml
@@ -0,0 +1,73 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/bus/fsl,p1021rdb-pc-cpld.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: CPLD Bus Inteface for Freescale P1021RDB Combo Board CPLD Design
+
+maintainers:
+  - Pali Rohár <pali@kernel.org>
+
+description: |
+  A simple bus enabling access to peripherals on boards with use Freescale
+  P1021RDB Combo Board CPLD Design.
+
+  The "fsl,p1021rdb-pc-cpld" follows the "simple-bus" set of properties, as
+  specified in the Devicetree Specification. It is an extension of "simple-bus"
+  because some registers are CPLD specific and allows to identify if board has
+  wired CPLD according to Freescale P1021RDB Combo Board CPLD Design.
+
+select:
+  properties:
+    compatible:
+      contains:
+        const: fsl,p1021rdb-pc-cpld
+  required:
+    - compatible
+
+properties:
+  $nodename:
+    pattern: "^cpld(@[0-9a-f]+(,[0-9a-f]+)?)?$"
+
+  compatible:
+    items:
+      - const: fsl,p1021rdb-pc-cpld
+      - const: simple-bus
+
+  '#address-cells':
+    enum: [ 1, 2 ]
+
+  '#size-cells':
+    enum: [ 1, 2 ]
+
+  reg:
+    maxItems: 1
+
+  ranges: true
+
+required:
+  - compatible
+  - '#address-cells'
+  - '#size-cells'
+  - reg
+  - ranges
+
+additionalProperties:
+  type: object
+
+examples:
+  - |
+
+    localbus {
+        #address-cells = <2>;
+        #size-cells = <1>;
+
+        cpld@3,0 {
+            #address-cells = <1>;
+            #size-cells = <1>;
+            compatible = "fsl,p1021rdb-pc-cpld", "simple-bus";
+            reg = <0x3 0x0 0x20000>;
+            ranges = <0x0 0x3 0x0 0x20000>;
+        };
+    };
-- 
2.35.1


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7812B5115E2
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 13:33:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232839AbiD0L3V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 07:29:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232750AbiD0L3D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 07:29:03 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 6A30C340F2
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 04:25:52 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 39E66143D;
        Wed, 27 Apr 2022 04:25:52 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.42])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DB6913F5A1;
        Wed, 27 Apr 2022 04:25:50 -0700 (PDT)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Liviu Dudau <liviu.dudau@arm.com>,
        Robin Murphy <robin.murphy@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        alsa-devel@alsa-project.org
Subject: [PATCH 04/11] dt-bindings: sound: add Arm PL041 AACI DT schema
Date:   Wed, 27 Apr 2022 12:25:21 +0100
Message-Id: <20220427112528.4097815-5-andre.przywara@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220427112528.4097815-1-andre.przywara@arm.com>
References: <20220427112528.4097815-1-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Arm PrimeCell Advanced Audio CODEC Interface (AACI aka PL041) is
a peripheral that provides communication with an audio CODEC.

Add a simple DT schema binding for it, so that DTs can be validated
automatically.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 .../devicetree/bindings/sound/amba-pl041.yaml | 62 +++++++++++++++++++
 1 file changed, 62 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/amba-pl041.yaml

diff --git a/Documentation/devicetree/bindings/sound/amba-pl041.yaml b/Documentation/devicetree/bindings/sound/amba-pl041.yaml
new file mode 100644
index 0000000000000..f00796d5ea473
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/amba-pl041.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/amba-pl041.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Arm Ltd. PrimeCell PL041 AACI sound interface
+
+maintainers:
+  - Andre Przywara <andre.przywara@arm.com>
+
+description:
+  The Arm PrimeCell Advanced Audio CODEC Interface (AACI) is an AMBA compliant
+  peripheral that provides communication with an audio CODEC using the AC-link
+  protocol.
+
+# We need a select here so we don't match all nodes with 'arm,primecell'
+select:
+  properties:
+    compatible:
+      contains:
+        const: arm,pl041
+  required:
+    - compatible
+
+properties:
+  compatible:
+    items:
+      - const: arm,pl041
+      - const: arm,primecell
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    description: APB register access clock
+
+  clock-names:
+    const: apb_pclk
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    aaci@40000 {
+            compatible = "arm,pl041", "arm,primecell";
+            reg = <0x040000 0x1000>;
+            interrupts = <11>;
+            clocks = <&v2m_clk24mhz>;
+            clock-names = "apb_pclk";
+    };
+
+...
-- 
2.25.1


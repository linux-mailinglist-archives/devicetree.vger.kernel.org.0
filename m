Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B744C776599
	for <lists+devicetree@lfdr.de>; Wed,  9 Aug 2023 18:53:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229666AbjHIQxp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Aug 2023 12:53:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229523AbjHIQxo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Aug 2023 12:53:44 -0400
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8142B1FCC
        for <devicetree@vger.kernel.org>; Wed,  9 Aug 2023 09:53:43 -0700 (PDT)
Received: from localhost.localdomain (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        (Authenticated sender: bbrezillon)
        by madras.collabora.co.uk (Postfix) with ESMTPSA id 902AB6607208;
        Wed,  9 Aug 2023 17:53:41 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1691600022;
        bh=V9etpeGuwyUalyxU3LIZfZ5iYT80itsooDf0i2hGx0g=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=fHeOd8yN5Sw5RVkgVwt0e2eK+yPfq0xjGEp4oEMRDeQk+cFpWXst6+xExD2F1g8fc
         Vj6LJAcrXavLDAkql0SSSo1nqFYma8w83mDQGbhw5wkK5t+9V1KBegNd7pv0RG3dgl
         C5O9/oR6ZjbxNMT3JC5TaOWdpKhi0f8r70SxNj2Hb8mmfequ5V7pyZHHE2LtPkyy3c
         f6AM2PryQZdYBvUbLfYIy/c1zDDgB8KeRi2YqE8TFHuOe7K0dU5z6BrmC0ljzc5kkn
         IF6zXCH/Yn1wujyIf84qhFMkL2BfNF60lPyO6DcGIULWVvpSUZ67BCQvTnPhyrYPUZ
         sqM7Pa/cJ7EZg==
From:   Boris Brezillon <boris.brezillon@collabora.com>
To:     dri-devel@lists.freedesktop.org
Cc:     Daniel Vetter <daniel@ffwll.ch>,
        "Marty E . Plummer" <hanetzer@startmail.com>,
        Rob Herring <robh@kernel.org>,
        =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Faith Ekstrand <faith.ekstrand@collabora.com>,
        Daniel Stone <daniels@collabora.com>,
        Liviu Dudau <Liviu.Dudau@arm.com>,
        Steven Price <steven.price@arm.com>,
        Robin Murphy <robin.murphy@arm.com>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v2 14/15] dt-bindings: gpu: mali-valhall-csf: Add initial bindings for panthor driver
Date:   Wed,  9 Aug 2023 18:53:27 +0200
Message-ID: <20230809165330.2451699-15-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230809165330.2451699-1-boris.brezillon@collabora.com>
References: <20230809165330.2451699-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Liviu Dudau <liviu.dudau@arm.com>

Arm has introduced a new v10 GPU architecture that replaces the Job Manager
interface with a new Command Stream Frontend. It adds firmware driven
command stream queues that can be used by kernel and user space to submit
jobs to the GPU.

Add the initial schema for the device tree that is based on support for
RK3588 SoC. The minimum number of clocks is one for the IP, but on Rockchip
platforms they will tend to expose the semi-independent clocks for better
power management.

v2:
- New commit

Signed-off-by: Liviu Dudau <liviu.dudau@arm.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org
---
 .../bindings/gpu/arm,mali-valhall-csf.yaml    | 148 ++++++++++++++++++
 1 file changed, 148 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpu/arm,mali-valhall-csf.yaml

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-valhall-csf.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-valhall-csf.yaml
new file mode 100644
index 000000000000..2b9f77aa0b7a
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-valhall-csf.yaml
@@ -0,0 +1,148 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/gpu/arm,mali-valhall-csf.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ARM Mali Valhall GPU
+
+maintainers:
+  - Liviu Dudau <liviu.dudau@arm.com>
+  - Boris Brezillon <boris.brezillon@collabora.com>
+
+properties:
+  $nodename:
+    pattern: '^gpu@[a-f0-9]+$'
+
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - rockchip,rk3588-mali
+          - const: arm,mali-valhall-csf   # Mali Valhall GPU model/revision is fully discoverable
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    items:
+      - description: Job interrupt
+      - description: MMU interrupt
+      - description: GPU interrupt
+
+  interrupt-names:
+    items:
+      - const: job
+      - const: mmu
+      - const: gpu
+
+  clocks:
+    minItems: 1
+    maxItems: 3
+
+  clock-names:
+    minItems: 1
+    items:
+      - const: core
+      - const: coregroup
+      - const: stacks
+
+  mali-supply: true
+
+  sram-supply: true
+
+  operating-points-v2: true
+
+  power-domains:
+    minItems: 1
+    maxItems: 5
+
+  power-domain-names:
+    minItems: 1
+    maxItems: 5
+
+  "#cooling-cells":
+    const: 2
+
+  dynamic-power-coefficient:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      A u32 value that represents the running time dynamic
+      power coefficient in units of uW/MHz/V^2. The
+      coefficient can either be calculated from power
+      measurements or derived by analysis.
+
+      The dynamic power consumption of the GPU is
+      proportional to the square of the Voltage (V) and
+      the clock frequency (f). The coefficient is used to
+      calculate the dynamic power as below -
+
+      Pdyn = dynamic-power-coefficient * V^2 * f
+
+      where voltage is in V, frequency is in MHz.
+
+  dma-coherent: true
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-names
+  - clocks
+  - mali-supply
+
+additionalProperties: false
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3588-mali
+    then:
+      properties:
+        clocks:
+          minItems: 3
+        clock-names:
+          items:
+            - const: core
+            - const: coregroup
+            - const: stacks
+
+examples:
+  - |
+    #include <dt-bindings/clock/rockchip,rk3588-cru.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/rk3588-power.h>
+
+    gpu: gpu@fb000000 {
+        compatible = "rockchip,rk3588-mali", "arm,mali-valhall-csf";
+        reg = <0xfb000000 0x200000>;
+        interrupts = <GIC_SPI 92 IRQ_TYPE_LEVEL_HIGH 0>,
+                     <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH 0>,
+                     <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH 0>;
+        interrupt-names = "job", "mmu", "gpu";
+        clock-names = "core", "coregroup", "stacks";
+        clocks = <&cru CLK_GPU>, <&cru CLK_GPU_COREGROUP>,
+                 <&cru CLK_GPU_STACKS>;
+        power-domains = <&power RK3588_PD_GPU>;
+        operating-points-v2 = <&gpu_opp_table>;
+        mali-supply = <&vdd_gpu_s0>;
+        sram-supply = <&vdd_gpu_mem_s0>;
+        status = "disabled";
+    };
+
+    gpu_opp_table: opp-table {
+        compatible = "operating-points-v2";
+        opp-300000000 {
+            opp-hz = /bits/ 64 <300000000>;
+            opp-microvolt = <675000 675000 850000>;
+        };
+        opp-400000000 {
+            opp-hz = /bits/ 64 <400000000>;
+            opp-microvolt = <675000 675000 850000>;
+        };
+    };
+
+...
-- 
2.41.0


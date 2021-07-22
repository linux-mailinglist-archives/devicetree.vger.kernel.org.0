Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BBC483D1FFF
	for <lists+devicetree@lfdr.de>; Thu, 22 Jul 2021 10:45:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230427AbhGVIFG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Jul 2021 04:05:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231255AbhGVIFF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Jul 2021 04:05:05 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AE4CC061575
        for <devicetree@vger.kernel.org>; Thu, 22 Jul 2021 01:45:40 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id b26so7362564lfo.4
        for <devicetree@vger.kernel.org>; Thu, 22 Jul 2021 01:45:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vuQ0/pgm85KV53LY6kXw2zQl5zuf6MRSKCFnW8tzMfs=;
        b=d6WDIb4HqaKCHuqVjF/z+bZQ22IKNhYq4yziMItJelpHJTtJYNOG+xgTFD2dVUEZX1
         pmfK4RhadbaqPXExp2z/Htdh3L4pwb+piabuOrDQjjurjwtlgTdg6UK8gQXZcR9/i7Np
         bo4xMz/GUVjGTaeTbDDd/WYxohX1KSFUMkDiZzI+zISzVQcnwo97NYodNoPm3LGBg3ve
         GqUh3qNp2lcsFw83TpWAmK4rzeP7ZSaVnoSWGXFXik63GAapgl4VDPV6ngBegapNU/W6
         V4LB/ZQSesX5974KO6ZUT6ZpKH52KIQJUdBS+f8ZOY9F7BNIUn1vhCF34kPVfiZyrb9a
         +meQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vuQ0/pgm85KV53LY6kXw2zQl5zuf6MRSKCFnW8tzMfs=;
        b=lXIP3Tsprrpq+DqGwubOuLEQpaxHJ50VvFEYJkUJdhYsneQqGNxlC0NQKytc3B76xm
         eqfaeCKSJt/cBnXelfogQ4xMSM68RzrlwVtMKmZ5O5iX+XZuq95Da5V5ieJ3Z5bLntsa
         CpSvwQY/RByj+pQDHhkFcuCeVUV6G4h1J/l/j8rUGlyl13JdahKew9qqLiYqG6Np+dSi
         bUq8ptaIYKDXZyoDb2pxA9yO3V1ta8eMvVrzLUynBOwbUARxfagiYvb7hNiLN8Kwz2zk
         dNOl7+36KTTK6y5lNHIUq0F3bWTJLsWDGr33Ro5L/SH7sL8opITlQxoOe5ecvXRNtcAn
         23kw==
X-Gm-Message-State: AOAM531xH4+JK2jWTUyXFFfj0tSBb8s4IRuCe5qYQUO/J4f6f8TUvu07
        2LGzImAQe8tRAqCToUKDyB01nA==
X-Google-Smtp-Source: ABdhPJyVZX1Z2WeXZzs3fNkQbQfXmP4JLue0PsH366UFzC+Cbj0pkN+MzpceMVzO3fLQK8tBGFFYbw==
X-Received: by 2002:a19:dc5e:: with SMTP id f30mr28600390lfj.318.1626943538508;
        Thu, 22 Jul 2021 01:45:38 -0700 (PDT)
Received: from localhost.localdomain (c-fdcc225c.014-348-6c756e10.bbcust.telenor.se. [92.34.204.253])
        by smtp.gmail.com with ESMTPSA id m11sm979804lji.8.2021.07.22.01.45.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jul 2021 01:45:38 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     linux-arm-kernel@lists.infradead.org,
        Imre Kaloz <kaloz@openwrt.org>,
        Krzysztof Halasa <khalasa@piap.pl>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Marc Zyngier <maz@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH 1/2 v2] bus: ixp4xx: Add DT bindings for the IXP4xx expansion bus
Date:   Thu, 22 Jul 2021 10:43:30 +0200
Message-Id: <20210722084330.1618239-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds device tree bindings for the IXP4xx expansion bus controller.

Cc: Marc Zyngier <maz@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v1->v2:
- Drop unevaluatedProperties: false from the node match.
  additionalProperties: true will be the default.
---
 ...intel,ixp4xx-expansion-bus-controller.yaml | 149 ++++++++++++++++++
 1 file changed, 149 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/bus/intel,ixp4xx-expansion-bus-controller.yaml

diff --git a/Documentation/devicetree/bindings/bus/intel,ixp4xx-expansion-bus-controller.yaml b/Documentation/devicetree/bindings/bus/intel,ixp4xx-expansion-bus-controller.yaml
new file mode 100644
index 000000000000..58264b9b2f4e
--- /dev/null
+++ b/Documentation/devicetree/bindings/bus/intel,ixp4xx-expansion-bus-controller.yaml
@@ -0,0 +1,149 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/bus/intel,ixp4xx-expansion-bus-controller.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Intel IXP4xx Expansion Bus Controller
+
+description: |
+  The IXP4xx expansion bus controller handles access to devices on the
+  memory-mapped expansion bus on the Intel IXP4xx family of system on chips,
+  including IXP42x, IXP43x, IXP45x and IXP46x.
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+properties:
+  $nodename:
+    pattern: '^bus@[0-9a-f]+$'
+
+  compatible:
+    enum:
+      - intel,ixp42x-expansion-bus-controller
+      - intel,ixp43x-expansion-bus-controller
+      - intel,ixp45x-expansion-bus-controller
+      - intel,ixp46x-expansion-bus-controller
+
+  reg:
+    description: Control registers for the expansion bus, these are not
+      inside the memory range handled by the expansion bus.
+    maxItems: 1
+
+  "#address-cells":
+    description: |
+      The first cell is the chip select numer.
+      The second cell is the address offset within the bank.
+    const: 2
+
+  "#size-cells":
+    const: 1
+
+  ranges: true
+  dma-ranges: true
+
+patternProperties:
+  "^.*@[0-7],[0-9a-f]+$":
+    description: Devices attached to chip selects are represented as
+      subnodes.
+    type: object
+
+    properties:
+      intel,ixp4xx-eb-t1:
+        description: Address timing, extend address phase with n cycles.
+        $ref: /schemas/types.yaml#/definitions/uint32
+        maximum: 3
+
+      intel,ixp4xx-eb-t2:
+        description: Setup chip select timing, extend setup phase with n cycles.
+        $ref: /schemas/types.yaml#/definitions/uint32
+        maximum: 3
+
+      intel,ixp4xx-eb-t3:
+        description: Strobe timing, extend strobe phase with n cycles.
+        $ref: /schemas/types.yaml#/definitions/uint32
+        maximum: 15
+
+      intel,ixp4xx-eb-t4:
+        description: Hold timing, extend hold phase with n cycles.
+        $ref: /schemas/types.yaml#/definitions/uint32
+        maximum: 3
+
+      intel,ixp4xx-eb-t5:
+        description: Recovery timing, extend recovery phase with n cycles.
+        $ref: /schemas/types.yaml#/definitions/uint32
+        maximum: 15
+
+      intel,ixp4xx-eb-cycle-type:
+        description: The type of cycles to use on the expansion bus for this
+          chip select. 0 = Intel cycles, 1 = Motorola cycles, 2 = HPI cycles.
+        $ref: /schemas/types.yaml#/definitions/uint32
+        enum: [0, 1, 2]
+
+      intel,ixp4xx-eb-byte-access-on-halfword:
+        description: Allow byte read access on half word devices.
+        $ref: /schemas/types.yaml#/definitions/flag
+
+      intel,ixp4xx-eb-hpi-hrdy-pol-high:
+        description: Set HPI HRDY polarity to active high when using HPI.
+        $ref: /schemas/types.yaml#/definitions/flag
+
+      intel,ixp4xx-eb-mux-address-and-data:
+        description: Multiplex address and data on the data bus.
+        $ref: /schemas/types.yaml#/definitions/flag
+
+      intel,ixp4xx-eb-ahb-split-transfers:
+        description: Enable AHB split transfers.
+        $ref: /schemas/types.yaml#/definitions/flag
+
+      intel,ixp4xx-eb-write-enable:
+        description: Enable write cycles.
+        $ref: /schemas/types.yaml#/definitions/flag
+
+      intel,ixp4xx-eb-byte-access:
+        description: Expansion bus uses only 8 bits. The default is to use
+          16 bits.
+        $ref: /schemas/types.yaml#/definitions/flag
+
+required:
+  - compatible
+  - reg
+  - "#address-cells"
+  - "#size-cells"
+  - ranges
+  - dma-ranges
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    bus@50000000 {
+        compatible = "intel,ixp42x-expansion-bus-controller";
+        reg = <0xc4000000 0x28>;
+        #address-cells = <2>;
+        #size-cells = <1>;
+        ranges = <0 0x0 0x50000000 0x01000000>,
+                 <1 0x0 0x51000000 0x01000000>;
+        dma-ranges = <0 0x0 0x50000000 0x01000000>,
+                     <1 0x0 0x51000000 0x01000000>;
+        flash@0,0 {
+            compatible = "intel,ixp4xx-flash", "cfi-flash";
+            bank-width = <2>;
+            reg = <0 0x00000000 0x1000000>;
+            intel,ixp4xx-eb-t3 = <3>;
+            intel,ixp4xx-eb-byte-access-on-halfword;
+            intel,ixp4xx-eb-write-enable;
+        };
+        serial@1,0 {
+            compatible = "exar,xr16l2551", "ns8250";
+            reg = <1 0x00000000 0x10>;
+            interrupt-parent = <&gpio0>;
+            interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
+            clock-frequency = <1843200>;
+            intel,ixp4xx-eb-t3 = <3>;
+            intel,ixp4xx-eb-cycle-type = <1>;
+            intel,ixp4xx-eb-write-enable;
+            intel,ixp4xx-eb-byte-access;
+        };
+    };
-- 
2.31.1


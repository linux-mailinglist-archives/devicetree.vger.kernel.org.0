Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D9E973D70E6
	for <lists+devicetree@lfdr.de>; Tue, 27 Jul 2021 10:09:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235837AbhG0IJ1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jul 2021 04:09:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235904AbhG0IJ0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jul 2021 04:09:26 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41390C061757
        for <devicetree@vger.kernel.org>; Tue, 27 Jul 2021 01:09:26 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id u20so14509287ljo.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jul 2021 01:09:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4Kdv1Igmk6DzIl1ATzQHlM1kC2X1EzaLaIvpfkSGCGg=;
        b=qMkkV2xgMF9uIFfuf0IzSUfPf1SgJw/8sCm4x1QMWC4JECKrEyfr+I/xiEFJG+7MZT
         Jiatj8SRBXpOInqV02kfRj4HxkEZ1Ca3ZwxueOwpo46eyDTgZ84XWqujT2IabSrVKTyd
         L5CmMurKxl2Mg4Ifnzz7RToEGxCdwPtAWsfdAMrc7e61A7zFN9kh7GWjAW/T8n6HM6Cu
         132pVuOA6ROBODwJZefIqrKLnb1a9iynugN/T60XCs333dwmvAcr7n6y3SSUnTL36TyD
         OnZAC4cXg/tWcpHQYhiAXWdO4C5kO06MfiQmGJkOs/ABD3VxZz3Q6fNPqrmpFQKnD0Jp
         G54g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4Kdv1Igmk6DzIl1ATzQHlM1kC2X1EzaLaIvpfkSGCGg=;
        b=bD89m62qkmNolTTjR9KWl7+dn/pnoclfR2vBAVYCPwhJZoUbZBOE/QvmazZjEpE2OS
         o9OABI9OKhSHe/K5Hcx+L9wi0dmmCgajS0ePeLBzQlvY7Jekj8o1MxpZ/u5Ml/FbtLJS
         tEcjHe6vQamhOoFZ2+ySODaQwGzHOn9JViFENmA+akW2x8Zcf7xOrPrGVWyK/LmxlQRm
         2Z1EE9X83qDpO1K61SouKQzs2Ip8OqSs2QtS0gMQWgSPxRYTpcL+GPEAbmuTOvYuKrUF
         xJfsYNjE1HwKyBxeomsOj2vNylZgsby6kBJXNpBx8Qz6Ue+Kke4JgB8q/2X4twRCwJxP
         piSA==
X-Gm-Message-State: AOAM531Pq2/7eO7/J4mUNWIS57g1wtApFA3YOxVEirMSmJj5ge7ujLcV
        dUKp+FDuvFVA/ZW8iA1tFVszcg==
X-Google-Smtp-Source: ABdhPJyjCUIVxw42aYoVhRwOIT1oQ7oQQj1Y+zeDk7H9SCEtriDIMTroJrFeOLfMabv7iFgYI+V2oA==
X-Received: by 2002:a2e:83ca:: with SMTP id s10mr14607460ljh.98.1627373364582;
        Tue, 27 Jul 2021 01:09:24 -0700 (PDT)
Received: from localhost.localdomain (c-fdcc225c.014-348-6c756e10.bbcust.telenor.se. [92.34.204.253])
        by smtp.gmail.com with ESMTPSA id 15sm245598lft.170.2021.07.27.01.09.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 01:09:24 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     linux-arm-kernel@lists.infradead.org,
        Imre Kaloz <kaloz@openwrt.org>,
        Krzysztof Halasa <khalasa@piap.pl>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Marc Zyngier <maz@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH 1/2 v3] bus: ixp4xx: Add DT bindings for the IXP4xx expansion bus
Date:   Tue, 27 Jul 2021 10:07:20 +0200
Message-Id: <20210727080721.2619791-1-linus.walleij@linaro.org>
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
ChangeLog v2->v3:
- Add syscon as second compatible. The device contains a set
  of misc registers apart from the chip select control.
- Add required "native-endianness" flag on the node and describe
  why.
- Change bool flags into enum [0, 1]. The reason is that we
  need to be able to indicate clearly that we want an option to
  be zeroed as the OS will read/modify/write the config from the
  bootloader/power-on-defaults which sometimes means disabling
  things that would only be possibel to turn on with flags.
ChangeLog v1->v2:
- Drop unevaluatedProperties: false from the node match.
  additionalProperties: true will be the default.
---
 ...intel,ixp4xx-expansion-bus-controller.yaml | 168 ++++++++++++++++++
 1 file changed, 168 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/bus/intel,ixp4xx-expansion-bus-controller.yaml

diff --git a/Documentation/devicetree/bindings/bus/intel,ixp4xx-expansion-bus-controller.yaml b/Documentation/devicetree/bindings/bus/intel,ixp4xx-expansion-bus-controller.yaml
new file mode 100644
index 000000000000..bd569670bca9
--- /dev/null
+++ b/Documentation/devicetree/bindings/bus/intel,ixp4xx-expansion-bus-controller.yaml
@@ -0,0 +1,168 @@
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
+    items:
+      - enum:
+          - intel,ixp42x-expansion-bus-controller
+          - intel,ixp43x-expansion-bus-controller
+          - intel,ixp45x-expansion-bus-controller
+          - intel,ixp46x-expansion-bus-controller
+      - const: syscon
+
+  reg:
+    description: Control registers for the expansion bus, these are not
+      inside the memory range handled by the expansion bus.
+    maxItems: 1
+
+  native-endian:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description: The IXP4xx has a peculiar MMIO access scheme, as it changes
+      the access pattern for words (swizzling) on the bus depending on whether
+      the SoC is running in big-endian or little-endian mode. Thus the
+      registers must always be accessed using native endianness.
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
+        $ref: /schemas/types.yaml#/definitions/uint32
+        enum: [0, 1]
+
+      intel,ixp4xx-eb-hpi-hrdy-pol-high:
+        description: Set HPI HRDY polarity to active high when using HPI.
+        $ref: /schemas/types.yaml#/definitions/uint32
+        enum: [0, 1]
+
+      intel,ixp4xx-eb-mux-address-and-data:
+        description: Multiplex address and data on the data bus.
+        $ref: /schemas/types.yaml#/definitions/uint32
+        enum: [0, 1]
+
+      intel,ixp4xx-eb-ahb-split-transfers:
+        description: Enable AHB split transfers.
+        $ref: /schemas/types.yaml#/definitions/uint32
+        enum: [0, 1]
+
+      intel,ixp4xx-eb-write-enable:
+        description: Enable write cycles.
+        $ref: /schemas/types.yaml#/definitions/uint32
+        enum: [0, 1]
+
+      intel,ixp4xx-eb-byte-access:
+        description: Expansion bus uses only 8 bits. The default is to use
+          16 bits.
+        $ref: /schemas/types.yaml#/definitions/uint32
+        enum: [0, 1]
+
+required:
+  - compatible
+  - reg
+  - native-endian
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
+        compatible = "intel,ixp42x-expansion-bus-controller", "syscon";
+        reg = <0xc4000000 0x28>;
+        native-endian;
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
+            intel,ixp4xx-eb-cycle-type = <0>;
+            intel,ixp4xx-eb-byte-access-on-halfword = <1>;
+            intel,ixp4xx-eb-write-enable = <1>;
+            intel,ixp4xx-eb-byte-access = <0>;
+        };
+        serial@1,0 {
+            compatible = "exar,xr16l2551", "ns8250";
+            reg = <1 0x00000000 0x10>;
+            interrupt-parent = <&gpio0>;
+            interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
+            clock-frequency = <1843200>;
+            intel,ixp4xx-eb-t3 = <3>;
+            intel,ixp4xx-eb-cycle-type = <1>;
+            intel,ixp4xx-eb-write-enable = <1>;
+            intel,ixp4xx-eb-byte-access = <1>;
+        };
+    };
-- 
2.31.1


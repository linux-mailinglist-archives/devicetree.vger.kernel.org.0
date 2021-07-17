Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 68DAE3CC00B
	for <lists+devicetree@lfdr.de>; Sat, 17 Jul 2021 02:18:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229578AbhGQAVl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jul 2021 20:21:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229462AbhGQAVl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jul 2021 20:21:41 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F31FC06175F
        for <devicetree@vger.kernel.org>; Fri, 16 Jul 2021 17:18:44 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id t20so551142ljd.2
        for <devicetree@vger.kernel.org>; Fri, 16 Jul 2021 17:18:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FLiyfV388W2lPkUnVjYLEYLAHKglDLNb7HcR9tUq8b8=;
        b=ampC/EBcms3n+/P4131Q4leG1FpEp/I5vNfVGzPmnTe56hDpngJPvVnNIWO5T4iVVQ
         FUmYeD3Vlh2l4lQHNSpKGddi1v5qRBgVMahHB2OGvJAXAveF7KeLhlkCrveUH3eeI3XB
         y24dOFtDM5V736wHuYWDj4eKgFTDd8qoqM8UiTj54c4SObutSuMxHbNrCoMT54ks13Ku
         iWTPYrjNqW1ebKBVDj195/Gv7wpgPn6/mEp1ZJQPKmX61gwUuyAChTbUlKRJHqhMsipi
         T7m34VeSB7cAtfrtM5tGEFemhtikS9ySlqsIrQQnWBXrVPQUIYzoVgcdm4dMRlfN5s6h
         b1GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FLiyfV388W2lPkUnVjYLEYLAHKglDLNb7HcR9tUq8b8=;
        b=UEwAm2zWgDe+cr8IQMuWI1SxLm94NKr35hR5rbILwnp1a6BGlGgcd/7axi1OIQFmKE
         mJ+bCoKKiiJBtOAjcFyUV+/6Cz7jAGKdDOJDpClOidqCPlPeZCNoaM98dTT5m4QB0Omi
         XC86j+2jJ0F958byBhS38GsHBfHsCiYAcxq6CowiZ/VK2cMcJtZfRjGI6rykU9aqNiTq
         yefeyqnRn2+5lwYmpOt7284aLVPze0S87V9ZZpHezy7BfJ/Vzp6xcJ56yrnU8Rajfm7Z
         qwgXnlf2XvbmEfZ2K9Yn/3P1RAQug+8p5Ow7Xb4OQmKr/kI6cQNU9MOPVxC+AFnkn2IB
         Wh9A==
X-Gm-Message-State: AOAM533xfowWAqmkaHsr244Xx9uLvApAnY0v9Jzlk4KcmjW9I61k/waN
        I14Tyx+oYdV8Gq+9ziwIaAF8iQ==
X-Google-Smtp-Source: ABdhPJyRRMC/UI5ZkSfOvKMZEWHxNFbKGU/lmUX9sm1LdXIwWS6Bl9zMKriorIoHl1J0/4GmH+ayBQ==
X-Received: by 2002:a2e:bf20:: with SMTP id c32mr11019626ljr.311.1626481122771;
        Fri, 16 Jul 2021 17:18:42 -0700 (PDT)
Received: from localhost.localdomain (c-fdcc225c.014-348-6c756e10.bbcust.telenor.se. [92.34.204.253])
        by smtp.gmail.com with ESMTPSA id x14sm812615lfg.220.2021.07.16.17.18.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jul 2021 17:18:42 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     linux-arm-kernel@lists.infradead.org,
        Imre Kaloz <kaloz@openwrt.org>,
        Krzysztof Halasa <khalasa@piap.pl>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Marc Zyngier <maz@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH 1/2] bus: ixp4xx: Add DT bindings for the IXP4xx expansion bus
Date:   Sat, 17 Jul 2021 02:16:37 +0200
Message-Id: <20210717001638.1292554-1-linus.walleij@linaro.org>
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
 ...intel,ixp4xx-expansion-bus-controller.yaml | 151 ++++++++++++++++++
 1 file changed, 151 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/bus/intel,ixp4xx-expansion-bus-controller.yaml

diff --git a/Documentation/devicetree/bindings/bus/intel,ixp4xx-expansion-bus-controller.yaml b/Documentation/devicetree/bindings/bus/intel,ixp4xx-expansion-bus-controller.yaml
new file mode 100644
index 000000000000..0875b653c35c
--- /dev/null
+++ b/Documentation/devicetree/bindings/bus/intel,ixp4xx-expansion-bus-controller.yaml
@@ -0,0 +1,151 @@
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
+    unevaluatedProperties: false
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


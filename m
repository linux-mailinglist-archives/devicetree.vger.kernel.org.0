Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 221BA85D56
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2019 10:51:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731337AbfHHIvv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Aug 2019 04:51:51 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:54109 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731488AbfHHIvu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Aug 2019 04:51:50 -0400
Received: by mail-wm1-f67.google.com with SMTP id 10so1555592wmp.3
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2019 01:51:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QuKnpe4s6wxZssdxaTJXUi4v/CLyskF3O3BoNBEfIYk=;
        b=yA5hh0G7Rxyn8Ascb9XWOF7kH4sg1O3CAw8PJf77TPLVmT4vq+bnR5KmKObkuWNMY3
         Tquu8Zn5MxviArmtsQzzlzOL37eWrNCdZxRLYm8EyIJruWHD2FdppmT0A0VsVUivFvx5
         PUpDHBYBidyUNSXGE7Wj/EyhGRV7LFd8Hl4X6QpsH5yA9v42+unJHAIN3q4BT49TOWvt
         JCAuMmxZ41l9iFZNnVOibDrrHaL3OksQjx7OUsKLUE6kBkqgdG0UBkRjuTrguOmLSVbU
         YLyG8woX1NHtlanO9dcfS0AgTf2rv/jm8503HiyxdBOhWHsc5KIdc+DNEEQuEudtr3O0
         F8Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QuKnpe4s6wxZssdxaTJXUi4v/CLyskF3O3BoNBEfIYk=;
        b=W1xneyN78VH3xIEWX9hFGu9eC2AsYcBeJ8p+6lO/jb54T3ZWkJXZNeshhD6NmKN9Gl
         OU8STMx/1Ebwtxu3LpuP8E4R2F1llvlxovPG0CG12xf8GZxyQTIln4ahD56GRNTLtWhT
         3lFqA0ph2tb7eHViKq4SIetqrTLH8DUvqBEcVPrx8dyOo2PzZ0kP8y+xH3RIwevSlztX
         eIfHo3ckU4zvBxVGZLCZM2ywIFgeUtx3/KQiqSzsnVJMzSw+qe7od2llEVUrKYvvAhGL
         XHMIV30T/MZkJYbxwoFkit97QijdVGuLWrZb7kQxnVqKPqlLTVtXLlk/Gb0UxXkSqg5/
         xsXA==
X-Gm-Message-State: APjAAAXrt+7WCilZdBiVr6RTwZjcIa6+teZtKJp3av+/9Pm+WMFXtzoc
        LsdNbASmx869ObZczBiyiULe7Q==
X-Google-Smtp-Source: APXvYqxY+fZCA8sP5uDcKzjh0AosyO7e8SkHTxEHpKA8LYVoRk+dlpyZtIsrOORhJJIK9nHKYpW1yw==
X-Received: by 2002:a1c:a8d7:: with SMTP id r206mr3070378wme.47.1565254308227;
        Thu, 08 Aug 2019 01:51:48 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id i66sm3360031wmi.11.2019.08.08.01.51.47
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 08 Aug 2019 01:51:47 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     robh+dt@kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-amlogic@lists.infradead.org, linux-serial@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Rob Herring <robh@kernel.org>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH 8/9] dt-bindings: serial: meson-uart: convert to yaml
Date:   Thu,  8 Aug 2019 10:51:38 +0200
Message-Id: <20190808085139.21438-9-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190808085139.21438-1-narmstrong@baylibre.com>
References: <20190808085139.21438-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Now that we have the DT validation in place, let's convert the device tree
bindings for the Amlogic UART Serial controller over to a YAML schemas.

Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../bindings/serial/amlogic,meson-uart.txt    | 38 ----------
 .../bindings/serial/amlogic,meson-uart.yaml   | 73 +++++++++++++++++++
 2 files changed, 73 insertions(+), 38 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/serial/amlogic,meson-uart.txt
 create mode 100644 Documentation/devicetree/bindings/serial/amlogic,meson-uart.yaml

diff --git a/Documentation/devicetree/bindings/serial/amlogic,meson-uart.txt b/Documentation/devicetree/bindings/serial/amlogic,meson-uart.txt
deleted file mode 100644
index c06c045126fc..000000000000
--- a/Documentation/devicetree/bindings/serial/amlogic,meson-uart.txt
+++ /dev/null
@@ -1,38 +0,0 @@
-Amlogic Meson SoC UART Serial Interface
-=======================================
-
-The Amlogic Meson SoC UART Serial Interface is present on a large range
-of SoCs, and can be present either in the "Always-On" power domain or the
-"Everything-Else" power domain.
-
-The particularity of the "Always-On" Serial Interface is that the hardware
-is active since power-on and does not need any clock gating and is usable
-as very early serial console.
-
-Required properties:
-- compatible : compatible: value should be different for each SoC family as :
-	- Meson6 : "amlogic,meson6-uart"
-	- Meson8 : "amlogic,meson8-uart"
-	- Meson8b : "amlogic,meson8b-uart"
-	- GX (GXBB, GXL, GXM) : "amlogic,meson-gx-uart"
-	eventually followed by : "amlogic,meson-ao-uart" if this UART interface
-	is in the "Always-On" power domain.
-- reg : offset and length of the register set for the device.
-- interrupts : identifier to the device interrupt
-- clocks : a list of phandle + clock-specifier pairs, one for each
-	   entry in clock names.
-- clock-names :
-   * "xtal" for external xtal clock identifier
-   * "pclk" for the bus core clock, either the clk81 clock or the gate clock
-   * "baud" for the source of the baudrate generator, can be either the xtal
-	or the pclk.
-
-e.g.
-uart_A: serial@84c0 {
-	compatible = "amlogic,meson-gx-uart";
-	reg = <0x0 0x84c0 0x0 0x14>;
-	interrupts = <GIC_SPI 26 IRQ_TYPE_EDGE_RISING>;
-	/* Use xtal as baud rate clock source */
-	clocks = <&xtal>, <&clkc CLKID_UART0>, <&xtal>;
-	clock-names = "xtal", "pclk", "baud";
-};
diff --git a/Documentation/devicetree/bindings/serial/amlogic,meson-uart.yaml b/Documentation/devicetree/bindings/serial/amlogic,meson-uart.yaml
new file mode 100644
index 000000000000..214fe8beddc3
--- /dev/null
+++ b/Documentation/devicetree/bindings/serial/amlogic,meson-uart.yaml
@@ -0,0 +1,73 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2019 BayLibre, SAS
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/serial/amlogic,meson-uart.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Amlogic Meson SoC UART Serial Interface
+
+maintainers:
+  - Neil Armstrong <narmstrong@baylibre.com>
+
+description: |
+  The Amlogic Meson SoC UART Serial Interface is present on a large range
+  of SoCs, and can be present either in the "Always-On" power domain or the
+  "Everything-Else" power domain.
+
+  The particularity of the "Always-On" Serial Interface is that the hardware
+  is active since power-on and does not need any clock gating and is usable
+  as very early serial console.
+
+properties:
+  compatible:
+    oneOf:
+      - description: Always-on power domain UART controller
+        items:
+        - enum:
+          - amlogic,meson6-uart
+          - amlogic,meson8-uart
+          - amlogic,meson8b-uart
+          - amlogic,meson-gx-uart
+        - const: amlogic,meson-ao-uart
+      - description: Everything-Else power domain UART controller
+        enum:
+        - amlogic,meson6-uart
+        - amlogic,meson8-uart
+        - amlogic,meson8b-uart
+        - amlogic,meson-gx-uart
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: external xtal clock identifier
+      - description: the bus core clock, either the clk81 clock or the gate clock
+      - description: the source of the baudrate generator, can be either the xtal or the pclk
+
+  clock-names:
+    items:
+      - const: xtal
+      - const: pclk
+      - const: baud
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+examples:
+  - |
+    serial@84c0 {
+          compatible = "amlogic,meson-gx-uart";
+          reg = <0x84c0 0x14>;
+          interrupts = <26>;
+          clocks = <&xtal>, <&pclk>, <&xtal>;
+          clock-names = "xtal", "pclk", "baud";
+    };
-- 
2.22.0


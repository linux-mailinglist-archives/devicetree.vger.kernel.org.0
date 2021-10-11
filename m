Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2F4754287E6
	for <lists+devicetree@lfdr.de>; Mon, 11 Oct 2021 09:40:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234851AbhJKHmN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Oct 2021 03:42:13 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:57622
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234656AbhJKHl6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 11 Oct 2021 03:41:58 -0400
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id DEE2E4001E
        for <devicetree@vger.kernel.org>; Mon, 11 Oct 2021 07:39:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1633937997;
        bh=sEh5KUYuxEm3bzH5hsUc+ps6L/VdQWx+zLSKJvPfz9w=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=aXk3vr02i9kK+jRKHuRBMyfsIsxmaYpVM4pkOH0gomK6ikRt7RdetGfkIesL3HySH
         gwpRoN1ApFSG3y+AhnUMP7S7mtfVDQ8JubJpQ9U7GTz5RtMEVkjwMaXDvZgBHX4H/o
         D+hnVn4eK/doE3PeVYcqHuYZoZNn3hZePF1/x2KpTSUgFsnAIRVnbYwYsy2PV3Y8sj
         VmYsu7aJCudEduglpVO17OF5JvsGwBcrnvRryU8RoujR4GpTwCJTcgSYKzuwuR4nLb
         /hO87EWehLGeuG1Bqm0myuWDoASx0F7RpLcw8uilUcuaFL6pyuf8Wth2owJMCvwhy9
         ig8ZiCjBAmcOw==
Received: by mail-ed1-f70.google.com with SMTP id v9-20020a50d849000000b003db459aa3f5so12473648edj.15
        for <devicetree@vger.kernel.org>; Mon, 11 Oct 2021 00:39:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=sEh5KUYuxEm3bzH5hsUc+ps6L/VdQWx+zLSKJvPfz9w=;
        b=eWEy5Mhn4h/4i7tj8KZtNnzHe4iEKDCmSGqd4GnLM3ZJ0RucRdBqVDaIkwIDf35iVF
         xO/he1fFk0gDcZB2/eNcpoE13uLUTtdFwN8Xdr51yHF1CU2g6EaKsWaWPhB/A+PNApE+
         EGyvuysP45+Qzox3S+9xwfEH0n++WZjeXaZO97n/y+NcD9JZvzngGSG6h15rJrREN0nn
         lfRHiiip0Z0yh6rkq0owZGkueAdAIV1wH6TnXyzl3ml8DfNPuaqqyMIyKseBmgIP6shv
         URvpopmPpc7rAoWPDisobAkPJoRj2uQc07JFfzl/WdS9uRubsKWf2HgibqDmqdP+Dv21
         yr9A==
X-Gm-Message-State: AOAM531t62zsVldMAXgliuogCsD8Oj9H+fpstrfK5p1E4CjG7BnlOzWY
        EUDNPnLqYWd1GrEjej5gTF+PQlXafKnYIYztNCjuMaNZPU2Oj61a2UrEZsAHmYqN/iDtNRHTZ8+
        ambSLsmI75y9DAaFB0TfAEMrWuboidkV/sZUXn8k=
X-Received: by 2002:a17:906:7805:: with SMTP id u5mr23831453ejm.26.1633937996673;
        Mon, 11 Oct 2021 00:39:56 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxAEg2SKbUYUgI5xLf79tbap6qzVlxVcbZCZgmYQ4c9v9F4kzNOwk0ZNgfo1iwPZTfpks2bOg==
X-Received: by 2002:a17:906:7805:: with SMTP id u5mr23831438ejm.26.1633937996497;
        Mon, 11 Oct 2021 00:39:56 -0700 (PDT)
Received: from localhost.localdomain (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id y8sm3023965ejm.104.2021.10.11.00.39.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Oct 2021 00:39:55 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Charles Gorand <charles.gorand@effinnov.com>,
        Mark Greer <mgreer@animalcreek.com>, linux-nfc@lists.01.org,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org
Subject: [PATCH v2 8/8] dt-bindings: nfc: marvell,nci: convert to dtschema
Date:   Mon, 11 Oct 2021 09:39:34 +0200
Message-Id: <20211011073934.34340-9-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211011073934.34340-1-krzysztof.kozlowski@canonical.com>
References: <20211011073934.34340-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the Marvell NCI NFC controller to DT schema format.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../bindings/net/nfc/marvell,nci.yaml         | 170 ++++++++++++++++++
 .../devicetree/bindings/net/nfc/nfcmrvl.txt   |  84 ---------
 2 files changed, 170 insertions(+), 84 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/net/nfc/marvell,nci.yaml
 delete mode 100644 Documentation/devicetree/bindings/net/nfc/nfcmrvl.txt

diff --git a/Documentation/devicetree/bindings/net/nfc/marvell,nci.yaml b/Documentation/devicetree/bindings/net/nfc/marvell,nci.yaml
new file mode 100644
index 000000000000..15a45db3899a
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/nfc/marvell,nci.yaml
@@ -0,0 +1,170 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/nfc/marvell,nci.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Marvell International Ltd. NCI NFC controller
+
+maintainers:
+  - Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
+
+properties:
+  compatible:
+    enum:
+      - marvell,nfc-i2c
+      - marvell,nfc-spi
+      - marvell,nfc-uart
+
+  hci-muxed:
+    type: boolean
+    description: |
+      Specifies that the chip is muxing NCI over HCI frames
+
+  interrupts:
+    maxItems: 1
+
+  reg:
+    maxItems: 1
+
+  reset-n-io:
+    $ref: "/schemas/types.yaml#/definitions/phandle-array"
+    maxItems: 1
+    description: |
+      Output GPIO pin used to reset the chip (active low)
+
+  i2c-int-falling:
+    type: boolean
+    description: |
+      For I2C type of connection. Specifies that the chip read event shall be
+      trigged on falling edge.
+
+  i2c-int-rising:
+    type: boolean
+    description: |
+      For I2C type of connection.  Specifies that the chip read event shall be
+      trigged on rising edge.
+
+  break-control:
+    type: boolean
+    description: |
+      For UART type of connection. Specifies that the chip needs specific break
+      management.
+
+  flow-control:
+    type: boolean
+    description: |
+      For UART type of connection. Specifies that the chip is using RTS/CTS.
+
+  spi-cpha: true
+  spi-cpol: true
+  spi-max-frequency: true
+
+required:
+  - compatible
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: marvell,nfc-i2c
+    then:
+      properties:
+        break-control: false
+        flow-control: false
+        spi-cpha: false
+        spi-cpol: false
+        spi-max-frequency: false
+      required:
+        - reg
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: marvell,nfc-spi
+    then:
+      properties:
+        break-control: false
+        flow-control: false
+        i2c-int-falling: false
+        i2c-int-rising: false
+      required:
+        - reg
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: marvell,nfc-uart
+    then:
+      properties:
+        i2c-int-falling: false
+        i2c-int-rising: false
+        interrupts: false
+        spi-cpha: false
+        spi-cpol: false
+        spi-max-frequency: false
+        reg: false
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        nfc@8 {
+            compatible = "marvell,nfc-i2c";
+            reg = <0x8>;
+
+            interrupt-parent = <&gpio3>;
+            interrupts = <21 IRQ_TYPE_EDGE_RISING>;
+
+            i2c-int-rising;
+
+            reset-n-io = <&gpio3 19 GPIO_ACTIVE_HIGH>;
+        };
+    };
+
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        nfc@0 {
+            compatible = "marvell,nfc-spi";
+            reg = <0>;
+
+            spi-max-frequency = <3000000>;
+            spi-cpha;
+            spi-cpol;
+
+            interrupt-parent = <&gpio1>;
+            interrupts = <17 IRQ_TYPE_EDGE_RISING>;
+
+            reset-n-io = <&gpio3 19 GPIO_ACTIVE_HIGH>;
+        };
+    };
+
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    uart {
+        nfc {
+            compatible = "marvell,nfc-uart";
+
+            reset-n-io = <&gpio3 16 GPIO_ACTIVE_HIGH>;
+
+            hci-muxed;
+            flow-control;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/net/nfc/nfcmrvl.txt b/Documentation/devicetree/bindings/net/nfc/nfcmrvl.txt
deleted file mode 100644
index c9b35251bb20..000000000000
--- a/Documentation/devicetree/bindings/net/nfc/nfcmrvl.txt
+++ /dev/null
@@ -1,84 +0,0 @@
-* Marvell International Ltd. NCI NFC Controller
-
-Required properties:
-- compatible: Should be:
-  - "marvell,nfc-uart" or "mrvl,nfc-uart" for UART devices
-  - "marvell,nfc-i2c" for I2C devices
-  - "marvell,nfc-spi" for SPI devices
-
-Optional SoC specific properties:
-- pinctrl-names: Contains only one value - "default".
-- pintctrl-0: Specifies the pin control groups used for this controller.
-- reset-n-io: Output GPIO pin used to reset the chip (active low).
-- hci-muxed: Specifies that the chip is muxing NCI over HCI frames.
-
-Optional UART-based chip specific properties:
-- flow-control: Specifies that the chip is using RTS/CTS.
-- break-control: Specifies that the chip needs specific break management.
-
-Optional I2C-based chip specific properties:
-- i2c-int-falling: Specifies that the chip read event shall be trigged on
-  		   falling edge.
-- i2c-int-rising: Specifies that the chip read event shall be trigged on
-  		  rising edge.
-
-Example (for ARM-based BeagleBoard Black with 88W8887 on UART5):
-
-&uart5 {
-
-	nfcmrvluart: nfcmrvluart@5 {
-		compatible = "marvell,nfc-uart";
-
-		reset-n-io = <&gpio3 16 0>;
-
-		hci-muxed;
-		flow-control;
-        }
-};
-
-
-Example (for ARM-based BeagleBoard Black with 88W8887 on I2C1):
-
-&i2c1 {
-	clock-frequency = <400000>;
-
-	nfcmrvli2c0: i2c@1 {
-		compatible = "marvell,nfc-i2c";
-
-		reg = <0x8>;
-
-		/* I2C INT configuration */
-		interrupt-parent = <&gpio3>;
-		interrupts = <21 0>;
-
-		/* I2C INT trigger configuration */
-		i2c-int-rising;
-
-		/* Reset IO */
-		reset-n-io = <&gpio3 19 0>;
-	};
-};
-
-
-Example (for ARM-based BeagleBoard Black on SPI0):
-
-&spi0 {
-
-	mrvlnfcspi0: spi@0 {
-		compatible = "marvell,nfc-spi";
-
-		reg = <0>;
-
-		/* SPI Bus configuration */
-		spi-max-frequency = <3000000>;
-		spi-cpha;
-		spi-cpol;
-
-		/* SPI INT configuration */
-		interrupt-parent = <&gpio1>;
-		interrupts = <17 0>;
-
-		/* Reset IO */
-       		reset-n-io = <&gpio3 19 0>;
-	};
-};
-- 
2.30.2


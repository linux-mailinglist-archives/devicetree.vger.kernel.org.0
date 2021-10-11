Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 65BCE4287D8
	for <lists+devicetree@lfdr.de>; Mon, 11 Oct 2021 09:40:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234715AbhJKHl7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Oct 2021 03:41:59 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:43838
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234609AbhJKHlw (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 11 Oct 2021 03:41:52 -0400
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 11E903FFFB
        for <devicetree@vger.kernel.org>; Mon, 11 Oct 2021 07:39:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1633937992;
        bh=rLmXqmzzo5GGghYT5vRh2TAaGHt8AG7Im5K0tL2thlE=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=ja5WBE17u4s1TPMO1UxMF7FeUudnnIHxfhPmbdC5BzkA8QlU7xBSnGBIk8aOaiQ8Z
         xXaUTupuisQXXxFlS1ooq0PVzeuBWYpo2UCL6wpzpKihsxhtx9mHalr7qZIfIHdR5j
         Ks7BkQW4iTBOrK916uEIUoUFKYvebLOk7fBhR5ZbbttPtCRhwnHggSnSHEtUsWKsH9
         LMgw8imgjOzfAH7C0bx4Lu1xSwroM7zlwULf+OC79rcWPSas+ATNqfxcg4nxnmF5pc
         KJretmdhjt/rq057799uBoU+MWlvFV9oHqjUjdFsf5OzAKgwo+OMOvfXEoD31jsDe4
         S/8SfBLrt8wAg==
Received: by mail-ed1-f72.google.com with SMTP id c8-20020a50d648000000b003daa53c7518so15026331edj.21
        for <devicetree@vger.kernel.org>; Mon, 11 Oct 2021 00:39:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rLmXqmzzo5GGghYT5vRh2TAaGHt8AG7Im5K0tL2thlE=;
        b=OvCa1mLVWyzi6X0XbWk90r46YyhdEfCnjff6tSfWRTh7sWPTBAgZA0qMgjAp6hMIKW
         6NwdKmXOOY/OVvzBbl0lWOACWUUaX2i+8lTnpRWFVOgAscLPM08duWQFpaWiQE0JgjgK
         QBH/J0kmbJyM8bsfNOBUu0gQOHq3ePOuXqA6HftizVjGBtCJ9NkK53j7wYhyZiUa1pGR
         ngC5yMW7RNwsjjMALtZrUnN0Gv2X5d/d4juO9QJi6abLchYkLOBYUdKPMpRpf2FWIer1
         CL3D8NhXE1E5kgsvgdURlESjO616xHqTwRXQmv+qubl+ymZzl0ayTdflsJfkfXckpLY7
         hLsA==
X-Gm-Message-State: AOAM530EXqRLPF2YmXxg67WAF6S8VF44bmhbxqctoRHxyFAietCHKSYF
        sLF9ZcMxWnCYCxb7bfWD/cv4i00KRoVjoqRd16EX8VXY7k0s2uVdNxc3KcHVhiKyXpMUroo7THD
        R2iLGDVKVWfqf3RoMqBQhGDDjTKwE5/79PLo/iIA=
X-Received: by 2002:a05:6402:348a:: with SMTP id v10mr16185659edc.0.1633937990458;
        Mon, 11 Oct 2021 00:39:50 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx2Ucwh17SL6sj5EvOGVNYMDI+/+fXsfm0C96VKhvnPfPMpzHqS1gw2RJ59i7Z57suwl5vG/w==
X-Received: by 2002:a05:6402:348a:: with SMTP id v10mr16185642edc.0.1633937990273;
        Mon, 11 Oct 2021 00:39:50 -0700 (PDT)
Received: from localhost.localdomain (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id y8sm3023965ejm.104.2021.10.11.00.39.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Oct 2021 00:39:49 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Charles Gorand <charles.gorand@effinnov.com>,
        Mark Greer <mgreer@animalcreek.com>, linux-nfc@lists.01.org,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org
Subject: [PATCH v2 4/8] dt-bindings: nfc: st,st21nfca: convert to dtschema
Date:   Mon, 11 Oct 2021 09:39:30 +0200
Message-Id: <20211011073934.34340-5-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211011073934.34340-1-krzysztof.kozlowski@canonical.com>
References: <20211011073934.34340-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the ST ST21NFCA NFC controller to DT schema format.

Changes during bindings conversion:
1. Add a new required "interrupts" property, because it was missing in
   the old bindings by mistake.
2. Drop the "clock-frequency" property during conversion because it is a
   property of I2C bus controller, not I2C slave device.  It was also
   never used by the driver.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../bindings/net/nfc/st,st21nfca.yaml         | 64 +++++++++++++++++++
 .../devicetree/bindings/net/nfc/st21nfca.txt  | 37 -----------
 2 files changed, 64 insertions(+), 37 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/net/nfc/st,st21nfca.yaml
 delete mode 100644 Documentation/devicetree/bindings/net/nfc/st21nfca.txt

diff --git a/Documentation/devicetree/bindings/net/nfc/st,st21nfca.yaml b/Documentation/devicetree/bindings/net/nfc/st,st21nfca.yaml
new file mode 100644
index 000000000000..4356eacde8aa
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/nfc/st,st21nfca.yaml
@@ -0,0 +1,64 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/nfc/st,st21nfca.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics SAS ST21NFCA NFC controller
+
+maintainers:
+  - Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
+
+properties:
+  compatible:
+    const: st,st21nfca-i2c
+
+  enable-gpios:
+    description: Output GPIO pin used for enabling/disabling the controller
+
+  ese-present:
+    type: boolean
+    description: |
+      Specifies that an ese is physically connected to the controller
+
+  interrupts:
+    maxItems: 1
+
+  reg:
+    maxItems: 1
+
+  uicc-present:
+    type: boolean
+    description: |
+      Specifies that the uicc swp signal can be physically connected to the
+      controller
+
+required:
+  - compatible
+  - enable-gpios
+  - interrupts
+  - reg
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
+        nfc@1 {
+            compatible = "st,st21nfca-i2c";
+            reg = <0x1>;
+
+            interrupt-parent = <&gpio5>;
+            interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
+            enable-gpios = <&gpio5 29 GPIO_ACTIVE_HIGH>;
+
+            ese-present;
+            uicc-present;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/net/nfc/st21nfca.txt b/Documentation/devicetree/bindings/net/nfc/st21nfca.txt
deleted file mode 100644
index b8bd90f80e12..000000000000
--- a/Documentation/devicetree/bindings/net/nfc/st21nfca.txt
+++ /dev/null
@@ -1,37 +0,0 @@
-* STMicroelectronics SAS. ST21NFCA NFC Controller
-
-Required properties:
-- compatible: Should be "st,st21nfca-i2c".
-- clock-frequency: I²C work frequency.
-- reg: address on the bus
-- enable-gpios: Output GPIO pin used for enabling/disabling the ST21NFCA
-
-Optional SoC Specific Properties:
-- pinctrl-names: Contains only one value - "default".
-- pintctrl-0: Specifies the pin control groups used for this controller.
-- ese-present: Specifies that an ese is physically connected to the nfc
-controller.
-- uicc-present: Specifies that the uicc swp signal can be physically
-connected to the nfc controller.
-
-Example (for ARM-based BeagleBoard xM with ST21NFCA on I2C2):
-
-&i2c2 {
-
-
-	st21nfca: st21nfca@1 {
-
-		compatible = "st,st21nfca-i2c";
-
-		reg = <0x01>;
-		clock-frequency = <400000>;
-
-		interrupt-parent = <&gpio5>;
-		interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
-
-		enable-gpios = <&gpio5 29 GPIO_ACTIVE_HIGH>;
-
-		ese-present;
-		uicc-present;
-	};
-};
-- 
2.30.2


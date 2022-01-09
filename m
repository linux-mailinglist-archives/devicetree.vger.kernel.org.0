Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2F776488AC8
	for <lists+devicetree@lfdr.de>; Sun,  9 Jan 2022 18:03:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235599AbiAIRDZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 9 Jan 2022 12:03:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234264AbiAIRDZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 9 Jan 2022 12:03:25 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E750C06173F
        for <devicetree@vger.kernel.org>; Sun,  9 Jan 2022 09:03:25 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id e9so20827232wra.2
        for <devicetree@vger.kernel.org>; Sun, 09 Jan 2022 09:03:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=Ti+8EW0hs0/YnGnixzku2GIX43wTcFQZGeFpoKdB+/A=;
        b=brSEWSmJC6rzk/zKxRTotIFKMqnPzHH2Qe45/Ut1ulYNcHqoeKG7PjaNELR3zmfcBh
         kGkOSvof6BhDKWwFvMtovx/I4QoA7gJkFbWp0aAyudJi77h9HXjuz6dfbuhRpPZXgk6K
         WjhUGpWq7nYC/fNU1J04yIhi8q9lGXjTLWVbdAM4ZD1Pt+VC7jsfH40ABO8UeqWs2J2Y
         SKjeODgJWE2CEpnVyTJ1HeRUel/AN1yw+XNZ59EZkOi40iSmFgiuGulUxI5siPU7CvKV
         RSHmSAhdTXy2oRP1lTVitCekoy0tJotsIQ6KNh3oz9Za4QQ5Pdvx/0R+e6XpdsdTn0bH
         VyUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=Ti+8EW0hs0/YnGnixzku2GIX43wTcFQZGeFpoKdB+/A=;
        b=AKLanQ7E8+r+2xmt168tTqKCae3v0lIhZiSYXado/Lds+0cF+KzG2SfyKSkaUo0rU6
         XgCDuY3bEAlEH41fxBJmw7++mNuh2RvnoKXJGoOv9s2KTHjffBgzuxSyR0fVMp7HDtGf
         GeIw/jCLlaVfg6cSn5AjPtSF4CWFNn7j2tL3w6eBoZanWqcqzEyCtKL3/Qd2HP/Rd3di
         rHSdYyWdeH0LHqJpJfcX59M9wGtkMDzfYRMxEi8RBRjy4KeQspfnmOlCDMz+sUfSsIAM
         YJYP6gKrCgw/gP+qmKgrnoQuQZ7oDkbcI4/ozU5F2YcZl3rQuhV9NEqo1sEUVAEIBT+2
         FAXQ==
X-Gm-Message-State: AOAM531cnKI6Y2x68pOxhcWDH1lMBlQq6mmn+koH45qtU66xMfHEWk66
        3UyfQexCuKRHVACwwk/847A=
X-Google-Smtp-Source: ABdhPJyIZsNUXisqFUOni1KYMVyg0VDK60JKElYW169fXwXP1B6IQXShYTDyHRMmirKdPBf9VBJSzA==
X-Received: by 2002:adf:ef01:: with SMTP id e1mr25427872wro.647.1641747803693;
        Sun, 09 Jan 2022 09:03:23 -0800 (PST)
Received: from standask-GA-A55M-S2HP ([188.123.115.255])
        by smtp.gmail.com with ESMTPSA id k8sm2025634wmi.13.2022.01.09.09.03.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Jan 2022 09:03:23 -0800 (PST)
Date:   Sun, 9 Jan 2022 18:03:21 +0100
From:   Stanislav Jakubek <stano.jakubek@gmail.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-unisoc@lists.infradead.org
Subject: [PATCH v2] dt-bindings: serial: Convert rda,8810pl-uart to YAML
Message-ID: <20220109170321.GA12989@standask-GA-A55M-S2HP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert RDA Micro UART bindings to DT schema format.

Signed-off-by: Stanislav Jakubek <stano.jakubek@gmail.com>
---
Changes in v2:
  - Fix indentation in example

 .../bindings/serial/rda,8810pl-uart.txt       | 17 -------
 .../bindings/serial/rda,8810pl-uart.yaml      | 46 +++++++++++++++++++
 MAINTAINERS                                   |  2 +-
 3 files changed, 47 insertions(+), 18 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/serial/rda,8810pl-uart.txt
 create mode 100644 Documentation/devicetree/bindings/serial/rda,8810pl-uart.yaml

diff --git a/Documentation/devicetree/bindings/serial/rda,8810pl-uart.txt b/Documentation/devicetree/bindings/serial/rda,8810pl-uart.txt
deleted file mode 100644
index a08df97a69e6..000000000000
--- a/Documentation/devicetree/bindings/serial/rda,8810pl-uart.txt
+++ /dev/null
@@ -1,17 +0,0 @@
-RDA Micro UART
-
-Required properties:
-- compatible :  "rda,8810pl-uart" for RDA8810PL SoCs.
-- reg        :  Offset and length of the register set for the device.
-- interrupts :  Should contain UART interrupt.
-- clocks     :  Phandle to the input clock.
-
-
-Example:
-
-		uart2: serial@20a90000 {
-			compatible = "rda,8810pl-uart";
-			reg = <0x20a90000 0x1000>;
-			interrupts = <11 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&uart_clk>;
-		};
diff --git a/Documentation/devicetree/bindings/serial/rda,8810pl-uart.yaml b/Documentation/devicetree/bindings/serial/rda,8810pl-uart.yaml
new file mode 100644
index 000000000000..5f4ed8221270
--- /dev/null
+++ b/Documentation/devicetree/bindings/serial/rda,8810pl-uart.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/serial/rda,8810pl-uart.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RDA Micro UART Interface
+
+maintainers:
+  - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
+
+allOf:
+  - $ref: serial.yaml#
+
+properties:
+  compatible:
+    const: rda,8810pl-uart
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    uart3: serial@20a90000 {
+      compatible = "rda,8810pl-uart";
+      reg = <0x20a90000 0x1000>;
+      interrupts = <11 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&uart_clk>;
+    };
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index 44d79a8b62c6..c7434954c19f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2502,7 +2502,7 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/arm/rda.yaml
 F:	Documentation/devicetree/bindings/gpio/gpio-rda.yaml
 F:	Documentation/devicetree/bindings/interrupt-controller/rda,8810pl-intc.txt
-F:	Documentation/devicetree/bindings/serial/rda,8810pl-uart.txt
+F:	Documentation/devicetree/bindings/serial/rda,8810pl-uart.yaml
 F:	Documentation/devicetree/bindings/timer/rda,8810pl-timer.txt
 F:	arch/arm/boot/dts/rda8810pl-*
 F:	drivers/clocksource/timer-rda.c
-- 
2.25.1


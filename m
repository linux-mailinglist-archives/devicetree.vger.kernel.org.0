Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D759E4889E7
	for <lists+devicetree@lfdr.de>; Sun,  9 Jan 2022 15:37:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232834AbiAIOhZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 9 Jan 2022 09:37:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229922AbiAIOhZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 9 Jan 2022 09:37:25 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 982BFC06173F
        for <devicetree@vger.kernel.org>; Sun,  9 Jan 2022 06:37:24 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id s1so21864579wra.6
        for <devicetree@vger.kernel.org>; Sun, 09 Jan 2022 06:37:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=d+/p0gG5r0uk1otb/xPUeeTi5SnbmcWptC+sML1UIGI=;
        b=hJmBAAuOxISkWAcZCelUdFXzOo14Pq83qt6ipf3/C//jtW2d+GxjBgoDqu4BdCxa5K
         h0paUVRiOfNSNhQ50IGB3jAoGkWoPwLEOSTdI28OMTSJa1FY2kBzMCs0o40zXV9V3BAL
         yMqtUETQYqJV2T4m+l8Fei8kJYT/MA8L9NI1BQU9KH/+X64bdxuZNmmMuQ+XhpeI7aBu
         LqZPvl1ByS2254hI2V4mK25NCqAzgAjV+qA62OTplu+Ji1QuQN8auQVHooKAXhub0JBj
         zMnw/a/eZoZtD0ermat/2gvlg52bpm2zuKWY/wi5CrX5yLMZG33BJ0YrG36GHZNvE3mt
         JyPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=d+/p0gG5r0uk1otb/xPUeeTi5SnbmcWptC+sML1UIGI=;
        b=E+vrY0oaHnSpnNvCBsxTFMSDtBpp/T8vsTsY2EmJtPfIkEqwgfYOep/3HfeoVZbw5G
         4lGbgp1vtpNU7JPXbi0ALkN9vv/sS63voy7H+sRU4SzgOEgSU6ieWcSYBYutCngPYa3g
         9tZnRfhRviML0KZm5+0CChJx4To3Yn2PutkqO02u2KQfuySJwtgmKV6lsjBooB6nZqNL
         MDElzKxENxS+YHQGYBr1k6RGqleAjeyT4io6LwMz/5fsIiZfcSapNAJz8NStxoMG3kl3
         GewIW6xrmK2w0BpD6TkjWvfwPkdPJMQr9HfGuwc5Z7ah9AzUPc7K+bivxVf8KDv8XIx6
         yt/g==
X-Gm-Message-State: AOAM531L2OHM0APZb3ugMFBk8FtsiktGavfht5nf1A5B/BylVoEEZlfb
        JmtPymUIydLhXQZI6Z/BcjE=
X-Google-Smtp-Source: ABdhPJy/lHXcKmOAQYAebp5u76H5q2gX/2KWTdjW4EGlIuHEH4bSlRYOu9CvfIaF/WaA4XVmfekTLw==
X-Received: by 2002:a5d:488c:: with SMTP id g12mr52241367wrq.96.1641739043166;
        Sun, 09 Jan 2022 06:37:23 -0800 (PST)
Received: from standask-GA-A55M-S2HP ([188.123.115.255])
        by smtp.gmail.com with ESMTPSA id j13sm4326245wrq.3.2022.01.09.06.37.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Jan 2022 06:37:22 -0800 (PST)
Date:   Sun, 9 Jan 2022 15:37:21 +0100
From:   Stanislav Jakubek <stano.jakubek@gmail.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-unisoc@lists.infradead.org
Subject: [PATCH] dt-bindings: serial: Convert rda,8810pl-uart to YAML
Message-ID: <20220109143721.GA7707@standask-GA-A55M-S2HP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert RDA Micro UART bindings to DT schema format.

Signed-off-by: Stanislav Jakubek <stano.jakubek@gmail.com>
---
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
index 000000000000..74b1e368bb84
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
+  #include <dt-bindings/interrupt-controller/irq.h>
+
+  uart3: serial@20a90000 {
+    compatible = "rda,8810pl-uart";
+    reg = <0x20a90000 0x1000>;
+    interrupts = <11 IRQ_TYPE_LEVEL_HIGH>;
+    clocks = <&uart_clk>;
+  };
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


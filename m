Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B6425BA596
	for <lists+devicetree@lfdr.de>; Fri, 16 Sep 2022 06:01:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229959AbiIPEBA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Sep 2022 00:01:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229906AbiIPEAt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Sep 2022 00:00:49 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0BC096756
        for <devicetree@vger.kernel.org>; Thu, 15 Sep 2022 21:00:47 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id x14so1067273wrv.2
        for <devicetree@vger.kernel.org>; Thu, 15 Sep 2022 21:00:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=LMMVj2DZcEIg9mNavoO5qywnGo3CEduWpNE78C6fbJ0=;
        b=qhP4vLM31nrqLvVod4BKcc7q8rTCdHxwsxff/OeZ7GQWLNcGX5BWg5dIUP3hRB4j7d
         ouqfPuLMb8taxobIG1K7zHZ3sKW3GoPILmQdNm5AoIhjct8nJxlfLoBdfX/pbuFsgq3G
         QIa9WvfAHRALb4VJH88mFw1/Cj08HtcCmYNa0X+Pvt9RJhLWmORw60ygzUOO2uZaZUEu
         y9Hglr0AUxjIOHQMBHZXakPWldzURIv/N+Za7tdlGkdtZXu9+svuLVd3WzSFuIxrpVlk
         f68my3laaPhQ1keKq9pT6oMfhcm70GFShuLzQiRIwzqnnelBNkaLF1PIear8kFY9ovhA
         jE9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=LMMVj2DZcEIg9mNavoO5qywnGo3CEduWpNE78C6fbJ0=;
        b=LCECqDaRqgMSiEeCxh+rnskY0EA/Z6enzYLwPdmrgcKymcK0wKqnk/IpyL2HobZfFZ
         nNw95iFjgx8oxvNZHMLnXalrhJjuVTgNcGBSTiTfmjPEJsFzisBfVP69WRP5RAKheFFv
         GAFlHYqmVIhX+Ty4MVhpyN5kYXfby26MiTH+XWLX7cv6mnw4KO1+E/sOcshUI1BIcEHU
         hChzEmwm+73jR44P+gFa/vnI0H4bHqZfX5LMx0wW9xKRbcv+HfyEfWoJ5+q53AheW/CD
         zuksOdNN6LyoYq4lVsfBD2uPro/1CSMtxLgoxQShFqDbAI+pOJdVR7cHldgZBZEn7qZY
         J0gw==
X-Gm-Message-State: ACrzQf2/LeK1dcMN0days0SKBdV2VgeSYrpJL38a0H1lsyFB5qFTUL6e
        dwS4J3rCX+hygXwCk5YMzXU0nUNQRz879yeb
X-Google-Smtp-Source: AMsMyM4wPQPX4bmnh6VYTppgT9Ci9Y8xROy5NakbM0y5ckcfN5euzY/HmEmWAXmO+THUAKiZLhv18A==
X-Received: by 2002:adf:bc13:0:b0:228:e099:3822 with SMTP id s19-20020adfbc13000000b00228e0993822mr1497010wrg.551.1663300845991;
        Thu, 15 Sep 2022 21:00:45 -0700 (PDT)
Received: from localhost.localdomain (188.red-88-10-59.dynamicip.rima-tde.net. [88.10.59.188])
        by smtp.gmail.com with ESMTPSA id bn19-20020a056000061300b0022adf321d22sm324192wrb.92.2022.09.15.21.00.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Sep 2022 21:00:45 -0700 (PDT)
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     robh+dt@kernel.org, krzk+dt@kernel.org, arinc.unal@arinc9.com
Subject: [PATCH] dt-bindings: spi: migrate mt7621 text bindings to YAML
Date:   Fri, 16 Sep 2022 06:00:44 +0200
Message-Id: <20220916040044.487748-1-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SoC MT7621 SPI bindings used text format, so migrate them to YAML.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 .../bindings/spi/ralink,mt7621-spi.yaml       | 68 +++++++++++++++++++
 .../devicetree/bindings/spi/spi-mt7621.txt    | 26 -------
 2 files changed, 68 insertions(+), 26 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/spi/ralink,mt7621-spi.yaml
 delete mode 100644 Documentation/devicetree/bindings/spi/spi-mt7621.txt

diff --git a/Documentation/devicetree/bindings/spi/ralink,mt7621-spi.yaml b/Documentation/devicetree/bindings/spi/ralink,mt7621-spi.yaml
new file mode 100644
index 000000000000..a602406e2669
--- /dev/null
+++ b/Documentation/devicetree/bindings/spi/ralink,mt7621-spi.yaml
@@ -0,0 +1,68 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/spi/ralink,mt7621-spi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+maintainers:
+  - Sergio Paracuellos <sergio.paracuellos@gmail.com>
+
+title: Mediatek MT7621/MT7628 SPI controller
+
+allOf:
+  - $ref: /schemas/spi/spi-controller.yaml#
+
+properties:
+  compatible:
+    const: ralink,mt7621-spi
+
+  reg:
+    maxItems: 1
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: spi
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    const: spi
+
+required:
+  - compatible
+  - reg
+  - resets
+  - reset-names
+  - "#address-cells"
+  - "#size-cells"
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/mt7621-clk.h>
+    #include <dt-bindings/reset/mt7621-reset.h>
+
+    spi@b00 {
+      compatible = "ralink,mt7621-spi";
+      reg = <0xb00 0x100>;
+      clocks = <&sysc MT7621_CLK_SPI>;
+      clock-names = "spi";
+      resets = <&sysc MT7621_RST_SPI>;
+      reset-names = "spi";
+
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      pinctrl-names = "default";
+      pinctrl-0 = <&spi_pins>;
+    };
diff --git a/Documentation/devicetree/bindings/spi/spi-mt7621.txt b/Documentation/devicetree/bindings/spi/spi-mt7621.txt
deleted file mode 100644
index d5baec0fa56e..000000000000
--- a/Documentation/devicetree/bindings/spi/spi-mt7621.txt
+++ /dev/null
@@ -1,26 +0,0 @@
-Binding for MTK SPI controller (MT7621 MIPS)
-
-Required properties:
-- compatible: Should be one of the following:
-  - "ralink,mt7621-spi": for mt7621/mt7628/mt7688 platforms
-- #address-cells: should be 1.
-- #size-cells: should be 0.
-- reg: Address and length of the register set for the device
-- resets: phandle to the reset controller asserting this device in
-          reset
-  See ../reset/reset.txt for details.
-
-Optional properties:
-- cs-gpios: see spi-bus.txt.
-
-Example:
-
-- SoC Specific Portion:
-spi0: spi@b00 {
-	compatible = "ralink,mt7621-spi";
-	reg = <0xb00 0x100>;
-	#address-cells = <1>;
-	#size-cells = <0>;
-	resets = <&rstctrl 18>;
-	reset-names = "spi";
-};
-- 
2.25.1


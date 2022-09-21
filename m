Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D0A595BF7B3
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 09:28:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230088AbiIUH2Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 03:28:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230141AbiIUH2W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 03:28:22 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B26083BD9
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 00:28:21 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id z6so8414783wrq.1
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 00:28:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=n8XwGE84paddIHwFU4DYm4xqHUkIqtA+ehC9/VoNEZ0=;
        b=YGYWX/pb9zz6W0kDo1Ae0XZqHixQekOyGZhxkBvnY9BoQPZi/X7lbn+vaJHPUwiree
         ku/kVlfvbYnlLgyDkCQOjcwIMzWVT6H6IMhB1h+QFKdyNifVwkv4KtvdgahajRiJ2N2b
         2Od5bPlK49ClQmwm11sNwlHDZyXg8V0ErIi7W1Wh+8wRbnJAZBzY8lVNUWpTKOZG+f/E
         GLUAFWIdaCeXxrFU8fVIQ92zyjVFs8/FRygoV6En8Iw6pJH5P3iPUS4AogNMCco6KqYh
         JjGJRDbNIPRGHPkggJ7vigaIgOGT9uTcZNCkomJa8hvpo1Pgr9YVRDpspoOEdng/orwY
         ev+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=n8XwGE84paddIHwFU4DYm4xqHUkIqtA+ehC9/VoNEZ0=;
        b=U69AD0aZ9BOaDMl4NLMntB6GKaolBj5wTi2sdwq2sSF+cVQKHNuxYbNhrgll5ETT5R
         j3v3WcH45UUrQFjuKy5IgIJrktaxangbWI6YKd7exl8000pag6JPziSV52K5jFdDu3HO
         0IgNSv8xffvZgXRmhbxE8Rk+Rz2hy8o7yXMQ+jVmvRrCvI70PAtbpFczLUQBDaJKmVa5
         NO6vV0yPoH6WjBsXCMn64sWovXkcKnQlxEreswHxPv+fH4ZqIGN3kFtGjME7VZqkhbzN
         rLe/mYESX8amB5uDO91x/w9fe5dHXtw7E7f7ofK5RjCDiuDlFGZnmgkl+eT4R9jjncfj
         a6Zw==
X-Gm-Message-State: ACrzQf3GIym2m6ucdyQEPGmRxYzvQtVT0OgyKKEr7HfDiEWKouJnNH8W
        EhNfm9gzJesLOdXii91//YdJOKd1lbmtPw==
X-Google-Smtp-Source: AMsMyM65M5yxc5PyMPzp0LFw0URa23Do5dsrG1Y1dkXrOmjYsRuMJsQcQfT26of0u4bdVWW6TCL3iw==
X-Received: by 2002:a05:6000:150:b0:22a:55bf:80e9 with SMTP id r16-20020a056000015000b0022a55bf80e9mr16581685wrx.654.1663745299290;
        Wed, 21 Sep 2022 00:28:19 -0700 (PDT)
Received: from localhost.localdomain (188.red-88-10-59.dynamicip.rima-tde.net. [88.10.59.188])
        by smtp.gmail.com with ESMTPSA id bs11-20020a056000070b00b00226dba960b4sm1805092wrb.3.2022.09.21.00.28.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Sep 2022 00:28:18 -0700 (PDT)
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     tsbogend@alpha.franken.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, arinc.unal@arinc9.com,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3] dt-bindings: spi: migrate mt7621 text bindings to YAML
Date:   Wed, 21 Sep 2022 09:28:17 +0200
Message-Id: <20220921072817.611223-1-sergio.paracuellos@gmail.com>
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
There are some additions to the binding that were not in the original
file. This binding is used in MT7621 and MT7628a Ralink SoCs. To
properly match both dts nodes in tree we need to add to the schema
'clocks', 'clock-names' and 'reset-names'. Both 'clock-names' and
'reset-names' use 'spi' as string so maintain that as const in
the schema.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
Changes in v3:
- Add Krzysztof's Reviewed-by tag.

Changes in v2:
- Address review comment from Krzysztof:
- Rebase onto last kernel version.
- Drop address-cells and size-cells.
- Explain deviations from the original file in commit message.
- Drop reset-names as required property.

 .../bindings/spi/ralink,mt7621-spi.yaml       | 61 +++++++++++++++++++
 .../devicetree/bindings/spi/spi-mt7621.txt    | 26 --------
 2 files changed, 61 insertions(+), 26 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/spi/ralink,mt7621-spi.yaml
 delete mode 100644 Documentation/devicetree/bindings/spi/spi-mt7621.txt

diff --git a/Documentation/devicetree/bindings/spi/ralink,mt7621-spi.yaml b/Documentation/devicetree/bindings/spi/ralink,mt7621-spi.yaml
new file mode 100644
index 000000000000..22879f7dcb77
--- /dev/null
+++ b/Documentation/devicetree/bindings/spi/ralink,mt7621-spi.yaml
@@ -0,0 +1,61 @@
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


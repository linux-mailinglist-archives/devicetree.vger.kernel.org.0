Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C191F5BDC3A
	for <lists+devicetree@lfdr.de>; Tue, 20 Sep 2022 07:20:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230123AbiITFU5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Sep 2022 01:20:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230062AbiITFUz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Sep 2022 01:20:55 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4131B51A14
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 22:20:54 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id l8so1053587wmi.2
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 22:20:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=33x7GLLZo5wSxoD+ofGc3mAduxvACsXVB1rjfZ4IlM8=;
        b=VRTkK7NdX7PmshoorFNb3t3hbdtagiDXXNxO4zFJ9M4hZnVtwmnP6Jbnuniw79O8ni
         BSCOoT7E21RUwpvvoFAU8PxkqEdEhgFpN7TFkooI7tPndSrbVjzeUhM/czfIPFtMR6jI
         vpB0KmNR2DZ4/gDtHj3SDyYr2EOlJm2yj72JkfrrWhXlUEA2m7QiwY5AJL3VssoxnjoS
         bTVY4Pi1Uy0CoyZxNE4Ug7OSzcT/SqE2J+q1aHJT5arjCp14qgvEXb9Jmu+XeXevpzNY
         z/ho5nRvFmGGgY5oR7mIp8QO2zLWAgDzxigfYDCZ/qa1P85j5qBpv6P/XoXyOfKYj6b2
         4nZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=33x7GLLZo5wSxoD+ofGc3mAduxvACsXVB1rjfZ4IlM8=;
        b=iQbtFFfW06C0eJ+pH4lIhZEU2lNo5VRuG6pUUD2LtTLIGy3ITbkN6xyk6Hc9KnI6Wt
         FucCOtD4wVi4DIQDxiD8h/LdZipuVwohGts7kxsQ3d/FHAxmDunHuPEmM+7jTiTvIOLc
         7Yf7+yjgj3OhhDLFelG/jlIM2uL70XjI2s6e3pW5t8bvTdXyOKGrfO0UK/VoRqbwyedK
         SuMSvNwh0U0NIcx192Y4J5+im8Pr4LPKXdvCD3uatYkmTCcc2vO66Y4jAsu0lC4ztxdA
         z+jRZGPRtKaN/lcfIIyu/3nxOEziU6FV+W7dvHWKn4hGp9VwHETcgiHWe0ZrzfZ5U/DQ
         MTSg==
X-Gm-Message-State: ACrzQf3nmfgtXtnbZqV2DvP4ZOIfRpLSXXpRORVdmlcsdb6U5vgz/SVc
        CnIJ3kqzGEbADUTIb+fINa2eQUDJUOhThw==
X-Google-Smtp-Source: AMsMyM66u37Bc2uMoCKec4LHMj9ux9gTYVUx+6y7jBAAf2+ggr8CsAS2F7qTzsPKIiwsqByMoCysfg==
X-Received: by 2002:a05:600c:3586:b0:3b4:c057:a366 with SMTP id p6-20020a05600c358600b003b4c057a366mr964185wmq.170.1663651252389;
        Mon, 19 Sep 2022 22:20:52 -0700 (PDT)
Received: from localhost.localdomain (188.red-88-10-59.dynamicip.rima-tde.net. [88.10.59.188])
        by smtp.gmail.com with ESMTPSA id g17-20020a5d5551000000b0022ae8b862a7sm463956wrw.35.2022.09.19.22.20.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Sep 2022 22:20:52 -0700 (PDT)
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     tsbogend@alpha.franken.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, arinc.unal@arinc9.com,
        sr@denx.de
Subject: [PATCH v3] dt-bindings: i2c: migrate mt7621 text bindings to YAML
Date:   Tue, 20 Sep 2022 07:20:50 +0200
Message-Id: <20220920052050.582321-1-sergio.paracuellos@gmail.com>
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

SoC MT7621 I2C bindings used text format, so migrate them to YAML.
There are some additions to the binding that were not in the original
txt file. This binding is used in MT7621 and MT7628a Ralink SoCs. To
properly match both dts nodes in tree we need to add to the schema
'clocks', 'clock-names' and 'reset-names'. Both 'clock-names' and
'reset-names' use 'i2c' as string so maintain that as const in
the schema. Also, Properly update MAINTAINERS file to align the
changes.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
Changes in v3:
- Address review comment from Krzysztof:
    - Rebase onto last kernel version.
    - Drop address-cells and size-cells.
    - Properly explain deviations from txt in commit message.
    - Drop reset-names as required property.
    - Squash previous series two commits in one to be bisectable.

Changes in v2:
- Maintain current maintainer Stefan Rose as listed in kernel MAINTAINERS file.
 .../devicetree/bindings/i2c/i2c-mt7621.txt    | 25 --------
 .../bindings/i2c/mediatek,mt7621-i2c.yaml     | 61 +++++++++++++++++++
 MAINTAINERS                                   |  2 +-
 3 files changed, 62 insertions(+), 26 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-mt7621.txt
 create mode 100644 Documentation/devicetree/bindings/i2c/mediatek,mt7621-i2c.yaml

diff --git a/Documentation/devicetree/bindings/i2c/i2c-mt7621.txt b/Documentation/devicetree/bindings/i2c/i2c-mt7621.txt
deleted file mode 100644
index bc36f0eb94cd..000000000000
--- a/Documentation/devicetree/bindings/i2c/i2c-mt7621.txt
+++ /dev/null
@@ -1,25 +0,0 @@
-MediaTek MT7621/MT7628 I2C master controller
-
-Required properties:
-
-- compatible: Should be one of the following:
-  - "mediatek,mt7621-i2c": for MT7621/MT7628/MT7688 platforms
-- #address-cells: should be 1.
-- #size-cells: should be 0.
-- reg: Address and length of the register set for the device
-- resets: phandle to the reset controller asserting this device in
-          reset
-  See ../reset/reset.txt for details.
-
-Optional properties :
-
-Example:
-
-i2c: i2c@900 {
-	compatible = "mediatek,mt7621-i2c";
-	reg = <0x900 0x100>;
-	#address-cells = <1>;
-	#size-cells = <0>;
-	resets = <&rstctrl 16>;
-	reset-names = "i2c";
-};
diff --git a/Documentation/devicetree/bindings/i2c/mediatek,mt7621-i2c.yaml b/Documentation/devicetree/bindings/i2c/mediatek,mt7621-i2c.yaml
new file mode 100644
index 000000000000..118ec00fc190
--- /dev/null
+++ b/Documentation/devicetree/bindings/i2c/mediatek,mt7621-i2c.yaml
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/i2c/mediatek,mt7621-i2c.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+maintainers:
+  - Stefan Roese <sr@denx.de>
+
+title: Mediatek MT7621/MT7628 I2C master controller
+
+allOf:
+  - $ref: /schemas/i2c/i2c-controller.yaml#
+
+properties:
+  compatible:
+    const: mediatek,mt7621-i2c
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: i2c
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    const: i2c
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
+    i2c: i2c@900 {
+      compatible = "mediatek,mt7621-i2c";
+      reg = <0x900 0x100>;
+      clocks = <&sysc MT7621_CLK_I2C>;
+      clock-names = "i2c";
+      resets = <&sysc MT7621_RST_I2C>;
+      reset-names = "i2c";
+
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      pinctrl-names = "default";
+      pinctrl-0 = <&i2c_pins>;
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 08620b9a44fc..bac21d599181 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12669,7 +12669,7 @@ MEDIATEK MT7621/28/88 I2C DRIVER
 M:	Stefan Roese <sr@denx.de>
 L:	linux-i2c@vger.kernel.org
 S:	Maintained
-F:	Documentation/devicetree/bindings/i2c/i2c-mt7621.txt
+F:	Documentation/devicetree/bindings/i2c/mediatek,mt7621-i2c.yaml
 F:	drivers/i2c/busses/i2c-mt7621.c
 
 MEDIATEK MT7621 PCIE CONTROLLER DRIVER
-- 
2.25.1


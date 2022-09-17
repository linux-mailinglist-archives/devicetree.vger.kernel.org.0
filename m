Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 211065BB648
	for <lists+devicetree@lfdr.de>; Sat, 17 Sep 2022 06:27:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229702AbiIQE13 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Sep 2022 00:27:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229681AbiIQE12 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Sep 2022 00:27:28 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 617D2AB4F1
        for <devicetree@vger.kernel.org>; Fri, 16 Sep 2022 21:27:25 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id n10so8361067wrw.12
        for <devicetree@vger.kernel.org>; Fri, 16 Sep 2022 21:27:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=8q7Ks6Y2vwKsI8/A3iyNr/6DjbsOGm/VKBEElYPuTWY=;
        b=lxqTSvMNSaykxq7LBzgghIQqGhiOvB8yklPLj0bNAA2UpkTPgDc89enty5653Ja5bv
         YL0ZNEthSVhSJhpyvjnQRvwCOgvWUTfTeQTBVWa/lKh21lNM4Me8efrDL27FOudGD7y+
         rXmZXMOvwIYcCsPdpYiGgJqO6HXSYdUz6gB2yhZmB7SmOpvgHLruEhLpvYaWSN2zMzHI
         a9PIIFO+IsCPUm+z/O93oNos2XPdGqL08gPUWwFhoKh2+xOaoRR+9z1jQusuZjkSSDBt
         reWiaG76abuwy0FtwK5ZPHzRYIE4jdeuQRi9hV6PmUsZfqWMe2GCkvFTxHtxi+AqbC4u
         7LwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=8q7Ks6Y2vwKsI8/A3iyNr/6DjbsOGm/VKBEElYPuTWY=;
        b=4YWVt9UWhyRF2Xp1lDceN3XvDMa6yLtqBNSrrSTwCEg6YZ+kyh2j+r1YMig4rOJinK
         nvwldNI8S/h3Cxu2hNdkilHuxy1xHzG7AsPim08yreWNFdwFr0ecKSGKecqiNPfVkMlx
         X2iZBxoqS3iP1jnw7SVjF0zM8GV+jkMep34dUaGlXTMFik7d+7UZTlizQILKQLMl2rlR
         nOIzZoFjxjNMV/SkfqZIepmPYItxgNWk+GyAag+H1PXF/ddhXRMSoPHLtbXl1YBbYpD8
         3fFNM1ecKbZyglWUyk9oJqsk2eMq9N86b+5QXxjEXIeV5EQwgMlFAJ7O+oobythVuOMn
         0eAw==
X-Gm-Message-State: ACrzQf0i9uZhaM8KQLAKsjWjnvh/19FmxMEdt54MamG92h0z4L3M/iWG
        p0gjS0dDeISdexZ2QitUvlcScjIqGzIIzQ==
X-Google-Smtp-Source: AMsMyM6t3q/Kd5SvGfEkBK6ri/IT/QQpbtRUUNSddjuWRnhZCVfe6naIEGNUHVzMTlRl0YZEl3PaWA==
X-Received: by 2002:a05:6000:886:b0:225:24f5:deac with SMTP id ca6-20020a056000088600b0022524f5deacmr4653569wrb.104.1663388842999;
        Fri, 16 Sep 2022 21:27:22 -0700 (PDT)
Received: from localhost.localdomain (188.red-88-10-59.dynamicip.rima-tde.net. [88.10.59.188])
        by smtp.gmail.com with ESMTPSA id d7-20020a05600c34c700b003b4ac05a8a4sm5169159wmq.27.2022.09.16.21.27.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Sep 2022 21:27:22 -0700 (PDT)
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     tsbogend@alpha.franken.de, robh+dt@kernel.org, krzk+dt@kernel.org,
        arinc.unal@arinc9.com, sr@denx.de
Subject: [PATCH v2 1/2] dt-bindings: i2c: migrate mt7621 text bindings to YAML
Date:   Sat, 17 Sep 2022 06:27:20 +0200
Message-Id: <20220917042721.527345-1-sergio.paracuellos@gmail.com>
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

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
Changes in v2:
- Maintain current maintainer Stefan Rose as listed in kernel MAINTAINERS file.

 .../devicetree/bindings/i2c/i2c-mt7621.txt    | 25 -------
 .../bindings/i2c/mediatek,mt7621-i2c.yaml     | 68 +++++++++++++++++++
 2 files changed, 68 insertions(+), 25 deletions(-)
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
index 000000000000..8234f770f529
--- /dev/null
+++ b/Documentation/devicetree/bindings/i2c/mediatek,mt7621-i2c.yaml
@@ -0,0 +1,68 @@
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
-- 
2.25.1


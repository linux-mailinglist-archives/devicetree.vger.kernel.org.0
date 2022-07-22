Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 74C6857E050
	for <lists+devicetree@lfdr.de>; Fri, 22 Jul 2022 12:54:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229671AbiGVKyK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Jul 2022 06:54:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235029AbiGVKyI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Jul 2022 06:54:08 -0400
Received: from n169-114.mail.139.com (n169-114.mail.139.com [120.232.169.114])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E95EBB8C4
        for <devicetree@vger.kernel.org>; Fri, 22 Jul 2022 03:54:05 -0700 (PDT)
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM:                                                                                        
X-RM-SPAM-FLAG: 00000000
Received: from LAPTOP-39QA2GAC.localdomain (unknown[192.163.20.102])
        by rmsmtp-lg-appmail-43-12057 (RichMail) with SMTP id 2f1962da81bc3a1-d0054;
        Fri, 22 Jul 2022 18:54:01 +0800 (CST)
X-RM-TRANSID: 2f1962da81bc3a1-d0054
From:   Raphael-Xu <13691752556@139.com>
To:     robh+dt@kernel.org
Cc:     alsa-devel@alsa-project.org, raphael-xu@ti.com,
        shenghao-ding@ti.com, broonie@kernel.org,
        devicetree@vger.kernel.org, kevin-lu@ti.com,
        Raphael-Xu <13691752556@139.com>
Subject: [PATCH v7] ASoc: dt-bindings: tas2780: remove tas2780 and will merge it to tas27xx
Date:   Fri, 22 Jul 2022 18:53:45 +0800
Message-Id: <20220722105345.175-1-13691752556@139.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,FROM_LOCAL_DIGITS,
        FROM_LOCAL_HEX,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

remove tas2780

Signed-off-by: Raphael-Xu <13691752556@139.com>
---
 .../devicetree/bindings/sound/tas2780.yaml    | 75 -------------------
 1 file changed, 75 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/tas2780.yaml

diff --git a/Documentation/devicetree/bindings/sound/tas2780.yaml b/Documentation/devicetree/bindings/sound/tas2780.yaml
deleted file mode 100644
index 21389a16fdb9..000000000000
--- a/Documentation/devicetree/bindings/sound/tas2780.yaml
+++ /dev/null
@@ -1,75 +0,0 @@
-# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
-# Copyright (C) 2020-2022 Texas Instruments Incorporated
-%YAML 1.2
----
-$id: "http://devicetree.org/schemas/sound/tas2780.yaml#"
-$schema: "http://devicetree.org/meta-schemas/core.yaml#"
-
-title: Texas Instruments TAS2780 Smart PA
-
-maintainers:
-  - Raphael Xu <raphael-xu@ti.com>
-
-description: |
-  The TAS2780 is a mono, digital input Class-D audio amplifier optimized for
-  efficiently driving high peak power into small loudspeakers.
-  Integrated speaker voltage and current sense provides for
-  real time monitoring of loudspeaker behavior.
-
-properties:
-  compatible:
-    enum:
-      - ti,tas2780
-
-  reg:
-    description:
-       I2C address of the device can be between 0x38 to 0x3f.
-    minimum: 0x38
-    maximum: 0x3f
-
-  reset-gpios:
-    description: GPIO used to reset the device.
-    maxItems: 1
-
-  interrupts:
-    maxItems: 1
-
-  ti,imon-slot-no:
-    description: TDM TX current sense time slot.
-    $ref: /schemas/types.yaml#/definitions/uint32
-    minimum: 0
-    maximum: 3
-
-  ti,vmon-slot-no:
-    description: TDM TX voltage sense time slot.
-    $ref: /schemas/types.yaml#/definitions/uint32
-    minimum: 0
-    maximum: 3
-
-  '#sound-dai-cells':
-    const: 1
-
-required:
-  - compatible
-  - reg
-
-additionalProperties: false
-
-examples:
-  - |
-   #include <dt-bindings/gpio/gpio.h>
-   i2c0 {
-     #address-cells = <1>;
-     #size-cells = <0>;
-     codec: codec@38 {
-       compatible = "ti,tas2780";
-       reg = <0x38>;
-       #sound-dai-cells = <1>;
-       interrupts = <14>;
-       reset-gpios = <&gpio1 15 0>;
-       ti,imon-slot-no = <0>;
-       ti,vmon-slot-no = <2>;
-     };
-   };
-
-...
-- 
2.35.1



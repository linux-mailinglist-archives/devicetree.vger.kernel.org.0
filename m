Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 12BC45837BF
	for <lists+devicetree@lfdr.de>; Thu, 28 Jul 2022 05:56:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234412AbiG1D4c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jul 2022 23:56:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232465AbiG1D4a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jul 2022 23:56:30 -0400
Received: from n169-113.mail.139.com (n169-113.mail.139.com [120.232.169.113])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFC18481FF
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 20:56:28 -0700 (PDT)
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM:                                                                                        
X-RM-SPAM-FLAG: 00000000
Received: from LAPTOP-39QA2GAC.localdomain (unknown[192.163.20.102])
        by rmsmtp-lg-appmail-31-12045 (RichMail) with SMTP id 2f0d62e208dbae7-16378;
        Thu, 28 Jul 2022 11:56:24 +0800 (CST)
X-RM-TRANSID: 2f0d62e208dbae7-16378
From:   Raphael-Xu <13691752556@139.com>
To:     robh+dt@kernel.org
Cc:     alsa-devel@alsa-project.org, raphael-xu@ti.com,
        shenghao-ding@ti.com, broonie@kernel.org,
        devicetree@vger.kernel.org, kevin-lu@ti.com,
        Raphael-Xu <13691752556@139.com>
Subject: [PATCH v1] ASoc: dt-bindings: tas27xx: update maximum I2C address and revise the format
Date:   Thu, 28 Jul 2022 11:56:10 +0800
Message-Id: <20220728035610.158-1-13691752556@139.com>
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

1.use correct maximum I2C address 2.revise the format

Signed-off-by: Raphael-Xu <13691752556@139.com>
---
 .../devicetree/bindings/sound/tas27xx.yaml       | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/tas27xx.yaml b/Documentation/devicetree/bindings/sound/tas27xx.yaml
index 66a0df8850ea..573652577462 100644
--- a/Documentation/devicetree/bindings/sound/tas27xx.yaml
+++ b/Documentation/devicetree/bindings/sound/tas27xx.yaml
@@ -8,7 +8,7 @@ $schema: "http://devicetree.org/meta-schemas/core.yaml#"
 title: Texas Instruments TAS2764/TAS2780 Smart PA
 
 maintainers:
-  - Shenghao Ding <shenghao-ding@ti.com>
+  - Raphael Xu <raphael-xu@ti.com>
 
 description: |
   The TAS2764/TAS2780 is a mono, digital input Class-D audio amplifier
@@ -23,17 +23,19 @@ properties:
       - ti,tas2780
 
   reg:
-    maxItems: 1
     description: |
-       I2C address of the device can be between 0x38 to 0x45.
+       I2C address of the device can be between 0x38 to 0x3f.
+    minimum: 0x38
+    maximum: 0x3f
 
   reset-gpios:
-    maxItems: 1
     description: GPIO used to reset the device.
+    maxItems: 1
 
   shutdown-gpios:
+    description: |
+       GPIO used to control the state of the device.Only for TAS2764.
     maxItems: 1
-    description: GPIO used to control the state of the device.
 
   interrupts:
     maxItems: 1
@@ -41,10 +43,14 @@ properties:
   ti,imon-slot-no:
     $ref: /schemas/types.yaml#/definitions/uint32
     description: TDM TX current sense time slot.
+    minimum: 0
+    maximum: 3
 
   ti,vmon-slot-no:
     $ref: /schemas/types.yaml#/definitions/uint32
     description: TDM TX voltage sense time slot.
+    minimum: 0
+    maximum: 3
 
   '#sound-dai-cells':
     const: 1
-- 
2.35.1



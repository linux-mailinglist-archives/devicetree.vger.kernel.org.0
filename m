Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 970F257E053
	for <lists+devicetree@lfdr.de>; Fri, 22 Jul 2022 12:55:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234449AbiGVKzc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Jul 2022 06:55:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229762AbiGVKzb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Jul 2022 06:55:31 -0400
Received: from n169-113.mail.139.com (n169-113.mail.139.com [120.232.169.113])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25C409F072
        for <devicetree@vger.kernel.org>; Fri, 22 Jul 2022 03:55:29 -0700 (PDT)
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM:                                                                                        
X-RM-SPAM-FLAG: 00000000
Received: from LAPTOP-39QA2GAC.localdomain (unknown[192.163.20.102])
        by rmsmtp-lg-appmail-30-12044 (RichMail) with SMTP id 2f0c62da8214383-cfb22;
        Fri, 22 Jul 2022 18:55:27 +0800 (CST)
X-RM-TRANSID: 2f0c62da8214383-cfb22
From:   Raphael-Xu <13691752556@139.com>
To:     robh+dt@kernel.org
Cc:     alsa-devel@alsa-project.org, raphael-xu@ti.com,
        shenghao-ding@ti.com, broonie@kernel.org,
        devicetree@vger.kernel.org, kevin-lu@ti.com,
        Raphael-Xu <13691752556@139.com>
Subject: [PATCH v8] ASoc: dt-bindings: tas27xx: revise tas27xx format
Date:   Fri, 22 Jul 2022 18:55:12 +0800
Message-Id: <20220722105512.191-1-13691752556@139.com>
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

revise the format

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



Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5DB2E5711B9
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 07:12:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229731AbiGLFMc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 01:12:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229635AbiGLFMb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 01:12:31 -0400
X-Greylist: delayed 187 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 11 Jul 2022 22:12:28 PDT
Received: from n169-112.mail.139.com (n169-112.mail.139.com [120.232.169.112])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DEDD12F39E
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 22:12:28 -0700 (PDT)
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM:                                                                                        
X-RM-SPAM-FLAG: 00000000
Received: from LAPTOP-39QA2GAC.localdomain (unknown[192.163.20.102])
        by rmsmtp-lg-appmail-19-12022 (RichMail) with SMTP id 2ef662cd01eca3a-4e0e5;
        Tue, 12 Jul 2022 13:09:14 +0800 (CST)
X-RM-TRANSID: 2ef662cd01eca3a-4e0e5
From:   Raphael-Xu <13691752556@139.com>
To:     robh+dt@kernel.org
Cc:     alsa-devel@alsa-project.org, raphael-xu@ti.com,
        shenghao-ding@ti.com, navada@ti.com, asyrus@ti.com,
        broonie@kernel.org, devicetree@vger.kernel.org,
        Raphael-Xu <13691752556@139.com>
Subject: [PATCH v5] update tas2780.yaml
Date:   Tue, 12 Jul 2022 13:08:57 +0800
Message-Id: <20220712050857.267-1-13691752556@139.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,FROM_LOCAL_DIGITS,
        FROM_LOCAL_HEX,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

1.remove unused item in DT 2.revise the format

Signed-off-by: Raphael-Xu <13691752556@139.com>
---
 .../devicetree/bindings/sound/tas2780.yaml    | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/tas2780.yaml b/Documentation/devicetree/bindings/sound/tas2780.yaml
index 5a0de0995066..21389a16fdb9 100644
--- a/Documentation/devicetree/bindings/sound/tas2780.yaml
+++ b/Documentation/devicetree/bindings/sound/tas2780.yaml
@@ -22,24 +22,29 @@ properties:
       - ti,tas2780
 
   reg:
-    maxItems: 1
-    description: |
-       I2C address of the device can be between 0x38 to 0x45.
+    description:
+       I2C address of the device can be between 0x38 to 0x3f.
+    minimum: 0x38
+    maximum: 0x3f
 
   reset-gpios:
-    maxItems: 1
     description: GPIO used to reset the device.
+    maxItems: 1
 
   interrupts:
     maxItems: 1
 
   ti,imon-slot-no:
-    $ref: /schemas/types.yaml#/definitions/uint32
     description: TDM TX current sense time slot.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 3
 
   ti,vmon-slot-no:
-    $ref: /schemas/types.yaml#/definitions/uint32
     description: TDM TX voltage sense time slot.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 3
 
   '#sound-dai-cells':
     const: 1
@@ -60,10 +65,8 @@ examples:
        compatible = "ti,tas2780";
        reg = <0x38>;
        #sound-dai-cells = <1>;
-       interrupt-parent = <&gpio1>;
        interrupts = <14>;
        reset-gpios = <&gpio1 15 0>;
-       shutdown-gpios = <&gpio1 15 0>;
        ti,imon-slot-no = <0>;
        ti,vmon-slot-no = <2>;
      };
-- 
2.35.1



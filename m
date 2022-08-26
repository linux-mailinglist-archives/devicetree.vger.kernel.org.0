Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 23A8E5A23A4
	for <lists+devicetree@lfdr.de>; Fri, 26 Aug 2022 11:00:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245267AbiHZJAH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Aug 2022 05:00:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245084AbiHZJAG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Aug 2022 05:00:06 -0400
Received: from mail.bugwerft.de (mail.bugwerft.de [46.23.86.59])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id DC06946D83
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 02:00:03 -0700 (PDT)
Received: from hq-00021.fritz.box (p57bc9b74.dip0.t-ipconnect.de [87.188.155.116])
        by mail.bugwerft.de (Postfix) with ESMTPSA id 3DDDC421361;
        Fri, 26 Aug 2022 08:59:32 +0000 (UTC)
From:   Daniel Mack <daniel@zonque.org>
To:     broonie@kernel.org, ryan.lee.analog@gmail.com
Cc:     robh+dt@kernel.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, Daniel Mack <daniel@zonque.org>
Subject: [PATCH v3 1/2] ASoC: dt-bindings: max98396: Document data monitor properties
Date:   Fri, 26 Aug 2022 10:59:26 +0200
Message-Id: <20220826085927.2336224-1-daniel@zonque.org>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This device features a data monitor that puts the device in software reset
upon a configurable set of events.

Signed-off-by: Daniel Mack <daniel@zonque.org>
---
v1 -> v2: fix a typo and remove a stray blank line
v2 -> v3: Rename device tree properties, drop $ref for standard unit suffix properties

 .../bindings/sound/adi,max98396.yaml          | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/adi,max98396.yaml b/Documentation/devicetree/bindings/sound/adi,max98396.yaml
index 8d2ef991db40..7985b1410017 100644
--- a/Documentation/devicetree/bindings/sound/adi,max98396.yaml
+++ b/Documentation/devicetree/bindings/sound/adi,max98396.yaml
@@ -78,6 +78,40 @@ properties:
       interleaved on a single output channel.
     type: boolean
 
+  adi,dmon-stuck-enable:
+    description:
+      Enables the "data monitor stuck" feature. Once the data monitor is
+      enabled, it actively monitors the selected input data (from DIN) to the
+      speaker amplifier. Once a data error is detected, the data monitor
+      automatically places the device into software shutdown.
+    type: boolean
+
+  adi,dmon-stuck-threshold-bits:
+    description:
+      Sets the threshold for the "data monitor stuck" feature, in bits.
+    enum: [9, 11, 13, 15]
+    default: 15
+
+  adi,dmon-magnitude-enable:
+    description:
+      Enables the "data monitor magnitude" feature. Once the data monitor is
+      enabled, it actively monitors the selected input data (from DIN) to the
+      speaker amplifier. Once a data error is detected, the data monitor
+      automatically places the device into software shutdown.
+    type: boolean
+
+  adi,dmon-magnitude-threshold-bits:
+    description:
+      Sets the threshold for the "data monitor magnitude" feature, in bits.
+    enum: [2, 3, 4, 5]
+    default: 5
+
+  adi,dmon-duration-ms:
+    description:
+      Sets the duration for the "data monitor" feature, in milliseconds.
+    enum: [64, 256, 1024, 4096]
+    default: 64
+
   reset-gpios:
     maxItems: 1
 
-- 
2.37.2


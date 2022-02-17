Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E34B44BA763
	for <lists+devicetree@lfdr.de>; Thu, 17 Feb 2022 18:44:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232186AbiBQRo1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Feb 2022 12:44:27 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:56548 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231926AbiBQRo0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Feb 2022 12:44:26 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BA35286B47
        for <devicetree@vger.kernel.org>; Thu, 17 Feb 2022 09:44:10 -0800 (PST)
Received: from tr.lan (ip-89-176-112-137.net.upcbroadband.cz [89.176.112.137])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id EBD1C810EC;
        Thu, 17 Feb 2022 18:44:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1645119848;
        bh=IfaXgzn4UrNHevpzvenWzISoe0ZjLnZdRwibxrhVT64=;
        h=From:To:Cc:Subject:Date:From;
        b=zIJKEEQpp2roke2vuTRPuY4suf4pu9xwjFYkhaTWwZn/K3sfTXgJV93olTyJ8Xujr
         co7qrSMzq4PL6EJXu9Q8gV1q6LC2qD+9SUvjrvJreSdpNmFfXKVJZWrG/Z5jmuDrri
         U7MF4y8SzTtfNTWiMPXT2uNV5auYX+kL+nHBWvbVEBm/b/Xx5BfMqN+nllRODJsJKm
         6RDhthXKZV2cVXiwWBEKWaQmPzIcn4AALXYSkIUuwyZf/yfnTUv10zuWWWe41N9uSP
         CvuIOigH8+nzefo2CbXRH2icXttoEXQYFTYAy1GMDjC5nK6YdiSkLXN/kodYclUtFg
         vsUJfJCAowqYg==
From:   Marek Vasut <marex@denx.de>
To:     devicetree@vger.kernel.org
Cc:     Marek Vasut <marex@denx.de>,
        Jacek Anaszewski <jacek.anaszewski@gmail.com>,
        Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2] dt-bindings: leds: Document mmc trigger
Date:   Thu, 17 Feb 2022 18:43:57 +0100
Message-Id: <20220217174357.13427-1-marex@denx.de>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The mmc subsystem supports triggering leds on card activity, document
the trigger value here. The value is a pattern in this case.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Cc: Pavel Machek <pavel@ucw.cz>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
To: linux-leds@vger.kernel.org
---
V2: Rebase on next-20220217
---
 .../devicetree/bindings/leds/common.yaml      | 39 ++++++++++---------
 1 file changed, 21 insertions(+), 18 deletions(-)

diff --git a/Documentation/devicetree/bindings/leds/common.yaml b/Documentation/devicetree/bindings/leds/common.yaml
index 328952d7acbbc..3c14a98430e19 100644
--- a/Documentation/devicetree/bindings/leds/common.yaml
+++ b/Documentation/devicetree/bindings/leds/common.yaml
@@ -79,24 +79,27 @@ properties:
       the LED.
     $ref: /schemas/types.yaml#/definitions/string
 
-    enum:
-        # LED will act as a back-light, controlled by the framebuffer system
-      - backlight
-        # LED will turn on (but for leds-gpio see "default-state" property in
-        # Documentation/devicetree/bindings/leds/leds-gpio.yaml)
-      - default-on
-        # LED "double" flashes at a load average based rate
-      - heartbeat
-        # LED indicates disk activity
-      - disk-activity
-        # LED indicates IDE disk activity (deprecated), in new implementations
-        # use "disk-activity"
-      - ide-disk
-        # LED flashes at a fixed, configurable rate
-      - timer
-        # LED alters the brightness for the specified duration with one software
-        # timer (requires "led-pattern" property)
-      - pattern
+    oneOf:
+      - enum:
+            # LED will act as a back-light, controlled by the framebuffer system
+          - backlight
+            # LED will turn on (but for leds-gpio see "default-state" property in
+            # Documentation/devicetree/bindings/leds/leds-gpio.yaml)
+          - default-on
+            # LED "double" flashes at a load average based rate
+          - heartbeat
+            # LED indicates disk activity
+          - disk-activity
+            # LED indicates IDE disk activity (deprecated), in new implementations
+            # use "disk-activity"
+          - ide-disk
+            # LED flashes at a fixed, configurable rate
+          - timer
+            # LED alters the brightness for the specified duration with one software
+            # timer (requires "led-pattern" property)
+          - pattern
+        # LED is triggered by SD/MMC activity
+      - pattern: "^mmc[0-9]+$"
 
   led-pattern:
     description: |
-- 
2.34.1


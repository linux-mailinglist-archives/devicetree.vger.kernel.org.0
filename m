Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C1FEF507C17
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 23:48:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345625AbiDSVvS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Apr 2022 17:51:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42536 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343747AbiDSVvS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Apr 2022 17:51:18 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id BD5423FDA1
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 14:48:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1650404913;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=Ao+QLGVykP8whEqJzniS6nnN6H0GlmSyDd2RtpQtg0Q=;
        b=BXVTcRosZrx2lav1jfMAQAHX7uAkvl3P5wZaX7RU8NegtxsHmUzVVqTEdNcXNY3ZpWV0Zi
        8Y+l5K6grNrzj0J/1cm3ae1M33OPOcUBtIBsqx2V0mjByUURtsOH6xf6V34oUQIjS0WDVZ
        GBg4tCdqLenCex+IFoVzqnp+YPDWTrM=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-551-GtJKu-HONN6fKV94IU-vAg-1; Tue, 19 Apr 2022 17:48:32 -0400
X-MC-Unique: GtJKu-HONN6fKV94IU-vAg-1
Received: by mail-wm1-f72.google.com with SMTP id r9-20020a1c4409000000b0038ff033b654so438723wma.0
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 14:48:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ao+QLGVykP8whEqJzniS6nnN6H0GlmSyDd2RtpQtg0Q=;
        b=pvy7Cn8VtK0Y4XYhhg2JmMnQiMyfzVn9hQuK7FIsi/aBrm9bUL2dtPpgDkrbSZSyMu
         FTDYwf6D/FzyX4N0z1zeuALzfqyO/CC6P/oFfYdvLwXSfjwy0SosMSLuDVlQVG5XDYwH
         y6NheXlElTEwmD81f4TfOm4l16hT0zdBDE4hlOBWNCGioF06HLrAQjBwoRVJC04Y3OYs
         k4ohFGlvdny+s/uUYcvnQe/hThpZckpgZJB51dGTQj6/F8WhP5w0Gk37Uk2BMQ/Vr8UF
         xMS3HcZsqair79B3Ad2O/PtknkOtgCBs8nqaCcftErIaaaacsnUaiK01lIlSqL2s39+g
         M85w==
X-Gm-Message-State: AOAM530Qpzhar3N3o98sFFmCbZ5iTPXZP6+qtCA6jdEZBFva5DDNc05H
        zP2DMEc7kkSq2eO72dauz/jiCHUNzYfOrFX+sQyG7vUo/Abj3x95tgTCqZeWwiiIMMn8wMgV7PQ
        W25OnXcHTLA2KrieVNh6eCw==
X-Received: by 2002:a1c:7408:0:b0:38e:b7af:c503 with SMTP id p8-20020a1c7408000000b0038eb7afc503mr555995wmc.58.1650404911591;
        Tue, 19 Apr 2022 14:48:31 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx1gaQ3suhLg9SEod8ZyG+DXS89puSlsOl7NF/Ht6muE6d9H9FpIgRAib149d2EYzLX5Lni2w==
X-Received: by 2002:a1c:7408:0:b0:38e:b7af:c503 with SMTP id p8-20020a1c7408000000b0038eb7afc503mr555977wmc.58.1650404911359;
        Tue, 19 Apr 2022 14:48:31 -0700 (PDT)
Received: from minerva.home ([92.176.231.205])
        by smtp.gmail.com with ESMTPSA id i7-20020a5d5587000000b00207a8cde900sm13333699wrv.19.2022.04.19.14.48.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Apr 2022 14:48:31 -0700 (PDT)
From:   Javier Martinez Canillas <javierm@redhat.com>
To:     linux-kernel@vger.kernel.org
Cc:     dri-devel@lists.freedesktop.org, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Chen-Yu Tsai <wens@kernel.org>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Javier Martinez Canillas <javierm@redhat.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v5 1/5] dt-bindings: display: ssd1307fb: Deprecate "-i2c" compatible strings
Date:   Tue, 19 Apr 2022 23:48:19 +0200
Message-Id: <20220419214824.335075-2-javierm@redhat.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220419214824.335075-1-javierm@redhat.com>
References: <20220419214824.335075-1-javierm@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The current compatible strings for SSD130x I2C controllers contain both an
"fb" and "-i2c" suffixes. It seems to indicate that are for a fbdev driver
and also that are for devices that can be accessed over an I2C bus.

But a DT is supposed to describe the hardware and not Linux implementation
details. So let's deprecate those compatible strings and add new ones that
only contain the vendor and device name, without any of these suffixes.

These will just describe the device and can be matched by both I2C and SPI
DRM drivers. The required properties should still be enforced for old ones.

While being there, just drop the "sinowealth,sh1106-i2c" compatible string
since that was never present in a released Linux version.

Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
Acked-by: Mark Brown <broonie@kernel.org>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
---

(no changes since v3)

Changes in v3:
- Drop the "sinowealth,sh1106-i2c", wasn't in a released version (Chen-Yu Tsai)
- Continue enforcing required properties for deprecated strings (Maxime Ripard)

Changes in v2:
- Drop the -i2c suffixes from the compatible strings too (Geert Uytterhoeven)

 .../bindings/display/solomon,ssd1307fb.yaml   | 44 +++++++++++++------
 1 file changed, 31 insertions(+), 13 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml b/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml
index ade61d502edd..7653b6c3fcb6 100644
--- a/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml
+++ b/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml
@@ -12,12 +12,22 @@ maintainers:
 
 properties:
   compatible:
-    enum:
-      - sinowealth,sh1106-i2c
-      - solomon,ssd1305fb-i2c
-      - solomon,ssd1306fb-i2c
-      - solomon,ssd1307fb-i2c
-      - solomon,ssd1309fb-i2c
+    oneOf:
+      # Deprecated compatible strings
+      - items:
+          - enum:
+              - solomon,ssd1305fb-i2c
+              - solomon,ssd1306fb-i2c
+              - solomon,ssd1307fb-i2c
+              - solomon,ssd1309fb-i2c
+        deprecated: true
+      - items:
+          - enum:
+              - sinowealth,sh1106
+              - solomon,ssd1305
+              - solomon,ssd1306
+              - solomon,ssd1307
+              - solomon,ssd1309
 
   reg:
     maxItems: 1
@@ -136,7 +146,7 @@ allOf:
       properties:
         compatible:
           contains:
-            const: sinowealth,sh1106-i2c
+            const: sinowealth,sh1106
     then:
       properties:
         solomon,dclk-div:
@@ -148,7 +158,9 @@ allOf:
       properties:
         compatible:
           contains:
-            const: solomon,ssd1305fb-i2c
+            enum:
+              - solomon,ssd1305-i2c
+              - solomon,ssd1305
     then:
       properties:
         solomon,dclk-div:
@@ -160,7 +172,9 @@ allOf:
       properties:
         compatible:
           contains:
-            const: solomon,ssd1306fb-i2c
+            enum:
+              - solomon,ssd1306-i2c
+              - solomon,ssd1306
     then:
       properties:
         solomon,dclk-div:
@@ -172,7 +186,9 @@ allOf:
       properties:
         compatible:
           contains:
-            const: solomon,ssd1307fb-i2c
+            enum:
+              - solomon,ssd1307-i2c
+              - solomon,ssd1307
     then:
       properties:
         solomon,dclk-div:
@@ -186,7 +202,9 @@ allOf:
       properties:
         compatible:
           contains:
-            const: solomon,ssd1309fb-i2c
+            enum:
+              - solomon,ssd1309-i2c
+              - solomon,ssd1309
     then:
       properties:
         solomon,dclk-div:
@@ -203,14 +221,14 @@ examples:
             #size-cells = <0>;
 
             ssd1307: oled@3c {
-                    compatible = "solomon,ssd1307fb-i2c";
+                    compatible = "solomon,ssd1307";
                     reg = <0x3c>;
                     pwms = <&pwm 4 3000>;
                     reset-gpios = <&gpio2 7>;
             };
 
             ssd1306: oled@3d {
-                    compatible = "solomon,ssd1306fb-i2c";
+                    compatible = "solomon,ssd1306";
                     reg = <0x3c>;
                     pwms = <&pwm 4 3000>;
                     reset-gpios = <&gpio2 7>;
-- 
2.35.1


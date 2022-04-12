Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D47A14FE5CA
	for <lists+devicetree@lfdr.de>; Tue, 12 Apr 2022 18:28:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355054AbiDLQaU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Apr 2022 12:30:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351835AbiDLQaT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Apr 2022 12:30:19 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 20E3E5D5E1
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 09:27:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1649780871;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=lNkIh3s/MmgoDL5lCW8RMnOGrRWko9L2n938dHPssSQ=;
        b=LGcewioG0DHHyGZ6yawOgYP78uIBon/eyGGtOvgCxsNfJGE7ETFCuBPRdZJTAj9sAE7Z8c
        Gp2pOoFiH2FZ28g9zE/ik521rAHHLc+1LBT4ADo4gYd2D9bWZNf0ey2tBhex5DA8t23eea
        HQXGkUcA4yCckO7q9+tJMbWXmb93Qac=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-630-MdbhuI4ONH6G517RIIIvPA-1; Tue, 12 Apr 2022 12:27:50 -0400
X-MC-Unique: MdbhuI4ONH6G517RIIIvPA-1
Received: by mail-wm1-f71.google.com with SMTP id l41-20020a05600c1d2900b0038ec007ac7fso1475052wms.4
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 09:27:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lNkIh3s/MmgoDL5lCW8RMnOGrRWko9L2n938dHPssSQ=;
        b=MALeLfHwk4ainEqA4wfdjCaZiomCZwCVBif2jyqRnWxnEakHNASrw6NsLa1zKYXMVP
         2O1Xy1GRA3rqDttWXYATccNYwnatX1JDLpvPUKXzpc9lF276DMDDknnz57VwmBGBgYsU
         Oa5OFRfNdYJVICBgmh7ACP+DU0hsCPfFgWLp0CPevcfjjvjpcRr5sRlYLnmIomrScz3o
         Q1Gu2lLGJrS2ettxM2U7F9wGO8ccTzYcvpL6mLY5ncSHKskSoKkpeyueID4LdZxTXOEf
         eKIiz6xS29z09OmI75YdM8ydVEKyBXlqPd178/Lsk5+vxhhzjfLWcTpa1BKj4fEJNyu7
         lc+g==
X-Gm-Message-State: AOAM530u4NIirZVXxkZ1pfvyOcbimbiAbeGltIoAMMgIEWKW0fY9lnHD
        Thyg3ClOPIHscOaoJTxKnlZFnaXf3xKuu58icVGyWqCo7P8zTY18Yt5trDpiU+Gg94CD13yqWsS
        zKkVccQrupx1JbZ1W5IrrvA==
X-Received: by 2002:a7b:c153:0:b0:38e:c1a6:453e with SMTP id z19-20020a7bc153000000b0038ec1a6453emr4837640wmi.131.1649780868910;
        Tue, 12 Apr 2022 09:27:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyuK57qDkY8R1p2LLEEpMuisu8JsTVLrJ82aX9dqUSkB8Bs7AwhFUi2INqI4nghMgjRBWz+Rw==
X-Received: by 2002:a7b:c153:0:b0:38e:c1a6:453e with SMTP id z19-20020a7bc153000000b0038ec1a6453emr4837621wmi.131.1649780868698;
        Tue, 12 Apr 2022 09:27:48 -0700 (PDT)
Received: from minerva.home ([92.176.231.205])
        by smtp.gmail.com with ESMTPSA id g8-20020a5d4888000000b00207a49fa6a1sm7700358wrq.81.2022.04.12.09.27.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Apr 2022 09:27:48 -0700 (PDT)
From:   Javier Martinez Canillas <javierm@redhat.com>
To:     linux-kernel@vger.kernel.org
Cc:     Geert Uytterhoeven <geert@linux-m68k.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Rob Herring <robh@kernel.org>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        dri-devel@lists.freedesktop.org, Mark Brown <broonie@kernel.org>,
        Chen-Yu Tsai <wens@kernel.org>,
        Javier Martinez Canillas <javierm@redhat.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v3 1/5] dt-bindings: display: ssd1307fb: Deprecate "-i2c" compatible strings
Date:   Tue, 12 Apr 2022 18:27:25 +0200
Message-Id: <20220412162729.184783-2-javierm@redhat.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220412162729.184783-1-javierm@redhat.com>
References: <20220412162729.184783-1-javierm@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
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


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F3FC34FFB22
	for <lists+devicetree@lfdr.de>; Wed, 13 Apr 2022 18:24:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231865AbiDMQ0s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Apr 2022 12:26:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236799AbiDMQ0r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Apr 2022 12:26:47 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 41FD82BE2
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 09:24:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1649867064;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=yuVpQPzDh+Rwb2RTdR6emxMGJ2dG4YXzHB3chPiyWZo=;
        b=gKsZOsOtHYgz2tCzzhexs9y72dEb08/SQVn9tvqHc7cH0zS6P+vXOPr1Qy7YsHcQ1HgklY
        yga+/2HOS9cAyN2t1uw1dPC2kTdcK8//WNFWgJjX84yT1oBDLXJGvBQYgueCrifduO+bd2
        FneX6JPHKdOqFEpYLb+6AhxsYVeihRY=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-643-WiZmY3HQNmqRKaef4nhINw-1; Wed, 13 Apr 2022 12:24:23 -0400
X-MC-Unique: WiZmY3HQNmqRKaef4nhINw-1
Received: by mail-wm1-f69.google.com with SMTP id g13-20020a1c4e0d000000b0038eba16aa46so970055wmh.7
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 09:24:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yuVpQPzDh+Rwb2RTdR6emxMGJ2dG4YXzHB3chPiyWZo=;
        b=Av6wzRaz7dwYfC0gpYVV5Yt+LpFXW/q8eyxYb2glvQ4vliInztHMKM953qt+EJlf1i
         Kjhk5pu/R+a+PmOdkFmuoW3Sdxex5oXG688zPla7rHEcqzSojt009N0LfXvJHb3WGBb1
         sKzTn4zX+lWoNFxMJG79YKVVDdd8zHMVBesS6yNDZ1AkyR+sTIQ0luyPO19T4HRszZUP
         eOZ5oH85UxZfbvesLJGIeN85ooTmqMXKIG5Ghr17hga8X/8F7lEuA4Z53D12olONd+IB
         S2pMtuCcDLMGzehzVTFbUiP9O/0i2lOuvjqNXmIct+iOdBhNflK6kxWYCPHpVJk57B6k
         Q+zg==
X-Gm-Message-State: AOAM531bKpHLjSt30utpue6ZOrjVpLCMThLJxDCIu3THqnNWDQceO4wx
        1i70qmpp4l35CfVve1f62AgLGodtQfz5Tc6LOqd/V6RUER1EMxN8HM9Gu0yVBrdjvclOwGHQUDO
        0GQyySbcu9J1stGesFOfjUg==
X-Received: by 2002:a05:600c:1d29:b0:38e:c4d1:a41b with SMTP id l41-20020a05600c1d2900b0038ec4d1a41bmr9497920wms.70.1649867061695;
        Wed, 13 Apr 2022 09:24:21 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyKmw84FX/JGt75DbPlGr5AZDD0foCMNRbtDmvyN2j0buGx4eZZgYEVHwxZOulmN72MmRJVDA==
X-Received: by 2002:a05:600c:1d29:b0:38e:c4d1:a41b with SMTP id l41-20020a05600c1d2900b0038ec4d1a41bmr9497897wms.70.1649867061461;
        Wed, 13 Apr 2022 09:24:21 -0700 (PDT)
Received: from minerva.home ([92.176.231.205])
        by smtp.gmail.com with ESMTPSA id t9-20020adfa2c9000000b002061561d4a7sm25446096wra.96.2022.04.13.09.24.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Apr 2022 09:24:21 -0700 (PDT)
From:   Javier Martinez Canillas <javierm@redhat.com>
To:     linux-kernel@vger.kernel.org
Cc:     Mark Brown <broonie@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Chen-Yu Tsai <wens@kernel.org>, Rob Herring <robh@kernel.org>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        dri-devel@lists.freedesktop.org,
        Javier Martinez Canillas <javierm@redhat.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v4 2/5] dt-bindings: display: ssd1307fb: Extend schema for SPI controllers
Date:   Wed, 13 Apr 2022 18:23:55 +0200
Message-Id: <20220413162359.325021-3-javierm@redhat.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220413162359.325021-1-javierm@redhat.com>
References: <20220413162359.325021-1-javierm@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Solomon SSD130x OLED displays can either have an I2C or SPI interface,
add to the schema the properties and examples for OLED devices under SPI.

Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
Acked-by: Mark Brown <broonie@kernel.org>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
---

Changes in v4:
- Add a description for the dc-gpios property for SPI (Geert Uytterhoeven)

Changes in v3:
- Add a comment to the properties required for SPI (Geert Uytterhoeven)

Changes in v2:
- Don't add compatible strings with an "-spi" suffix (Geert Uytterhoeven)

 .../bindings/display/solomon,ssd1307fb.yaml   | 42 ++++++++++++++++++-
 1 file changed, 40 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml b/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml
index 7653b6c3fcb6..3fbd87c2c120 100644
--- a/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml
+++ b/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml
@@ -38,9 +38,20 @@ properties:
   reset-gpios:
     maxItems: 1
 
+  # Only required for SPI
+  dc-gpios:
+    description:
+      GPIO connected to the controller's D/C# (Data/Command) pin,
+      that is needed for 4-wire SPI to tell the controller if the
+      data sent is for a command register or the display data RAM
+    maxItems: 1
+
   vbat-supply:
     description: The supply for VBAT
 
+  # Only required for SPI
+  spi-max-frequency: true
+
   solomon,height:
     $ref: /schemas/types.yaml#/definitions/uint32
     default: 16
@@ -220,14 +231,14 @@ examples:
             #address-cells = <1>;
             #size-cells = <0>;
 
-            ssd1307: oled@3c {
+            ssd1307_i2c: oled@3c {
                     compatible = "solomon,ssd1307";
                     reg = <0x3c>;
                     pwms = <&pwm 4 3000>;
                     reset-gpios = <&gpio2 7>;
             };
 
-            ssd1306: oled@3d {
+            ssd1306_i2c: oled@3d {
                     compatible = "solomon,ssd1306";
                     reg = <0x3c>;
                     pwms = <&pwm 4 3000>;
@@ -238,3 +249,30 @@ examples:
                     solomon,lookup-table = /bits/ 8 <0x3f 0x3f 0x3f 0x3f>;
             };
     };
+  - |
+    spi {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            ssd1307_spi: oled@0 {
+                    compatible = "solomon,ssd1307";
+                    reg = <0x0>;
+                    pwms = <&pwm 4 3000>;
+                    reset-gpios = <&gpio2 7>;
+                    dc-gpios = <&gpio2 8>;
+                    spi-max-frequency = <10000000>;
+            };
+
+            ssd1306_spi: oled@1 {
+                    compatible = "solomon,ssd1306";
+                    reg = <0x1>;
+                    pwms = <&pwm 4 3000>;
+                    reset-gpios = <&gpio2 7>;
+                    dc-gpios = <&gpio2 8>;
+                    spi-max-frequency = <10000000>;
+                    solomon,com-lrremap;
+                    solomon,com-invdir;
+                    solomon,com-offset = <32>;
+                    solomon,lookup-table = /bits/ 8 <0x3f 0x3f 0x3f 0x3f>;
+            };
+    };
-- 
2.35.1


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C764072A0F8
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 19:10:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229488AbjFIRKr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 13:10:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229454AbjFIRKm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 13:10:42 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9C33359A
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 10:09:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1686330591;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=rXfuy13isQUH9meYMWRMilnarujeOibtxjp5Z2EnlHc=;
        b=QueaOLzfaq011vSgiz156s3ulnthgprx2xESQE3VEgagBGxtKEyruk3Gn9LAuS92KseXnD
        15acIupvEoqFZHtDRtu1aCL80+WMwnn9Wyb5ICDDLdHZSsoCmGBQqkMxOpNFcqfOfO4hDk
        yCMxxMHjYzFVlgkGum34ecoQtV5EVXw=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-450-XVNZ8CscOVyirWo_J5AhgQ-1; Fri, 09 Jun 2023 13:09:49 -0400
X-MC-Unique: XVNZ8CscOVyirWo_J5AhgQ-1
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-3f725f64b46so32544445e9.1
        for <devicetree@vger.kernel.org>; Fri, 09 Jun 2023 10:09:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686330588; x=1688922588;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rXfuy13isQUH9meYMWRMilnarujeOibtxjp5Z2EnlHc=;
        b=SLrJZbjjSmRNp8vIS42Q/jd41IxcqZ57y0bjMwu3imwsp75hPQxgR0C7cqcVuWFIL8
         yFP/N7T7f4FZ+oLCvrpCEvEysuZBFPKpNQw8OAkXuupdD8h8vPulC3mwyLiUvkuG+t/2
         rrg9evxThPEv6yYuuO9F6aHplyEeX7eEna9dBW1v0rKmkwsTWjmEVYJIoqHd8fuupt76
         XJD+28lI+LNTY4thrIzIxHH4O6P76IYBH9vs3C4VgRQs8Lr+xm5KwIE1QqyfGk+i6W5L
         852rXFQ235WlnuM3+gLhrV/oU/COw/FS7uwF+yzBAfh75Zv2DrZuuOZw5yqfksZKFtfL
         nCZg==
X-Gm-Message-State: AC+VfDzaIvEfogEKbl9AVYGwb5cr8jb+JP/KZjnno4HOeWVQA494nXpZ
        CrzvKGnDqvoEgsK/lKWFp1w9My2nIEztaIIRk9tneDrj+ROX0FEtq+230gIVFJUOUEYGetqOh61
        O1eU/DA94K7yCxc6zGr7Vtw==
X-Received: by 2002:a05:600c:2297:b0:3f7:f544:4993 with SMTP id 23-20020a05600c229700b003f7f5444993mr1713190wmf.20.1686330588008;
        Fri, 09 Jun 2023 10:09:48 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ6STR4rSMJ97Fa6ojZrAiLQzs8ABi6NesLIiXyu3/dui4psE2W6fWMsDJ7gQ5OE2xe5JNQ5zQ==
X-Received: by 2002:a05:600c:2297:b0:3f7:f544:4993 with SMTP id 23-20020a05600c229700b003f7f5444993mr1713180wmf.20.1686330587766;
        Fri, 09 Jun 2023 10:09:47 -0700 (PDT)
Received: from minerva.home (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id c21-20020a05600c0ad500b003f7310a3ffasm3265526wmr.2.2023.06.09.10.09.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jun 2023 10:09:47 -0700 (PDT)
From:   Javier Martinez Canillas <javierm@redhat.com>
To:     linux-kernel@vger.kernel.org
Cc:     Geert Uytterhoeven <geert@linux-m68k.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Maxime Ripard <mripard@kernel.org>,
        Javier Martinez Canillas <javierm@redhat.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org
Subject: [PATCH v2 2/5] dt-bindings: display: ssd1307fb: Remove default width and height values
Date:   Fri,  9 Jun 2023 19:09:37 +0200
Message-Id: <20230609170941.1150941-3-javierm@redhat.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230609170941.1150941-1-javierm@redhat.com>
References: <20230609170941.1150941-1-javierm@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

A default resolution in the ssd130x driver isn't set to an arbitrary 96x16
anymore. Instead is set to a width and height that's controller dependent.

The datasheets for the chips describes the following display resolutions:

 - SH1106:  132 x 64 Dot Matrix OLED/PLED
 - SSD1305: 132 x 64 Dot Matrix OLED/PLED
 - SSD1306: 128 x 64 Dot Matrix OLED/PLED
 - SSD1307: 128 x 39 Dot Matrix OLED/PLED
 - SSD1309: 128 x 64 Dot Matrix OLED/PLED

Update DT schema to reflect what the driver does and make its users aware.

Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
Reviewed-by: Thomas Zimmermann <tzimmermann@suse.de>
---

Changes in v2:
- List per controller default width/height values in DT schema (Maxime Ripard).

 .../bindings/display/solomon,ssd1307fb.yaml   | 28 ++++++++++++++++---
 1 file changed, 24 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml b/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml
index 94bb5ef567c6..20e2bd15d4d2 100644
--- a/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml
+++ b/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml
@@ -49,15 +49,15 @@ properties:
 
   solomon,height:
     $ref: /schemas/types.yaml#/definitions/uint32
-    default: 16
     description:
-      Height in pixel of the screen driven by the controller
+      Height in pixel of the screen driven by the controller.
+      The default value is controller-dependent.
 
   solomon,width:
     $ref: /schemas/types.yaml#/definitions/uint32
-    default: 96
     description:
-      Width in pixel of the screen driven by the controller
+      Width in pixel of the screen driven by the controller.
+      The default value is controller-dependent.
 
   solomon,page-offset:
     $ref: /schemas/types.yaml#/definitions/uint32
@@ -157,6 +157,10 @@ allOf:
             const: sinowealth,sh1106
     then:
       properties:
+        width:
+          default: 132
+        height:
+          default: 64
         solomon,dclk-div:
           default: 1
         solomon,dclk-frq:
@@ -171,6 +175,10 @@ allOf:
               - solomon,ssd1305
     then:
       properties:
+        width:
+          default: 132
+        height:
+          default: 64
         solomon,dclk-div:
           default: 1
         solomon,dclk-frq:
@@ -185,6 +193,10 @@ allOf:
               - solomon,ssd1306
     then:
       properties:
+        width:
+          default: 128
+        height:
+          default: 64
         solomon,dclk-div:
           default: 1
         solomon,dclk-frq:
@@ -199,6 +211,10 @@ allOf:
               - solomon,ssd1307
     then:
       properties:
+        width:
+          default: 128
+        height:
+          default: 39
         solomon,dclk-div:
           default: 2
         solomon,dclk-frq:
@@ -215,6 +231,10 @@ allOf:
               - solomon,ssd1309
     then:
       properties:
+        width:
+          default: 128
+        height:
+          default: 64
         solomon,dclk-div:
           default: 1
         solomon,dclk-frq:
-- 
2.40.1


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C147C4FE5CD
	for <lists+devicetree@lfdr.de>; Tue, 12 Apr 2022 18:28:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1357582AbiDLQaW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Apr 2022 12:30:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1354346AbiDLQaU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Apr 2022 12:30:20 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id D4DED5D5F9
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 09:28:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1649780880;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=M///uq33RMEHTxjoVs129eG8XW6VZX+ANQltzYppS6w=;
        b=Q5jqqyk6vQxb5fRiiZp33n1YydaY4tUHbiXMYM6dS5UA0JAIpUWfNUH2tQxNIINP2e6JOr
        fogTE84jUnmLuG1daDPbDQr7rUssU4t+Fip+5y35BRcSD7Erbnc6sI/beW6bT36mYLXA+i
        C3FXCyrwpYNuISf6DDR+nZWhKha6FsY=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-339-rlam540PP4KYc5Btc8QMvg-1; Tue, 12 Apr 2022 12:27:51 -0400
X-MC-Unique: rlam540PP4KYc5Btc8QMvg-1
Received: by mail-wm1-f72.google.com with SMTP id r127-20020a1c4485000000b0038eaca2b8c9so1469776wma.7
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 09:27:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=M///uq33RMEHTxjoVs129eG8XW6VZX+ANQltzYppS6w=;
        b=5SdIpw8yMLXdb9O6EgAtXFFqRS9Nq1wRbuLVGrxP75KbQvmB91uImoV4tQFGQYiobU
         b4R0x/eRnz0QryVTKioyaRc0WfH//c2Bk5hbH7dsGFqkvEOWRoZkGs07FPbjYJMrZWIg
         D9xn4qpMGJ9Y5xBcGKlaU6Rc4hw+UOiILwZeccAPBBCa4hSjq/3CkBe5hIDfmaplbQ9I
         fx5Ij+gWRAdj7lPda6lTVeJ5uixPfZH5l28rJQtjdx/aOgP15uTjayiLp6mnkFgGv+WP
         rTrTSg7lUXwkZ63N8vOJJnRNX1P4lOEaFZLkvrXtTwjBHgrRrT+zCpEMIr1LweQprftk
         4L+A==
X-Gm-Message-State: AOAM5315LY4t60vg6jAlrphMkw1IktPO5o4ohI9DiGlJXhB2KeLC1+4s
        ZW4F4ak3mdqdzDf4AyzhSV719LXsJY5GsyiYcby1qUS5VjaFYWzFBJWkv+qGid4Bzr+518OP2Id
        N7VwJfnVKO0AeiJ7P8nneYA==
X-Received: by 2002:a05:600c:3588:b0:38c:6d7f:6fd8 with SMTP id p8-20020a05600c358800b0038c6d7f6fd8mr4795581wmq.25.1649780870425;
        Tue, 12 Apr 2022 09:27:50 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzryxA9KF33Y/kGHkOm+XLc/HDsLdgWiUOLZYjTIDFY5X+9rR3gPvbvCQWHVPnx1wiijk1LQQ==
X-Received: by 2002:a05:600c:3588:b0:38c:6d7f:6fd8 with SMTP id p8-20020a05600c358800b0038c6d7f6fd8mr4795565wmq.25.1649780870214;
        Tue, 12 Apr 2022 09:27:50 -0700 (PDT)
Received: from minerva.home ([92.176.231.205])
        by smtp.gmail.com with ESMTPSA id g8-20020a5d4888000000b00207a49fa6a1sm7700358wrq.81.2022.04.12.09.27.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Apr 2022 09:27:49 -0700 (PDT)
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
Subject: [PATCH v3 2/5] dt-bindings: display: ssd1307fb: Extend schema for SPI controllers
Date:   Tue, 12 Apr 2022 18:27:26 +0200
Message-Id: <20220412162729.184783-3-javierm@redhat.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220412162729.184783-1-javierm@redhat.com>
References: <20220412162729.184783-1-javierm@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
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

Changes in v3:
- Add a comment to the properties required for SPI (Geert Uytterhoeven)

Changes in v2:
- Don't add compatible strings with an "-spi" suffix (Geert Uytterhoeven)

 .../bindings/display/solomon,ssd1307fb.yaml   | 38 ++++++++++++++++++-
 1 file changed, 36 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml b/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml
index 7653b6c3fcb6..7d7de92df86f 100644
--- a/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml
+++ b/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml
@@ -38,9 +38,16 @@ properties:
   reset-gpios:
     maxItems: 1
 
+  # Only required for SPI
+  dc-gpios:
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
@@ -220,14 +227,14 @@ examples:
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
@@ -238,3 +245,30 @@ examples:
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


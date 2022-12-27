Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 67BB66569B6
	for <lists+devicetree@lfdr.de>; Tue, 27 Dec 2022 12:05:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229550AbiL0LE7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Dec 2022 06:04:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231414AbiL0LEg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Dec 2022 06:04:36 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD664A452
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 03:03:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1672139025;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=woUir0Lts/Iv/2E8U+LoYyfYL4VWI99Q3r6CZZFNa7I=;
        b=MrTefwFox8HEi0pMV3lYHx6I5M5/ZUXHasnWPONPmmgjlIPi4GG4bBOXbvrAM3oU6WGzOQ
        mK1CrU2zx73FyY4Pk7PbruBiHLTD5IddkU0pB13TdJ6Y9mhJjBmpP6RCx6+bOEohoqE6gy
        tkGdoW+58M8Bg5ms43muBmwX1r+eYpg=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-224-It2v04OHOqOAyawxce8Siw-1; Tue, 27 Dec 2022 06:03:42 -0500
X-MC-Unique: It2v04OHOqOAyawxce8Siw-1
Received: by mail-wm1-f72.google.com with SMTP id c7-20020a1c3507000000b003d355c13ba8so6770320wma.6
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 03:03:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=woUir0Lts/Iv/2E8U+LoYyfYL4VWI99Q3r6CZZFNa7I=;
        b=xpVXXPvzD/GbOe8acIOYkrD18aho430o1w0/VV3McjejGBNlfBBg9JnmhQQWGiz/c7
         efHX3bqVuiGGS69UKNQSw6pII5Pd8aD/Zfa/4m7EEFB0/uKxIDkcxAOyuRjXVUDnrs37
         zHvYvm4h9QQOngDUJyi6Jm7v+E3s6m5cCygwxqoCTSL3JEvPcV81bON3ZYS7L5QYf2R/
         rlGbn4QGeHrYWgo242Y5+SLSr3MgVZV+MfJMllW8ZLUeLNfHbihvclDMS3/xscase/ys
         ire9nMjFo6cQ3Lyp4tflzr3IfWjBV/xcbEgQAydbsAiIkjgJB3N63h5OzUfbTtMA8Lwr
         aiJw==
X-Gm-Message-State: AFqh2ko1aHdeFFuiuChQUk6vfDHukkzaoOkum8w1tGcuP9I8Sq8NXLD7
        tPyhrA1FcMokzVO/qx9D3iNGrC14DPZNC44Gkn5ubOqXTOLS6juXaZtBZMjuHpgWAuOcFBSQP57
        GS9PvPh4yzdoP60lgqB7z8Q==
X-Received: by 2002:adf:e283:0:b0:242:324e:b3d with SMTP id v3-20020adfe283000000b00242324e0b3dmr12664689wri.1.1672139021659;
        Tue, 27 Dec 2022 03:03:41 -0800 (PST)
X-Google-Smtp-Source: AMrXdXu7zMUDKll3qV0ZETnVhuW7RvKZ8fTiq1amBtPxkYibGhjX8ph/GklBGnF4PA+Z7Kdki684zg==
X-Received: by 2002:adf:e283:0:b0:242:324e:b3d with SMTP id v3-20020adfe283000000b00242324e0b3dmr12664672wri.1.1672139021448;
        Tue, 27 Dec 2022 03:03:41 -0800 (PST)
Received: from minerva.home (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id p18-20020a056000019200b00279d23574c4sm7374557wrx.13.2022.12.27.03.03.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Dec 2022 03:03:41 -0800 (PST)
From:   Javier Martinez Canillas <javierm@redhat.com>
To:     linux-kernel@vger.kernel.org
Cc:     Peter Robinson <pbrobinson@gmail.com>,
        Martijn Braam <martijn@brixit.nl>,
        Maya Matuszczyk <maccraft123mc@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Neal Gompa <ngompa13@gmail.com>,
        =?UTF-8?q?Kamil=20Trzci=C5=84ski?= <ayufan@ayufan.eu>,
        Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Robert Mader <robert.mader@posteo.de>,
        Onuralp Sezer <thunderbirdtr@fedoraproject.org>,
        Ondrej Jirman <megi@xff.cz>, dri-devel@lists.freedesktop.org,
        Javier Martinez Canillas <javierm@redhat.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org
Subject: [PATCH v3 1/4] dt-bindings: display: Add Himax HX8394 panel controller
Date:   Tue, 27 Dec 2022 12:03:32 +0100
Message-Id: <20221227110335.2923359-2-javierm@redhat.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221227110335.2923359-1-javierm@redhat.com>
References: <20221227110335.2923359-1-javierm@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add device tree bindings for panels based on the Himax HX8394 controller,
such as the HannStar HSD060BHW4 720x1440 TFT LCD panel that is connected
through a MIPI-DSI video interface.

Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

Changes in v3:
- Fix example snippet for `make dt_binding_check` to pass (Krzysztof Kozlowski).

Changes in v2:
- Drop redundant "bindings" in subject (Krzysztof Kozlowski).
- Drop "device tree bindings" in title (Krzysztof Kozlowski).
- Put port next to other "true" properties (Krzysztof Kozlowski).
- Add Krzysztof Kozlowski's Reviewed-by tag.

 .../bindings/display/panel/himax,hx8394.yaml  | 74 +++++++++++++++++++
 1 file changed, 74 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml b/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml
new file mode 100644
index 000000000000..fb1981cacfc8
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml
@@ -0,0 +1,74 @@
+# SPDX-License-Identifier: (GPL-2.0-only or BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/himax,hx8394.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Himax HX8394 MIPI-DSI LCD panel controller
+
+maintainers:
+  - Javier Martinez Canillas <javierm@redhat.com>
+
+description:
+  Device tree bindings for panels based on the Himax HX8394 controller,
+  such as the HannStar HSD060BHW4 720x1440 TFT LCD panel connected with
+  a MIPI-DSI video interface.
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    enum:
+      # HannStar HSD060BHW4 5.99" 720x1440 TFT LCD panel
+      - hannstar,hsd060bhw4
+
+  reg: true
+
+  reset-gpios: true
+
+  backlight: true
+
+  port: true
+
+  vcc-supply:
+    description: Panel power supply
+
+  iovcc-supply:
+    description: I/O voltage supply
+
+required:
+  - compatible
+  - reg
+  - reset-gpios
+  - backlight
+  - port
+  - vcc-supply
+  - iovcc-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    dsi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        panel@0 {
+            compatible = "hannstar,hsd060bhw4";
+            reg = <0>;
+            vcc-supply = <&reg_2v8_p>;
+            iovcc-supply = <&reg_1v8_p>;
+            reset-gpios = <&gpio3 13 GPIO_ACTIVE_LOW>;
+            backlight = <&backlight>;
+
+            port {
+                mipi_in_panel: endpoint {
+                    remote-endpoint = <&mipi_out_panel>;
+                };
+            };
+        };
+    };
+
+...
-- 
2.38.1


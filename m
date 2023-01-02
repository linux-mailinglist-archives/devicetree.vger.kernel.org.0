Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 70CF165B812
	for <lists+devicetree@lfdr.de>; Tue,  3 Jan 2023 00:08:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229603AbjABXIa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Jan 2023 18:08:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232975AbjABXI2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Jan 2023 18:08:28 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 479746251
        for <devicetree@vger.kernel.org>; Mon,  2 Jan 2023 15:07:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1672700862;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=obzoow7q7hWkNtg/GehYspcHRTm+nOjVwnTgRK9uS/E=;
        b=ZsLmjGh6OvGRUUOO9nkG70WN7VQY/xGmtkmK4M6CQms9qz5U1a9Cg6EOQLKeRNR/nUM0Om
        AkzAbCOFwnWqGcblOmRChsLlslz8Gdu+P1B14QRbiv5FodXIgJpctFkWw93iqj+aTun1Iu
        5k+2qU7y3peuQWYaGjMKNoWZ3MZUFxM=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-624-rzvYyRWqNXa0TRFRB4qyUA-1; Mon, 02 Jan 2023 18:07:40 -0500
X-MC-Unique: rzvYyRWqNXa0TRFRB4qyUA-1
Received: by mail-wm1-f72.google.com with SMTP id c23-20020a7bc857000000b003d97c8d4935so11378180wml.8
        for <devicetree@vger.kernel.org>; Mon, 02 Jan 2023 15:07:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=obzoow7q7hWkNtg/GehYspcHRTm+nOjVwnTgRK9uS/E=;
        b=2q+ul/XOjFTxkl8iXu0Xasbq2kmuueJ7MvJK3f+oQRiVL3l+q3upLhoJo2fCWlLLh8
         O426knNJO4Wx157fUuB4MLaDrm+EaXDbqS3enEZdyLTXtCbJ17FJ+O0kG+9DUCbvqJ7S
         R0v5AepTpar7gBNfoCp4HC0lRGFa6rDzHWWx3uNOf7KD4cyirba1CmphlvHens/trJDn
         U8aOZW9amjKFBUCQ6xNpTAswJnCOkOZtH3GfsB8uHn54FNykPZ38N3lSzHd4A4p//opd
         scYjen4/FfTVUC1FIhCWiUFgVAe7x/sUyH04oSFGP/+FS5gMEZVzs4nAx74lHjsT+cIs
         v6tw==
X-Gm-Message-State: AFqh2kp4VqPwZjha9C84gS7bNc5uxxBs10/Qcrij+bXCUP6WvL74rb8a
        cguP2+mBhXmSggL2JA1qHAdvv8afdQLwCluEAFm5YapuWp5oRlymPH8/irdXHW6bpuJxVsSgkyq
        faSxCt4+Qj1Q9lte/mxXcIA==
X-Received: by 2002:a5d:4d50:0:b0:242:7fdb:923b with SMTP id a16-20020a5d4d50000000b002427fdb923bmr23621905wru.59.1672700859780;
        Mon, 02 Jan 2023 15:07:39 -0800 (PST)
X-Google-Smtp-Source: AMrXdXvtjNaoQfhNkTsnfslbEr2dpmDZ3226Di9u0vHV4w4FHb+3Vt39i56vGxyttsbxwAAIkBW3Lw==
X-Received: by 2002:a5d:4d50:0:b0:242:7fdb:923b with SMTP id a16-20020a5d4d50000000b002427fdb923bmr23621899wru.59.1672700859588;
        Mon, 02 Jan 2023 15:07:39 -0800 (PST)
Received: from minerva.home (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id h10-20020a5d4fca000000b00281eab50380sm22746906wrw.117.2023.01.02.15.07.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Jan 2023 15:07:39 -0800 (PST)
From:   Javier Martinez Canillas <javierm@redhat.com>
To:     linux-kernel@vger.kernel.org
Cc:     Robert Mader <robert.mader@posteo.de>,
        Onuralp Sezer <thunderbirdtr@fedoraproject.org>,
        Martijn Braam <martijn@brixit.nl>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        linux-arm-kernel@lists.infradead.org,
        =?UTF-8?q?Kamil=20Trzci=C5=84ski?= <ayufan@ayufan.eu>,
        dri-devel@lists.freedesktop.org,
        Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
        Ondrej Jirman <megi@xff.cz>, Neal Gompa <ngompa13@gmail.com>,
        Peter Robinson <pbrobinson@gmail.com>,
        Maya Matuszczyk <maccraft123mc@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Javier Martinez Canillas <javierm@redhat.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org
Subject: [PATCH v5 1/3] dt-bindings: display: Add Himax HX8394 panel controller
Date:   Tue,  3 Jan 2023 00:07:31 +0100
Message-Id: <20230102230733.3506624-2-javierm@redhat.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230102230733.3506624-1-javierm@redhat.com>
References: <20230102230733.3506624-1-javierm@redhat.com>
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

Changes in v5:
- List Ondrej Jirman as a maintainer in the DT binding schema document.

Changes in v4:
- Add fallback "himax,hx8394" compatible for the panel controller (Jagan Teki).

Changes in v3:
- Fix example snippet for `make dt_binding_check` to pass (Krzysztof Kozlowski).

Changes in v2:
- Drop redundant "bindings" in subject (Krzysztof Kozlowski).
- Drop "device tree bindings" in title (Krzysztof Kozlowski).
- Put port next to other "true" properties (Krzysztof Kozlowski).
- Add Krzysztof Kozlowski's Reviewed-by tag.

 .../bindings/display/panel/himax,hx8394.yaml  | 76 +++++++++++++++++++
 1 file changed, 76 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml b/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml
new file mode 100644
index 000000000000..1b2a1baa26f9
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml
@@ -0,0 +1,76 @@
+# SPDX-License-Identifier: (GPL-2.0-only or BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/himax,hx8394.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Himax HX8394 MIPI-DSI LCD panel controller
+
+maintainers:
+  - Ondrej Jirman <megi@xff.cz>
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
+    items:
+      - enum:
+          - hannstar,hsd060bhw4
+      - const: himax,hx8394
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
+            compatible = "hannstar,hsd060bhw4", "himax,hx8394";
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


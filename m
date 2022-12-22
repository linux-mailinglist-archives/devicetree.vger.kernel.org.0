Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C6A965489F
	for <lists+devicetree@lfdr.de>; Thu, 22 Dec 2022 23:39:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235771AbiLVWjh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Dec 2022 17:39:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235773AbiLVWjf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Dec 2022 17:39:35 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9EE9E22BF8
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 14:38:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1671748726;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=bwxYSowsUOVXzzYlhvfbTb6mQSaIuo8BKUhLeaVJXnY=;
        b=BxBcJJi8/bdUh00PppcPRFjfJg9QPPvonb5Uin2qRfgKh0qswGm6NenmWibk96Lmo+bvSj
        TPfDv/zdasbLibDGdE0xLVeT5RPliUXy3Jfw2wDPQM1om32dXR/3mMNKvjLYUxcSVUEp4H
        kyZDwYBt1Qd8z0gg5Ka+GFd9+bnpvRw=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-61-Yb6u4u_9OTqbRMfsqmF98g-1; Thu, 22 Dec 2022 17:38:45 -0500
X-MC-Unique: Yb6u4u_9OTqbRMfsqmF98g-1
Received: by mail-wr1-f70.google.com with SMTP id u9-20020adfa189000000b00242121eebe2so744019wru.3
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 14:38:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bwxYSowsUOVXzzYlhvfbTb6mQSaIuo8BKUhLeaVJXnY=;
        b=rHdlhT3RPjWPoZc8DplrrDjRpG8KpUi042Nd4YRV3wMNtQU5/QPyRkUupmMWXYPmMl
         Y1lr9aeVCQ6o73FSlCMbpSONzjN4kBPZn1DfjuW1ALPSe0NQDOpzE/YI2v9QsawFcyav
         zee4M1q0aDqRTJzA1g156YBmD3/XlX0u8YZrzUVPyZvLYCOcQCXFoWfL2Pfu6EM1Vw8P
         N86z0nasaOAXK6QDUh+k1Gmo0lbN00NaXO8LQy5FHi/Mm2/H/Plzr9/S5ZnEwjnBANdL
         nJouTUSqEEM0ypmRQN4UH6Uq2O3KYKex5bsLEC32/mbL2VjldSN8OtWHHujOvOIrFnho
         M5NA==
X-Gm-Message-State: AFqh2koRUQMVxrXJilsA/3hTssA7PRdyuWePr0CO0smejIHODkPQUadC
        e0ThTPO4H5q91tYd87NXcq5JUpdhsASc54OyOnJWn+7EYXkT0HcP7bIiPv3f87bR7aMdLxZ3HoT
        gVO7orHbDbjlEhPsqpWBzEw==
X-Received: by 2002:a05:600c:1f12:b0:3d2:267d:64bd with SMTP id bd18-20020a05600c1f1200b003d2267d64bdmr6313204wmb.3.1671748724360;
        Thu, 22 Dec 2022 14:38:44 -0800 (PST)
X-Google-Smtp-Source: AMrXdXtj1GOClBqgj08o5W4U34PiMnriSuW9A874fwaAVPy8exsgnTQ+N7dR0zR/XVRxgoDUmZD9nw==
X-Received: by 2002:a05:600c:1f12:b0:3d2:267d:64bd with SMTP id bd18-20020a05600c1f1200b003d2267d64bdmr6313197wmb.3.1671748724177;
        Thu, 22 Dec 2022 14:38:44 -0800 (PST)
Received: from minerva.home (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id n25-20020a7bc5d9000000b003d969a595fbsm2386239wmk.10.2022.12.22.14.38.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Dec 2022 14:38:43 -0800 (PST)
From:   Javier Martinez Canillas <javierm@redhat.com>
To:     linux-kernel@vger.kernel.org
Cc:     Ondrej Jirman <megi@xff.cz>, Robert Mader <robert.mader@posteo.de>,
        Peter Robinson <pbrobinson@gmail.com>,
        =?UTF-8?q?Kamil=20Trzci=C5=84ski?= <ayufan@ayufan.eu>,
        Martijn Braam <martijn@brixit.nl>,
        Javier Martinez Canillas <javierm@redhat.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: [PATCH 2/4] dt-bindings: display: Add Himax HX8394 panel controller bindings
Date:   Thu, 22 Dec 2022 23:38:28 +0100
Message-Id: <20221222223830.2494900-3-javierm@redhat.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221222223830.2494900-1-javierm@redhat.com>
References: <20221222223830.2494900-1-javierm@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=ham
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
---

 .../bindings/display/panel/himax,hx8394.yaml  | 68 +++++++++++++++++++
 1 file changed, 68 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml b/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml
new file mode 100644
index 000000000000..a8084e95f2fe
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml
@@ -0,0 +1,68 @@
+# SPDX-License-Identifier: (GPL-2.0-only or BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/himax,hx8394.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Himax HX8394 MIPI-DSI LCD panel controller device tree bindings
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
+  port: true
+  reg:
+    maxItems: 1
+    description: DSI virtual channel
+
+  vcc-supply:
+    description: Panel power supply
+
+  iovcc-supply:
+    description: I/O voltage supply
+
+  reset-gpios: true
+
+  backlight: true
+
+required:
+  - compatible
+  - reg
+  - vcc-supply
+  - iovcc-supply
+  - reset-gpios
+  - backlight
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
+        };
+    };
+
+...
-- 
2.38.1


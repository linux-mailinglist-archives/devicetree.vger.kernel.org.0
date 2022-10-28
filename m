Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D1D9611BD2
	for <lists+devicetree@lfdr.de>; Fri, 28 Oct 2022 22:50:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229920AbiJ1UuW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 16:50:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229819AbiJ1UuU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 16:50:20 -0400
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E3423C8C1
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 13:50:17 -0700 (PDT)
Received: by mail-ot1-x32e.google.com with SMTP id v40-20020a056830092800b00661e37421c2so3646034ott.3
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 13:50:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oVTQdW/tfDHRh/TCdE4iVdi/g1MuzKivPgDmxM+3q+A=;
        b=kxmEUxwY93dZM/R2RJIk2GfdCKBU8jjUPE1wgYiRp6fXyNRme4G9Rn/D0orL/U2F4m
         T3o9hWzBI8Umn+AGORmwsGrrerMXHavJZKc3chNsokJzznF5kZm74YwyNRdiCF99y6bf
         uJUtj0cZvJLJnC/9YPFlASiz1l5hSyMf247MjO6mgZb+lWiZfZMSCnshQkRUrHKQww2/
         39PGgXdUt6qBjMfWVgDQ2OUUYxcyjrORXqEMTpBqL1+NPZgOMYsxrLhZQi7uOWqHIfTA
         6gyFiASITXvnIzpwvgk5Le5NhsVEMim4xCRhG2p5ADoOdNATzTA69xqKrYyjNIXusQUj
         kB0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oVTQdW/tfDHRh/TCdE4iVdi/g1MuzKivPgDmxM+3q+A=;
        b=Se79uhapUMxoN5i6Tgn0neYdBTQBxFuB6O0A7vaFMTJr4uDMrqppkA0o/qDm+qIXah
         ZUw7uhxst38+F43Tm30dEEuTk2ZJF6g2Ayf5826KDuGf5+MwnuLNvYK7IPnxfjjZq2Ix
         ghUoAPjEL/ySenJMSXgc3GwXrvcVKKInm8HP5OCYPEpmcvFJSSiJdjZPU6Bid9GIYF/n
         bcerJGWry0iLP1tD1NACT+pLp8vg6+2brZXLUGalmv1g6JrDqLfkcmmCZzbig+7dV5dx
         AJoHRyyXuTPKABVUMdBwoU2dxRU15ENgJGRwlqEWj6Mz9zx/lufzIhERUknBqKJ3O/fw
         97rQ==
X-Gm-Message-State: ACrzQf3IejZvB0fmSxTsa7E5+qLngcPInGq1+x1MUE6bRAYkhgOtCBTk
        BiALg4yWI5fMHk4qyR9F40M=
X-Google-Smtp-Source: AMsMyM55DjxTBEeR6EBqEP6z7wg+RcAzBMz79Oq0Pn3CT51ZmgAlB/oXAgUghpHwu/C903z/Y9hm4g==
X-Received: by 2002:a9d:5f82:0:b0:638:eab8:14a4 with SMTP id g2-20020a9d5f82000000b00638eab814a4mr601637oti.71.1666990216782;
        Fri, 28 Oct 2022 13:50:16 -0700 (PDT)
Received: from wintermute.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id i2-20020a056830010200b0066756fdd916sm2090778otp.68.2022.10.28.13.50.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Oct 2022 13:50:16 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, thierry.reding@gmail.com,
        sam@ravnborg.org, airlied@gmail.com, daniel@ffwll.ch,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V4 2/3] dt-bindings: display: panel: Add NewVision NV3051D bindings
Date:   Fri, 28 Oct 2022 15:50:08 -0500
Message-Id: <20221028205009.15105-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221028205009.15105-1-macroalpha82@gmail.com>
References: <20221028205009.15105-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add documentation for the NewVision NV3051D panel bindings.
Note that for the two expected consumers of this panel binding
the underlying LCD model is unknown. Name "anbernic,rg353p-panel"
is used because the hardware itself is known as "anbernic,rg353p".

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../display/panel/newvision,nv3051d.yaml      | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
new file mode 100644
index 000000000000..407de7fb5499
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/newvision,nv3051d.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NewVision NV3051D based LCD panel
+
+description: |
+  The NewVision NV3051D is a driver chip used to drive DSI panels. For now,
+  this driver only supports the 640x480 panels found in the Anbernic RG353
+  based devices.
+
+maintainers:
+  - Chris Morgan <macromorgan@hotmail.com>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - anbernic,rg353p-panel
+          - anbernic,rg353v-panel
+      - const: newvision,nv3051d
+
+  reg: true
+  backlight: true
+  port: true
+  reset-gpios: true
+  vdd-supply: true
+
+required:
+  - compatible
+  - reg
+  - backlight
+  - vdd-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    dsi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        panel@0 {
+            compatible = "anbernic,rg353p-panel", "newvision,nv3051d";
+            reg = <0>;
+            backlight = <&backlight>;
+            reset-gpios = <&gpio4 0 GPIO_ACTIVE_LOW>;
+            vdd-supply = <&vcc3v3_lcd>;
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
2.25.1


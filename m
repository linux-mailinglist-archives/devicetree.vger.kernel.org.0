Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 316135EB10D
	for <lists+devicetree@lfdr.de>; Mon, 26 Sep 2022 21:14:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229829AbiIZTOk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 15:14:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229999AbiIZTOi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 15:14:38 -0400
Received: from mail-oa1-x2b.google.com (mail-oa1-x2b.google.com [IPv6:2001:4860:4864:20::2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4EEC2654E
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 12:14:36 -0700 (PDT)
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-1274ec87ad5so10596778fac.0
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 12:14:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=oVTQdW/tfDHRh/TCdE4iVdi/g1MuzKivPgDmxM+3q+A=;
        b=QU/NQWPJs4Q+/ftfZmS91BLZ8GdSEp1uYK0+GqH4EqFgJHXxX8jWD5VXbeNnLX1LS9
         oA5vHA5w415BV7MOQ5VVwUZo8qrDJoZjF4dHttcBSr6sQzbOvXy4i0Ia9TGhaYjNVn2T
         ixdq9SerZ06QxnKcxhCDMsT7cLqKCuPtRAgVd36Kd0GmF3/vYfRPqJY0wDcgVGxfz+N8
         s0qFYvth5kdVk+HUus4Q1ncij7WfN4s1uQell/Ck8hPa50lJwQN1vdGqK5/BjzcoA2No
         Q01cQmU/3i3B89ppyBS6Qf8KodIvgYX2B6yXU6QE9vGQ9HWVXzG7OstIdJbhYBMzx+MK
         Pbxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=oVTQdW/tfDHRh/TCdE4iVdi/g1MuzKivPgDmxM+3q+A=;
        b=v/fcPyk4fLAyZ0uuXlTCwSNql0Ab1GmqeCakFk1IW0hC2L5XWf/5MMHlxpt+3HMyqp
         c5fypjRgAzzm2dQNEdCXjCJmGfpxXQEmspiZpLxHoDEJsjN2xQJ97EpVkOPoz4aCykD/
         a13i2JwZYT9n70QmiYBmsARGvhM0ix00LY8de+fvj8zjqxFJNGPTJXM3VHi4jq4S8lFt
         u18olJU1RTbIRMejLJovJrs60i9hMHiKdrwBzgVpTNiVumfN6uZ4vtTLf48aVUyNdiqX
         ooJMyLtLwPbdMQl6MC0atergEN7dbx50P9/ExmF9UxqxxJr0CMR7GUsv8PK/typzzv7Q
         TYAw==
X-Gm-Message-State: ACrzQf2hoyrPFbKxXwNftPIXP2FlajdC5LXQ5gpuMDi/jAWQII1Hiiid
        rGC5jX0uK0AI0naDUgpwVNs=
X-Google-Smtp-Source: AMsMyM4x1iC5ARhX9zZ56d4RsEc1+FO47pCIMHBsUuT+cYLmC6WVLcRzE0kSeBWjgYBk82U+r2/myw==
X-Received: by 2002:a05:6871:88b:b0:122:84e4:ad75 with SMTP id r11-20020a056871088b00b0012284e4ad75mr117680oaq.259.1664219676033;
        Mon, 26 Sep 2022 12:14:36 -0700 (PDT)
Received: from wintermute.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id p130-20020aca4288000000b00350c5d946casm7278131oia.4.2022.09.26.12.14.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Sep 2022 12:14:35 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@gmail.com,
        sam@ravnborg.org, thierry.reding@gmail.com,
        maccraft123mc@gmail.com, Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 2/3] dt-bindings: display: panel: Add NewVision NV3051D bindings
Date:   Mon, 26 Sep 2022 14:14:27 -0500
Message-Id: <20220926191428.4801-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220926191428.4801-1-macroalpha82@gmail.com>
References: <20220926191428.4801-1-macroalpha82@gmail.com>
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


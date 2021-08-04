Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 991283DFC90
	for <lists+devicetree@lfdr.de>; Wed,  4 Aug 2021 10:14:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236070AbhHDIOf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Aug 2021 04:14:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236102AbhHDIOf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Aug 2021 04:14:35 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CC18C061798
        for <devicetree@vger.kernel.org>; Wed,  4 Aug 2021 01:14:23 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id mt6so1878798pjb.1
        for <devicetree@vger.kernel.org>; Wed, 04 Aug 2021 01:14:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=AiCWdYM0ZuktKgNCZC5+4qf0aE8KCLR1T4PJjAilY1k=;
        b=cOP3iuvbTuwfXPfmpYiijC+va2mAKLtqQU5xNviYSA4JVJ893FpamQG29NVjkl51JW
         dDeOa04GIQ/WBIxc9Yqj0tUhR5JluQMsAYiM6iAsE+SVpo59JBbpaC9MwIy0BBuXOS4a
         kwoKRE+ixWOb6wt6Nqu1LAnplok7rPs31scGr8hmXC1LV/5JazqINWZgrEMaHN3vuruy
         sOZcZVmbT6cXjngmKmAvna6vBK0PXAExRqS6JxZYJL5fFRlEnoX7+fZZA0RjBZxJzzSe
         miGj092xNv4gdwItdW/S7q7FZFRPgA4IV8qEmNkn40T5OsPbyzES9m5f9OiBQ+/iDNH6
         5H1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=AiCWdYM0ZuktKgNCZC5+4qf0aE8KCLR1T4PJjAilY1k=;
        b=f3BxbioMVsnhEewM/TfmxnicWt48MhNxD3IVe5b+EJCWOL2CCesrt5i4s7Q5SeDVTV
         m3+r/hc5lNfRzm2swQLo1m5TCbGI5n+GxfWXi4g7BgIk+JQq3It/SFDpb7uUV7KkYckN
         ZKz//RVxxC4ij+q//uVXBXF6spAK+xXg8W58s3AHSjy9F9fFuSpcXnxw2ve/rWZ4NFKP
         DHrjl8tgt3sKdQiv8WAP5fiYO3EoXQytUFVrjC++3xevfvl55rS0dOXmqjjw1XM5d5Md
         i6UcoVkx+yJvom6B+MV4teThwfpGAyYSaAB8wwuHdjQXoQ/SqGuTPiI+C27lmHVkDYvR
         ju4w==
X-Gm-Message-State: AOAM530Y0M77zjUbIVeYH76tGrPin1ar1RcEtm+p/gfbivrMlt4EYOSQ
        fc0sl4Axjh8Bl/GYUhiUCxx1tg==
X-Google-Smtp-Source: ABdhPJx5G2UCzXgAaNZHMMJnE9G6c9mFRMleWkAIT4dR4rZ6iax896qlzpD/kd5Dgj3eWljPu/NlJg==
X-Received: by 2002:a65:6183:: with SMTP id c3mr80974pgv.73.1628064862981;
        Wed, 04 Aug 2021 01:14:22 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id g26sm2067445pgb.45.2021.08.04.01.14.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Aug 2021 01:14:22 -0700 (PDT)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>
Cc:     Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH 1/2] dt-bindings: display: panel: Add Truly NT35521 panel support
Date:   Wed,  4 Aug 2021 16:13:51 +0800
Message-Id: <20210804081352.30595-2-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210804081352.30595-1-shawn.guo@linaro.org>
References: <20210804081352.30595-1-shawn.guo@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Truly NT35521 is a 5.24" 1280x720 DSI panel, and the backlight is
managed through DSI link.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 .../bindings/display/panel/truly,nt35521.yaml | 62 +++++++++++++++++++
 1 file changed, 62 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/truly,nt35521.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/truly,nt35521.yaml b/Documentation/devicetree/bindings/display/panel/truly,nt35521.yaml
new file mode 100644
index 000000000000..4727c3df6eb8
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/truly,nt35521.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/truly,nt35521.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Truly NT35521 5.24" 1280x720 MIPI-DSI Panel
+
+maintainers:
+  - Shawn Guo <shawn.guo@linaro.org>
+
+description: |
+  The Truly NT35521 is a 5.24" 1280x720 MIPI-DSI panel.  The panel backlight
+  is managed through DSI link.
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    const: truly,nt35521
+
+  reg: true
+
+  reset-gpios: true
+
+  enable-gpios: true
+
+  pwr-positive5-gpios:
+    maxItems: 1
+
+  pwr-negative5-gpios:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - reset-gpios
+  - enable-gpios
+  - pwr-positive5-gpios
+  - pwr-negative5-gpios
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
+
+        panel@0 {
+            compatible = "truly,nt35521";
+            reg = <0>;
+            reset-gpios = <&msmgpio 25 GPIO_ACTIVE_LOW>;
+            pwr-positive5-gpios = <&msmgpio 114 GPIO_ACTIVE_HIGH>;
+            pwr-negative5-gpios = <&msmgpio 17 GPIO_ACTIVE_HIGH>;
+            enable-gpios = <&msmgpio 10 GPIO_ACTIVE_HIGH>;
+        };
+    };
+...
-- 
2.17.1


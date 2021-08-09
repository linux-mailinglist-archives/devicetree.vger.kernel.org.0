Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4FD973E3F3B
	for <lists+devicetree@lfdr.de>; Mon,  9 Aug 2021 07:10:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232890AbhHIFK7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Aug 2021 01:10:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232842AbhHIFK7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Aug 2021 01:10:59 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55290C061764
        for <devicetree@vger.kernel.org>; Sun,  8 Aug 2021 22:10:38 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id fa24-20020a17090af0d8b0290178bfa69d97so434514pjb.0
        for <devicetree@vger.kernel.org>; Sun, 08 Aug 2021 22:10:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=mzB5rukDdQ28T9D/iN7XrHADrrMb0C395X8edJsat90=;
        b=ZgtmhBdcYOqOj/+92KMz6b4Fh1E4950jVPK0MDSxi1k4f2PEqutWBMtIDVVaoxNffb
         avHFUoCKli6f7byYv6O+Hbk5aybJZiMmhdR8ebvgOR02Tw5zdhXs7DzjgFBjMO39VZxS
         FapPFbPHP23M7VEWjwjuYE4e+dy3X93e/7nD6cjTHqu2szyO5y+kwMaWYiu3D7Lp2nFL
         7o/0zF0y3zSQyQMLQ9/WH0BWJKhzWvRtocQ7+jC2W1UmaXZbk6EVHPhNGJgO0VuL3J+j
         rNonX1MV27XvoBSmTGnuCkOoxgLXCFqetllSQC2mInsd1oT0ZEkBhm7bkphnwvf3fIVA
         1QQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=mzB5rukDdQ28T9D/iN7XrHADrrMb0C395X8edJsat90=;
        b=lfkquTGA0YZAGgu/siCqJtsffQw/ovdUYpuCHVVnnX5GRMfqaHrKeOGNCUYJRToHSD
         g/Zvz6M1jKV39+9VY5JgYMLPT7ij4gHAL2CfOQlyqri5gMcT2EgxWmE3M9D7VllcKzoM
         csQV/58K+M9wgIpz9kN3CPczfbvO8pZFJh6pAdMeI2fqYnkqdk50eiYFwGydxHWlEGLn
         ++ML7p8nDInv3LLfx/LBHgi0KpfbccZ7QJrM01P1qDv9+WAyCydRVDx+ZnkFHI5blQnk
         ZKKkTXcC4gtsI60kuhjlAZD2/y/iV9IgTPeAq+uRkeCur1au3w6vByAogb6KyVu5rMZx
         x9hA==
X-Gm-Message-State: AOAM531DXOkOZ4MbZ13KEM4LR3tX042K9yl+N5vEq6HViyiqG6mVRW1X
        v18+8Ru9LLrnO4XqNR8AoQJN3A==
X-Google-Smtp-Source: ABdhPJzwi+9ZQ7HmhjDWczc1PgAAzuaWyMlQKH609fsjupjHKCMGUf+/nbjA/6ocUHux/bOXk07C5Q==
X-Received: by 2002:a65:63d7:: with SMTP id n23mr291656pgv.46.1628485837946;
        Sun, 08 Aug 2021 22:10:37 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id e35sm20420219pjk.28.2021.08.08.22.10.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Aug 2021 22:10:37 -0700 (PDT)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>
Cc:     Stephan Gerhold <stephan@gerhold.net>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH v2 1/2] dt-bindings: display: Add Sony Tulip Truly NT35521 panel support
Date:   Mon,  9 Aug 2021 13:10:07 +0800
Message-Id: <20210809051008.6172-2-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210809051008.6172-1-shawn.guo@linaro.org>
References: <20210809051008.6172-1-shawn.guo@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Sony Tulip Truly NT35521 is a 5.24" 1280x720 DSI panel, which can
be found on Sony Xperia M4 Aqua phone.  The backlight is managed
through DSI link.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 .../panel/sony,tulip-truly-nt35521.yaml       | 72 +++++++++++++++++++
 1 file changed, 72 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/sony,tulip-truly-nt35521.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/sony,tulip-truly-nt35521.yaml b/Documentation/devicetree/bindings/display/panel/sony,tulip-truly-nt35521.yaml
new file mode 100644
index 000000000000..967972939598
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/sony,tulip-truly-nt35521.yaml
@@ -0,0 +1,72 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/sony,tulip-truly-nt35521.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Sony Tulip Truly NT35521 5.24" 1280x720 MIPI-DSI Panel
+
+maintainers:
+  - Shawn Guo <shawn.guo@linaro.org>
+
+description: |
+  The Sony Tulip Truly NT35521 is a 5.24" 1280x720 MIPI-DSI panel, which
+  can be found no Sony Xperia M4 phone.  The panel backlight is managed
+  through DSI link.
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    const: sony,tulip-truly-nt35521
+
+  reg: true
+
+  positive5-supply:
+    description: Positive 5V supply
+
+  negative5-supply:
+    description: Negative 5V supply
+
+  reset-gpios: true
+
+  enable-gpios: true
+
+  port: true
+
+required:
+  - compatible
+  - reg
+  - positive5-supply
+  - negative5-supply
+  - reset-gpios
+  - enable-gpios
+  - port
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
+            compatible = "sony,tulip-truly-nt35521";
+            reg = <0>;
+            positive5-supply = <&positive5_reg>;
+            negative5-supply = <&negative5_reg>;
+            reset-gpios = <&msmgpio 25 GPIO_ACTIVE_LOW>;
+            enable-gpios = <&msmgpio 10 GPIO_ACTIVE_HIGH>;
+
+            port {
+                panel_in: endpoint {
+                    remote-endpoint = <&dsi0_out>;
+                };
+            };
+        };
+    };
+...
-- 
2.17.1


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7F948A5280
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2019 11:07:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729883AbfIBJGr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Sep 2019 05:06:47 -0400
Received: from mail-lj1-f194.google.com ([209.85.208.194]:36566 "EHLO
        mail-lj1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729763AbfIBJGr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Sep 2019 05:06:47 -0400
Received: by mail-lj1-f194.google.com with SMTP id u15so12159291ljl.3
        for <devicetree@vger.kernel.org>; Mon, 02 Sep 2019 02:06:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ayhIrTq0dYD1crX4bCnYCwEQ3J9YxfxzkKpNwwOjRhU=;
        b=pvdgSVsXnsmLoeqY7Acklfd5TL4BuMOQzRiz9/n8bYqW+jPlVz5jH7EIr7BIzvsn8v
         JUazHV+FJyUTc0opXUX4sf98fM3ChTEKHZYALqUc1C2H/MQlFC55mIBgHCZ8K9ajBWDG
         yez4FnfzEldnSL3xTTNj1MYoUV4x7G7qSmzpZmfHT+aQq1lvqZ/itvyvaQ8NApStUn/l
         oZ5iSq4gf/HGsc4C9VMV/7jjjyBEGm0IKuigSdFkhVi5rqKU6GPo2O3RCydmzMQbi6Hd
         38zMhHDRH0M2RGp+X8wZKExfwGHHILxKtM+YzA39xp9MtGTC1W34QWhFThFDvGSWVD4J
         el0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ayhIrTq0dYD1crX4bCnYCwEQ3J9YxfxzkKpNwwOjRhU=;
        b=TyeCM7r5tC+g89V6VdHGAKF+LWQD+wnaTak+0YzW/K/xdrYS/RHkqwONVEPg1dvwLs
         FzmTzVUFT1F6oef1zH0HDfsJ2pFRub6PWLQ+cLggI9+RwFR1qWr0xTpPkZbt9lcbAP6p
         E8WgfDChyupFPXtDmJH77fzCgkgT7p4OWHpoSAvwUl9JYB4uBfPrXpIythMrQx8NdT5r
         kv6J/P6CX7JXVIbP156spRT3LYkWzsdm1V4KujYNpwedmwy8VhAMVYo7ynTL0SmGFFs9
         83EEIQa5vo+C8l0NvZa0WECS3tP3geGXVBQudwCb38QHWxqKs7LE28wFAEDpk60a49Jv
         0xjA==
X-Gm-Message-State: APjAAAUGCmX3udFvBRbm2tVXwT0YDu21m97TKBSA96EhE5w5hE3GUQt4
        ceQWKSw15nJXxTPC8jYqMayUtg==
X-Google-Smtp-Source: APXvYqxinO7cywWMdvwtgixZqruPokLKVNsJL4WagBKMUJnVPQ/plMIqS+6vYQCJqv1xk5igpllCVQ==
X-Received: by 2002:a2e:42c9:: with SMTP id h70mr6166391ljf.88.1567415204890;
        Mon, 02 Sep 2019 02:06:44 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
        by smtp.gmail.com with ESMTPSA id m3sm725034ljc.29.2019.09.02.02.06.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Sep 2019 02:06:43 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        dri-devel@lists.freedesktop.org
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org
Subject: [PATCH 1/2] drm/panel: Add DT bindings for Sony ACX424AKP
Date:   Mon,  2 Sep 2019 11:06:32 +0200
Message-Id: <20190902090633.24239-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds device tree bindings for the Sony ACX424AKP panel.
Let's use YAML.

Cc: devicetree@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../display/panel/sony,acx424akp.yaml         | 53 +++++++++++++++++++
 1 file changed, 53 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/sony,acx424akp.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/sony,acx424akp.yaml b/Documentation/devicetree/bindings/display/panel/sony,acx424akp.yaml
new file mode 100644
index 000000000000..29f41fee1b69
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/sony,acx424akp.yaml
@@ -0,0 +1,53 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/sony,acx424akp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Sony ACX424AKP 4" 480x864 AMOLED panel
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    const: sony,acx424akp
+  reg: true
+  port: true
+  reset-gpios: true
+  vddi-supply:
+     description: regulator that supplies the vddi voltage
+  dsi-command-mode:
+     type: boolean
+     description:
+       If this is specified, the panel will be used in command
+       mode instead of video mode.
+
+required:
+  - compatible
+  - reg
+  - port
+  - reset-gpios
+  - power-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    panel@0 {
+        compatible = "sony,acx424akp";
+        reg = <0>;
+        vddi-supply = <&foo>;
+        reset-gpios = <&foo_gpio 0 GPIO_ACTIVE_LOW>;
+
+        port {
+            panel_in: endpoint {
+                remote-endpoint = <&dsi_out>;
+            };
+        };
+    };
+
+...
\ No newline at end of file
-- 
2.21.0


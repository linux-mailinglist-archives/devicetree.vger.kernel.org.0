Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 880028335E
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2019 15:55:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726783AbfHFNzC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Aug 2019 09:55:02 -0400
Received: from mail-lj1-f193.google.com ([209.85.208.193]:42615 "EHLO
        mail-lj1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726373AbfHFNzC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Aug 2019 09:55:02 -0400
Received: by mail-lj1-f193.google.com with SMTP id t28so82321782lje.9
        for <devicetree@vger.kernel.org>; Tue, 06 Aug 2019 06:55:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=IJ12Dy3JfyZ0l7CageHav/zHZkBqP0OCWfzKRPvmdoc=;
        b=p40EAZqxGwsk7cv76bOJBxNqqa0AeZzd3w3C2VYzbT8LY1ssw9DC7sCkwirZoazfZq
         BU5IMdW/tQtlFGdsGju93CFQ56bexUWSN13iJEImGWjA1aWQAPr/CX2AkBkiMuoRuV/M
         jplktamrvZRG/kWsC9EmW6QUaHibt/6YNQor+3USjTVm627JdrzSCt/S4LneRh0kervw
         qKfVB8b1pVbhIT5aiO1GCUSl9EYUa0AQ85wMqRRi6uCk9agFjrH5gDxoGFHzLR2FJ7Rk
         qo+mpMzKUQXjli74QUS9KnxIt50OYX+b/EY49TuDplwuT6HJuC5aTzw3OjM80NcsQdZG
         z7tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=IJ12Dy3JfyZ0l7CageHav/zHZkBqP0OCWfzKRPvmdoc=;
        b=JFGI+pjCmHvbyC88Rxl/E0gds0x4248Nq+Rs4mXvWinHEY8lADNo4v7y+uXwwW305U
         3ix/JvkfLtVZqACOCzgoAGWE/WuNDfwMHtuH+bs6DTPIAhKWrTW7Yuwb9dXnoOlQjmBo
         cSCKCVTfpMamHx6xNZQbdxJE31zQWXKy0H9wum69Fm76hN4EsZbDYwXsTA/6u/d6CHZx
         K8vB8GfXI0RqCZAMpmgsGj1UiPaXq079xfWrBV99vR8lL1/QqQOltmSeaT8AT80wDxmg
         lEhQ141Pvde5SD+b2nmFm/pI/tjcRsY70UckoO5WxBvq2dgu0Elz1uCioxj9+No1t1+X
         DLuQ==
X-Gm-Message-State: APjAAAWb4V2VwE3jGL/23/gVEALWkGWyoTMz3JaSAVr0yDSguX2K38d6
        feZ4PIuJXAnZghKuzNBhUWo7JA==
X-Google-Smtp-Source: APXvYqxv8qeBsyp4+j8+tEUZfsnPoqeK+HtBmP4WRrTSf4gzVQpnVHOuB+aJZHmFKhJdaRZiGmjR4A==
X-Received: by 2002:a2e:7614:: with SMTP id r20mr1896078ljc.42.1565099700349;
        Tue, 06 Aug 2019 06:55:00 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
        by smtp.gmail.com with ESMTPSA id u22sm20071875ljd.18.2019.08.06.06.54.57
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 06 Aug 2019 06:54:59 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     dri-devel@lists.freedesktop.org,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Sean Paul <sean@poorly.run>
Cc:     linux-arm-kernel@lists.infradead.org,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org
Subject: [PATCH 2/4 v3] drm/panel: simple: Add TI nspire panel bindings
Date:   Tue,  6 Aug 2019 15:54:37 +0200
Message-Id: <20190806135437.7451-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add bindings for the TI NSPIRE simple display panels.

Cc: devicetree@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChanegLog v2->v3:
- Switch to GPL-2.0-only OR BSD-2-Clause license
- Use a simple enum for the compatible
- Use the new nifty panel-common.yaml, tested on
  linux-next
ChangeLog v1->v2:
- New patch as bindings are required
- Let's use YAML
---
 .../bindings/display/panel/ti,nspire.yaml     | 36 +++++++++++++++++++
 1 file changed, 36 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/ti,nspire.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/ti,nspire.yaml b/Documentation/devicetree/bindings/display/panel/ti,nspire.yaml
new file mode 100644
index 000000000000..5c5a3b519e31
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/ti,nspire.yaml
@@ -0,0 +1,36 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/ti,nspire.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Texas Instruments NSPIRE Display Panels
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    enum:
+      - ti,nspire-cx-lcd-panel
+      - ti,nspire-classic-lcd-panel
+  port: true
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    panel {
+        compatible = "ti,nspire-cx-lcd-panel";
+        port {
+            panel_in: endpoint {
+                remote-endpoint = <&pads>;
+            };
+        };
+    };
-- 
2.21.0


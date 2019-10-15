Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0D7AED70F1
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2019 10:28:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726632AbfJOI2V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Oct 2019 04:28:21 -0400
Received: from mail-lj1-f193.google.com ([209.85.208.193]:37580 "EHLO
        mail-lj1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726142AbfJOI2V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Oct 2019 04:28:21 -0400
Received: by mail-lj1-f193.google.com with SMTP id l21so19317804lje.4
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2019 01:28:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ojxDAKRAwmMHLlwEWcHkwv5aBgxTmWdQ8UAjvDvF2+E=;
        b=Gucr4GXfE5GksBaj71VaqL02FNvfq8GV9MZqWq1LQ+47lkJrmOaL9yIlB2gNTmg/RH
         A9BcR/eSA7g95P/LmFhnWRVK0e0CiAsXdusG1bjZRPq/znw4CLeCLe/PUXfSx2QtK8/7
         hf7C2ukdXYrVbb1DCwDtUWximRzWiTuepJ9hwLfHTe44cZ8Bqt/IJgzMZVSdQbgew3mE
         xp++urW+WtYSWs21i1X8H135FP9ueyv9ftdj1hJPXzE5CFI8TzjPKlR8PZG2TK4w/fLA
         7WBQGSPDqoKuFTgFOlbpA3JiRi6Dqo0FEvh9VSZAdM3QOdBD0Rox9RZRLJuBeqrFuBNb
         27ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ojxDAKRAwmMHLlwEWcHkwv5aBgxTmWdQ8UAjvDvF2+E=;
        b=VI1GutnL1WCXXwu2G+LANCYngGAXQmwo2UEdDiFC+fZltJsQ/rk3qgNk0nBoQRTPFr
         XpOPcI4lyj1xAChvQkstdwS3CJRFdv0qhU19fbpM/r2CpQAu5DI9TKWuV3SlxA3997dO
         7aFZmUh4nJbWywP3wmlqScdXrvnguUO9+vEr88vZ/huyL6a+u83zVmn6ni2arvt7QsPI
         ESDw8/nMCQvo/TU4G2QJ3qv9l7B2inCGNtPE8uWFbUAIb4BoH2jveZxanWljpafcruNh
         IcuCCs/ZtnLTVG5yQhCVaLY5AQdIaxoM+o4fqvEUwMY0mFyxYDOnZhVzQV30otYy/kw3
         wneA==
X-Gm-Message-State: APjAAAUakAGSgNophYIKBxj17ZDSoHwfN1xqEv45FVqXYJERrIo/8iSW
        ii7fAAHG99Mi8X16v02tdPhgHg==
X-Google-Smtp-Source: APXvYqzDkQgGT1n6ThwoF7yrpLrPAh0E0UZJfbX1JMKM7bjfcjUYM9NPCKUXvhni2IG27r5c5Qxoiw==
X-Received: by 2002:a2e:81cf:: with SMTP id s15mr1954918ljg.99.1571128098821;
        Tue, 15 Oct 2019 01:28:18 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
        by smtp.gmail.com with ESMTPSA id y3sm4795141lji.53.2019.10.15.01.28.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2019 01:28:17 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        dri-devel@lists.freedesktop.org
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org
Subject: [PATCH 2/3 v2] drm/panel: Add DT bindings for Sony ACX424AKP
Date:   Tue, 15 Oct 2019 10:28:10 +0200
Message-Id: <20191015082811.29497-2-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191015082811.29497-1-linus.walleij@linaro.org>
References: <20191015082811.29497-1-linus.walleij@linaro.org>
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
ChangeLog v1->v2:
- Suggest a stand-alone YAML bindings file for DSI panels in
  a separate patch, and use that to reference the
  boolean "enforce-video-mode" attribute for DSI panels
---
 .../display/panel/sony,acx424akp.yaml         | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/sony,acx424akp.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/sony,acx424akp.yaml b/Documentation/devicetree/bindings/display/panel/sony,acx424akp.yaml
new file mode 100644
index 000000000000..844665b0c953
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/sony,acx424akp.yaml
@@ -0,0 +1,50 @@
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
+  - $ref: panel-dsi-common.yaml#
+
+properties:
+  compatible:
+    const: sony,acx424akp
+  reg: true
+  port: true
+  reset-gpios: true
+  vddi-supply:
+     description: regulator that supplies the vddi voltage
+  enforce-video-mode: true
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


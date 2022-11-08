Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2F740621AAE
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 18:31:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234530AbiKHRbo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 12:31:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234535AbiKHRbl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 12:31:41 -0500
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 034094047C
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 09:31:40 -0800 (PST)
Received: by mail-pl1-x62b.google.com with SMTP id io19so14783213plb.8
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 09:31:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l6LXqb1ieiev6h1Macbn9SxAX5KyBkVuXnZ2xDqGvEY=;
        b=ECg44PoVQHiZfLtrii2Djl2abPTl2FAyrp1t37Fx2Fra3XLtHsC9ZJpfu/10zQIcCq
         SCucchs/JSSg+3sul3ovQAWnc97zjsR2x0zFYTN7UDreDiCH6sI1lYiy2bLyrnaewcjd
         JLVLng0eHoo4SY9wA4b/A0bK6h5I7GJi/7fa3prGeCGDabyl3Ce5utl2OMOCDlgR8hKL
         WiVmghBNOLd6gYkF1Jz5Ja/lGG+ys2EU6G7EiXmDX5p3u51hP4MGR7WPk2hWG3kqeQpg
         RhO6KbsfZ9fgoMpMtCeKCGt/uqnzfLLjrj4/pxejDoUWpxdLJO0o3SdQ9rDWtTNXqrPx
         wgEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l6LXqb1ieiev6h1Macbn9SxAX5KyBkVuXnZ2xDqGvEY=;
        b=C1dS+JbkIfgHQBFEqhN5mbpj5fDNFeClc3iOWHVe8ZNaY1x8hTDb/a7GBiLcz4EnNW
         Z+xZdSKGgKG1CbPVWhR5ImoirvnqI9xAp99uKm9emqONg0Yv4ZZxR/94k/xxbV+FPYCl
         sDu87fauhXkqrLmNoBG4bjjJ2BBCoerfSs0d6PlPNNZ3rrASPjLIaV7sxpebVHwlcAJD
         urc32jnqOCAZsJE5Y00lhMpj1oDlg+KGqVsW4jOvk7Qfb44/7mynlyjYzclkw+o6K8R0
         u1JJhQXEvS25t6XH+ioOdSV5pZb4z5zJ0HXPy5/sBGcXdxIUkbFZTsvGbBfeFET+S/oU
         C9Hw==
X-Gm-Message-State: ACrzQf34GGq/l0n8UxdGK6lXaXXUqDCGM2YLLN/uOUrH5wIxnp2HlmF9
        Lf/rl5X5LNtQO9osP5Mkk+KZAtJA/SCh2kUHtlQEsA==
X-Google-Smtp-Source: AMsMyM7ONbZkXU/VzZzLfd8zKn/wB9T7LhunMocpBSwFdebiijL7xDKg8IRgB+6iEQg6Anlyuwr05Q==
X-Received: by 2002:a17:90a:df04:b0:213:1cf1:435d with SMTP id gp4-20020a17090adf0400b002131cf1435dmr59443674pjb.210.1667928699542;
        Tue, 08 Nov 2022 09:31:39 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:c2c:74c3:d3ed:4dfa])
        by smtp.gmail.com with ESMTPSA id h3-20020a63df43000000b0046fd180640asm6018517pgj.24.2022.11.08.09.31.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Nov 2022 09:31:39 -0800 (PST)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        Jagan Teki <jagan@edgeble.ai>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 3/4] dt-bindings: display: Document Jadard JD9365DA-H3 DSI panel
Date:   Tue,  8 Nov 2022 23:01:19 +0530
Message-Id: <20221108173120.618312-3-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221108173120.618312-1-jagan@edgeble.ai>
References: <20221108173120.618312-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Jadard JD9365DA-H3 is WXGA MIPI DSI panel and it support TFT
dot matrix LCD with 800RGBx1280 dots at maximum.

Document it.

Cc: dri-devel@lists.freedesktop.org
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
Changes for v4:
- none
Changes for v3:
- updated title
- collect Krzysztof r-b
- rebased on drm-misc-next
Changes for v2:
- none

 .../display/panel/jadard,jd9365da-h3.yaml     | 70 +++++++++++++++++++
 MAINTAINERS                                   |  5 ++
 2 files changed, 75 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
new file mode 100644
index 000000000000..c06902e4fe70
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
@@ -0,0 +1,70 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/jadard,jd9365da-h3.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Jadard JD9365DA-HE WXGA DSI panel
+
+maintainers:
+  - Jagan Teki <jagan@edgeble.ai>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - chongzhou,cz101b4001
+      - const: jadard,jd9365da-h3
+
+  reg: true
+
+  vdd-supply:
+    description: supply regulator for VDD, usually 3.3V
+
+  vccio-supply:
+    description: supply regulator for VCCIO, usually 1.8V
+
+  reset-gpios: true
+
+  backlight: true
+
+  port: true
+
+required:
+  - compatible
+  - reg
+  - vdd-supply
+  - vccio-supply
+  - reset-gpios
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/pinctrl/rockchip.h>
+
+    dsi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        panel@0 {
+            compatible = "chongzhou,cz101b4001", "jadard,jd9365da-h3";
+            reg = <0>;
+            vdd-supply = <&lcd_3v3>;
+            vccio-supply = <&vcca_1v8>;
+            reset-gpios = <&gpio1 RK_PC2 GPIO_ACTIVE_HIGH>;
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
diff --git a/MAINTAINERS b/MAINTAINERS
index 20554fd74596..8cd909cd34e0 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -6530,6 +6530,11 @@ S:	Orphan / Obsolete
 F:	drivers/gpu/drm/i810/
 F:	include/uapi/drm/i810_drm.h
 
+DRM DRIVER FOR JADARD JD9365DA-H3 MIPI-DSI LCD PANELS
+M:	Jagan Teki <jagan@edgeble.ai>
+S:	Maintained
+F:	Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
+
 DRM DRIVER FOR LOGICVC DISPLAY CONTROLLER
 M:	Paul Kocialkowski <paul.kocialkowski@bootlin.com>
 S:	Supported
-- 
2.25.1


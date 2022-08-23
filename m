Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0FCCC59ECA1
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 21:44:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233394AbiHWTn1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 15:43:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229555AbiHWTnM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 15:43:12 -0400
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com [IPv6:2607:f8b0:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABEFE7679
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 11:44:00 -0700 (PDT)
Received: by mail-pg1-x52c.google.com with SMTP id w13so7937412pgq.7
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 11:44:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=e6xmGRsUy5CVWXkkBzqW8hMvVXzIsvM15KrfP8pRT4c=;
        b=XlQJ6Pmf6FM6P9HgS86MvAkKQN5SRDZxo5dgNmSgYZCoAqoxS+So9IQBVGnp0QofFD
         dq7/OgJPv2fuAcj/nixndjIJEUHDWd1+tUutCAnEdITIeSA4hktyjdPmbNlZjSLn0Lw4
         6HYeCCxT+BV7E/asoB7YLIr/tyGLQcgSl+D/R23WOwB+6/F8X/7P+TBf+eBk9ycAA5iR
         EKGC5rVusVLP4Hhgc3Jw1rRMXiaRwJP77jOivbYEPZAj/66TEo9iRCoKZqoxPc3xc345
         J4K0t66nNXqJsiimEEWVEp/4pSdsclPkZfOZhgLPnLUHClFzsyxL0qQLgDUfg2BBUswL
         twiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=e6xmGRsUy5CVWXkkBzqW8hMvVXzIsvM15KrfP8pRT4c=;
        b=bSgHdaouJ5D+UKyKbyQ+v4jSFtofwPDHvzlV70gpJ1Bafby8Ukb9QAuCrtclKLtTtu
         yWv+R8o9EcAVtQkdA6xvb4gWfFYzyl0hKphJfx7MtIu2gAhgEviR+7kt86u9nTJL1BfO
         /iWAp3yIh4ItZSHLW0HGV8BDre9qtoUSqoLILiUWiMYelTel8aXugQTiKXq4jfM7UFSj
         iiWhzh+OLVoJKNFa+Di0Rfssj5ilXlSmJEOpkdONfsqB8Z75zZNSV88vEuhoVCNLjqaw
         fAPNO9FNUqHvKGbcYiCcOpws/WcZA2Si+8JnWx4f6ZjQ71Qo6ryZYuqDwZaZ7RnGdBEW
         uC7g==
X-Gm-Message-State: ACgBeo07ByPPOBh8jDaSGhAc4KPrtenz6vZjzuifNSFThPD4GEvL0EbP
        eBm2GEHKaT2zpr+ehtrgoxWe5A==
X-Google-Smtp-Source: AA6agR5Vx2++EIQt2E3SmDU8RYJqzEEOCmAhZPT/gsoZWote+lPS70tGrRxhjo0nJhxCwidCNofz4Q==
X-Received: by 2002:a63:4625:0:b0:42a:d055:22df with SMTP id t37-20020a634625000000b0042ad05522dfmr6035867pga.312.1661280239746;
        Tue, 23 Aug 2022 11:43:59 -0700 (PDT)
Received: from localhost.localdomain ([23.27.44.55])
        by smtp.gmail.com with ESMTPSA id b187-20020a62cfc4000000b0053641e66825sm7767647pfg.173.2022.08.23.11.43.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Aug 2022 11:43:59 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>
Cc:     devicetree@vger.kernel.org, Jagan Teki <jagan@edgeble.ai>,
        dri-devel@lists.freedesktop.org
Subject: [PATCH 3/4] dt-bindings: display: Document Jadard JD9365DA-H3 DSI panel
Date:   Wed, 24 Aug 2022 00:12:41 +0530
Message-Id: <20220823184242.3554472-3-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220823184242.3554472-1-jagan@edgeble.ai>
References: <20220823184242.3554472-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Jadard JD9365DA-H3 is WUXGA MIPI DSI panel and it support TFT
dot matrix LCD with 800RGBx1280 dots at maximum.

Document it.

Cc: dri-devel@lists.freedesktop.org
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 .../display/panel/jadard,jd9365da-h3.yaml     | 70 +++++++++++++++++++
 MAINTAINERS                                   |  5 ++
 2 files changed, 75 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
new file mode 100644
index 000000000000..23dfd5b5496e
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
@@ -0,0 +1,70 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/jadard,jd9365da-h3.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Jadard JD9365DA-HE WUXGA DSI panel
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
index 5c96115c620f..2ef50447e6e8 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -6466,6 +6466,11 @@ S:	Orphan / Obsolete
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


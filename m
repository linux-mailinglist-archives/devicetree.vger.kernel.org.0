Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D8A2A617F00
	for <lists+devicetree@lfdr.de>; Thu,  3 Nov 2022 15:12:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231355AbiKCOMl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Nov 2022 10:12:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229742AbiKCOMi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Nov 2022 10:12:38 -0400
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7E8BE08B
        for <devicetree@vger.kernel.org>; Thu,  3 Nov 2022 07:12:36 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id 130so1709034pfu.8
        for <devicetree@vger.kernel.org>; Thu, 03 Nov 2022 07:12:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fEYILcAuMrXHcTcuxad4ZK3hey99OXzX9Gy2F42P7f0=;
        b=N+tZ6cST/N3j6qEf1RY537xNJohMCZaidTEv6VJr1MH6BSI14K3qDC8uVyjC4fc7rh
         SY0j9x7zysNJL1qEo7zRW6HSGpCY4Yp2TV1ERz8l8zHD9MOoqmiGnrdOWB9UVFVU1S/O
         Eik+cOdwCB5w+H+aX1uvSD1jxFnLYXNqNXNFrsLnPyKq4IEqPZvDnouK9zDuMxkU9IaV
         o2OT5MZGJNGZ7T9AcfeQ10aJWYR5edE0m7fCMZcch3myBWfqSNZqmBpiEUcI7IcfZW15
         jyDxqwgM9WKxExEg9f2JH4qOm7JgG99wGx542o1pTLKoP4aEJ6tCPGk+kxXkwe+e+bE1
         cH3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fEYILcAuMrXHcTcuxad4ZK3hey99OXzX9Gy2F42P7f0=;
        b=Wjwth/S2a38SHvL7okPpUU0HiHLbwYSWh9yveEd3In56tHTQpGMpOQlHo8q7F9F2ei
         IfzUSpscRuZhr5giKbbWfr7/SE/A4qbK4lYBP7JmqzKY+QeH3CWrc0IXnZQ4+IEL36Al
         DEZ42SpQ9d7bo980p8bMlGcC6YSs8Mt7cJ5YvWchYePpZzN4lNFj9P7P/yfGarZbaNuo
         PpF6q8u944/hNhg4QkVSDJYwoY2ZNLn6VDIfLpt5VK1SU6PKmGLt3M4N/seZY+G5TOi6
         VAQfsEMvU8JcPETwTu2fKnlc9c3NBrq7TZR+BeRHQhgQxfdiy+eepzJDSMYNC+t4wiJS
         oUyg==
X-Gm-Message-State: ACrzQf2DUK2wQdjN344HvCre2OG62l7VSPlkZkh2d0UUeHPxDyQ+tLqe
        pBwmp8NQHERT3e9ykDTocXmAt9n20R67Zq7AyKc=
X-Google-Smtp-Source: AMsMyM5rg76U/d7JpQks1DnAyNvyFIP9PNgMwfovanjIVzTQ9uaN55uVmfgE4TbWH4noRIDq5WAJyw==
X-Received: by 2002:a63:84c6:0:b0:46f:f8b0:ba09 with SMTP id k189-20020a6384c6000000b0046ff8b0ba09mr10693315pgd.192.1667484755888;
        Thu, 03 Nov 2022 07:12:35 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a809:3a79:b5a5:9718:3f91])
        by smtp.gmail.com with ESMTPSA id g4-20020a170902934400b001780a528540sm725808plp.93.2022.11.03.07.12.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Nov 2022 07:12:35 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        Jagan Teki <jagan@edgeble.ai>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 3/4] dt-bindings: display: Document Jadard JD9365DA-H3 DSI panel
Date:   Thu,  3 Nov 2022 19:41:54 +0530
Message-Id: <20221103141155.1105961-3-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221103141155.1105961-1-jagan@edgeble.ai>
References: <20221103141155.1105961-1-jagan@edgeble.ai>
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


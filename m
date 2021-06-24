Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D8E53B394B
	for <lists+devicetree@lfdr.de>; Fri, 25 Jun 2021 00:45:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232695AbhFXWmV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Jun 2021 18:42:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229643AbhFXWmU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Jun 2021 18:42:20 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4F0CC061756
        for <devicetree@vger.kernel.org>; Thu, 24 Jun 2021 15:39:59 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id d13so9865545ljg.12
        for <devicetree@vger.kernel.org>; Thu, 24 Jun 2021 15:39:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DxTs9lTae46Xhf8kLhsZfUlYx/YjM18QvR3O42D40aA=;
        b=f2MwHX5VBcVkGwZgCMni3tNxJmYesEn8BhxwrYdGMgyrT7r5Deuj5ZZt/E2mL7NItH
         BsBXjrjyeF4hHqs12NhMfbbtm2veljzqVXSPAn1qxe7SyyiUhRFNUtZS6OqurxTWviI9
         8DokPhK+KFDp0QjgP6NABbwWKWwtml4P6MgKmPZ+0LwofBDNEksbWp0twSF9q84RPXsh
         UQpdzaSv4W+horsvvmsFruFL//YULoGxA9CE3w/0xbZfff16nzhZBfsR5FouYlK+0Jxu
         hmSNXBFZgS7AwSv+8MPRhQXtGYWsRyF3nQIFU5r/jtGy9Xk3GL/CGZcd0upC9foaO8fn
         wMVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DxTs9lTae46Xhf8kLhsZfUlYx/YjM18QvR3O42D40aA=;
        b=eJ7PerUCHr8ALVyKnlOo2MoOPQYjIjBeldIdPmoZpTmXpe0fJs5JthqxXEsiRZMs0J
         CDV4b38LgndK8EXbhARE3x4JAJ95kpj8AY3zYn5cWdu4tetwWg/RjaHhkKb2+1UBQN2t
         gLbV2OnJsyLBJvM3zKjS3AbkReaT/BJdhnJFgGXKAraTyxADSWNQIr1AasV03vV0YCmd
         X9gH67g/pjwk4V/KNljMKl8xA1pYaUcL6UzqeO9snHDzBxQjU0QDLmGujaI8CIhgSZxe
         3MUFtbDnyVPw8h1pPMTWJ/zttKcRiTM8vlGumr5Sp1YHz4jO6tQhL5qdT2v5TcjBeQAD
         NNIQ==
X-Gm-Message-State: AOAM532IQgUPhpyjNXRUkJZAckdkx28EhACbJn5oiZwQj+HZ1bBOcle0
        gONxqj6doCJ3M9XgVZxc8OFv0w==
X-Google-Smtp-Source: ABdhPJyWfx/EAsg04pU+FiCKFTcKQS4KhRid92ZjAQ4UTsCxFf7Ko+U/IPFNv0fp9GzDmmrNZfPCBg==
X-Received: by 2002:a2e:9e18:: with SMTP id e24mr5757701ljk.336.1624574397916;
        Thu, 24 Jun 2021 15:39:57 -0700 (PDT)
Received: from localhost.localdomain (c-fdcc225c.014-348-6c756e10.bbcust.telenor.se. [92.34.204.253])
        by smtp.gmail.com with ESMTPSA id e12sm341403lfc.84.2021.06.24.15.39.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jun 2021 15:39:57 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        dri-devel@lists.freedesktop.org
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org, phone-devel@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>
Subject: [PATCH] drm/panel: Add DT bindings for Samsung LMS380KF01
Date:   Fri, 25 Jun 2021 00:37:43 +0200
Message-Id: <20210624223743.2486302-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds device tree bindings for the Samsung Mobile Displays
LMS380KF01 RGB DPI display panel.

Cc: devicetree@vger.kernel.org
Cc: phone-devel@vger.kernel.org
Cc: Douglas Anderson <dianders@chromium.org>
Cc: Noralf Trønnes <noralf@tronnes.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../display/panel/samsung,lms380kf01.yaml     | 96 +++++++++++++++++++
 1 file changed, 96 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,lms380kf01.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/samsung,lms380kf01.yaml b/Documentation/devicetree/bindings/display/panel/samsung,lms380kf01.yaml
new file mode 100644
index 000000000000..138be12fc509
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/samsung,lms380kf01.yaml
@@ -0,0 +1,96 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/samsung,lms380kf01.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung LMS380KF01 display panel
+
+description: The LMS380KF01 is a 480x800 DPI display panel from Samsung Mobile
+  Displays (SMD) utilizing the WideChips WS2401 display controller. It can be
+  used with internal or external backlight control.
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    const: samsung,lms380kf01
+
+  reg: true
+
+  interrupts:
+    description: provides an optional ESD (electrostatic discharge)
+      interrupt that signals abnormalities in the display hardware.
+      This can also be raised for other reasons like erroneous
+      configuration.
+    maxItems: 1
+
+  reset-gpios: true
+
+  vci-supply:
+    description: regulator that supplies the VCI analog voltage
+      usually around 3.0 V
+
+  vccio-supply:
+    description: regulator that supplies the VCCIO voltage usually
+      around 1.8 V
+
+  backlight: true
+
+  spi-cpha:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description: inherited as a SPI client node. Must be set.
+
+  spi-cpol:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description: inherited as a SPI client node. Must be set.
+
+  spi-max-frequency:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: inherited as a SPI client node.
+    maximum: 1200000
+
+  port: true
+
+required:
+  - compatible
+  - reg
+  - spi-cpha
+  - spi-cpol
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    spi {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      panel@0 {
+        compatible = "samsung,lms380kf01";
+        spi-max-frequency = <1200000>;
+        spi-cpha;
+        spi-cpol;
+        reg = <0>;
+        vci-supply = <&lcd_3v0_reg>;
+        vccio-supply = <&lcd_1v8_reg>;
+        reset-gpios = <&gpio4 11 GPIO_ACTIVE_LOW>;
+        interrupt-parent = <&gpio2>;
+        interrupts = <29 IRQ_TYPE_EDGE_RISING>;
+
+        port {
+          panel_in: endpoint {
+            remote-endpoint = <&display_out>;
+          };
+        };
+      };
+    };
+
+...
-- 
2.31.1


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 745423BF297
	for <lists+devicetree@lfdr.de>; Thu,  8 Jul 2021 01:45:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229729AbhGGXsB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Jul 2021 19:48:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229519AbhGGXsA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Jul 2021 19:48:00 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E6CBC061574
        for <devicetree@vger.kernel.org>; Wed,  7 Jul 2021 16:45:19 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id a18so8991378lfs.10
        for <devicetree@vger.kernel.org>; Wed, 07 Jul 2021 16:45:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Lef/OQjrSU0R3UoIoqnflkPNbG+gBsscfg2YcxN/LQg=;
        b=rpNubobH9wDjm/Zres38TkkeWPIg9+js7fJtG7CjRNmVoLJyC8PZewmjTBizYWLYxH
         hWCjmdgdUDmXIIe761ZTwbrKXIXEmT50JN1X8tqkNj80bvQaiesQhXm4Ux8IR3CdzmEw
         KVPegMRDKk+dtTD8bbtY0yHB9nPHJ0cborpnsbRwKYfBLoROezY2LozR5/FjqufZfNoU
         CBhIb/Ee9mAmveeQPlWsO1+MrUMkOKoeKiSgv5xJ7U9Z18LQpwmA/rvbEyZ20NS2SABy
         9/INN0ylw4CoJLa8p/yBoj+Wm5kbdtin0pNE05rPbvnhu5N7Xhfup5758Oe96xh+0HQd
         tWUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Lef/OQjrSU0R3UoIoqnflkPNbG+gBsscfg2YcxN/LQg=;
        b=GU3lfmqWYqTlh5OPn5bkZGnS8d4/MNzomfsZKZvaCa1CQPIwFyqLQX+TLty+7JZTAb
         8IZkWSI3I4XQX9L8HnytJzw//TCFj+7doqsF7tTyDkH9pRdWotGA+XXaVeNqk8k5je98
         ZTsS0p3DLXS2GY/PDKvb+XTMiAJ0ixEDYWFde5w1UWGS3xRIOimXLadpCdxGhqIrbmnX
         mVM5AjBlLkDbod11LozblHsBdZhG+9goKb+PRPEsZ3YUmkIvgyPdwH2XlTzk2v7H3DCg
         owbP/NWPHJpuGvX4YV4YasVGtBcIwFrQGK0KHFL6XRkVoWAGw9k5ztMNOl5HsUD9bBi7
         jsiA==
X-Gm-Message-State: AOAM5332GBI46knL2q/7duqGq7inj44E6HHU4hnOGD3REYu6m/RxCqvM
        6EudSsgbQK70kR6KTg5Tm6q5DQ==
X-Google-Smtp-Source: ABdhPJwkP6+qFTcT56YUKWIpjCJolaRHm45P0WFAs8Pr7H1mfHcNbAwnotit5XmKR8XF0dTN4fDK3Q==
X-Received: by 2002:ac2:4356:: with SMTP id o22mr21956739lfl.309.1625701517999;
        Wed, 07 Jul 2021 16:45:17 -0700 (PDT)
Received: from localhost.localdomain (c-fdcc225c.014-348-6c756e10.bbcust.telenor.se. [92.34.204.253])
        by smtp.gmail.com with ESMTPSA id c9sm51062ljb.22.2021.07.07.16.45.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jul 2021 16:45:17 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        dri-devel@lists.freedesktop.org
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org, phone-devel@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>
Subject: [PATCH 1/2 v3] drm/panel: Add DT bindings for Samsung LMS380KF01
Date:   Thu,  8 Jul 2021 01:43:14 +0200
Message-Id: <20210707234315.242663-1-linus.walleij@linaro.org>
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
ChangeLog v2->v3:
- No changes just resending with the series.
ChangeLog v1->v2:
- Expect SPI bindings to be pulled in for the client and state
  spi-cpha: true etc.
- Make port a required node.
- Update the example to use a proper SPI controller (spi-gpio)
  so we get full validation of the example.
---
 .../display/panel/samsung,lms380kf01.yaml     | 97 +++++++++++++++++++
 1 file changed, 97 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,lms380kf01.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/samsung,lms380kf01.yaml b/Documentation/devicetree/bindings/display/panel/samsung,lms380kf01.yaml
new file mode 100644
index 000000000000..ebc33c36c124
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/samsung,lms380kf01.yaml
@@ -0,0 +1,97 @@
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
+  spi-cpha: true
+
+  spi-cpol: true
+
+  spi-max-frequency:
+    maximum: 1200000
+
+  port: true
+
+required:
+  - compatible
+  - reg
+  - spi-cpha
+  - spi-cpol
+  - port
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    spi {
+      compatible = "spi-gpio";
+      sck-gpios = <&gpio 0 GPIO_ACTIVE_HIGH>;
+      miso-gpios = <&gpio 1 GPIO_ACTIVE_HIGH>;
+      mosi-gpios = <&gpio 2 GPIO_ACTIVE_HIGH>;
+      cs-gpios = <&gpio 3 GPIO_ACTIVE_HIGH>;
+      num-chipselects = <1>;
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
+        reset-gpios = <&gpio 4 GPIO_ACTIVE_LOW>;
+        interrupt-parent = <&gpio>;
+        interrupts = <5 IRQ_TYPE_EDGE_RISING>;
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


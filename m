Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 511BA3C9410
	for <lists+devicetree@lfdr.de>; Thu, 15 Jul 2021 00:52:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237168AbhGNWzC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Jul 2021 18:55:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236148AbhGNWzC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Jul 2021 18:55:02 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 411D7C061760
        for <devicetree@vger.kernel.org>; Wed, 14 Jul 2021 15:52:09 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id 141so5836332ljj.2
        for <devicetree@vger.kernel.org>; Wed, 14 Jul 2021 15:52:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vc1795qvLpUqEdDnFv1A73y0n5CUCOk1ko3r9sb3Sx0=;
        b=nxc0PfF+vcpPyOd7wizP6Qq8XgwEGMvP+b0wo88UNeoTCIUvTu4QhMo2t7Yfw5pUdt
         WkLIfeTxJaOuf6Xi9NXmUM2+BPH07qole1NgZngPcaI0qRHcCI95amaJRsh9rk4mivV6
         g8VQ5SHNrOIdqNEB3N9mXsZi3PQwHKm4UO4JeLWRAToht4FNhS8eq7mUIMUkvo23Cciz
         FPyHPl5qLuzw5YW0aKKroNZn6sc+EaHddghvNE/hFcEAk1rLFv0RECf7kKghA44lPE3d
         Ra9KaDIgRFONPbCvBdAVPH4AfVoLvtDqATNPZZ2cNfeODSBeer0EeUjbgN0W4aRqwiYS
         R9+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vc1795qvLpUqEdDnFv1A73y0n5CUCOk1ko3r9sb3Sx0=;
        b=atmX0hd0KPMHmslFEIQx3uUkgNglRzPSNFGCCpAmqhtdzZ+2BoCfCJm6lKfdEmay0d
         I0uSR4P+Y23cPMpfD9hM+x5CQOKEb2ftClUb2/FVGH6ERxlpyINdQKrqtQol0sZ4HZUe
         FXsMjSOL7XPjKuhZjYQYeQ6IC2HGUijmb6OCiZH2jIpPlSqZ5pctp5gdqlBDj6Zw+yzs
         p85KgyiE49y9nWtUg5Ts7AdH90qgipYkn/x406fKCtFjijuUl8LJpFMavresLX46X3dU
         BZGJI3GFsEMwj5ot2NQUdIRpmCUsy/AR/6Opf38+Z7bHHH3m5s8Ic3xPsX2AIAaZ6AEw
         85jA==
X-Gm-Message-State: AOAM530P7FLsYptBRFvglIh4yP1VyjaGzCOMlaZXt1RHje8Ailenq1eM
        CnZ26itUpyhb9vibtRrHhiocmA==
X-Google-Smtp-Source: ABdhPJxDXhj2BLMGMjFb1MJmvVrRCVFza7h3BYAxpmGa8zBkaoag7+E02+PhIRS+h7Jp8yaKlFSUcw==
X-Received: by 2002:a2e:80c2:: with SMTP id r2mr173089ljg.164.1626303127507;
        Wed, 14 Jul 2021 15:52:07 -0700 (PDT)
Received: from localhost.localdomain (c-fdcc225c.014-348-6c756e10.bbcust.telenor.se. [92.34.204.253])
        by smtp.gmail.com with ESMTPSA id m4sm205984ljq.96.2021.07.14.15.52.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jul 2021 15:52:06 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        dri-devel@lists.freedesktop.org
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org, phone-devel@vger.kernel.org,
        =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
        Douglas Anderson <dianders@chromium.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH 1/2 v4] drm/panel: Add DT bindings for Samsung LMS380KF01
Date:   Thu, 15 Jul 2021 00:50:01 +0200
Message-Id: <20210714225002.1065107-1-linus.walleij@linaro.org>
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
Cc: Noralf Trønnes <noralf@tronnes.org>
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v3->v4:
- Collect a few Reviewed-by's
- Mention that the node must be an SPI child.
- Indent example by 4 spaces.
- Resend with the driver updates.
ChangeLog v2->v3:
- No changes just resending with the series.
ChangeLog v1->v2:
- Expect SPI bindings to be pulled in for the client and state
  spi-cpha: true etc.
- Make port a required node.
- Update the example to use a proper SPI controller (spi-gpio)
  so we get full validation of the example.
---
 .../display/panel/samsung,lms380kf01.yaml     | 99 +++++++++++++++++++
 1 file changed, 99 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,lms380kf01.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/samsung,lms380kf01.yaml b/Documentation/devicetree/bindings/display/panel/samsung,lms380kf01.yaml
new file mode 100644
index 000000000000..251f0c7115aa
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/samsung,lms380kf01.yaml
@@ -0,0 +1,99 @@
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
+  The panel must obey the rules for a SPI slave device as specified in
+  spi/spi-controller.yaml
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
+        compatible = "spi-gpio";
+        sck-gpios = <&gpio 0 GPIO_ACTIVE_HIGH>;
+        miso-gpios = <&gpio 1 GPIO_ACTIVE_HIGH>;
+        mosi-gpios = <&gpio 2 GPIO_ACTIVE_HIGH>;
+        cs-gpios = <&gpio 3 GPIO_ACTIVE_HIGH>;
+        num-chipselects = <1>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        panel@0 {
+            compatible = "samsung,lms380kf01";
+            spi-max-frequency = <1200000>;
+            spi-cpha;
+            spi-cpol;
+            reg = <0>;
+            vci-supply = <&lcd_3v0_reg>;
+            vccio-supply = <&lcd_1v8_reg>;
+            reset-gpios = <&gpio 4 GPIO_ACTIVE_LOW>;
+            interrupt-parent = <&gpio>;
+            interrupts = <5 IRQ_TYPE_EDGE_RISING>;
+
+            port {
+                panel_in: endpoint {
+                    remote-endpoint = <&display_out>;
+                };
+            };
+        };
+    };
+
+...
-- 
2.31.1


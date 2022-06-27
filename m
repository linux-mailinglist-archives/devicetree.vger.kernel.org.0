Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7263755CA07
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 14:57:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237652AbiF0PFQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 11:05:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236093AbiF0PFL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 11:05:11 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 366D317592
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 08:05:10 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id h14-20020a1ccc0e000000b0039eff745c53so5811771wmb.5
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 08:05:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Q/qNchMN3fi99e0hw7FrgtY/UyQg4ox/iqGDXX9XdaQ=;
        b=e8qLad0cOTMs7IHvIZLMmYbi3/SfNmnY8OFnjn8+OdCKmwvED5rARJ7juYlpYdhryV
         1Qr/1UuLLIvZQa87uFTclFe1u/Kx+4SuQr35WBz/ktaJFxMIl1PFEb8gxE19GeFL7qmc
         4qJeqkATx+o0s1y0uUQ+WO+cmMRFM0NP8J4es=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Q/qNchMN3fi99e0hw7FrgtY/UyQg4ox/iqGDXX9XdaQ=;
        b=Q5TRSY3xi9hHJK/QgDuuzdVHd7jVoU5KAHLqzoggsNnPFrsWHe+X4kVr4V3EUE6gPD
         nxeUyRamTqezi4oD+2TrF0aj3OtmvUi6/gbDbvJ6wX02aq37EQEWqXrxZYVOeLQQLXSp
         MoKmbywwoBkwgRq1JLecfmsUFZ8hLMdQMenSWmzE/zdU0qL4oSr9KtwTKNpwAi9f4l7o
         eFnJpFayPuWUuUJxAOBgt2myWDad7X079iSEfHHXb/FaAYH4neQf5QUmMwVvYMTREBWa
         Et+R0ajOXOLx6i67UkfEv8bup9XeLMZxnxeJQZgAE4ETeDVVQV/qamYUz7+PEc+JMkT3
         P0ZA==
X-Gm-Message-State: AJIora9rQVEBHjRqgJ8c3J3QjemRe5FrSdN58JRxt9WYJlfBjl1Iay9n
        lq5SUJn2MXbxwCdeXjQHboza1Q==
X-Google-Smtp-Source: AGRyM1v8O4fcCQ/hU78/LPZ5Zd2jI0PQIzJBDQS4a1F8Ic7fbDz8SQ6Nvwui6Szr+NGZwtzdowiMMg==
X-Received: by 2002:a1c:2703:0:b0:3a0:2ffb:1781 with SMTP id n3-20020a1c2703000000b003a02ffb1781mr19998529wmn.146.1656342308807;
        Mon, 27 Jun 2022 08:05:08 -0700 (PDT)
Received: from tom-ThinkPad-T14s-Gen-2i.station (net-188-217-58-216.cust.vodafonedsl.it. [188.217.58.216])
        by smtp.gmail.com with ESMTPSA id d18-20020adfe852000000b0021ba3d1f2a0sm10581250wrn.48.2022.06.27.08.05.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 08:05:08 -0700 (PDT)
From:   Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
Cc:     linuxfancy@googlegroups.com, linux-amarula@amarulasolutions.com,
        quentin.schulz@theobroma-systems.com,
        Tommaso Merciai <tommaso.merciai@amarulasolutions.com>,
        Daniel Scally <djrscally@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 7/7] media: dt-bindings: ov5693: document YAML binding
Date:   Mon, 27 Jun 2022 17:04:53 +0200
Message-Id: <20220627150453.220292-8-tommaso.merciai@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220627150453.220292-1-tommaso.merciai@amarulasolutions.com>
References: <20220627150453.220292-1-tommaso.merciai@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
To:     unlisted-recipients:; (no To-header on input)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds documentation of device tree in YAML schema for the
OV5693 CMOS image sensor from Omnivision

Signed-off-by: Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
---
Changes since v1:
 - Fix allOf position as suggested by Krzysztof
 - Remove port description as suggested by Krzysztof
 - Fix EOF as suggested by Krzysztof

 .../bindings/media/i2c/ovti,ov5693.yaml       | 108 ++++++++++++++++++
 MAINTAINERS                                   |   1 +
 2 files changed, 109 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,ov5693.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov5693.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov5693.yaml
new file mode 100644
index 000000000000..e8e2776efc08
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov5693.yaml
@@ -0,0 +1,108 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright (c) 2022 Amarulasolutions
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/i2c/ovti,ov5693.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Omnivision OV5693 CMOS Sensor
+
+maintainers:
+  - Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
+
+description: |
+  The Omnivision OV5693 is a high performance, 1/4-inch, 5 megapixel, CMOS
+  image sensor that delivers 2592x1944 at 30fps. It provides full-frame,
+  sub-sampled, and windowed 10-bit MIPI images in various formats via the
+  Serial Camera Control Bus (SCCB) interface.
+
+  Supports images sizes: 5 Mpixel, EIS1080p, 1080p, 720p, VGA, QVGA
+
+  OV5693 is programmable through I2C and two-wire Serial Camera Control Bus (SCCB).
+  The sensor output is available via CSI-2 serial data output (up to 2-lane).
+
+allOf:
+  - $ref: /schemas/media/video-interface-devices.yaml#
+
+properties:
+  compatible:
+    const: ovti,ov5693
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    description:
+      System input clock (aka XVCLK). From 6 to 27 MHz.
+    maxItems: 1
+
+  dovdd-supply:
+    description:
+      Digital I/O voltage supply, 1.8V.
+
+  avdd-supply:
+    description:
+      Analog voltage supply, 2.8V.
+
+  dvdd-supply:
+    description:
+      Digital core voltage supply, 1.2V.
+
+  reset-gpios:
+    description:
+      The phandle and specifier for the GPIO that controls sensor reset.
+      This corresponds to the hardware pin XSHUTDN which is physically
+      active low.
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - dovdd-supply
+  - avdd-supply
+  - dvdd-supply
+  - port
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/px30-cru.h>
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/pinctrl/rockchip.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        ov5693: camera@36 {
+            compatible = "ovti,ov5693";
+            reg = <0x36>;
+
+            reset-gpios = <&gpio2 RK_PB1 GPIO_ACTIVE_LOW>;
+            pinctrl-names = "default";
+            pinctrl-0 = <&cif_clkout_m0>;
+
+            clocks = <&cru SCLK_CIF_OUT>;
+            assigned-clocks = <&cru SCLK_CIF_OUT>;
+            assigned-clock-rates = <19200000>;
+
+            avdd-supply = <&vcc_1v8>;
+            dvdd-supply = <&vcc_1v2>;
+            dovdd-supply = <&vcc_2v8>;
+
+            rotation = <90>;
+            orientation = <0>;
+
+            port {
+                ucam_out: endpoint {
+                    remote-endpoint = <&mipi_in_ucam>;
+                    data-lanes = <1 2>;
+                    link-frequencies = /bits/ 64 <450000000>;
+                };
+            };
+        };
+    };
+
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index 1fc9ead83d2a..844307cb20c4 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14719,6 +14719,7 @@ M:	Daniel Scally <djrscally@gmail.com>
 L:	linux-media@vger.kernel.org
 S:	Maintained
 T:	git git://linuxtv.org/media_tree.git
+F:	Documentation/devicetree/bindings/media/i2c/ovti,ov5693.yaml
 F:	drivers/media/i2c/ov5693.c
 
 OMNIVISION OV5695 SENSOR DRIVER
-- 
2.25.1


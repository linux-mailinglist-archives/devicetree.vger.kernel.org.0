Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F192F704A82
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 12:28:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231240AbjEPK2T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 06:28:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232147AbjEPK16 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 06:27:58 -0400
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 186BE44B0
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 03:27:48 -0700 (PDT)
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-1ae2c8734fcso9761265ad.0
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 03:27:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684232867; x=1686824867;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bqMLI0maOpo2Ihi586BJpZhmzQ6IMM9YKST5c6Iye+U=;
        b=Hgh7RCVbcHJbZupuXrzH0piwAliCo+0kvw1Q0qFUEu5BZ7smyAHLzLii+iztOj/GXt
         U+rzsR0e5p7xiyI9dEPC8hfP18WA7gPb8kOJ3m0kZhCwzUct0FyW9yteaKy8f5AAuP++
         +ZkA9voOX2su+tKuPM6IGJvG5Jy+jdIUA/UzuVLTDFt4te9lEiKzR3PJCBeKItCV4W0G
         cxYA+bhKH1CH2eV5r2Zd+ILnyrN4wrXxmYNrtvOvXnHQkfhKOOPT5Z26GHTnSyVI1ToO
         0GU+y1LQCtuuFC5/ZieisdTAq0CF2XQ33K/MJKI1n7xd0P+5uz/XVRAPGmW3VN4vy1L/
         Pp2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684232867; x=1686824867;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bqMLI0maOpo2Ihi586BJpZhmzQ6IMM9YKST5c6Iye+U=;
        b=RWksgCVQG15+v++tjzsB34hCT035ap8bd2LtsLCByZ4puDz7viRA6rU3gMl0mBalwS
         bp85699yqytab2ISJMv+EFvOB943gPKdxp034c1SoX4dvDFXk5bHeOK7zXmPN29THR8K
         ZrcIfibDUubzPZxaEMURhW9AI/iFJ94CYwYw2zvOjsG4qXYfJhur+oQ8zZP1pEaOVZ7Q
         g86sfyyyHyayiua0aoRwXPCovxx/ey1ZdxY7FbNOBYcbCZt8rRbrZIfmrXtFeeYlJHiT
         fwbcRRAwoUi/E7XAJTILK/H3KqSZ7hAdeMsHsWHoZ8O2N0DgB9YzLy6TSkttiYsX2q+4
         ezAA==
X-Gm-Message-State: AC+VfDw2ax6aLlT2QhXIidg9SN5BYD0Dufn2d6QoMh4ODb651StNE/g7
        Wcjkfex1PdYOfRAljSYt0gj3ROCU69W68n/9xfM=
X-Google-Smtp-Source: ACHHUZ6aMIqwQB6Rj1Gx7+/fItJEzu1PXtFNzngxDMfK//T5IpLbcACB0I4xaEvWpWLmOamF312yse34zRfIYaT62h0=
X-Received: by 2002:a17:90a:d590:b0:250:b16:f498 with SMTP id
 v16-20020a17090ad59000b002500b16f498mr35350623pju.47.1684232867471; Tue, 16
 May 2023 03:27:47 -0700 (PDT)
MIME-Version: 1.0
From:   =?UTF-8?B?UGF1bG8gUGF2YcSNacSH?= <pavacic.p@gmail.com>
Date:   Tue, 16 May 2023 12:27:36 +0200
Message-ID: <CAO9szn3t-giVipb5oH_3mzQZbnXbDqqz0WEg8uAmo-1W2uKzFg@mail.gmail.com>
Subject: [PATCH] dt-bindings: add panel-mipi-dsi-bringup DT schema
To:     neil.armstrong@linaro.org, sam@ravnborg.org, conor+dt@kernel.org
Cc:     devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From 5a202ed7c7aa3433e348c5fed176defab1af1fae Mon Sep 17 00:00:00 2001
From: =3D?UTF-8?q?Paulo=3D20Pava=3DC4=3D8Di=3DC4=3D87?=3D <paulo.pavacic@ze=
nitel.com>
Date: Tue, 16 May 2023 12:17:38 +0200
Subject: [PATCH] dt-bindings: add panel-mipi-dsi-bringup DT schema
MIME-Version: 1.0
Content-Type: text/plain; charset=3DUTF-8
Content-Transfer-Encoding: 8bit

Add dt-bindings documentation for panel-mipi-dsi-bringup which currently
supports fannal,C3004 panel. Also added fannal to vendor-prefixes.

Signed-off-by: Paulo Pava=C4=8Di=C4=87 <pavacic.p@gmail.com>
---
 .../display/panel/panel-mipi-dsi-bringup.yaml | 65 +++++++++++++++++++
 .../devicetree/bindings/vendor-prefixes.yaml  |  2 +
 2 files changed, 67 insertions(+)
 create mode 100644
Documentation/devicetree/bindings/display/panel/panel-mipi-dsi-bringup.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/panel-mipi-dsi=
-bringup.yaml
b/Documentation/devicetree/bindings/display/panel/panel-mipi-dsi-bringup.ya=
ml
new file mode 100644
index 000000000000..a867f86fa984
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/panel-mipi-dsi-bringu=
p.yaml
@@ -0,0 +1,65 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/panel-mipi-dsi-bringup.ya=
ml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MIPI DSI Bringup driver
+
+description: |
+  This document defines device tree for the MIPI DSI Bringup driver. And a=
ll
+  the required parameters to get your panel to work. Driver was made to he=
lp
+  enabling MIPI DSI panels, to get those first pixels drawn on to the scre=
en.
+  Since already you have to patch the driver with initialization sequences=
 all
+  the settings such as DSI lanes, video mode, dsi formats are set in the
+  driver directly. SInce adding new panel can be overwhelming and to make
+  porting easier, you can search for word `INTERACTION` in the driver
+  to check sections that you have to modify .
+
+
+maintainers:
+  - |
+      Paulo Pava=C4=8Di=C4=87
+      <paulo.pavacic@zenitel.com> <pavacic.p@gmail.com> <@ppavacic:matrix.=
org>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    const: fannal,C3004
+
+  reg: true
+  reset-gpios: true
+
+required:
+  - compatible
+  - reg
+  - reset-gpios
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    //example on IMX8MM where GPIO pin 9 is used as a reset pin
+    &mipi_dsi {
+        status =3D "okay";
+        panel@0 {
+            status =3D "okay";
+            reg =3D <0>;
+            compatible =3D "fannal,C3004";
+            pinctrl-0 =3D <&pinctrl_mipi_dsi_rst>;
+            pinctrl-names =3D "default";
+            reset-gpios =3D <&gpio1 9 GPIO_ACTIVE_LOW>;
+        };
+    };
+    &iomuxc {
+         pinctrl_mipi_dsi_rst: pinctrl_mipi_dsi_rst {
+            fsl,pins =3D <
+                MX8MM_IOMUXC_GPIO1_IO09_GPIO1_IO09  0x16
+            >;
+        };
+    }
+
+...
diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml
b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 82d39ab0231b..f962750f630a 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -462,6 +462,8 @@ patternProperties:
     description: Facebook
   "^fairphone,.*":
     description: Fairphone B.V.
+  "^fannal,.*":
+    description: Fannal Electronics Co., Ltd
   "^faraday,.*":
     description: Faraday Technology Corporation
   "^fastrax,.*":
--=20
2.40.1

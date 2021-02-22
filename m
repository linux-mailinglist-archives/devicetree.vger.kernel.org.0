Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B63F3321B9B
	for <lists+devicetree@lfdr.de>; Mon, 22 Feb 2021 16:36:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230282AbhBVPfu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Feb 2021 10:35:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230302AbhBVPfq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Feb 2021 10:35:46 -0500
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 708E4C06178A
        for <devicetree@vger.kernel.org>; Mon, 22 Feb 2021 07:35:02 -0800 (PST)
Received: by mail-pl1-x62b.google.com with SMTP id a24so7936698plm.11
        for <devicetree@vger.kernel.org>; Mon, 22 Feb 2021 07:35:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id;
        bh=2U8z9Rh9hQENfZBHEjdzikqpHVnTZc9rkP25ytLoLPU=;
        b=f5b0xj9I7Q2Tdl970OI1nAueN9gZ9C/8xSu7nxLdEu37PQanoVd6pG9SLWKaVCs3zo
         RebudpQ7qZ95dPitRY/WfCM/UhkBTkD9BIDVSiilPneUXbeSmb4yFHv6L/1qxMH8uEGS
         hqHbrmIJFNTtaRoMb08qGRnuySLIkuc1nlNRs+qXz8EjLTTbc4p0KthZ/a7GeZKwNB3t
         IXasK8dqli+nFMMwrmmFbuBujHR8oWfp0ezeGEce5fMZC2kDcNaOFygWyRCUrpV1AAJ/
         UNKNK7T4cc+R6AL2VfrxxdNz1Ave33xHISD6aribpFnjVjCAx93ovzYqVUanCsKOfz66
         4ZHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=2U8z9Rh9hQENfZBHEjdzikqpHVnTZc9rkP25ytLoLPU=;
        b=RQwya8QuQ8nOAnaEC2eQSwatS3g+Dwn38Gs+yxB+Ijuz1xMlwi9eh2yiYW2jsrcGHo
         uYZYqJV1xBXl1NU5ltOCH/Gelo08UdqPoZ8qVAL8gRNPqjv2DZA6c/jPIueW8rvoOVqf
         hanXoN22uZpouHv0UOllrIRWm2XRsitSa9N94V6bxRMm1Y8MeU2vYQsLdDuFlTF0LpCK
         xB77AupSqwhReO/JTvJq9QZ4B+/vO7iv7+50NrDSUdjfgemJrdPdbBG40MWS+CBSLzOn
         yqKVAeboQ7vx4rdoN5ROx4UkxwZAQrZJu0Vz6MhsMqvFbzJ8D0zA/fF47CTGC8bnJXvr
         3UNQ==
X-Gm-Message-State: AOAM532uDrjI+Vl5zHW0p+jybFsLqKRKIxPBdDja23A8FtP5ne3rFLN0
        vbfTXnC4OkwifppQ6VXQIoyyaw==
X-Google-Smtp-Source: ABdhPJx5RtOzgQKUgQ8ekAvGjECJ4YXFYw0+bp7A8XgvPW7G4TLCBTqESYK3dBHLMVlpG4t8tCf9NQ==
X-Received: by 2002:a17:90a:fb4e:: with SMTP id iq14mr24519817pjb.18.1614008102050;
        Mon, 22 Feb 2021 07:35:02 -0800 (PST)
Received: from ubuntu.huaqin.com ([101.78.151.214])
        by smtp.gmail.com with ESMTPSA id s62sm11692837pfb.148.2021.02.22.07.34.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Feb 2021 07:35:01 -0800 (PST)
From:   Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com>
To:     pihsun@chromium.org, drinkcat@google.com, marcheu@chromium.org,
        jitao.shi@mediatek.com, thierry.reding@gmail.com, sam@ravnborg.org,
        airlied@linux.ie, daniel@ffwll.ch, robh+dt@kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com>
Subject: [PATCH 1/2] dt-bindings: display: Add STARRY 2081101QFH032011-53G
Date:   Mon, 22 Feb 2021 23:34:54 +0800
Message-Id: <20210222153454.20198-1-xiazhengqiao@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add dt-bindings for 10.1" TFT LCD module called STARRY 2081101
QFH032011-53G.

Signed-off-by: Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com>
---
 .../display/panel/innolux,himax8279d.yaml     | 74 +++++++++++++++++++
 1 file changed, 74 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/innolux,himax8279d.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/innolux,himax8279d.yaml b/Documentation/devicetree/bindings/display/panel/innolux,himax8279d.yaml
new file mode 100644
index 000000000000..ae2d6d39fed5
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/innolux,himax8279d.yaml
@@ -0,0 +1,74 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/innolux,himax8279d.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: INNOLUX HIMAX8279D DSI Display Panel
+
+maintainers:
+  - Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    enum:
+        # STARRY 2081101QFH032011-53G 10.1" WUXGA TFT LCD panel
+      - starry,2081101qfh032011-53g
+
+
+  reg:
+    description: the virtual channel number of a DSI peripheral
+
+  enable-gpios:
+    description: a GPIO spec for the enable pin
+
+  pp1800-supply:
+    description: core voltage supply
+
+  avdd-supply:
+    description: phandle of the regulator that provides positive voltage
+
+  avee-supply:
+    description: phandle of the regulator that provides negative voltage
+
+  backlight:
+    description: phandle of the backlight device attached to the panel
+
+  port: true
+
+required:
+  - compatible
+  - reg
+  - enable-gpios
+  - pp1800-supply
+  - avdd-supply
+  - avee-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    dsi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        panel@0 {
+            compatible = "starry,2081101qfh032011-53g";
+            reg = <0>;
+            enable-gpios = <&pio 45 0>;
+            avdd-supply = <&ppvarn_lcd>;
+            avee-supply = <&ppvarp_lcd>;
+            pp1800-supply = <&pp1800_lcd>;
+            backlight = <&backlight_lcd0>;
+            status = "okay";
+            port {
+                panel_in: endpoint {
+                    remote-endpoint = <&dsi_out>;
+                };
+            };
+        };
+    };
+
+...
-- 
2.17.1


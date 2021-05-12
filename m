Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1AF2737EEB5
	for <lists+devicetree@lfdr.de>; Thu, 13 May 2021 01:03:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230216AbhELWFW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 May 2021 18:05:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1390224AbhELVFQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 May 2021 17:05:16 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E27A4C06137A
        for <devicetree@vger.kernel.org>; Wed, 12 May 2021 13:59:46 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id e11so17799081ljn.13
        for <devicetree@vger.kernel.org>; Wed, 12 May 2021 13:59:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Xsfr4WMMESmfUFIa/+uagBjZySC6I2r3NTS5XBjiOu0=;
        b=GFM0WgsBz2OZT3n7fx8MYPTBJpJd05O11BvZAYTO+YRGxk6hLXOI7XbLAK3nWiQwJL
         CMAEP6w7XIWfOBn3OTe+ea8vSdwAeAnjGvw9nzIrfXpirHKi7p/I74KAcjm4i7JMPCjw
         TZEp4g/gcTOuUOMHKB2LVyqdvdGpp18hNfPF1XiD3zO8/6bBSBcRFglvQi85JcsncAY/
         utNA/piAU1jc4EPaDqCORGLfIQ1dnKSGoBroHv7R01v65+npQnVNcghyv3Nv/PGzVPeH
         FoFQgXr16U9ucH1tZlgz/As1LF7xIAb9+6TrlyAHFXrkWDBtQtKU8bpnI4nUZ/FAkrIV
         yLKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Xsfr4WMMESmfUFIa/+uagBjZySC6I2r3NTS5XBjiOu0=;
        b=tc7xb8ik85ZbGfDG+glL+rDnIzCsL2YZgSxQuU+eJH8jTooA3SW+v1JViTRKCCtpy0
         ONMA1yL65uLRh8I8wWK38WeZtOu8fNMLzueCEADHwXCsPeY0XtAfKAtsWUD3/w99bdnO
         zgnuk9KBQLXLkbiyTK/PuGCk7GYQLWdYnmCZe57aieKtSZP1q7A8NumkAiMD+a38GGog
         Dr6wh2VBXYgPvhm0ow7x2IK9J2ZIHWza9Yjb1/Dj51oZAeOFF5mKMLwZhYX65Dfbq6Xn
         v0wDkg645VW6k2evB2RFyEq49vh+suU+ZwQpQGuy8+/BLcmit79rio6nv6KtxXj2iXpM
         SAnQ==
X-Gm-Message-State: AOAM530FLZkcbGuokgXHIuP8Q3+nAP7Qzia/626IaNj8kfKmgYeRZ5GP
        Akw2AZL5YjQazRBfzaeBxg/8yYji4G8=
X-Google-Smtp-Source: ABdhPJyctN+pf5GRSQyc9GIRaJRJvYOtQoczbpgeuGQYLNJUt/I/0wfOExtqArNfGFU+ydbKl22rdA==
X-Received: by 2002:a2e:a44b:: with SMTP id v11mr30820898ljn.14.1620853184890;
        Wed, 12 May 2021 13:59:44 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id c22sm142314ljf.36.2021.05.12.13.59.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 May 2021 13:59:44 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org
Cc:     devicetree@vger.kernel.org,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] dt-bindings: sound: wm8750: convert to the json-schema
Date:   Wed, 12 May 2021 22:59:26 +0200
Message-Id: <20210512205926.780-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

This helps validating DTS files.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 .../devicetree/bindings/sound/wm8750.txt      | 18 --------
 .../devicetree/bindings/sound/wm8750.yaml     | 42 +++++++++++++++++++
 2 files changed, 42 insertions(+), 18 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/wm8750.txt
 create mode 100644 Documentation/devicetree/bindings/sound/wm8750.yaml

diff --git a/Documentation/devicetree/bindings/sound/wm8750.txt b/Documentation/devicetree/bindings/sound/wm8750.txt
deleted file mode 100644
index 682f221f6f38..000000000000
--- a/Documentation/devicetree/bindings/sound/wm8750.txt
+++ /dev/null
@@ -1,18 +0,0 @@
-WM8750 and WM8987 audio CODECs
-
-These devices support both I2C and SPI (configured with pin strapping
-on the board).
-
-Required properties:
-
-  - compatible : "wlf,wm8750" or "wlf,wm8987"
-
-  - reg : the I2C address of the device for I2C, the chip select
-          number for SPI.
-
-Example:
-
-wm8750: codec@1a {
-	compatible = "wlf,wm8750";
-	reg = <0x1a>;
-};
diff --git a/Documentation/devicetree/bindings/sound/wm8750.yaml b/Documentation/devicetree/bindings/sound/wm8750.yaml
new file mode 100644
index 000000000000..24246ac7bbdf
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/wm8750.yaml
@@ -0,0 +1,42 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/wm8750.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: WM8750 and WM8987 audio CODECs
+
+description: |
+  These devices support both I2C and SPI (configured with pin strapping
+  on the board).
+
+maintainers:
+  - Mark Brown <broonie@kernel.org>
+
+properties:
+  compatible:
+    enum:
+      - wlf,wm8750
+      - wlf,wm8987
+
+  reg:
+    description:
+      The I2C address of the device for I2C, the chip select number for SPI
+    maxItems: 1
+
+additionalProperties: false
+
+required:
+  - reg
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        codec@1a {
+            compatible = "wlf,wm8750";
+            reg = <0x1a>;
+        };
+    };
-- 
2.26.2


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1FA1ED7B44
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2019 18:23:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387912AbfJOQX3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Oct 2019 12:23:29 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:46534 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387934AbfJOQXP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Oct 2019 12:23:15 -0400
Received: by mail-wr1-f65.google.com with SMTP id o18so24574978wrv.13
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2019 09:23:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Oyfsjm/f/3cTPX8e+fB49AEmLNgnRiE4f3MBNPIF/lE=;
        b=Etexy0V/KEWqggN7u8UaCF7I5tKAimc+kwBrSf/NWGcg/m0KxHUQ13yF0cGQgKRZsQ
         7LCtVyLDWNzFgZ7MQPvYrBu2bqkhX04dsPGcDJt29gEz1VivuN9p08c/mgoWzIkGaA0u
         6i99xQu3M87Oi+ojjpUuL4BVUirCPgSQaxTEEFBd6LCIgkZL4aP0JH4q+epKO9XkUopM
         6rvaP1Ay/Du21cRj2YpAc6LU3lPQX6Mt1fejEScmeTuptV4pN3Pl9Icpq/ZN7qB7gypm
         m38p/d8NfQe9Ho7274BzmHoHwmPK7m7H99R9rcMDPTM0Hh3QMIErAQPR7k+mmE0UCFE2
         Wj+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Oyfsjm/f/3cTPX8e+fB49AEmLNgnRiE4f3MBNPIF/lE=;
        b=K9gz32AFzNg+ZuiwVNL73PbVq+Fo1ZeRMgaCBi/bg6V02h4Czmo4NWHvCgY9+HhbXJ
         I7EjkC+Fs3Dydk/hADKh1/jJjpvJjvIa9XVP47i586fqoI6WvZWmDT0f9zzw/LARoXAD
         FUYVr/uJPV08kRuyKMOY5KsUvVmmlDgf8nJ6wTeiGrkrfcrvKBCjCUGWqSUJWnee1y85
         mFgMpfoGG+yzHYZ+MB0m2YbmZRrkUmdJq9td7cktue2arEU/8wrQYEUtrYcSlsurxsys
         XpBkzgqTOKREzXcVEyOwSWjpklQTNRMa6iYodhl7LH8C3S6BaWZuqya1DCabxBA7lvxu
         wYcg==
X-Gm-Message-State: APjAAAUB0slWKpl6TQRuh0ReYHwOzY379mWMFlnSAqlLfiXFmgLHqG9I
        oywCs/Ywi7cWJvWtss2N2s5uEQ==
X-Google-Smtp-Source: APXvYqxbKT9NYUCfzBHzh/67remSXoazRB0t8uyVEUGS4m1bVu0z9bJo3dDsrplJ9mEwDa0WUktFeQ==
X-Received: by 2002:a5d:4fcd:: with SMTP id h13mr28487052wrw.307.1571156591430;
        Tue, 15 Oct 2019 09:23:11 -0700 (PDT)
Received: from debian-brgl.home ([2a01:cb1d:af:5b00:6d6c:8493:1ab5:dad7])
        by smtp.gmail.com with ESMTPSA id x129sm41427605wmg.8.2019.10.15.09.23.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2019 09:23:10 -0700 (PDT)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Jacek Anaszewski <jacek.anaszewski@gmail.com>,
        Pavel Machek <pavel@ucw.cz>, Dan Murphy <dmurphy@ti.com>,
        Lee Jones <lee.jones@linaro.org>,
        Sebastian Reichel <sre@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Cc:     linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org,
        linux-pm@vger.kernel.org,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: [PATCH v2 4/6] dt-bindings: power: max77650: convert the binding document to yaml
Date:   Tue, 15 Oct 2019 18:22:58 +0200
Message-Id: <20191015162300.22024-5-brgl@bgdev.pl>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191015162300.22024-1-brgl@bgdev.pl>
References: <20191015162300.22024-1-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Convert the binding document for MAX77650 charger module to YAML.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 .../power/supply/max77650-charger.txt         | 29 +------------
 .../power/supply/max77650-charger.yaml        | 42 +++++++++++++++++++
 2 files changed, 43 insertions(+), 28 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/power/supply/max77650-charger.yaml

diff --git a/Documentation/devicetree/bindings/power/supply/max77650-charger.txt b/Documentation/devicetree/bindings/power/supply/max77650-charger.txt
index e6d0fb6ff94e..fbab7d3ac8e3 100644
--- a/Documentation/devicetree/bindings/power/supply/max77650-charger.txt
+++ b/Documentation/devicetree/bindings/power/supply/max77650-charger.txt
@@ -1,28 +1 @@
-Battery charger driver for MAX77650 PMIC from Maxim Integrated.
-
-This module is part of the MAX77650 MFD device. For more details
-see Documentation/devicetree/bindings/mfd/max77650.txt.
-
-The charger is represented as a sub-node of the PMIC node on the device tree.
-
-Required properties:
---------------------
-- compatible:		Must be "maxim,max77650-charger"
-
-Optional properties:
---------------------
-- input-voltage-min-microvolt:	Minimum CHGIN regulation voltage. Must be one
-				of: 4000000, 4100000, 4200000, 4300000,
-				4400000, 4500000, 4600000, 4700000.
-- input-current-limit-microamp:	CHGIN input current limit (in microamps). Must
-				be one of: 95000, 190000, 285000, 380000,
-				475000.
-
-Example:
---------
-
-	charger {
-		compatible = "maxim,max77650-charger";
-		input-voltage-min-microvolt = <4200000>;
-		input-current-limit-microamp = <285000>;
-	};
+This file was moved to max77650-charger.yaml.
diff --git a/Documentation/devicetree/bindings/power/supply/max77650-charger.yaml b/Documentation/devicetree/bindings/power/supply/max77650-charger.yaml
new file mode 100644
index 000000000000..9dd0dad0f948
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/supply/max77650-charger.yaml
@@ -0,0 +1,42 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/power/supply/max77650-charger.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Battery charger driver for MAX77650 PMIC from Maxim Integrated.
+
+maintainers:
+  - Bartosz Golaszewski <bgolaszewski@baylibre.com>
+
+description: |
+  This module is part of the MAX77650 MFD device. For more details
+  see Documentation/devicetree/bindings/mfd/max77650.txt.
+
+  The charger is represented as a sub-node of the PMIC node on the device tree.
+
+properties:
+  compatible:
+    const: maxim,max77650-charger
+
+  input-voltage-min-microvolt:
+    description:
+      Minimum CHGIN regulation voltage.
+    enum: [ 4000000, 4100000, 4200000, 4300000,
+            4400000, 4500000, 4600000, 4700000 ]
+
+  input-current-limit-microamp:
+    description:
+      CHGIN input current limit (in microamps).
+    enum: [ 95000, 190000, 285000, 380000, 475000 ]
+
+required:
+  - compatible
+
+examples:
+  - |
+    charger {
+        compatible = "maxim,max77650-charger";
+        input-voltage-min-microvolt = <4200000>;
+        input-current-limit-microamp = <285000>;
+    };
-- 
2.23.0


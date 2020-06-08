Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 067581F1E76
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2020 19:47:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730069AbgFHRrE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Jun 2020 13:47:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726097AbgFHRrE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Jun 2020 13:47:04 -0400
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com [IPv6:2a00:1450:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5EA1C08C5C2
        for <devicetree@vger.kernel.org>; Mon,  8 Jun 2020 10:47:03 -0700 (PDT)
Received: by mail-ej1-x644.google.com with SMTP id mb16so19316625ejb.4
        for <devicetree@vger.kernel.org>; Mon, 08 Jun 2020 10:47:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5DU+mTFc8FCBMOx2TCs92eA+mmZPO6K1jVR+xUTvb6A=;
        b=VbY8uGvfw2F9GkWoelKfBW9Q+30lGEsS9oq7xu5wWNYo+plc8iWc8NFW/vQcMzhux+
         FEX4pYAZxSBK4HraYe2fhNc/TGkjDoNrqaaF9yHD2U/M+jVUwq8pZLL/F+Ml9EfDuUvn
         SxQ5U3pHPcK8uTzo+L6D/axJIFG7lBoti4lrvhsd3izSJw97XfjPcW8wRGa0LocwnKV7
         B+5p5Dot1vgF4Ay3g2RAbr7ia4s+vmkkHB/8v/9i7f1G2kJ5A01wMTZhdnVfIF7J79uS
         Z+KXvrixSVuBiveqPAchbWHn3HBwrXPg44d82poWCkqWkn4h4D3GRuDbktC4SPWGYsFG
         +KzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5DU+mTFc8FCBMOx2TCs92eA+mmZPO6K1jVR+xUTvb6A=;
        b=T3g7sQ5Xmz+/GJbes3BYtWaPQsQMRAoZR13beKljRJ8vdwTlRSHjgLHACOJ7mI/SGX
         HMaonAW5pth1+pHAyNt40hGqFn7fsSvbtbS++oW3g1nThMo/OId8pBXphWgZmhEaSzrN
         VXvmu1o/nzQ8chASoRxgi0tYziAmbDc+Qhv8cKrPgFdIRhkNf5ZRPsPgwSUbW9c1vBqW
         576MzYI0WBlVhSwVZL3YjCML801WzRBQb3IE4Z3dlEsz0L00pAR0rZfXG45BCXGLk8Xt
         9dPGDtP9xFHKNeOLwOKGcTVC5tfI9iw19ocuj+ZgarAX9qCg3gki1oEQPubtYCfETVCQ
         0wIA==
X-Gm-Message-State: AOAM531lKxBrzi/VZX88kfbq/XUGHmeIq+qW3s2XRI+gY5MxeGMnbsp8
        iIVNS59+Ca590niJv9nB4VE=
X-Google-Smtp-Source: ABdhPJyWOjPLm++B+G4sil9tNkyqOvrVuTj5HLVTT06yuLdkdZuZui7VyePUa7uBGPQlGovBjrVP3g==
X-Received: by 2002:a17:906:7083:: with SMTP id b3mr21055647ejk.57.1591638422606;
        Mon, 08 Jun 2020 10:47:02 -0700 (PDT)
Received: from localhost (p200300e41f3ad20076d02bfffe273f51.dip0.t-ipconnect.de. [2003:e4:1f3a:d200:76d0:2bff:fe27:3f51])
        by smtp.gmail.com with ESMTPSA id k22sm13219055edr.93.2020.06.08.10.47.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2020 10:47:01 -0700 (PDT)
From:   Thierry Reding <thierry.reding@gmail.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Fabio Estevam <festevam@gmail.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: sound: sgtl5000: Convert to json-schema
Date:   Mon,  8 Jun 2020 19:46:58 +0200
Message-Id: <20200608174658.1315325-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Thierry Reding <treding@nvidia.com>

Convert the Freescale SGTL5000 device tree bindings from free-form text
format to json-schema.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 .../devicetree/bindings/sound/sgtl5000.txt    |  60 ----------
 .../devicetree/bindings/sound/sgtl5000.yaml   | 103 ++++++++++++++++++
 .../devicetree/bindings/trivial-devices.yaml  |   2 -
 3 files changed, 103 insertions(+), 62 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/sgtl5000.txt
 create mode 100644 Documentation/devicetree/bindings/sound/sgtl5000.yaml

diff --git a/Documentation/devicetree/bindings/sound/sgtl5000.txt b/Documentation/devicetree/bindings/sound/sgtl5000.txt
deleted file mode 100644
index 9d9ff5184939..000000000000
--- a/Documentation/devicetree/bindings/sound/sgtl5000.txt
+++ /dev/null
@@ -1,60 +0,0 @@
-* Freescale SGTL5000 Stereo Codec
-
-Required properties:
-- compatible : "fsl,sgtl5000".
-
-- reg : the I2C address of the device
-
-- #sound-dai-cells: must be equal to 0
-
-- clocks : the clock provider of SYS_MCLK
-
-- VDDA-supply : the regulator provider of VDDA
-
-- VDDIO-supply: the regulator provider of VDDIO
-
-Optional properties:
-
-- VDDD-supply : the regulator provider of VDDD
-
-- micbias-resistor-k-ohms : the bias resistor to be used in kOhms
-	The resistor can take values of 2k, 4k or 8k.
-	If set to 0 it will be off.
-	If this node is not mentioned or if the value is unknown, then
-	micbias	resistor is set to 4K.
-
-- micbias-voltage-m-volts : the bias voltage to be used in mVolts
-	The voltage can take values from 1.25V to 3V by 250mV steps
-	If this node is not mentioned or the value is unknown, then
-	the value is set to 1.25V.
-
-- lrclk-strength: the LRCLK pad strength. Possible values are:
-0, 1, 2 and 3 as per the table below:
-
-VDDIO		1.8V		2.5V		3.3V
-0 = 		Disable
-1 =		1.66 mA		2.87 mA		4.02  mA
-2 =		3.33 mA		5.74 mA		8.03  mA
-3 =		4.99 mA		8.61 mA		12.05 mA
-
-- sclk-strength: the SCLK pad strength. Possible values are:
-0, 1, 2 and 3 as per the table below:
-
-VDDIO		1.8V		2.5V		3.3V
-0 = 		Disable
-1 =		1.66 mA		2.87 mA		4.02  mA
-2 =		3.33 mA		5.74 mA		8.03  mA
-3 =		4.99 mA		8.61 mA		12.05 mA
-
-Example:
-
-sgtl5000: codec@a {
-	compatible = "fsl,sgtl5000";
-	reg = <0x0a>;
-	#sound-dai-cells = <0>;
-	clocks = <&clks 150>;
-	micbias-resistor-k-ohms = <2>;
-	micbias-voltage-m-volts = <2250>;
-	VDDA-supply = <&reg_3p3v>;
-	VDDIO-supply = <&reg_3p3v>;
-};
diff --git a/Documentation/devicetree/bindings/sound/sgtl5000.yaml b/Documentation/devicetree/bindings/sound/sgtl5000.yaml
new file mode 100644
index 000000000000..4f29b63c54d3
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/sgtl5000.yaml
@@ -0,0 +1,103 @@
+# SPDX-License-Identifier: GPL-2.0-only
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/sgtl5000.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale SGTL5000 Stereo Codec
+
+maintainers:
+  - Fabio Estevam <festevam@gmail.com>
+
+properties:
+  compatible:
+    const: fsl,sgtl5000
+
+  reg:
+    maxItems: 1
+
+  "#sound-dai-cells":
+    const: 0
+
+  clocks:
+    items:
+      - description: the clock provider of SYS_MCLK
+
+  VDDA-supply:
+    description: the regulator provider of VDDA
+
+  VDDIO-supply:
+    description: the regulator provider of VDDIO
+
+  VDDD-supply:
+    description: the regulator provider of VDDD
+
+  micbias-resistor-k-ohms:
+    description: The bias resistor to be used in kOhms. The resistor can take
+      values of 2k, 4k or 8k. If set to 0 it will be off. If this node is not
+      mentioned or if the value is unknown, then micbias resistor is set to
+      4k.
+    $ref: "/schemas/types.yaml#/definitions/uint32"
+    enum: [ 0, 2, 4, 8 ]
+
+  micbias-voltage-m-volts:
+    description: The bias voltage to be used in mVolts. The voltage can take
+      values from 1.25V to 3V by 250mV steps. If this node is not mentioned
+      or the value is unknown, then the value is set to 1.25V.
+    $ref: "/schemas/types.yaml#/definitions/uint32"
+    enum: [ 1250, 1500, 1750, 2000, 2250, 2500, 2750, 3000 ]
+
+  lrclk-strength:
+    description: |
+      The LRCLK pad strength. Possible values are: 0, 1, 2 and 3 as per the
+      table below:
+
+        VDDIO		1.8V		2.5V		3.3V
+        0 =		Disable
+        1 =		1.66 mA		2.87 mA		4.02  mA
+        2 =		3.33 mA		5.74 mA		8.03  mA
+        3 =		4.99 mA		8.61 mA		12.05 mA
+    $ref: "/schemas/types.yaml#/definitions/uint32"
+    enum: [ 0, 1, 2, 3 ]
+
+  sclk-strength:
+    description: |
+      The SCLK pad strength. Possible values are: 0, 1, 2 and 3 as per the
+      table below:
+
+        VDDIO		1.8V		2.5V		3.3V
+        0 =		Disable
+        1 =		1.66 mA		2.87 mA		4.02  mA
+        2 =		3.33 mA		5.74 mA		8.03  mA
+        3 =		4.99 mA		8.61 mA		12.05 mA
+    $ref: "/schemas/types.yaml#/definitions/uint32"
+    enum: [ 0, 1, 2, 3 ]
+
+required:
+  - compatible
+  - reg
+  - "#sound-dai-cells"
+  - clocks
+  - VDDA-supply
+  - VDDIO-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        codec@a {
+            compatible = "fsl,sgtl5000";
+            reg = <0x0a>;
+            #sound-dai-cells = <0>;
+            clocks = <&clks 150>;
+            micbias-resistor-k-ohms = <2>;
+            micbias-voltage-m-volts = <2250>;
+            VDDA-supply = <&reg_3p3v>;
+            VDDIO-supply = <&reg_3p3v>;
+        };
+    };
+...
diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index 4165352a590a..b7e94fe8643f 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -80,8 +80,6 @@ properties:
           - fsl,mpl3115
             # MPR121: Proximity Capacitive Touch Sensor Controller
           - fsl,mpr121
-            # SGTL5000: Ultra Low-Power Audio Codec
-          - fsl,sgtl5000
             # G751: Digital Temperature Sensor and Thermal Watchdog with Two-Wire Interface
           - gmt,g751
             # Infineon IR38064 Voltage Regulator
-- 
2.24.1


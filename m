Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E475D4A2F5D
	for <lists+devicetree@lfdr.de>; Sat, 29 Jan 2022 13:24:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345824AbiA2MYm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Jan 2022 07:24:42 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:32962
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1345649AbiA2MYk (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sat, 29 Jan 2022 07:24:40 -0500
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com [209.85.128.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 9CF373F1D9
        for <devicetree@vger.kernel.org>; Sat, 29 Jan 2022 12:24:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643459079;
        bh=tXqK0pipG2DbLRjVtcGxzSWNM2TWL5POjuuSkj4vEW8=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=IaW3LdpdbTff9xH8SspyupTT21wzY14hYmcMTrISstTTeAppHtlnBNq7dQWUXOeAG
         SepEfZlb8dgazZKCrpmvNEtnSUiNhYXIOykonRe2ZKhNU1u5n2Glyly3ypG28yMyEs
         zY8/+E2tejh2XywXxB4btPuQQzFqUyq0hNF1+GB8RS4A47G/uikn2LT7Ui7fXtEYmu
         CyQgTY+9RnFyit6lh+GTyc7hCLgcNZ4R+Ox8QfidezL9wIfsXO72ixLjwkyNlZbb7j
         IQBppbrNoy8n78fOcuVKltAU+3ZYAfXdN1vjMIiEejE6D6vXS+ECCD/gFkAx0lC9YH
         gE7Ka7JFiji4Q==
Received: by mail-wm1-f72.google.com with SMTP id t2-20020a7bc3c2000000b003528fe59cb9so616973wmj.5
        for <devicetree@vger.kernel.org>; Sat, 29 Jan 2022 04:24:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tXqK0pipG2DbLRjVtcGxzSWNM2TWL5POjuuSkj4vEW8=;
        b=CL4nXI2wbi+PXNQi+TwlhW5g5j06+vkttZxhBaPZ+5Lo603+JRTAP7O4GwUgUimrwu
         u86YZkBhSQd14pqEvnnCIy8w9pLfZK6XjibqUl8QmYQnbOXICqKxLHX7ImWZYbQ+7YNL
         XE1CoUA1r1+pQGHfGqRCHqw9tOlq63wLzlpoqm2suSwtGBOS7llXDR9jUcFHiAKAsAgb
         MNNRzItf/mP4o2+tYmL2Ker5deyGQR0Oot8hSyYKq/pCpaqSJvmX3SlWd2/OHutbb7ZE
         FC6uIIwvU53fusiv1eegnG/TS/7WzF9m9mBNIylnOPsOAAXsGAAzgPbwvHpTSPjlBQ3J
         lXzQ==
X-Gm-Message-State: AOAM532h5TBOd3wNdTVTqGk/xPPjuLGdyNEXUdfsmbC/kAgI0El7rLIl
        ft4FNcoaSr49UO+ePKlq07RZCt1ERjdKp4+VjmAnxaHKQ2swNoYSRKq1jz4OaMp2PcDLWQVCflx
        AkdIeVOpsPO/pFryeRLItWycpQtbu+5XI4bc4dT8=
X-Received: by 2002:a7b:c153:: with SMTP id z19mr19068537wmi.118.1643459079232;
        Sat, 29 Jan 2022 04:24:39 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzdmqfActw14wC7FL3RmrVzbohLPY/HdEUge5K9x5B3jaX/pE3A4wDMlx+joQVK33YEdtkdlQ==
X-Received: by 2002:a7b:c153:: with SMTP id z19mr19068521wmi.118.1643459078995;
        Sat, 29 Jan 2022 04:24:38 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id m28sm1106875wms.34.2022.01.29.04.24.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Jan 2022 04:24:38 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Jonathan Bakker <xc-racer2@live.ca>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 6/6] ASoC: dt-bindings: samsung,tm2: convert to dtschema
Date:   Sat, 29 Jan 2022 13:24:30 +0100
Message-Id: <20220129122430.45694-5-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220129122357.45545-1-krzysztof.kozlowski@canonical.com>
References: <20220129122357.45545-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the audio complex on Samsung TM2 boards with Samsung Exynos SoC
to DT schema format.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../bindings/sound/samsung,tm2-audio.txt      | 42 ----------
 .../bindings/sound/samsung,tm2.yaml           | 80 +++++++++++++++++++
 2 files changed, 80 insertions(+), 42 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/samsung,tm2-audio.txt
 create mode 100644 Documentation/devicetree/bindings/sound/samsung,tm2.yaml

diff --git a/Documentation/devicetree/bindings/sound/samsung,tm2-audio.txt b/Documentation/devicetree/bindings/sound/samsung,tm2-audio.txt
deleted file mode 100644
index f5ccc12ddc00..000000000000
--- a/Documentation/devicetree/bindings/sound/samsung,tm2-audio.txt
+++ /dev/null
@@ -1,42 +0,0 @@
-Samsung Exynos5433 TM2(E) audio complex with WM5110 codec
-
-Required properties:
-
- - compatible		 : "samsung,tm2-audio"
- - model		 : the user-visible name of this sound complex
- - audio-codec		 : the first entry should be phandle of the wm5110 audio
-			   codec node, as described in ../mfd/arizona.txt;
-			   the second entry should be phandle of the HDMI
-			   transmitter node
- - i2s-controller	 : the list of phandle and argument tuples pointing to
-			   I2S controllers, the first entry should be I2S0 and
-			   the second one I2S1
- - audio-amplifier	 : the phandle of the MAX98504 amplifier
- - samsung,audio-routing : a list of the connections between audio components;
-			   each entry is a pair of strings, the first being the
-			   connection's sink, the second being the connection's
-			   source; valid names for sources and sinks are the
-			   WM5110's and MAX98504's pins and the jacks on the
-			   board: HP, SPK, Main Mic, Sub Mic, Third Mic,
-			   Headset Mic
- - mic-bias-gpios	 : GPIO pin that enables the Main Mic bias regulator
-
-
-Example:
-
-sound {
-	compatible = "samsung,tm2-audio";
-	audio-codec = <&wm5110>, <&hdmi>;
-	i2s-controller = <&i2s0 0>, <&i2s1 0>;
-	audio-amplifier = <&max98504>;
-	mic-bias-gpios = <&gpr3 2 0>;
-	model = "wm5110";
-	samsung,audio-routing =
-		"HP", "HPOUT1L",
-		"HP", "HPOUT1R",
-		"SPK", "SPKOUT",
-		"SPKOUT", "HPOUT2L",
-		"SPKOUT", "HPOUT2R",
-		"Main Mic", "MICBIAS2",
-		"IN1R", "Main Mic";
-};
diff --git a/Documentation/devicetree/bindings/sound/samsung,tm2.yaml b/Documentation/devicetree/bindings/sound/samsung,tm2.yaml
new file mode 100644
index 000000000000..74712d6f3ef4
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/samsung,tm2.yaml
@@ -0,0 +1,80 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/samsung,tm2.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung Exynos5433 TM2(E) audio complex with WM5110 codec
+
+maintainers:
+  - Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
+  - Sylwester Nawrocki <s.nawrocki@samsung.com>
+
+properties:
+  compatible:
+    const: samsung,tm2-audio
+
+  audio-amplifier:
+    description: Phandle to the MAX98504 amplifier.
+    $ref: /schemas/types.yaml#/definitions/phandle
+
+  audio-codec:
+    description: Phandles to the codecs.
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - description: Phandle to the WM5110 audio codec.
+      - description: Phandle to the HDMI transmitter node.
+
+  samsung,audio-routing:
+    description: |
+      List of the connections between audio components; each entry is
+      a pair of strings, the first being the connection's sink, the second
+      being the connection's source; valid names for sources and sinks are the
+      WM5110's and MAX98504's pins and the jacks on the board: HP, SPK, Main
+      Mic, Sub Mic, Third Mic, Headset Mic.
+    $ref: /schemas/types.yaml#/definitions/non-unique-string-array
+
+  i2s-controller:
+    description: Phandles to the I2S controllers.
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - description: Phandle to I2S0.
+      - description: Phandle to I2S1.
+
+  mic-bias-gpios:
+    description: GPIO pin that enables the Main Mic bias regulator.
+
+  model:
+    description: The user-visible name of this sound complex.
+    $ref: /schemas/types.yaml#/definitions/string
+
+required:
+  - compatible
+  - audio-amplifier
+  - audio-codec
+  - samsung,audio-routing
+  - i2s-controller
+  - mic-bias-gpios
+  - model
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    sound {
+        compatible = "samsung,tm2-audio";
+        audio-codec = <&wm5110>, <&hdmi>;
+        i2s-controller = <&i2s0 0>, <&i2s1 0>;
+        audio-amplifier = <&max98504>;
+        mic-bias-gpios = <&gpr3 2 GPIO_ACTIVE_HIGH>;
+        model = "wm5110";
+        samsung,audio-routing = "HP", "HPOUT1L",
+                                "HP", "HPOUT1R",
+                                "SPK", "SPKOUT",
+                                "SPKOUT", "HPOUT2L",
+                                "SPKOUT", "HPOUT2R",
+                                "RCV", "HPOUT3L",
+                                "RCV", "HPOUT3R";
+    };
-- 
2.32.0


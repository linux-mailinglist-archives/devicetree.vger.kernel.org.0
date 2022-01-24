Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 11EEF4985B4
	for <lists+devicetree@lfdr.de>; Mon, 24 Jan 2022 18:04:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244100AbiAXREv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jan 2022 12:04:51 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:40328
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S244095AbiAXRE1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 24 Jan 2022 12:04:27 -0500
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 12F983F1CC
        for <devicetree@vger.kernel.org>; Mon, 24 Jan 2022 17:04:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643043866;
        bh=m/SJzOvCGXryS1758Fh3hpAtkFdWGlrBiM3VxRdkYrE=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=LKNKXlRBGJtgEP2d98D8QFuAKMkOOxirr9Vr1HYCxNNYJsnlA4xCoJi77HUIokMlt
         waG+1sHcJVPzkPLl5Mdq+P+QvrLT9sA6QqHu6jEloKyv9Ek2eAr2iKx26HxTIrre7b
         MizlLl5cfBHDVhuMYGzOghWULMt88FGRseGZXd6SVaeHsZc+uPOdCZfwzkUdWbKQ+5
         bgcBLpXYR3+K+rAukRJG+qkPYx32bV3Iq7rbtpcB/vCo7+oOp1JC6W4jjhb0Df+OaS
         Ul7o4+6ml6lTSIsLqJsQCnMT94zTuaSTb4IQLPaGaOC3ISUzTHUlWru+YoQ5fx1GZC
         MtqEPcGvyk9Mw==
Received: by mail-ej1-f69.google.com with SMTP id q19-20020a1709064c9300b006b39291ff3eso2343900eju.5
        for <devicetree@vger.kernel.org>; Mon, 24 Jan 2022 09:04:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=m/SJzOvCGXryS1758Fh3hpAtkFdWGlrBiM3VxRdkYrE=;
        b=xz1aW+sPwi0Ph1M4FgyeHMfo4olyegf3ZzjmloB15MPRlqkwtAJbN0AWdfiqgXjock
         ApMLyH6PYb8NA+6P2XU2ZUJCJ/+1r6J4oEdjoCUykNG58G/8VazAUpcxT1eeMUcumDe3
         kb9OJgTzKfU3LqZbnx8hlXlbqIAlGoBN/ASXuo25aPRdy+YVWBvvm202RMG8yDDHhvl3
         ln4iBf9hBNuj2rzTRUmh7HFNFh/+WlyKmDfoLgklwH3zE2PLiC8c9gFeKEMjS0ao4MTW
         A+BwlbkOiNcMpVqePGA/KPZJf3uRnYXHpZeDcsDpTbOlqO2K51cg1N/7mY1sFrnpP3WR
         IWTw==
X-Gm-Message-State: AOAM532l54u/p8Fw32tYyJDeOGz6EbhbNmo2KigCgvrvemze6pvWR5te
        /lI2mTHildSeClFnPRsQpJhyX2KFUoPDeYNgrNktu6jGlGOewDajtmaGAIFEtfKQMQyMnFDEzcc
        hpz6w9+LqaO6SJ36dH2cGzpQWuBYOlXwPIopr/ec=
X-Received: by 2002:a17:906:9c82:: with SMTP id fj2mr12667492ejc.699.1643043865738;
        Mon, 24 Jan 2022 09:04:25 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxQjQyxA1HcV6BfnXmwkoNRaO8orvjbUNf88YPPwPUgaCU+EwbK3OjKEFnrhzcCFEEQ+666QQ==
X-Received: by 2002:a17:906:9c82:: with SMTP id fj2mr12667473ejc.699.1643043865565;
        Mon, 24 Jan 2022 09:04:25 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id o11sm6903846edh.75.2022.01.24.09.04.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jan 2022 09:04:24 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Jonathan Bakker <xc-racer2@live.ca>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [RFC 5/6] ASoC: dt-bindings: samsung,snow: convert to dtschema
Date:   Mon, 24 Jan 2022 18:03:35 +0100
Message-Id: <20220124170336.164320-5-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220124170336.164320-1-krzysztof.kozlowski@canonical.com>
References: <20220124170336.164320-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the audio complex on Google Snow boards with Samsung Exynos SoC
to DT schema format.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

---

TODO: The DTS do not pass cleanly. cpu/sound-dai should be fixed.
---
 .../bindings/sound/samsung,snow.yaml          | 78 +++++++++++++++++++
 .../devicetree/bindings/sound/snow.txt        | 31 --------
 2 files changed, 78 insertions(+), 31 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/samsung,snow.yaml
 delete mode 100644 Documentation/devicetree/bindings/sound/snow.txt

diff --git a/Documentation/devicetree/bindings/sound/samsung,snow.yaml b/Documentation/devicetree/bindings/sound/samsung,snow.yaml
new file mode 100644
index 000000000000..df969b384839
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/samsung,snow.yaml
@@ -0,0 +1,78 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/samsung,snow.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Google Snow audio complex with MAX9809x codec
+
+maintainers:
+  - Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
+  - Sylwester Nawrocki <s.nawrocki@samsung.com>
+
+properties:
+  compatible:
+    enum:
+      - google,snow-audio-max98090
+      - google,snow-audio-max98091
+      - google,snow-audio-max98095
+
+  codec:
+    type: object
+    properties:
+      sound-dai:
+        description: List of phandles to the CODEC and HDMI IP nodes.
+        $ref: /schemas/types.yaml#/definitions/phandle-array
+        items:
+          - description: Phandle to the MAX98090, MAX98091 or MAX98095 CODEC.
+          - description: Phandle to the HDMI IP block node.
+    required:
+      - sound-dai
+
+  cpu:
+    type: object
+    properties:
+      sound-dai:
+        description: Phandle to the Samsung I2S controller.
+        $ref: /schemas/types.yaml#/definitions/phandle
+        items:
+          - description: Phandle of the I2S controller.
+          - description: Index of the I2S controller.
+    required:
+      - sound-dai
+
+  samsung,audio-codec:
+    description: Phandle to the audio codec.
+    $ref: /schemas/types.yaml#/definitions/phandle
+    deprecated: true
+
+  samsung,i2s-controller:
+    description: Phandle to the Samsung I2S controller.
+    $ref: /schemas/types.yaml#/definitions/phandle
+    deprecated: true
+
+  samsung,model:
+    description: The user-visible name of this sound complex.
+    $ref: /schemas/types.yaml#/definitions/string
+
+required:
+  - compatible
+  - codec
+  - cpu
+
+additionalProperties: false
+
+examples:
+  - |
+    sound {
+        compatible = "google,snow-audio-max98095";
+        samsung,model = "Snow-I2S-MAX98095";
+
+        cpu {
+            sound-dai = <&i2s0 0>;
+        };
+
+        codec {
+            sound-dai = <&max98095 0>, <&hdmi>;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/sound/snow.txt b/Documentation/devicetree/bindings/sound/snow.txt
deleted file mode 100644
index 80fd9a87bb3f..000000000000
--- a/Documentation/devicetree/bindings/sound/snow.txt
+++ /dev/null
@@ -1,31 +0,0 @@
-Audio Binding for Snow boards
-
-Required properties:
-- compatible : Can be one of the following,
-			"google,snow-audio-max98090" or
-			"google,snow-audio-max98091" or
-			"google,snow-audio-max98095"
-- samsung,i2s-controller (deprecated): The phandle of the Samsung I2S controller
-- samsung,audio-codec (deprecated): The phandle of the audio codec
-
-Required sub-nodes:
-
- - 'cpu' subnode with a 'sound-dai' property containing the phandle of the I2S
-    controller
- - 'codec' subnode with a 'sound-dai' property containing list of phandles
-    to the CODEC nodes, first entry must be the phandle of the MAX98090,
-    MAX98091 or MAX98095 CODEC (exact device type is indicated by the compatible
-    string) and the second entry must be the phandle of the HDMI IP block node
-
-Optional:
-- samsung,model: The name of the sound-card
-
-Example:
-
-sound {
-		compatible = "google,snow-audio-max98095";
-
-		samsung,model = "Snow-I2S-MAX98095";
-		samsung,i2s-controller = <&i2s0>;
-		samsung,audio-codec = <&max98095>;
-};
-- 
2.32.0


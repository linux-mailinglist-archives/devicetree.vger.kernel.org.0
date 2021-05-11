Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D907537AC7E
	for <lists+devicetree@lfdr.de>; Tue, 11 May 2021 18:54:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231352AbhEKQ4E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 May 2021 12:56:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230315AbhEKQ4D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 May 2021 12:56:03 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E2E1C061574
        for <devicetree@vger.kernel.org>; Tue, 11 May 2021 09:54:56 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id 82-20020a1c01550000b0290142562ff7c9so1612812wmb.3
        for <devicetree@vger.kernel.org>; Tue, 11 May 2021 09:54:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PAGZXasHuGX2gUXUoo6CURCa+Aksr5PU0wV10L4+JjE=;
        b=lzghGyHoEDnwLxVF+qCG3LJbzpUtcve8nd0UczDGejPM9KkJa/4tPfD4hE2Or7jV+z
         xkgqRlRaBX7PPjZSmchBPqwNo7IEPAoZkuRvlL+GwRLtSV6TAoNQ4XMa7xpNjM1P/4VR
         81L+czMTFjkrTO9LOsFaUWE6GapIMssohkEOaDv+nrX9urhlD27NAFPgGWtRNGMHtarc
         B6Arp02opLevpvwS7zTakhLqOy/LnsBJd4h4/uhCntkdNp+hlFJgFIYQLQ9E4sG5J2To
         eGWCUde4a54y9g+IVFD0uIEhSOJ6gR5mfIkPsvphjeH/Hf7Xk3wWvGF9KsruenFvz11b
         Ltyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PAGZXasHuGX2gUXUoo6CURCa+Aksr5PU0wV10L4+JjE=;
        b=lsOrKcd/QgqHJ2V9GW3Rw83mD9jl3DbF1wr/EYe3jG6WfumiNbbxfLzzNmwEfewyRD
         uiWm9fshOZA4h+p9eYtfxBExOqT6yYL/d0m9/0Au/4Tera9/3tr0svjEKHPFGajcDYfq
         A4h6KY9K3Mq76HH5b9qQTNYuUoWc+dPxXm5CRXYOm8/YNNfspqoo2EgLeaoBrjqbZ36B
         dkotvmdLfKIG99uFQC3Bh/9I6Y8bYVkZkLN5MiKSRga+pJFFc7OfSeXrgwmlVoU1SxkB
         fKBOVgNZOCQh0hMiM/w0VF3pSFVkDaDOucCWqU/cR3sEwrjLCqLn8pMyzlaQADHIZljk
         xx1Q==
X-Gm-Message-State: AOAM530GcbCNpCwky+0YDe80R9MzhhqZiNeVeF2Zp+Jf2+h9Pu313b7u
        lWvFkE11Uq0Af0MxrGctMhP3fedj3PZO046L
X-Google-Smtp-Source: ABdhPJzzKqzK9HxYAlauFFN8vJlMS15p65DZBLSWNrUs/Q0UWnsCsJf0lv70Q32eWGYnF9gNp9pVfg==
X-Received: by 2002:a05:600c:4ecb:: with SMTP id g11mr4335105wmq.172.1620752095184;
        Tue, 11 May 2021 09:54:55 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id j7sm24187366wmi.21.2021.05.11.09.54.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 May 2021 09:54:54 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     airlied@linux.ie, daniel@ffwll.ch, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH] dt-bindings: display: convert faraday,tve200 to YAML
Date:   Tue, 11 May 2021 16:54:48 +0000
Message-Id: <20210511165448.422987-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Converts display/faraday,tve200.txt to yaml.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 .../bindings/display/faraday,tve200.txt       | 54 -----------
 .../bindings/display/faraday,tve200.yaml      | 92 +++++++++++++++++++
 2 files changed, 92 insertions(+), 54 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/faraday,tve200.txt
 create mode 100644 Documentation/devicetree/bindings/display/faraday,tve200.yaml

diff --git a/Documentation/devicetree/bindings/display/faraday,tve200.txt b/Documentation/devicetree/bindings/display/faraday,tve200.txt
deleted file mode 100644
index 82e3bc0b7485..000000000000
--- a/Documentation/devicetree/bindings/display/faraday,tve200.txt
+++ /dev/null
@@ -1,54 +0,0 @@
-* Faraday TV Encoder TVE200
-
-Required properties:
-
-- compatible: must be one of:
-	"faraday,tve200"
-	"cortina,gemini-tvc", "faraday,tve200"
-
-- reg: base address and size of the control registers block
-
-- interrupts: contains an interrupt specifier for the interrupt
-	line from the TVE200
-
-- clock-names: should contain "PCLK" for the clock line clocking the
-	silicon and "TVE" for the 27MHz clock to the video driver
-
-- clocks: contains phandle and clock specifier pairs for the entries
-	in the clock-names property. See
-	Documentation/devicetree/bindings/clock/clock-bindings.txt
-
-Optional properties:
-
-- resets: contains the reset line phandle for the block
-
-Required sub-nodes:
-
-- port: describes LCD panel signals, following the common binding
-	for video transmitter interfaces; see
-	Documentation/devicetree/bindings/media/video-interfaces.txt
-	This port should have the properties:
-	reg = <0>;
-	It should have one endpoint connected to a remote endpoint where
-	the display is connected.
-
-Example:
-
-display-controller@6a000000 {
-	#address-cells = <1>;
-	#size-cells = <0>;
-	compatible = "faraday,tve200";
-	reg = <0x6a000000 0x1000>;
-	interrupts = <13 IRQ_TYPE_EDGE_RISING>;
-	resets = <&syscon GEMINI_RESET_TVC>;
-	clocks = <&syscon GEMINI_CLK_GATE_TVC>,
-		 <&syscon GEMINI_CLK_TVC>;
-	clock-names = "PCLK", "TVE";
-
-	port@0 {
-		reg = <0>;
-		display_out: endpoint {
-			remote-endpoint = <&panel_in>;
-		};
-	};
-};
diff --git a/Documentation/devicetree/bindings/display/faraday,tve200.yaml b/Documentation/devicetree/bindings/display/faraday,tve200.yaml
new file mode 100644
index 000000000000..3ab51e7e72af
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/faraday,tve200.yaml
@@ -0,0 +1,92 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/faraday,tve200.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Faraday TV Encoder TVE200
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+properties:
+  compatible:
+    oneOf:
+      - const: faraday,tve200
+      - items:
+          - const: cortina,gemini-tvc
+          - const: faraday,tve200
+
+  reg:
+    minItems: 1
+
+  interrupts:
+    minItems: 1
+
+  clock-names:
+    items:
+      - const: PCLK
+      - const: TVE
+
+  clocks:
+    minItems: 2
+
+  resets:
+    minItems: 1
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+patternProperties:
+  "^port@[0-9]+$":
+    type: object
+    description: describes LCD panel signals, following the common binding
+      for video transmitter interfaces; see
+      Documentation/devicetree/bindings/media/video-interfaces.txt
+      It should have one endpoint connected to a remote endpoint where
+      the display is connected.
+
+    properties:
+      reg:
+        const: 0
+
+    required:
+      - reg
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clock-names
+  - clocks
+  - "#address-cells"
+  - "#size-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/cortina,gemini-clock.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/reset/cortina,gemini-reset.h>
+    display-controller@6a000000 {
+      #address-cells = <1>;
+      #size-cells = <0>;
+      compatible = "faraday,tve200";
+      reg = <0x6a000000 0x1000>;
+      interrupts = <13 IRQ_TYPE_EDGE_RISING>;
+      resets = <&syscon GEMINI_RESET_TVC>;
+      clocks = <&syscon GEMINI_CLK_GATE_TVC>,
+               <&syscon GEMINI_CLK_TVC>;
+      clock-names = "PCLK", "TVE";
+
+      port@0 {
+        reg = <0>;
+        display_out: endpoint {
+          remote-endpoint = <&panel_in>;
+        };
+      };
+    };
-- 
2.26.3


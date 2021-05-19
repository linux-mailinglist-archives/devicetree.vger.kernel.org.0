Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A2DAC3897FB
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 22:35:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229454AbhESUhP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 16:37:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229437AbhESUhP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 May 2021 16:37:15 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 325A2C06175F
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 13:35:55 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id q5so15354262wrs.4
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 13:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EHNW49TmyZaaRrFWUNtWXt+ZlgbUc2SAp8tKEH8gOoY=;
        b=o3bt4GjXWraSnEy+C9ViC9P14StdEqRMztBo8yt4KXqmgIKa2B6FGstQuPjVjMMwMC
         ThLdrtuT6oddEi3gI/axnzz1d4S3kdhZUOYnTHI1feyuxLVsVdX3b/Ti8ZFg5x9nXnRI
         Mm098zmlkuvhFQBxFQZAoj/JDGDVQpLaz0NRg6qt0Hf2O+32LYqLrKvW9B4gwOeum6Br
         H/5TsIGVkpRlCXsjcjAU5/+BN+C9hHc+SkEMhkX7cFPp3iVX9cT0GKv6yknOKNQKTZ7x
         cKWY1POEUVL/Ux4cNd6q3BrXRDF2R1D0Ahm/dKlucEECJN2XxwFGprlp3w+ezADMMeiq
         hwsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EHNW49TmyZaaRrFWUNtWXt+ZlgbUc2SAp8tKEH8gOoY=;
        b=uYfigDzV0sXQopQb7zW7dp4xmJUYkN+aa0KB/kymfmM2q9wUp+s2uKuwmVydSD5H4a
         8WF1vCfs6VEtY6VN7vVufabISPQWbSPx1VImVOH5dH4t6Kp30RkcRpfpOXu9D1YX4LAD
         D+Gy58i1cNVSHBJZWxW+GSs8BAwpxRWACvUiKqxXSGfXlduALxlX9vYN8XxUakYyEkP7
         WCM/eg6VNtXl/5XPab0Kq52O97kcYNMtmy3SY2NddxJPzaxxwaVSfEP6eqq7LBwHHmGf
         srH1Qo6r9hIQK4mlouQqGe2Isnu/uE4c8B0//mOJ9oMhJZIVY7CP+cgjWl8mPu1LVLC7
         Cdkw==
X-Gm-Message-State: AOAM530KSoMzQxcRWUYWg4grjJgqZTzSACf+jH9V/K8Talz7ohAyGqpQ
        UlphsT35Z7P6YUfC+RXmB3wd4prHsALliw==
X-Google-Smtp-Source: ABdhPJzAHcq/7ZxKFF4pjEJZP86gjjMy+kdD+NQ/hRlf+/06xeRDG7FxZP7QHAYkDFynteVfB8HWjA==
X-Received: by 2002:a5d:62d0:: with SMTP id o16mr801711wrv.164.1621456553771;
        Wed, 19 May 2021 13:35:53 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id y20sm7531918wmi.0.2021.05.19.13.35.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 May 2021 13:35:53 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     airlied@linux.ie, daniel@ffwll.ch, linus.walleij@linaro.org,
        robh+dt@kernel.org, ulli.kroll@googlemail.com
Cc:     devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v2 1/3] dt-bindings: display: convert faraday,tve200
Date:   Wed, 19 May 2021 20:35:45 +0000
Message-Id: <20210519203547.837237-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Converts display/faraday,tve200.txt to yaml.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
Changes since v1:
- added two subsequent patchs fixing issue found when converting
- fixed all issues reported by Rob Herring
 .../bindings/display/faraday,tve200.txt       | 54 ---------------
 .../bindings/display/faraday,tve200.yaml      | 68 +++++++++++++++++++
 2 files changed, 68 insertions(+), 54 deletions(-)
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
index 000000000000..e2ee77767321
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/faraday,tve200.yaml
@@ -0,0 +1,68 @@
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
+    maxItems: 1
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
+  port:
+    $ref: /schemas/graph.yaml#/properties/port
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clock-names
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/cortina,gemini-clock.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/reset/cortina,gemini-reset.h>
+    display-controller@6a000000 {
+      compatible = "faraday,tve200";
+      reg = <0x6a000000 0x1000>;
+      interrupts = <13 IRQ_TYPE_EDGE_RISING>;
+      resets = <&syscon GEMINI_RESET_TVC>;
+      clocks = <&syscon GEMINI_CLK_GATE_TVC>,
+               <&syscon GEMINI_CLK_TVC>;
+      clock-names = "PCLK", "TVE";
+
+      port {
+        display_out: endpoint {
+          remote-endpoint = <&panel_in>;
+        };
+      };
+    };
-- 
2.26.3


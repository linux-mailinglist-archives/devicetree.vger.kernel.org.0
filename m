Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E59266886AD
	for <lists+devicetree@lfdr.de>; Thu,  2 Feb 2023 19:38:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232290AbjBBSiV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Feb 2023 13:38:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232704AbjBBSiP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Feb 2023 13:38:15 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42E5754542
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 10:37:40 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id m7so2550162wru.8
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 10:37:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AXyZIljlivZsyzzAaHca17k18SeAHW7oVhmpWiofUc0=;
        b=FMUtGEoR5wyvukeWTuN6esPODhE46k/rhSExRP7aKN1Ra7+p49TL2Ncnhq5W86gmyh
         YOKEodOntnVZyvdzh9rcLgnpcIb7hY/g8lFQoZ0PvE7j2+HxcLJmVewOtx3zMdj45Guc
         M2U7S+V4Mgjf2GkFNqh3JsxXuLqBQBY9MmCDJGn9NkOJkVZkWBVTgMNUc8H1dIg4IHA/
         UCISsTW6FGVWUALFZpSZDBd6bZLzYlmM+h7Oam7TBz+T+2KcA3RTey4LdwPO9kthzgyo
         QBWLtHXn64XSfGpkNz21INQYWpm33vvWlutGKdXAYs2B3Abfl70vmWdqin4zd3sV/PMZ
         P/UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AXyZIljlivZsyzzAaHca17k18SeAHW7oVhmpWiofUc0=;
        b=4Y2bhjDF+F76QDAKkpaRQgC4HWeJ9uQxXuygXQwhAViQYQWYr9Qx5+Dy6KNh3dksld
         QEfOPpt/IN6yC3xrx8yg4v6wWlojTb2wdYVP6aSbkN6QdD3Lk656Mvg0HqmEXHaEruzN
         KAePMqLZXxSrMxc6wtvAxoUmEOSyTUCV1KswMNH2kJaqZhdspEKfY/ExkwgiXBgYNZ1p
         WLBa5MF8WbQg2rdHOsVxwpYa7bgGvhoH34Ee6OQ+iqfI9YhzkSgR1zNc094yrYvUTP+l
         PcAi2UeuzRu6Do7QtjOpX1RWufu597IkaW1apbNa2Ad7lmFniixeGkcixxpyDnOSEWCX
         odOg==
X-Gm-Message-State: AO0yUKXVoBKz8LjVSwP3gzOvmBIGaXa3qvoBScNMiL1uUzRYV4ky/su5
        +l+L+0QMFgjWDnkKcGAvqwUOc03XP+bsnJgy
X-Google-Smtp-Source: AK7set+pxbmG29Re1i0cjbsUOsmWZYs4v9LsA6E81NYg48kXNwVHEfKppSuZr6aXTpqsaW2+37hakg==
X-Received: by 2002:a05:6000:1843:b0:2bf:e7a0:8b63 with SMTP id c3-20020a056000184300b002bfe7a08b63mr8342067wri.5.1675363057949;
        Thu, 02 Feb 2023 10:37:37 -0800 (PST)
Received: from localhost.localdomain (82-65-169-74.subs.proxad.net. [82.65.169.74])
        by smtp.googlemail.com with ESMTPSA id p12-20020a5d48cc000000b00241fab5a296sm164664wrs.40.2023.02.02.10.37.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 10:37:37 -0800 (PST)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Mark Brown <broonie@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org
Subject: [PATCH 4/9] ASoC: dt-bindings: meson: convert axg tdm formatters to schema
Date:   Thu,  2 Feb 2023 19:36:48 +0100
Message-Id: <20230202183653.486216-5-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230202183653.486216-1-jbrunet@baylibre.com>
References: <20230202183653.486216-1-jbrunet@baylibre.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the DT binding documentation for the Amlogic tdm formatters to
schema.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 .../sound/amlogic,axg-tdm-formatters.txt      | 36 --------
 .../sound/amlogic,axg-tdm-formatters.yaml     | 90 +++++++++++++++++++
 2 files changed, 90 insertions(+), 36 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/amlogic,axg-tdm-formatters.txt
 create mode 100644 Documentation/devicetree/bindings/sound/amlogic,axg-tdm-formatters.yaml

diff --git a/Documentation/devicetree/bindings/sound/amlogic,axg-tdm-formatters.txt b/Documentation/devicetree/bindings/sound/amlogic,axg-tdm-formatters.txt
deleted file mode 100644
index 5996c0cd89c2..000000000000
--- a/Documentation/devicetree/bindings/sound/amlogic,axg-tdm-formatters.txt
+++ /dev/null
@@ -1,36 +0,0 @@
-* Amlogic Audio TDM formatters
-
-Required properties:
-- compatible: 'amlogic,axg-tdmin' or
-	      'amlogic,axg-tdmout' or
-	      'amlogic,g12a-tdmin' or
-	      'amlogic,g12a-tdmout' or
-	      'amlogic,sm1-tdmin' or
-	      'amlogic,sm1-tdmout
-- reg: physical base address of the controller and length of memory
-       mapped region.
-- clocks: list of clock phandle, one for each entry clock-names.
-- clock-names: should contain the following:
-  * "pclk"     : peripheral clock.
-  * "sclk"     : bit clock.
-  * "sclk_sel" : bit clock input multiplexer.
-  * "lrclk"    : sample clock
-  * "lrclk_sel": sample clock input multiplexer
-
-Optional property:
-- resets: phandle to the dedicated reset line of the tdm formatter.
-
-Example of TDMOUT_A on the S905X2 SoC:
-
-tdmout_a: audio-controller@500 {
-	compatible = "amlogic,axg-tdmout";
-	reg = <0x0 0x500 0x0 0x40>;
-	resets = <&clkc_audio AUD_RESET_TDMOUT_A>;
-	clocks = <&clkc_audio AUD_CLKID_TDMOUT_A>,
-		 <&clkc_audio AUD_CLKID_TDMOUT_A_SCLK>,
-		 <&clkc_audio AUD_CLKID_TDMOUT_A_SCLK_SEL>,
-		 <&clkc_audio AUD_CLKID_TDMOUT_A_LRCLK>,
-		 <&clkc_audio AUD_CLKID_TDMOUT_A_LRCLK>;
-	clock-names = "pclk", "sclk", "sclk_sel",
-		      "lrclk", "lrclk_sel";
-};
diff --git a/Documentation/devicetree/bindings/sound/amlogic,axg-tdm-formatters.yaml b/Documentation/devicetree/bindings/sound/amlogic,axg-tdm-formatters.yaml
new file mode 100644
index 000000000000..f618724411de
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/amlogic,axg-tdm-formatters.yaml
@@ -0,0 +1,90 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/amlogic,axg-tdm-formatters.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Amlogic Audio AXG TDM formatters
+
+maintainers:
+  - Jerome Brunet <jbrunet@baylibre.com>
+
+allOf:
+  - $ref: component-common.yaml#
+
+properties:
+  $nodename:
+    pattern: "^audio-controller@.*"
+
+  compatible:
+    oneOf:
+      - enum:
+          - amlogic,g12a-tdmout
+          - amlogic,sm1-tdmout
+          - amlogic,axg-tdmout
+          - amlogic,g12a-tdmin
+          - amlogic,sm1-tdmin
+          - amlogic,axg-tdmin
+
+  clocks:
+    items:
+      - description: Peripheral clock
+      - description: Bit clock
+      - description: Bit clock input multiplexer
+      - description: Sample clock
+      - description: Sample clock input multiplexer
+
+  clock-names:
+    items:
+      - const: pclk
+      - const: sclk
+      - const: sclk_sel
+      - const: lrclk
+      - const: lrclk_sel
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+
+if:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - amlogic,g12a-tdmin
+          - amlogic,sm1-tdmin
+          - amlogic,g12a-tdmout
+          - amlogic,sm1-tdmout
+then:
+  properties:
+    resets:
+      items:
+        - description: Dedicated device reset line
+
+  required:
+    - resets
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/axg-audio-clkc.h>
+    #include <dt-bindings/reset/amlogic,meson-g12a-audio-reset.h>
+
+    tdmout_a: audio-controller@500 {
+        compatible = "amlogic,g12a-tdmout";
+        reg = <0x500 0x40>;
+        resets = <&clkc_audio AUD_RESET_TDMOUT_A>;
+        clocks = <&clkc_audio AUD_CLKID_TDMOUT_A>,
+                 <&clkc_audio AUD_CLKID_TDMOUT_A_SCLK>,
+                 <&clkc_audio AUD_CLKID_TDMOUT_A_SCLK_SEL>,
+                 <&clkc_audio AUD_CLKID_TDMOUT_A_LRCLK>,
+                 <&clkc_audio AUD_CLKID_TDMOUT_A_LRCLK>;
+        clock-names = "pclk", "sclk", "sclk_sel",
+                      "lrclk", "lrclk_sel";
+    };
-- 
2.39.0


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17A4D6C90BE
	for <lists+devicetree@lfdr.de>; Sat, 25 Mar 2023 21:39:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229774AbjCYUjL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Mar 2023 16:39:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229460AbjCYUjK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Mar 2023 16:39:10 -0400
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73DE16EAF
        for <devicetree@vger.kernel.org>; Sat, 25 Mar 2023 13:39:09 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id h12-20020a17090aea8c00b0023d1311fab3so4921406pjz.1
        for <devicetree@vger.kernel.org>; Sat, 25 Mar 2023 13:39:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679776749;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vJZaUxrhryj+3Ry/pvFJv01MjeFaJ5uRO9/uhpI/l2c=;
        b=YwqvPd85VMXB3KOnkRqYPOvDhIT0xzWYO8IG0Lf4CRxsWfp0sVLTxZrNB6YNbaan+Q
         3wcEbSnr4zqyWcn46gYfb0Gz6/1oBDal6C9M+j/Usrh/sl6whXlO/cYm36H+ZGOgmugy
         eH8RX/21Z1NHVxsosbVbMX/b6Tysz5Bz9SQdgLlQUVhOO+np3bOcCkA2yQwNtgyFoXxh
         VF0M8ajdjSHaVXsYne2FL8566f+XmwHNFTDmGGAwEyh3Y8/KlcL0Yg6wFvA7l/E2tbso
         YZWqLuHomzPbb+KEDXD3kAwB6FGgSXGjCeu1BOHhBSkYk3jW2IH4sBoe1gDzV+hTtngb
         1nPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679776749;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vJZaUxrhryj+3Ry/pvFJv01MjeFaJ5uRO9/uhpI/l2c=;
        b=kl1tczoFVtg3ec4KLmDT47hjuHGe0LddWbeLgX6fE+ih0jcxrgSwQQIgczv9tKnhOk
         Gs7btPFnG5IvrOuak8UhcG01SPOM0AMeo3olDrKPDRR7tS8tsgErgGFP0yau7Cgtgu6T
         RIMCIZL/aWtHrMZpqr+MGuaespfuV4ms2th7KT+a71igcrxzBaIzx51M1lI7hk3PKXuG
         wpzFzFf0rm9pv9ZZDoBdwEfV6GOmpe3qo2hbrY+1jmxUwopOOpPQ0UHGnLRIwSYloLoE
         if3SOh73bHBrymCtskCbUwLtAjWN6J5+9Ln3OtmdIUOrY1k7u7HDB+US6TTSAPEyvipN
         9r9A==
X-Gm-Message-State: AAQBX9dQMQOxvunfW/3HtPPszlOeBQrsFuIDMdXPqysJS2ii+LHvOYD+
        k6lxuM0KBRp63jIj7TBnFHU=
X-Google-Smtp-Source: AKy350Z3yZUl5jDcZm78koiTztNw3wGUG98ngeEVp7o5rVZ+T2kwhOe6oU+3zGUzwX870NWUc1CaGQ==
X-Received: by 2002:a17:902:c407:b0:1a1:a5e7:a7cd with SMTP id k7-20020a170902c40700b001a1a5e7a7cdmr8488413plk.5.1679776748910;
        Sat, 25 Mar 2023 13:39:08 -0700 (PDT)
Received: from craechal ([20.230.228.239])
        by smtp.gmail.com with ESMTPSA id m10-20020a1709026bca00b001946a3f4d9csm16369160plt.38.2023.03.25.13.39.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Mar 2023 13:39:08 -0700 (PDT)
Received: by craechal (Postfix, from userid 1000)
        id DCC6DD09; Sat, 25 Mar 2023 20:39:07 +0000 (UTC)
From:   Archana <craechal@gmail.com>
To:     krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org
Cc:     Archana <craechal@gmail.com>
Subject: [PATCH] dt-bindings: convert ac97 controller child node codec to dtschema
Date:   Sat, 25 Mar 2023 20:38:58 +0000
Message-Id: <20230325203858.5981-1-craechal@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert codec bindings of an ac97 controller child node describing ac97 codecs to DT schema.
Update example during conversion.

Signed-off-by: Archana <craechal@gmail.com>
---
 .../devicetree/bindings/sound/ac97-bus.txt    | 32 ----------
 .../devicetree/bindings/sound/ac97-bus.yaml   | 60 +++++++++++++++++++
 2 files changed, 60 insertions(+), 32 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/ac97-bus.txt
 create mode 100644 Documentation/devicetree/bindings/sound/ac97-bus.yaml

diff --git a/Documentation/devicetree/bindings/sound/ac97-bus.txt b/Documentation/devicetree/bindings/sound/ac97-bus.txt
deleted file mode 100644
index 103c428f2595..000000000000
--- a/Documentation/devicetree/bindings/sound/ac97-bus.txt
+++ /dev/null
@@ -1,32 +0,0 @@
-Generic AC97 Device Properties
-
-This documents describes the devicetree bindings for an ac97 controller child
-node describing ac97 codecs.
-
-Required properties:
--compatible : Must be "ac97,vendor_id1,vendor_id2
-	      The ids shall be the 4 characters hexadecimal encoding, such as
-	      given by "%04x" formatting of printf
--reg	    : Must be the ac97 codec number, between 0 and 3
-
-Example:
-ac97: sound@40500000 {
-	compatible = "marvell,pxa270-ac97";
-	reg = < 0x40500000 0x1000 >;
-	interrupts = <14>;
-	reset-gpios = <&gpio 95 GPIO_ACTIVE_HIGH>;
-	#sound-dai-cells = <1>;
-	pinctrl-names = "default";
-	pinctrl-0 = < &pinctrl_ac97_default >;
-	clocks = <&clks CLK_AC97>, <&clks CLK_AC97CONF>;
-	clock-names = "AC97CLK", "AC97CONFCLK";
-
-	#address-cells = <1>;
-	#size-cells = <0>;
-	audio-codec@0 {
-		reg = <0>;
-		compatible = "ac97,574d,4c13";
-		clocks = <&fixed_wm9713_clock>;
-		clock-names = "ac97_clk";
-	}
-};
diff --git a/Documentation/devicetree/bindings/sound/ac97-bus.yaml b/Documentation/devicetree/bindings/sound/ac97-bus.yaml
new file mode 100644
index 000000000000..469fd88ff729
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/ac97-bus.yaml
@@ -0,0 +1,60 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/ac97-bus.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Generic AC97 Device Properties
+
+maintainers:
+  - Archana <craechal@gmail.com>
+
+description: |
+  This documents describes the devicetree bindings for an ac97 controller child 
+  node describing ac97 codecs.
+
+allOf:
+  - $ref: dai-common.yaml#
+
+properties:
+  compatible:
+    description:
+      Must be "ac97,vendor_id1,vendor_id2". The ids shall be the 4 characters hexadecimal encoding, such as
+      given by "%04x" formatting of printf
+    pattern: "^ac97,[A-Fa-f0-9]{4},[A-Fa-f0-9]{4}$"
+
+  reg:
+    description: Must be the ac97 codec number, between 0 and 3
+    minimum: 0
+    maximum: 3
+    
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/clock/pxa-clock.h>
+    ac97: sound@40500000 {
+      compatible = "marvell,pxa270-ac97";
+      reg = < 0x40500000 0x1000 >;
+      interrupts = <14>;
+      reset-gpios = <&gpio 95 GPIO_ACTIVE_HIGH>;
+      #sound-dai-cells = <1>;
+      pinctrl-names = "default";
+      pinctrl-0 = < &pinctrl_ac97_default >;
+      clocks = <&clks CLK_AC97>, <&clks CLK_AC97CONF>;
+      clock-names = "AC97CLK", "AC97CONFCLK";
+
+      #address-cells = <1>;
+      #size-cells = <0>;
+      audio-codec@0 {
+        reg = <0>;
+        compatible = "ac97,574d,4c13";
+        clocks = <&fixed_wm9713_clock>;
+        clock-names = "ac97_clk";
+      };
+    };
\ No newline at end of file
-- 
2.34.1


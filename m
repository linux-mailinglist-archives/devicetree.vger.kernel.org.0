Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A7EA6C90C5
	for <lists+devicetree@lfdr.de>; Sat, 25 Mar 2023 21:49:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229528AbjCYUty (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Mar 2023 16:49:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229446AbjCYUty (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Mar 2023 16:49:54 -0400
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31F1AC65D
        for <devicetree@vger.kernel.org>; Sat, 25 Mar 2023 13:49:53 -0700 (PDT)
Received: by mail-pj1-x1030.google.com with SMTP id qe8-20020a17090b4f8800b0023f07253a2cso4927643pjb.3
        for <devicetree@vger.kernel.org>; Sat, 25 Mar 2023 13:49:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679777392;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GUi71uE8bF5pGw75JKRqCuHM377T1aKZ4rUkfDgC90U=;
        b=dlsOAMegHb3lHBdX6IeVc2/+ZUTtHOQ6CRd+uBBVH2K/Ne+rgoWkf/XgYgSVNrn73k
         O+ojMr4oi1V13EbsGuD1fynQ7XCElGauGqWR0tjU0COlO3iISlPnMiWlg9J551qgX3/L
         Z700JtBbAKuOnGgJsedTARFFYj9V23cJRTYb+Lf81r3xB/SFXF7Wvw9vt66WMsiaKR+R
         0UudkAoDCjXeaLEk/IAiqIOtknWYxtZDr9SJoqLl5vzBNG6s5b8sCbPV46WZr7TPzqEa
         rTMukoP6MpfAAqNLX+vkEmsxpWZ/8ZpC5skeCU7kxFVwV9PkWMtAb7rdzsjfTK7qwwWc
         a5Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679777392;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GUi71uE8bF5pGw75JKRqCuHM377T1aKZ4rUkfDgC90U=;
        b=uLLTyxn2dX8/ab0IeQ7gh/8OUUekKpYJz4lvWGUi7PVyLWc+GqrkeBoBUQCCbY/1US
         iHb8kvVR39uw9aTUIWoP+zC/gv8Bjmfv489bTtsNCxT3exffqB3qcynyAWRAqztv+vBN
         HCWWfthrPagiZoeKt4NLfSgcVyNa730ZB2KG8gWrgs//3ICBRDtCTE+CiCXLxKbIgPB6
         e+aftSmy2SB8Z0UDcKm30rRW804gR1tgXEJdeHGjL1v+PvsVa01oz1p7DpPwOZcm8Wg0
         A0F1hYa6w2bdh7QVifDWEbxRjMqnK1XpEUK/ob4JK8jsqQIBGrDUacJLcG0u32g4DT3A
         s/0Q==
X-Gm-Message-State: AAQBX9ejFq8g4y6ugX/1tNqtRYhMiUL+3j7MFxXVGFK0CRTdoSfjfekQ
        OjUpIC+T9vzmDGY4KVg3Q94=
X-Google-Smtp-Source: AKy350amDLtLiSAgjldbBSfkxnwas/C+ANQzST1Rc1deijL5nXGqDckxhdXeVBsHJte6+x4tPDa24Q==
X-Received: by 2002:a17:90b:4a8d:b0:240:6a1d:a14b with SMTP id lp13-20020a17090b4a8d00b002406a1da14bmr2148190pjb.28.1679777392552;
        Sat, 25 Mar 2023 13:49:52 -0700 (PDT)
Received: from craechal ([20.230.228.239])
        by smtp.gmail.com with ESMTPSA id y2-20020a17090a474200b0023377b98c7csm4817399pjg.38.2023.03.25.13.49.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Mar 2023 13:49:52 -0700 (PDT)
Received: by craechal (Postfix, from userid 1000)
        id 814F8D09; Sat, 25 Mar 2023 20:49:51 +0000 (UTC)
From:   Archana <craechal@gmail.com>
To:     krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org
Cc:     Archana <craechal@gmail.com>
Subject: [PATCH v2] dt-bindings: convert ac97 controller child node codec to dtschema
Date:   Sat, 25 Mar 2023 20:49:44 +0000
Message-Id: <20230325204944.7151-1-craechal@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230325203858.5981-1-craechal@gmail.com>
References: <20230325203858.5981-1-craechal@gmail.com>
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
v1->v2:
1. Add newline at end of file

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
index 000000000000..4d86d557c303
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
-- 
2.34.1


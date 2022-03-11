Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 686024D6B0A
	for <lists+devicetree@lfdr.de>; Sat, 12 Mar 2022 00:55:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229636AbiCKXyr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Mar 2022 18:54:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229567AbiCKXyq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Mar 2022 18:54:46 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1A40218CD1
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 15:53:40 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id s25so17692131lfs.10
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 15:53:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=NDgjT8Gm2p6BPTGasZC7u/yG4vPfMFDnsjFz5IVd4Uw=;
        b=CTpMqBG1uv/qYPHfdMPvRhpFs+ZKyifzaptHgK1kKsYSJpx6RfFpXNQ0Y8TGBreD2i
         IqkcTPzdPjrIsApiQBlRA2QPI2DPkU2uwhG5Ks6XRlQUr+aEH3n1VV6AqEDfuXxmmPLH
         I5yNXPQXc2JjTgImkI7FtXEocq/u4CFVoT0oXgW5rOdC5/HqOXk3MVY5QG1xMoaU0Dbu
         VF7NwurFKTDxxlUdHIeoQhe5CfPQfL38r+/1nXjuqXZBwg3HUE1/3Ut3/cJLC8y3p1RH
         ERsrLwOoL5PgDflFfH7g3Yfu5z9G9mDz3USlAaiVo1eu5eUgIN/LrrHkRgAkz8QrnBF0
         +szQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=NDgjT8Gm2p6BPTGasZC7u/yG4vPfMFDnsjFz5IVd4Uw=;
        b=WJHxpkgO0QVtRNcKZ8DdrKKqt3RuFJnC0k1kaJKqI2ysUIA8byxGo4q6VvYwcoeibH
         o+KYQqbBtMg+Vgfqu9SYunwesttHEU4TCwqtu2wBxNTJwexsoUS3X3g4ESfVAWmr3af5
         GpPYdMZLGfWhWA8cbhemrDbJjb+rlw3pYMeOJRCrHmKR/Ogovp2RTPBYVVm6ys6zoOmr
         qlomQ0DJu3fii6wKEiooLiKXfXESt8cR4RjQEc+L8Qyn2zZb5povwBXTg7+NSYCsEYov
         RneYQqn/fU63jwXbqmz6o3SBeZ6T1rJIrt0AKxzvytgHr801Rim5VJeCZuat5c2TqSm+
         Xscg==
X-Gm-Message-State: AOAM5338R7B4pUfrR0gpE7FmGEEPdN92Ru5uYvgEzv9AAzs01YQkda4R
        rixRy8zz/oBYXv3CpUnWOJMaxQ==
X-Google-Smtp-Source: ABdhPJxGhburhEuMkwUDjD59rBNrEz/JqfvzAAc16+Urfva38ZcqZOSzagPQLAfw2WnET/3w8tyI/g==
X-Received: by 2002:a05:6512:23a1:b0:448:6d3c:57aa with SMTP id c33-20020a05651223a100b004486d3c57aamr3762986lfv.2.1647042819250;
        Fri, 11 Mar 2022 15:53:39 -0800 (PST)
Received: from localhost.localdomain (c-fdcc225c.014-348-6c756e10.bbcust.telenor.se. [92.34.204.253])
        by smtp.gmail.com with ESMTPSA id 8-20020a2e1548000000b002463639d0f2sm1967691ljv.68.2022.03.11.15.53.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Mar 2022 15:53:38 -0800 (PST)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Johan Hovold <johan@kernel.org>
Cc:     linux-kernel@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org
Subject: [PATCH 3/4] dt-bindings: gnss: Rewrite sirfstar binding in YAML
Date:   Sat, 12 Mar 2022 00:51:18 +0100
Message-Id: <20220311235119.523374-3-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220311235119.523374-1-linus.walleij@linaro.org>
References: <20220311235119.523374-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This rewrites the SiRFstar DT bindings in YAML.

Cc: devicetree@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../devicetree/bindings/gnss/sirfstar.txt     | 46 ------------
 .../devicetree/bindings/gnss/sirfstar.yaml    | 73 +++++++++++++++++++
 2 files changed, 73 insertions(+), 46 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/gnss/sirfstar.txt
 create mode 100644 Documentation/devicetree/bindings/gnss/sirfstar.yaml

diff --git a/Documentation/devicetree/bindings/gnss/sirfstar.txt b/Documentation/devicetree/bindings/gnss/sirfstar.txt
deleted file mode 100644
index f4252b6b660b..000000000000
--- a/Documentation/devicetree/bindings/gnss/sirfstar.txt
+++ /dev/null
@@ -1,46 +0,0 @@
-SiRFstar-based GNSS Receiver DT binding
-
-SiRFstar chipsets are used in GNSS-receiver modules produced by several
-vendors and can use UART, SPI or I2C interfaces.
-
-Please see Documentation/devicetree/bindings/gnss/gnss.txt for generic
-properties.
-
-Required properties:
-
-- compatible	: Must be one of
-
-			"fastrax,uc430"
-			"linx,r4"
-			"wi2wi,w2sg0004"
-			"wi2wi,w2sg0008i"
-			"wi2wi,w2sg0084i"
-
-- vcc-supply	: Main voltage regulator (pin name: 3V3_IN, VCC, VDD)
-
-Required properties (I2C):
-- reg		: I2C slave address
-
-Required properties (SPI):
-- reg		: SPI chip select address
-
-Optional properties:
-
-- sirf,onoff-gpios	: GPIO used to power on and off device (pin name: ON_OFF)
-- sirf,wakeup-gpios	: GPIO used to determine device power state
-			  (pin name: RFPWRUP, WAKEUP)
-- timepulse-gpios	: Time pulse GPIO (pin name: 1PPS, TM)
-
-Example:
-
-serial@1234 {
-	compatible = "ns16550a";
-
-	gnss {
-		compatible = "wi2wi,w2sg0084i";
-
-		vcc-supply = <&gnss_reg>;
-		sirf,onoff-gpios = <&gpio0 16 GPIO_ACTIVE_HIGH>;
-		sirf,wakeup-gpios = <&gpio0 17 GPIO_ACTIVE_HIGH>;
-	};
-};
diff --git a/Documentation/devicetree/bindings/gnss/sirfstar.yaml b/Documentation/devicetree/bindings/gnss/sirfstar.yaml
new file mode 100644
index 000000000000..91874241d0f3
--- /dev/null
+++ b/Documentation/devicetree/bindings/gnss/sirfstar.yaml
@@ -0,0 +1,73 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/gnss/sirfstar.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SiRFstar GNSS Receiver Device Tree Bindings
+
+allOf:
+  - $ref: gnss-common.yaml#
+
+maintainers:
+  - Johan Hovold <johan@kernel.org>
+
+description:
+  The SiRFstar GNSS receivers have incarnated over the years in different
+  chips, starting from the SiRFstarIII which was a chip that was introduced in
+  2004 and used in a lot of dedicated GPS devices. In 2009 SiRF was acquired
+  by CSR (Cambridge Silicon Radio) and in 2012 the CSR GPS business was
+  acquired by Samsung, while some products remained with CSR. In 2014 CSR
+  was acquired by Qualcomm who still sell some of the SiRF products.
+
+  SiRF chips can be used over UART, I2C or SPI buses.
+
+properties:
+  compatible:
+    enum:
+      - fastrax,uc430
+      - linx,r4
+      - wi2wi,w2sg0004
+      - wi2wi,w2sg0008i
+      - wi2wi,w2sg0084i
+
+  reg:
+    description:
+      The I2C Address, SPI chip select address. Not required on UART buses.
+
+  vcc-supply:
+    description:
+      Main voltage regulator, pin names such as 3V3_IN, VCC, VDD.
+
+  timepulse-gpios:
+    description: Comes with pin names such as 1PPS or TM
+
+  sirf,onoff-gpios:
+    maxItems: 1
+    description: GPIO used to power on and off device, pin name ON_OFF.
+
+  sirf,wakeup-gpios:
+    maxItems: 1
+    description: GPIO used to determine device power state, pin names such
+      as RFPWRUP, WAKEUP.
+
+  current-speed: true
+
+required:
+  - compatible
+  - vcc-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    serial {
+        gnss {
+            compatible = "wi2wi,w2sg0084i";
+            vcc-supply = <&gnss_vcc_reg>;
+            sirf,onoff-gpios = <&gpio0 16 GPIO_ACTIVE_HIGH>;
+            sirf,wakeup-gpios = <&gpio0 17 GPIO_ACTIVE_HIGH>;
+            current-speed = <38400>;
+        };
+    };
-- 
2.35.1


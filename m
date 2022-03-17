Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 339094DD0FF
	for <lists+devicetree@lfdr.de>; Fri, 18 Mar 2022 00:01:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230109AbiCQXCZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Mar 2022 19:02:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230041AbiCQXCP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Mar 2022 19:02:15 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E92B147AFD
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 16:00:58 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id y17so9156738ljd.12
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 16:00:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1h6v43X9Wm6mV5ATOpHxZMr+fhOw297iiR7I0VujGPQ=;
        b=wsTHgw2VBBcm8YG8qFRGs1WpXu6JyF6Icf7SYw2oQ2KyRk6OOMy2lcGej02iEPfdBj
         aaisFTjvISJ8vBPGrFZDgxnzDIAx2m9MvaNK3aXJy/1F7w1v+N6EGnDH2YwJmwJJrlwz
         VTQI7fG36ROUtvLL9CDQgS193hnT7stsgy523VSeAkEVoyT1L1rgo0DhplRoubiltQM7
         ut796lq+9aEWQHFf/n0TH5zDYRG0EaPaPuJVm5lO/Z2uOXTn40j63YijDtaxdnz4qaqz
         PCpEV4UmXZKUZ2l7b23KU8nGmJO5l3L0ooot97t0ugw4djgP28PQWTI52F4wwS09BAiC
         GLgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1h6v43X9Wm6mV5ATOpHxZMr+fhOw297iiR7I0VujGPQ=;
        b=oyHaCClry20HtZjBUpv94X355O3YE7rEZ4Vr0onLkKwHuktNweYVwvqRNIHnuTJvK2
         D+kRkExxkwHw3AIP3w806rCBYhqO056I+1/D+kbHAeOW8tdeVrFpj1XthkGDAs6/OeGX
         SnSTouwv3m3ERlwTsviRldWN/fCslwywjU4c3Euz91DtVvSnUrMN1r2euVBCvMbuIXpy
         JiWtiF5whPyaLdQRzQF7JQ8AyaEiEjJ3dLySRpffP++qUiTtAIu8dNxQY2dDqiryi2iZ
         yfM9nYzEj16gz7JfSE++uRJ7hgE6BMXZw/119ccjz6fKIvZQLg2eKCcZnPKWqBbl81+8
         mpXA==
X-Gm-Message-State: AOAM530WODTz1aIxWXZT2o42mkIIRNZ3S7fSB6q+hZXE8BHDKi1dzm5v
        xSZa7LHwVNLFruYFRdjBSAE5XQ==
X-Google-Smtp-Source: ABdhPJwsJWZmyw0Dj/XqEo3qOAjEFzd2Ly8PIdTH8f3QVrdumsfKQ80WpyvQczrfw2PPEZouvhCfVA==
X-Received: by 2002:a05:651c:4c6:b0:249:68fe:916e with SMTP id e6-20020a05651c04c600b0024968fe916emr1409054lji.288.1647558056520;
        Thu, 17 Mar 2022 16:00:56 -0700 (PDT)
Received: from localhost.localdomain (c-fdcc225c.014-348-6c756e10.bbcust.telenor.se. [92.34.204.253])
        by smtp.gmail.com with ESMTPSA id 11-20020a2e154b000000b0024967cd674esm191876ljv.35.2022.03.17.16.00.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Mar 2022 16:00:56 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Johan Hovold <johan@kernel.org>
Cc:     linux-kernel@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH 5/5 v2] dt-bindings: gnss: Rewrite Mediatek bindings in YAML
Date:   Thu, 17 Mar 2022 23:58:44 +0100
Message-Id: <20220317225844.1262643-5-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220317225844.1262643-1-linus.walleij@linaro.org>
References: <20220317225844.1262643-1-linus.walleij@linaro.org>
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

This rewrites the Mediatek GNSS bindings in YAML.

Cc: devicetree@vger.kernel.org
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v1->v2:
- New patch since Krzysztof pointed out there is really just
  one more binding to convert, so why not.
---
 .../devicetree/bindings/gnss/mediatek.txt     | 35 ------------
 .../devicetree/bindings/gnss/mediatek.yaml    | 54 +++++++++++++++++++
 2 files changed, 54 insertions(+), 35 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/gnss/mediatek.txt
 create mode 100644 Documentation/devicetree/bindings/gnss/mediatek.yaml

diff --git a/Documentation/devicetree/bindings/gnss/mediatek.txt b/Documentation/devicetree/bindings/gnss/mediatek.txt
deleted file mode 100644
index 80cb802813c5..000000000000
--- a/Documentation/devicetree/bindings/gnss/mediatek.txt
+++ /dev/null
@@ -1,35 +0,0 @@
-Mediatek-based GNSS Receiver DT binding
-
-Mediatek chipsets are used in GNSS-receiver modules produced by several
-vendors and can use a UART interface.
-
-Please see Documentation/devicetree/bindings/gnss/gnss.txt for generic
-properties.
-
-Required properties:
-
-- compatible	: Must be
-
-			"globaltop,pa6h"
-
-- vcc-supply	: Main voltage regulator (pin name: VCC)
-
-Optional properties:
-
-- current-speed		: Default UART baud rate
-- gnss-fix-gpios	: GPIO used to determine device position fix state
-			  (pin name: FIX, 3D_FIX)
-- reset-gpios		: GPIO used to reset the device (pin name: RESET, NRESET)
-- timepulse-gpios	: Time pulse GPIO (pin name: PPS1, 1PPS)
-- vbackup-supply	: Backup voltage regulator (pin name: VBAT, VBACKUP)
-
-Example:
-
-serial@1234 {
-	compatible = "ns16550a";
-
-	gnss {
-		compatible = "globaltop,pa6h";
-		vcc-supply = <&vcc_3v3>;
-	};
-};
diff --git a/Documentation/devicetree/bindings/gnss/mediatek.yaml b/Documentation/devicetree/bindings/gnss/mediatek.yaml
new file mode 100644
index 000000000000..273732225c1f
--- /dev/null
+++ b/Documentation/devicetree/bindings/gnss/mediatek.yaml
@@ -0,0 +1,54 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/gnss/mediatek.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Mediatek GNSS Receiver Device Tree Bindings
+
+allOf:
+  - $ref: gnss-common.yaml#
+
+maintainers:
+  - Johan Hovold <johan@kernel.org>
+
+description:
+  Mediatek chipsets are used in GNSS-receiver modules produced by several
+  vendors and can use a UART interface.
+
+properties:
+  compatible:
+    const: globaltop,pa6h
+
+  vcc-supply:
+    description:
+      Main voltage regulator, pin name VCC.
+
+  reset-gpios:
+    maxItems: 1
+    description: An optional reset line, with names such as RESET or NRESET.
+      If the line is active low it should be flagged with GPIO_ACTIVE_LOW.
+
+  timepulse-gpios:
+    description: Comes with pin names such as PPS1 or 1PPS.
+
+  vbackup-supply:
+    description:
+      Regulator providing backup voltage, pin names such as VBAT or VBACKUP.
+
+required:
+  - compatible
+  - vcc-supply
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    serial {
+        gnss {
+            compatible = "globaltop,pa6h";
+            vcc-supply = <&vcc_3v3>;
+            reset-gpios = <&gpio 1 GPIO_ACTIVE_LOW>;
+        };
+    };
-- 
2.35.1


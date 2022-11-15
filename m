Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A50D629029
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 03:55:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237344AbiKOCzL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Nov 2022 21:55:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236608AbiKOCys (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Nov 2022 21:54:48 -0500
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CF47186FC
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 18:54:39 -0800 (PST)
Received: by mail-ej1-x62e.google.com with SMTP id n20so12323784ejh.0
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 18:54:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DpYq70iArNS2pxebGHEfValI4udhqvfJfL86oolgszo=;
        b=jZpzIPCLwPszGkCTsJ4tZgikx63gFYR2GVtD0suFaV5Pfwh0wMVVIVaJc0b8n0ItKL
         YzPg3hQ/gSTUF8ZPCX4DJr9BEqwPUbV/hrlnbiFhg+HE5LRZYPKuCzGBqwgR4pgZB+49
         dlcW4GU8+PJm+PhuTgVWwFu2hYvHDg//vUAjB/pSxW/g2O9rL1Fy+vw9G3UzNIQJHi/P
         RsDu0Z/SEI2Cz1qiTwUIkF4Lq+kEGUgSlq5UFSAJ0ET0tHg68E8IlWRK7gYBCHJZgc4x
         m+C7pVLeakd7IWfv+SIwWh/gG0q9hxzxrLljILfL38AyK94D1/zD2k1jUWVqOVXriKLa
         kk7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DpYq70iArNS2pxebGHEfValI4udhqvfJfL86oolgszo=;
        b=nTxVvWJY1KXdOOwtlSdQUsqRhf75FSnoxtgUVNmo10vOKQkNF/i2fyoA08PbyLkEtp
         R22TwW5nrmL8tUYiiUxV3GoShDILzX56KLWGfKcO9mBu4ODhjf/16qRw9ZdrrVI+LO2s
         UkHdxen2VqHIbq05AMCsF/IwvbbwqTdRjj7cK+rAVLIXJpEWAf17U/WaMP8N2zSo2xtp
         1hQwHBpJpwRQ77ULD9oZtM45Znh8URRyNU92eQhgfbjqqQpXmWhbZ3XE7Mx7Mbou6nN4
         l/Eow5K19OJQgFxP3AWxG8HUPxBTqRR6HLEcIbGf8+xEaJb9LOIYJfgkpdtQ/MmlRnmL
         dfyA==
X-Gm-Message-State: ANoB5pmLeekVUIUK47LhUeO1X4ummWtdQm/0IFQrQzTDDJZzWhOWNIR5
        eHau99V1rAcH4KcjQUCt8NVuqQ==
X-Google-Smtp-Source: AA0mqf5co/shIzu1tV3Gc8w2nV8igZulLE0lo7boLZ4yVocD3uz2+SF8U4mnwVOaMN12ZfEgaw1UAw==
X-Received: by 2002:a17:906:b855:b0:7ac:f8e3:d547 with SMTP id ga21-20020a170906b85500b007acf8e3d547mr12211614ejb.53.1668480877956;
        Mon, 14 Nov 2022 18:54:37 -0800 (PST)
Received: from c64.fritz.box ([2a01:2a8:8108:8301:7643:bec8:f62b:b074])
        by smtp.gmail.com with ESMTPSA id l9-20020a1709063d2900b0073d9a0d0cbcsm4861177ejf.72.2022.11.14.18.54.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Nov 2022 18:54:37 -0800 (PST)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     linux-mediatek@lists.infradead.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com
Subject: [PATCH v2 11/15] dt-bindings: pinctrl: add bindings for Mediatek MT8365 SoC
Date:   Tue, 15 Nov 2022 03:54:17 +0100
Message-Id: <20221115025421.59847-12-bero@baylibre.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221115025421.59847-1-bero@baylibre.com>
References: <20221107211001.257393-1-bero@baylibre.com>
 <20221115025421.59847-1-bero@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add devicetree bindings for Mediatek MT8365 pinctrl driver.

Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
---
 .../pinctrl/mediatek,mt8365-pinctrl.yaml      | 68 +++++++++++++++++++
 1 file changed, 68 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/mediatek,mt8365-pinctrl.yaml

diff --git a/Documentation/devicetree/bindings/pinctrl/mediatek,mt8365-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/mediatek,mt8365-pinctrl.yaml
new file mode 100644
index 0000000000000..bddff8c2fd382
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/mediatek,mt8365-pinctrl.yaml
@@ -0,0 +1,68 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pinctrl/mediatek,mt8365-pinctrl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Mediatek MT8365 Pin Controller
+
+maintainers:
+  - Bernhard Rosenkränzer <bero@baylibre.com>
+
+description: |+
+  The MediaTek's MT8365 Pin controller is used to control SoC pins.
+
+properties:
+  compatible:
+    const: mediatek,mt8365-pinctrl
+
+  reg:
+    minItems: 1
+    maxItems: 1
+
+  gpio-controller: true
+
+  "#gpio-cells":
+    const: 2
+    description: |
+      Number of cells in GPIO specifier. Since the generic GPIO
+      binding is used, the amount of cells must be specified as 2. See the below
+      mentioned gpio binding representation for description of particular cells.
+
+  interrupt-controller: true
+
+  interrupts:
+    maxItems: 1
+
+  "#interrupt-cells":
+    const: 2
+
+allOf:
+  - $ref: "pinctrl.yaml#"
+
+required:
+  - compatible
+  - reg
+  - gpio-controller
+  - "#gpio-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        pio: pinctrl@1000b000 {
+          compatible = "mediatek,mt8365-pinctrl";
+          reg = <0 0x1000b000 0 0x1000>;
+          mediatek,pctl-regmap = <&syscfg_pctl>;
+          pins-are-numbered;
+          gpio-controller;
+          #gpio-cells = <2>;
+          interrupt-controller;
+          #interrupt-cells = <2>;
+          interrupts = <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>;
+        };
+    };
-- 
2.38.1


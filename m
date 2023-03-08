Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9DF1F6B08C2
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 14:29:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231645AbjCHN3U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 08:29:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231616AbjCHN2r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 08:28:47 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A81B6559ED
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 05:27:36 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id p16so9792107wmq.5
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 05:27:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678282055;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lmEi8wNJscjPO+bec5z+80AcbDQKdl+RtO68ZSQp6ss=;
        b=o87adaDBDRi1jspFRXHeIkb0MdJBBV1RczVpmdOJrmQ/dFkVY9zFt21MICkbcRMXqS
         2Xz4mzlugTLS2+8pZvXJlzw+MEKb1YbNQyOB5mhljVkS0iUzBuNKpv6Hv7LmvcuLACXW
         k9XAyP2A5zlAXEEXLQIVZuLGEWQScp4lAGbwdzFI3cMiOTasMUGtR6gO9clZH1I2i9FE
         /IUL/i8VQSL+gfb/J1r5+DxnD+pQSZ5ACic4a76FwXg/ELv/ylXkJgSg/e2mldJIxogE
         Sj+ImmHx6NVEnOwnO3VIGY/xbOftTcgR4jip2RiUhy9lg9jcXjlAlqm5DAo0iNQxrXkF
         /nYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678282055;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lmEi8wNJscjPO+bec5z+80AcbDQKdl+RtO68ZSQp6ss=;
        b=3Wli/38w8u8f6+Uxg4YVOr+fvw8uKIdgYySaA1xJiC8V9EJaEGwcW7A7t9PzHAuUDn
         kN6EPLoTjExvYxoX9rM+y3K15d4Elsuq0dfC6FNMoBnn6l+XZ1RnyXij04v3iSSPzBhT
         iWEkwdufcLLlnPeyw6vdOMAhyl5ZMfqRL+icuqiuQAGjyXMr9TwFB04tQ7B8Km5gCE/v
         rffmoPIzZz88tLlovVFIUDRuiWBbURLeU422g1T99bjkXCIxaYTMntlfzGJ/b7PRJ9Nt
         THUrROwMfuKeNwIEq7y2zsALT4Psn+PZqYgCnbJaMx5YH2Tij0I1T8ina/mK1hv3BZfg
         ml6A==
X-Gm-Message-State: AO0yUKU6eCnZwo9zVqMPzocGlimNCC3nKsvDc4wIJ03yNpjcABMm+pIH
        RjnbWw/jRhOa5z/WiV6Yei0e9w==
X-Google-Smtp-Source: AK7set9XoOryhZWnyW8AHMLxThSn39SsEh/W3bEv/6kZUZvgH92zdspBySQfvg+Nn2VFJ6kIWw+2VA==
X-Received: by 2002:a05:600c:19c6:b0:3eb:383c:1870 with SMTP id u6-20020a05600c19c600b003eb383c1870mr15600750wmq.11.1678282055122;
        Wed, 08 Mar 2023 05:27:35 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id q14-20020a05600c46ce00b003daffc2ecdesm20631491wmo.13.2023.03.08.05.27.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 05:27:34 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Wed, 08 Mar 2023 14:27:29 +0100
Subject: [PATCH v4 1/5] dt-bindings: nvmem: convert amlogic-efuse.txt to
 dt-schema
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20221117-b4-amlogic-bindings-convert-v4-1-34e623dbf789@linaro.org>
References: <20221117-b4-amlogic-bindings-convert-v4-0-34e623dbf789@linaro.org>
In-Reply-To: <20221117-b4-amlogic-bindings-convert-v4-0-34e623dbf789@linaro.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Rob Herring <robh@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-pci@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the  Amlogic Meson GX eFuse bindings to dt-schema.

Take in account the used variant with amlogic,meson-gx-efuse.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../bindings/nvmem/amlogic,meson-gxbb-efuse.yaml   | 57 ++++++++++++++++++++++
 .../devicetree/bindings/nvmem/amlogic-efuse.txt    | 48 ------------------
 2 files changed, 57 insertions(+), 48 deletions(-)

diff --git a/Documentation/devicetree/bindings/nvmem/amlogic,meson-gxbb-efuse.yaml b/Documentation/devicetree/bindings/nvmem/amlogic,meson-gxbb-efuse.yaml
new file mode 100644
index 000000000000..e49c2754ff55
--- /dev/null
+++ b/Documentation/devicetree/bindings/nvmem/amlogic,meson-gxbb-efuse.yaml
@@ -0,0 +1,57 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/nvmem/amlogic,meson-gxbb-efuse.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Amlogic Meson GX eFuse
+
+maintainers:
+  - Neil Armstrong <neil.armstrong@linaro.org>
+
+allOf:
+  - $ref: nvmem.yaml#
+
+properties:
+  compatible:
+    oneOf:
+      - const: amlogic,meson-gxbb-efuse
+      - items:
+          - const: amlogic,meson-gx-efuse
+          - const: amlogic,meson-gxbb-efuse
+
+  clocks:
+    maxItems: 1
+
+  secure-monitor:
+    description: phandle to the secure-monitor node
+    $ref: /schemas/types.yaml#/definitions/phandle
+
+required:
+  - compatible
+  - clocks
+  - secure-monitor
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    efuse: efuse {
+        compatible = "amlogic,meson-gxbb-efuse";
+        clocks = <&clk_efuse>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+        secure-monitor = <&sm>;
+
+        sn: sn@14 {
+            reg = <0x14 0x10>;
+        };
+
+        eth_mac: mac@34 {
+            reg = <0x34 0x10>;
+        };
+
+        bid: bid@46 {
+            reg = <0x46 0x30>;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt b/Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt
deleted file mode 100644
index f7b3ed74db54..000000000000
--- a/Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt
+++ /dev/null
@@ -1,48 +0,0 @@
-= Amlogic Meson GX eFuse device tree bindings =
-
-Required properties:
-- compatible: should be "amlogic,meson-gxbb-efuse"
-- clocks: phandle to the efuse peripheral clock provided by the
-	  clock controller.
-- secure-monitor: phandle to the secure-monitor node
-
-= Data cells =
-Are child nodes of eFuse, bindings of which as described in
-bindings/nvmem/nvmem.txt
-
-Example:
-
-	efuse: efuse {
-		compatible = "amlogic,meson-gxbb-efuse";
-		clocks = <&clkc CLKID_EFUSE>;
-		#address-cells = <1>;
-		#size-cells = <1>;
-		secure-monitor = <&sm>;
-
-		sn: sn@14 {
-			reg = <0x14 0x10>;
-		};
-
-		eth_mac: eth_mac@34 {
-			reg = <0x34 0x10>;
-		};
-
-		bid: bid@46 {
-			reg = <0x46 0x30>;
-		};
-	};
-
-	sm: secure-monitor {
-		compatible = "amlogic,meson-gxbb-sm";
-	};
-
-= Data consumers =
-Are device nodes which consume nvmem data cells.
-
-For example:
-
-	eth_mac {
-		...
-		nvmem-cells = <&eth_mac>;
-		nvmem-cell-names = "eth_mac";
-	};

-- 
2.34.1


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B40724ADF48
	for <lists+devicetree@lfdr.de>; Tue,  8 Feb 2022 18:19:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1383494AbiBHRT3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Feb 2022 12:19:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1383768AbiBHRT0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Feb 2022 12:19:26 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12C22C06157B
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 09:19:25 -0800 (PST)
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com [209.85.218.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id D66454000F
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 17:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644340763;
        bh=kMaTNaBI2iO4IYdjvaEgTk0fgCfiFl3MO+VYGfyVvmE=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=lnBdMxEWMYw7AaM8GtmPI2mq4l9HHdv92EUan5YECg5hr/6jkwQRCnnzvySe2y/y7
         CpiDA5xnf2DIHS6du1h/7LHqAFvHelfpoJLMW+XUe/jeoz1y1us9eTJzY05dWhMG1g
         vmA1BWE5o7sTnkNXf2Za8N3FuOKdnXn8G6auP6Uw0HYwCgC5l9kbCkWuaAUWtC7arz
         zTbHFJSWhO5rVxRHCSUUed3ZYWMEScU7DNLUcoQ9KDd759Ih2YJ9KrwKKvz3gdcueR
         4WrTU+5TBVST4GxCteBRkMgPDmN1NTam28m//WN2KkXMvaUZd3CW4gC9mCVYZL043d
         6GDXkU4c2DIYQ==
Received: by mail-ej1-f71.google.com with SMTP id aj9-20020a1709069a4900b006cd205be806so1145621ejc.18
        for <devicetree@vger.kernel.org>; Tue, 08 Feb 2022 09:19:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kMaTNaBI2iO4IYdjvaEgTk0fgCfiFl3MO+VYGfyVvmE=;
        b=HSHJ2HigpQBEfgY9sPiQATYsEFcd7RDDcLg7HkEvvJZegFC7rp8C7HQc7S082jN/Oc
         8Y4Cp5hWeJVlSdfh7RYx64U3iBWBjA+kKSxh4+P/yU0V62PhIidnW7h7+Bi1Zaqjpar4
         4/JQbK1DpBtgCRmxBwPv8K+QBHMGpEY1uMJV+29E0x+F/gZK/dQFDrcfvfsxYZZi8Nu5
         wwhGartF5ci84jJ5nMYmQ4hcqm8L1KeC5fwcOGhStITdLwF/uEraoLhl8y7xByYm2liF
         gCNBB3CZCHNJdxGXj2Szc1nfU8arAdC8qh+iMpgGI4+ywS+nEAUdjm04qq+GYp37KPdE
         EhFw==
X-Gm-Message-State: AOAM530UlYfgV1u6zGI+pFmeKC+ba7MHDQnveIijbHoAMrGt8dgwZURB
        zqVQB0T5KGTE8mOi5m3LpljzC9LVMhmtzP6TOCknDYsvxuKsAtURJEQxggBhLeqBPz2WV8CbifT
        qYXZnBFry87SfINRVh7ed7nDUhX44d1uZc9fhAg0=
X-Received: by 2002:aa7:d809:: with SMTP id v9mr5652424edq.2.1644340763454;
        Tue, 08 Feb 2022 09:19:23 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwlLGYgUd+Cr4yCQlVE0VWHIHMy+r8JCbb5AQJa47VNi9iyYKn2B1Q1E+kn15abkGcHd22WRg==
X-Received: by 2002:aa7:d809:: with SMTP id v9mr5652400edq.2.1644340763212;
        Tue, 08 Feb 2022 09:19:23 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id r10sm5125550ejy.148.2022.02.08.09.19.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Feb 2022 09:19:22 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Inki Dae <inki.dae@samsung.com>,
        Joonyoung Shim <jy0922.shim@samsung.com>,
        Seung-Woo Kim <sw0312.kim@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
Cc:     Marek Szyprowski <m.szyprowski@samsung.com>,
        Sylwester Nawrocki <snawrocki@kernel.org>
Subject: [PATCH 09/10] dt-bindings: display: samsung,exynos5433-mic: convert to dtschema
Date:   Tue,  8 Feb 2022 18:18:22 +0100
Message-Id: <20220208171823.226211-10-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220208171823.226211-1-krzysztof.kozlowski@canonical.com>
References: <20220208171823.226211-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the Exynos5433 MIC bindings to DT schema format.

The conversion includes also updates to the bindings, matching the
current DTS and Linux driver: adding optional power-domains.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../bindings/display/exynos/exynos-mic.txt    | 51 ----------
 .../samsung/samsung,exynos5433-mic.yaml       | 95 +++++++++++++++++++
 2 files changed, 95 insertions(+), 51 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/exynos/exynos-mic.txt
 create mode 100644 Documentation/devicetree/bindings/display/samsung/samsung,exynos5433-mic.yaml

diff --git a/Documentation/devicetree/bindings/display/exynos/exynos-mic.txt b/Documentation/devicetree/bindings/display/exynos/exynos-mic.txt
deleted file mode 100644
index 0fba2ee6440a..000000000000
--- a/Documentation/devicetree/bindings/display/exynos/exynos-mic.txt
+++ /dev/null
@@ -1,51 +0,0 @@
-Device-Tree bindings for Samsung Exynos SoC mobile image compressor (MIC)
-
-MIC (mobile image compressor) resides between decon and mipi dsi. Mipi dsi is
-not capable to transfer high resoltuion frame data as decon can send. MIC
-solves this problem by compressing the frame data by 1/2 before it is
-transferred through mipi dsi. The compressed frame data must be uncompressed in
-the panel PCB.
-
-Required properties:
-- compatible: value should be "samsung,exynos5433-mic".
-- reg: physical base address and length of the MIC registers set and system
-       register of mic.
-- clocks: must include clock specifiers corresponding to entries in the
-	  clock-names property.
-- clock-names: list of clock names sorted in the same order as the clocks
-	       property. Must contain "pclk_mic0", "sclk_rgb_vclk_to_mic0".
-- samsung,disp-syscon: the reference node for syscon for DISP block.
-- ports: contains a port which is connected to decon node and dsi node.
-	 address-cells and size-cells must 1 and 0, respectively.
-- port: contains an endpoint node which is connected to the endpoint in the
-	decon node or dsi node. The reg value must be 0 and 1 respectively.
-
-Example:
-SoC specific DT entry:
-mic: mic@13930000 {
-	compatible = "samsung,exynos5433-mic";
-	reg = <0x13930000 0x48>;
-	clocks = <&cmu_disp CLK_PCLK_MIC0>,
-	       <&cmu_disp CLK_SCLK_RGB_VCLK_TO_MIC0>;
-	clock-names = "pclk_mic0", "sclk_rgb_vclk_to_mic0";
-	samsung,disp-syscon = <&syscon_disp>;
-
-	ports {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		port@0 {
-			reg = <0>;
-			mic_to_decon: endpoint {
-				remote-endpoint = <&decon_to_mic>;
-			};
-		};
-
-		port@1 {
-			reg = <1>;
-			mic_to_dsi: endpoint {
-				remote-endpoint = <&dsi_to_mic>;
-			};
-		};
-	};
-};
diff --git a/Documentation/devicetree/bindings/display/samsung/samsung,exynos5433-mic.yaml b/Documentation/devicetree/bindings/display/samsung/samsung,exynos5433-mic.yaml
new file mode 100644
index 000000000000..01fccb138ebd
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/samsung/samsung,exynos5433-mic.yaml
@@ -0,0 +1,95 @@
+# SPDX-License-Identifier: GPL-2.0-only
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/samsung/samsung,exynos5433-mic.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung Exynos5433 SoC Mobile Image Compressor (MIC)
+
+maintainers:
+  - Inki Dae <inki.dae@samsung.com>
+  - Joonyoung Shim <jy0922.shim@samsung.com>
+  - Seung-Woo Kim <sw0312.kim@samsung.com>
+  - Kyungmin Park <kyungmin.park@samsung.com>
+  - Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
+
+description: |
+  MIC (Mobile Image Compressor) resides between DECON and MIPI DSI. MIPI DSI is
+  not capable of transferring high resoltuion frame data as DECON can send. MIC
+  solves this problem by compressing the frame data by 1/2 before it is
+  transferred through MIPI DSI. The compressed frame data must be uncompressed
+  in the panel PCB.
+
+properties:
+  compatible:
+    const: samsung,exynos5433-mic
+
+  clocks:
+    minItems: 2
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: pclk_mic0
+      - const: sclk_rgb_vclk_to_mic0
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+    description:
+      Contains a port which is connected to mic node.
+
+  power-domains:
+    maxItems: 1
+
+  reg:
+    maxItems: 1
+
+  samsung,disp-syscon:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to DISP system controller interface.
+
+required:
+  - compatible
+  - clocks
+  - clock-names
+  - ports
+  - reg
+  - samsung,disp-syscon
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/exynos5433.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    image-processor@13930000 {
+        compatible = "samsung,exynos5433-mic";
+        reg = <0x13930000 0x48>;
+        clocks = <&cmu_disp CLK_PCLK_MIC0>,
+                 <&cmu_disp CLK_SCLK_RGB_VCLK_TO_MIC0>;
+        clock-names = "pclk_mic0",
+                      "sclk_rgb_vclk_to_mic0";
+        power-domains = <&pd_disp>;
+        samsung,disp-syscon = <&syscon_disp>;
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            port@0 {
+                reg = <0>;
+                mic_to_decon: endpoint {
+                    remote-endpoint = <&decon_to_mic>;
+                };
+            };
+
+            port@1 {
+                reg = <1>;
+                mic_to_dsi: endpoint {
+                    remote-endpoint = <&dsi_to_mic>;
+                };
+            };
+        };
+    };
-- 
2.32.0


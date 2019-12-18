Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 018F9124833
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2019 14:25:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727138AbfLRNYO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Dec 2019 08:24:14 -0500
Received: from mail-lj1-f195.google.com ([209.85.208.195]:45570 "EHLO
        mail-lj1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727347AbfLRNYO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Dec 2019 08:24:14 -0500
Received: by mail-lj1-f195.google.com with SMTP id j26so2099220ljc.12
        for <devicetree@vger.kernel.org>; Wed, 18 Dec 2019 05:24:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=unqIuIpnL0SKav+KaURk+5yuOec5tbAyPzTEx5H0hC0=;
        b=PY1qWRdU8/IJtzEkH9dEi7ciUkruMXnneayBeR6VHlIyzfG52/l5OqxiD4bMqdQZv6
         m4st955NgxkUXzg2lkGxJ72Vt7u32kCnSsm6BePQJJ0YoA86+12iDAh+4/EyNogR+BTV
         pO6XNfGRqjhHYWo4/k/CeYJeH08ak7JFxyVJORvfhgaFJ4oEnLRTdWUf+Zn7wT69Giyf
         VBSF6LV3kg0roqFJDDhLvZiw4vt7PnlixzXZHfvOt+KOQP7fH2S+P3EnCnMCvEJKEHEj
         FherkDEjnsiGsSp6gvPHczQRbAWocD6qCShi7x4ITOtVF/cj1H5j59w0z4H0PultmYCh
         +ixw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=unqIuIpnL0SKav+KaURk+5yuOec5tbAyPzTEx5H0hC0=;
        b=JUrtTfR99xjN1f4bIhcLSjnnXitrFrE9Z+n4w3XQy1tO5t1DVPUvw21dv1AVaN+Oc5
         2+kMzWNWRf2xi/431QfwPwHPJ30LW681vl+HBjLeAaF12YR4hk7erXpLNYbWn0qYpjps
         zl6UOpHpme4bgqctG0B0O+BssOTs9jNqpCAxZ2WiWCiZFF9xMNFsraye9fyu/nkJm2Qy
         seisH61gZpiHGCj5xiCLxfSysdSDWHucA0VofKdBQh4y52fNA7VJyI1VGwu/wUfV1OXC
         Hdgi8iUD3boFmFB3xi7QwJMCDELoNc84DcQgCFZ8yAySHmgf160AdsZ+4/DD0TE7Gcvv
         nm4g==
X-Gm-Message-State: APjAAAVCLdUxij5vmL7jL1Ph585TMIVhL0cPaDhjzTFOHJXA6kbOzsUR
        D/RXfiw58IQ+LRfSRAbrJF04vw==
X-Google-Smtp-Source: APXvYqyCKS0JXJzqWtstsL6t6OlHNUXPgonafhakg0IOrxL8NfSw9XxJ1gwqYOmdWfTSNu7A4t1mdw==
X-Received: by 2002:a2e:9a01:: with SMTP id o1mr1645018lji.247.1576675451419;
        Wed, 18 Dec 2019 05:24:11 -0800 (PST)
Received: from localhost.localdomain ([37.157.136.193])
        by smtp.gmail.com with ESMTPSA id z7sm1440667lfa.81.2019.12.18.05.24.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Dec 2019 05:24:10 -0800 (PST)
From:   Stanimir Varbanov <stanimir.varbanov@linaro.org>
To:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org
Cc:     Vikash Garodia <vgarodia@codeaurora.org>, dikshita@codeaurora.org,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>
Subject: [PATCH v2 08/12] dt-bindings: media: venus: Convert sdm845 to DT schema
Date:   Wed, 18 Dec 2019 15:22:47 +0200
Message-Id: <20191218132251.24161-9-stanimir.varbanov@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191218132251.24161-1-stanimir.varbanov@linaro.org>
References: <20191218132251.24161-1-stanimir.varbanov@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert qcom,sdm845-venus Venus binding to DT schema.

Signed-off-by: Stanimir Varbanov <stanimir.varbanov@linaro.org>
---
 .../bindings/media/qcom,venus-sdm845.yaml     | 151 ++++++++++++++++++
 1 file changed, 151 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/qcom,venus-sdm845.yaml

diff --git a/Documentation/devicetree/bindings/media/qcom,venus-sdm845.yaml b/Documentation/devicetree/bindings/media/qcom,venus-sdm845.yaml
new file mode 100644
index 000000000000..4136a0d979d5
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/qcom,venus-sdm845.yaml
@@ -0,0 +1,151 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/media/qcom,venus-sdm845.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Qualcomm Venus video encode and decode accelerators
+
+maintainers:
+  - Stanimir Varbanov <stanimir.varbanov@linaro.org>
+
+description: |
+  The Venus IP is a video encode and decode accelerator present
+  on Qualcomm platforms
+
+properties:
+  compatible:
+    enum:
+      - qcom,sdm845-venus
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  power-domains:
+    minItems: 1
+    maxItems: 1
+
+  clocks:
+    maxItems: 3
+
+  clock-names:
+    maxItems: 3
+    items:
+      - const: core
+      - const: iface
+      - const: bus
+
+  iommus:
+    minItems: 1
+    maxItems: 20
+
+  memory-region:
+    maxItems: 1
+
+  video-core0:
+    type: object
+
+    properties:
+      compatible:
+        const: "venus-decoder"
+
+      clocks:
+        maxItems: 2
+
+      clock-names:
+        maxItems: 2
+        items:
+          - const: core
+          - const: bus
+
+      power-domains:
+        minItems: 1
+        maxItems: 1
+
+    required:
+      - compatible
+
+  video-core1:
+    type: object
+
+    properties:
+      compatible:
+        const: "venus-encoder"
+
+      clocks:
+        maxItems: 2
+
+      clock-names:
+        maxItems: 2
+        items:
+          - const: core
+          - const: bus
+
+      power-domains:
+        minItems: 1
+        maxItems: 1
+
+    required:
+      - compatible
+
+  video-firmware:
+    type: object
+
+    description: |
+      Firmware subnode is needed when the platform does not
+      have TrustZone.
+
+    properties:
+      iommus:
+        minItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - power-domains
+  - clocks
+  - clock-names
+  - iommus
+  - memory-region
+  - video-core0
+  - video-core1
+
+examples:
+  - |
+        #include <dt-bindings/interrupt-controller/arm-gic.h>
+        #include <dt-bindings/clock/qcom,videocc-sdm845.h>
+
+        video-codec@aa00000 {
+                compatible = "qcom,sdm845-venus";
+                reg = <0 0x0aa00000 0 0xff000>;
+                interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
+                clocks = <&videocc VIDEO_CC_VENUS_CTL_CORE_CLK>,
+                         <&videocc VIDEO_CC_VENUS_AHB_CLK>,
+                         <&videocc VIDEO_CC_VENUS_CTL_AXI_CLK>;
+                clock-names = "core", "iface", "bus";
+                power-domains = <&videocc VENUS_GDSC>;
+                iommus = <&apps_smmu 0x10a0 0x8>,
+                         <&apps_smmu 0x10b0 0x0>;
+                memory-region = <&venus_mem>;
+
+                video-core0 {
+                        compatible = "venus-decoder";
+                        clocks = <&videocc VIDEO_CC_VCODEC0_CORE_CLK>,
+                                 <&videocc VIDEO_CC_VCODEC0_AXI_CLK>;
+                        clock-names = "core", "bus";
+                        power-domains = <&videocc VCODEC0_GDSC>;
+                };
+
+                video-core1 {
+                        compatible = "venus-encoder";
+                        clocks = <&videocc VIDEO_CC_VCODEC1_CORE_CLK>,
+                                 <&videocc VIDEO_CC_VCODEC1_AXI_CLK>;
+                        clock-names = "core", "bus";
+                        power-domains = <&videocc VCODEC1_GDSC>;
+                };
+        };
-- 
2.17.1


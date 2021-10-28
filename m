Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2B00D43E684
	for <lists+devicetree@lfdr.de>; Thu, 28 Oct 2021 18:47:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230321AbhJ1QuN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Oct 2021 12:50:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229761AbhJ1QuN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Oct 2021 12:50:13 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0DFBC061745
        for <devicetree@vger.kernel.org>; Thu, 28 Oct 2021 09:47:45 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id j128-20020a1c2386000000b003301a98dd62so1641427wmj.5
        for <devicetree@vger.kernel.org>; Thu, 28 Oct 2021 09:47:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=EIQZtiL4sO2h//qQWQnW0bsrqU7jClGfSi+dVnwdw8M=;
        b=TBUrWftD5XqHvD8PbQTlOVzGtVGKEwU91QaDNYmSa6TC9xVVaG3SMjqL7vRMqcjz/T
         osNT37veogQdizbTV9+l4/OYKmnY7+qvzbVVrve+XhkR22qNX3Met4AcHEAsA2fBfAzL
         JB6mqq4XqYe90DFApw2Bw9GhbM7Bsru3/ri8omaEedengnCsyb01OWFkfuiVVYNBsyc6
         NvFfH0r6decoNiIFxqeM7Nt5P0j2UmsE4u54APOQEnkQp8SYHUMNMXyTixKw2huogTJA
         uSa8sdcKZWW9U5oAYG8jhguHP4l6eQwjuJJ6k6k7w+7ejlOw4JYccX5RMfyIZPaFu9CH
         48vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=EIQZtiL4sO2h//qQWQnW0bsrqU7jClGfSi+dVnwdw8M=;
        b=r9I6wUiXhPILqz9VRPtkQQwj24Jh0pg0X6YGu43ApHVV+8UMbfz7aQdHJT7WRPhFtQ
         lSYHHfk8kuuiKtxh5CopMXileOnjoqx4Ync3Vicz1XWuyUm5CHEvwP/ddrxun6Ce34FJ
         alcWLDdPQhNEDMqkPlnSNlp3fhlTpdciw8Eo4OzcCIFoFHrtNJpk6Tq9xg3WIbRkKYBp
         A/3TMPanof2WAtKvph0m8SSJ9Ctiru9ZSZ+vGcZeG6JvOdOARkxZC8BiGK+X/ExAvCSd
         oh08KHwtjEFAtNdc/CWbXzi36pRfriBKF1A6wqaYfxELUrTnK6OqfrPTDv0oK1gTiJVr
         CmLw==
X-Gm-Message-State: AOAM5331rPTKYE4a73lxMOY0PS51+2tO9988DEKzu53BcQI+3VyqYh8M
        P4eRYqGgEoPZaZHxsMNMvcq+nQ==
X-Google-Smtp-Source: ABdhPJzzMGmZvBQ71k3dB4DPQXaIymT4UYekuWhVAwPb6ERWZ63hT5hdLCl6NeJvrc1+mV50On9NWw==
X-Received: by 2002:a1c:9891:: with SMTP id a139mr211737wme.152.1635439664526;
        Thu, 28 Oct 2021 09:47:44 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id y8sm3601724wrq.77.2021.10.28.09.47.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Oct 2021 09:47:43 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     linux@roeck-us.net, heikki.krogerus@linux.intel.com,
        rdunlap@infradead.org, gregkh@linuxfoundation.org,
        bjorn.andersson@linaro.org, robh+dt@kernel.org,
        linux-usb@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     wcheng@codeaurora.org, bryan.odonoghue@linaro.org
Subject: [RESEND PATCH v2 2/7] dt-bindings: usb: Add Qualcomm PMIC type C controller YAML schema
Date:   Thu, 28 Oct 2021 17:49:36 +0100
Message-Id: <20211028164941.831918-3-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211028164941.831918-1-bryan.odonoghue@linaro.org>
References: <20211028164941.831918-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a YAML binding for the type-c silicon interface inside Qualcomm's
pm8150b hardware block.

The type-c driver operates with a pdphy driver inside of a high level
single TCPM device.

Based on original work by Wesley.

Signed-off-by: Wesley Cheng <wcheng@codeaurora.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../bindings/usb/qcom,pmic-typec.yaml         | 116 ++++++++++++++++++
 1 file changed, 116 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/qcom,pmic-typec.yaml

diff --git a/Documentation/devicetree/bindings/usb/qcom,pmic-typec.yaml b/Documentation/devicetree/bindings/usb/qcom,pmic-typec.yaml
new file mode 100644
index 0000000000000..72602daf910bb
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/qcom,pmic-typec.yaml
@@ -0,0 +1,116 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/usb/qcom,pmic-typec.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Qualcomm PMIC based USB type C Detection Driver
+
+maintainers:
+  - Bryan O'Donoghue <bryan.odonoghue@linaro.org>
+
+description: |
+  Qualcomm PMIC Type C Detect
+
+properties:
+  compatible:
+    enum:
+      - qcom,pm8150b-usb-typec
+
+  reg:
+    maxItems: 1
+    description: Type C base address
+
+  interrupts:
+    items:
+      - description: Bitmask of CC attach, VBUS error, tCCDebounce done and more
+      - description: VCONN Powered Detection
+      - description: CC state change
+      - description: VCONN over-current condition
+      - description: VBUS state change
+      - description: Attach Deteach notification
+      - description: Legacy cable detect
+      - description: Try.Src Try.Snk state change
+
+  interrupt-names:
+    items:
+      - const: pmic-typec-or-rid-detect-change
+      - const: pmic-typec-vpd-detect
+      - const: pmic-typec-cc-state-change
+      - const: pmic-typec-vconn-oc
+      - const: pmic-typec-vbus-change
+      - const: pmic-typec-attach-detach
+      - const: pmic-typec-legacy-cable-detect
+      - const: pmic-typec-try-snk-src-detect
+
+  ports:
+    description: Remote endpoint connections
+    $ref: /connector/usb-connector.yaml#/properties/ports
+
+    properties:
+      port@0:
+        description: Remote endpoints for the TCPM driver
+
+    required:
+      - port@0
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-names
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/usb/typec/tcpm/qcom,pmic-usb-typec.h>
+    pm8150b {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        pm8150b_typec: typec@1500 {
+            compatible = "qcom,pm8150b-typec";
+            reg = <0x1500>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+            interrupts = <0x2 0x15 PMIC_TYPEC_OR_RID_IRQ
+                          IRQ_TYPE_EDGE_RISING>,
+                         <0x2 0x15 PMIC_TYPEC_VPD_IRQ
+                          IRQ_TYPE_EDGE_BOTH>,
+                         <0x2 0x15 PMIC_TYPEC_CC_STATE_IRQ
+                          IRQ_TYPE_EDGE_RISING>,
+                         <0x2 0x15 PMIC_TYPEC_VCONN_OC_IRQ
+                          IRQ_TYPE_EDGE_BOTH>,
+                         <0x2 0x15 PMIC_TYPEC_VBUS_IRQ
+                          IRQ_TYPE_EDGE_RISING>,
+                         <0x2 0x15 PMIC_TYPEC_ATTACH_DETACH_IRQ
+                          IRQ_TYPE_EDGE_RISING>,
+                         <0x2 0x15 PMIC_TYPEC_LEGACY_CABLE_IRQ
+                          IRQ_TYPE_EDGE_BOTH>,
+                         <0x2 0x15 PMIC_TYPEC_TRY_SNK_SRC_IRQ
+                          IRQ_TYPE_EDGE_RISING>;
+            interrupt-names = "pmic-typec-or-rid-detect-change",
+                              "pmic-typec-vpd-detect",
+                              "pmic-typec-cc-state-change",
+                              "pmic-typec-vconn-oc",
+                              "pmic-typec-vbus-change",
+                              "pmic-typec-attach-detach",
+                              "pmic-typec-legacy-cable-detect",
+                              "pmic-typec-try-snk-src-detect";
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+                    pmic_typec: endpoint {
+                        remote-endpoint = <&pmic_tcpm_typec>;
+                    };
+                };
+            };
+        };
+    };
+...
-- 
2.33.0


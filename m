Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C7B0F6BF9D5
	for <lists+devicetree@lfdr.de>; Sat, 18 Mar 2023 13:18:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229823AbjCRMSv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 18 Mar 2023 08:18:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229884AbjCRMSq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 18 Mar 2023 08:18:46 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CF863C7AF
        for <devicetree@vger.kernel.org>; Sat, 18 Mar 2023 05:18:41 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id g18so4808293wmk.0
        for <devicetree@vger.kernel.org>; Sat, 18 Mar 2023 05:18:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679141919;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0h1UMM0j9zCioWczt99LUEVvu222yMb94T9JPkSX//E=;
        b=BjLQSqoA36NQ6+eSX+TK61KD1DqoNQV/ybm8A+Woexs6P/hCFxkUjiV/hsaCTXghDe
         WWjHMvh/s/GqGdd3iU2M1BiKAL4dT46XgQb1RLg3ANEYcqZ17C6ZAYG700nqjI/3Tn11
         uDbsrJ4gjklv0ZEl7sQOAEsAhqYtv5vJs3Uy1yltHn9EFsLiL+xpOOdnwWELm+ayEmoU
         TatpOPiJJA6RI0AEYxUVdFMTZm0v+zLEu4LPP+aBNNzTWPEN8kg+dlMSy9B/Ip10WxJQ
         tSZNIHo2b+uW46O5f3cc7IswXRqbPXg/mfALlnkwYTyy3oEsX5UBxuqxDmrI+ayT1aPp
         QhhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679141919;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0h1UMM0j9zCioWczt99LUEVvu222yMb94T9JPkSX//E=;
        b=wvuji5fF4lmZXb/B0zvU/743WujPWXOk24gKPLHQOANPTZNyo80VZvg43Q5POTzDbQ
         xZ4UaDZ8hZhX1vcblICi/+jdS5QshsOLMRJR2OVBcy416meUJkZIJMxsU7Lp4bswq7I4
         fuILZVZc4Yj4MVSWuDhoGRElS7jFn4bhjSyyiQgyD9yUCUItQgtS4Akm4D4o3iChE5zC
         GyoQfTthO9trrW8b7Ct4KIR/o2L/os39HJ4E8AHnNl8sQCJWN9AC/hUR2YbtD4KNro2M
         3HftdlGnXBVc7qhzA/zQOWN/tZNPtldpfVBo8DbeKatIJJ8JGGro9tN71ZS5z+bqxiFz
         YV0A==
X-Gm-Message-State: AO0yUKUarszztHQeTzXwAc2sXwMTt0e5KfRUvdHbTCWd/tog4YadBxh7
        S1+uKsuEPlOPxSo8FKstHNAYNg==
X-Google-Smtp-Source: AK7set9sppaNNTfDHW0fvCuUhKVBr/VVnxsKfzgYODoyL0gV+jO0owOhuEP8OB2vMqpyMgGKe+CQWg==
X-Received: by 2002:a05:600c:a41:b0:3eb:9822:f0 with SMTP id c1-20020a05600c0a4100b003eb982200f0mr28813847wmq.30.1679141919445;
        Sat, 18 Mar 2023 05:18:39 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id az40-20020a05600c602800b003e2096da239sm10814997wmb.7.2023.03.18.05.18.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Mar 2023 05:18:39 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     linux@roeck-us.net, heikki.krogerus@linux.intel.com,
        gregkh@linuxfoundation.org, andersson@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-usb@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     wcheng@codeaurora.org, caleb.connolly@linaro.org,
        bryan.odonoghue@linaro.org, konrad.dybcio@linaro.org,
        subbaram@quicinc.com, jackp@quicinc.com, robertom@qti.qualcomm.com
Subject: [PATCH v4 06/18] dt-bindings: usb: Add Qualcomm PMIC Type-C controller YAML schema
Date:   Sat, 18 Mar 2023 12:18:16 +0000
Message-Id: <20230318121828.739424-7-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230318121828.739424-1-bryan.odonoghue@linaro.org>
References: <20230318121828.739424-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a YAML binding for the Type-C silicon interface inside Qualcomm's
pm8150b hardware block.

The Type-C driver operates with a pdphy driver inside of a high level
single TCPM device.

Based on original work by Wesley.

Signed-off-by: Wesley Cheng <wcheng@codeaurora.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../bindings/usb/qcom,pmic-typec.yaml         | 88 +++++++++++++++++++
 1 file changed, 88 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/qcom,pmic-typec.yaml

diff --git a/Documentation/devicetree/bindings/usb/qcom,pmic-typec.yaml b/Documentation/devicetree/bindings/usb/qcom,pmic-typec.yaml
new file mode 100644
index 0000000000000..d87bbab88d8be
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/qcom,pmic-typec.yaml
@@ -0,0 +1,88 @@
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
+      - qcom,pm8150b-typec
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
+      - const: or-rid-detect-change
+      - const: vpd-detect
+      - const: cc-state-change
+      - const: vconn-oc
+      - const: vbus-change
+      - const: attach-detach
+      - const: legacy-cable-detect
+      - const: try-snk-src-detect
+
+  vdd-vbus-supply:
+    description: VBUS power supply.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-names
+  - vdd-vbus-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/usb/typec/qcom,pmic-typec.h>
+    pm8150b {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        pm8150b_typec: typec@1500 {
+            compatible = "qcom,pm8150b-typec";
+            reg = <0x1500>;
+            interrupts = <0x2 0x15 PMIC_TYPEC_OR_RID_IRQ IRQ_TYPE_EDGE_RISING>,
+                         <0x2 0x15 PMIC_TYPEC_VPD_IRQ IRQ_TYPE_EDGE_BOTH>,
+                         <0x2 0x15 PMIC_TYPEC_CC_STATE_IRQ IRQ_TYPE_EDGE_RISING>,
+                         <0x2 0x15 PMIC_TYPEC_VCONN_OC_IRQ IRQ_TYPE_EDGE_BOTH>,
+                         <0x2 0x15 PMIC_TYPEC_VBUS_IRQ IRQ_TYPE_EDGE_RISING>,
+                         <0x2 0x15 PMIC_TYPEC_ATTACH_DETACH_IRQ IRQ_TYPE_EDGE_RISING>,
+                         <0x2 0x15 PMIC_TYPEC_LEGACY_CABLE_IRQ IRQ_TYPE_EDGE_BOTH>,
+                         <0x2 0x15 PMIC_TYPEC_TRY_SNK_SRC_IRQ IRQ_TYPE_EDGE_RISING>;
+            interrupt-names = "or-rid-detect-change",
+                              "vpd-detect",
+                              "cc-state-change",
+                              "vconn-oc",
+                              "vbus-change",
+                              "attach-detach",
+                              "legacy-cable-detect",
+                              "try-snk-src-detect";
+            vdd-vbus-supply = <&pm8150b_vbus>;
+        };
+    };
+...
-- 
2.39.2


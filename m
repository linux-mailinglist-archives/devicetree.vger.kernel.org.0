Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 061074F002E
	for <lists+devicetree@lfdr.de>; Sat,  2 Apr 2022 11:39:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239825AbiDBJl0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 Apr 2022 05:41:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239863AbiDBJlY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Apr 2022 05:41:24 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11D1414344B
        for <devicetree@vger.kernel.org>; Sat,  2 Apr 2022 02:39:32 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id k124-20020a1ca182000000b0038c9cf6e2a6so2802687wme.0
        for <devicetree@vger.kernel.org>; Sat, 02 Apr 2022 02:39:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KREN+AabFyAtaAW7Vfs0QIZLiq7RaWCj552NjbUfAnc=;
        b=T+5eT04oZR8EPIk6JOx/jGHj/mDX5yyHaTLBfakEcGWxgF7ewG0+ehkhTF6I6FAzic
         kL/nMbByfd/xuXFFOQCaTUTf0y/xAxo5vw/maunV/Wk+9WEF+AgINs/FEIMEZEfkhual
         qDRGGqoGxJFUXGWJrh2RwZ7NmvnRAM+jPS8/5zR3PFufI5eUFDPwshswwdP7q3/+jT/4
         Q2vOL2O6lg7MpvOFy2OM9r4zmKzrSSA9oOdLDbbmSDSiy2+v4q9epVTd6DFaxYN6F7GW
         UUM8fSGWuAMxN1fCComany4aimAIYlwQG6JHQjoPS7qdvtP9Jnms8u4t2ua3z460Olhe
         gY2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KREN+AabFyAtaAW7Vfs0QIZLiq7RaWCj552NjbUfAnc=;
        b=GD0ky2Gmud4yHN0cUN8dPNPMFRpC9n0AsipZSQPXrfbg4MAuUQJbfDAmPTI4G6vtiY
         41HQzJkFzn4qV1uS60mFdOywE9aXKDCr3AKnd+CD6ZyOxRCWon61yyysgKYPQpDueLyb
         dfHztof65BI/fzY103ftK/mAhRdOSQuRqzZArWkpr1pTFGSY3EF5InrMMqg7Uty+tSvk
         czCfHpjNNP/2FhvqyHWafqjd0f/76VOGsv5dABG6duWzFGlCjmkpdXFAwbv50PhL633z
         FuSLyeKHrgsfdjoppl9bw3wCpKtRO31hYYuJ7GkBlakud3gqmtZyxcODLQHXrewiQf4m
         ltsA==
X-Gm-Message-State: AOAM530mzs0MetwPUvf3aoYzZK9J0aWQA3WRg1zHN1lHZNZHm0uLLrul
        G/jYVKx77Z7xuXw791NwOB9Emg==
X-Google-Smtp-Source: ABdhPJyTJOylDZ+3CAwbtCGDEx+/Fv47boVaquqNG6Oq+5Tbfn/AcmYdWx72lofYn3cVgqf26jXikw==
X-Received: by 2002:a7b:c844:0:b0:37b:b986:7726 with SMTP id c4-20020a7bc844000000b0037bb9867726mr12449343wml.160.1648892370480;
        Sat, 02 Apr 2022 02:39:30 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id y6-20020a05600015c600b00203fa70b4ebsm5265713wry.53.2022.04.02.02.39.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Apr 2022 02:39:30 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/3] dt-bindings: soc: qcom,wcnss: convert to dtschema
Date:   Sat,  2 Apr 2022 11:39:19 +0200
Message-Id: <20220402093919.50084-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220402093919.50084-1-krzysztof.kozlowski@linaro.org>
References: <20220402093919.50084-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the Qualcomm WCNSS bindings to DT Schema.

Changes against original bindings: fix qcom,smd-channels and
qcom,smem-states names (how they are used in DTS and driver), enforce
child node naming of bluetooth and wifi.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/soc/qcom/qcom,wcnss.txt          | 131 -----------------
 .../bindings/soc/qcom/qcom,wcnss.yaml         | 139 ++++++++++++++++++
 2 files changed, 139 insertions(+), 131 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/soc/qcom/qcom,wcnss.txt
 create mode 100644 Documentation/devicetree/bindings/soc/qcom/qcom,wcnss.yaml

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,wcnss.txt b/Documentation/devicetree/bindings/soc/qcom/qcom,wcnss.txt
deleted file mode 100644
index 1382b64e1381..000000000000
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,wcnss.txt
+++ /dev/null
@@ -1,131 +0,0 @@
-Qualcomm WCNSS Binding
-
-This binding describes the Qualcomm WCNSS hardware. It consists of control
-block and a BT, WiFi and FM radio block, all using SMD as command channels.
-
-- compatible:
-	Usage: required
-	Value type: <string>
-	Definition: must be: "qcom,wcnss",
-
-- qcom,smd-channel:
-	Usage: required
-	Value type: <string>
-	Definition: standard SMD property specifying the SMD channel used for
-		    communication with the WiFi firmware.
-		    Should be "WCNSS_CTRL".
-
-- qcom,mmio:
-	Usage: required
-	Value type: <prop-encoded-array>
-	Definition: reference to a node specifying the wcnss "ccu" and "dxe"
-		    register blocks. The node must be compatible with one of
-		    the following:
-		    "qcom,riva",
-		    "qcom,pronto"
-
-- firmware-name:
-	Usage: optional
-	Value type: <string>
-	Definition: specifies the relative firmware image path for the WLAN NV
-		    blob. Defaults to "wlan/prima/WCNSS_qcom_wlan_nv.bin" if
-		    not specified.
-
-= SUBNODES
-The subnodes of the wcnss node are optional and describe the individual blocks in
-the WCNSS.
-
-== Bluetooth
-The following properties are defined to the bluetooth node:
-
-- compatible:
-	Usage: required
-	Value type: <string>
-	Definition: must be:
-		    "qcom,wcnss-bt"
-
-- local-bd-address:
-	Usage: optional
-	Value type: <u8 array>
-	Definition: see Documentation/devicetree/bindings/net/bluetooth.txt
-
-== WiFi
-The following properties are defined to the WiFi node:
-
-- compatible:
-	Usage: required
-	Value type: <string>
-	Definition: must be one of:
-		    "qcom,wcnss-wlan",
-
-- interrupts:
-	Usage: required
-	Value type: <prop-encoded-array>
-	Definition: should specify the "rx" and "tx" interrupts
-
-- interrupt-names:
-	Usage: required
-	Value type: <stringlist>
-	Definition: must contain "rx" and "tx"
-
-- qcom,smem-state:
-	Usage: required
-	Value type: <prop-encoded-array>
-	Definition: should reference the tx-enable and tx-rings-empty SMEM states
-
-- qcom,smem-state-names:
-	Usage: required
-	Value type: <stringlist>
-	Definition: must contain "tx-enable" and "tx-rings-empty"
-
-= EXAMPLE
-The following example represents a SMD node, with one edge representing the
-"pronto" subsystem, with the wcnss device and its wcn3680 BT and WiFi blocks
-described; as found on the 8974 platform.
-
-smd {
-	compatible = "qcom,smd";
-
-	pronto-edge {
-		interrupts = <0 142 1>;
-
-		qcom,ipc = <&apcs 8 17>;
-		qcom,smd-edge = <6>;
-
-		wcnss {
-			compatible = "qcom,wcnss";
-			qcom,smd-channels = "WCNSS_CTRL";
-
-			#address-cells = <1>;
-			#size-cells = <1>;
-
-			qcom,mmio = <&pronto>;
-
-			bt {
-				compatible = "qcom,wcnss-bt";
-
-				/* BD address 00:11:22:33:44:55 */
-				local-bd-address = [ 55 44 33 22 11 00 ];
-			};
-
-			wlan {
-				compatible = "qcom,wcnss-wlan";
-
-				interrupts = <0 145 0>, <0 146 0>;
-				interrupt-names = "tx", "rx";
-
-				qcom,smem-state = <&apps_smsm 10>, <&apps_smsm 9>;
-				qcom,smem-state-names = "tx-enable", "tx-rings-empty";
-			};
-		};
-	};
-};
-
-soc {
-	pronto: pronto {
-		compatible = "qcom,pronto";
-
-		reg = <0xfb204000 0x2000>, <0xfb202000 0x1000>, <0xfb21b000 0x3000>;
-		reg-names = "ccu", "dxe", "pmu";
-	};
-};
diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,wcnss.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,wcnss.yaml
new file mode 100644
index 000000000000..1e37ec871185
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,wcnss.yaml
@@ -0,0 +1,139 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/qcom/qcom,wcnss.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm WCNSS
+
+maintainers:
+  - Andy Gross <agross@kernel.org>
+  - Bjorn Andersson <bjorn.andersson@linaro.org>
+
+description:
+  The Qualcomm WCNSS hardware consists of control block and a BT, WiFi and FM
+  radio block, all using SMD as command channels.
+
+properties:
+  compatible:
+    const: qcom,wcnss
+
+  firmware-name:
+    $ref: /schemas/types.yaml#/definitions/string
+    default: "wlan/prima/WCNSS_qcom_wlan_nv.bin"
+    description:
+      Relative firmware image path for the WLAN NV blob.
+
+  qcom,mmio:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: |
+      Reference to a node specifying the wcnss "ccu" and "dxe" register blocks.
+      The node must be compatible with one of the following::
+           - qcom,riva"
+           - qcom,pronto"
+
+  qcom,smd-channels:
+    $ref: /schemas/types.yaml#/definitions/string
+    const: WCNSS_CTRL
+    description:
+      Standard SMD property specifying the SMD channel used for communication
+      with the WiFi firmware.
+
+  bluetooth:
+    type: object
+    additionalProperties: false
+    properties:
+      compatible:
+        const: qcom,wcnss-bt
+
+      local-bd-address:
+        $ref: /schemas/types.yaml#/definitions/uint8-array
+        items:
+          minItems: 6
+          maxItems: 6
+        description:
+          See Documentation/devicetree/bindings/net/bluetooth.txt
+
+    required:
+      - compatible
+
+  wifi:
+    additionalProperties: false
+    type: object
+    properties:
+      compatible:
+        const: qcom,wcnss-wlan
+
+      interrupts:
+        maxItems: 2
+
+      interrupt-names:
+        items:
+          - const: tx
+          - const: rx
+
+      qcom,smem-states:
+        $ref: /schemas/types.yaml#/definitions/phandle-array
+        maxItems: 2
+        description:
+          Should reference the tx-enable and tx-rings-empty SMEM states.
+
+      qcom,smem-state-names:
+        $ref: /schemas/types.yaml#/definitions/string-array
+        items:
+          - const: tx-enable
+          - const: tx-rings-empty
+        description:
+          Names of SMEM states.
+
+    required:
+      - compatible
+      - interrupts
+      - interrupt-names
+      - qcom,smem-states
+      - qcom,smem-state-names
+
+required:
+  - compatible
+  - qcom,mmio
+  - qcom,smd-channels
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    smd-edge {
+        interrupts = <GIC_SPI 142 IRQ_TYPE_EDGE_RISING>;
+
+        qcom,ipc = <&apcs 8 17>;
+        qcom,smd-edge = <6>;
+        qcom,remote-pid = <4>;
+
+        label = "pronto";
+
+        wcnss {
+            compatible = "qcom,wcnss";
+            qcom,smd-channels = "WCNSS_CTRL";
+
+            qcom,mmio = <&pronto>;
+
+            bluetooth {
+                compatible = "qcom,wcnss-bt";
+                /* BD address 00:11:22:33:44:55 */
+                local-bd-address = [ 55 44 33 22 11 00 ];
+            };
+
+            wifi {
+                compatible = "qcom,wcnss-wlan";
+
+                interrupts = <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>,
+                             <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>;
+                interrupt-names = "tx", "rx";
+
+                qcom,smem-states = <&apps_smsm 10>, <&apps_smsm 9>;
+                qcom,smem-state-names = "tx-enable", "tx-rings-empty";
+            };
+        };
+    };
-- 
2.32.0


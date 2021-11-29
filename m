Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E11C461311
	for <lists+devicetree@lfdr.de>; Mon, 29 Nov 2021 12:04:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1376583AbhK2LH6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Nov 2021 06:07:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230216AbhK2LF5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Nov 2021 06:05:57 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0ADDFC08E6DF
        for <devicetree@vger.kernel.org>; Mon, 29 Nov 2021 02:19:45 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id d24so35635252wra.0
        for <devicetree@vger.kernel.org>; Mon, 29 Nov 2021 02:19:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bwSCk0wXrHcMz/Ne5LcNLW8DULwM2fwTr0/wYCbZbNw=;
        b=TfPZa9b2Gfmja+xE08xKdHPUCAVBrBPkXc15EwzdPUPGX5QfmkK5zsfFVOn0lNwg2F
         O8e75gE2wIHLt9IWg8od0YWQ69Sg3XiNVUNJEj9JWLyAK9CWJZY+/GGRgHeDZH1LbP3G
         wUlCi0brMqcF0uvfQ+IgwEyHnEF9eqsmTR6W7/PTwMIf8gLwAf21HmQxBTI06ClpNV52
         5OiE94DK5RnbAxtvRTF3acy9RSQakMF4FD6Jr0tEMF8SkAWGAiLXE9x4ujeqNeOVbQly
         nNBqB5aNzOtWCAnRjnFEvtLueJcJZX+GLI6aJqoF1R8ZhiqkFSNCGnp/+oQodUD686zH
         HuoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bwSCk0wXrHcMz/Ne5LcNLW8DULwM2fwTr0/wYCbZbNw=;
        b=1jHXfXurJaStvRKy7RfSzYWJ08Pz9GV8R8alubc5pNJks5Xriwq5So0xjcFv6XsA6y
         K16QJwZ4QQaXSAVKxkEfC6JcA94p2Ka0z+0xXkoxDEf5ZS2ZP0eOAmFV3CcOPInHRy7h
         L5tmsrTT1Ar2/7nwI+9Hdig1vCdazXskqF61O6cr8Sy0OoJCjQmUN289sl4gIPWdhuw7
         WiUBUSkjiccuHNdixTb9zr2C7E+QwVIDMxTLWk/mcVvTNruzLsCfsVN3pXj9KCsWMDzL
         y5lQ1P7PNPw2FfEMTWx/BPiTpCRh0J1Mg2FZi4W+I2I8b258qjt9RDZppxmxEzhvw/Vf
         SINA==
X-Gm-Message-State: AOAM5331i3yLQtQ0cvlwZVDjkyJE8ovH0qPxINsTcRRnSPg6POQDwhY2
        Cz6XHTBQEYNVBaXycLYwf6HQLQ==
X-Google-Smtp-Source: ABdhPJypnvKfy+kf/FJbr+uN3rHCCx0U4LXPrPEBo44DZLZosm9/D7/09nOVKfxhmKlD9a+7SN9h2g==
X-Received: by 2002:a05:6000:1868:: with SMTP id d8mr33585975wri.285.1638181183558;
        Mon, 29 Nov 2021 02:19:43 -0800 (PST)
Received: from srini-hackbox.lan (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.gmail.com with ESMTPSA id j11sm13224841wrt.3.2021.11.29.02.19.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Nov 2021 02:19:42 -0800 (PST)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     robh+dt@kernel.org, gregkh@linuxfoundation.org
Cc:     devicetree@vger.kernel.org, ekangupt@qti.qualcomm.com,
        jeyr@codeaurora.org, bkumar@qti.qualcomm.com,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v2] dt-bindings: misc: fastrpc convert bindings to yaml
Date:   Mon, 29 Nov 2021 10:19:30 +0000
Message-Id: <20211129101931.28154-1-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert Qualcomm FastRPC bindings to yaml format, so that we could validate
dt-entries correctly and any future additions can go into yaml format.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 .../devicetree/bindings/misc/qcom,fastrpc.txt | 78 ----------------
 .../bindings/misc/qcom,fastrpc.yaml           | 92 +++++++++++++++++++
 2 files changed, 92 insertions(+), 78 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/misc/qcom,fastrpc.txt
 create mode 100644 Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml

diff --git a/Documentation/devicetree/bindings/misc/qcom,fastrpc.txt b/Documentation/devicetree/bindings/misc/qcom,fastrpc.txt
deleted file mode 100644
index 2a1827ab50d2..000000000000
--- a/Documentation/devicetree/bindings/misc/qcom,fastrpc.txt
+++ /dev/null
@@ -1,78 +0,0 @@
-Qualcomm Technologies, Inc. FastRPC Driver
-
-The FastRPC implements an IPC (Inter-Processor Communication)
-mechanism that allows for clients to transparently make remote method
-invocations across DSP and APPS boundaries. This enables developers
-to offload tasks to the DSP and free up the application processor for
-other tasks.
-
-- compatible:
-	Usage: required
-	Value type: <stringlist>
-	Definition: must be "qcom,fastrpc"
-
-- label
-	Usage: required
-	Value type: <string>
-	Definition: should specify the dsp domain name this fastrpc
-	corresponds to. must be one of this: "adsp", "mdsp", "sdsp", "cdsp"
-
-- #address-cells
-	Usage: required
-	Value type: <u32>
-	Definition: Must be 1
-
-- #size-cells
-	Usage: required
-	Value type: <u32>
-	Definition: Must be 0
-
-= COMPUTE BANKS
-Each subnode of the Fastrpc represents compute context banks available
-on the dsp.
-- All Compute context banks MUST contain the following properties:
-
-- compatible:
-	Usage: required
-	Value type: <stringlist>
-	Definition: must be "qcom,fastrpc-compute-cb"
-
-- reg
-	Usage: required
-	Value type: <u32>
-	Definition: Context Bank ID.
-
-- qcom,nsessions:
-	Usage: Optional
-	Value type: <u32>
-	Defination: A value indicating how many sessions can share this
-		    context bank. Defaults to 1 when this property
-		    is not specified.
-
-Example:
-
-adsp-pil {
-	compatible = "qcom,msm8996-adsp-pil";
-	...
-	smd-edge {
-		label = "lpass";
-		fastrpc {
-			compatible = "qcom,fastrpc";
-			qcom,smd-channels = "fastrpcsmd-apps-dsp";
-			label = "adsp";
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			cb@1 {
-				compatible = "qcom,fastrpc-compute-cb";
-				reg = <1>;
-			};
-
-			cb@2 {
-				compatible = "qcom,fastrpc-compute-cb";
-				reg = <2>;
-			};
-			...
-		};
-	};
-};
diff --git a/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml b/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
new file mode 100644
index 000000000000..9dc8d584ed63
--- /dev/null
+++ b/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
@@ -0,0 +1,92 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/misc/qcom,fastrpc.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Qualcomm Technologies, Inc. FastRPC Driver
+
+maintainers:
+  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
+
+description: |
+  This binding describes Qualcomm FastRPC an IPC (Inter-Processor Communication)
+  mechanism that allows for clients to transparently make remote method
+  invocations across DSP and APPS boundaries. This enables developers
+  to offload tasks to the DSP and free up the application processor for
+  other tasks.
+
+properties:
+  compatible:
+    const: qcom,fastrpc
+
+  label:
+    enum:
+      - adsp
+      - mdsp
+      - sdsp
+      - cdsp
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+patternProperties:
+  "^cb@[0-9a-f]$":
+    type: object
+    description: |
+      Compute context bank
+
+    properties:
+      compatible:
+        const: qcom,fastrpc-compute-cb
+
+      reg:
+        maxItems: 1
+        description: Context Bank ID
+
+      qcom,nsessions:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        description: How many sessions can share this context bank.
+                     Defaults to 1 when this property is not specified.
+
+    required:
+      - compatible
+      - reg
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - label
+
+additionalProperties: false
+
+examples:
+  - |
+    adsp-pil {
+        compatible = "qqcom,msm8996-adsp-pil";
+
+        smd-edge {
+            label = "lpass";
+
+            fastrpc {
+                compatible = "qcom,fastrpc";
+                label = "adsp";
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                cb@1 {
+                    compatible = "qcom,fastrpc-compute-cb";
+                    reg = <1>;
+                };
+
+                cb@2 {
+                    compatible = "qcom,fastrpc-compute-cb";
+                    reg = <2>;
+                };
+            };
+        };
+    };
-- 
2.21.0


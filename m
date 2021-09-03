Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8ED023FFEFA
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 13:22:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349239AbhICLWj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Sep 2021 07:22:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349203AbhICLWi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Sep 2021 07:22:38 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 683E0C061575
        for <devicetree@vger.kernel.org>; Fri,  3 Sep 2021 04:21:38 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id m9so7755487wrb.1
        for <devicetree@vger.kernel.org>; Fri, 03 Sep 2021 04:21:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=oIR90abl/sfH0/3DyNtRoQ8W4nkCYWxgXrfABfULtXI=;
        b=CVAXc/zX9vEav2VQvgoDC8dPYDc3W748VQ0PehfC9sjMqCVhP0F4LASBJnqWL511Tb
         CgEmYFJlgiU3X+sz9+iZGixzp0M2zKOjzvv7mZD3962fZ8bb7OGecY8h24p8/cF5JxD5
         NKdLkHQflrXBCttI5eM134nItRcs3G3Ylt/4VNnFYpLwEbLqtSL2F+brYKxyu1M4uIYa
         kQkwkPebrICT64XpEAAOFvlxdCYJpcCLtjl2JQaef+tytBnyDaGo8clDtag7gkstALAK
         jbRneawn5xyIUD7dMax2bwG5PJIA0UdeO0wHGEGuCxj35on66f7lNP6fBhYxUU7fwLEz
         i4Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=oIR90abl/sfH0/3DyNtRoQ8W4nkCYWxgXrfABfULtXI=;
        b=aP4sdsIQgNT1yrofZFG7WVjCe+qPmoZOGfRI/fjtJ+gv+LwsN+AnyIFwgFiu3g4oL4
         85/ABZzFc0eFrFzE4l1L5lEKa2oelWC3tG/biUB2yYIjtFMeWiiZphyaGOiZW9TMfljG
         NlbwWngt90rB7Cq+AQZ4LZ6lY7SpsK9n2PfltgrtnA/RgjPBVFpd/kSYjiG3QqFt249O
         7Li4uwIjspmr6yuipwCx9OorWXOrcKFcFcU5lK5zMm2uW/UD/zPj76CXgiXSxmpuZRMM
         U/fvX4OW1Ut4mJM8rDD0RP+/YvJPZ+3vtI4JeqWGevhZ1qqNqXDEnUxEHsdyOQZxnSoP
         3SGA==
X-Gm-Message-State: AOAM533BZcxGi7j2HylGcCgvX3YYzZAUYFz6uGMb9CpoL0tVdwsTWWCd
        b3nfDOUi2GXyD37bI/OGYtwOCQ==
X-Google-Smtp-Source: ABdhPJytDaDGeJG/cmR9NCL+XRcdKTrmZNjIxwCqvaSPY/9YonjkIby0wBE5LE4gqijdQ1U4W5qxpQ==
X-Received: by 2002:a5d:67c3:: with SMTP id n3mr3454870wrw.201.1630668096971;
        Fri, 03 Sep 2021 04:21:36 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id f20sm3881877wmb.32.2021.09.03.04.21.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Sep 2021 04:21:36 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v5 04/21] soc: dt-bindings: qcom: add gpr bindings
Date:   Fri,  3 Sep 2021 12:20:15 +0100
Message-Id: <20210903112032.25834-5-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210903112032.25834-1-srinivas.kandagatla@linaro.org>
References: <20210903112032.25834-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Qualcomm Generic Packet router aka GPR is the IPC mechanism found
in AudioReach next generation signal processing framework to perform
command and response messages between various processors.

GPR has concepts of static and dynamic port, all static services like
APM (Audio Processing Manager), PRM (Proxy resource manager) have
fixed port numbers where as dynamic services like graphs have dynamic
port numbers which are allocated at runtime. All GPR packet messages
will have source and destination domain and port along with opcode
and payload.

This support is added using existing APR driver to reuse most of
the code.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 .../bindings/soc/qcom/qcom,apr.yaml           | 41 +++++++++++++++----
 include/dt-bindings/soc/qcom,gpr.h            | 18 ++++++++
 2 files changed, 52 insertions(+), 7 deletions(-)
 create mode 100644 include/dt-bindings/soc/qcom,gpr.h

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
index 922c8567c134..14d75f6a556e 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
@@ -4,20 +4,21 @@
 $id: "http://devicetree.org/schemas/soc/qcom/qcom,apr.yaml#"
 $schema: "http://devicetree.org/meta-schemas/core.yaml#"
 
-title: Qualcomm APR (Asynchronous Packet Router) binding
+title: Qualcomm APR/GPR (Asynchronous/Generic Packet Router) binding
 
 maintainers:
   - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
 
 description: |
-  This binding describes the Qualcomm APR, APR is a IPC protocol for
-  communication between Application processor and QDSP. APR is mainly
+  This binding describes the Qualcomm APR/GPR, APR/GPR is a IPC protocol for
+  communication between Application processor and QDSP. APR/GPR is mainly
   used for audio/voice services on the QDSP.
 
 properties:
   compatible:
     enum:
       - qcom,apr-v2
+      - qcom,gpr
 
   qcom,apr-domain:
     $ref: /schemas/types.yaml#/definitions/uint32
@@ -45,6 +46,10 @@ properties:
         5 = Application processor Domain
         6 = Modem2 Domain
         7 = Application Processor2 Domain
+      Selects the processor domain for gpr
+        1 = Modem Domain
+        2 = Audio DSP Domain
+        3 = Application Processor Domain
 
   '#address-cells':
     const: 1
@@ -52,12 +57,12 @@ properties:
   '#size-cells':
     const: 0
 
-#APR Services
+#APR/GPR Services
 patternProperties:
-  "^service@[3-9a-d]$":
+  "^service@[1-9a-d]$":
     type: object
     description:
-      APR node's client devices use subnodes for desired static port services.
+      APR/GPR node's client devices use subnodes for desired static port services.
 
     properties:
       compatible:
@@ -66,9 +71,11 @@ patternProperties:
           - qcom,q6asm
           - qcom,q6afe
           - qcom,q6adm
+          - qcom,q6apm
+          - qcom,q6prm
 
       reg:
-        enum: [3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
+        enum: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
         description:
           APR Service ID
             3 = DSP Core Service
@@ -82,6 +89,11 @@ patternProperties:
             11 = Core voice processor.
             12 = Ultrasound stream manager.
             13 = Listen stream manager.
+          GPR Service ID
+            1 = Audio Process Manager Service
+            2 = Proxy Resource Manager Service.
+            3 = AMDB Service.
+            4 = Voice processing manager.
 
       qcom,protection-domain:
         $ref: /schemas/types.yaml#/definitions/string-array
@@ -140,3 +152,18 @@ examples:
           qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
         };
     };
+
+  - |
+    #include <dt-bindings/soc/qcom,gpr.h>
+    gpr {
+        compatible = "qcom,gpr";
+        qcom,domain = <GPR_DOMAIN_ID_ADSP>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        service@1 {
+          compatible = "qcom,q6apm";
+          reg = <GPR_APM_MODULE_IID>;
+          qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
+        };
+    };
diff --git a/include/dt-bindings/soc/qcom,gpr.h b/include/dt-bindings/soc/qcom,gpr.h
new file mode 100644
index 000000000000..1c68906e079c
--- /dev/null
+++ b/include/dt-bindings/soc/qcom,gpr.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __DT_BINDINGS_QCOM_GPR_H
+#define __DT_BINDINGS_QCOM_GPR_H
+
+/* DOMAINS */
+
+#define GPR_DOMAIN_ID_MODEM	1
+#define GPR_DOMAIN_ID_ADSP	2
+#define GPR_DOMAIN_ID_APPS	3
+
+/* Static Services */
+
+#define GPR_APM_MODULE_IID		1
+#define GPR_PRM_MODULE_IID		2
+#define GPR_AMDB_MODULE_IID		3
+#define GPR_VCPM_MODULE_IID		4
+
+#endif /* __DT_BINDINGS_QCOM_GPR_H */
-- 
2.21.0


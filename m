Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A1B9E3DEE4A
	for <lists+devicetree@lfdr.de>; Tue,  3 Aug 2021 14:54:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235944AbhHCMyl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Aug 2021 08:54:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235635AbhHCMyk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Aug 2021 08:54:40 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 008C3C061757
        for <devicetree@vger.kernel.org>; Tue,  3 Aug 2021 05:54:27 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id p5so25224938wro.7
        for <devicetree@vger.kernel.org>; Tue, 03 Aug 2021 05:54:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=GJlsWNgwKODDcwAuvO6G0kTnrLu0l5LAblYrz3XnMPQ=;
        b=GStMRf/ogaE5dL12vL2iDeYxz3gVXJOw0eaeMAflrNzwUdjFQMaYgd7igdUvdIIbDD
         Tw1cCYuPeHcdqeAUQXLWa+gzG7eFwZnMulEWkig+RcEZLzRNEiOvvl634k8a+0SZrFfp
         4SWZxd1e7gKx8X1A6E+i1fCpijVaWfpeR7ibXUuREtLPysrOIa5IT6I3FY0+Mswcpxhk
         4KyyKBS30DQyTuN6rGE2fBtxEMhH4AmICL9VBqxNqiVQeMslZGyq7NcetQlM20vQxLbW
         pIjDYrhOm7WuDZRGPwrapiZ9zb8UepSgQW1VzIiLjF5ScX+pB8ZkBjy98nWt/s1OC4Qh
         em7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=GJlsWNgwKODDcwAuvO6G0kTnrLu0l5LAblYrz3XnMPQ=;
        b=Zm2F7MMRIUzF93GfSLj7x+F5S6TA6xWaGFK/kEc1yvjx1Xm9vFX5A6T77NjkVkMdVi
         o2IwxuvPz7SoDl0bccMzl1W4R7LVAP9BWIqeAhr9fpog33qd/+x3drd+IFVM1l4p7y6Q
         1Nzstx+DE4XTR+GAXPa0TbP6IMpiB9SCSB62HRsf5mOojmTbUXxXCripfLqXAFzCqR3v
         eMdhmNgX/IjgGCGhFcop6ZXSHqsA0x2tYPRSxjaB5BlG8LPhXrEtfhebCeZb4HUAB80T
         LX4FePHPZZfJ/CfdPFytq82wm/nM/6nX2RPR+CU2PM1XTOkLlOQGcKtgtQPZrQGbAR3O
         bqTw==
X-Gm-Message-State: AOAM533FK3uDHTVXaWF/EdsLNOzntP3agVyVFMz5FSc5UY4KbMT74ADx
        RP7SLoAqVhTONCQaqiCNGtyg4Q==
X-Google-Smtp-Source: ABdhPJwtKXA6qXVq2nMyL5vUeWv46+z8dMRWor6MqGbKG5NMzsy9KiBW6PwcGX6eGsxBpXiIVBF1ow==
X-Received: by 2002:a5d:4f8b:: with SMTP id d11mr22783713wru.351.1627995266610;
        Tue, 03 Aug 2021 05:54:26 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id h14sm14695574wrp.55.2021.08.03.05.54.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Aug 2021 05:54:26 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v3 03/20] soc: dt-bindings: qcom: add gpr bindings
Date:   Tue,  3 Aug 2021 13:53:54 +0100
Message-Id: <20210803125411.28066-4-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210803125411.28066-1-srinivas.kandagatla@linaro.org>
References: <20210803125411.28066-1-srinivas.kandagatla@linaro.org>
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
 .../bindings/soc/qcom/qcom,apr.yaml           | 92 ++++++++++++++++++-
 include/dt-bindings/soc/qcom,gpr.h            | 18 ++++
 2 files changed, 105 insertions(+), 5 deletions(-)
 create mode 100644 include/dt-bindings/soc/qcom,gpr.h

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
index 12650f7084f4..59d8b4dce8b5 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
@@ -4,14 +4,14 @@
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
@@ -19,6 +19,7 @@ properties:
     enum:
       - qcom,apr
       - qcom,apr-v2
+      - qcom,gpr
 
   qcom,apr-domain:
     $ref: /schemas/types.yaml#/definitions/uint32
@@ -33,13 +34,22 @@ properties:
         6 = Modem2 Domain
         7 = Application Processor2 Domain
 
+  qcom,gpr-domain:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [1, 2, 3]
+    description:
+      Selects the processor domain for gpr
+        1 = Modem Domain
+        2 = Audio DSP Domain
+        3 = Application Processor Domain
+
   '#address-cells':
     const: 1
 
   '#size-cells':
     const: 0
 
-#APR Services
+#APR/GPR Services
 patternProperties:
   "^apr-service@[0-9a-e]$":
     type: object
@@ -86,9 +96,66 @@ patternProperties:
 
     additionalProperties: false
 
+  "^gpr-service@[0-9a-e]$":
+    type: object
+    description:
+      GPR node's client devices use subnodes for desired static port services.
+
+    properties:
+      compatible:
+        enum:
+          - qcom,q6apm
+          - qcom,q6prm
+
+      reg:
+        enum: [1, 2, 3, 4]
+        description:
+          GPR Service ID
+            1 = Audio Process Manager Service
+            2 = Proxy Resource Manager Service.
+            3 = AMDB Service.
+            4 = Voice processing manager.
+
+      qcom,protection-domain:
+        $ref: /schemas/types.yaml#/definitions/string-array
+        description: protection domain service name and path for apr service
+          has dependency on.
+        items:
+          - const: avs/audio
+          - const: msm/adsp/audio_pd
+
+      '#address-cells':
+        const: 1
+
+      '#size-cells':
+        const: 0
+
+    additionalProperties: false
+
 required:
   - compatible
-  - qcom,apr-domain
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,apr-v2
+              - qcom,apr
+    then:
+      required:
+        - qcom,apr-domain
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,gpr
+    then:
+      required:
+        - qcom,gpr-domain
 
 additionalProperties: false
 
@@ -125,3 +192,18 @@ examples:
           qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
         };
     };
+
+  - |
+    #include <dt-bindings/soc/qcom,gpr.h>
+    gpr {
+        compatible = "qcom,gpr";
+        qcom,gpr-domain = <GPR_DOMAIN_ID_ADSP>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        gpr-service@1 {
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


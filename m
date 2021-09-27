Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AC38441957D
	for <lists+devicetree@lfdr.de>; Mon, 27 Sep 2021 15:56:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234646AbhI0N6H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 09:58:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49564 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234641AbhI0N6G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Sep 2021 09:58:06 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1273C061575
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 06:56:28 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id g19-20020a1c9d13000000b003075062d4daso87565wme.0
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 06:56:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9h1xMEiV0P0T+5NxtCB5k6xQoY2x3NNYvUmlcG7EV4s=;
        b=fs9Py8Vba258GUMG/a5i9mihEaYcyL/l3kGLAqfkXCEZyOIA4TrQsex3550mhMHqpa
         vZcj+jW65T6eJwqiCu8wl61NOaEnbhtF81tnggRsKPmeBuP4VCXJ9wkqKIr1qVJal9NA
         br9YOAYVxBrUXXNuaWrUS/lFPZmI1OrEu/xL/JSI9qiTGB4j6IzQcarq1M9X9hsICYzb
         oUNcOcrwGuh/oxpq7MaAx6gfACt3D2rIgehBDb3EkvaIClr9Kga/16Pf+EhoNggq82Jp
         X5s5HMnfhrgf9Gms00TQJxcHho1auoeLKOvFSBb4ozI6rpMlRtqvMj741Av47nmh7UzJ
         kDAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9h1xMEiV0P0T+5NxtCB5k6xQoY2x3NNYvUmlcG7EV4s=;
        b=RJe+NGo761eeK7DYofmTBYs1BsthjLTy8oJyaopuXBuYq/ahxqATybYff3os0A7qhx
         Z21psXxEPrw+2zHYg+tgpOy8I3K/2prPg3EaQ1w0fZHMRmTNQ7d+FyDL61FYdxdynnc1
         5FCJ1yYwT7wV6BLOhX1iV4FI1+syR9T9vveJZdwgWPG7arxHpNSb38TH2xrzLLeQwwjh
         xBuCA43AJ5VmmNpGwWJCJAlbFOKT9PHXolww/GcnZrDI1G+0gsFojv141FV3dv/fMMK8
         zTSaQn6HieLI9trhLDCQQAEq1A4VIImU2NchWJQzQpjfLL0C7eMaXxB3PCA+ojfYBs42
         uJDA==
X-Gm-Message-State: AOAM5315+Lsigj/YisYhsXGM3GhEmGpt9vleQ4OqqgyoKF3kPGJrfLkJ
        jOg6VpZvjWpYCWfY1X4Y50c+MQ==
X-Google-Smtp-Source: ABdhPJz0+Zx5EQE0hlqPGgVT9WvOsJ5HjvpBSeUC0Y7Z2qeo7PuSZfsiwyVa1g72fZsPCbgF/jf6rw==
X-Received: by 2002:a1c:4e19:: with SMTP id g25mr48355wmh.67.1632750987388;
        Mon, 27 Sep 2021 06:56:27 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id b7sm20485606wrm.9.2021.09.27.06.56.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Sep 2021 06:56:26 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v8 04/22] soc: dt-bindings: qcom: add gpr bindings
Date:   Mon, 27 Sep 2021 14:55:41 +0100
Message-Id: <20210927135559.738-5-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210927135559.738-1-srinivas.kandagatla@linaro.org>
References: <20210927135559.738-1-srinivas.kandagatla@linaro.org>
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
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/soc/qcom/qcom,apr.yaml           | 41 +++++++++++++++----
 include/dt-bindings/soc/qcom,gpr.h            | 19 +++++++++
 2 files changed, 53 insertions(+), 7 deletions(-)
 create mode 100644 include/dt-bindings/soc/qcom,gpr.h

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
index bfe04fca8aa3..028c5d105adb 100644
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
@@ -46,6 +47,10 @@ properties:
         5 = Application processor Domain
         6 = Modem2 Domain
         7 = Application Processor2 Domain
+      Selects the processor domain for gpr
+        1 = Modem Domain
+        2 = Audio DSP Domain
+        3 = Application Processor Domain
 
   '#address-cells':
     const: 1
@@ -53,12 +58,12 @@ properties:
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
@@ -67,9 +72,11 @@ patternProperties:
           - qcom,q6asm
           - qcom,q6afe
           - qcom,q6adm
+          - qcom,q6apm
+          - qcom,q6prm
 
       reg:
-        minimum: 3
+        minimum: 1
         maximum: 13
         description:
           APR Service ID
@@ -84,6 +91,11 @@ patternProperties:
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
@@ -148,3 +160,18 @@ examples:
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
index 000000000000..3107da59319c
--- /dev/null
+++ b/include/dt-bindings/soc/qcom,gpr.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: GPL-2.0 OR BSD-2-Clause */
+
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


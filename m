Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 023E842BE28
	for <lists+devicetree@lfdr.de>; Wed, 13 Oct 2021 12:57:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234141AbhJMK7J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Oct 2021 06:59:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232784AbhJMK6r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Oct 2021 06:58:47 -0400
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com [IPv6:2607:f8b0:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A152C061778
        for <devicetree@vger.kernel.org>; Wed, 13 Oct 2021 03:56:28 -0700 (PDT)
Received: by mail-pg1-x52d.google.com with SMTP id q5so1939022pgr.7
        for <devicetree@vger.kernel.org>; Wed, 13 Oct 2021 03:56:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=yw+NaHmS2OviUEGIWWfNtsmzD5nYySB6AIlogP5a/cQ=;
        b=NHZlgl1GO0cd+Qmy2aII0kIzz8l5igxZ/oBSCb8LIlRTi4oglpg2DHBYrw7iJd6wfj
         uHiagAUBP7IZCEQPqhL/EfyQtq5igzIaa3ULO8k4gCzyxoQ4dALhJ95/48z2Cyx14+WQ
         m0GA1f670VwFJju8RMabpf7IKbitlkrWmQgifeFViFFK7MtPKD2gFeZEeUkQOF4GEGGQ
         DyVWW1B2tlkKzr8Rtoj+04ThkYU95WXfjm1fVVtD9Obw+d/cFcpq/TguTIX1G1jGBRFn
         WSH7GQ981etr9pv3klieXiMzITqXlpISAleuWF/fTMoP9C3t1bV8i9FMJ/nJTQ5ya/Dj
         9scw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yw+NaHmS2OviUEGIWWfNtsmzD5nYySB6AIlogP5a/cQ=;
        b=gCMBo/i2Omf7fyrphdh+tO0zJ5yJxYxXaGFe5spfmtX+kuZzg+BJOiFIwTqsqT4DWv
         /zM8jQJ7o38CqtkxmtmbjroySHom1ptXjTYR35NbOBJ2udPQtuRy/uwh3mmPBpxIbPgR
         R0pQctHPfzziO3/p06txXTbepe6+9RkbN5zvmVe/fRrEshpIpNEH5rNHRrskWby+9aPY
         qDOJGcZJnpPzqxEFRK+G+GuVdQs0g1W4DXkoQkkrH1YyH/Ro1pp0YNfxl/W2Q2LqH3AJ
         PWm8NxZqHcnPNmFzyE2IJwaL2131HGqGd7Dn0Mcl4kadRet0f5WYE08pDEi4x1D71tGP
         Tvfg==
X-Gm-Message-State: AOAM531yi2zo24/XJBi08fOPJoZsYBdDFN2UHzTutmyWcO/QEE9BldIf
        8Fr2prFv9snaZmQiWyy4WlEbHw==
X-Google-Smtp-Source: ABdhPJxzqL4Oa7ZbmxyxpW5LGLwTGJW1GLlz9jUKbAzBuQsfjVU/qIuo1CoqarWf7dm+D5vG1hzdSA==
X-Received: by 2002:a63:f313:: with SMTP id l19mr27316800pgh.40.1634122588092;
        Wed, 13 Oct 2021 03:56:28 -0700 (PDT)
Received: from localhost.name ([122.161.48.68])
        by smtp.gmail.com with ESMTPSA id b13sm6155351pjl.15.2021.10.13.03.56.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Oct 2021 03:56:27 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, agross@kernel.org, herbert@gondor.apana.org.au,
        davem@davemloft.net, Thara Gopinath <thara.gopinath@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v4 07/20] dt-bindings: qcom-qce: Convert bindings to yaml
Date:   Wed, 13 Oct 2021 16:25:28 +0530
Message-Id: <20211013105541.68045-8-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211013105541.68045-1-bhupesh.sharma@linaro.org>
References: <20211013105541.68045-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert Qualcomm QCE crypto devicetree binding to YAML.

Cc: Thara Gopinath <thara.gopinath@linaro.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 .../devicetree/bindings/crypto/qcom-qce.yaml  | 67 +++++++++++++++++++
 1 file changed, 67 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/crypto/qcom-qce.yaml

diff --git a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
new file mode 100644
index 000000000000..b7ae873dc943
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/crypto/qcom-qce.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm crypto engine driver
+
+maintainers:
+  - Bhupesh Sharma <bhupesh.sharma@linaro.org>
+
+description: |
+  This document defines the binding for the QCE crypto
+  controller found on Qualcomm parts.
+
+properties:
+  compatible:
+    const: qcom,crypto-v5.1
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: iface clocks register interface.
+      - description: bus clocks data transfer interface.
+      - description: core clocks rest of the crypto block.
+
+  clock-names:
+    items:
+      - const: iface
+      - const: bus
+      - const: core
+
+  dmas:
+    items:
+      - description: DMA specifiers for tx dma channel.
+      - description: DMA specifiers for rx dma channel.
+
+  dma-names:
+    items:
+      - const: rx
+      - const: tx
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - dmas
+  - dma-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,gcc-apq8084.h>
+    crypto-engine@fd45a000 {
+        compatible = "qcom,crypto-v5.1";
+        reg = <0xfd45a000 0x6000>;
+        clocks = <&gcc GCC_CE2_AHB_CLK>,
+                 <&gcc GCC_CE2_AXI_CLK>,
+                 <&gcc GCC_CE2_CLK>;
+        clock-names = "iface", "bus", "core";
+        dmas = <&cryptobam 2>, <&cryptobam 3>;
+        dma-names = "rx", "tx";
+    };
-- 
2.31.1


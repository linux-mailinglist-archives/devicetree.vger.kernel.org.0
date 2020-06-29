Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 99CD520E3D6
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2020 00:03:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390835AbgF2VSq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Jun 2020 17:18:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390827AbgF2VSo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Jun 2020 17:18:44 -0400
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com [IPv6:2607:f8b0:4864:20::841])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C17F2C08C5DD
        for <devicetree@vger.kernel.org>; Mon, 29 Jun 2020 14:18:43 -0700 (PDT)
Received: by mail-qt1-x841.google.com with SMTP id v19so14005228qtq.10
        for <devicetree@vger.kernel.org>; Mon, 29 Jun 2020 14:18:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=marek-ca.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fNFf1AHiZrCdSiYdBqYQtf+nkqBR/m0y7WTyi1yw8FM=;
        b=X/Y0ODQvRjyzooj7l2PKv2WQJpLshLM3ya9vbo9bRqNvqN7hf+RkOR6jrahru94bwO
         z4Kg4rUEu55/0AbkapfqH8SS9kk78pWAw0Twd0lpaSk9+6P+MacHcn39vOqJ8Gb9hAGj
         2pAbtWG+fLg7Us9VmZwYlKEknuv1/XHW1IESordFP4EiA/Xspg4fc/wK4NjoyryknC2l
         +QMgOftthIJe9bn57JXcTSX50Ripp3gQdmH6TRo3v9Leq9g/6XipqngI+0Ob+y6u0BCh
         M5dYGTMvkPazIZDOwbOjPuBo1E9u+FGMa0x+ntqkTVdkClxxBh+72VqGIqPM3HMEv7BJ
         4lwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fNFf1AHiZrCdSiYdBqYQtf+nkqBR/m0y7WTyi1yw8FM=;
        b=IkLz7kJuMrPBCaVmtkbKrTfCjzCptFDJAOxcugiy/o7Q8Pu+ckwECIeae+gDnbFp4Y
         1+f5utacjh8EPxDbI4qu6lv82sow8RzraKk/2o4sHGcoHRUsJoAgZuqXpH6p8UAvpYDT
         by2jeLuT25hgRSCL8bR9HTIhYdN5y/orv2yaM5hFHJ24kgPopdp1VjJUmruR4qV3p/W8
         V7EUffI2VbOkMstap99y3BKzpv+Oq3xXh6SygRD36NGxL4JArRQngE1z7A+fTKgjtKko
         NxNb1/FNNajh5m3AUl+DkI9aKMM9jd5+tC4fqY7fk0nBqfcxhWsOEhE7TOjRKbVfB4q8
         s/Vg==
X-Gm-Message-State: AOAM530a4ANZ7ld3CWqQ4z8/r2s0PKdeZNfhhVbl2Z+kpSydMASABXtJ
        89p/DV6JvNMKyhJhtPChaREtiyE7Ap8=
X-Google-Smtp-Source: ABdhPJxhauUmioVFhEIjfulsLm7kbI7UerwcSC9yw6FVzvvDnij5LE36PQz/akeNRzIMWSxQMD7EMg==
X-Received: by 2002:ac8:1c2d:: with SMTP id a42mr18032928qtk.301.1593465523037;
        Mon, 29 Jun 2020 14:18:43 -0700 (PDT)
Received: from localhost.localdomain ([147.253.86.153])
        by smtp.gmail.com with ESMTPSA id b196sm1169078qkg.11.2020.06.29.14.18.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 14:18:42 -0700 (PDT)
From:   Jonathan Marek <jonathan@marek.ca>
To:     linux-arm-msm@vger.kernel.org
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-clk@vger.kernel.org (open list:COMMON CLK FRAMEWORK),
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
        DEVICE TREE BINDINGS), linux-kernel@vger.kernel.org (open list)
Subject: [RESEND PATCH v2 06/13] dt-bindings: clock: Introduce SM8150 QCOM Graphics clock bindings
Date:   Mon, 29 Jun 2020 17:17:12 -0400
Message-Id: <20200629211725.2592-7-jonathan@marek.ca>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200629211725.2592-1-jonathan@marek.ca>
References: <20200629211725.2592-1-jonathan@marek.ca>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add device tree bindings for graphics clock controller for
Qualcomm Technology Inc's SM8150 SoCs.

Signed-off-by: Jonathan Marek <jonathan@marek.ca>
---
 .../bindings/clock/qcom,sm8150-gpucc.yaml     | 74 +++++++++++++++++++
 include/dt-bindings/clock/qcom,gpucc-sm8150.h | 40 ++++++++++
 2 files changed, 114 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/qcom,sm8150-gpucc.yaml
 create mode 100644 include/dt-bindings/clock/qcom,gpucc-sm8150.h

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8150-gpucc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8150-gpucc.yaml
new file mode 100644
index 000000000000..683b50dd3492
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/qcom,sm8150-gpucc.yaml
@@ -0,0 +1,74 @@
+# SPDX-License-Identifier: GPL-2.0-only
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/qcom,sm8150-gpucc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Graphics Clock & Reset Controller Binding for SM8150
+
+maintainers:
+  -
+
+description: |
+  Qualcomm graphics clock control module which supports the clocks, resets and
+  power domains on SM8150.
+
+  See also dt-bindings/clock/qcom,gpucc-sm8150.h.
+
+properties:
+  compatible:
+    const: qcom,sm8150-gpucc
+
+  clocks:
+    items:
+      - description: Board XO source
+      - description: GPLL0 main branch source
+      - description: GPLL0 div branch source
+
+  clock-names:
+    items:
+      - const: bi_tcxo
+      - const: gcc_gpu_gpll0_clk_src
+      - const: gcc_gpu_gpll0_div_clk_src
+
+  '#clock-cells':
+    const: 1
+
+  '#reset-cells':
+    const: 1
+
+  '#power-domain-cells':
+    const: 1
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - '#clock-cells'
+  - '#reset-cells'
+  - '#power-domain-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,gcc-sm8150.h>
+    #include <dt-bindings/clock/qcom,rpmh.h>
+    clock-controller@2c90000 {
+      compatible = "qcom,sm8150-gpucc";
+      reg = <0x2c90000 0x9000>;
+      clocks = <&rpmhcc RPMH_CXO_CLK>,
+               <&gcc GCC_GPU_GPLL0_CLK_SRC>,
+               <&gcc GCC_GPU_GPLL0_DIV_CLK_SRC>;
+      clock-names = "bi_tcxo",
+                    "gcc_gpu_gpll0_clk_src",
+                    "gcc_gpu_gpll0_div_clk_src";
+      #clock-cells = <1>;
+      #reset-cells = <1>;
+      #power-domain-cells = <1>;
+    };
+...
diff --git a/include/dt-bindings/clock/qcom,gpucc-sm8150.h b/include/dt-bindings/clock/qcom,gpucc-sm8150.h
new file mode 100644
index 000000000000..e7cac7fe9739
--- /dev/null
+++ b/include/dt-bindings/clock/qcom,gpucc-sm8150.h
@@ -0,0 +1,40 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2017-2020, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef _DT_BINDINGS_CLK_QCOM_GPU_CC_SM8150_H
+#define _DT_BINDINGS_CLK_QCOM_GPU_CC_SM8150_H
+
+/* GPU_CC clock registers */
+#define GPU_CC_AHB_CLK				0
+#define GPU_CC_CRC_AHB_CLK			1
+#define GPU_CC_CX_APB_CLK			2
+#define GPU_CC_CX_GMU_CLK			3
+#define GPU_CC_CX_QDSS_AT_CLK			4
+#define GPU_CC_CX_QDSS_TRIG_CLK			5
+#define GPU_CC_CX_QDSS_TSCTR_CLK		6
+#define GPU_CC_CX_SNOC_DVM_CLK			7
+#define GPU_CC_CXO_AON_CLK			8
+#define GPU_CC_CXO_CLK				9
+#define GPU_CC_GMU_CLK_SRC			10
+#define GPU_CC_GX_GMU_CLK			11
+#define GPU_CC_GX_QDSS_TSCTR_CLK		12
+#define GPU_CC_GX_VSENSE_CLK			13
+#define GPU_CC_PLL1				14
+#define GPU_CC_PLL_TEST_CLK			15
+#define GPU_CC_SLEEP_CLK			16
+
+/* GPU_CC Resets */
+#define GPUCC_GPU_CC_CX_BCR			0
+#define GPUCC_GPU_CC_GFX3D_AON_BCR		1
+#define GPUCC_GPU_CC_GMU_BCR			2
+#define GPUCC_GPU_CC_GX_BCR			3
+#define GPUCC_GPU_CC_SPDM_BCR			4
+#define GPUCC_GPU_CC_XO_BCR			5
+
+/* GPU_CC GDSCRs */
+#define GPU_CX_GDSC				0
+#define GPU_GX_GDSC				1
+
+#endif
-- 
2.26.1


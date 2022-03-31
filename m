Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2EC524EDDC0
	for <lists+devicetree@lfdr.de>; Thu, 31 Mar 2022 17:47:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234604AbiCaPsu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Mar 2022 11:48:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239804AbiCaPs1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Mar 2022 11:48:27 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC8411D2049
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 08:45:55 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id u3so380489wrg.3
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 08:45:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1lYHVUjyiwdFk8wmNedKjP0QNXZ6Wdan6kfqSqK0oHY=;
        b=XESaiuo2OzoyYl/x/9YLj4KLnqFihJE+s/lm96Nfi35hKN4drWBYVAVuLI/QPiriqy
         xlihb5k1SDaBoD4nv5d2sAZUAhDYZ3uUU4dQaaEIfX8nX1sfXIwJuZtQTzPsL/lsWfas
         uo88U1JyNYC+NMwGzVXqG0S7gF9gwFkNh6Wv77tuUYs/t8jiY1xpbCkJ2xBKftrCJjRv
         ggbZj+kczVdNPgiJPSyNl+ln2FmX9nsYbvP0Vi/bMxXmtLiSkXnM7eAwBLK23b6+lIVz
         b41fmkjgOCk/g+zmfQVINmDe95DBLN0Vs6kp31FPaOCcvGbaFR9jMRWUfAMl6BbUMMYw
         eJKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1lYHVUjyiwdFk8wmNedKjP0QNXZ6Wdan6kfqSqK0oHY=;
        b=v8kMjL8jaaW79bT+Z8aEK2dcZjm4btmaYoBvZK4qbiNbZvM1mg5AiTBeFvVO6/GV5P
         c1sDw4IsfS70aN1I3tXmKo7or6Q4LYMTJ+c8BIGutKj99lSLpAoS4tUrByJLMDxYKT1m
         xY6Cv0ef24s4i6+L3/aQXjI6lXsE7CTij0tLqiBemN952bAfEWgalBa50Qs+74Q7sa0J
         6gxihzt6UnyajHshYLL3b9zEHb+cNP8iOVZVmiBPgsGer4+os6dz0Q+EBsvTAsnax+qs
         YFOoTeYSnubn2Y9qMoRSPb7hkuV27g7+dyyhDcBL3KK3W67XEKP5S7AxGksySrFN4ihB
         Ys8A==
X-Gm-Message-State: AOAM5326qcmMtoWaI1iXcAOhbZK2wKDd3mB4J0yWY3a14CXbmNs3L1o/
        3xGafM3+wW7N39utjpAVQBxpWJGgR/fzow==
X-Google-Smtp-Source: ABdhPJwlhvJ43pml0LRaK/YvcULwEreMOxHbiItEAC9yPI+O/CpAlY0UsLfM6IuvK6U+cItnZ8aDjg==
X-Received: by 2002:adf:eb48:0:b0:203:f854:86cc with SMTP id u8-20020adfeb48000000b00203f85486ccmr4518117wrn.102.1648741554286;
        Thu, 31 Mar 2022 08:45:54 -0700 (PDT)
Received: from arch-thunder.local (a109-49-33-111.cpe.netcabo.pt. [109.49.33.111])
        by smtp.gmail.com with ESMTPSA id az19-20020a05600c601300b0038cadf3aa69sm11622812wmb.36.2022.03.31.08.45.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Mar 2022 08:45:53 -0700 (PDT)
From:   Rui Miguel Silva <rui.silva@linaro.org>
To:     Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Rui Miguel Silva <rui.silva@linaro.org>
Subject: [PATCH v4 2/3] dt-bindings: arm: add corstone1000 platform
Date:   Thu, 31 Mar 2022 16:45:35 +0100
Message-Id: <20220331154536.1544220-3-rui.silva@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220331154536.1544220-1-rui.silva@linaro.org>
References: <20220331154536.1544220-1-rui.silva@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add bindings to describe the FPGA in a prototyping board
(MPS3) implementation and the Fixed Virtual Platform
implementation of the ARM Corstone1000 platform.

Signed-off-by: Rui Miguel Silva <rui.silva@linaro.org>
---
 .../bindings/arm/arm,corstone1000.yaml        | 45 +++++++++++++++++++
 1 file changed, 45 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/arm,corstone1000.yaml

diff --git a/Documentation/devicetree/bindings/arm/arm,corstone1000.yaml b/Documentation/devicetree/bindings/arm/arm,corstone1000.yaml
new file mode 100644
index 000000000000..a77f88223801
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/arm,corstone1000.yaml
@@ -0,0 +1,45 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/arm,corstone1000.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ARM Corstone1000 Device Tree Bindings
+
+maintainers:
+  - Vishnu Banavath <vishnu.banavath@arm.com>
+  - Rui Miguel Silva <rui.silva@linaro.org>
+
+description: |+
+  ARM's Corstone1000 includes pre-verified Corstone SSE-710 subsystem that
+  provides a flexible compute architecture that combines Cortex‑A and Cortex‑M
+  processors.
+
+  Support for Cortex‑A32, Cortex‑A35 and Cortex‑A53 processors. Two expansion
+  systems for M-Class (or other) processors for adding sensors, connectivity,
+  video, audio and machine learning at the edge System and security IPs to build
+  a secure SoC for a range of rich IoT applications, for example gateways, smart
+  cameras and embedded systems.
+
+  Integrated Secure Enclave providing hardware Root of Trust and supporting
+  seamless integration of the optional CryptoCell™-312 cryptographic
+  accelerator.
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+      - description: Corstone1000 MPS3 it has 1 Cortex-A35 CPU core in a FPGA
+          implementation of the Corstone1000 in the MPS3 prototyping board. See
+          ARM document DAI0550.
+        items:
+          - const: arm,corstone1000-mps3
+      - description: Corstone1000 FVP is the Fixed Virtual Platform
+          implementation of this system. See ARM ecosystems FVP's.
+        items:
+          - const: arm,corstone1000-fvp
+
+additionalProperties: true
+
+...
-- 
2.35.1


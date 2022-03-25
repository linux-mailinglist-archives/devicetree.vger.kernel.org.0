Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B976D4E744C
	for <lists+devicetree@lfdr.de>; Fri, 25 Mar 2022 14:37:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351986AbiCYNip (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Mar 2022 09:38:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244774AbiCYNio (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Mar 2022 09:38:44 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61529D763C
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 06:37:10 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id k10so9294161edj.2
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 06:37:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1lYHVUjyiwdFk8wmNedKjP0QNXZ6Wdan6kfqSqK0oHY=;
        b=tfDEyLkK9Igf0SXB4s0lsLrbcpYuHRlPBN3f7MjUbF1yB7iHfWYDSmyWOXyxTDqN6g
         QseVfNvvLud7vXctzQAldGl+YD8Dvp535hTbMORJuM3fAuGOaMJ+D4qbSEU81G5O5c8R
         RnMCQgebdHCjKyEV47O0HqeccAupJsMPKVJ+VjyxZVpsqeEx1NG0f6boTB8I6NlTutAZ
         RIWQVJNVtJ4CzE44/TqgxT4eJy/q9TeCClhFT5JRFXGRnTIY6l1Fxvzf9/nP8HNLURpc
         lJA7p3Yf+Kh10YDwS59csF3QfgwGfGl/XVT7eXxBrD8LKmlICGe5v1NX1HCTfeUDKMnF
         jTiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1lYHVUjyiwdFk8wmNedKjP0QNXZ6Wdan6kfqSqK0oHY=;
        b=fSDQUFqIw2gWDLHK4qRB2ADWPBs+XCWvrNL+rux3ughwHFrj4jeiYIAaeRmEwtz5uC
         vy9feL0ozF9C4xnziewcZSoRjHjjMVeNPH8w/fCBqRdi93rBqDXCxPRV3p4b6KA7tr+T
         BDxBVERN3TzsyZstt0A7B0n95u3HNnZEH8lJeQI/9qdoicRvMUU+mYLWuAzaZgfY+ct1
         5ZELMkBUy/oHfjpXlHiXR0oziZSzwDzKDM32WRH7TztVmW5xZ+oq7TgWPIPT3CmHjxzQ
         HkxyMrzJfsO1PmKj6Mya48HDCyBPEF4+U6wpH/V2tu0Dh8ROpgKFUe5SiwEYmx/jBB5J
         IDRg==
X-Gm-Message-State: AOAM530r+pOcoTLAj4CSfIFPFPTTS0kdfrz3EPkqG9/LI5qg0l18CNLJ
        wzTRAkZGt+msNOIzbkrt+NkUOQ==
X-Google-Smtp-Source: ABdhPJxtOYEmU480GX+cebJCM7Z+dFcH5yR7PChC9x2ICU9Vs3dZwSDVjH7sqQWq7dnwjDv0JN8+UQ==
X-Received: by 2002:a50:ec94:0:b0:419:75fa:f695 with SMTP id e20-20020a50ec94000000b0041975faf695mr13246721edr.355.1648215428992;
        Fri, 25 Mar 2022 06:37:08 -0700 (PDT)
Received: from arch-thunder.local (a109-49-33-111.cpe.netcabo.pt. [109.49.33.111])
        by smtp.gmail.com with ESMTPSA id e9-20020a170906c00900b006d4a45869basm2327012ejz.199.2022.03.25.06.37.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Mar 2022 06:37:08 -0700 (PDT)
From:   Rui Miguel Silva <rui.silva@linaro.org>
To:     Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Rui Miguel Silva <rui.silva@linaro.org>
Subject: [PATCH 1/2] dt-bindings: arm: add corstone1000 platform
Date:   Fri, 25 Mar 2022 13:36:54 +0000
Message-Id: <20220325133655.4177977-2-rui.silva@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220325133655.4177977-1-rui.silva@linaro.org>
References: <20220325133655.4177977-1-rui.silva@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=y
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


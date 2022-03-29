Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C1F634EB55E
	for <lists+devicetree@lfdr.de>; Tue, 29 Mar 2022 23:35:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234704AbiC2VhZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Mar 2022 17:37:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234705AbiC2VhZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Mar 2022 17:37:25 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 791902364D1
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 14:35:41 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id 125-20020a1c0283000000b0038d043aac51so104997wmc.0
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 14:35:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1lYHVUjyiwdFk8wmNedKjP0QNXZ6Wdan6kfqSqK0oHY=;
        b=vgSQOGtT7XxpMjqhET9JLOJ9aRY+XrT489m/Eh0oZ+JLmhnmbmlblfO7SpORqSRr6n
         Mek2/7qKa8evPwIep/6OVSJQbDYTRTzDNR+1dosE9GJ6ZLwLYcc05TFZ8CrOw0WxXrdQ
         8ZrWoMb9cVmMBLGnHwB9UC6ArrJdEnFgTIRTNeDDJuSl7ZwD5zwQkci3DOpEZdM5/51+
         WBsmiODcns3+AZ/FZgn8HXdJH6XIMDSQxT9r48c6a5J97MDZtlwUNypSMw4mE8HTQROT
         7WW5or5jlcFpcrY7rOWkjOPkbe4V569kxGxtD5PuyrYqa078eBYmvckB22ZwmY2RRIir
         vTDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1lYHVUjyiwdFk8wmNedKjP0QNXZ6Wdan6kfqSqK0oHY=;
        b=LifxWk/qrcVVNkMg/j5YDCqCFWI8rWbo0Kn5V39lvnURPwNV2OUpFUANPLX5fmftWM
         nNfgwradC07VXKedsZf9b0kue3ycVUb+cFiMRLGcWlNhAUxKsmSllv7+h7uHNJnYqe61
         TA6YAwp0ZFW1LaQsuxz9i+SMWKZenkfyWpkBzhPkSJlzXzspl44cows/sJ0isY9+TQRx
         lUFaQFNtrhIcF6CdlQpMM/BKbRjBQdhwDdv7FMIxnA+/9hWIPcewQrAZA7vVSAWRz9Vh
         sKh1z8XPQwFnoAQrI44OS6WPMOyyRy+IyFGk6zXGe3p3oGR9zQCc4LSewWk7Vgd+nEUR
         kOVA==
X-Gm-Message-State: AOAM532dckVDFhhXFUKiPZZ1cnWr+x4beLP3tsQobaSEc5WUCOFJred4
        sOnS1OLMvD+gLJXWVU21MLW10g==
X-Google-Smtp-Source: ABdhPJy7AcAk+tYEolqLqGgJjap+yjqNKxljnomN6DL/PhAnBjH+3BZLBiIBaMl+SR4tqKrNBp77Cg==
X-Received: by 2002:a05:600c:4f42:b0:38c:21:fffe with SMTP id m2-20020a05600c4f4200b0038c0021fffemr1437471wmq.63.1648589740057;
        Tue, 29 Mar 2022 14:35:40 -0700 (PDT)
Received: from arch-thunder.local (a109-49-33-111.cpe.netcabo.pt. [109.49.33.111])
        by smtp.gmail.com with ESMTPSA id f1-20020a1c6a01000000b0038c9f6a3634sm3121081wmc.7.2022.03.29.14.35.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Mar 2022 14:35:39 -0700 (PDT)
From:   Rui Miguel Silva <rui.silva@linaro.org>
To:     Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Rui Miguel Silva <rui.silva@linaro.org>
Subject: [PATCH v2 2/3] dt-bindings: arm: add corstone1000 platform
Date:   Tue, 29 Mar 2022 22:35:18 +0100
Message-Id: <20220329213519.801033-3-rui.silva@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220329213519.801033-1-rui.silva@linaro.org>
References: <20220329213519.801033-1-rui.silva@linaro.org>
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


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E53A94F968C
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 15:19:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236180AbiDHNVf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 09:21:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229487AbiDHNVe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 09:21:34 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81B9A113D15
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 06:19:30 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id a2so3535936wrh.5
        for <devicetree@vger.kernel.org>; Fri, 08 Apr 2022 06:19:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=UOpBzSFcrvSxH4mfRoI+fU7aWAJBu2V5AIA4U9N3lmk=;
        b=m5T9zsVF0sMpoCU9ATMzi8hPPLBCQ9oPe9zxUFVyNN1z91MtWl+QU11+pJkTqX6HgD
         qEcJfCFux5cZcaRuEpwSpIWVoU0lW8VNXw0Au4V9yskJbJa1GqSvSIGZ6/D6V6Y/ntyL
         7meYua8u767e0cz6qWfFrDINbYay5bu4nldu4ptduyAqMjzf1tHKhUrtqHQZnFHB4Vgy
         HgNlbgW45jXS0KLurKg2ICyGhEKao2LhdLwjFmfc17THKVk3XV0svRk39Q4BhzmGDEwg
         9hf644PMxEkNvnXpZEOEhxoMkQjKA61DxVnxWu6hqCzFfB/aNe12qBdAQOubhN2ej+ea
         9S2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UOpBzSFcrvSxH4mfRoI+fU7aWAJBu2V5AIA4U9N3lmk=;
        b=mXKVqAlcMH7hB4qcr/IizAYJK/16iiegW0HzsKYasfB/nTCcqFKsEUI27PSCJFW66+
         554v8Fxj1C999NYKA83ipSj78N/axmWvmZb5InwUjwqiaKTZnzIoW6P7CR52wYsw7Zjb
         4IQDlsR5bXiDSqYjI2kYaOJgWYOIMXzz0ZNOhekcGBkxf7q8YJP+DKZ1035sJlcz1sKF
         PZB3IHNrdG/8gQ0KK7hyP4SSWn+dlSwpfoNF4CfG1aqQYHajMzXSS/S/xMrGUG+XfEo+
         tiTbHvVfC2T/ewEe7JiZJ6Q+tX9SVGDgY336xNsBPaM9NMOvsyEqsNwnmfzOdKzu3w6J
         HqFA==
X-Gm-Message-State: AOAM532gjCfEo0r+0ax/Qasq2LogTTH8Vkvjnj5YZnCgra40BMhjPxzR
        Q5OPdycpoKK2GcPJ3+YmCkjJpA==
X-Google-Smtp-Source: ABdhPJx9P/RBXXNNsEs3weyVS0IJoYBYeUBwc1iFh0NE5msgI9U+RuBOBP5zbFxKZLSxuS0Z6CUUtw==
X-Received: by 2002:a5d:64cb:0:b0:205:8d25:704f with SMTP id f11-20020a5d64cb000000b002058d25704fmr15095013wri.518.1649423969055;
        Fri, 08 Apr 2022 06:19:29 -0700 (PDT)
Received: from arch-thunder.local (a109-49-33-111.cpe.netcabo.pt. [109.49.33.111])
        by smtp.gmail.com with ESMTPSA id r12-20020a5d6c6c000000b00203ec2b1255sm24689523wrz.60.2022.04.08.06.19.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Apr 2022 06:19:28 -0700 (PDT)
From:   Rui Miguel Silva <rui.silva@linaro.org>
To:     Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Rui Miguel Silva <rui.silva@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v5 1/2] dt-bindings: arm: add corstone1000 platform
Date:   Fri,  8 Apr 2022 14:19:21 +0100
Message-Id: <20220408131922.3864348-2-rui.silva@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220408131922.3864348-1-rui.silva@linaro.org>
References: <20220408131922.3864348-1-rui.silva@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add bindings to describe the FPGA in a prototyping board
(MPS3) implementation and the Fixed Virtual Platform
implementation of the ARM Corstone1000 platform.

Signed-off-by: Rui Miguel Silva <rui.silva@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
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


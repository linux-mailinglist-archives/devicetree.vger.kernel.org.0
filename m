Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E45C4EC54B
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 15:11:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343959AbiC3NMt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Mar 2022 09:12:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344002AbiC3NMs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Mar 2022 09:12:48 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86069216FA4
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 06:11:03 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id c190-20020a1c35c7000000b0038e37907b5bso851537wma.0
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 06:11:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1lYHVUjyiwdFk8wmNedKjP0QNXZ6Wdan6kfqSqK0oHY=;
        b=ZMnL9xmJb3LSVfaXEc+k+VWzExzKu6ulIlhxRYjoeIkrVyFC6brpvokxn2+XLqHcC0
         Phweqa/dwvgPTAHt+cKWJUopP4KuM0D9/8Zf6Q2lV8HGhS+PVJS/1S0/uuet5SLKnE8H
         gUwW9S/K/DXTdpGeaOTGJ/nvNqUt8bCM9ciiGIW/olGiOJQlrtSS6c0OE/hG2C3VyjcK
         uJpASWThsRgYzkeWI2FKfbxjhtTOQBgVZGBMrcMibsNSgAYzlUv5Vk17MsqY81evbXUH
         7Z6mki95+qMLypM72ZI61ZW7M7YIvCg7bLyuMhd33UtDnh1kThoZtjq+wPcfjsQFVXlD
         4OUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1lYHVUjyiwdFk8wmNedKjP0QNXZ6Wdan6kfqSqK0oHY=;
        b=8EtSiNVkZlLyal+Aqjbs01S64hOjnbBrgWYBkyswwxBFsqIZ0CiiQTKgZEYGpOPo7l
         aT2gZM+3jCBHamKe1+iAl8SdBhJLJkXBk1NQpFv0D7ciJDr4QVKF3ISh0+rzQs4RywHY
         odhtsOkJabymCvwqj3Rq8lrfMCV0OY8+sQPkFZlEuaMZVmUIxUhy6xNZWQOxSYHTbY30
         MritV6ulTeOBnQf3gCrW6vAbVciE++ESNelMrlcSk0+S2RqCtD946Fa/xOpJOdywLPoi
         MvkPGmKZKeUfL+mprGvPDYvsnQXOFELa2h20FYZOTp0dAMO7MfE9DoZTOdMTBkWED2Ny
         W6Pw==
X-Gm-Message-State: AOAM531Tjrv5NcVbng4fsYsFd2wSs2h6rvREInOLU1EFATqYmz1c4NBf
        QoeMZ6CmDD771AIJr3xaDfVFCQ==
X-Google-Smtp-Source: ABdhPJxiNoiY1H7hMq37pZeLpqvbRtiDIAc9XCmmwBAolZ6bEF0KLi3xL3YKvjKaanWFGMpeoX8Y6A==
X-Received: by 2002:a05:600c:3d8d:b0:38c:82dc:cd58 with SMTP id bi13-20020a05600c3d8d00b0038c82dccd58mr4350185wmb.50.1648645862039;
        Wed, 30 Mar 2022 06:11:02 -0700 (PDT)
Received: from arch-thunder.local (a109-49-33-111.cpe.netcabo.pt. [109.49.33.111])
        by smtp.gmail.com with ESMTPSA id u7-20020a5d6da7000000b00203d9d1875bsm20134479wrs.73.2022.03.30.06.11.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Mar 2022 06:11:01 -0700 (PDT)
From:   Rui Miguel Silva <rui.silva@linaro.org>
To:     Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Rui Miguel Silva <rui.silva@linaro.org>
Subject: [PATCH v3 2/3] dt-bindings: arm: add corstone1000 platform
Date:   Wed, 30 Mar 2022 14:10:52 +0100
Message-Id: <20220330131053.1122502-3-rui.silva@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220330131053.1122502-1-rui.silva@linaro.org>
References: <20220330131053.1122502-1-rui.silva@linaro.org>
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


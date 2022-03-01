Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DBAFA4C83E7
	for <lists+devicetree@lfdr.de>; Tue,  1 Mar 2022 07:24:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229607AbiCAGZJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Mar 2022 01:25:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232563AbiCAGZI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Mar 2022 01:25:08 -0500
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07E286F4A8
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 22:24:28 -0800 (PST)
Received: by mail-pj1-x1031.google.com with SMTP id p3-20020a17090a680300b001bbfb9d760eso1230416pjj.2
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 22:24:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Gpyd4vP7EgbsF/QazldQl0vAIMM6wCSjCpTQL1+8JT0=;
        b=rI1XC0g6XEgErEeD+I/d7FDZTzVQmN/+ECZD5wQb9XX9H6V8O+k+VO1Eg1CKjbDkhY
         g+y35Vcit0PSlf5pt2/KDlY2XKmoKdKFfQqk2D8nFEDmvM6TJK7DOs+T402SkRk6Gzx0
         5R0j0Z0I1/oAlxjL0bW9UkQUNJFD04nuE8GSP6MGcGTMT3PmG0535eaegRz7rAa51j7j
         WkTbO/8GVzzrwMrG/pimNIY+b3DbsSpfvVTAhZBOja42SQAwd3Y59VrHwFqdwYgW8LgG
         hKGqDtsKqHoi7H7UUxrXBY4eZb9a9TsQxDFUJ6TaikJbgmCfu/6mfpDU9n1ISgL41hKq
         Xpcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Gpyd4vP7EgbsF/QazldQl0vAIMM6wCSjCpTQL1+8JT0=;
        b=OHywba6FM+hXdB2bw1qkfh3KyJbZ6Vhund13c0NAmuzUUoICYXeYxRzMi+z3Z0zmo/
         AP2X06kEMyJXqjB73laPoDaBX6rgk066CY1GSmXk9rLkZEYBWt40/+LH/SeTFEyycaoE
         +q3H1q4PwKHp0LiVWOLHcmJM+BrcuWQQ+2tmp88Vj0TLJtbUBhZmn/miOObKJjRw9Lw9
         K0VLee/XIa1Z1uTT0ReKrZI/Gtoat+nKWuvhERnQzhVVgPKQhOc9Yq6jmNIHCCikArZc
         FM5evTg28gct5xnyGODDNC5DBs8Xjk0lhhiHvgvfAghvhZpK/mHOfqtr6ZytFlOUrlmW
         ChXA==
X-Gm-Message-State: AOAM533duNkXAOL8Aym6lcDsaTVPoBDsTE4YuWKXiRA996I2ynKR497u
        0a5c1kMiCuNlbvCuB216Hk8u9g==
X-Google-Smtp-Source: ABdhPJyHAM22zlO3cgA+ZVgk+G4BGIhdsjMdHdJXJ/5YOTok6LbGyLPI4YV71sBWXFxppqtdYT3EAQ==
X-Received: by 2002:a17:902:8d93:b0:14d:d2e9:37f with SMTP id v19-20020a1709028d9300b0014dd2e9037fmr23664533plo.83.1646115867524;
        Mon, 28 Feb 2022 22:24:27 -0800 (PST)
Received: from localhost.localdomain (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id q22-20020a056a00085600b004f397d1f3b5sm16461364pfk.171.2022.02.28.22.24.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Feb 2022 22:24:27 -0800 (PST)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Marc Zyngier <maz@kernel.org>
Cc:     Thomas Gleixner <tglx@linutronix.de>,
        Maulik Shah <quic_mkshah@quicinc.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Shawn Guo <shawn.guo@linaro.org>, Rob Herring <robh@kernel.org>
Subject: [PATCH v7 1/2] dt-bindings: interrupt-controller: Add Qualcomm MPM support
Date:   Tue,  1 Mar 2022 14:24:13 +0800
Message-Id: <20220301062414.2987591-2-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220301062414.2987591-1-shawn.guo@linaro.org>
References: <20220301062414.2987591-1-shawn.guo@linaro.org>
MIME-Version: 1.0
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

It adds DT binding support for Qualcomm MPM interrupt controller.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 .../interrupt-controller/qcom,mpm.yaml        | 96 +++++++++++++++++++
 1 file changed, 96 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/qcom,mpm.yaml

diff --git a/Documentation/devicetree/bindings/interrupt-controller/qcom,mpm.yaml b/Documentation/devicetree/bindings/interrupt-controller/qcom,mpm.yaml
new file mode 100644
index 000000000000..509d20c091af
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/qcom,mpm.yaml
@@ -0,0 +1,96 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/interrupt-controller/qcom,mpm.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcom MPM Interrupt Controller
+
+maintainers:
+  - Shawn Guo <shawn.guo@linaro.org>
+
+description:
+  Qualcomm Technologies Inc. SoCs based on the RPM architecture have a
+  MSM Power Manager (MPM) that is in always-on domain. In addition to managing
+  resources during sleep, the hardware also has an interrupt controller that
+  monitors the interrupts when the system is asleep, wakes up the APSS when
+  one of these interrupts occur and replays it to GIC interrupt controller
+  after GIC becomes operational.
+
+allOf:
+  - $ref: /schemas/interrupt-controller.yaml#
+
+properties:
+  compatible:
+    items:
+      - const: qcom,mpm
+
+  reg:
+    maxItems: 1
+    description:
+      Specifies the base address and size of vMPM registers in RPM MSG RAM.
+
+  interrupts:
+    maxItems: 1
+    description:
+      Specify the IRQ used by RPM to wakeup APSS.
+
+  mboxes:
+    maxItems: 1
+    description:
+      Specify the mailbox used to notify RPM for writing vMPM registers.
+
+  interrupt-controller: true
+
+  '#interrupt-cells':
+    const: 2
+    description:
+      The first cell is the MPM pin number for the interrupt, and the second
+      is the trigger type.
+
+  qcom,mpm-pin-count:
+    description:
+      Specify the total MPM pin count that a SoC supports.
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+  qcom,mpm-pin-map:
+    description:
+      A set of MPM pin numbers and the corresponding GIC SPIs.
+    $ref: /schemas/types.yaml#/definitions/uint32-matrix
+    items:
+      items:
+        - description: MPM pin number
+        - description: GIC SPI number for the MPM pin
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - mboxes
+  - interrupt-controller
+  - '#interrupt-cells'
+  - qcom,mpm-pin-count
+  - qcom,mpm-pin-map
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    mpm: interrupt-controller@45f01b8 {
+        compatible = "qcom,mpm";
+        interrupts = <GIC_SPI 197 IRQ_TYPE_EDGE_RISING>;
+        reg = <0x45f01b8 0x1000>;
+        mboxes = <&apcs_glb 1>;
+        interrupt-controller;
+        #interrupt-cells = <2>;
+        interrupt-parent = <&intc>;
+        qcom,mpm-pin-count = <96>;
+        qcom,mpm-pin-map = <2 275>,
+                           <5 296>,
+                           <12 422>,
+                           <24 79>,
+                           <86 183>,
+                           <90 260>,
+                           <91 260>;
+    };
-- 
2.25.1


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AD1F645EA8D
	for <lists+devicetree@lfdr.de>; Fri, 26 Nov 2021 10:41:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1376435AbhKZJoL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Nov 2021 04:44:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233187AbhKZJmK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Nov 2021 04:42:10 -0500
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB752C061574
        for <devicetree@vger.kernel.org>; Fri, 26 Nov 2021 01:35:57 -0800 (PST)
Received: by mail-pf1-x434.google.com with SMTP id 8so8392416pfo.4
        for <devicetree@vger.kernel.org>; Fri, 26 Nov 2021 01:35:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=r0omnbMhHn1a/Pi6UKsX4APHWBjj9Y+vDoHP/QtthgU=;
        b=zPtJSnWSPtm4wSy8mxH0fGvrCOn/u7CMgplByR7IOrQSBHW7TgmUreyzE4l1u4OZPp
         q3EvOE3hpBAEOYTzAT3TTx1o/ukBKgi3KZWlk0BSsz1BDd5PdIzVxdSqSc9bUNp7M29E
         s/EwQ8J4qzuZF7LqgVm5sc/7YKs/ZtosH4TI475bO8Of6a33cx80pjpEcfkvVzoRG1Qd
         Tz/evUyY7Pj/LXcFim2WXbrwE3nwVRR781tljh75WG6xG+EcdqcODdtB9LnnC4i0lq3t
         1Csvp7QpaqLe7P+87kxubM2SFz84c2zKIfy1nUBm1GcaE57i71mVA2vF3gPy4AaCxtxe
         Wv9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=r0omnbMhHn1a/Pi6UKsX4APHWBjj9Y+vDoHP/QtthgU=;
        b=ZSIwwHi0IQ7CrH+n7S6E1RUWiEE2r/AyogplqzLP4jciKgKha+JJYzQJdt3vWwBtlC
         BzBZLg8cR8oLy10W2caUIPunmSuLI4NlPrq8Nx53Apn+AgQzf5QJnBhlzURw8YHbpjve
         P5VUZxi/BPGv6tVXg+QpRCPiyeMN4mn1WlkvQCIQM9vv4z2TFke8W+DXZfzXJ4iCixXk
         PuvNseG/DvZo7AivhdzmPP9zQuYXC1ybW3tNhOXopRkN6/e9w/iitZU17I5qObd3zcUM
         j1hQIOvrwW6OWdw0mhaCKjoHFjLQxLyG45aAjtaYK/bqS7/X0pcHExncxMgf/GBRBMA/
         C3Bg==
X-Gm-Message-State: AOAM530NyvsJ0O1CMFZuDqZzLrC9HyJxolc6/5e9+hohkcd0ad7i/Kt/
        IfFKt8BHVD43zkxb2xTkS1peow==
X-Google-Smtp-Source: ABdhPJyUyGOq1qZlC2gMXF9xqQoHeAo6RQXwommeAyDUrGVk2e2QqBJP3UegNt3ZkZT4EdRQFxOVTQ==
X-Received: by 2002:a63:ff09:: with SMTP id k9mr20595020pgi.76.1637919357452;
        Fri, 26 Nov 2021 01:35:57 -0800 (PST)
Received: from localhost.localdomain (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id q11sm6079647pfk.192.2021.11.26.01.35.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 01:35:57 -0800 (PST)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Marc Zyngier <maz@kernel.org>, Thomas Gleixner <tglx@linutronix.de>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Loic Poulain <loic.poulain@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH v2 1/2] dt-bindings: interrupt-controller: Add Qualcomm MPM support
Date:   Fri, 26 Nov 2021 17:35:28 +0800
Message-Id: <20211126093529.31661-2-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20211126093529.31661-1-shawn.guo@linaro.org>
References: <20211126093529.31661-1-shawn.guo@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

It adds DT binding support for Qualcomm MPM interrupt controller.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 .../interrupt-controller/qcom,mpm.yaml        | 72 +++++++++++++++++++
 1 file changed, 72 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/qcom,mpm.yaml

diff --git a/Documentation/devicetree/bindings/interrupt-controller/qcom,mpm.yaml b/Documentation/devicetree/bindings/interrupt-controller/qcom,mpm.yaml
new file mode 100644
index 000000000000..22e87fe2eb8e
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/qcom,mpm.yaml
@@ -0,0 +1,72 @@
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
+      - const: qcom,qcm2290-mpm
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
+required:
+  - compatible
+  - reg
+  - interrupts
+  - mboxes
+  - interrupt-controller
+  - '#interrupt-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    mpm: interrupt-controller@45f01b8 {
+        compatible = "qcom,qcm2290-mpm";
+        interrupts = <GIC_SPI 197 IRQ_TYPE_EDGE_RISING>;
+        reg = <0x45f01b8 0x1000>;
+        mboxes = <&apcs_glb 1>;
+        interrupt-controller;
+        #interrupt-cells = <2>;
+        interrupt-parent = <&intc>;
+    };
-- 
2.17.1


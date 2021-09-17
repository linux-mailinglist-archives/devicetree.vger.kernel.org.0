Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 04E8A40F041
	for <lists+devicetree@lfdr.de>; Fri, 17 Sep 2021 05:16:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243737AbhIQDSN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Sep 2021 23:18:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243719AbhIQDSM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Sep 2021 23:18:12 -0400
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56C1AC061574
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 20:16:51 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id u13-20020a17090abb0db0290177e1d9b3f7so9016599pjr.1
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 20:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=tTEiTbO1ZH85XonKLmdTYGjcvfIzkgPG2492l17rrOI=;
        b=GOca7bohXZMYJVu8GZmjCa0uHwmpuc7J5njPuKQmIEnNbQ0Px9lhBWB0WOcB5p3ogN
         X+lFj5rPUUXFwb835wz5UVNOBZZWNBcI/RTam0vPGBt3EFQ+oMA1p/8Y4OUz8o1sUhWy
         qfMf3ALQmOiE3srAyaPeDeg2QiUI6ZPXa9L/VmIdZvorc/GadI5YK5yP1/vjh7GzwFMt
         khlgM+ctCpfk8ar5yusznV7LMaJCd2cR8JNskXmwuzujp4gXYHTD0uC0LWFWBi9ZjE+r
         VLsbY8N8+cmK5KUICUpp0SU7DsMqFrAOVGMzWORk4REpRQRe+2Liz1wDeSdXP8o0QVDc
         LWeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=tTEiTbO1ZH85XonKLmdTYGjcvfIzkgPG2492l17rrOI=;
        b=ch82/W6UhC1hs9nKL6g7m1WVJN28F6qigEaqUZJXmHrC9j1FRPYFeQ0t609QC5bLQ9
         7U2ZQYBDYOmm0M/KJvazHoSstSd6eLWk96eIt+fvKTVHApHBNYzotrZDKtP5d/NJt9Lr
         vXJlD01PZRxibhcmS1gKX/dGgJgehfwCEZ5L9RtSJJMIDk9wls6ScpndrBVOvpKx5wYA
         joT9Gbb9Vy6Gw4g4g6iAvmb6SQxAp4TSjjDxUhI+WzdGMQsaYq/7vH+KZYsTco9K4fiJ
         wUwAvTm7osYogvM3Rst5jZNf24Y8rO1ZbGsBfXgYfxcAiRDS6JSxiW5Y0Xrf14AYuHG3
         G8Fw==
X-Gm-Message-State: AOAM533cupH3JiYrUJBGiiyJ+Ts7aiYEkFF6Gi7JP3TRR2dsmDD7daXP
        RZic5MglgZUu4+ceVgMDLALw9w==
X-Google-Smtp-Source: ABdhPJx6n+pvbF1Y/Ws7BtPD/ZOsoMglWujh0QfvxcBNRiTbojlaG9zd8tT85SPUQ73KR1Dff1XtPg==
X-Received: by 2002:a17:902:b188:b029:11b:1549:da31 with SMTP id s8-20020a170902b188b029011b1549da31mr7654732plr.7.1631848610913;
        Thu, 16 Sep 2021 20:16:50 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id k3sm8823034pjg.43.2021.09.16.20.16.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Sep 2021 20:16:50 -0700 (PDT)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Stephen Boyd <sboyd@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Loic Poulain <loic.poulain@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
        Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH v2 1/2] dt-bindings: clk: qcom: Add QCM2290 Global Clock Controller bindings
Date:   Fri, 17 Sep 2021 11:16:37 +0800
Message-Id: <20210917031638.27679-2-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210917031638.27679-1-shawn.guo@linaro.org>
References: <20210917031638.27679-1-shawn.guo@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

It adds device tree bindings for QCM2290 Global Clock Controller.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 .../bindings/clock/qcom,gcc-qcm2290.yaml      | 72 +++++++++++++++++++
 1 file changed, 72 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/qcom,gcc-qcm2290.yaml

diff --git a/Documentation/devicetree/bindings/clock/qcom,gcc-qcm2290.yaml b/Documentation/devicetree/bindings/clock/qcom,gcc-qcm2290.yaml
new file mode 100644
index 000000000000..f8130d8ce259
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/qcom,gcc-qcm2290.yaml
@@ -0,0 +1,72 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/qcom,gcc-qcm2290.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Global Clock & Reset Controller Binding for QCM2290
+
+maintainers:
+  - Shawn Guo <shawn.guo@linaro.org>
+
+description: |
+  Qualcomm global clock control module which supports the clocks, resets and
+  power domains on QCM2290.
+
+  See also:
+  - dt-bindings/clock/qcom,gcc-qcm2290.h
+
+properties:
+  compatible:
+    const: qcom,gcc-qcm2290
+
+  clocks:
+    items:
+      - description: Board XO source
+      - description: Sleep clock source
+
+  clock-names:
+    items:
+      - const: bi_tcxo
+      - const: sleep_clk
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
+  protected-clocks:
+    description:
+      Protected clock specifier list as per common clock binding.
+
+required:
+  - compatible
+  - clocks
+  - clock-names
+  - reg
+  - '#clock-cells'
+  - '#reset-cells'
+  - '#power-domain-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,rpmcc.h>
+    clock-controller@1400000 {
+        compatible = "qcom,gcc-qcm2290";
+        reg = <0x01400000 0x1f0000>;
+        #clock-cells = <1>;
+        #reset-cells = <1>;
+        #power-domain-cells = <1>;
+        clock-names = "bi_tcxo", "sleep_clk";
+        clocks = <&rpmcc RPM_SMD_XO_CLK_SRC>, <&sleep_clk>;
+    };
+...
-- 
2.17.1


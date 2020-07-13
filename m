Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5C65021AEBB
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2020 07:30:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727873AbgGJF3k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Jul 2020 01:29:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727906AbgGJF3i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Jul 2020 01:29:38 -0400
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com [IPv6:2607:f8b0:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B830C08C5DC
        for <devicetree@vger.kernel.org>; Thu,  9 Jul 2020 22:29:38 -0700 (PDT)
Received: by mail-pg1-x541.google.com with SMTP id e8so2015172pgc.5
        for <devicetree@vger.kernel.org>; Thu, 09 Jul 2020 22:29:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LrEMg7fVwuiooc5MLW1OYb4mtJllfG4D6r8RWT/b3sw=;
        b=CxKCCTLOKqqO7JWvU/G5EMfnstNxEKb1dka1ZqN2gIG0tl7r6OoXteASnNM0OuOmCn
         uY37q2IhPbR0YnDfVYWZMQ/jZB0/KhlzbFs9uwB0acc6hJFqwNOqdw6YOGtzC88zBQ4R
         j7Ogf3SCL+KGm3OMvpbOyQsiQSGToa3Iid991VeWl0voTzjusSj6CrR3OnfIHdw2P+Kf
         mA4BVnwGiWJDxOuYGb6R9DGHBOiBORWpDl8UtnguLLpJrgVL+dYL5c31cYfhyc8wD2Dq
         B8TGiOMoNF4quqpHNPd5BmsoWRl6DyTlMYDNR+wKYlmdQE1CFBJuC7T+LMd9kWZCCQoX
         btgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LrEMg7fVwuiooc5MLW1OYb4mtJllfG4D6r8RWT/b3sw=;
        b=EFElaH/mUGqoJOIEzEoC5ulzEt6uc4DsLpvNyZ2/pwA8/W1BuoV6x5DFGevVx0Qm7i
         rkPiGZxDoYH9zSj85+wQOJpK1O6Wh4MI2ysa7R+jYzAu0sEB3Bwdvv85itPljNkIbevx
         CPCkm/6C2uvW+zeect4QpubFDPKeiBv+b9RVlw2MvoYrUbZw6z+e8xAo2OnVbesvMfp6
         wgZfdaDkhmXX0scWKsUkv3Wx0XPCZn9HXCOdIs1AA+USNPRljcPW6JPuPXfZZ9nez6uS
         pS2qIhe3Rwgqb5jIQmpYZc2yJVYeqpueKoVPUHZRpS5+xrvM1j7no//v7gX6xmkbBObZ
         9hMw==
X-Gm-Message-State: AOAM533h5uJb5jkroB7LanC5KjG2i8I1GVGtEWTqV5rm/4EkECdW2BH1
        rogrpIelxhDmoTCRzhjB6KmjYg==
X-Google-Smtp-Source: ABdhPJwX7+CmXa7FuhunOH1xpkGPJKpy0u3E/VAJrdFNV4DOCgfMEFsbbZh56sxg2zimQmCSMTFMyA==
X-Received: by 2002:a05:6a00:1510:: with SMTP id q16mr58657852pfu.164.1594358978017;
        Thu, 09 Jul 2020 22:29:38 -0700 (PDT)
Received: from nagraj.local ([49.206.21.239])
        by smtp.gmail.com with ESMTPSA id j17sm4168320pgn.87.2020.07.09.22.29.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jul 2020 22:29:37 -0700 (PDT)
From:   Sumit Semwal <sumit.semwal@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org
Cc:     nishakumari@codeaurora.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        kgunda@codeaurora.org, rnayak@codeaurora.org,
        Sumit Semwal <sumit.semwal@linaro.org>
Subject: [RESEND PATCH v5 2/4] dt-bindings: regulator: Add labibb regulator
Date:   Fri, 10 Jul 2020 10:59:17 +0530
Message-Id: <20200710052919.2611-3-sumit.semwal@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200710052919.2611-1-sumit.semwal@linaro.org>
References: <20200710052919.2611-1-sumit.semwal@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Nisha Kumari <nishakumari@codeaurora.org>

Adding the devicetree binding for labibb regulator.

Signed-off-by: Nisha Kumari <nishakumari@codeaurora.org>
Signed-off-by: Sumit Semwal <sumit.semwal@linaro.org>
 [sumits: cleanup as per review comments and update to yaml]

---
v5: Addressed review comments - removed interrupt-names, changed to
     dual license, added unevaluatedProperties: false
v4: fixed dt_binding_check issues
v3: moved to yaml
v2: updated for better compatible string and names.
---
 .../regulator/qcom-labibb-regulator.yaml      | 70 +++++++++++++++++++
 1 file changed, 70 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/regulator/qcom-labibb-regulator.yaml

diff --git a/Documentation/devicetree/bindings/regulator/qcom-labibb-regulator.yaml b/Documentation/devicetree/bindings/regulator/qcom-labibb-regulator.yaml
new file mode 100644
index 000000000000..085cbd1ad8d0
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/qcom-labibb-regulator.yaml
@@ -0,0 +1,70 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/regulator/qcom-labibb-regulator.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm's LAB(LCD AMOLED Boost)/IBB(Inverting Buck Boost) Regulator
+
+maintainers:
+  - Sumit Semwal <sumit.semwal@linaro.org>
+
+description:
+  LAB can be used as a positive boost power supply and IBB can be used as a
+  negative boost power supply for display panels. Currently implemented for
+  pmi8998.
+
+properties:
+  compatible:
+    const: qcom,pmi8998-lab-ibb
+
+  lab:
+    type: object
+
+    properties:
+
+      interrupts:
+        maxItems: 1
+        description:
+          Short-circuit interrupt for lab.
+
+    required:
+    - interrupts
+
+  ibb:
+    type: object
+
+    properties:
+
+      interrupts:
+        maxItems: 1
+        description:
+          Short-circuit interrupt for lab.
+
+    required:
+    - interrupts
+
+required:
+  - compatible
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    labibb {
+      compatible = "qcom,pmi8998-lab-ibb";
+
+      lab {
+        interrupts = <0x3 0x0 IRQ_TYPE_EDGE_RISING>;
+        interrupt-names = "sc-err";
+      };
+
+      ibb {
+        interrupts = <0x3 0x2 IRQ_TYPE_EDGE_RISING>;
+        interrupt-names = "sc-err";
+      };
+    };
+
+...
-- 
2.27.0


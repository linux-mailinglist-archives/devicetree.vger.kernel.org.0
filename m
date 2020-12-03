Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 465112CDE92
	for <lists+devicetree@lfdr.de>; Thu,  3 Dec 2020 20:14:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727366AbgLCTO0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Dec 2020 14:14:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727331AbgLCTO0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Dec 2020 14:14:26 -0500
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10722C061A4E
        for <devicetree@vger.kernel.org>; Thu,  3 Dec 2020 11:13:40 -0800 (PST)
Received: by mail-lj1-x22d.google.com with SMTP id o24so3788677ljj.6
        for <devicetree@vger.kernel.org>; Thu, 03 Dec 2020 11:13:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=OfnUgcdg9AtFNP6j8dPEN24viPfWPPxj5QhQUOX7X+4=;
        b=xgVJWH/JDVeUwyEnGOmoMtu2OwOGb+vMbVFjDY9clZKS7uXzABNaRxTiR09jsyJ1Ru
         GjhZaWXm3rgfMM1yi80lk2YXnotigB28CMMu1NvUYeC5wjsd0CeLEUXYJ3mOtBjUUUMg
         BdD9xFEnJsTGuIlJb1WoZnmtNBLAu/5e3bgOKOWuHrCTRBS5FIQQcj+Zx6u85lIQc3WC
         HAH4QJ5WKfQMp18XY8804yNi9jxfXWzLF+AMXMgpy/aqP2cwFFQXahPCn9G6fhkEkt22
         MW7qDpFYNv8pKoXpP2GDTMEqPvcNHgBCnZKU3ByLmB/EGZrsfJhWwg3F1Wqt5Ubsl99t
         4BJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=OfnUgcdg9AtFNP6j8dPEN24viPfWPPxj5QhQUOX7X+4=;
        b=FhXFDDkbYqOmYLV47ESi/mXanGT0mu5aK27jMVQBLbR1rEV509PF4ZSCC/gOWjEPI+
         PHaSXdSSBEqt0WQMfoslGWmiTvWync6POwtvs/Ml2Ge7hGykpz4smzRf9PBAHMisxUNz
         xbhCsllrjOpYPYvB6fbVrnDZz7lOzupai0bh8sKl0z9pDIfGeu+cbMu6Pf9UDCvS7W+B
         puyXK+08g3Hx82X5xg+MNpVWuNXxwGwcPzqyVr9NygEQLTlBadHkLedsHDsu4KLivRql
         wSke5qeKz6jcDptu/VP3R4Zx9anB3h1VdFPfj12WkpQNAyFnRBCKyFhWK4RVraA8O4af
         lM1Q==
X-Gm-Message-State: AOAM530JwBF7/JPXgKtDwb1QpY8qNOwanCtHSxm+yC8VE6v/JaY4MH1n
        aORO1q0NlffX2rq+OlCi3/FaWg==
X-Google-Smtp-Source: ABdhPJyCfzkpCXPSJ71DnOMvlYOSEj/GcWiu8eSyz1W17/5is9mWStaH0u6dEYmDlOiMjFyv7IKleQ==
X-Received: by 2002:a05:651c:14d:: with SMTP id c13mr1793980ljd.153.1607022818414;
        Thu, 03 Dec 2020 11:13:38 -0800 (PST)
Received: from eriador.lumag.spb.ru ([188.162.64.117])
        by smtp.gmail.com with ESMTPSA id x10sm102472lfn.307.2020.12.03.11.13.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Dec 2020 11:13:37 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: soc: qcom: convert qcom,smem bindings to yaml
Date:   Thu,  3 Dec 2020 22:13:34 +0300
Message-Id: <20201203191335.927001-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert soc/qcom/qcom,smem.txt bindings to YAML format.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../bindings/soc/qcom/qcom,smem.txt           | 57 --------------
 .../bindings/soc/qcom/qcom,smem.yaml          | 74 +++++++++++++++++++
 2 files changed, 74 insertions(+), 57 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/soc/qcom/qcom,smem.txt
 create mode 100644 Documentation/devicetree/bindings/soc/qcom/qcom,smem.yaml

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,smem.txt b/Documentation/devicetree/bindings/soc/qcom/qcom,smem.txt
deleted file mode 100644
index 9326cdf6e1b1..000000000000
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,smem.txt
+++ /dev/null
@@ -1,57 +0,0 @@
-Qualcomm Shared Memory Manager binding
-
-This binding describes the Qualcomm Shared Memory Manager, used to share data
-between various subsystems and OSes in Qualcomm platforms.
-
-- compatible:
-	Usage: required
-	Value type: <stringlist>
-	Definition: must be:
-		    "qcom,smem"
-
-- memory-region:
-	Usage: required
-	Value type: <prop-encoded-array>
-	Definition: handle to memory reservation for main SMEM memory region.
-
-- qcom,rpm-msg-ram:
-	Usage: required
-	Value type: <prop-encoded-array>
-	Definition: handle to RPM message memory resource
-
-- hwlocks:
-	Usage: required
-	Value type: <prop-encoded-array>
-	Definition: reference to a hwspinlock used to protect allocations from
-		    the shared memory
-
-= EXAMPLE
-The following example shows the SMEM setup for MSM8974, with a main SMEM region
-at 0xfa00000 and the RPM message ram at 0xfc428000:
-
-	reserved-memory {
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges;
-
-		smem_region: smem@fa00000 {
-			reg = <0xfa00000 0x200000>;
-			no-map;
-		};
-	};
-
-	smem@fa00000 {
-		compatible = "qcom,smem";
-
-		memory-region = <&smem_region>;
-		qcom,rpm-msg-ram = <&rpm_msg_ram>;
-
-		hwlocks = <&tcsr_mutex 3>;
-	};
-
-	soc {
-		rpm_msg_ram: memory@fc428000 {
-			compatible = "qcom,rpm-msg-ram";
-			reg = <0xfc428000 0x4000>;
-		};
-	};
diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,smem.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,smem.yaml
new file mode 100644
index 000000000000..1ddeb25cbdc1
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,smem.yaml
@@ -0,0 +1,74 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/soc/qcom/qcom,smem.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Qualcomm Shared Memory Manager binding
+
+maintainers:
+  - Andy Gross <agross@kernel.org>
+  - Bjorn Andersson <bjorn.andersson@linaro.org>
+
+description: |
+  This binding describes the Qualcomm Shared Memory Manager, used to share data
+  between various subsystems and OSes in Qualcomm platforms.
+
+properties:
+  compatible:
+    enum:
+      - "qcom-smem"
+
+  memory-region:
+    maxItems: 1
+    description: handle to memory reservation for main SMEM memory region.
+
+  hwlocks:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: reference to a hwspinlock used to protect allocations from the shared memory
+
+  qcom,rpm-msg-ram:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: handle to RPM message memory resource
+
+required:
+  - compatible
+  - memory-region
+  - hwlocks
+
+additionalProperties: false
+
+examples:
+  - |
+    reserved-memory {
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges;
+
+        smem_region: smem@fa00000 {
+            reg = <0xfa00000 0x200000>;
+            no-map;
+        };
+    };
+
+    smem {
+        compatible = "qcom,smem";
+
+        memory-region = <&smem_region>;
+        qcom,rpm-msg-ram = <&rpm_msg_ram>;
+
+        hwlocks = <&tcsr_mutex 3>;
+    };
+
+    soc {
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges;
+
+        rpm_msg_ram: memory@fc428000 {
+            compatible = "qcom,rpm-msg-ram";
+            reg = <0xfc428000 0x4000>;
+        };
+    };
+
+...
-- 
2.29.2


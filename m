Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 624173BABD8
	for <lists+devicetree@lfdr.de>; Sun,  4 Jul 2021 09:41:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229563AbhGDHns (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 4 Jul 2021 03:43:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229540AbhGDHnr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 4 Jul 2021 03:43:47 -0400
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com [IPv6:2607:f8b0:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83002C061764
        for <devicetree@vger.kernel.org>; Sun,  4 Jul 2021 00:41:12 -0700 (PDT)
Received: by mail-pf1-x42d.google.com with SMTP id s14so13657283pfg.0
        for <devicetree@vger.kernel.org>; Sun, 04 Jul 2021 00:41:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=BVkVvoLhlvv3KppO1b0TRg6fddRYWUrnF61FALx2Tlg=;
        b=L104DLL8FcAW/cRK4M1tuNWAZxySEdyg7SYSbJBWAGDXZfpbvHFajRY/8sKBUgXWKm
         FCMOVrvRf1PmvmNIwaPoQBV6tTwpyqhMQklB5lCJPall/PgB+ctWH87wNjuyIz46yh1c
         UelpuJJMgvmUCjHHpErgWIKL1p+s3f/ykwUyvolIZCsY8vAI2y+jWPT6LUenekoGd89a
         e7AduzCvwA1mnFLMMA5YuSut8G/Ji8KrIvTCH08ybVPikuA4kiQV89/AsbX/in0YRnup
         iXte75oOPu+9uJ8NAqCaecHxRMU8Zmn7FWOGOaYuZYtJJsQ6qq2gudbsvOtxItC/n1r8
         sAHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=BVkVvoLhlvv3KppO1b0TRg6fddRYWUrnF61FALx2Tlg=;
        b=Ew0OzuAEXiUGIuS46sxGy4/U4l82psJ5FkR8omljLuxcFQS1OnMDZfQ97l+y7+F1zY
         ZrOsaPXdSzaLHhbbsWHJfHDhzFmstpbnZdKQFoYD/iR4hptgs3v7wwPrfzu0ruLea5iC
         I+TK7jUA5Y0EwuLcKA4oae8AMrbjLba/8k8PczTUndvj89rV/mZ8XZngWk2O0pCvyNc/
         bXBlzv6a1bXdyJGedTjZwqItgR5/915e+9GLiqBaxkjTrA9HtNSf3yf6XBpRn8v1OwYE
         17s11+rXRyVNDGGcAvfzqsc/BdAX1QjSDIG+iufLe3Xb7P5RuakpR753ZhNVoY6ck+ME
         EQDw==
X-Gm-Message-State: AOAM533I/g0WiskhGZ8ayNnwXUNn8BzQCqY6qpxnkh+UKvQDEsFLdW+z
        NjuVo1inpdvO516tYh/KR7PPng==
X-Google-Smtp-Source: ABdhPJxMsKdlrrke3nZmg678vp0ECRSg02fRH0TGnsIwhRe9oCS96zdfgouNd+A453lg26+DSpieqA==
X-Received: by 2002:aa7:86c4:0:b029:316:98ff:30c with SMTP id h4-20020aa786c40000b029031698ff030cmr8605594pfo.66.1625384472105;
        Sun, 04 Jul 2021 00:41:12 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id gz24sm7052956pjb.0.2021.07.04.00.41.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Jul 2021 00:41:11 -0700 (PDT)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Sebastian Reichel <sre@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org, Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH 1/3] dt-bindings: power: reset: Convert qcom,pon to DT schema
Date:   Sun,  4 Jul 2021 15:40:43 +0800
Message-Id: <20210704074045.21643-2-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210704074045.21643-1-shawn.guo@linaro.org>
References: <20210704074045.21643-1-shawn.guo@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

It converts qcom,pon DT bindings from legacy bare text to YAML format.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 .../bindings/power/reset/qcom,pon.txt         | 49 -------------------
 .../bindings/power/reset/qcom,pon.yaml        | 49 +++++++++++++++++++
 2 files changed, 49 insertions(+), 49 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/power/reset/qcom,pon.txt
 create mode 100644 Documentation/devicetree/bindings/power/reset/qcom,pon.yaml

diff --git a/Documentation/devicetree/bindings/power/reset/qcom,pon.txt b/Documentation/devicetree/bindings/power/reset/qcom,pon.txt
deleted file mode 100644
index 0c0dc3a1e693..000000000000
--- a/Documentation/devicetree/bindings/power/reset/qcom,pon.txt
+++ /dev/null
@@ -1,49 +0,0 @@
-Qualcomm PON Device
-
-The Power On device for Qualcomm PM8xxx is MFD supporting pwrkey
-and resin along with the Android reboot-mode.
-
-This DT node has pwrkey and resin as sub nodes.
-
-Required Properties:
--compatible: Must be one of:
-	"qcom,pm8916-pon"
-	"qcom,pms405-pon"
-	"qcom,pm8998-pon"
-
--reg: Specifies the physical address of the pon register
-
-Optional subnode:
--pwrkey: Specifies the subnode pwrkey and should follow the
- qcom,pm8941-pwrkey.txt description.
--resin: Specifies the subnode resin and should follow the
- qcom,pm8xxx-pwrkey.txt description.
-
-The rest of the properties should follow the generic reboot-mode description
-found in reboot-mode.txt
-
-Example:
-
-	pon@800 {
-		compatible = "qcom,pm8916-pon";
-
-		reg = <0x800>;
-		mode-bootloader = <0x2>;
-		mode-recovery = <0x1>;
-
-		pwrkey {
-			compatible = "qcom,pm8941-pwrkey";
-			interrupts = <0x0 0x8 0 IRQ_TYPE_EDGE_BOTH>;
-			debounce = <15625>;
-			bias-pull-up;
-			linux,code = <KEY_POWER>;
-		};
-
-		resin {
-			compatible = "qcom,pm8941-resin";
-			interrupts = <0x0 0x8 1 IRQ_TYPE_EDGE_BOTH>;
-			debounce = <15625>;
-			bias-pull-up;
-			linux,code = <KEY_VOLUMEDOWN>;
-		};
-	};
diff --git a/Documentation/devicetree/bindings/power/reset/qcom,pon.yaml b/Documentation/devicetree/bindings/power/reset/qcom,pon.yaml
new file mode 100644
index 000000000000..7764c804af1d
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/reset/qcom,pon.yaml
@@ -0,0 +1,49 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/power/reset/qcom,pon.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm PON Device
+
+maintainers:
+  - Vinod Koul <vkoul@kernel.org>
+
+description: |
+  The Power On device for Qualcomm PM8xxx is MFD supporting pwrkey
+  and resin along with the Android reboot-mode.
+
+properties:
+  compatible:
+    enum:
+      - qcom,pm8916-pon
+      - qcom,pms405-pon
+      - qcom,pm8998-pon
+
+  reg:
+    maxItems: 1
+
+patternProperties:
+  "^mode-.+":
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Vendor-specific mode value written to the mode register
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    pmic {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        pon@800 {
+            compatible = "qcom,pm8916-pon";
+            reg = <0x800>;
+            mode-bootloader = <0x2>;
+            mode-recovery = <0x1>;
+        };
+    };
-- 
2.17.1


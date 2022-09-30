Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 10BB85F14A8
	for <lists+devicetree@lfdr.de>; Fri, 30 Sep 2022 23:21:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231669AbiI3VU6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Sep 2022 17:20:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229646AbiI3VU5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Sep 2022 17:20:57 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89CAF15D842
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 14:20:55 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id x29so6074081ljq.2
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 14:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=lhaby7j3gERoVvr8BXESs3foezuex+PKOYwtRxR26u8=;
        b=Ta4Ew9QmLExdVhpudSWIjNC/U1PChC+pYFw0LVmKXnPWrkXgnLwkxdkXENsiY0dA5K
         y7dth3+Tu5xWxr2X4F7M3BtxyBMY4Aogt7UIjqgq+K3yYXCLnkQy8LjxsxTXLrrtJfyU
         O2MAhVFkYW0DgXzALQWjAjyCzycWgv/PKixT/kYIXUDZPbHIavo8HUBY0tYiXdxhaN8e
         XeFdIl/7Gdfxe5t/Y0ZoiFyl//lPaqQYLlkkK6AYW8q5C0t9tCo3yXwhiJXqlDtkY8If
         GKEdndf6m6LKu+BDhIgmhKwaOYh9KIs0ZwhKc+rrZ5Mt51Ioz23qBY1liEkyUFxblBXj
         +ZbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=lhaby7j3gERoVvr8BXESs3foezuex+PKOYwtRxR26u8=;
        b=Sqvw6MJP0TvhnwsH28b8R7OT2zE4mcHYBbVjYoPtiKC4LAF2EZvBC3HfvnzK4AX58X
         b/JQWLfBI/RV7Wbvf4atEhqY9s3wtp1D05JjjngLaO5HWNWH5qVHoYvwVYLZQVnMAe0G
         3SBfE/TrA69J7wBsCJ6G1gr1owFdRROO29QCJ8H1fbPDKjoOkN4X6sJvvIXTCl903r7b
         g6bB3mgOYxUw62K69mjYC8EiiUiXiXUggY4iLTJKWmy9DwW4qnlIPJa+QW/lER9p3L5m
         PtSFtSDlxkEA/2sbM0WAHlNxEoCR9VG3h75sL7ClckmNEhia/BVkMM+0oWor4y3KcyaA
         M9tA==
X-Gm-Message-State: ACrzQf09QH6kEVQ53ET81PixnSldgFlWheHSJAsagUwV5vvBung74KAc
        q4PZ/ptSm6tA9qk/xSfp1Wpxbw==
X-Google-Smtp-Source: AMsMyM6FZkLuMhoJIGt8dawyL0w9IjpBg/Rx39NHvGI7cCWBTqb8zjudGOGMSpfe8i16QP43mmZnDA==
X-Received: by 2002:a2e:921a:0:b0:26c:1166:6666 with SMTP id k26-20020a2e921a000000b0026c11666666mr3424180ljg.128.1664572853857;
        Fri, 30 Sep 2022 14:20:53 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id b18-20020a056512305200b00492dba3c85asm431397lfb.220.2022.09.30.14.20.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Sep 2022 14:20:53 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: soc: qcom: YAML-ify SSBI bindings
Date:   Sat,  1 Oct 2022 00:20:51 +0300
Message-Id: <20220930212052.894834-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert arm/msm/ssbi.txt yo YAML, moving it to the directory with SoC
bindings (soc/qcom/).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/arm/msm/ssbi.txt      | 18 ------
 .../bindings/soc/qcom/qcom,ssbi.yaml          | 63 +++++++++++++++++++
 2 files changed, 63 insertions(+), 18 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/msm/ssbi.txt
 create mode 100644 Documentation/devicetree/bindings/soc/qcom/qcom,ssbi.yaml

diff --git a/Documentation/devicetree/bindings/arm/msm/ssbi.txt b/Documentation/devicetree/bindings/arm/msm/ssbi.txt
deleted file mode 100644
index 54fd5ced3401..000000000000
--- a/Documentation/devicetree/bindings/arm/msm/ssbi.txt
+++ /dev/null
@@ -1,18 +0,0 @@
-* Qualcomm SSBI
-
-Some Qualcomm MSM devices contain a point-to-point serial bus used to
-communicate with a limited range of devices (mostly power management
-chips).
-
-These require the following properties:
-
-- compatible: "qcom,ssbi"
-
-- qcom,controller-type
-  indicates the SSBI bus variant the controller should use to talk
-  with the slave device.  This should be one of "ssbi", "ssbi2", or
-  "pmic-arbiter".  The type chosen is determined by the attached
-  slave.
-
-The slave device should be the single child node of the ssbi device
-with a compatible field.
diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,ssbi.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,ssbi.yaml
new file mode 100644
index 000000000000..6154f7222899
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,ssbi.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/soc/qcom/qcom,ssbi.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Qualcomm Single-wire Serial Bus Interface (SSBI)
+
+description:
+  Some Qualcomm MSM devices contain a point-to-point serial bus used to
+  communicate with a limited range of devices (mostly power management
+  chips).
+
+maintainers:
+  - Andy Gross <agross@kernel.org>
+  - Bjorn Andersson <andersson@kernel.org>
+
+properties:
+  compatible:
+    const: qcom,ssbi
+
+  reg:
+    maxItems: 1
+
+  qcom,controller-type:
+    description:
+      Indicates the SSBI bus variant the controller should use to talk
+      with the slave device. The type chosen is determined by the attached
+      slave.
+    enum:
+      - ssbi
+      - ssbi2
+      - pmic-arbiter
+
+  pmic:
+    type: object
+
+required:
+  - compatible
+  - reg
+  - qcom,controller-type
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    ssbi@c00000 {
+        compatible = "qcom,ssbi";
+        reg = <0x00c00000 0x1000>;
+        qcom,controller-type = "pmic-arbiter";
+
+        pmic {
+            compatible = "qcom,pm8821";
+            interrupt-parent = <&msmgpio>;
+            interrupts = <76 IRQ_TYPE_LEVEL_LOW>;
+            #interrupt-cells = <2>;
+            interrupt-controller;
+            #address-cells = <1>;
+            #size-cells = <0>;
+        };
+    };
+...
-- 
2.35.1


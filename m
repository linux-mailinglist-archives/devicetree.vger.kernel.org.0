Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A48516BF9E0
	for <lists+devicetree@lfdr.de>; Sat, 18 Mar 2023 13:18:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229798AbjCRMS4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 18 Mar 2023 08:18:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229866AbjCRMSv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 18 Mar 2023 08:18:51 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5ECD3BD89
        for <devicetree@vger.kernel.org>; Sat, 18 Mar 2023 05:18:44 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id bg16-20020a05600c3c9000b003eb34e21bdfso6535165wmb.0
        for <devicetree@vger.kernel.org>; Sat, 18 Mar 2023 05:18:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679141924;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kmhAneZaAlmWW9bghs/uPFpD4YYuHAdYFsrvbdKAhWg=;
        b=fdegTtX0ArzzAVQgtxqPEWd1rY6tz416Sf6+aphRty7zbQdD3CnlxOv3SAR9VmM2F1
         Xf7++SVP0uSUWOBMm16RQm50yOgHNgrK4YdGl90MLa9m2BWtdAL0ja5ldyMObA+jKLlY
         YAVusGNkWjwa9bX3LgAAYd/V3+PLSJoVmCdTuvNn6bYQvo+mIFozyMZ5RVCSZPTU5e7K
         LUXG0LWn5HQyrGezv/pqwKvsbTac4iLulEIKXoOSmhsvTnDqGciS8lXMFbgSNZ2tFunB
         S9mnkBKA5wcn6sMrBeb34gDrb9FC5VKEXi5Am5e0VFQJb42fdIn0ViQGvhkDBpFX7PYb
         JtBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679141924;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kmhAneZaAlmWW9bghs/uPFpD4YYuHAdYFsrvbdKAhWg=;
        b=nonaOkfp/0BOLPyFAqQPDH20a+zeb//DJXxYCVmJpepf1ETW285j4d+PZ9/f5DJUBG
         Uu+zk31HOR2kRWNI/EZN+FSGwiqsStzJBMhfk7SLr0b6cQUrP3vEKQgMwWYQ/KB+snfK
         NAIzm2TvWBehwQZgqAlOOp0rtZeyCtuwd9vxF2OU1aY5DU8ds678sOqFiemUdtxOmmeC
         /fdserzsOBnkr2qvpbOuIupBKm6o3eYAygnPUSTMQxljUlIMdWXDSQ5WBv/yC1jVH2kH
         b2KhoRc2W5uE6/y6I8HdwlGKTIwFwpbGvj2yEwZx0wF+264Pi5+cSvpAySNgBG0x78hv
         BSJg==
X-Gm-Message-State: AO0yUKUjl7f9rDDpD+Uye+pPJhCX6GJ0JIcAxMGs9wmfR+xluNigc57v
        QutpL6fhHUUZlx+ZTHVtNlEjGg==
X-Google-Smtp-Source: AK7set+sTySfoJ57o27rpr0isEzIgS4OofwKP0cnf9gsEujcPk6W68xzuo5zqsFvh17HdFW01BpcPw==
X-Received: by 2002:a05:600c:35ce:b0:3e2:1368:e3a0 with SMTP id r14-20020a05600c35ce00b003e21368e3a0mr28066551wmq.18.1679141923883;
        Sat, 18 Mar 2023 05:18:43 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id az40-20020a05600c602800b003e2096da239sm10814997wmb.7.2023.03.18.05.18.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Mar 2023 05:18:43 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     linux@roeck-us.net, heikki.krogerus@linux.intel.com,
        gregkh@linuxfoundation.org, andersson@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-usb@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     wcheng@codeaurora.org, caleb.connolly@linaro.org,
        bryan.odonoghue@linaro.org, konrad.dybcio@linaro.org,
        subbaram@quicinc.com, jackp@quicinc.com, robertom@qti.qualcomm.com
Subject: [PATCH v4 09/18] dt-bindings: usb: Add Qualcomm PMIC TCPM YAML schema
Date:   Sat, 18 Mar 2023 12:18:19 +0000
Message-Id: <20230318121828.739424-10-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230318121828.739424-1-bryan.odonoghue@linaro.org>
References: <20230318121828.739424-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a YAML description for the pm8150b-tcpm driver. The pm8150b-tcpm
encapsulates a type-c block and a pdphy block into one block presented to
the TCPM Linux API.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../bindings/usb/qcom,pmic-virt-tcpm.yaml     | 88 +++++++++++++++++++
 1 file changed, 88 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/qcom,pmic-virt-tcpm.yaml

diff --git a/Documentation/devicetree/bindings/usb/qcom,pmic-virt-tcpm.yaml b/Documentation/devicetree/bindings/usb/qcom,pmic-virt-tcpm.yaml
new file mode 100644
index 0000000000000..576842c8b65b4
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/qcom,pmic-virt-tcpm.yaml
@@ -0,0 +1,88 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/usb/qcom,pmic-virt-tcpm.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Qualcomm PMIC Virtual TCPM Driver
+
+maintainers:
+  - Bryan O'Donoghue <bryan.odonoghue@linaro.org>
+
+description: |
+  Qualcomm PMIC Virtual Type-C Port Manager Driver
+  A virtual device which manages Qualcomm PMIC provided Type-C port and
+  Power Delivery in one place.
+
+properties:
+  compatible:
+    const: qcom,pmic-virt-tcpm
+
+  connector:
+    type: object
+    $ref: /schemas/connector/usb-connector.yaml#
+    unevaluatedProperties: false
+
+  port:
+    $ref: /schemas/graph.yaml#/properties/port
+    description:
+      Contains a port which consumes data-role switching messages.
+
+  qcom,pmic-typec:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      A phandle to the typec port hardware driver.
+
+  qcom,pmic-pdphy:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      A phandle to the type-c pdphy hardware driver.
+
+required:
+  - compatible
+  - connector
+  - port
+  - qcom,pmic-typec
+  - qcom,pmic-pdphy
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/usb/pd.h>
+    #include <dt-bindings/usb/typec/qcom,pmic-typec.h>
+    #include <dt-bindings/usb/typec/qcom,pmic-pdphy.h>
+
+    pm8150b_tcpm: pmic-tcpm {
+        compatible = "qcom,pmic-virt-tcpm";
+
+        qcom,pmic-typec = <&pm8150b_typec>;
+        qcom,pmic-pdphy = <&pm8150b_pdphy>;
+
+        port {
+            usb3_role: endpoint {
+                remote-endpoint = <&dwc3_drd_switch>;
+            };
+        };
+
+        connector {
+            compatible = "usb-c-connector";
+
+            power-role = "source";
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+                    pmic_tcpm_ss_mux: endpoint {
+                        remote-endpoint = <&qmp_ss_mux>;
+                    };
+                };
+            };
+        };
+    };
+
+...
-- 
2.39.2


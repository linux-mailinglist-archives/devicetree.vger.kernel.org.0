Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2827E597C12
	for <lists+devicetree@lfdr.de>; Thu, 18 Aug 2022 05:14:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243000AbiHRDMz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Aug 2022 23:12:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242721AbiHRDMx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Aug 2022 23:12:53 -0400
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BAA49C214
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 20:12:47 -0700 (PDT)
Received: by mail-ot1-x32c.google.com with SMTP id o15-20020a9d718f000000b00638c1348012so419042otj.2
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 20:12:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=GQFmAc0wdB7GHsSQnINPPjoZnNOpY1CvMWtY7tnEX8w=;
        b=OA25OLaCk+459M3uXFt6n6H3XgA2uosfnEey7oav4eZqm3WBcpamB1ptMjmhy6a6bz
         TjoX7yNR2Ix2iuZWRmN2NMD7gnJVC8GmIZLF18gONFJZkD+F2PgMAJkkaEmQJotl1k07
         8G4q3rb5w4FcO5YzHteiWIn3ccfYhN5ufiX1bjt0AftVq/bG90ZyaK3bXMUyh1jxAcIq
         jAJGcl1d0raKYBTWTtS7VLH1NUpctF8j1ZnpvH++v72ZgqDSpkh8N+a84i5rG49u/0MB
         fxE6inqs+lYlcmMsn9sT+PD+pK8SBFbvWQowP3FrRZs3K3JUojlxtc0MfUTS21KKViiF
         60ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=GQFmAc0wdB7GHsSQnINPPjoZnNOpY1CvMWtY7tnEX8w=;
        b=K9KbMbknJ2PLLr4bdFMqx29ZgoXTC3NCUEaABtEZEfkAuSsRC4hMoz4PsW6yLa3SV2
         aEhXr3WdFaY48kvqex1jGjjywjUZYalNL9M8cPYD3PPM1mW1SNf/ecR6Q1kKa4C6NwJZ
         wTTyAgpBsf5qTpwFLLBAzqD6ABdjvGxa3zysAgcWR3OroWulzlXtsr5uvD9qoXQVidOB
         zoWAfY5lAfsvY59HjUgeT8Et+ZCw3oJDIXbK2JJjmsCWoCNElHiJN/DdmoIP0Zv6EDZW
         bGDG9NqjzBMlvJc0IUGdAHiULcw9JRfkHQKBjIGvXFtDHebTU791QXDQZ2ExCQ7dObv7
         Y1Fg==
X-Gm-Message-State: ACgBeo0PX08BACUOs6iD1KIbmqfUJzdhRxSCEYR+yAwEjQ3RsxP81+UR
        LIVGISkWtGtPP6fnH6TAU0B9cw==
X-Google-Smtp-Source: AA6agR6MMCZwx8yBytq107dHizblHSu0bcKFP/9O8f2+DwtcbXaTJIOnEQ2fxnHUf+eSswQHIu0h2w==
X-Received: by 2002:a05:6830:44a3:b0:637:c53:5f55 with SMTP id r35-20020a05683044a300b006370c535f55mr448415otv.256.1660792366376;
        Wed, 17 Aug 2022 20:12:46 -0700 (PDT)
Received: from ripper.. (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id l6-20020a056871068600b0011c25975c1dsm112382oao.25.2022.08.17.20.12.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Aug 2022 20:12:45 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sebastian Reichel <sre@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Subject: [PATCH 1/4] dt-bindings: soc: qcom: Introduce PMIC GLINK binding
Date:   Wed, 17 Aug 2022 20:15:09 -0700
Message-Id: <20220818031512.319310-2-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220818031512.319310-1-bjorn.andersson@linaro.org>
References: <20220818031512.319310-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
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

The PMIC GLINK service, running on a coprocessor on some modern Qualcomm
platforms and implement USB Type-C handling and battery management.
This binding describes the component in the OS used to communicate with
the firmware and connect it's resources to those described in the
Devicetree, particularly the USB Type-C controllers relationship with
USB and DisplayPort components.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 .../bindings/soc/qcom/qcom,pmic-glink.yaml    | 98 +++++++++++++++++++
 1 file changed, 98 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
new file mode 100644
index 000000000000..3261f9d27a47
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
@@ -0,0 +1,98 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/qcom/qcom,pmic-glink.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm PMIC GLINK firmware interface for battery management, USB
+  Type-C and other things.
+
+maintainers:
+  - Bjorn Andersson <bjorn.andersson@linaro.org>
+
+description:
+  The PMIC GLINK service, running on a coprocessor on some modern Qualcomm
+  platforms and implement USB Type-C handling and battery management. This
+  binding describes the component in the OS used to communicate with the
+  firmware and connect it's resources to those described in the Devicetree,
+  particularly the USB Type-C controllers relationship with USB and DisplayPort
+  components.
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - qcom,sc8180x-pmic-glink
+          - qcom,sc8280xp-pmic-glink
+          - qcom,sm8350-pmic-glink
+      - const: qcom,pmic-glink
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+patternProperties:
+  '^connector@\d$':
+    $ref: /schemas/connector/usb-connector.yaml#
+    unevaluatedProperties: false
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |+
+    pmic-glink {
+        compatible = "qcom,sc8280xp-pmic-glink", "qcom,pmic-glink";
+
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        connector@0 {
+            compatible = "usb-c-connector";
+            reg = <0>;
+            power-role = "dual";
+            data-role = "dual";
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+                    endpoint {
+                        remote-endpoint = <&usb_role>;
+                    };
+                };
+
+                port@1 {
+                    reg = <1>;
+
+                    #address-cells = <1>;
+                    #size-cells = <0>;
+
+                    endpoint@0 {
+                        reg = <0>;
+                        remote-endpoint = <&qmp_out>;
+                    };
+
+                    endpoint@1 {
+                        reg = <1>;
+                        remote-endpoint = <&displayport_hpd>;
+                    };
+                };
+
+                port@2 {
+                    reg = <2>;
+                    endpoint {
+                        remote-endpoint = <&sbu_mux>;
+                    };
+                };
+            };
+        };
+    };
+...
+
-- 
2.35.1


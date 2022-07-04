Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1C78B565208
	for <lists+devicetree@lfdr.de>; Mon,  4 Jul 2022 12:21:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234139AbiGDKUb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jul 2022 06:20:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234374AbiGDKUH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Jul 2022 06:20:07 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADA0311460
        for <devicetree@vger.kernel.org>; Mon,  4 Jul 2022 03:18:31 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id z13so14908546lfj.13
        for <devicetree@vger.kernel.org>; Mon, 04 Jul 2022 03:18:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nK+dWoJDfR6ImhHlJu9yEcRBbILJCUUISJM4C5ncM4Y=;
        b=QIlyZ45QnxRnU54KJSmyY8z0MglHKV/krHYsQGvCRk03H37aZasLp9FBRt0mIpaXNX
         gUV3v5GBTd7Diq0kVsc1UwgF74Xb1ci3nCzmqZdiVUmFSUa/hVMi87Q4uqb+vme4hW52
         RXBnzR0mIrVAXV/po11MnhrfjAgKLl8+EGn/0EdeVxAE326i5SVPjWyFNs0oZltypfPg
         6Xf7JIiCtpo3p0wSrHTOkFTSVwa1I8P4uR/5lCdAxjCyvW4wNyEWkklZmmWq30KEYduG
         fdy8Xj+D9MylDHpkpcM/qOxA8FfBE1CLLakSuYeHgIylZmiEpI4vf/zOvoNHW/CQRaOK
         94EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nK+dWoJDfR6ImhHlJu9yEcRBbILJCUUISJM4C5ncM4Y=;
        b=GHMR4PZfo7HfgNO5Y/AVs+8Czm+RI7FKPWr0qqDpwmCmyeki9WzjPHrncvzHOVDYfa
         ypQxHrbBsxkloVdWa2EU1R/+VmLCjbLXuJ7cLFlYorTQ6CGIOPaeJIB5bJ6JKx7iEjgr
         29tZ/e0t4RpxBco/kFTUMBwK5WPP2swqhOPqhMsAEcJZ/H9VLknVcvHzgwMCwSjCLXuR
         EUUsOcoSRsDEk0FGKAio05rcJgrIZTRW6Y9MiWKWz+VCHsrRkD3PcK5u5221nWysgC+e
         IZrEAhyy9Hgp2RhoTmBDkVKXQe/jXESZAwJ86F2rPVQe9aDlsDEzGH2XqbULngbd3eYk
         a71g==
X-Gm-Message-State: AJIora9oyBwgE5nqUTUrr6E6cqoyqqkhvwAeTPQPoLP9EuGC4b/Gpqcm
        FPBGyr1Hp+jlYEZIdhdXe6A1ew==
X-Google-Smtp-Source: AGRyM1vk/DUUAlKArKx3qOlFGBDpgLEUpjxUfo/KdMVpcXc9wPxDTj1mRPaaYAHbj4VXJw62MRn+HQ==
X-Received: by 2002:a05:6512:118f:b0:47f:6a1a:20d4 with SMTP id g15-20020a056512118f00b0047f6a1a20d4mr16952990lfr.428.1656929909557;
        Mon, 04 Jul 2022 03:18:29 -0700 (PDT)
Received: from krzk-bin.home ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id e12-20020ac24e0c000000b00478a311d399sm5072523lfr.0.2022.07.04.03.18.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Jul 2022 03:18:29 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Vinod Koul <vkoul@kernel.org>, Alex Elder <elder@linaro.org>,
        Robert Foss <robert.foss@linaro.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>
Subject: [PATCH v2] dt-bindings: qcom: document preferred compatible naming
Date:   Mon,  4 Jul 2022 12:18:23 +0200
Message-Id: <20220704101823.82122-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

Compatibles can come in two formats.  Either "vendor,ip-soc" or
"vendor,soc-ip".  Qualcomm bindings were mixing both of usages, so add a
DT schema file documenting preferred policy and enforcing it for all new
compatibles, except few existing patterns.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes since v1:
1. Add schema instead of readme (Rob).

Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: Alex Elder <elder@linaro.org>
Cc: Robert Foss <robert.foss@linaro.org>
Cc: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 .../devicetree/bindings/arm/qcom-soc.yaml     | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/qcom-soc.yaml

diff --git a/Documentation/devicetree/bindings/arm/qcom-soc.yaml b/Documentation/devicetree/bindings/arm/qcom-soc.yaml
new file mode 100644
index 000000000000..1af1f16c13ab
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/qcom-soc.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/qcom-soc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SoC compatibles naming convention
+
+maintainers:
+  - Bjorn Andersson <bjorn.andersson@linaro.org>
+
+description: |
+  Guidelines for new compatibles for SoC blocks/components.
+  When adding new compatibles in new bindings, use the format::
+    qcom,SoC-IP
+
+  For example::
+   qcom,sdm845-llcc-bwmon
+
+  When adding new compatibles to existing bindings, use the format in the
+  existing binding, even if it contradicts the above.
+
+select:
+  properties:
+    compatible:
+      pattern: "^qcom,.*(apq|ipq|mdm|msm|qcs|sa|sc|sdm|sdx|sm)[0-9]+.*$"
+  required:
+    - compatible
+
+properties:
+  compatible:
+    oneOf:
+      - description: Preferred naming style for compatibles of SoC components
+        pattern: "^qcom,(apq|ipq|mdm|msm|qcs|sa|sc|sdm|sdx|sm)[0-9]+.*$"
+
+      # Legacy namings - variations of existing patterns/compatibles are OK,
+      # but do not add completely new entries to these:
+      - pattern: "^qcom,gcc-(apq|ipq|mdm|msm|qcs|sa|sc|sdm|sdx|sm)[0-9]+.*$"
+      - pattern: "^qcom,mmcc-(apq|ipq|mdm|msm|qcs|sa|sc|sdm|sdx|sm)[0-9]+.*$"
+      - pattern: "^qcom,pcie-(apq|ipq|mdm|msm|qcs|sa|sc|sdm|sdx|sm)[0-9]+.*$"
+      - pattern: "^qcom,rpm-(apq|ipq|mdm|msm|qcs|sa|sc|sdm|sdx|sm)[0-9]+.*$"
+      - pattern: "^qcom,scm-(apq|ipq|mdm|msm|qcs|sa|sc|sdm|sdx|sm)[0-9]+.*$"
+      - enum:
+          - qcom,gpucc-sdm630
+          - qcom,gpucc-sdm660
+          - qcom,lcc-apq8064
+          - qcom,lcc-ipq8064
+          - qcom,lcc-mdm9615
+          - qcom,lcc-msm8960
+          - qcom,lpass-cpu-apq8016
+          - qcom,usb-ss-ipq4019-phy
+          - qcom,usb-hs-ipq4019-phy
+          - qcom,vqmmc-ipq4019-regulator
+
+additionalProperties: true
-- 
2.34.1


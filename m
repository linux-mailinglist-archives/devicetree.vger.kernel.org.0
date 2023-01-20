Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B57B9674D10
	for <lists+devicetree@lfdr.de>; Fri, 20 Jan 2023 07:14:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229490AbjATGOZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Jan 2023 01:14:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229512AbjATGOY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Jan 2023 01:14:24 -0500
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E9DD7CCCA
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 22:14:22 -0800 (PST)
Received: by mail-ej1-x631.google.com with SMTP id v6so11415463ejg.6
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 22:14:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HrzyXn+3KXGB8jFmT4/nP9r21IZNbBpvAIbG/j2BgWc=;
        b=U8W6UFMceijb3/FC5kVHJ5LKocCAl+9PHeNn3cKnOcEYcokbtnirLoVPqZCDEZtmoW
         c0VMkrw35x3vdDpinYX6b2xleYHMiOALU2rZWSx56uZbXKJOj1AoTjhGZu885oTVGf6w
         j6xJwvE9ALKsR/I8DbL+qthjm/4Cn69Cdh/8nphENddsjxQXHcGIpAjjfIlg3WmoiN23
         9uipYT70SP2Sxx5AOdHYCU9rjclkONtZcOks6oZTU4vRQIbUc4izGUFyaZoWNucuJais
         x6TMevPX8vPX+7EVZ8+GV92IAteCHbYSB3yML2qdMRtrhVjwPecM5bSKjXDddpws1iOC
         +QcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HrzyXn+3KXGB8jFmT4/nP9r21IZNbBpvAIbG/j2BgWc=;
        b=PLzDUGiczqgdO7lTKmrgH/pkLNuG82Qwcn0YXKDqcEJpDg6mnveQbqV6sJQ5UQn+35
         fATTTmONqraA/29152w1zE2ALklQKyzhsB314dRU7exuQchV0OrVEYfv88W6G+DqlV2Q
         bkabVUis5egoGZKroyzG07Tt2a1s6Y3v4KKrMBpbvNzc4pIG8jSyzhGPOvp19KWmE7YS
         sXTFBxe6PA4UyjS798byrsBYziQITt3DmmO4MCiVGGN2SORO7HcgX/4jXH3m3R1OMC0I
         Yx6ZgALkTcdnFXDbuFfHWabqO4wwwDXdB2xSzFxrIRq0F6XW+ggVPFLulovXNEELjSYt
         O3HQ==
X-Gm-Message-State: AFqh2ko5w6m2qw8U4oRzy0ONAa8XlpC3t1xckJ+baHdBXrQYN8yNGWhI
        kj1V/yMQibUWzbwzYa7Ul0vNtrlS8xYVmcww
X-Google-Smtp-Source: AMrXdXtgQbcqB/eEMj3ANbMxGs+z75Ggql2W9FsMW6oMpbPmKLc/ZzFRn8qZooy8zYoiBjhaP/1QWg==
X-Received: by 2002:a17:906:d0c8:b0:7c1:10b8:e6a4 with SMTP id bq8-20020a170906d0c800b007c110b8e6a4mr13956354ejb.19.1674195260756;
        Thu, 19 Jan 2023 22:14:20 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id hp24-20020a1709073e1800b008720c458bd4sm5813358ejc.3.2023.01.19.22.14.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jan 2023 22:14:20 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 1/8] dt-bindings: clock: qcom,msm8996-cbf: Describe the MSM8996 CBF clock controller
Date:   Fri, 20 Jan 2023 08:14:10 +0200
Message-Id: <20230120061417.2623751-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230120061417.2623751-1-dmitry.baryshkov@linaro.org>
References: <20230120061417.2623751-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

MSM8996 Core Bus Fabric (CBF) clock controller clocks an interconnect
between two CPU clusters. The CBF clock should follow the CPU
frequencies to provide enough bandwidth between clusters. Thus a single
driver implements both a clock and an interconnect to set the clock
rate.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../bindings/clock/qcom,msm8996-cbf.yaml      | 53 +++++++++++++++++++
 1 file changed, 53 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/qcom,msm8996-cbf.yaml

diff --git a/Documentation/devicetree/bindings/clock/qcom,msm8996-cbf.yaml b/Documentation/devicetree/bindings/clock/qcom,msm8996-cbf.yaml
new file mode 100644
index 000000000000..3ffe69d8cdd5
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/qcom,msm8996-cbf.yaml
@@ -0,0 +1,53 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/qcom,msm8996-cbf.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm MSM8996 Core Bus Fabric (CBF) clock controller
+
+maintainers:
+  - Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
+
+description: >
+  The clock controller for the Qualcomm MSM8996 CBF clock, which drives the
+  interconnect between two CPU clusters.
+
+properties:
+  compatible:
+    const: qcom,msm8996-cbf
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: XO source
+      - description: SYS APCS AUX clock
+
+  '#clock-cells':
+    const: 0
+
+  '#interconnect-cells':
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - '#clock-cells'
+  - '#interconnect-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,rpmcc.h>
+    clock-controller@9a11000 {
+        compatible = "qcom,msm8996-cbf";
+        reg = <0x09a11000 0x10000>;
+        clocks = <&rpmcc RPM_SMD_BB_CLK1>, <&apcs_glb>;
+        #clock-cells = <0>;
+        #interconnect-cells = <1>;
+    };
+...
-- 
2.39.0


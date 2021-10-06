Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 471E2423CFB
	for <lists+devicetree@lfdr.de>; Wed,  6 Oct 2021 13:40:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238106AbhJFLmK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Oct 2021 07:42:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54800 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238143AbhJFLmJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Oct 2021 07:42:09 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 250D2C061755
        for <devicetree@vger.kernel.org>; Wed,  6 Oct 2021 04:40:17 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id t8so8003709wri.1
        for <devicetree@vger.kernel.org>; Wed, 06 Oct 2021 04:40:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kwISwd5A9r+96Ga/POOsImhvVy//AhRYwgp/dJ/hQjg=;
        b=XJ38njgwQsb7nAp2wTwdGTXZGI4OfPBun0knvwl9Y1u9mpLucDYD8gjjVwnzdjF68m
         Luz7xPd8hnsYmyijDZHf45Mz5tmslGb7gRMxqhAEB+WTnOSFmEC5RjeckDbwqfw8nwJ8
         MeHKYX05ZOyPtCcuuDO/fNjc+LLTZ2Gpq+tuXsD9ceOTD48hcon1zswKJqCJG1qdFx+U
         kzw8CWV1nu28hAs86kDfwtkng6qKxi4zsE8AKz5HAwLsLiWl9kFm1RqP3x4xkJZCheDI
         VxeZAjQY4Vx6XGpug4J2w5uLWJsE+CmtAmWn/sw/Zf8DlKTipwODTRFvNYNzGYFj+HkR
         siYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kwISwd5A9r+96Ga/POOsImhvVy//AhRYwgp/dJ/hQjg=;
        b=mWoQS3WJzP4JRA61v/25mFAg9SfNiMwdf+uyWr4Jko03ALc2CDg/aWimTdDvkHExPb
         NF5Bpv1eYAh+wtOIxV2vZf2jM8NzO+qQazACrg1nlZQnpvsDJtvmozRO83R42hGiUCqE
         MMr/03VsSCBoPGrEhkv3pG4izjKWAqqtem7q8edUdJ2pMX+KHMd1jYEDRWDqunQF4D1d
         loPi/c4VpOognUOkGXDFl/jKqLAQ2RaS6mIkN26HslbfHXZDyif4RLybp1AU1jfs6cLT
         APkwPsB4y+bFiXaoiRg2gY9fIqgl130pDCy8dZ1FuSPMsH9wht6i9VgWe8SBP2ZLz1S7
         EtBg==
X-Gm-Message-State: AOAM5310KhARGBFMUqqzePtqQjIKf562suao3qQ5b1OFpuUPdWOkWcZR
        nxZiJ31egQp6lv/oagPih7NQRd0stud08Q==
X-Google-Smtp-Source: ABdhPJz5Ei6qgaV54wktsKWl0VvahB0pJGzPNGzSU/TaR1US1wEjZnt+yHYAfgql8JAswFQfafFg8w==
X-Received: by 2002:a1c:2c2:: with SMTP id 185mr9304840wmc.85.1633520415700;
        Wed, 06 Oct 2021 04:40:15 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id n11sm5540110wmq.19.2021.10.06.04.40.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Oct 2021 04:40:15 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, bjorn.andersson@linaro.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v9 08/17] ASoC: dt-bindings: add q6apm digital audio stream bindings
Date:   Wed,  6 Oct 2021 12:39:41 +0100
Message-Id: <20211006113950.10782-9-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20211006113950.10782-1-srinivas.kandagatla@linaro.org>
References: <20211006113950.10782-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On AudioReach audio Framework, Audio Streams (PCM/Compressed) are managed by
Q6APM(Audio Process Manager) service. This patch adds bindings for this DAIs
exposed by the DSP.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/sound/qcom,q6apm-dai.yaml        | 53 +++++++++++++++++++
 1 file changed, 53 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,q6apm-dai.yaml

diff --git a/Documentation/devicetree/bindings/sound/qcom,q6apm-dai.yaml b/Documentation/devicetree/bindings/sound/qcom,q6apm-dai.yaml
new file mode 100644
index 000000000000..5d972784321d
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/qcom,q6apm-dai.yaml
@@ -0,0 +1,53 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/sound/qcom,q6apm-dai.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Qualcomm Audio Process Manager Digital Audio Interfaces binding
+
+maintainers:
+  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
+
+description: |
+  This binding describes the Qualcomm APM DAIs in DSP
+
+properties:
+  compatible:
+    const: qcom,q6apm-dais
+
+  reg:
+    maxItems: 1
+
+  iommus:
+    maxItems: 1
+
+required:
+  - compatible
+  - iommus
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/soc/qcom,gpr.h>
+    gpr {
+        compatible = "qcom,gpr";
+        #address-cells = <1>;
+        #size-cells = <0>;
+        qcom,domain = <GPR_DOMAIN_ID_ADSP>;
+        service@1 {
+          compatible = "qcom,q6apm";
+          reg = <1>;
+
+          #address-cells = <1>;
+          #size-cells = <0>;
+
+          apm-dai@1 {
+            compatible = "qcom,q6apm-dais";
+            iommus = <&apps_smmu 0x1801 0x0>;
+            reg = <1>;
+          };
+        };
+    };
-- 
2.21.0


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2D9C2419586
	for <lists+devicetree@lfdr.de>; Mon, 27 Sep 2021 15:56:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234668AbhI0N6U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 09:58:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234667AbhI0N6U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Sep 2021 09:58:20 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80920C061740
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 06:56:42 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id x20so7457858wrg.10
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 06:56:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kwISwd5A9r+96Ga/POOsImhvVy//AhRYwgp/dJ/hQjg=;
        b=QhW2b23SXyuEaheFD2fi3QY3VWRNyHwbOdpagD6nZXsmotZ5Ns1Egv9moaBLY5pcP5
         mRmIveuhiIgVsZIkDFPUGLDTrO8GhrkJ3032PYsYBRWC2kMGMB+S8lM1qVgApxtVoYYR
         xaMlA6rdaRnugAFTlcPAvHBgt5qThesA7PgNwKDHXFripCL9Rxmiad690GANm/ki1QGc
         nLVfzVCHumPKyQvZhZsBVItv/noVmm+I3i2QfDW7q02ayzWnh1ViGQoyLMGDLaQYd1Pz
         JpmFZSaXFb0tW8CVpVuW9JmUdNmUJSWtyictuGG99WM3QhnAWwO7RBWbp+Cw4tN85ZnH
         nEzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kwISwd5A9r+96Ga/POOsImhvVy//AhRYwgp/dJ/hQjg=;
        b=zUyvCHL5ixOqSg/yGxfVIW4nQY0liCA6x1yHC+zF4QAPNPyMU4/KEU5nYAWYrC9u//
         49gp8ETrC+fs0Hz8VNv+lIoYiSAlUAG3Mrlm2a1agPUnJ2OT9p5XPt9TMuQMNhLUHj1A
         HGch+d64p+tNn5+kFh3umz44P/563vQ10iwdMYmnvAUFA6ib72Ght8xx2iMRQxXQ23R/
         RVV+FnQAYLT/Yk9/IRQK4Xf9yb8StcfHBN1gWamPPe288BDSEE5uoY/hWkvqE1gHUVXc
         QRSsNdrB/tXwRH+04bxy4LtSf8e1oB7B18O96gWeRZGClVQJqPioOOMx7x21MJmV9Eae
         +TsA==
X-Gm-Message-State: AOAM533iwhHztzXjK9ZEiJcwjewPzvAZHQJdMeExX4gA3leV4WjrGoky
        kqa82oXYZ6KBebe/vwqQnoNV4g==
X-Google-Smtp-Source: ABdhPJyrjsoH6+H2cF6S7DOEI8u/vuhZU5pqPSEr+QF5gTiI7BdwQxFScga6CpwRstkjwSEYqNAyvA==
X-Received: by 2002:a5d:4a4e:: with SMTP id v14mr27979375wrs.271.1632751001157;
        Mon, 27 Sep 2021 06:56:41 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id b7sm20485606wrm.9.2021.09.27.06.56.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Sep 2021 06:56:38 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v8 13/22] ASoC: dt-bindings: add q6apm digital audio stream bindings
Date:   Mon, 27 Sep 2021 14:55:50 +0100
Message-Id: <20210927135559.738-14-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210927135559.738-1-srinivas.kandagatla@linaro.org>
References: <20210927135559.738-1-srinivas.kandagatla@linaro.org>
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


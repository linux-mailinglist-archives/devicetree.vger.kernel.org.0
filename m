Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D282F43B03A
	for <lists+devicetree@lfdr.de>; Tue, 26 Oct 2021 12:38:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234057AbhJZKlI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Oct 2021 06:41:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233416AbhJZKlD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Oct 2021 06:41:03 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 056BDC061745
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 03:38:40 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id u18so14963573wrg.5
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 03:38:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZUTQPGMld1NjfHqBeBgP6Q5d4oV2F6unCGQSSDbPgkI=;
        b=K+NA3hT8cgsu8NeXDwft35uRQ+2KoEvrDrW+jENpyTKH+oKAW+tkfskUV0S82wJ90r
         wIoo5LM6lvfliX2eO388SzIA7MrGYB1hKIjHjcwlhQntPucfmfuihzIFWfAiQEznoOu1
         VhuzDNSZYXQk9CHRx6WUBxEKz6g5QTipayKoLeISkgPxdCSo/r9F4uyhHFduiimphqoe
         tbDNhmKBAO6J9aDUlHPtVBPRaqZ+HjcgkcTY+MQ8xYUY6B23k2PoXbIGDADbFTYGaq/6
         TPP7t/VQfmvI+CO5HMQUTb3yYGcPZBZhwpZw+wh8vRQ2DLQ1lMy4aDKj6wBh9NLTbTw6
         WDCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZUTQPGMld1NjfHqBeBgP6Q5d4oV2F6unCGQSSDbPgkI=;
        b=6DemLUjYhNze3MxdcJtLOxINvKXuR4qG6KJWpo6nAL5VIBv0KpVYp/A3eABf96IZXe
         8r6bZMgga7m224De1ewCJVt/u4tvZerhqHf90PYaKInft2yiinjEYpPA4IrT0yPKr46F
         RKlBEr4RTyqWHf4Xp7Rx5a554Nr9m4TZ5/MVTo5K24PfJTb/KBU3HqOp3BTE2MMH7LW0
         M/qpP4X+zM0LZKr8+zlEmxOAQLqenEf7SGZPXiAmgzViTI8YvfqEWxh9yI4ykkGPZYlY
         O+p3z2eSQilZHpfRMTC2tuKemK4d+oYvc0iCIqMQzQHmMAb/yrQydei4nk8NhdWPkm3C
         dBMg==
X-Gm-Message-State: AOAM533bUf751lTTCsofYeMWNeSDiMyFywNvql82pMNpEAgWW9o6oHq7
        2CWYq5i+3f5v8VC9igRpCwul1w==
X-Google-Smtp-Source: ABdhPJzj2A14U2LgQ95zRukJ2nZ0wqbWBEwoNqx54/9mABKZHZnT5XhsO8BMPjwmcAGXcJmq7xfE5Q==
X-Received: by 2002:a05:6000:8a:: with SMTP id m10mr30573168wrx.115.1635244718624;
        Tue, 26 Oct 2021 03:38:38 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id x21sm221397wmc.14.2021.10.26.03.38.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Oct 2021 03:38:38 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, bjorn.andersson@linaro.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [RESEND PATCH v10 08/17] ASoC: dt-bindings: add q6apm digital audio stream bindings
Date:   Tue, 26 Oct 2021 11:38:06 +0100
Message-Id: <20211026103815.19468-9-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20211026103815.19468-1-srinivas.kandagatla@linaro.org>
References: <20211026103815.19468-1-srinivas.kandagatla@linaro.org>
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

Hi Rob, 

You might see a dt_binding_check errors as QCOM SoC relevant non-audio patches
in this series have been merged into the Qualcomm drivers-for-5.16 tree,
as this series depends those patches an immutable tag is available at:
https://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git
tags/20210927135559.738-6-srinivas.kandagatla@linaro.org

thanks,
srini

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


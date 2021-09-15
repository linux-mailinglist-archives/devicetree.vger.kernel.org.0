Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 94F0B40C60F
	for <lists+devicetree@lfdr.de>; Wed, 15 Sep 2021 15:15:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234043AbhIONQR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Sep 2021 09:16:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233820AbhIONQR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Sep 2021 09:16:17 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7884FC061574
        for <devicetree@vger.kernel.org>; Wed, 15 Sep 2021 06:14:58 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id v20-20020a1cf714000000b002e71f4d2026so3869277wmh.1
        for <devicetree@vger.kernel.org>; Wed, 15 Sep 2021 06:14:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=GaajfoQqAau0UKWbY5qFjUEbOMH+WVAHfniHoso/nwc=;
        b=nJvOEzs6UB5elX7UFs0R01PkpLS1TeypZcxaOFYGqj8/UfKoHSwwuglzE+5OcOs+Sj
         Fm4z/WHaptcT8JyamQIZbXJ9KerOO1pt/OPrndMd89RkNBka1N8HhoCUCl5CHTGFkMJy
         JN12OWa/sFe/7J4HorCA9wV/9AvNsW6NnmQWI0r3ssMpPbZt+rVOZ7Zp/IcB4amHIjY2
         HWf0nikvs4eSxJGEVCY5rDc+Pww2uiXH91cybBvZdNAZle6rY0Le5l8HR0d1ORVv4yFV
         UKj3o5fdxzSbVi+ILf5ZSMuXpgdG3Cwqsvr8fdTDzFsjeortW7jZ+37BKDcR6z4KO043
         g8+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=GaajfoQqAau0UKWbY5qFjUEbOMH+WVAHfniHoso/nwc=;
        b=l8U4sbuoue3tgRAQNCz0Js4K720JWTCZVxY72gKB0GF+GS1WHgAA12TiTmjy2cXgnv
         JNgQN+MfzUOVFvbO5Yo1oMDhYhflxB3ZTHo/up8Dgx51nSHb5dzlotllgOyNg7uowDYo
         CJYmiCvOc2kHKVN35Szzrr/Qc9BMzppZQIYg0X0/HTw1wcj2q5FJMLdQfIBhmhyE5t1t
         Q1RdijiCQHJJ53b1LVg/Wvxp+81qRRMQjOQ/ihP+tRAzTw260QTfLRGn15uzJzHBmHfw
         hnfs30SuqyvYMZZbhhZDHP0bKbi9YqUDScRYF5b5EbeKTRsaT32fE5qUS7JesRhvZfQh
         +Fcg==
X-Gm-Message-State: AOAM531Cm9j8g8uWaVjQ5TRBu77ZwqIVFPkdCtnDPQp8v5v+JUREFQsW
        yFuY7qp9U01nq5zbgS4qv6O2Rw==
X-Google-Smtp-Source: ABdhPJzi7m1bzrnbEsZ0kgjPXtlQ12jUW6US1Wq7WwxVNzH3kKZZG+u0s8NwAXjWfiLLg4yB4pawtA==
X-Received: by 2002:a7b:cd93:: with SMTP id y19mr4388742wmj.110.1631711697062;
        Wed, 15 Sep 2021 06:14:57 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id m29sm14501717wrb.89.2021.09.15.06.14.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Sep 2021 06:14:56 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v6 13/22] ASoC: dt-bindings: add q6apm digital audio stream bindings
Date:   Wed, 15 Sep 2021 14:13:24 +0100
Message-Id: <20210915131333.19047-14-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210915131333.19047-1-srinivas.kandagatla@linaro.org>
References: <20210915131333.19047-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On AudioReach audio Framework, Audio Streams (PCM/Compressed) are managed by
Q6APM(Audio Process Manager) service. This patch adds bindings for this DAIs
exposed by the DSP.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
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


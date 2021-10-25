Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 278FB439D49
	for <lists+devicetree@lfdr.de>; Mon, 25 Oct 2021 19:17:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232260AbhJYRTm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Oct 2021 13:19:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230183AbhJYRTl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Oct 2021 13:19:41 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54756C061745
        for <devicetree@vger.kernel.org>; Mon, 25 Oct 2021 10:17:19 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id u18so10727797wrg.5
        for <devicetree@vger.kernel.org>; Mon, 25 Oct 2021 10:17:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2dEl9+MXeU9ILc1heZjgbaev2CRPnvoQ4/YvbAvAmQM=;
        b=c7RQ8N0FckCPbiqFmHr2Iee9AMNPrl3pD5lRc9eL4NfuUR4tJMPIpLdgheVNyp3FAA
         o9FB3TUhWLz1cx7GqAhZoTqGkYiVNj/4edPQk2bu3one2Ppfr9HB38N6a6hzKYyWfQye
         dv93GlgjGXAWyXLfVfx99JD/Gcy5qCytQP5aXWO/eVdOSlNzLUOfYTreckiDNquPcId9
         DqSyhHiwArAKvrbOPbPYrWgntQFfNa69b+Yq8klM0dF+XzRSKnmEccf+8HhAs4exaXCW
         QNo01v+bjebG2NUkdO5AF5SiCUWQff1GCAbuOypNPHaQgnDYjMIvsdIr0NbJY27fVb9N
         7eAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2dEl9+MXeU9ILc1heZjgbaev2CRPnvoQ4/YvbAvAmQM=;
        b=AAve9Y+d2U1t9hcubMo21KMQ+NHaIgy2xndJneDu8O/B4XIed/HOlbKhfuFKGBMXxq
         z0wZrkr0RFYvzAgTE4iInuIy5aFBF8CdmLTu7cJgpNLQOGLGAi7bpVwJdGyIVCeDfOPh
         VRSVB1qAfw9V4TcX36Fu+mY7f/D6Y7NCnxqrEdP3p2iWiSpTCFHB6lJN5CrBiantmieL
         /zyTQRipeHZSa6qMsqkFL/XU9zTAsy6JU4g5VVxlC8r07He62H4M0bn6K5NQWUs0VdQx
         iTCrSdVztAOlbdyCGSuV574gbG6eVlSqHpoo2+ET/rs0iLlvx9ChzdikZzJtbAEEP6AZ
         G2pg==
X-Gm-Message-State: AOAM5305/gAMnVsHruAZzPO8HHs2x/Ff1btj92KEagWAIKQ59ugFOyGa
        HFBd+r1z7P7FoDk4vz7dpvQmJw==
X-Google-Smtp-Source: ABdhPJxasgPnoZsU+rgkUSB9kBqOkjrEXkuiCJapUg3WymuMefB64lEDzsdpNjAzVUPsD3JokBaOjQ==
X-Received: by 2002:a5d:528b:: with SMTP id c11mr24672248wrv.35.1635182237960;
        Mon, 25 Oct 2021 10:17:17 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id r11sm5181012wrt.42.2021.10.25.10.17.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Oct 2021 10:17:17 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, bjorn.andersson@linaro.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v10 07/17] ASoC: dt-bindings: lpass-clocks: add q6prm clocks compatible
Date:   Mon, 25 Oct 2021 18:16:39 +0100
Message-Id: <20211025171649.17730-8-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20211025171649.17730-1-srinivas.kandagatla@linaro.org>
References: <20211025171649.17730-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On AudioReach audio Framework access to LPASS ports is via Q6PRM
(Proxy Resource Manager) service, so add a dedicated lpass-clock compatible
string for this.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../sound/qcom,q6dsp-lpass-clocks.yaml        | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-clocks.yaml b/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-clocks.yaml
index c686164732aa..f83f00737a2f 100644
--- a/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-clocks.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-clocks.yaml
@@ -16,6 +16,7 @@ properties:
   compatible:
     enum:
       - qcom,q6afe-clocks
+      - qcom,q6prm-lpass-clocks
 
   reg:
     maxItems: 1
@@ -54,3 +55,23 @@ examples:
             };
         };
       };
+
+  - |
+    #include <dt-bindings/soc/qcom,gpr.h>
+    gpr {
+        compatible = "qcom,gpr";
+        qcom,domain = <GPR_DOMAIN_ID_ADSP>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+        service@2 {
+            reg = <GPR_PRM_MODULE_IID>;
+            compatible = "qcom,q6prm";
+            #address-cells = <1>;
+            #size-cells = <0>;
+            clock-controller@2 {
+              compatible = "qcom,q6prm-lpass-clocks";
+              reg = <2>;
+              #clock-cells = <2>;
+            };
+        };
+      };
-- 
2.21.0


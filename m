Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 27EBA40C60E
	for <lists+devicetree@lfdr.de>; Wed, 15 Sep 2021 15:15:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233914AbhIONQQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Sep 2021 09:16:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233820AbhIONQQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Sep 2021 09:16:16 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26DF5C061764
        for <devicetree@vger.kernel.org>; Wed, 15 Sep 2021 06:14:57 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id i3so2129375wmq.3
        for <devicetree@vger.kernel.org>; Wed, 15 Sep 2021 06:14:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2dEl9+MXeU9ILc1heZjgbaev2CRPnvoQ4/YvbAvAmQM=;
        b=mdCjM/Xg0joHWVCrO9CS5+RUsTFAWiE3a6o+eVHyeEwMYz1jZhVOisr9On7Ox8pnXa
         gasEtmdQuD0Jf15rI294eXVRpx5fOE10afqQCxDeqso0K9aQ2R7r0pAGEarHMllBvHH+
         +GmzkMFp4nF6BE5USZ44tsOxzCF9UYpbR50W4JhOVIBR+loD8nFctSMjcsK1wyt3Us0J
         Wzm8QhSDm5pX+QHhQA5f/TtB4Fue5EJXyKxyuTvHjbyi7e6+UpQbzTeBI7f86I/rsRh5
         4xPjk6k4SLU/SmZKoqP6Hw+MsjKXmlcddBsI10PCSFcpzfO7ZiYc0ArBWQZKdENQUFY1
         kuBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2dEl9+MXeU9ILc1heZjgbaev2CRPnvoQ4/YvbAvAmQM=;
        b=Q7f7NT7PlB4vAp8RHPqdKiDglUGYjiyBa6DtcGCa5jgxK9FxBnVR3PZeYBHBWJ0cof
         y6NCs5kjKD1c3ko6puQpXSrOZt+FCpRjCnk8HzSG7TeHow9SgqqoeLOEXUqQbTUt9U/+
         eaNUAemOsilFrO+17JwvRswOSZVXMHoHIGS2ahKDcbgfo/VkZdsOjMOlCK+Cf/vtf8TA
         Ifh7A9i3m4El9QhvKtnYF9AG67UYmJt3D8MhZfD9oXBpNkuefoAjCE3WaWuyh/wcgvF5
         KuYAvqTx4p6Yf464nZPYCvl1Mceb0N3dZySPVjQFzAysft1HQc6SoOrn3G3m9XSimhCa
         IeMA==
X-Gm-Message-State: AOAM530Q9AsxI0gV74CcT506qzJoUw8IsJMpgk5IxMpTlWCQUhKWJ6Qx
        az0Vo4WcBsbTv5jPbehgYWu4SMqNK+vxDw==
X-Google-Smtp-Source: ABdhPJwCqH29R2WC5jfAJQojFqo8UXLLjHJDfHuKzQAhbiRAyUY97HVVuL5ILxehDthcuD4055DT1Q==
X-Received: by 2002:a05:600c:3392:: with SMTP id o18mr4454389wmp.92.1631711695734;
        Wed, 15 Sep 2021 06:14:55 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id m29sm14501717wrb.89.2021.09.15.06.14.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Sep 2021 06:14:55 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v6 12/22] ASoC: dt-bindings: lpass-clocks: add q6prm clocks compatible
Date:   Wed, 15 Sep 2021 14:13:23 +0100
Message-Id: <20210915131333.19047-13-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210915131333.19047-1-srinivas.kandagatla@linaro.org>
References: <20210915131333.19047-1-srinivas.kandagatla@linaro.org>
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


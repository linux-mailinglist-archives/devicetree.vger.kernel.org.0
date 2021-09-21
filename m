Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3D046413478
	for <lists+devicetree@lfdr.de>; Tue, 21 Sep 2021 15:39:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233150AbhIUNlK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Sep 2021 09:41:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233096AbhIUNlK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Sep 2021 09:41:10 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C804CC061574
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 06:39:41 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id v5so72818945edc.2
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 06:39:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2dEl9+MXeU9ILc1heZjgbaev2CRPnvoQ4/YvbAvAmQM=;
        b=SDEr3Bi9dVZx9skbxdTqk0uD2XtPonJtAcv4IiO8crFBs26M4k9/T+cr87ziHrIpv/
         uDAqCXuQBSvqMOxTJ0Fv5CeB5Ywzg804K9omERfJjMVVU+MZYLYOjYMA6UyGkm6BUWaB
         cZAk+IqKkv4aTODD33lz2dp9hshuU8zWQWDJLyFuddS15ql+EZPtH2pouSLvwHJByDvC
         saD1L77XRBMWrVP1lDJXrDmbHZlp6uerqh+X9kk8ZBnrrxL6YrphmhROFA69ud4NHQRl
         6P0IWdlmfhBL5x25cl+eeW/Hlw05sCBdnAFRciNaLEIE50Jb+ptPBgF0Fyay54W2HHB6
         WjTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2dEl9+MXeU9ILc1heZjgbaev2CRPnvoQ4/YvbAvAmQM=;
        b=xCRkhhaER3h1ClAdnF0s1QPWSpsIaGEesvSgyBPHTHW9trWrkvWtIUzC5yEQowmx5h
         MOKyPXAlDcWFo+hAmV/EF3R0kMxc+UIR2zXlm1O2U8GZlX/Ni8Nd/Q9+nsy7XjxZFlPm
         54sUGJLoRf4cGvsnXYdypdPmVCSuKG/OYqX+LW9AufROzEhx7hlNRWo7QkarRYWMEMG4
         n7z1wf+n2OW9AAbkN8EbNs7aXNhOqiQaAHmDLjK/cgLAIte1BXMcIBb9MLHESggn4+vT
         2610VWYlRmHIa2LCwBFU5S0KnSV+rHmDOrPSk8UgCLaVeM8/4lzsWkuYRFiES8+HGdKt
         7pLQ==
X-Gm-Message-State: AOAM531uNWyfxljKZX4NYMGTtRZdp5E7MgJK5mwo619jcUEEcoN5xMu/
        UbIYqff6DcURFK/nDovD7dm5GNN+kMBSTw==
X-Google-Smtp-Source: ABdhPJy8QERP2z05nE5jCT86ONGDjLl8u++2AlMH+ZVUj5DZAZp03r9yrJt5OUlGt74opVkc/mJZcg==
X-Received: by 2002:a50:d80f:: with SMTP id o15mr35291392edj.52.1632231462075;
        Tue, 21 Sep 2021 06:37:42 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id b3sm7915799edx.55.2021.09.21.06.37.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Sep 2021 06:37:41 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v7 12/22] ASoC: dt-bindings: lpass-clocks: add q6prm clocks compatible
Date:   Tue, 21 Sep 2021 14:36:59 +0100
Message-Id: <20210921133709.4973-13-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210921133709.4973-1-srinivas.kandagatla@linaro.org>
References: <20210921133709.4973-1-srinivas.kandagatla@linaro.org>
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


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C3A533FFF04
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 13:22:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349288AbhICLWx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Sep 2021 07:22:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349219AbhICLWr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Sep 2021 07:22:47 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 932E5C061575
        for <devicetree@vger.kernel.org>; Fri,  3 Sep 2021 04:21:47 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id q11so7719754wrr.9
        for <devicetree@vger.kernel.org>; Fri, 03 Sep 2021 04:21:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZwS0pTLfaYvtmnmGSPY2CWYSjvjRmgOXbJ+a8m+7l0Q=;
        b=NthLu70jVSNa9pEkEcYM0mSh3MxkSlrJqC6QtjhFW7W7pEJdifqWfKPqN/QcZfGydO
         T1IaFTjhOMACUbcQtTUA0WJ6VbDEZCOELmyogwljE6C5NAaj0fKytVnKr9iDU2dMqkx9
         9r4GrNIp8w+XFYPcibSkw99GMh+/RhMVAh8JIRVqRfZknUUN1QifColyynJlKqPbMl4a
         VsFo7uRITU0lDZldkCEQYgMMcKEMMbtb3MO8WcrLDmElwAr2o7Es9b86C500fHH27g9h
         pI73nF1+F6alXZvQJqzHdyjlHh3go3bpGpQT4sg3lgqF/0RZHH32Os96kNpMqDIRg/j3
         wxzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZwS0pTLfaYvtmnmGSPY2CWYSjvjRmgOXbJ+a8m+7l0Q=;
        b=PGPWjlcWr7anII51cwfo0B00ZGbItz9FqxUaVjJEiVP9mAhsKIY7cx8pkHk14Q55EG
         iSAiLSq92YLKZV+Nw2tQNjQa0M7QmKap4UXtGwP2rMiaFzT1YQ2rSpTDKmMNPQq+RYvu
         7pnmhkubWbexZbBpPXbS4shzniDw+EPrWJDuImPIJxdqo76AsJ8vvSN0kE3cRq11kvBS
         ptgesXubMgtqXN4P+cmHKRm6xMaBEveHFretAjRC2EDN5umWaMWuBpVZ77I+WPzXY71Q
         /hrBFRWSOI/afEL2wnZBolJA6+pWqobGHreA/4H6htRFVlGWfWgs4I3JaT6V1xcQxUGB
         nv5w==
X-Gm-Message-State: AOAM532T2zp8eLOI++SoPF6jgsNUGSN76dlxXAWKydcBHn4BK6ECiJ0y
        ImmF85QkmMyKKVnGHZqqWl6UMQ==
X-Google-Smtp-Source: ABdhPJyRIG1jDC1HovGExZgKxlc97C10bjOuLrdMrf/bDLQQrwOzv5el44PzsJqyiEzbAknPQa4fDQ==
X-Received: by 2002:adf:fb8d:: with SMTP id a13mr3569765wrr.164.1630668106206;
        Fri, 03 Sep 2021 04:21:46 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id f20sm3881877wmb.32.2021.09.03.04.21.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Sep 2021 04:21:45 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v5 11/21] ASoC: dt-bindings: q6dsp: add q6apm-lpass-dai compatible
Date:   Fri,  3 Sep 2021 12:20:22 +0100
Message-Id: <20210903112032.25834-12-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210903112032.25834-1-srinivas.kandagatla@linaro.org>
References: <20210903112032.25834-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

on AudioReach audio Framework access to LPASS ports is via
Q6APM(Audio Process Manager) service, so add a dedicated compatible
string for this.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 .../sound/qcom,q6dsp-lpass-ports.yaml         | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-ports.yaml b/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-ports.yaml
index e6148c17419b..92a641dfe04f 100644
--- a/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-ports.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-ports.yaml
@@ -16,6 +16,7 @@ properties:
   compatible:
     enum:
       - qcom,q6afe-dais
+      - qcom,q6apm-lpass-dais
 
   reg:
     maxItems: 1
@@ -169,6 +170,29 @@ examples:
               #size-cells = <0>;
               #sound-dai-cells = <1>;
 
+              dai@22 {
+                reg = <QUATERNARY_MI2S_RX>;
+                qcom,sd-lines = <0 1 2 3>;
+              };
+            };
+        };
+      };
+  - |
+    #include <dt-bindings/soc/qcom,gpr.h>
+    gpr {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        gpr-service@1 {
+            reg = <GPR_APM_MODULE_IID>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+            q6apmdai@1 {
+              compatible = "qcom,q6apm-lpass-dais";
+              reg = <1>;
+              #address-cells = <1>;
+              #size-cells = <0>;
+              #sound-dai-cells = <1>;
+
               dai@22 {
                 reg = <QUATERNARY_MI2S_RX>;
                 qcom,sd-lines = <0 1 2 3>;
-- 
2.21.0


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 047B63DEE52
	for <lists+devicetree@lfdr.de>; Tue,  3 Aug 2021 14:54:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236074AbhHCMyv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Aug 2021 08:54:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235982AbhHCMyt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Aug 2021 08:54:49 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9EE9DC0613D5
        for <devicetree@vger.kernel.org>; Tue,  3 Aug 2021 05:54:37 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id j2so25136869wrx.9
        for <devicetree@vger.kernel.org>; Tue, 03 Aug 2021 05:54:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=IlmDW4jjHYqf7npFSuyYq2N19CPmEjH+lYW7doFg1hM=;
        b=nVyh6G47UYVGSE9L9QqWstwZFdNMZR+jq6FcKPWrcowYJRQdH50mxX6IPAkF+Kaero
         +rgy/7MxhgAGS9b7gMW0/aOcD2rl8jvn+NETDRljOZk6OYYNL5l98rlaenUR1BSaBDUO
         iDtSPUBamua35GpML1/iy+EYZlnWOvb/3gS6u2DBZQqr6h+wVhDeH06besXJt6xa8oVm
         iP9OkyneXHaUw+uwutuIYYsDxW1kL9Dm6jLJZs8DV1uQH/NnutCxTiO5JZa3PJol26Uy
         lik4Dh8k/p9YUQoxESXANq1yfmLVwhfs+TYf7igzAmgC1ff5O/ORul8wp5BKDmgXU347
         YAQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IlmDW4jjHYqf7npFSuyYq2N19CPmEjH+lYW7doFg1hM=;
        b=O/PCEe3YfLG44SY2KWpKCItDHCXo/Q6YyD7MHYjhlKOzBkPzrjY8UcPjbKk3UkvDnp
         igTLnN0BaTjZC7lxJnBSRqsAuNetXV9NX3QBHi9ulkBfPBBvype3LPic9SElxWNfJ0DZ
         VAtQU4XWiIUGRY+J3S8L0teXC+rKhgEV8utIbSqK1A1zSkxLNIL509HFfMvWdQDKAh0D
         ukmC58azxbvI8MPiKt73BHsfcLPj8NaRYZTtrzK0cF/y23R75pEjIWWW5RB+36yqpb7U
         nZI4i0COvTksdZcybWOuTRl+CACxr08VKUBetuJ/J1Ikkus7ektG+0HQYQx0r47mkCr9
         pd2g==
X-Gm-Message-State: AOAM532Tk6jhvp3loWp/zmOXdSYIVxSjc9lzhUAsymZ3MNSuIslBx0Yu
        4bl4qXAF18SOZ5fNf7XaRYcJDw==
X-Google-Smtp-Source: ABdhPJxs45mKUPPN4nXgD/va3gEMHh1SAfuQBQ4Bm5BBqAugpV9ll94j2e5GavFplgUWipuCnrrt/g==
X-Received: by 2002:adf:ed50:: with SMTP id u16mr22855123wro.174.1627995276270;
        Tue, 03 Aug 2021 05:54:36 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id h14sm14695574wrp.55.2021.08.03.05.54.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Aug 2021 05:54:35 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v3 12/20] ASoC: dt-bindings: q6dsp-clocks: add q6prm clocks compatible
Date:   Tue,  3 Aug 2021 13:54:03 +0100
Message-Id: <20210803125411.28066-13-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210803125411.28066-1-srinivas.kandagatla@linaro.org>
References: <20210803125411.28066-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 .../sound/qcom,q6dsp-audio-clocks.yaml        | 21 ++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,q6dsp-audio-clocks.yaml b/Documentation/devicetree/bindings/sound/qcom,q6dsp-audio-clocks.yaml
index 03ab7451eb1c..c4814ae00712 100644
--- a/Documentation/devicetree/bindings/sound/qcom,q6dsp-audio-clocks.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,q6dsp-audio-clocks.yaml
@@ -14,7 +14,9 @@ description: |
 
 properties:
   compatible:
-    const: qcom,q6afe-clocks
+    enum:
+      - qcom,q6afe-clocks
+      - qcom,q6prm-clocks
 
   reg:
     maxItems: 1
@@ -53,3 +55,20 @@ examples:
             };
         };
       };
+
+  - |
+    #include <dt-bindings/soc/qcom,gpr.h>
+    gpr {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        gpr-service@2 {
+            reg = <GPR_PRM_MODULE_IID>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+            q6prmcc@2 {
+              compatible = "qcom,q6prm-clocks";
+              reg = <2>;
+              #clock-cells = <2>;
+            };
+        };
+      };
-- 
2.21.0


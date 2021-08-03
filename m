Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AECFA3DEE51
	for <lists+devicetree@lfdr.de>; Tue,  3 Aug 2021 14:54:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236003AbhHCMyu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Aug 2021 08:54:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236080AbhHCMys (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Aug 2021 08:54:48 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A022FC061764
        for <devicetree@vger.kernel.org>; Tue,  3 Aug 2021 05:54:35 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id o7-20020a05600c5107b0290257f956e02dso1675003wms.1
        for <devicetree@vger.kernel.org>; Tue, 03 Aug 2021 05:54:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0vcBsLXSl9GUubMz0AxOjIgAjQjLiU9UgPPaq+ZKA9A=;
        b=nY6LC9WWHb4QmP4lnvRYWOrIohoAzRi3LfX247PgNT6C/xu0rQJZ1w2W+BWyNCEEV0
         IdVBx+E+mTdT9z9fVvprki1PPqSjEQikS+Of8EhEycyQZBTgToxlgqS1qd15zdNjVtWA
         rGcLKOJOgkG/1FY04rAwiaYhem8kCoiQiv0ZDMfOFwHcok8s/UXlGrAzIuJUKquPjCl+
         d5f0JXaCmxcc20Y9el1Bi6L/ZL0EX06y5BT7JEy/JrAVrPGTkx5i5mtr3IelL5nhxt3Q
         480X7NLpyc6ykYmcIthMPsjFYmXgwR2+FMtDjdrwCe7sagGVa8I7/3RA8e+B7T96Bq8D
         7PZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0vcBsLXSl9GUubMz0AxOjIgAjQjLiU9UgPPaq+ZKA9A=;
        b=pJfq/+0KzBEHZcB24hRZugL5YFqTMAxpjsD701W41qPNHX35um1vuZDB+Pvp4PjE6U
         eUthcMFvZo+b6A6U4ymXn+NRmzPrLPcdyx6c+yvErRqP67jerehFTP5KBNLuyGQJAdkk
         1hABryWj2pwgdDgv8YGAaj/iUuvlM38mb7HgtY//oVg1KINM728c8MEk3d5AW3LDxNqH
         6580/ZWVLm10ohvCBe0yWKo35LO8l5PoTw+6EMhzjP/nklEDMwSKPjC7eR+Tkdtb+17H
         hXeLCCJxde8vtc5ZTBkGP4ZPa1W38GtjloXkg2s8vJW5TufcTzB3JHmHz+hUm1+SM+Cf
         eR8g==
X-Gm-Message-State: AOAM531225PEa3Vm396lRXJkGopah5eV5iQqT9Tebko5rAd95tsqsmO4
        pYg2y6SvRTNezzsTcOnbELlaeA==
X-Google-Smtp-Source: ABdhPJzPsp6SrcIkfGNC94k7h8QerfdsLKRrN5rERNO9QIY6+88BVqDV5+qDrJtnAJ4mV4EkVkh9MA==
X-Received: by 2002:a05:600c:35c1:: with SMTP id r1mr21884871wmq.101.1627995274273;
        Tue, 03 Aug 2021 05:54:34 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id h14sm14695574wrp.55.2021.08.03.05.54.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Aug 2021 05:54:33 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v3 10/20] ASoC: dt-bindings: q6dsp: add q6apm-dai compatible
Date:   Tue,  3 Aug 2021 13:54:01 +0100
Message-Id: <20210803125411.28066-11-srinivas.kandagatla@linaro.org>
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
 .../sound/qcom,q6dsp-audio-stream.yaml        | 26 ++++++++++++++++++-
 1 file changed, 25 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,q6dsp-audio-stream.yaml b/Documentation/devicetree/bindings/sound/qcom,q6dsp-audio-stream.yaml
index 0e70b486b51a..8cba289bb068 100644
--- a/Documentation/devicetree/bindings/sound/qcom,q6dsp-audio-stream.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,q6dsp-audio-stream.yaml
@@ -14,7 +14,9 @@ description: |
 
 properties:
   compatible:
-    const: qcom,q6asm-dais
+    enum:
+      - qcom,q6asm-dais
+      - qcom,q6apm-dais
 
   reg:
     maxItems: 1
@@ -92,3 +94,25 @@ examples:
             };
         };
       };
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
+              compatible = "qcom,q6apm-dais";
+              reg = <1>;
+              #address-cells = <1>;
+              #size-cells = <0>;
+              #sound-dai-cells = <1>;
+
+              dai@1 {
+                reg = <1>;
+              };
+            };
+        };
+      };
-- 
2.21.0


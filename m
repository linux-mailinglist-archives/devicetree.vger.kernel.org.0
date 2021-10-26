Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 319E943B039
	for <lists+devicetree@lfdr.de>; Tue, 26 Oct 2021 12:38:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234690AbhJZKlG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Oct 2021 06:41:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234057AbhJZKlC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Oct 2021 06:41:02 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB825C061745
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 03:38:38 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id 82-20020a1c0055000000b0032ccc3ad5c1so647068wma.2
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 03:38:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2dEl9+MXeU9ILc1heZjgbaev2CRPnvoQ4/YvbAvAmQM=;
        b=Wvj+BKhBm4VGMC7KHzY5id/v4UWwUMA6n8H2QiJ94R/hGlGEHoQhZSBVi67jmc2ufp
         txuZbk0P8Wyyzddgnb6mRHNhe2ZhNiB74oE5B+LW1kaP4hyRJBSd6T2m0LK0HwDj5r0O
         242BNdJtbBCSp3WfGxa0XDHuX5ztXMOboF++uMJG7ruH5RGx4Zq2oInIjkKI1m2R9xC8
         VN5XbAyYiFOJE7wDljbPwAnGeBMo1eMWV+kKA8/yYHS8sdAOIRvI29g7mAIwPA5W4ti8
         WvqnR2TFF0Dh9+jbLxn/LyHibt+L6UPjQdMABWd6rU9ovY4VVPrTZlUmLNN3H1k3Arey
         xsLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2dEl9+MXeU9ILc1heZjgbaev2CRPnvoQ4/YvbAvAmQM=;
        b=qeDMKruohdINHkKjEFD94z+Fe1YthKvkjix90ojUWZ2I9f6KlwsiA4TmYSfbex7iAM
         mnPOr3hxOqXvlK12805lh2v5duTC4T3LqWdMGQ9B40MwSN4ILZJCx2IKPwyG1mYYzKqK
         looOhIJ6JxH9tgL1WKmrCivqmVDu0r+qN72SIjQ/Ts61DRyR7pYCzk46bGLHdkU1Qf/a
         pc8/oN11xNABVyXZu9xR/ct0fkAp/t88PoCyL0pLYM1E6r9H+MV6TSlOwqvnP1PjFnIT
         tQniBRbWk/R2Jj8RYApgW7FmtVEkAJIt89Ujl9JpGQ5DkBdHA05diTtkl0Phcqy+EmKe
         R0vw==
X-Gm-Message-State: AOAM532TpoQJjRenkQimPa4GSi7YUMRswV0hKRiAb+Cr38UBl9v/8Iem
        OTnp2XKd/WV7Gx4coHhsVgTr8g==
X-Google-Smtp-Source: ABdhPJwoBnWM4nlbZNJEzSZkG657rzRvTmphTxu+do8W6XvZ27EZCHgRUkJwOGCtA4p/p9T5OthBHw==
X-Received: by 2002:a05:600c:4f81:: with SMTP id n1mr55547518wmq.63.1635244717523;
        Tue, 26 Oct 2021 03:38:37 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id x21sm221397wmc.14.2021.10.26.03.38.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Oct 2021 03:38:37 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, bjorn.andersson@linaro.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [RESEND PATCH v10 07/17] ASoC: dt-bindings: lpass-clocks: add q6prm clocks compatible
Date:   Tue, 26 Oct 2021 11:38:05 +0100
Message-Id: <20211026103815.19468-8-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20211026103815.19468-1-srinivas.kandagatla@linaro.org>
References: <20211026103815.19468-1-srinivas.kandagatla@linaro.org>
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


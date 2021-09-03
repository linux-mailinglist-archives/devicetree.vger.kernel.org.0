Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 315893FFF02
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 13:22:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349276AbhICLWx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Sep 2021 07:22:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52396 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349241AbhICLWs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Sep 2021 07:22:48 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1F7AC061757
        for <devicetree@vger.kernel.org>; Fri,  3 Sep 2021 04:21:48 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id m9so7756094wrb.1
        for <devicetree@vger.kernel.org>; Fri, 03 Sep 2021 04:21:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XrcdWigOrJBOqNH3/v+b+R+GIipVI1XmPMk0yejMbMo=;
        b=m3dU1nskU148xorso3M3e8tJyMoaA5cHdIzy7AL+czkLGPv7oLPA5e7oVDBKgfySp6
         NzaK41cabEW4S3hpjdQHiOyuVtyfaP4+2EM+JFWxbRAn8VFJEiKI4bDMgFkH6Q3i9rCX
         0de9CDTHSVkVTXIVZnpdIibdLfUKSjFPnCPCc4LoWaQvs0hDXnBTUF0xA5tSprctigvW
         Sj1iRKkQRrutNlSRfRgic/lZR379VY9Eka8nmn2z1EQzlDKQZFErCpHOgOw5+4txL4yR
         aUw1vzmFa8QB0WAjRrKFD2fAqPO5jqIrMLUsl0tPuf0GxybFXu4exEErL0OXa8QKEM3b
         T7lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XrcdWigOrJBOqNH3/v+b+R+GIipVI1XmPMk0yejMbMo=;
        b=UTULpEXa23axNVrixEKhMpp+EV3Ktsu0Aw9jFyaQCR80k6aQC7OKyQSx4WIMp4xWSA
         NDbSn3VsfISi4zyfCRShzZ/sBIjl1Cr5ne5sj6KIjOOrgoOzRRIg2SazTe/C782xU+LW
         Plrbq3EgrLjZpNiY2J0XMo+wfBUQgiFM+U36KuJtHpKZdT6tvB5E5UT3+UE57brcfhFK
         Fa1NsJpbnNxq+A/WOZRPDWq6msPP+aVmnS7Yo2j2qqrNnCiPlcy8RujbFOQTTn1c44ZY
         ibJHBsVWiBSpmFfx1Gy9FJyAUb87l8W4Di2uCJQQcFPy485JVGDoFVpl6/LXqQ56YIpv
         F2UQ==
X-Gm-Message-State: AOAM533waBTbft9ehlTblMBzC9C1BZrqWzQR33IG9nobE3VMLQfDsaoQ
        Ku8wGi4B4oy6tehHMphUpFCVRw==
X-Google-Smtp-Source: ABdhPJx/laJ0dPo3VhAp35pton8lIaiXEa8k4R19JM9JV80XiAkhPelcOx2o0e0ANCWxX77k4D+xsA==
X-Received: by 2002:a5d:56c9:: with SMTP id m9mr2888686wrw.134.1630668107423;
        Fri, 03 Sep 2021 04:21:47 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id f20sm3881877wmb.32.2021.09.03.04.21.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Sep 2021 04:21:46 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v5 12/21] ASoC: dt-bindings: lpass-clocks: add q6prm clocks compatible
Date:   Fri,  3 Sep 2021 12:20:23 +0100
Message-Id: <20210903112032.25834-13-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210903112032.25834-1-srinivas.kandagatla@linaro.org>
References: <20210903112032.25834-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On AudioReach audio Framework access to LPASS ports is via Q6PRM
(Proxy Resource Manager) service, so add a dedicated lpass-clock compatible
string for this.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 .../sound/qcom,q6dsp-lpass-clocks.yaml         | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-clocks.yaml b/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-clocks.yaml
index 589c3f1e2008..9f3de2307d1c 100644
--- a/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-clocks.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-clocks.yaml
@@ -16,6 +16,7 @@ properties:
   compatible:
     enum:
       - qcom,q6afe-clocks
+      - qcom,q6prm-lpass-clocks
 
   reg:
     maxItems: 1
@@ -54,3 +55,20 @@ examples:
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
+              compatible = "qcom,q6prm-lpass-clocks";
+              reg = <2>;
+              #clock-cells = <2>;
+            };
+        };
+      };
-- 
2.21.0


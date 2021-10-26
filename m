Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 97A5043B0EF
	for <lists+devicetree@lfdr.de>; Tue, 26 Oct 2021 13:17:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235462AbhJZLTo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Oct 2021 07:19:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235464AbhJZLTo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Oct 2021 07:19:44 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A662C061745
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 04:17:20 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id m22so15204823wrb.0
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 04:17:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2dEl9+MXeU9ILc1heZjgbaev2CRPnvoQ4/YvbAvAmQM=;
        b=NNT79ihZhqCH1NnMfKt396guBBo1Hz43HuY1RcTXXdLru/JiZNRlwkHzZJQYKWf59g
         fm4DtNxt2Zq19wr4QCX3VP1J+iZnX+QT499St4d+ld7y8638sUKvtNXxyykYtwkeCyCA
         H7jMnPTxJX6nsFGZza9bTFYS4n8sSrpPLltMuMsxkXg2ffREBU6uGPDCYYAHTsS0N5w9
         BRbN2wbwCq8HiU1SLGaaJIB0BB4RgbeAWO6iUcE39OuQl5RCOz0C7pPIkT6vab7ATl4H
         jyNZfUdL9j+6w/IMe2/IdA6agLdim3beF8PDdh7ARJAEESO9qlVTOY2VMRfayUiq0G+V
         bxrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2dEl9+MXeU9ILc1heZjgbaev2CRPnvoQ4/YvbAvAmQM=;
        b=qQNX8RkhaGMv6EdvD1BDAbXTfxnHO3uwZVZfxczwhbdV0Jokw59IYIIcZiLxRmABC1
         0Ucbm8sZmOgk2lEn7tjrQQ0sARt5zLRskbFosr5Ad47lTqWBnWF9NsP03b4Z2T3SJVaL
         KLWxIPBRoFwIyjRAr9m4YW0zrnQfo9bnsGUHPBLhocLkLAmLhWwThboVKpVzp7u1SnRN
         NQbQ0BPIPPLC4gdoy7RS+IairIDESBgIkZYNATxvPGwICDkR7Xa0Jzd1ap5km/j033x+
         0QeI+jOhr9CoeMhXnTpi4BFu7BJulrfQ9XmHGMSmfPL4kck1ivXT2yyo1MswNpOB4Zs4
         Xn+A==
X-Gm-Message-State: AOAM533lfcAtUgIjZuWSWMaF4f4Df47D3SpL3/KSZCELr2JA51bpQWTg
        wRbNsHmQzDo/By0mUfemQbxv8p+7fuGGkQ==
X-Google-Smtp-Source: ABdhPJwNCiPDSmBzcf71Ksb3aIT1sAswFCCLLNeiUP7Gqduq1anFTv1p+mYfClnwboSUqSVIbn3+DQ==
X-Received: by 2002:a5d:5259:: with SMTP id k25mr21452296wrc.132.1635247039035;
        Tue, 26 Oct 2021 04:17:19 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id l124sm355483wml.8.2021.10.26.04.17.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Oct 2021 04:17:18 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, bjorn.andersson@linaro.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v11 07/17] ASoC: dt-bindings: lpass-clocks: add q6prm clocks compatible
Date:   Tue, 26 Oct 2021 12:16:45 +0100
Message-Id: <20211026111655.1702-8-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20211026111655.1702-1-srinivas.kandagatla@linaro.org>
References: <20211026111655.1702-1-srinivas.kandagatla@linaro.org>
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


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D2D6440C60D
	for <lists+devicetree@lfdr.de>; Wed, 15 Sep 2021 15:15:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233450AbhIONQQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Sep 2021 09:16:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234205AbhIONQO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Sep 2021 09:16:14 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FACCC0613CF
        for <devicetree@vger.kernel.org>; Wed, 15 Sep 2021 06:14:55 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id t8so3860479wrq.4
        for <devicetree@vger.kernel.org>; Wed, 15 Sep 2021 06:14:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0TebeQ0TXJpETl5yyZtrFs6HbXMx9cchKOW5rtUhE/g=;
        b=VKAKkRScP2Ss7XNPItGNsO1kHw6FNFTif5cWTVXhySk5F6VRJ+fLUog7QgeiShPYUO
         mUGT7+IkarbckNzxoqp1V70mN1dB76PTVj5vvR1h3zV/4NX0U2MtxYAHauRfwPOFaiwE
         csDWwu6irQRRt0n7bvz0AkWEPP0YzHgVGhXJAOm0akilJsumku1paDzbNAbtH0CHT9bz
         uThRfPR306qXDNCp3JOpFADItDX7fi0XcFQK1psecoQQfiLRu9Z7gQDPiiUJIBj79rN3
         DRv8OYFTlWjlCeEoErQq1qkR/sz9ICbFKwZdQFYwXABSA6XYhBjgnOjTENtQdYoXk0uc
         WlEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0TebeQ0TXJpETl5yyZtrFs6HbXMx9cchKOW5rtUhE/g=;
        b=JmRvrydD+xZlb5s/2weQHP9Ox9xlqmVMSi3gh6+Noh0rd38e50qqYz5xlNye2myUyk
         sGGZpOGUmYUnjZnqEVK234oikawoic7sql56xNTDE1OM2I8Uwzgou8pXNAD18rBy2CKo
         EGYVGY0awm2ySibvczTl82aDKcd3DxS0K4FREHUE8yCRS0w0+qjPYKZerxHS6x+hzeRq
         KsYPF2xLly8qLGqi+tTZG0rz4jlEojwqqGCRw1Z1JaGFGzWnpYiD4HRp9Zwh8Yg1qNXr
         4zZT/jFs8g6W796Oomt9yh1sxd5sp9rBzXLZemJkVQyyj5gs6Y4Dh+ouDmBpaZwhaE/c
         5yDg==
X-Gm-Message-State: AOAM532ELBsNwpfvLWPoMM40qVBrvfbJhYLXeT1ohlDFih9xpfj6X6gs
        pJSAoGXT1laClDEFgWZxUl1FnA==
X-Google-Smtp-Source: ABdhPJzRvVjmGkM2gGD4eHqpCGRKQ+3zxZuPZt2KTU+h45aC3THfvytrxcYbt4QFm2YyCW6n7kE+Ag==
X-Received: by 2002:adf:c550:: with SMTP id s16mr5138535wrf.25.1631711694296;
        Wed, 15 Sep 2021 06:14:54 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id m29sm14501717wrb.89.2021.09.15.06.14.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Sep 2021 06:14:53 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v6 11/22] ASoC: dt-bindings: q6dsp: add q6apm-lpass-dai compatible
Date:   Wed, 15 Sep 2021 14:13:22 +0100
Message-Id: <20210915131333.19047-12-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210915131333.19047-1-srinivas.kandagatla@linaro.org>
References: <20210915131333.19047-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

on AudioReach audio Framework access to LPASS ports is via
Q6APM(Audio Process Manager) service, so add a dedicated compatible
string for this.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../sound/qcom,q6dsp-lpass-ports.yaml         | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-ports.yaml b/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-ports.yaml
index e6148c17419b..dc7fba7b92d5 100644
--- a/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-ports.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-ports.yaml
@@ -16,6 +16,7 @@ properties:
   compatible:
     enum:
       - qcom,q6afe-dais
+      - qcom,q6apm-lpass-dais
 
   reg:
     maxItems: 1
@@ -169,6 +170,32 @@ examples:
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
+        compatible = "qcom,gpr";
+        #address-cells = <1>;
+        #size-cells = <0>;
+        qcom,domain = <GPR_DOMAIN_ID_ADSP>;
+        service@1 {
+            compatible = "qcom,q6apm";
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


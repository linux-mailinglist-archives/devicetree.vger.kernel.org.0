Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E0298423CFA
	for <lists+devicetree@lfdr.de>; Wed,  6 Oct 2021 13:40:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237836AbhJFLmI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Oct 2021 07:42:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238106AbhJFLmH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Oct 2021 07:42:07 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8D7DC061749
        for <devicetree@vger.kernel.org>; Wed,  6 Oct 2021 04:40:15 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id k7so7800284wrd.13
        for <devicetree@vger.kernel.org>; Wed, 06 Oct 2021 04:40:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2dEl9+MXeU9ILc1heZjgbaev2CRPnvoQ4/YvbAvAmQM=;
        b=vZllb92aAEJ9NkqVM6iD8VcorgLavsotFVkNp+ayqoD6tN9+WjaYecXiZsX/jW805y
         HId9AnM1JgLDICk/McTdH/1ufLferbwIzD33OZjwBRKuS3oH/S9x0nMCoOKwQIpABPuu
         rQyR90Wgug0AWWLbjlEdAW5xhd0UUc2CCM69Gw/fS1uWXWU3trG4RRydIAweNhLbDHh3
         Idhm0/GC+ypkLhRMyMingeTdgdlwKDyndIbVcGYpf4ILrg7WHmGKThbd/j72UJyKkWiQ
         7hRgO79avt5jzk7s4IJ6yQM7zyHjBzxrZbBNfyInHi09vKzRfry0mDS8UFkEWKBBc25S
         Gajg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2dEl9+MXeU9ILc1heZjgbaev2CRPnvoQ4/YvbAvAmQM=;
        b=5JIeXqmoktWQywLKbEhnjSY80ZjlOhMECbp+iiEXIbfEqERIziXVc4pSjYba+BjEzH
         4E44/fAUjPhXP0QB1Np0NdI98w5X8nJebb9BKWyZ2iXeN4jFEzLKzMAoDwtJZieXLM6O
         n/iovdGqdXiS/L7v29dOHUC2DxKWQ9WmYGzfkoy/nB7mtZ7aFkvvoXvBmTCQWFYWloxl
         KR5OZDewRsPdwJRYertXkA1oFCm5OoAesnAIkxkoRgSsAxVhjykU6DU0WpJkEOKTRmiZ
         NJFOrF3+3Bl70NBKs8se1q/+hNufyf0FIJW5XnYCo9o6v2yHY/sz1SX7VIO4SIRvo7Ql
         tJMQ==
X-Gm-Message-State: AOAM5333BX1h8NyOKo/k3Dm7N0noEdPXz/4qG8AK8kf8kK5Fdp1g4UL4
        ytmWeGh3zGQ3MBtyre65fe77nw==
X-Google-Smtp-Source: ABdhPJwsuaQqexyIl/OQiqF5eWg24f86zd3l2zhHQGq6kuJvsO0XU4oEci4QN4tjASvD0JTEEED7Fg==
X-Received: by 2002:a5d:648d:: with SMTP id o13mr16508413wri.421.1633520414467;
        Wed, 06 Oct 2021 04:40:14 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id n11sm5540110wmq.19.2021.10.06.04.40.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Oct 2021 04:40:14 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, bjorn.andersson@linaro.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v9 07/17] ASoC: dt-bindings: lpass-clocks: add q6prm clocks compatible
Date:   Wed,  6 Oct 2021 12:39:40 +0100
Message-Id: <20211006113950.10782-8-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20211006113950.10782-1-srinivas.kandagatla@linaro.org>
References: <20211006113950.10782-1-srinivas.kandagatla@linaro.org>
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


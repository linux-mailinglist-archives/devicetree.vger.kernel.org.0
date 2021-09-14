Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8171140A2AE
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 03:41:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236298AbhINBmW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Sep 2021 21:42:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235213AbhINBmV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Sep 2021 21:42:21 -0400
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E4C2C061762
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 18:41:04 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id lb1-20020a17090b4a4100b001993f863df2so1483353pjb.5
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 18:41:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=vzWWgarNRy2l997k27Lj6Cug9P7VmcYleT6gc3UMahQ=;
        b=s4X/ORL/owEy1Ueh/AsqdBKckUlm6IFkkz5864T0OecenaCS1GD3YN6kPeP1i5So+j
         aPjuOoGRz6vD1GnmcniWT7Yk00PT8LEHgiaUEnUXfBXyotV6rwcJhbzdtRgZ/gYVMmh7
         2sRuA7xAP4Shyf/3rHSu+6Qn2NXQshxBJFpwHufRbdH1LpjhwIzHcWgQPpGD6rdGI4en
         nSDKerFaRTtC8WZsrPxTg40Xw/B06grxFTgFrllMTM+3PSEhhEhm1im8ZUQEB4XclQ1O
         DGt1hprxSC5wav7QNs947vzaJt4waoHmb4T54qSgexSHOV8W1yOdEn53+U5MJeUSiEBL
         p47A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=vzWWgarNRy2l997k27Lj6Cug9P7VmcYleT6gc3UMahQ=;
        b=HBBUTP5pcwoCM1ME63yYthEx2+B4I2qlLHjQD2RDZ+Br0KJUOBJFYuqq2fInZ+54FC
         NMARSWU6txOmmKISK3Gu4HwIb1bJ/R5mhS3hWG1RrBHG44//QxhGvzC95uSPPsXpm5H4
         f3kuO5SsF2zphaBGxcm2XXmlE8Hj+KVJfKbYrHKr0oIDdhs0ZKsD7TXMf4XyO9yc5eg9
         rl/gP1K9Zf6+vskvsFKsZRqNEWdk8u0Z4petaxg1KgYEdseH0ld/Q9hCIezfW5o1xXdq
         7mUQJm8ztraurMnHGvKBW09tEk8Pi8y5Qj9DNzaqQuohhCxbVZ8SJb7/sFezmFaqgu41
         eTUg==
X-Gm-Message-State: AOAM531mk/ZOOENRWhvD1PNzQF6xN4Eeg+o5VjeuhL7BcLyvbmT6lIV1
        c4+tkGPB47/Da7MQSmgb3sPo1g==
X-Google-Smtp-Source: ABdhPJxySZQk80ZFePcbZIAmR4136ZeoOCdTSjHUKhJg1l7LKIq6onVTwKeVI4RdjcuyVC2CzozdRg==
X-Received: by 2002:a17:90a:eac4:: with SMTP id ev4mr2634089pjb.244.1631583664218;
        Mon, 13 Sep 2021 18:41:04 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id 4sm8037615pjb.21.2021.09.13.18.41.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Sep 2021 18:41:03 -0700 (PDT)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Jassi Brar <jassisinghbrar@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Sivaprakash Murugesan <sivaprak@codeaurora.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Loic Poulain <loic.poulain@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH 2/3] dt-bindings: mailbox: qcom: Add QCM2290 APCS compatible
Date:   Tue, 14 Sep 2021 09:40:49 +0800
Message-Id: <20210914014050.28788-3-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210914014050.28788-1-shawn.guo@linaro.org>
References: <20210914014050.28788-1-shawn.guo@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add compatible for the Qualcomm QCM2290 APCS block.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 .../devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
index 6395281b0cec..a6c5c66b7804 100644
--- a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
+++ b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
@@ -24,6 +24,7 @@ properties:
       - qcom,msm8994-apcs-kpss-global
       - qcom,msm8996-apcs-hmss-global
       - qcom,msm8998-apcs-hmss-global
+      - qcom,qcm2290-apcs-hmss-global
       - qcom,qcs404-apcs-apps-global
       - qcom,sc7180-apss-shared
       - qcom,sc8180x-apss-shared
-- 
2.17.1


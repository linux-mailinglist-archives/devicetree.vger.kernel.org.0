Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 53CA944BF86
	for <lists+devicetree@lfdr.de>; Wed, 10 Nov 2021 12:00:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231784AbhKJLDg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Nov 2021 06:03:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231777AbhKJLDT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Nov 2021 06:03:19 -0500
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com [IPv6:2607:f8b0:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 782B3C06120C
        for <devicetree@vger.kernel.org>; Wed, 10 Nov 2021 03:00:27 -0800 (PST)
Received: by mail-pg1-x533.google.com with SMTP id p8so1901839pgh.11
        for <devicetree@vger.kernel.org>; Wed, 10 Nov 2021 03:00:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7Eecmho/J6Agff4bcpW3b3Dj2ZtsofOUgkrIvTWiN8c=;
        b=leAvj1mXLG0HHHpuqJnYx4iiChlD88CZNwcnrsMCfsebweYhh7+0cGtjUPp2+2Xg91
         itLpKUAmWtnIVRMCe/7gpXX17rZJmMSk67gsHRGP+i4Md3B3cBtFZS3JOQuyYMjtmjLo
         sj4LpG3ZNcqvU8fawzrzltxb81kcAz0udI9Pm1TkjMzRz9fUHT8xpD2y1RiPJXELCBO5
         qX9CSqiQ2zTbMtli+tWsLOnDtm4h97/2IDZqQ+LKwulNix3Km7Nf4QKedfxfzFE0Z+yg
         57QDQdVlQOeG8IvYmaVYw8bSV99q6D3UZdQokfweNzCbYzHDfPoAUW85x6zTrazzixa3
         h+iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7Eecmho/J6Agff4bcpW3b3Dj2ZtsofOUgkrIvTWiN8c=;
        b=5K8ffn9IduTxOUwakDUvuqI49cxlSvrPqql9xiCx69oav6APl8pPRUPf/qz3v45pSG
         cjGxlpIgK/wJJ2Xzx6tYTzvJPQirCOHOVY9LYUdQMKpIUL2PXbwjsO3jR7+RXcbCnGNQ
         jQm5cpoZ+v3IEVmLgVY91Hh1qEldUuOn5skZ/ZoDybIMmGoxQC828q3/nGXekr2RO8eh
         Mb72AV0J3ZKswWnwXCtloIMu5Ip0uOr6kLkHwsHvhAiUYHa6+8NNXJkspssdxnBYskzw
         E2A8Cd3Ybxnr+NclnHYzAaJ+l/cEUVo/FrNn3pZF57S7WJ05+qDZMTYq2m/LcTY75NFg
         cciA==
X-Gm-Message-State: AOAM530zGDm4KQuD578fEjmzoIkrZWEPt2+fSFNFLIl14yFpkWlXxM8t
        qIgk4jLEz2MiJzMSkxlzE8qqCQ==
X-Google-Smtp-Source: ABdhPJxviW6mvmO0Bz+ZTQMwv+gsFrpAJRqvbJUVly9WWffJckKn5XGCguRKyP28KHPeCjFmGfFF1g==
X-Received: by 2002:a05:6a00:b49:b0:49f:cc01:10ff with SMTP id p9-20020a056a000b4900b0049fcc0110ffmr15448827pfo.42.1636542026926;
        Wed, 10 Nov 2021 03:00:26 -0800 (PST)
Received: from localhost.name ([122.161.52.143])
        by smtp.gmail.com with ESMTPSA id e11sm5585282pjl.20.2021.11.10.03.00.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Nov 2021 03:00:26 -0800 (PST)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, agross@kernel.org, herbert@gondor.apana.org.au,
        davem@davemloft.net, stephan@gerhold.net,
        Thara Gopinath <thara.gopinath@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: [PATCH v5 09/22] dt-bindings: qcom-qce: Move 'clocks' to optional properties
Date:   Wed, 10 Nov 2021 16:29:09 +0530
Message-Id: <20211110105922.217895-10-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211110105922.217895-1-bhupesh.sharma@linaro.org>
References: <20211110105922.217895-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

QCom QCE block on some SoCs like ipq6018 don't
require clock as the required property, so the properties
'clocks' and 'clock-names' can be moved instead in the dt-bindings
to the 'optional' properties section.

Otherwise, running 'make dtbs_check' leads to the following
errors:

dma-controller@7984000: clock-names:0: 'bam_clk' was expected
	arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dt.yaml

dma-controller@7984000: clock-names: Additional items are not allowed ('bam_clk' was unexpected)
	arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dt.yaml

dma-controller@7984000: clock-names: ['iface_clk', 'bam_clk'] is too long
	arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dt.yaml

dma-controller@7984000: clocks: [[9, 138], [9, 137]] is too long
	arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dt.yaml

Cc: Thara Gopinath <thara.gopinath@linaro.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 Documentation/devicetree/bindings/crypto/qcom-qce.yaml | 2 --
 1 file changed, 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
index 30deaa0fa93d..f35bdb9ee7a8 100644
--- a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
@@ -53,8 +53,6 @@ properties:
 required:
   - compatible
   - reg
-  - clocks
-  - clock-names
   - dmas
   - dma-names
 
-- 
2.31.1


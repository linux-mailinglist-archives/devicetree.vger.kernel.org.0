Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9D5F9568BD1
	for <lists+devicetree@lfdr.de>; Wed,  6 Jul 2022 16:53:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232632AbiGFOwr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jul 2022 10:52:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233467AbiGFOw1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jul 2022 10:52:27 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C577F25E81
        for <devicetree@vger.kernel.org>; Wed,  6 Jul 2022 07:52:26 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id r9so18756003ljp.9
        for <devicetree@vger.kernel.org>; Wed, 06 Jul 2022 07:52:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8RbT729/NK/J3aZcEME2h8k43LmZZ+ZCamZPbQqvBkw=;
        b=hkNxFhxVPmr2OSV43R7kX0VItWyrk0s/R5UB8rc1B5Jmj4ElrbJlMF1PQjdzDmPI1e
         RsExrvVhLLbi1DG+c2XxN3OEXh5gQSaLYWzIxwP6vLEriJnrDiLGdw+yXk4mbxw01Ya2
         2jLmYEN26Bl3rb1CfBoPIHZFCaOhRNMIV2PKpwz7sJBbFh7NMt4obsJtT+swham02g3j
         bkc4IPEDXlG8vIHsSW8ZZLkryGHrZAhU5g+B9uWIGcld+3xyLLCA2PIxe7xcrEQBrLOl
         2yC5ARRh3mruQ3lz2BirmBpTXBkM9Ziw89Z3rnAKaqA4YjBRv0hkVu/OYXXPrcL51hbK
         W/dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8RbT729/NK/J3aZcEME2h8k43LmZZ+ZCamZPbQqvBkw=;
        b=HX+AvasDxx25pDs1x3AUc5vdC/8IKrc1pchhxoG0/7n5lbfD60amLErcD9yHmIRpMl
         h3AYpsP7gyUnaqFW38Msdet6t/Bn0G9lWOHdFI9+nTXfz3bFIR8jjvS+0PG6ukqXOmCj
         CZ/mqjGOtAxr4lHcU78fQjcxuXbbiDSCeyk1WGyG35M2YTrdWm7/mde4f9q+Gnn1NMbj
         GkwRudJDmAKCLxT1GrbdHNCOvqiXG+GKJeiDS/IQ2GNQItvi1GRXD7QYoqoRymNc9rBB
         /Mj2xY0rpM/f+LYGFbfemHDqaEgbSMQgnmijFfioPttDSjCjNYgAuenk6HyFPJL9qYVh
         RF2w==
X-Gm-Message-State: AJIora8CX9MA9Px4uu5xMELW/gb9/XZZaf4BlUzQmQI45+f7pHm3qEjb
        t8h6KmZaIoolbWnmaUcptxKD2Q==
X-Google-Smtp-Source: AGRyM1vqFw7qQvdl0zt0pIdJF37OotKd8BH1Pqwi8aIWe4/HT+CDDVwuOttF8QA5UYJQHTVPRGS63w==
X-Received: by 2002:a05:651c:4d0:b0:25b:b6f4:ae2d with SMTP id e16-20020a05651c04d000b0025bb6f4ae2dmr23587703lji.472.1657119145197;
        Wed, 06 Jul 2022 07:52:25 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id v25-20020a056512049900b004855e979abcsm556617lfq.99.2022.07.06.07.52.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 07:52:24 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH 1/4] dt-bindings: display/msm/gpu: allow specifying several IOMMU nodes
Date:   Wed,  6 Jul 2022 17:52:19 +0300
Message-Id: <20220706145222.1565238-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220706145222.1565238-1-dmitry.baryshkov@linaro.org>
References: <20220706145222.1565238-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Different platforms require different amounts of IOMMUs. The APQ8064
uses 64 IOMMU instances for GPU, adjust the schema accordingly.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/gpu.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/msm/gpu.yaml b/Documentation/devicetree/bindings/display/msm/gpu.yaml
index 3397bc31d087..346aabdccf7b 100644
--- a/Documentation/devicetree/bindings/display/msm/gpu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/gpu.yaml
@@ -58,7 +58,8 @@ properties:
       - const: ocmem
 
   iommus:
-    maxItems: 1
+    minItems: 1
+    maxItems: 64
 
   sram:
     $ref: /schemas/types.yaml#/definitions/phandle-array
-- 
2.35.1


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0EBCD55AD76
	for <lists+devicetree@lfdr.de>; Sun, 26 Jun 2022 01:27:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233680AbiFYXZb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Jun 2022 19:25:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233674AbiFYXZY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Jun 2022 19:25:24 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0776C10551
        for <devicetree@vger.kernel.org>; Sat, 25 Jun 2022 16:25:23 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id b23so6809606ljh.7
        for <devicetree@vger.kernel.org>; Sat, 25 Jun 2022 16:25:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Hdb4viUyeoAD3fZen4yT5k9HKKhtb5+3CiGbC1gKk9s=;
        b=xbsTqFqQexvvHfrZi1dlvI9ZNFG8D7ERnivLTne4psFP3hfe/sPxatA+bD/E04umzp
         hLJZTi1B6m/jE3g86e1STMv53E5qLOW/XSc5GVpqXL7NuTYo3GxlwqRPL77/dtr3QWFH
         bUYrwm/WmhaTK3IhSfNqEKwGlpuPDuSNh2NhHETKbQ5MRz9y+3dgDMcF/qQFNIQImuFe
         IE853UvgSNvdkPk7lCZR2kkourLqc4IRuJ4od7v1mtQcNNTCgLFVmUNWGT1paKfaCU4x
         PQLfzk+roEVTYhfMARlfDDarWoKFdoJ6p3kGVyNtOsWbHHjCzCnWHHmnp/n4IjtsFgO0
         4Z6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Hdb4viUyeoAD3fZen4yT5k9HKKhtb5+3CiGbC1gKk9s=;
        b=l3WmdAOXXLjaT68oIf5Otjgd7iRRNwPhSYngpylE7K8wJidsS92LHQnoj4I7+IOp3m
         Ot7xZeMRWPpCysW3bHR9HZmbEDQKTgiSzH3Q87NCAjzKfyA/FjXSXjilc2uSPJU24Ejz
         Cu3eRk0LU15cp3l7FM6cLLwYgf1ZD5o34/ybqwqBHGpirZjG5l6UltWMnjGHOEJWD+Wa
         k23flBeCqyezUZW0zSHv5zRtQs3nhRL/kznZ9bAblhu84BFqs4VFUY0YHyGDMJLsVPEy
         0RBMMD003M/bhmyu8z1D7a2AXG1aO/bOt2DkAUIxB2LtTTFfa0+hCwpfqa2Q9HXNQh/B
         Mydw==
X-Gm-Message-State: AJIora9gbJCOGn9/JihG6Qrh4SYO3bQG+uDuIpJHDixjw7M+4mB80iWo
        wCDRu1pPsXsk5alSl6R9pV3M9Q==
X-Google-Smtp-Source: AGRyM1u9aNew+NK48saWr9Dc/XVH20eCl2qQ3t31waI1ojmThAAMB/hymwBhpE3MDndjE/rzLQnXeg==
X-Received: by 2002:a2e:a54a:0:b0:25a:7010:4aee with SMTP id e10-20020a2ea54a000000b0025a70104aeemr3071829ljn.245.1656199522603;
        Sat, 25 Jun 2022 16:25:22 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id s8-20020a056512202800b0047f750ecd8csm1093694lfs.67.2022.06.25.16.25.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Jun 2022 16:25:22 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>
Subject: [PATCH 07/11] dt-bindings: display/mdm: add gcc-bus clock to dpu-smd845
Date:   Sun, 26 Jun 2022 02:25:09 +0300
Message-Id: <20220625232513.522599-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220625232513.522599-1-dmitry.baryshkov@linaro.org>
References: <20220625232513.522599-1-dmitry.baryshkov@linaro.org>
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

Add gcc-bus clock required for the SDM845 DPU device tree node.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml b/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml
index 9253e0ca9fca..0dc16326bf8e 100644
--- a/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml
@@ -29,6 +29,7 @@ properties:
 
   clocks:
     items:
+      - description: Display GCC bus clock
       - description: Display ahb clock
       - description: Display axi clock
       - description: Display core clock
@@ -36,6 +37,7 @@ properties:
 
   clock-names:
     items:
+      - const: gcc-bus
       - const: iface
       - const: bus
       - const: core
-- 
2.35.1


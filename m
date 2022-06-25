Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB8DD55AD8A
	for <lists+devicetree@lfdr.de>; Sun, 26 Jun 2022 01:27:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233686AbiFYXZc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Jun 2022 19:25:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233689AbiFYXZ3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Jun 2022 19:25:29 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 691FC12629
        for <devicetree@vger.kernel.org>; Sat, 25 Jun 2022 16:25:27 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id i18so10495730lfu.8
        for <devicetree@vger.kernel.org>; Sat, 25 Jun 2022 16:25:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gWoCshJx0eeQE7NK0wwwD4EVL2o2EaUzdaBgH0PNhgU=;
        b=xiIlYQAOx+RgUAtiTCwtujWmIyV74Mji6guPVZQ+UInM7d8t7OvmG8yJeSrPNcAl5/
         9Bn4FVzxZCgHY8VGLwQkH2Wmf3Hpr4SQlWFNYDADUxsC7nyOonKnPejvWwgdjLyanzyx
         XCKQ1t7dLvzEMTJ6o7CM27in+0tnofafgwJb5GormAof6lQX1dXuh/jMTMQxX0uZI2L3
         qzAWsGdEmUhWm8aqNTTOjjXTCk4/qQF30zfoPGdncCuRVSw4jDml9UMMqnSoTDiEsGpb
         Yr9WevejJcPE3yg6oM7/hLI1ktqTQs0KyltPB+cJT6dMghI+KXolhOicavWSsKZocltj
         7zpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gWoCshJx0eeQE7NK0wwwD4EVL2o2EaUzdaBgH0PNhgU=;
        b=UmMCx62/WdPMV/ZnjTXqK/W801ygMHuuY9OkS/ST9p598SBX/HH4+blmmPqzvg/U2r
         qsPbgxLcP8gZmsQeETg1EgLYoPJDVyj/h13sC32y4wBqGtwuy0SwStuPWFFWH0zLDySq
         +qAK5MVEl59qpLchWoOInj3IJ5vVRQt7a1NVajzyxGDWrqf2n369MAG8cYkKw/bqCxbI
         HIbl6Mfbo67HVAKI6Ck2yVWE3yBx7TSVS+U/THE7VuvUyc8fSt8YpGhN0gwrR+v9bA4C
         91JY1f/cjERSi18S7RyBULA6npNO/Bwa+LSJlYsAMvQ596C/NNtJtB1c62q9+qavP7FB
         KxpQ==
X-Gm-Message-State: AJIora8Vty60L7+CoxYUuFt2AjSkYEVUKvpN8RRCoE0XvuqFQzBysG2Y
        65csx+c+P0OMkt3YN3cADD4S5g==
X-Google-Smtp-Source: AGRyM1uBQymWy56WzAi98/GXSYCFD92Wwdpc+HEM+cxh8zQxjZCvbxqmM9XWuImdkH+dosLTGIxjyA==
X-Received: by 2002:a05:6512:114d:b0:481:1332:c83f with SMTP id m13-20020a056512114d00b004811332c83fmr335281lfg.205.1656199525732;
        Sat, 25 Jun 2022 16:25:25 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id s8-20020a056512202800b0047f750ecd8csm1093694lfs.67.2022.06.25.16.25.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Jun 2022 16:25:25 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>
Subject: [PATCH 10/11] dt-bindings: display/msm: add opp-table to dpu-sc7280
Date:   Sun, 26 Jun 2022 02:25:12 +0300
Message-Id: <20220625232513.522599-11-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220625232513.522599-1-dmitry.baryshkov@linaro.org>
References: <20220625232513.522599-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On sc7280 platforms DPU device tree node contains child object
opp-table providing OPP table for the DPU. Add it to the list of
properties to let sc7280.dtsi to validate.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/dpu-sc7280.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dpu-sc7280.yaml b/Documentation/devicetree/bindings/display/msm/dpu-sc7280.yaml
index 349a454099ad..49c4a055d20f 100644
--- a/Documentation/devicetree/bindings/display/msm/dpu-sc7280.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dpu-sc7280.yaml
@@ -52,6 +52,9 @@ properties:
 
   operating-points-v2: true
 
+  opp-table:
+    $ref: /schemas/opp/opp-v2.yaml#
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
     description: |
-- 
2.35.1


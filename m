Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B4C352EC1F
	for <lists+devicetree@lfdr.de>; Fri, 20 May 2022 14:33:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349265AbiETMdE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 May 2022 08:33:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349296AbiETMdC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 May 2022 08:33:02 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB66D1632B8
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 05:33:00 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id w14so14014131lfl.13
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 05:33:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6kVjKLD0WUf2G+LRJz5LfG85g04pee8OaNoMoJlHI+4=;
        b=pwXRpYli6OY79jiFu4Rq05OC6ZvclYgbSw6tlMPiOAqCgMLszEy5zcT3HAbP+Mf4/s
         Naqu88BmdrNcqkjgZiA/8yxrnzkh+7TBG1bMToBuUK4LordzS7nf3VBjRNmsvkZ+Jz+O
         8pBHAubkmzjtQ8rvmRXrANdINvSW+KYyavlmpmj0fqA9cK+cqfb74PlXvnvoAkBzG6oB
         Ux2psiWFHrly57WGFcWN3dbIsdPsoP1FxWE6lsWcyOTuO/vR8YJ5p7ls4MyloPFDSZis
         bltDi1+3n4nKg+LkBFlWjvWXAGdF/n6l6OnI92ILwL/OEWrT1Uv+vvSQn51kwQ8qinm/
         GLMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6kVjKLD0WUf2G+LRJz5LfG85g04pee8OaNoMoJlHI+4=;
        b=wUuODWaDhtyn30y113xRRuv03rqUrEDdGX/1CAKETJHq/nBeb5QpulVWNkkoaXBkaP
         jqfMvJYhRkJ/TXbKMJaYaYUdLKuEFWEAVSDlbjZo1F2LMRvFx3RF5HoTcs9HqSxQEa6f
         YN7NY1Mgq6Q01CzhWYOsyBCJ1ES/ejLiOJYRTvcEPYJhkyjDtfL37W3zCOy0QWsYJX90
         4c5GSy7fP/nQ4O0RHeZmkpnoQYJ9PC+yK2Ym61PRQB46Os6W9fhCLRUzHdjI0EOmA5ig
         T4VzAgx+xoEyMsr8GDhNKdajl7Oi4v4QA4SQdMMWzIDfdE+v/h9Gt69RAsU/RoQDpnfp
         iprw==
X-Gm-Message-State: AOAM530lWvNQAsUEWwN3TNLwrdNNtnfYFA/4A37CFYVaSdvWlCKojf4M
        jCVNBO2Lxi6G8qYo+UR59xjCGQ==
X-Google-Smtp-Source: ABdhPJxZrlaZa1plJUxQS2LXOpR5aXRI2PrmOgap/W51TJzmr5KT9vDFNjIoVAFUu0NGXb7QiuctcQ==
X-Received: by 2002:a05:6512:ace:b0:473:b1fb:6c2e with SMTP id n14-20020a0565120ace00b00473b1fb6c2emr7022010lfu.394.1653049979243;
        Fri, 20 May 2022 05:32:59 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id a14-20020a056512374e00b0047255d211bfsm643973lfs.238.2022.05.20.05.32.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 May 2022 05:32:58 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephen Boyd <sboyd@codeaurora.org>,
        Vinod Koul <vkoul@kernel.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/9] dt-bindings: arm: qcom: fix MSM8916 MTP compatibles
Date:   Fri, 20 May 2022 14:32:46 +0200
Message-Id: <20220520123252.365762-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220520123252.365762-1-krzysztof.kozlowski@linaro.org>
References: <20220520123252.365762-1-krzysztof.kozlowski@linaro.org>
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

The order of compatibles for MSM8916 MTP board is different:

  msm8916-mtp.dtb: /: compatible: 'oneOf' conditional failed, one must be fixed:
    ['qcom,msm8916-mtp', 'qcom,msm8916-mtp/1', 'qcom,msm8916'] is too long

Fixes: 9d3ef77fe568 ("dt-bindings: arm: Convert QCom board/soc bindings to json-schema")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index e15012035093..5ae6fc79fb5d 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -153,8 +153,8 @@ properties:
           - const: qcom,msm8974
 
       - items:
-          - const: qcom,msm8916-mtp/1
           - const: qcom,msm8916-mtp
+          - const: qcom,msm8916-mtp/1
           - const: qcom,msm8916
 
       - items:
-- 
2.32.0


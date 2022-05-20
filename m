Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DEC6252EC26
	for <lists+devicetree@lfdr.de>; Fri, 20 May 2022 14:33:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349385AbiETMdT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 May 2022 08:33:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349345AbiETMdL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 May 2022 08:33:11 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF968166099
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 05:33:06 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id u23so14096766lfc.1
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 05:33:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0nYhv1nPF+LOWvBH2h9U+emDwliIywhBz9unRXuVff8=;
        b=CDIy1o7JzUQ8oO1748IY88xdw8Ua+rGPADPPyoThG/Xnlz/eHKS4pb2QGraPmx2knR
         upjQAjqiHsd3dsMrTZnGFpmPoq4DpY1EP5OHEBoluomy6KSQaBUQVgy0WSLcfXJz3yKE
         nmS4P72VtJSS+7h54PJUGI6I+MOcF33XNV6H7p8lxvaApeDM1ef5T85CdoUgA3mbvhx4
         Drf4ql4fyKQMyc7KLxDJSkLCvDtEx/W3mmP0LgFPQlJxVOMHgwsqbAoDCDIqmEuRTmJT
         b4eEh+r+AGI15VYc2PgfIM2f+s7NzQSjkhzqd18caoEIChhFhAFad1zSV/oatzFndsJJ
         28mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0nYhv1nPF+LOWvBH2h9U+emDwliIywhBz9unRXuVff8=;
        b=qUwHE3fX9MQRdXSyf5gzaFf+T9ss0H5H6BEJgLtN70tWW8DlMdGp0XE9rnB9mp7RkR
         N+F7Jyyjt0D7d+kYmm48034GQ+U+xYjq2/Xvig0UZnsuL2OXLvJOhIoLst7GFUtpCgcK
         bQJQUP4TehWh7Hg1h+bc+h7sMvI6Aewb1SaWswIbKuFzmXsUeXdpfS8751tSXZ82es7p
         qOakOGdIJZlBUMIQNhvcX5sWn947szmsdKmn4GgP+D4XwnoD9wNk0CG+Xu0wSZPGDMIL
         j7l/JOGWhtmhSG76fHcOPxhmc+tQ5ZwTkGE5y75Hcg4qceZfrC2QlHuaCwf6vMHJY1Ew
         lTMQ==
X-Gm-Message-State: AOAM532zLqGPyaY16I2H9RWw/nHeyXwHSiE9xA4FuM9IjveH8dbMWmaj
        Zc74prbXeodyJ62JHOUmQTVoSrfLAILW42tt
X-Google-Smtp-Source: ABdhPJzH0eTCGcr4er18fwN1OAwNl7z7bDJwYFHVl/nuToICzEzhRN22hemPJ9frItGFrqfqVlRceg==
X-Received: by 2002:a05:6512:139a:b0:474:15ce:9204 with SMTP id p26-20020a056512139a00b0047415ce9204mr6535256lfa.461.1653049986242;
        Fri, 20 May 2022 05:33:06 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id a14-20020a056512374e00b0047255d211bfsm643973lfs.238.2022.05.20.05.33.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 May 2022 05:33:05 -0700 (PDT)
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
Subject: [PATCH 9/9] dt-bindings: arm: qcom: add missing SM8350 board compatibles
Date:   Fri, 20 May 2022 14:32:52 +0200
Message-Id: <20220520123252.365762-9-krzysztof.kozlowski@linaro.org>
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

Document several board compatibles already present in Linux kernel.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index abc5f709678c..25ae8a850be1 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -319,8 +319,11 @@ properties:
 
       - items:
           - enum:
+              - microsoft,surface-duo2
               - qcom,sm8350-hdk
               - qcom,sm8350-mtp
+              - sony,pdx214-generic
+              - sony,pdx215-generic
           - const: qcom,sm8350
 
       - items:
-- 
2.32.0


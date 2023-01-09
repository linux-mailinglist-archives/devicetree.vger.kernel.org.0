Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D6DE661BC0
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 02:11:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233618AbjAIBLI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 8 Jan 2023 20:11:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233170AbjAIBK4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 8 Jan 2023 20:10:56 -0500
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B021E7F
        for <devicetree@vger.kernel.org>; Sun,  8 Jan 2023 17:10:55 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id bu8so10729449lfb.4
        for <devicetree@vger.kernel.org>; Sun, 08 Jan 2023 17:10:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7TPPhlgp5BeFgIF3vWio0766RKVvUrsJks7d5fvYNq8=;
        b=FkhR3ybi1Vz2pr1yUPywWbrZfvs9p4OxUwDTrJGtenjXHHKfd6t27oZM3OUCvTVIPe
         6WWFffMCcLxzmqTYvXjqB/RuOYGx/OXxv1zfZDtwe5Ts6fpCxXwZYG6K5RhC14VY7rO6
         NzywGBjvbg6/bJcSij1h9f34T38QUoWy6WrTDbEYWv8YM7pDXRw3M5pk4HRZlO0Jyx/C
         Ko8b2vLbNt45u72YO8Z1krS3ESxcfFJLaQXtlRPhP+h6/UIoiIM+tf09ss34K2a9XjEv
         2qTHfcxKwnIY+0I66W3LmYwga+zJjwxYhBVhIAQ/Vwxpcw5ub3XZ2iwv5mJ335NSkSSk
         8vqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7TPPhlgp5BeFgIF3vWio0766RKVvUrsJks7d5fvYNq8=;
        b=CzEfAAZNfDTIuUfmEj8tzPviAHwHJO63EyLqj5mpXB+rfybr6WXqyyq1/c0VaLdyKT
         b7blcBY6AxATUn5fCaTxtwLnDNG9Plr1wiodvYUjAFOBx21+GughiG7tVb87y0t69RB4
         r8LaVAp7g4tAlhU0MvMQVDBoGGCH3I7mp5hXCROvxNW/R2HW/jgIGQdSp/UXacY+zEJr
         RZaS3rSOYN0Y/wu0qwEljCaezDgwmh0oNoI7aFPhFBsc1nmoqi9DAxdMny/aOYG+hNE6
         zz20Xh/nOQQ24cZqjeCCeAmG+LfaB2K1wv/jsIoACPu3DI0O6O/NGD/Z3UAp2OjufPkz
         gauQ==
X-Gm-Message-State: AFqh2krmpVvr5pDYZZR7hmHr4do/WgwIuH5NyJ8cQY1bqvI6nNlSATDV
        gPYnesPFcKcrdNZUYLKPU6lUl526PVGPj52x
X-Google-Smtp-Source: AMrXdXusfnv0+c50oYWt7EI4CNcARSyX4/oyPnufVteUvKlGW7Ure57zIGwl0fDsD89ctfq75JG9Ug==
X-Received: by 2002:a05:6512:169e:b0:4ca:f58f:1960 with SMTP id bu30-20020a056512169e00b004caf58f1960mr19335067lfb.33.1673226653715;
        Sun, 08 Jan 2023 17:10:53 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id y4-20020a0565123f0400b004cc590975f7sm1324346lfa.183.2023.01.08.17.10.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Jan 2023 17:10:53 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v4 2/4] dt-bindings: display/msm: add SoC-specific compats to qcom,mdp5.yaml
Date:   Mon,  9 Jan 2023 03:10:49 +0200
Message-Id: <20230109011051.263391-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230109011051.263391-1-dmitry.baryshkov@linaro.org>
References: <20230109011051.263391-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add platform-specific compatible entries to the qcom,mdp5.yaml to allow
distinguishing between various platforms. For msm8998 list
qcom,msm8998-dpu rather than -mdp5 to allow this binding to be handled
by either of the drivers.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../bindings/display/msm/qcom,mdp5.yaml         | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,mdp5.yaml b/Documentation/devicetree/bindings/display/msm/qcom,mdp5.yaml
index cbcbe8b47e9b..681d6ac48d33 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,mdp5.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,mdp5.yaml
@@ -16,7 +16,22 @@ maintainers:
 
 properties:
   compatible:
-    const: qcom,mdp5
+    oneOf:
+      - const: qcom,mdp5
+        deprecated: true
+      - items:
+          - enum:
+              - qcom,apq8084-mdp5
+              - qcom,msm8916-mdp5
+              - qcom,msm8917-mdp5
+              - qcom,msm8953-mdp5
+              - qcom,msm8974-mdp5
+              - qcom,msm8976-mdp5
+              - qcom,msm8994-mdp5
+              - qcom,msm8996-mdp5
+              - qcom,sdm630-mdp5
+              - qcom,sdm660-mdp5
+          - const: qcom,mdp5
 
   reg:
     maxItems: 1
-- 
2.39.0


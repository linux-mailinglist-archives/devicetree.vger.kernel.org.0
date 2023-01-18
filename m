Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D3A1D671E7D
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 14:52:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229702AbjARNwd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 08:52:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230246AbjARNvj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 08:51:39 -0500
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 128D829E3A
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 05:22:59 -0800 (PST)
Received: by mail-ej1-x62c.google.com with SMTP id vm8so83155379ejc.2
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 05:22:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BQXELW2Do44btByeSJJTILU+sMVZVBVp+PBgWqh0iPQ=;
        b=mdlQpnPf+uKgvSYoCCHJ/a33KtYz7Y/Z91Keh7J1dVduTh+DVWviEa7bfa+49wHu6U
         XjrdGvOWaikxGOrenkW4klkxNFQaO6IW6f7MjBG6/680yL+aBU6J9nCD00cV08qFTA46
         DqL0eqKskZkO+mYgQLtns5Vn/bX1CpirCtj1frA+wuOFVqUyBWyXaLYJTSs//0wIiZax
         g8QBmppPDRSTF2WGTaulWHljkIBxB/gg3lKrtd1bxx2LLXx0kbycZw5WQg6pyE8grr6J
         iHGs9kQZtpanuG7WPuIj9c8YBKcwcI6pI9budQ8ntLeJ6WoQMvuY/234Vz0Bwg+YZ9YS
         6O4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BQXELW2Do44btByeSJJTILU+sMVZVBVp+PBgWqh0iPQ=;
        b=YiQO1pVqXSUm9B2adgcT7NT2nRN6mhW4TzpXFyRL+o5zGwo6/Lny7qKCBBLRxbvoJ+
         Obdo1AmL7THi8Wf5LqrYFxDO9iboEWISE466ZBxFzl6h1BD//Bh9/k7YXpQcKeXtWYNv
         g1ppAFuILCigGlVeHo7ffx0/9zpU6q7aTjn/3EPXEb1trabL2yYW11EaafNLZPgkE1CU
         ZHISjJWJJalQuY1lP6NHxiXYT/auT6p6ig3SxYFmjb9VVzprfpe3CIeKSpphcUHzbDWy
         NgBtEp4sG0j/bB2u1fX2qHp1RBJbEdsyo4e+PVJfDs2ztpfUexCTKkTEEAQDAwu/+s8v
         dZIA==
X-Gm-Message-State: AFqh2kqpSUcszQHFP6HK02d8548qfgIpOBM4VjMXAw2XGExZot/Hi4er
        gE+rsianRXhjKuPULgovbwyCHQ==
X-Google-Smtp-Source: AMrXdXu5CSOCJza++NFweL6KpfKXKYInRWlUyYp9fYiDkiK6c0iahxTAEyYET9kPGEz0jBuXBSRamA==
X-Received: by 2002:a17:907:2135:b0:86f:fe8a:be with SMTP id qo21-20020a170907213500b0086ffe8a00bemr6880577ejb.4.1674048177546;
        Wed, 18 Jan 2023 05:22:57 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id u2-20020a1709061da200b0083f91a32131sm14633831ejh.0.2023.01.18.05.22.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jan 2023 05:22:57 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>,
        Jassi Brar <jassisinghbrar@gmail.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 1/7] dt-bindings: mailbox: qcom: add SDX55 compatible
Date:   Wed, 18 Jan 2023 15:22:48 +0200
Message-Id: <20230118132254.2356209-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230118132254.2356209-1-dmitry.baryshkov@linaro.org>
References: <20230118132254.2356209-1-dmitry.baryshkov@linaro.org>
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

The commit 0d17014e9189 ("dt-bindings: mailbox: Add binding for SDX55
APCS") added SDX55 compatible string to one of clock-selection
conditions, but failed to add one to the main schema's compatible list.
Fix this omission.

Fixes: 0d17014e9189 ("dt-bindings: mailbox: Add binding for SDX55 APCS")
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
index 943f9472ae10..36deddca1524 100644
--- a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
+++ b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
@@ -39,6 +39,7 @@ properties:
               - qcom,msm8953-apcs-kpss-global
               - qcom,msm8994-apcs-kpss-global
               - qcom,qcs404-apcs-apps-global
+              - qcom,sdx55-apcs-gcc
           - const: syscon
   reg:
     maxItems: 1
-- 
2.39.0


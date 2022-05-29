Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B5290537091
	for <lists+devicetree@lfdr.de>; Sun, 29 May 2022 12:51:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229881AbiE2KvU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 May 2022 06:51:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229872AbiE2KvT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 May 2022 06:51:19 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB60C4B429
        for <devicetree@vger.kernel.org>; Sun, 29 May 2022 03:51:18 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id m20so15961852ejj.10
        for <devicetree@vger.kernel.org>; Sun, 29 May 2022 03:51:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XJgrJH6VzxB0NOaXLZBtk1kHMAiBhxHObc1OGkzyqr4=;
        b=XnLQXMKpQooMz0LTDfeVZdT/8jn9drtnO9/L6j+D1xBT8MtoAzTc0iKf8jGix8lFCm
         AvZ5fD9pN+kdlQsGFvXhjTGDGIafnon1+y99oPli7/5sPhhIM4T8tMPB6asn3INKX1F2
         07/hFX77ZLsSRzRIxS8AzsKIM+2jl5r3nYvMc7uBaQp+T645U24CIcGtLQc3vdRziiNg
         tdnRq4uFCsMgo7I07S7pvmduq0r0+hKZdRTh9/WyAfcjDpem9S+n576AxVlNn1te2dpw
         rc7QizFmjJr4DobCMx87dj5GZfWu5qp6XXzEelhK4FEshGLVW/LXmB2AG44u+ZU0SXyy
         XasA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XJgrJH6VzxB0NOaXLZBtk1kHMAiBhxHObc1OGkzyqr4=;
        b=SZ+aOq7FGmCxRhH+vv7WNaFeM+BvbzgImzbOkKRLoMm/msLOgpaFJCnSOG0/v/dHWd
         bB+GLaXy6EEALVlSBagP0Fbx0/TvdrmAg6uoTcSKFrkmSY0uzSJxXiAg3M1b5VIVVruN
         vjww5YCFq7xdU0+d1OEbvHIgpDtEaf0v2yGtnfBUj6BuQAU4g5VuQXtCtYMtMlJjF9GI
         Mlw8uDOY0sj4Qjd+BNI0QZq8ZZ02aQ85fvhgAP0rTOEdh8gXS8s6rae2NBLX+ef3BifO
         BlpDCtMOb5+b1W3xqrxPQu9LKGjdWCc3AAU+8IjCD/gFlG6GzZa9t1IhZcVnke/YjKwi
         ialg==
X-Gm-Message-State: AOAM5327zPCVnmM0wvJc0bhavXCNbQQVhbIMeCzLZeBlTCS3mz8BY/Ub
        eX2ZccbGFlNlxVncsAmyPu5RIQ==
X-Google-Smtp-Source: ABdhPJyzUwttMgry1SmKq5Na3w95F/0sEySpMkDPp6XdTA3g4+KDhy/nTw3ubEXRzeUmaC1C+vVb3w==
X-Received: by 2002:a17:907:a426:b0:6ff:6c9f:7a3a with SMTP id sg38-20020a170907a42600b006ff6c9f7a3amr2064184ejc.316.1653821477170;
        Sun, 29 May 2022 03:51:17 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id w25-20020a50f119000000b0042b0fcfe966sm4746991edl.37.2022.05.29.03.51.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 May 2022 03:51:16 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        Arnd Bergmann <arnd@arndb.de>,
        Steven Lee <steven_lee@aspeedtech.com>,
        Ken Chen <chen.kenyy@inventec.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Cc:     David Wang <David_Wang6097@jabil.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/7] dt-bindings: arm: aspeed: add Aspeed Evaluation boards
Date:   Sun, 29 May 2022 12:49:24 +0200
Message-Id: <20220529104928.79636-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220529104928.79636-1-krzysztof.kozlowski@linaro.org>
References: <20220529104928.79636-1-krzysztof.kozlowski@linaro.org>
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

Document the new compatibles used on Aspeed Evaluation boards.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
index f214b57d5ae1..fe71cb10ba6e 100644
--- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
+++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
@@ -29,6 +29,7 @@ properties:
       - description: AST2500 based boards
         items:
           - enum:
+              - aspeed,ast2500-evb
               - amd,ethanolx-bmc
               - ampere,mtjade-bmc
               - asrock,e3c246d4i-bmc
@@ -68,6 +69,8 @@ properties:
       - description: AST2600 based boards
         items:
           - enum:
+              - aspeed,ast2600-evb
+              - aspeed,ast2600-evb-a1
               - facebook,bletchley-bmc
               - facebook,cloudripper-bmc
               - facebook,elbert-bmc
-- 
2.34.1


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D18EC654AB7
	for <lists+devicetree@lfdr.de>; Fri, 23 Dec 2022 03:10:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235810AbiLWCKj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Dec 2022 21:10:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235806AbiLWCKe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Dec 2022 21:10:34 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 921FD20BFA
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 18:10:33 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id n3so2645061wrc.5
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 18:10:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rCgXMkElDYqgdV46E7QV9LorbFrf8YId9h6ETaNIJMc=;
        b=k0ee71geSmTUJNz7yZtJvcs6S3xI3neFpVvGjoHaFIz/cDKx/NgVYB1pB2NE13N30I
         Z0bVSXyn8jl6Q9qbTAXFaV9qsyGMWmfzTrmu6+pPgnU5uMX8JHjkMEjj23WF7547Rl3e
         ZKK6vlXosRZ+Xf8DUMKyuIolgZIJmkocaLz47dJjUfcblRSkrXcweAGMSsQd0ehLIVgo
         n9Wi65xcPx5AeCj5aLaw3i7kSks4/JDLAFg3ZZlSEyKq8zVcEmNyhhLVUIh3rC0fhX+t
         V5FeJ/IJz87UJ0P+VtPKyM7SwWUuT1yMy92/KX0jpMViTjR89HlqoSmRzNkXwYU+3RMj
         imWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rCgXMkElDYqgdV46E7QV9LorbFrf8YId9h6ETaNIJMc=;
        b=Vt2v0RSILLiDf6/Xa90eAabaBXQA/i6suyMXWIz8V2zQWGRvUioLFjAog01yA2zDI3
         SEpR/k9jdxnriUOCR3va1dgmLNIi10rhd4CHxfAGFKHjqZFTl/1BFOIVRYPbTe6V5rbV
         3koqOBlsxPeTPq9hspIzAYI/Wai0Y9vqjk1kBar9js5zdURcmsn9xeZP+HO/nI6srNTK
         +W5+/llXZpCrOt6bDlbfxg+n66H+LLGLR1B/OgUNma8A8YTzM5aCXO74TtPMkUdDqynZ
         zRvYij+mw8ceuKCrXQc4bGebdRst31QNLZTMCp/k4Q3wNI1fGZPeZ0BOGq8DV1cqPtIU
         I92A==
X-Gm-Message-State: AFqh2koUPjBtju5WqhKc4hLVj9pifuqxYS8CYddx3qIbvnEalHNeXR9i
        TOJkiOIdR5Ro6VyApVbObgWlkw==
X-Google-Smtp-Source: AMrXdXupg6sn2BghsfuWP3nH5HnewsHoBrvhHmrybBicDxvnWfQNqbYK3rUP9h8ZUj1ToZxBFBOQew==
X-Received: by 2002:adf:f402:0:b0:270:c07e:5a with SMTP id g2-20020adff402000000b00270c07e005amr2713666wro.19.1671761432147;
        Thu, 22 Dec 2022 18:10:32 -0800 (PST)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id j11-20020a5d452b000000b0022cc0a2cbecsm1849725wra.15.2022.12.22.18.10.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Dec 2022 18:10:31 -0800 (PST)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org
Cc:     robdclark@gmail.com, quic_abhinavk@quicinc.com,
        dmitry.baryshkov@linaro.org, sean@poorly.run, airlied@gmail.com,
        daniel@ffwll.ch, robh+dt@kernel.org, dianders@chromium.org,
        david@ixit.cz, krzysztof.kozlowski+dt@linaro.org,
        swboyd@chromium.org, konrad.dybcio@somainline.org,
        agross@kernel.org, andersson@kernel.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        bryan.odonoghue@linaro.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v6 03/18] dt-bindings: msm: dsi-controller-main: Fix description of core clock
Date:   Fri, 23 Dec 2022 02:10:10 +0000
Message-Id: <20221223021025.1646636-4-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221223021025.1646636-1-bryan.odonoghue@linaro.org>
References: <20221223021025.1646636-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There's a typo in describing the core clock as an 'escape' clock. The
accurate description is 'core'.

Fixes: 4dbe55c97741 ("dt-bindings: msm: dsi: add yaml schemas for DSI bindings")
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../devicetree/bindings/display/msm/dsi-controller-main.yaml    | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
index 8ba61fef576a5..6e2fd6e9fa7f0 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
@@ -32,7 +32,7 @@ properties:
       - description: Display byte clock
       - description: Display byte interface clock
       - description: Display pixel clock
-      - description: Display escape clock
+      - description: Display core clock
       - description: Display AHB clock
       - description: Display AXI clock
 
-- 
2.38.1


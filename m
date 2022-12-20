Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D4AA4652074
	for <lists+devicetree@lfdr.de>; Tue, 20 Dec 2022 13:36:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233507AbiLTMgs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Dec 2022 07:36:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233381AbiLTMgn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Dec 2022 07:36:43 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 302B5BE36
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 04:36:42 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id co23so11606339wrb.4
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 04:36:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rCgXMkElDYqgdV46E7QV9LorbFrf8YId9h6ETaNIJMc=;
        b=ysUM3TyM4x7/ARqi7orfI4/3OE5NUDF3GYwg3z8BZYyeScLXCW7HvWfj61HcBNKV8y
         kfbtPzTtWRKzsHpHA6TSzVarKiMWXOFDQmnfk42i+JZAY4ZUae2PGHuGcLFUNCFk+VB8
         DEFJRAFUunis3rSYASIMzCZj9jyPMYfNHklvmOQTf9+gOrECj+lZnCN68IPZq1HXhxPO
         T5JtsUgDBe19iFKpN3YzGNXvU4DoSvkV2kJ9/m+UZzf06490/Umz2xUE0eYJRfwyTlAr
         VJlfLkpbHpOVSGmg9HIERXNSfZ7iKDmWJH+vvGcO8XyG+n53D4d9ZsXVpsBb6dZx5Kjb
         Bw3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rCgXMkElDYqgdV46E7QV9LorbFrf8YId9h6ETaNIJMc=;
        b=d0wcthla3HRnruZOxjFFF4HzikMIM41tLHYxF7wUeEmFoTxRaiNcfprPs4Ic6Pw62r
         LokkFw8xSIw195oCd4gOJ0HIKh0UpehUR0jaP6vyt/W3ldmy2OyQlutYh3DCYld2mb+L
         si6Fk/9+6eufGRxlOIWgBC6CEOwUyoZAuS9z878Au/t7jaLoMg3I2o/q0XVC6Xs9sOEk
         z3YqV6uaM1prc0s8pFBwZNKcFfb19hLUvcd3hBfz8nKksqZ09VJTMzkzjeqblelkvst9
         TaV0CdyKh+EICLJMndWe6z/A9pnw6vQf5AV9tF71iKGMExfKXZ7e4GA7R1cfz/p+6kBM
         QD7w==
X-Gm-Message-State: ANoB5plytBugeNFqpT9R6vCyU9VGGdtm/Y8Pau/IG2v4bWz9U+u9EeLT
        YceMUlJUddsqLc4+lLN2cync4Q==
X-Google-Smtp-Source: AA0mqf44yzSRLzxTnB39n8g/cioxs3y0QI8AP93lUwcNm8oeHjPRiXxBx0pLqpsT9KMKflaH68MMbA==
X-Received: by 2002:a5d:6045:0:b0:242:24a7:c7f2 with SMTP id j5-20020a5d6045000000b0024224a7c7f2mr26227823wrt.58.1671539800753;
        Tue, 20 Dec 2022 04:36:40 -0800 (PST)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id da13-20020a056000408d00b00242257f2672sm12641208wrb.77.2022.12.20.04.36.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Dec 2022 04:36:40 -0800 (PST)
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
Subject: [PATCH v5 03/21] dt-bindings: msm: dsi-controller-main: Fix description of core clock
Date:   Tue, 20 Dec 2022 12:36:16 +0000
Message-Id: <20221220123634.382970-4-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221220123634.382970-1-bryan.odonoghue@linaro.org>
References: <20221220123634.382970-1-bryan.odonoghue@linaro.org>
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


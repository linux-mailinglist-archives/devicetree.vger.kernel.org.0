Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C79856389F5
	for <lists+devicetree@lfdr.de>; Fri, 25 Nov 2022 13:36:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230004AbiKYMg4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Nov 2022 07:36:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230078AbiKYMgy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Nov 2022 07:36:54 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87B324EC04
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 04:36:49 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id n7so6546801wrr.13
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 04:36:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tY9zIcCRGEu7zo0/qER9MM7m6z693FsbNLfr6+dvuHk=;
        b=ZSLy4qHvgNHaSOLMFdFVsR6P3+qRyposmSpnHI6bQ2a30+YjTv6aTr6o/nlED6PHqR
         UivB7wOoUw2mmRUdl2zjHW2DjMDfXO0q1jNvRoDYs7i/foe0qU3sgTcv/FEBCrPsYyI8
         ac/xGfjOsY1jWX7kSuSl3yX2iIdsM7jp84lh2S3f83rNmMRrlzctmSiwBkQlFiqQ6ujI
         vh6e+WAGd+b2LZhFR/jGSagj8XfaiMZXW0iJ5CF/ML/GYZSQJ2Es/O0ogyPA9w6haNjh
         BMJBUGnWdJpj/+SMHMpYg9fvOQqRDMhXSgEMtYAdosN2+V283KSSYYjCrA+HYKdw9yzs
         5g0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tY9zIcCRGEu7zo0/qER9MM7m6z693FsbNLfr6+dvuHk=;
        b=PlP5saHfrYkXUF5fxIVYZU3rSkHT31/zZAjhz6Y06zXoBvn1j3/hi5l9hLKJZeAIHL
         TTFzFFfr2CwAb2qcR/x2Lu5tHCEvncUizsaDHx7Ll8CBuR09T9dSDL/DVqFHsi593tMv
         M4SMnsP067TnrIvZOyk+HqCB6pM4enCcqCZ1dsUkmqReqq004FbLDhYqK0jLlzQzLdJn
         XtY596jgPoEPkCqo6e/98GCMP7Pwm3i9UbNRsw6IfO0RELJJ3Ss/k4CGK/ARK9kqd6/p
         6a/NqpEOOzAVxB7J53lT/u1vpDBvhYHnM6Zb05uxMoKSaQnXoOh4a1jQWKi1z4g+XCoO
         rYyQ==
X-Gm-Message-State: ANoB5pkqrf6ysK8AGau9dvXHWqGYhHKW6oHzSkun13MZ4oWNOo7TYTsK
        28Gxo8IXXh6J7VwDSGh0IYIyNA==
X-Google-Smtp-Source: AA0mqf5H5wyHrYk+YwktYmfHx+vQya/3G/BZfVLyOMilrqcgQoMp5LoGcH7f7deb/hiaH+d+191QwA==
X-Received: by 2002:a5d:5948:0:b0:241:ea80:878 with SMTP id e8-20020a5d5948000000b00241ea800878mr8252875wri.124.1669379809131;
        Fri, 25 Nov 2022 04:36:49 -0800 (PST)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id k15-20020a5d6d4f000000b002366dd0e030sm3574111wri.68.2022.11.25.04.36.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Nov 2022 04:36:48 -0800 (PST)
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
Subject: [PATCH v4 06/18] dt-bindings: msm: dsi-controller-main: Fix description of core clock
Date:   Fri, 25 Nov 2022 12:36:26 +0000
Message-Id: <20221125123638.823261-7-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221125123638.823261-1-bryan.odonoghue@linaro.org>
References: <20221125123638.823261-1-bryan.odonoghue@linaro.org>
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
index 88aac7d33555c..0c09b9230b7f5 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
@@ -40,7 +40,7 @@ properties:
       - description: Display byte clock
       - description: Display byte interface clock
       - description: Display pixel clock
-      - description: Display escape clock
+      - description: Display core clock
       - description: Display AHB clock
       - description: Display AXI clock
 
-- 
2.38.1


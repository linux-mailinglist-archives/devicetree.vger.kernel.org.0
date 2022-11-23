Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F26F9636BD5
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 22:04:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237586AbiKWVET (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 16:04:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237302AbiKWVEQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 16:04:16 -0500
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49257970B3
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 13:04:08 -0800 (PST)
Received: by mail-lj1-x22e.google.com with SMTP id z4so5844361ljq.6
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 13:04:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Eq+xrGXQkafyNxdD3bUOX4BO/00RbY/2YQOJ/yUkbp4=;
        b=rB1+P0BUkPh/YewhokMj4qsH1MK+rmFWlFLw7TS/yD0FskwXBk2OYi2sYJ7ZQZCea8
         Qui4u5xoHF6KMj64eb1RDSjnbwMo50qctsPZKiCJ7UxEqLcD0XKqWfQGLGc8yRVBWpL2
         5Boj8NXE1E+UTA3LIMOQspN4Fp9LebRfobqTCRVufslL6QofIvyUvwlM3SySweKrQm8Y
         q9NttdZoxQAgKlSKvoSx1rR5f29gPvKQLQ2XyiG1QqEV5Eg0Szrv9eQz2YpgIo/siTMH
         NMrn2Gd3Q9bKdlCgsQdnMz89Yp38XYCTHrnYDuVfswCKxwqssijnzeU6pUZMJnypWv2X
         gZTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Eq+xrGXQkafyNxdD3bUOX4BO/00RbY/2YQOJ/yUkbp4=;
        b=bBJtluYO0uSAnumGqHpmagzNjsY9ikp3TK/PpJtlaWZSnM/oq/lyrfkMc36y2MnG9d
         Zr5LKE9HBDDLgh1hjt/sLuRkOgNna9JHiSOK7OnRt/GF3zQvki29jHZS0+7M80AZ6ofZ
         7ymFox59ZYaPqO5zH+uooLP8qmjztcrRmmkmBXou6jKT0Boh6u9bRAIJh7pd09ZP/xU+
         0ELBjWx2j5HeBWlOZtjzhoBni3MpMthOu1x7luzJ+8nQISm1nBBP2UnWdcAkBywwOzXJ
         1JbRxltMMhjqd7u2pyaefRJhIFIPbVeDwEPFqfivcSY1QOY+YukrtfNpdVJH+KactwPO
         nNmQ==
X-Gm-Message-State: ANoB5pmpP7rlWG7X/FfeHFl4zOkWddDcMETqnIGJlfcAgqZpexzurXZ0
        MkvWExLsoXDFjZ/w4tjh4wilaA==
X-Google-Smtp-Source: AA0mqf46OPUyvCRaV+rXrsIF9CJYhxP7BlmdS/3i551xkHAdarx4Z1u3pcQyFY30qtT6rTJMI9Od8A==
X-Received: by 2002:a2e:6812:0:b0:279:4159:ab79 with SMTP id c18-20020a2e6812000000b002794159ab79mr6177776lja.144.1669237446669;
        Wed, 23 Nov 2022 13:04:06 -0800 (PST)
Received: from eriador.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id c3-20020ac25f63000000b004b177293a8dsm3009913lfc.210.2022.11.23.13.04.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 13:04:06 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v5 03/10] dt-bindings: display/msm: add sm8350 and sm8450 DSI PHYs
Date:   Wed, 23 Nov 2022 23:03:56 +0200
Message-Id: <20221123210403.3593366-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221123210403.3593366-1-dmitry.baryshkov@linaro.org>
References: <20221123210403.3593366-1-dmitry.baryshkov@linaro.org>
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

SM8350 and SM8450 platforms use the same driver and same bindings as the
existing 7nm DSI PHYs. Add corresponding compatibility strings.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml b/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
index c851770bbdf2..bffd161fedfd 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
@@ -15,6 +15,8 @@ allOf:
 properties:
   compatible:
     enum:
+      - qcom,dsi-phy-5nm-8350
+      - qcom,dsi-phy-5nm-8450
       - qcom,dsi-phy-7nm
       - qcom,dsi-phy-7nm-8150
       - qcom,sc7280-dsi-phy-7nm
-- 
2.35.1


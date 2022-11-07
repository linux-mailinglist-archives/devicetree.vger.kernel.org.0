Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A4E661F264
	for <lists+devicetree@lfdr.de>; Mon,  7 Nov 2022 13:06:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231599AbiKGMGE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 07:06:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231526AbiKGMGD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 07:06:03 -0500
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com [IPv6:2a00:1450:4864:20::242])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40BE1AE49
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 04:05:59 -0800 (PST)
Received: by mail-lj1-x242.google.com with SMTP id a15so15878991ljb.7
        for <devicetree@vger.kernel.org>; Mon, 07 Nov 2022 04:05:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xIrNmqiJLZwwxFebaV7gZLbwg7xBYzA/fdAgPd6xUNs=;
        b=qP4oDpLm1JVhZvJqh08mZPyIgbVa35QUUUVzh+K2jXBNSF+Amkgh+6aeDv6Sv7+KzX
         tFaB6mgkna2SlsEOU4qat/Bc+A/M7O90P1p4YG+y7CB2It8w52/1MH70RundEuHeave3
         9aC2CYRczPJT1rFQvM15coMMLz19O3dELC7MYnEZW10B5BJqztDCmz+8H1xqHkL1dPTb
         j3K2R5kTK3JYtUHke92IyrNbMTRcDFNKJIVguUl6avmVahsI0VDlhpnzJfc/V/xOxp3U
         XmqYSIS/Al7ZQlm5XavJzoUnT13vgsiqX+iYj/MhfT8g7mC+yePHH3x2dO1Sx+qjoX0g
         Ezcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xIrNmqiJLZwwxFebaV7gZLbwg7xBYzA/fdAgPd6xUNs=;
        b=lhF7oTwnSf5qFpxeeREopXRSl7AbRv8SAwLbDCvfpEVT+uCdLXDN9bBduvL14V/zLQ
         lNKcplGXICC/pKcaAvwVU+EwMNHPgJGLIXX5lthPLsAyh7FvPvMx1ys03qzn8Qu2CmbJ
         lK1S0i6KgMkHhradnPyVM+qnNvQSqv1LBHw6YlIGXKz+Ys4AGmGtSfvzmzfy2nQdcRM3
         tfds5wKHvAwf4yc5S1SXG1q4x79wF0pROQrE2td/9Uftvz+wkpewb9bX3C4TYklLvwiT
         EXUUkyK/szn6GYo6NfLyP72IW38AWh3EFrLC2A0XVoKPdqSt7+L/Xt+hyHXvCfpC8QRy
         L4oA==
X-Gm-Message-State: ACrzQf0amso8IkvDUfbTNmqgpljZbQdoU9VxuGSB+R/hZeFh/1D8Qxa6
        /OMuISqN7KaNFh2pjFrn0O+6Ig==
X-Google-Smtp-Source: AMsMyM6vQWqwwrJjoZCwGs8Z2l/oq/e1EhUtEKNymR6bcIzagKBlycSSl3k/Hk8koyhrLUVYQpYGYw==
X-Received: by 2002:a2e:2a86:0:b0:277:203:e3e9 with SMTP id q128-20020a2e2a86000000b002770203e3e9mr18045689ljq.163.1667822757570;
        Mon, 07 Nov 2022 04:05:57 -0800 (PST)
Received: from localhost.localdomain ([194.29.137.22])
        by smtp.gmail.com with ESMTPSA id p13-20020ac24ecd000000b0049936272173sm1200065lfr.204.2022.11.07.04.05.56
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 07 Nov 2022 04:05:57 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org
Cc:     patches@linaro.org, Konrad Dybcio <konrad.dybcio@somainline.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Chanho Park <chanho61.park@samsung.com>,
        Thierry Reding <treding@nvidia.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/4] dt-bindings: arm: qcom: Document SM6375 & Xperia 10 IV
Date:   Mon,  7 Nov 2022 13:05:35 +0100
Message-Id: <20221107120539.12305-2-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.32.0 (Apple Git-132)
In-Reply-To: <20221107120539.12305-1-konrad.dybcio@linaro.org>
References: <20221107120539.12305-1-konrad.dybcio@linaro.org>
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

From: Konrad Dybcio <konrad.dybcio@somainline.org>

Add compatibles for Sony Xperia 10 IV (PDX225) and the SM6375 SoC
it's based on.

Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
Changes since v1:
- Pick up tags

 Documentation/devicetree/bindings/arm/qcom.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 207e28260206..35e22cf15f9f 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -56,6 +56,7 @@ description: |
         sdx65
         sm6125
         sm6350
+        sm6375
         sm7225
         sm8150
         sm8250
@@ -718,6 +719,11 @@ properties:
               - sony,pdx213
           - const: qcom,sm6350
 
+      - items:
+          - enum:
+              - sony,pdx225
+          - const: qcom,sm6375
+
       - items:
           - enum:
               - fairphone,fp4
-- 
2.38.1


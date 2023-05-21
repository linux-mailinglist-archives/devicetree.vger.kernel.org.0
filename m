Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C042770B00A
	for <lists+devicetree@lfdr.de>; Sun, 21 May 2023 21:54:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229788AbjEUTyf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 May 2023 15:54:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230381AbjEUTyZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 21 May 2023 15:54:25 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33876E4
        for <devicetree@vger.kernel.org>; Sun, 21 May 2023 12:54:24 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-96f53c06babso606607066b.3
        for <devicetree@vger.kernel.org>; Sun, 21 May 2023 12:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684698862; x=1687290862;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3c6yMNCBo2Th5nKj9JcDZUyMz8f9ppKaXvygn50ATHs=;
        b=tvHalgFJCB9Vbvk2S4Ayk8bmq3aOOvrEUQy6wuBO3aKFZuaCgmGM1zXj4RpfoqB7j9
         E4L/t+l0njcJjsovD8MRdAFPNvjEDOxN0q0mEj/ALXN5NTbxTaL9SEpI2iyX7JAz3LwF
         0k2UYUHwiG1yqTrQ+F0PC0xQSk8+lUHTpw4Y2aSkQ7OZlpCbBYpZ1RhdfiEWHSRoID4r
         N+3eoswa8bjzEkRmolH7EkjwZNH3zvc8T3O53CWz9aAK2DYEjui91Vv1jJ711G6sa0XB
         QyMpqNXUddTY6pOMCxNcCvaNGd6ucXM9H3yNtj8DyS20GmFe5/ukk2G/LV56E41Dc6FL
         Qjqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684698862; x=1687290862;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3c6yMNCBo2Th5nKj9JcDZUyMz8f9ppKaXvygn50ATHs=;
        b=fo9skU82lA7cq0rDb8TtiQOePgvtTy6lEx8HWgWjD4p9NMHcRpLOI1oWLNMrOwZIQw
         nWvVFwOT37OPdiIhD0/d8PilDyPeow29t1IYgZgsridsZ0lwsqb22Aj5WD2zb25DbjjR
         R6b6ebYhNJBPZnIx3W1KNtD77cwD4AnRlJXoxWAjWLxqYUAMhXhcJg6izGCbZ+n1Cpsa
         pLAwBh/KtAEoQPGDgUDUsIqEY7BG/nEffmNfMAMbDM6Ue/x9re3RD6A3qb/NBzbKvM7X
         ityKacqd5M2D3gPWwFRFIZI9HeaCIpkduYCulEA6oKlMH7xm4J6fFNgeBr5ia9bAAWRF
         wxEQ==
X-Gm-Message-State: AC+VfDxevtc1GkGy7oEofxKwIQJJI+TR1ChYheprMKU8wFZ5Sn0rOU0M
        IOQIUokk8auOW4xkdx4yUU96yhuob/fA9y+W1BQ=
X-Google-Smtp-Source: ACHHUZ4ikYNUesHFLaMcP/hRIarB/KQ5X0fGw5cKhHOyy1ry0G+WKFNCLXgZDckUz7+ihGpbIEMzbw==
X-Received: by 2002:a17:907:d86:b0:93b:5f2:36c with SMTP id go6-20020a1709070d8600b0093b05f2036cmr10395893ejc.61.1684698862784;
        Sun, 21 May 2023 12:54:22 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 16-20020a170906101000b00965ffb8407asm2187107ejm.87.2023.05.21.12.54.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 May 2023 12:54:22 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>
Subject: [RESEND PATCH v2 1/5] dt-bindings: phy: qcom,sc7180-qmp-usb3-dp-phy: add sm8150 USB+DP PHY
Date:   Sun, 21 May 2023 22:54:16 +0300
Message-Id: <20230521195420.12454-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230521195420.12454-1-dmitry.baryshkov@linaro.org>
References: <20230521195420.12454-1-dmitry.baryshkov@linaro.org>
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

Add bindings for sm8150 USB+DP PHY. These bindings follow the older
style as this is a quick conversion to simplify further driver cleanup.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml    | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml
index 0ef2c9b9d466..a2ddf718ba76 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml
@@ -24,6 +24,7 @@ properties:
           - qcom,sc7180-qmp-usb3-dp-phy
           - qcom,sc8180x-qmp-usb3-dp-phy
           - qcom,sdm845-qmp-usb3-dp-phy
+          - qcom,sm8150-qmp-usb3-dp-phy
           - qcom,sm8250-qmp-usb3-dp-phy
       - items:
           - enum:
@@ -192,6 +193,7 @@ allOf:
         compatible:
           enum:
             - qcom,sc8180x-qmp-usb3-dp-phy
+            - qcom,sm8150-qmp-usb3-dp-phy
     then:
       properties:
         clocks:
-- 
2.39.2


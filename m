Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9107B694561
	for <lists+devicetree@lfdr.de>; Mon, 13 Feb 2023 13:10:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230120AbjBMMKn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 07:10:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231374AbjBMMKa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 07:10:30 -0500
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92B7E1A97A
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 04:10:19 -0800 (PST)
Received: by mail-ej1-x62c.google.com with SMTP id dr8so31209550ejc.12
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 04:10:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sLkh67ooWyVObn1J2I1Qu7dXdNbX+Cd0UoL9axKT34o=;
        b=p8WGCP9v5yIWbqJlLQRmMt4chiH79pIdn/7AB+4u36M/TTmmzVK1ZVLXeajFDjlSHT
         cOO6it7vveZEhpkGjAAqnz+csbNPwy1aG25sAbzN4xBu1iIBCSLIb+fADM842f8D4gU1
         vQ4YjvIWiUj59NG7bCE+aUwx3nanN3FFInJXJjsDakUUBBnZAw+6/B6KYznfiPE7vDgR
         x/+Qq/jef9admT0KChEbH1aLvyLMslwfGF3JUJ/gV2UvFeChYwTlEswgOF0tTQtk4ig4
         SmoFfdXxu1QehBVPm4G9hbjnzNCyjRlo/EIr6YaxVp4mWcB6aW2elIkYazjylBN6HoKN
         8Xrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sLkh67ooWyVObn1J2I1Qu7dXdNbX+Cd0UoL9axKT34o=;
        b=3rFgEb23ow69xf1QzmjOqBMEP2AJbeCw4dtDcDsix/IQ7lG4q4osaUZDtVUWw+p+NI
         vGPCDHGhQsBlvqPrL0m0FSMf+xPDKptkpDlYhzAsaa9/Qk8VDbj4vGJYi9eTeHp163Jx
         Mot13nhtw0PrRG315DtbqZAyndB2ZoEU/0/tuPMi48MQUSUumSkTTgI7ggKZPC6o6E1J
         IBXwoGHnDcMW9kwdXpOhny5JxXZDGDSp23dlebIpZ3IIuTYODb3o3omLop2DBEv38LBF
         98Q0Dr9iMMcEyPcI4gQwjMb1nA8p/PqzsNo7J5yvJLLUUNKuEHNigxH9CEGVvzdkjUO2
         Qc3g==
X-Gm-Message-State: AO0yUKV83Y3uc+L7eGw5Lae+egMbJhBbK+Vf7lJlCrvtPfV1qwnDZJop
        zvRLgsfs7YIEHI1ynnRvH/qUGQ==
X-Google-Smtp-Source: AK7set81z61FZiKoN0s7dy9ixfbbUA4wWNKA2rBI/8l8V7YwRzxhtMm5RnVtHF6TGfXBlSD4ZM0jEA==
X-Received: by 2002:a17:906:1908:b0:878:5f8e:26c0 with SMTP id a8-20020a170906190800b008785f8e26c0mr17900635eje.7.1676290217679;
        Mon, 13 Feb 2023 04:10:17 -0800 (PST)
Received: from localhost.localdomain (abxh117.neoplus.adsl.tpnet.pl. [83.9.1.117])
        by smtp.gmail.com with ESMTPSA id dt19-20020a170906b79300b0088ed7de4821sm6651586ejb.158.2023.02.13.04.10.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Feb 2023 04:10:17 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     marijn.suijten@somainline.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/9] dt-bindings: display/msm: dsi-controller-main: Fix deprecated QCM2290 compatible
Date:   Mon, 13 Feb 2023 13:10:04 +0100
Message-Id: <20230213121012.1768296-2-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230213121012.1768296-1-konrad.dybcio@linaro.org>
References: <20230213121012.1768296-1-konrad.dybcio@linaro.org>
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

The qcom, prefix was missed previously. Fix it.

Fixes: 0c0f65c6dd44 ("dt-bindings: msm: dsi-controller-main: Add compatible strings for every current SoC")
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 .../devicetree/bindings/display/msm/dsi-controller-main.yaml    | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
index e75a3efe4dac..2494817c1bd6 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
@@ -33,7 +33,7 @@ properties:
           - const: qcom,mdss-dsi-ctrl
       - items:
           - enum:
-              - dsi-ctrl-6g-qcm2290
+              - qcom,dsi-ctrl-6g-qcm2290
           - const: qcom,mdss-dsi-ctrl
         deprecated: true
 
-- 
2.39.1


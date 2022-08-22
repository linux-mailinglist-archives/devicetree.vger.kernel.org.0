Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9226659C9D8
	for <lists+devicetree@lfdr.de>; Mon, 22 Aug 2022 22:18:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236695AbiHVUSX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 16:18:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236665AbiHVUSV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 16:18:21 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B00C5BF44
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 13:18:20 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id s6so5597644lfo.11
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 13:18:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=DmWp0uy89TPiPu8UitGlfJ4fqSkdwaIvyUKOGTjMH64=;
        b=diQQRnW5oE9AmhIDlJ0Nw8s6hWb+cFdj3Tt8HZDW5k96YffvkWQLmaZTEFdx+G8GfY
         AyiAwkCXe4wFhAsh64rRMvbIloWlkZQTKll0YMkiX9B7GktWIBG3EYeEaBx9pBN/mp6d
         kT3W3s/WMslOtpD+XmZZhIU5H6HF1YVzgiCRx1r5gtnzhuKgWCJeDbmmO+7OtuACRMke
         6exidYsgpl/KVejEHT6/8RicuBkomi0S+DEq5J9UMTJZCV1TlqlKGf9MFz4ulUr44baV
         LwNmwjAUVx2Qty2U9WZ+LjoQlibHQDl1qUfureS9349VnkyVrRS33nPsOF4QCJ/TbyCb
         A7MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=DmWp0uy89TPiPu8UitGlfJ4fqSkdwaIvyUKOGTjMH64=;
        b=C87gD9DqSCvK87URhAkYEHeu3qsU6GOCzd9cH8yLCMvlvcSU9GWcgd4uOrXjUli4Cf
         9M77f9IzRsyBtwh7xOF8fmFwSq+U7/OeAQtjBfrzLn9IyVnr1OS1N5825voKv65TuDaR
         XoP9WBEQzFrjZz/wPzaedUgm/Hai69PqmT0y/kfOij/4FvXUZ7awGIN+YZEcfqiG/ntY
         Jokr2nrvZN2L3lRZVHWWEu1jyljGM/iBwWCwVnV1cVkYZayyoKoEgbftPFzlKyYqrbVS
         +Y6MCo+JWDQ9k9rq8PtgtuIbncsZaYNr46UiSedKedKKkj2AWERTLez3Z0vkZxAME+8D
         fh4g==
X-Gm-Message-State: ACgBeo3HA7MptO1wXIen81+4X9bTIq1lqF8Et8EM0tZ76dTYWcNrubC2
        hbj3kHFcNcUTc+3WPb3mpbuvwQ==
X-Google-Smtp-Source: AA6agR5hHY+fHNqo/gdZ/EZ8YGOmmPyul82vutyOnOKxJAy7wMl2zDQ+NeqSduUJQeETIrW4SSX09w==
X-Received: by 2002:a05:6512:114a:b0:492:84b9:b376 with SMTP id m10-20020a056512114a00b0049284b9b376mr7693639lfg.450.1661199499063;
        Mon, 22 Aug 2022 13:18:19 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id h16-20020a2e5310000000b0025e5cd1620fsm2000429ljb.57.2022.08.22.13.18.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Aug 2022 13:18:18 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH v3 9/9] dt-bindings: display/msm/dpu-common: add opp-table property
Date:   Mon, 22 Aug 2022 23:18:08 +0300
Message-Id: <20220822201808.347783-10-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220822201808.347783-1-dmitry.baryshkov@linaro.org>
References: <20220822201808.347783-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The display controller node can contain the opp-table describing its
frequencies and OPP levels. Allow specifying the opp-table in the DPU
devices.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/dpu-common.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dpu-common.yaml b/Documentation/devicetree/bindings/display/msm/dpu-common.yaml
index 14eda883e149..42e1616a5670 100644
--- a/Documentation/devicetree/bindings/display/msm/dpu-common.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dpu-common.yaml
@@ -22,6 +22,9 @@ properties:
 
   operating-points-v2: true
 
+  opp-table:
+    type: object
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
     description: |
-- 
2.35.1


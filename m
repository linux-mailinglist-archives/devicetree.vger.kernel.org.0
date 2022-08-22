Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E609059C749
	for <lists+devicetree@lfdr.de>; Mon, 22 Aug 2022 20:51:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236777AbiHVSvC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 14:51:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55006 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237868AbiHVSup (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 14:50:45 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF2764C634
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 11:49:04 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id be9so8600323lfb.12
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 11:49:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=+6p730dgyqntkr7bllnjAf2d8NavekxWpvxDzWTO3h0=;
        b=eDeiz+RYOBRYfof7v0uXtkctIBuyowUeC9JCs+Do6Z8P9lu2mnnOO7RtMuFhTUlDON
         eFEO1XeNM4k9Gdr+HeINrVpuSeAFRw8jx8Ab9FlRve8WWZEOc1fDlsWqNaXIMQES9QMR
         vCSVP9oKodIqRWhIg0KmRPhoYC458rmDROSi9anxGe9d7MPpCelyEgXwJ8/sdtZUMCOe
         GtjUQEQu9oYe+m0X6Po9EHdEcy5+CsNFqBDxXqKWGUQ4XyM0pP/KM5LXQomf3C692378
         v873Q0wA6skDnACEKJBp455nmZHNPK/HfyJtunJq7Dc0QKv5pV44Q5fn1li6gaOIDX7h
         nhww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=+6p730dgyqntkr7bllnjAf2d8NavekxWpvxDzWTO3h0=;
        b=LPngrc6fF022Zsg/5/NefGz+cdFedRry/2TtKC2S4koNoSDb1ChdGQ2OafKSkcxFDz
         lbSdy34gv4EyFlH4t+246syJJQR2ST2GU7/DYn2yofDg7ZvX7OZvqwkZKbodAUWvrF1l
         LXfRHQ6LjmChFTxyhIhShb/CtGUsHZN00nQN/W7IW9cGvPGPOXqXFrBRjOpL9V1Iitrr
         T+HWWEhfmeKxTVo2um35cP8maJwtbgRTijoRQ/7HXCqmfeawzr21iBlytktl5Cr5dxwW
         dCm1PcmfHMfPzRjs1Nu0ERo6kJDf++CFYL2fOsKIAPcD18UbUbxhZrrJagaDRq7AMl3o
         6dwg==
X-Gm-Message-State: ACgBeo2zhPPu3RFwBp84+BvrdNp6Rmr1b4UErRaB214AaoFTOE4xzVfV
        VCt3ZOtyfTDZpNpORWZ2E3lyrg==
X-Google-Smtp-Source: AA6agR44lsNkng4rpEe72WkAzNNu0JEWbU0OeFAkX8SVca0JpyvVTSqiNbeUBsgEd8RImBEhTfW9UQ==
X-Received: by 2002:ac2:4e16:0:b0:492:e5be:bcc0 with SMTP id e22-20020ac24e16000000b00492e5bebcc0mr1953621lfr.210.1661194142326;
        Mon, 22 Aug 2022 11:49:02 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id w11-20020a05651c118b00b00261bc05c461sm1672599ljo.50.2022.08.22.11.49.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Aug 2022 11:49:01 -0700 (PDT)
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
        freedreno@lists.freedesktop.org, Rob Herring <robh@kernel.org>
Subject: [PATCH v3 1/3] dt-bindings: msm/dp: mark vdda supplies as deprecated
Date:   Mon, 22 Aug 2022 21:48:58 +0300
Message-Id: <20220822184900.307160-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220822184900.307160-1-dmitry.baryshkov@linaro.org>
References: <20220822184900.307160-1-dmitry.baryshkov@linaro.org>
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

The commit 85936d4f3815 ("phy: qcom-qmp: add regulator_set_load to dp
phy") moved setting regulator load to the DP PHY driver (QMP). Then, the
commit 7516351bebc1 ("drm/msm/dp: delete vdda regulator related
functions from eDP/DP controller") removed support for VDDA supplies
from the DP controller driver.
Mark these properties as deprecated and drop them from the example.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/display/msm/dp-controller.yaml   | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index 94bc6e1b6451..391910d91e43 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -76,8 +76,10 @@ properties:
   "#sound-dai-cells":
     const: 0
 
-  vdda-0p9-supply: true
-  vdda-1p2-supply: true
+  vdda-0p9-supply:
+    deprecated: true
+  vdda-1p2-supply:
+    deprecated: true
 
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
@@ -140,9 +142,6 @@ examples:
 
         power-domains = <&rpmhpd SC7180_CX>;
 
-        vdda-0p9-supply = <&vdda_usb_ss_dp_core>;
-        vdda-1p2-supply = <&vdda_usb_ss_dp_1p2>;
-
         ports {
             #address-cells = <1>;
             #size-cells = <0>;
-- 
2.35.1


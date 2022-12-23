Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0B763654B01
	for <lists+devicetree@lfdr.de>; Fri, 23 Dec 2022 03:12:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236035AbiLWCMI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Dec 2022 21:12:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235929AbiLWCLR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Dec 2022 21:11:17 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C974A11474
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 18:10:45 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id c65-20020a1c3544000000b003cfffd00fc0so5265601wma.1
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 18:10:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rImy9qzQNsvaZKsJD53z0ZS74yDDaR5L8OHuycyt/+8=;
        b=ybMeU7y7av/S/lEP7iuZrBMiP7gGL2G+whHNzpQgxB8Z7ojkkJ8yUruH2HhQ/SqlaU
         LQNK1NluoOprtN/vTg7MMwx9R2SrlK+ISepy8YzQ1jq9mdwSJub+Wcx02H+3j0oosiK1
         5sczwwz7wy5WS09bXFylOzrGaD3Y/uuzMPI87/kjs3TIO5jHx2DpgAvuTI2lfF9PsH4W
         l7P6jPn8KMWmHQzfCJfDlTjifIP6uIp8bNcMCKAINuZUZBS1IrGheySqUIQKRFun88Ad
         VFTeBj5nit+XULivjRDmh1jhoXt+iBegSIcmwy49qqblyJc7JOLVCu0+IfJAnUt9CJ4H
         sGWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rImy9qzQNsvaZKsJD53z0ZS74yDDaR5L8OHuycyt/+8=;
        b=s3GAUmDmjwiE/jzmVaMycYyW3jiHo2ei3BisWviqTv4gCcYRkhN3acmPeh+keSiRsp
         SL6NqObYBO/2XEAx5J/iOuo5UwZOjLtpAyeVkeAd7ZxHk1bpP1t14y7wx1xLSZ022h7R
         eeVIfwle9+hxADai1RnfyNMntqqlXYmqxKyxFK7xYCKvBO78DdEMWyGsVJA0PC3XUisD
         +tU8bLI6ieUlsl0yfFIUbwUgpr2b8AXMhlg1+quun5LEt9/J2HRBz3yytE/GmxRxInaQ
         PGfhwTS8DoRpm2ugVHILRnHhld3FxGmbBTTqXTZi8fSeUjH1063tHAVBPzIMDvgN1NtU
         Wbbw==
X-Gm-Message-State: AFqh2kqUWBo9cAMaHGDaOVtgej15sR2gpUmSu2orpgt8uAaarNWp3uci
        h84MKSEzwR45J1ZWWVlDjKwNLQ==
X-Google-Smtp-Source: AMrXdXuzuSn3gs7o1D4dqMt4ziGo2rqNRIYplOTGXwzVttpFa/c6OL+Zc4YmiLUJuOBl/Rel7TCWtg==
X-Received: by 2002:a05:600c:3592:b0:3d1:ebdf:d58b with SMTP id p18-20020a05600c359200b003d1ebdfd58bmr5591037wmq.5.1671761444369;
        Thu, 22 Dec 2022 18:10:44 -0800 (PST)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id j11-20020a5d452b000000b0022cc0a2cbecsm1849725wra.15.2022.12.22.18.10.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Dec 2022 18:10:44 -0800 (PST)
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
        bryan.odonoghue@linaro.org
Subject: [PATCH v6 15/18] arm64: dts: qcom: sdm630: Add compat qcom,sdm660-dsi-ctrl
Date:   Fri, 23 Dec 2022 02:10:22 +0000
Message-Id: <20221223021025.1646636-16-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221223021025.1646636-1-bryan.odonoghue@linaro.org>
References: <20221223021025.1646636-1-bryan.odonoghue@linaro.org>
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

The sdm630 can use the sdm660 mdss-dsi-ctrl compat. Currently it has the
same set of binding dependencies as sdm660.

Suggested-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm630.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
index 13e6a4fbba27c..8b9c7421bc0c6 100644
--- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
@@ -1572,7 +1572,8 @@ opp-412500000 {
 			};
 
 			dsi0: dsi@c994000 {
-				compatible = "qcom,mdss-dsi-ctrl";
+				compatible = "qcom,sdm660-dsi-ctrl",
+					     "qcom,mdss-dsi-ctrl";
 				reg = <0x0c994000 0x400>;
 				reg-names = "dsi_ctrl";
 
-- 
2.38.1


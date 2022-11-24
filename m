Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A621B636F62
	for <lists+devicetree@lfdr.de>; Thu, 24 Nov 2022 01:49:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229787AbiKXAtZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 19:49:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229686AbiKXAtB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 19:49:01 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0AA03100B3E
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 16:48:23 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id v1so214040wrt.11
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 16:48:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HIJDbyegl6u8zeEPDRjfbckMoUQq7Dd8VduqGlrKmeE=;
        b=JlbA9+8W450YbRnk4VYcS3AdEM2Va8QQwzmvPTb8phkZo5MqG61ujr+F5SSG69Cno2
         gT+l/WoqdumqULNpM6lhJ0OjoDUsE2q0lTwhFGghl6zjlw2W59ARTkvIZEDMKzuB8PlE
         sbA+1FaOJ2oj/L8puLQ6gTSfV5HMDvEFaLHZ/Rm290qPmUtxeJNTDzLRYe8FyFQIo7MB
         /FfraxLNDYUvD49gv+HXzXrLd/vsNctsoRz6CHOEgt0jPpapG7KF2rUXTRuHvqqkfHaS
         AoO8NXOQshhQ6WWpWGSTDtoU6WXrQfPFLANtBFGxQ9UoFNdgvA3tAxxcS8g+GThC0Gg6
         i3Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HIJDbyegl6u8zeEPDRjfbckMoUQq7Dd8VduqGlrKmeE=;
        b=5jROFuPegghuKNwhhfC42ENrNBOPI+iqIXXjNxB+5kUVhy8bt6OqXXlI8QvKRLiUUH
         c23mdMfhAkK+NE+y9fVRCFB6OPNdIMszLleyxWk5PiAZyC0i6FqNQ21wpxdWiFHq/OIC
         J3Xwk11fnd1+LrY8vKYNxQ91jOvPrs7vlQk9WR1qoVIG+Dk/5FL5OScNHdQh5ftDciV8
         R9/OO6tysmOmT8dvBBSi9a+ban7YrN/58QmfJy3AZXvmN2zj9I7fRxZJwm/I9WqlS0cn
         uXp3LyseUwBBArToB8Ia4TGlrQEBkifkBcxwf6f2QjYcgHXY7uGANX7S6MLN1Om7WnEI
         TjaA==
X-Gm-Message-State: ANoB5pnJ+P99m366EDDd72Ch1GX/6KghDmUaDVHKRVJ2xNoBVJJYnb/T
        fX1fYAoZ9qxNC0GDvBFL6ah/yg==
X-Google-Smtp-Source: AA0mqf4MZt+wx+bbi0GWwMA/YGWDOYht44nKXvQxpfQF4vjdgr98EfXiMvTzdAqTsh34jZ5BlSjkKA==
X-Received: by 2002:a05:6000:46:b0:241:bc67:c7af with SMTP id k6-20020a056000004600b00241bc67c7afmr13010638wrx.91.1669250901571;
        Wed, 23 Nov 2022 16:48:21 -0800 (PST)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id n38-20020a05600c3ba600b003c6bbe910fdsm5245076wms.9.2022.11.23.16.48.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 16:48:21 -0800 (PST)
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
Subject: [PATCH v3 14/18] arm64: dts: qcom: sc7280: Add compat qcom,sc7280-dsi-ctrl
Date:   Thu, 24 Nov 2022 00:47:57 +0000
Message-Id: <20221124004801.361232-15-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221124004801.361232-1-bryan.odonoghue@linaro.org>
References: <20221124004801.361232-1-bryan.odonoghue@linaro.org>
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

Add silicon specific compatible qcom,sc7280-dsi-ctrl to the
mdss-dsi-ctrl block. This allows us to differentiate the specific bindings
for sc7280 against the yaml documentation.

Reviewed-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7280.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index a4d6e866b5999..3368531e004e8 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -3903,7 +3903,8 @@ opp-506666667 {
 			};
 
 			mdss_dsi: dsi@ae94000 {
-				compatible = "qcom,mdss-dsi-ctrl";
+				compatible = "qcom,sc7280-dsi-ctrl",
+					     "qcom,mdss-dsi-ctrl";
 				reg = <0 0x0ae94000 0 0x400>;
 				reg-names = "dsi_ctrl";
 
-- 
2.38.1


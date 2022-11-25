Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AF473638A15
	for <lists+devicetree@lfdr.de>; Fri, 25 Nov 2022 13:37:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230175AbiKYMhN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Nov 2022 07:37:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230205AbiKYMhD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Nov 2022 07:37:03 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 592814EC2C
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 04:36:59 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id a11-20020a05600c2d4b00b003cf6f5fd9f1so3316240wmg.2
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 04:36:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Dzy/pv8LpfaZCGMyLs3UqXEZ7XhwmH1hafdtceOiRFg=;
        b=fJJR4QeEbYbrdwi9ZTqdfFKUfYSWnqAF9EsGpW+uixxx2zbe9q7zL6OjmJDVxo0hMd
         myn/rr/7wFhiBZK6cB5qCvfGKPEZtb+sRmw126yZDnQwCxANmo0Oh+U4EFrSdp2x1iJl
         7UiEwCOzYCrdFXVbEvP3xmPo1LlYddEPa5BeLWNC9uN/Y07gDn6T4APWzdU6VnfYkl/f
         YgnnPFhlo1K9NH8gc2xdQABhjJNkSIaSJfI/SIzJ2kJp9bvf6WpqooO4PqFuUwijSl9Q
         Q0SX1O6YKPIDBWjYNc1F6gMZPbKITblTsOBUf+xzeu3d7iIVmmGvDKCQTPUOmu5Py1nl
         rrcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Dzy/pv8LpfaZCGMyLs3UqXEZ7XhwmH1hafdtceOiRFg=;
        b=HZmhpBVhTsLaSz0sYRai51ZSh22h6NJoBDlv6O0cHGuoG4nhkdoeil0HO+hHbSJeJL
         WaQBz4t0GKhD5TDatCb6U/9fMFQVRWSzGndMPdzgOJidOuKkb5p6xb4nlPcMdeJwjsXe
         LuKjBf65P7LHDSqUQKarCXS80T2QnIn45X7pFauWPlGow7/CkaIUXp9Ba/BtE8l9NnGe
         kzGp6P7FJ+q+PbE/lJEcCe3fVzsyoKzkgIC+juX1UaWCDtcJuz5JVOQLYCzQbOHx8Kwp
         wxE/+DyNdaCn5o8CYGELfRlJoczyN0JanAm8Vwjp5cSGuEcotfYIVuD4avwM7qEFyPL7
         uM7w==
X-Gm-Message-State: ANoB5pm4cwiDqtO1mE6Xg67fHfnhK7dzKvfeJ2DSrUzL6hgil5Z4SSy9
        hFVodeU4F0iaebcyZIMY3NiPUQ==
X-Google-Smtp-Source: AA0mqf4C+BIzB93Y+GyJoAW9Q84AZU7HlHwF5CeORzNqfFwZ5t3SbSpe4RxDy89uLI7h+t3HQNpsJw==
X-Received: by 2002:a1c:f216:0:b0:3c6:c2ae:278b with SMTP id s22-20020a1cf216000000b003c6c2ae278bmr27105879wmc.127.1669379817884;
        Fri, 25 Nov 2022 04:36:57 -0800 (PST)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id k15-20020a5d6d4f000000b002366dd0e030sm3574111wri.68.2022.11.25.04.36.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Nov 2022 04:36:57 -0800 (PST)
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
Subject: [PATCH v4 13/18] arm64: dts: qcom: sc7180: Add compat qcom,sc7180-dsi-ctrl
Date:   Fri, 25 Nov 2022 12:36:33 +0000
Message-Id: <20221125123638.823261-14-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221125123638.823261-1-bryan.odonoghue@linaro.org>
References: <20221125123638.823261-1-bryan.odonoghue@linaro.org>
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

Add silicon specific compatible qcom,sc7180-dsi-ctrl to the
mdss-dsi-ctrl block. This allows us to differentiate the specific bindings
for sc7180 against the yaml documentation.

Reviewed-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7180.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index d2c374e9d8c03..cfe44afc52b4a 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -2985,7 +2985,8 @@ opp-460000000 {
 			};
 
 			dsi0: dsi@ae94000 {
-				compatible = "qcom,mdss-dsi-ctrl";
+				compatible = "qcom,sc7180-dsi-ctrl",
+					     "qcom,mdss-dsi-ctrl";
 				reg = <0 0x0ae94000 0 0x400>;
 				reg-names = "dsi_ctrl";
 
-- 
2.38.1


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E22D865209A
	for <lists+devicetree@lfdr.de>; Tue, 20 Dec 2022 13:37:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233564AbiLTMhc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Dec 2022 07:37:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233289AbiLTMhA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Dec 2022 07:37:00 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F6C319C36
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 04:36:56 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id o15so8589486wmr.4
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 04:36:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iKsehGcz374PW4Oaqc03FTNTJ/WJN4Esos64GXOFLAY=;
        b=h2sziuXwG6sjPr+BLoosxPre5o0Zs1SnFy6sNIMS1Z7mXntNvSk7VogqF3ISC572TB
         rvxRhnehnxmnmAgIxciV/rfrRqoQh2uiNBL6gKkCUygHoVmNkqlvbxaDRAnwlMR43aJP
         faLB6JAAdr19rgg3l7RCeVMJxbRCbL252wKrvvdao/eFKbeHhcjQX5RraERSmF65Efw6
         Fzoal6V45HaCqM1EWA+scwPqPuIHdD1s44USd9gHHZnRUNCDwdBMUBVEnlm6r7qmZpk/
         p9quS9ss8Hx333VgUmlZ2l+TAIK4xgF9tFc6bhteGcO2mFLGqQG/3yo6mX1EZVKwsOcn
         gyDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iKsehGcz374PW4Oaqc03FTNTJ/WJN4Esos64GXOFLAY=;
        b=txRJkbw8aI0zwQ3Nrh9+tmvYetCyFw07rIlYQ0QLiiWPKOSveljWUPrcrtKWc+GoVc
         LL4IEJx644IMIcF7MJu1e5Dw6O1wcmjOYZPGlZ7sNgBZR+FUQRzsvnrJ3pir3jLiDkpB
         cQeqVf726mQufZ9Oj2AE/gPLzwZ/Cnp5Q/l17hKYLxQwaK2XKsGqLy+wxOUriitb3ovZ
         8pgMRWSmUHoUIWNtPcOR+1Uo10iCvaPRPqBuTdbdXHiIMkn2QZlUSvGI3JZ9+Z1RUrV8
         PdFerjkq29AMtMlRH5RXQbuPCab1qQiw32qmdHlS9qDaqEbn9QaRHg+CZ91QswVGmeoi
         NAAg==
X-Gm-Message-State: ANoB5pmqTHHLR9tIsWbh0FzX6YMNe6ZhVz0PGFiCybXO98FQRuCrlh9y
        dNM6+RJxRBogMnFYvk5DpvIfag==
X-Google-Smtp-Source: AA0mqf74KclPWOpqVvzCUumx4JRwY1BH8ImGDpuAhQaKiXZgfqUWUxLsUGnA2RmHz8bZMGUHSnfsPw==
X-Received: by 2002:a7b:c40c:0:b0:3d2:392b:3169 with SMTP id k12-20020a7bc40c000000b003d2392b3169mr18519561wmi.28.1671539814709;
        Tue, 20 Dec 2022 04:36:54 -0800 (PST)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id da13-20020a056000408d00b00242257f2672sm12641208wrb.77.2022.12.20.04.36.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Dec 2022 04:36:54 -0800 (PST)
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
Subject: [PATCH v5 15/21] arm64: dts: qcom: msm8996: Add compat qcom,msm8996-dsi-ctrl
Date:   Tue, 20 Dec 2022 12:36:28 +0000
Message-Id: <20221220123634.382970-16-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221220123634.382970-1-bryan.odonoghue@linaro.org>
References: <20221220123634.382970-1-bryan.odonoghue@linaro.org>
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

Add silicon specific compatible qcom,msm8996-dsi-ctrl to the
mdss-dsi-ctrl block. This allows us to differentiate the specific bindings
for msm8996 against the yaml documentation.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index d31464204f696..c6d8371043a9a 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -989,7 +989,8 @@ mdp5_intf2_out: endpoint {
 			};
 
 			dsi0: dsi@994000 {
-				compatible = "qcom,mdss-dsi-ctrl";
+				compatible = "qcom,msm8996-dsi-ctrl",
+					     "qcom,mdss-dsi-ctrl";
 				reg = <0x00994000 0x400>;
 				reg-names = "dsi_ctrl";
 
@@ -1056,7 +1057,8 @@ dsi0_phy: phy@994400 {
 			};
 
 			dsi1: dsi@996000 {
-				compatible = "qcom,mdss-dsi-ctrl";
+				compatible = "qcom,msm8996-dsi-ctrl",
+					     "qcom,mdss-dsi-ctrl";
 				reg = <0x00996000 0x400>;
 				reg-names = "dsi_ctrl";
 
-- 
2.38.1


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A7DE6520B0
	for <lists+devicetree@lfdr.de>; Tue, 20 Dec 2022 13:38:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233813AbiLTMiF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Dec 2022 07:38:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233624AbiLTMhM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Dec 2022 07:37:12 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 121A91A22A
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 04:36:59 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id a17so10432000wrt.11
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 04:36:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kKVEXvGef5P9tA5LLEzuk1hrh35Tg71vyheIdv7ZSrI=;
        b=corPTYl/tlJj9NEIuUOL2PfV0ebOWXVFNh4B9E36y5XxcsLpsoK5RRnwwrhYnQ27Tn
         xVrtSdmaRoXb6xXFalMvEJdcBPlhyYBzcgxL2Bun/z7b6korMgOi0ydi4LDoBgF0VrlR
         KCQaYEka1k+LjKsJSFjfEbUQbLFd4EfUbxp8ZLrzYilpf7CpqX+rz92a/8k2ia5B2flW
         RXANYu/YFDmcasaiD1eigN+2+bTPy5/gHMn8vZNNYDiCMOKep8RlHD41GWQ3sYpguX11
         zrkpOkehZUpIaHpr2Z0tMV1QBd9HbcHlLmXlmfenrShszX3FzzITummW8O/aY1feIScS
         /pBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kKVEXvGef5P9tA5LLEzuk1hrh35Tg71vyheIdv7ZSrI=;
        b=xtCLEdTIpg+LmthU/FIdz6lUi7xa/rAIayRQvDsQVxMZPfBQGbCCQT8X3PiX1/K8Tf
         uG1mw1Qb7j41DY8ZX9TW2GxYC6WMnXd2SPsybCe75RRBY3Zk/qyEOgW2yfK/EEK80BoV
         Xs512hzb99r/NwG0ML+/LXTfGxTqSLbtzWNWyVJGZ9GzTmgW+8TU03bt0KQrj9T8vR/r
         1xxralVy9mmpi7RVqiqT6OiaczZM//Mz+UMBvSOBod2XVRQFgGXKeAGCi49hrAwyMbAR
         N/bHavMpoLmRMAbIKOVoVWA2sPQPxDZvLpLptf1K/N+ryANu/22p0uJrD4qyYozaUmrg
         oSig==
X-Gm-Message-State: ANoB5pm1oH3J2Fh475euaRq+59sMLB0bUpXK2z0UuUIvwUKj6Wr8QmJk
        coROQI0aO8P5q58F/s/Dqe1PxQ==
X-Google-Smtp-Source: AA0mqf7zfD7dMeMe/X8AXuK4TXSuvR8MUh+RMZMzmqRSP7U0a2/nS/5R18XyXiqUvuFD3ps5poFWnQ==
X-Received: by 2002:adf:edc6:0:b0:242:43d1:6d8a with SMTP id v6-20020adfedc6000000b0024243d16d8amr35238084wro.59.1671539819547;
        Tue, 20 Dec 2022 04:36:59 -0800 (PST)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id da13-20020a056000408d00b00242257f2672sm12641208wrb.77.2022.12.20.04.36.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Dec 2022 04:36:59 -0800 (PST)
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
Subject: [PATCH v5 19/21] arm64: dts: qcom: sdm660: Add compat qcom,sdm660-dsi-ctrl
Date:   Tue, 20 Dec 2022 12:36:32 +0000
Message-Id: <20221220123634.382970-20-bryan.odonoghue@linaro.org>
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

Add silicon specific compatible qcom,sdm660-dsi-ctrl to the
mdss-dsi-ctrl block. This allows us to differentiate the specific bindings
for sdm660 against the yaml documentation.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm660.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm660.dtsi b/arch/arm64/boot/dts/qcom/sdm660.dtsi
index d52123cb5cd31..e8a15b9cee18f 100644
--- a/arch/arm64/boot/dts/qcom/sdm660.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm660.dtsi
@@ -154,7 +154,8 @@ mdp5_intf2_out: endpoint {
 
 &mdss {
 	dsi1: dsi@c996000 {
-		compatible = "qcom,mdss-dsi-ctrl";
+		compatible = "qcom,sdm660-dsi-ctrl",
+			     "qcom,mdss-dsi-ctrl";
 		reg = <0x0c996000 0x400>;
 		reg-names = "dsi_ctrl";
 
-- 
2.38.1


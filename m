Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B529B6520C3
	for <lists+devicetree@lfdr.de>; Tue, 20 Dec 2022 13:38:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233848AbiLTMid (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Dec 2022 07:38:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233741AbiLTMhW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Dec 2022 07:37:22 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A53D8186ED
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 04:37:01 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id f18so11603215wrj.5
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 04:37:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZI/lLtloM4Tug4sA61Civ+cVcFduOFVW5YccHSGp9ig=;
        b=eF+PhFf5qeLqtrw+IAez0BiPQ9HYoGvX7UcXyiaLnVZqXe2DyTL24DuL9/CjVL/1d6
         vwOE00klSdPx0UJBw06rX1r9eWdiqvwMisycqNx2T3dJgfgGdDNMRypzNpoau9JGIn9M
         D8QShZEwthKERVHWXBLSPsiDzXIcL8Ht0iXtukVcVMDRCZoH70Z25Az1jFFtHx7EW7/1
         ipEBrGdVlVthSpOBV7pLccubnfw7OKa04pJVPUzoaPqQBPDA2V3zipvjhZ2CJ1BuEFlR
         uEoNYxvPcJm9N3n4n37aTsURsMiCLWCB8c9eZDvK//Wf+ggp3G1c62W/bk3fQYJ/qWV1
         AM0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZI/lLtloM4Tug4sA61Civ+cVcFduOFVW5YccHSGp9ig=;
        b=270hRG8r/rBYuGC7CEZ6GKuTTGUhetGF/8MV2BakwX5x56d9v/uHeWNM1fS/k+03Je
         ExnFTLjf9YaYPxunHzgAYKAqD9DNhI4wGE4iE/kfNJI7n/ob73IdFlhyEl0h4sTG/6do
         HwM780KgcI8Yah6ylDsdiBAFFiwiU6adqhOwocYhtNo8lCzIksz1C1oMHaIxOYC06mYn
         AlUsO7zvdCr70X4PRYTQGiuGh44OjoWOHPTQIXbnCeRiHPQ9XrUUp7qsrAT6JaeTxHrV
         lAw3fMbmS6bxBKbsAutoRzB+qunSCgzL5ChRVYaXoP4ZtAlfGgwOJ4nRPtfxVtTgM2B/
         GN9g==
X-Gm-Message-State: AFqh2kph+uaN4MqzkeJdxYXTq9ItDCd9l8TR0IDXpwp/6i/P6W7zYnGa
        zIPwH68BCFt6aohuLtEjgKrhEQ==
X-Google-Smtp-Source: AMrXdXvpt552/j2eYpyiJEvx8Y8iUdWPP8nWFBZn584KDHLE94EqwOEvXHfAl0Y2Sy4/Ct53UZYcSA==
X-Received: by 2002:a5d:4143:0:b0:262:3647:c1b1 with SMTP id c3-20020a5d4143000000b002623647c1b1mr997538wrq.58.1671539820722;
        Tue, 20 Dec 2022 04:37:00 -0800 (PST)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id da13-20020a056000408d00b00242257f2672sm12641208wrb.77.2022.12.20.04.36.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Dec 2022 04:37:00 -0800 (PST)
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
Subject: [PATCH v5 20/21] arm64: dts: qcom: sdm845: Add compat qcom,sdm845-dsi-ctrl
Date:   Tue, 20 Dec 2022 12:36:33 +0000
Message-Id: <20221220123634.382970-21-bryan.odonoghue@linaro.org>
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

Add silicon specific compatible qcom,sdm845-dsi-ctrl to the
mdss-dsi-ctrl block. This allows us to differentiate the specific bindings
for sdm845 against the yaml documentation.

Reviewed-by: Douglas Anderson <dianders@chromium.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 65032b94b46d6..623e5d7dddfd2 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -4645,7 +4645,8 @@ opp-810000000 {
 			};
 
 			dsi0: dsi@ae94000 {
-				compatible = "qcom,mdss-dsi-ctrl";
+				compatible = "qcom,sdm845-dsi-ctrl",
+					     "qcom,mdss-dsi-ctrl";
 				reg = <0 0x0ae94000 0 0x400>;
 				reg-names = "dsi_ctrl";
 
@@ -4716,7 +4717,8 @@ dsi0_phy: phy@ae94400 {
 			};
 
 			dsi1: dsi@ae96000 {
-				compatible = "qcom,mdss-dsi-ctrl";
+				compatible = "qcom,sdm845-dsi-ctrl",
+					     "qcom,mdss-dsi-ctrl";
 				reg = <0 0x0ae96000 0 0x400>;
 				reg-names = "dsi_ctrl";
 
-- 
2.38.1


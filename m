Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D7CB67126B
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 05:13:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229564AbjAREND (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 23:13:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229637AbjARENC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 23:13:02 -0500
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EA825399D
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 20:13:00 -0800 (PST)
Received: by mail-ed1-x52a.google.com with SMTP id s3so9793451edd.4
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 20:13:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XixFfJqW7fWztjbCaUKdGCwc9XrR0sFINh15AHy3o88=;
        b=bXKU6XTtT9ieurvaDVda982TPoWPVwLPfGgMrGmIr3+RUX7uhaoL1IXd30pmBC/EeT
         T4o9xDSlFO+XRjee7e5ZW1tYtKZyXY5HmjmCueXu8AMYKHbFhKMSzgeDUzqtTOVoXhke
         jyb0OIZXAE7b9LQW1cozW2OwZ/Tf1kq5oXetYKLDc0mb1HwHL4zqy6FN9N26LNo/iCpR
         n4z8WLkAsy6fRrnu46ScykRUcohGdVhVcoFmgoxEfY26B70Ot0ENewCg6Iw8PCoGKXX4
         S9e3vDTn7KVyHCZFo+lbgLNKA4DO5Ic9xCl46TsRFv/gobFMbM3wnsISQOsFvMsMEZic
         Zjxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XixFfJqW7fWztjbCaUKdGCwc9XrR0sFINh15AHy3o88=;
        b=jz24wcnhGJdYp2Vr0mwcx7FB2hgSsQLKzho5ebatYuALx7xIJekwczSTDNjv8Uplkt
         qdtSOkvXB18NkOkfoPzQ2LYz+HJZWLY2AcUxyDLXBAK9FEWfj5/DSd4uUB475BqmGDN9
         jyptrwJyK1iNpQLt1LxzHu+38thcV+EoQxkp4uTg7oG/zOBicny9NaN/zcB0pWOvPxPo
         RzfbJB0HkdObmyh4oq1n2bvtKUllubxc4QtiPUE1bZI4eOTMhIucwwZ4tWS6Td4gULeh
         B5H6bp5n1uGc5I/5dVBhN0b4KZmVN9U03CCOdaMgUwwfXEaRJlqW+NEEtEthNLLPb6Yo
         xVcg==
X-Gm-Message-State: AFqh2kpJ6zXzhHV8Qj29h1ESc3hAqm6TRb+oOPZ86JhiqknFWbkpKKKi
        5X569BRQelHcs5zi5jitP/6WQg==
X-Google-Smtp-Source: AMrXdXv+phuCKBPJgXH6uF3amx3393AwEaVxAucehUBhtjYRdM2N1Wl3T1MiOAdSSQrVR1H9TUIWyg==
X-Received: by 2002:a05:6402:24a4:b0:49e:1f0e:e209 with SMTP id q36-20020a05640224a400b0049e1f0ee209mr8903454eda.10.1674015179135;
        Tue, 17 Jan 2023 20:12:59 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id hp24-20020a1709073e1800b008720c458bd4sm2314100ejc.3.2023.01.17.20.12.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 20:12:58 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH v7 11/11] ARM: dts: qcom: rename mdp nodes to display-controller
Date:   Wed, 18 Jan 2023 06:12:43 +0200
Message-Id: <20230118041243.1720520-12-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230118041243.1720520-1-dmitry.baryshkov@linaro.org>
References: <20230118041243.1720520-1-dmitry.baryshkov@linaro.org>
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

Follow the schema change and rename mdp nodes to generic name
'display-controller'.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom-apq8064.dtsi | 2 +-
 arch/arm/boot/dts/qcom-msm8974.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom-apq8064.dtsi
index e045edeb5736..95705703fe8f 100644
--- a/arch/arm/boot/dts/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom-apq8064.dtsi
@@ -1493,7 +1493,7 @@ hdmi_phy: phy@4a00400 {
 			status = "disabled";
 		};
 
-		mdp: mdp@5100000 {
+		mdp: display-controller@5100000 {
 			compatible = "qcom,mdp4";
 			reg = <0x05100000 0xf0000>;
 			interrupts = <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm/boot/dts/qcom-msm8974.dtsi b/arch/arm/boot/dts/qcom-msm8974.dtsi
index ec0c526d0483..2879b29a109c 100644
--- a/arch/arm/boot/dts/qcom-msm8974.dtsi
+++ b/arch/arm/boot/dts/qcom-msm8974.dtsi
@@ -1579,7 +1579,7 @@ mdss: display-subsystem@fd900000 {
 			#size-cells = <1>;
 			ranges;
 
-			mdp: mdp@fd900000 {
+			mdp: display-controller@fd900000 {
 				compatible = "qcom,msm8974-mdp5", "qcom,mdp5";
 				reg = <0xfd900100 0x22000>;
 				reg-names = "mdp_phys";
-- 
2.39.0


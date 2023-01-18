Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1E1FC67125F
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 05:13:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229582AbjARENA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 23:13:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41186 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229614AbjAREM5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 23:12:57 -0500
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E79154230
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 20:12:54 -0800 (PST)
Received: by mail-ej1-x632.google.com with SMTP id ss4so72978589ejb.11
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 20:12:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sFUVlLSeACjj16WsHbkWsVSEVF2l2EcRva5uQa0P5eA=;
        b=ta6cKFKIcnvxcLSDER30uqEhLewgKf7nJnld+v4uH1szhfnRVQlvzKt5Wu4mtDdWfR
         7NiTX+lr4xdrblHUP5hoA3h1hTpOnrwMfUoNqdlaeKug4u+Bi6u7+kwzzZGUEYUR5bjG
         BTNVNLTCJrTkm8pjmkFBFp94ViuXTGrFuY1/B3R63gwfVNtMpuWb+QUYmdZ76beRF55e
         H0N/n4gZr47liFFfZjfY7sZGNTn+T9YPHUWPSuhZ6+GuVyneWnfjYSIoJQiS+dKRMy+/
         k1rNUTAvv9SL474tfV8mCduzK5mAnke1Dr5RFo9WJqw42Wd6kkkMnmKeERRfpPo7IFpe
         GJww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sFUVlLSeACjj16WsHbkWsVSEVF2l2EcRva5uQa0P5eA=;
        b=WXZ9yas/jMqoGBDDfmv9ipmPw++8+f+IGACKm22UK8ednMbZgybyx8iE26Q4pv8PZe
         ogEhDLJqI3v46/6A1iVuWlw8hDpzCCBPS4gWIlSthlQ7aJQHIf5DUzpFLS0NKadq9bq5
         GlIwYYqqtDe/1VgUunVNrfpa336uNbHzu6jFkO+GKYMyPTCUORxDr1MesUDuFeyFCGxF
         4t3Y+L3vGGdFkwiMcACc9XHyzyGst2+x2Q/1Do+Je6dIT4x2lpRTCBqGdMKVtUnfFln7
         hRA16nLK0ZivWl3tqYTA1rhC7Ek8HTGl7QReMFWabJvbDtDAorPVuHVtPECW3Vf1T/Y0
         ScVA==
X-Gm-Message-State: AFqh2kptZBERqywB3phfPB+X300yfNCU8bXLKsJpINV2c9DNVBA4k62I
        Y01a8vOzi2TIZHLVZjifDgiSyw==
X-Google-Smtp-Source: AMrXdXuwL+cahMr2hpDfw/s2+Q4zrO5FoqSL7dApKKtmlsGal/fg0nT9rnQSjPR2eepeEBEQf/h3QQ==
X-Received: by 2002:a17:906:1605:b0:872:41a5:7c78 with SMTP id m5-20020a170906160500b0087241a57c78mr7561088ejd.3.1674015172894;
        Tue, 17 Jan 2023 20:12:52 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id hp24-20020a1709073e1800b008720c458bd4sm2314100ejc.3.2023.01.17.20.12.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 20:12:52 -0800 (PST)
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
Subject: [PATCH v7 06/11] ARM: dts: qcom-msm8974: add SoC specific compat string to mdp5 node
Date:   Wed, 18 Jan 2023 06:12:38 +0200
Message-Id: <20230118041243.1720520-7-dmitry.baryshkov@linaro.org>
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

Add SoC-specific compat string to the MDP5 device node to ease
distinguishing between various platforms.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom-msm8974.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom-msm8974.dtsi b/arch/arm/boot/dts/qcom-msm8974.dtsi
index 44c4d8d8f51f..ced62937165a 100644
--- a/arch/arm/boot/dts/qcom-msm8974.dtsi
+++ b/arch/arm/boot/dts/qcom-msm8974.dtsi
@@ -1580,7 +1580,7 @@ mdss: mdss@fd900000 {
 			ranges;
 
 			mdp: mdp@fd900000 {
-				compatible = "qcom,mdp5";
+				compatible = "qcom,msm8974-mdp5", "qcom,mdp5";
 				reg = <0xfd900100 0x22000>;
 				reg-names = "mdp_phys";
 
-- 
2.39.0


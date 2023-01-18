Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E61336711C1
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 04:20:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229668AbjARDUd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 22:20:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229619AbjARDU3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 22:20:29 -0500
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF801521D1
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 19:20:27 -0800 (PST)
Received: by mail-ej1-x631.google.com with SMTP id ss4so72802284ejb.11
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 19:20:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fqxXCRMWUpX9mz5WAQxvM+x2hdkUx8K3aD6Kwx9JWK0=;
        b=Vrxm+BaKUW7drwnQMkZl0L5zgktqfdhc5QBgrqW4OhcWixP8Oa34SJU3K7L/ob7SGX
         ivySSdkdp6unYI9GRyCLh/AMyR57Aw1Nkr7eDZMSHB6yje+uGyz3A7DYbsCNmoiUT24z
         BaPaP3sb3tBI2VEyrehlMaGvlBd9/7cQzKfTK7NG/oH7sxk1tzWN7/uT4xKoAG2dk05u
         YdN0v3nNRXYLv+5rMQLCL+f7DaeU3NOLUCyt0uhXBoGPCiUE1wW43M3E/Z7KcAFXO+Om
         whnT0nXMUFIqY8aCBvCgZbqKUeEB2Xy0bZLwtVgqNGt4HiIHnN0gYn+JP2FP2iEvexLS
         ts+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fqxXCRMWUpX9mz5WAQxvM+x2hdkUx8K3aD6Kwx9JWK0=;
        b=ffemb1CfvoYXr9Ez/gToWFyt+VzkWsRQZZLvocf1HO6+33mZlmJP2higw15YizGV+l
         GVt3R4dwg/xS/UnmCcPdICfCd5VcZfmm0b29fnE5qyS9L+97Cf9632cVCxCr0fpxxIDB
         V44ByGggLvqb2AhhVk7Iu5UhTylDbfTtEZaiT7KFV49GHJ7ZcUJdeyKXS4WlKDsuBSan
         kCJSVii7eWUzt7TPlzA0V4onFfF22yzbHnaBqfVkLvrCOkNMS1OYQpFVV7O/i6qTEcYa
         rzh4gys6COMrXFBG1nVKrSMFv926BcTOOp1ZDaYG/oQUpPbJLfrVgcbWJ9/gj3Fi3cdp
         I9rQ==
X-Gm-Message-State: AFqh2kquE2Rj1u8ZAjpdBqW3HikU0z+y51buwt+psz4l5L8Y6jzytGPu
        fzymH65/r3/BIxAr1LbPEtVAaw==
X-Google-Smtp-Source: AMrXdXsPlqnmJSh/9i3ssUfdZIrIq/56AHP8tZA7qU5AK5epPxuuKnYq5TUQHuvBHjMl8efcGuCF1Q==
X-Received: by 2002:a17:906:6a27:b0:872:8c97:db27 with SMTP id qw39-20020a1709066a2700b008728c97db27mr5499157ejc.69.1674012026448;
        Tue, 17 Jan 2023 19:20:26 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id hu16-20020a170907a09000b0086ffe8a00fdsm3766670ejc.84.2023.01.17.19.20.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 19:20:26 -0800 (PST)
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
Subject: [PATCH] arm64: dts: qcom: sm8350: use qcom,sm8350-dsi-ctrl compatibles
Date:   Wed, 18 Jan 2023 05:20:24 +0200
Message-Id: <20230118032024.1715857-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
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

Add the per-SoC (qcom,sm8350-dsi-ctrl) compatible strings to DSI nodes
to follow the pending DSI bindings changes.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index 703ba3d81e82..a066566b6ea9 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -2883,7 +2883,7 @@ dpu_intf1_out: endpoint {
 			};
 
 			mdss_dsi0: dsi@ae94000 {
-				compatible = "qcom,mdss-dsi-ctrl";
+				compatible = "qcom,sm8350-dsi-ctrl", "qcom,mdss-dsi-ctrl";
 				reg = <0 0x0ae94000 0 0x400>;
 				reg-names = "dsi_ctrl";
 
@@ -2978,7 +2978,7 @@ mdss_dsi0_phy: phy@ae94400 {
 			};
 
 			mdss_dsi1: dsi@ae96000 {
-				compatible = "qcom,mdss-dsi-ctrl";
+				compatible = "qcom,sm8350-dsi-ctrl", "qcom,mdss-dsi-ctrl";
 				reg = <0 0x0ae96000 0 0x400>;
 				reg-names = "dsi_ctrl";
 
-- 
2.39.0


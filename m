Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1BA78646625
	for <lists+devicetree@lfdr.de>; Thu,  8 Dec 2022 01:55:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229863AbiLHAzH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Dec 2022 19:55:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229843AbiLHAzE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Dec 2022 19:55:04 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1750789338
        for <devicetree@vger.kernel.org>; Wed,  7 Dec 2022 16:55:04 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id y25so9161765lfa.9
        for <devicetree@vger.kernel.org>; Wed, 07 Dec 2022 16:55:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qdPmvvZXSRXEgFCUhOrLI3O1LCoqsr5bQT79OYES7MA=;
        b=bZeWsgjSdtb1EfFEhdB3DnwLB5u6mzHuCkIQDNxYA7Ar57IKdpfvCL5sVdua/eGgZY
         XGzloWvKPu2aIz1a+SpZXzzOdkTpFZ9BME4lfc1/pAEW9TKpDz3ql91zQZzJ5AWhuQJb
         7BgRy3qsymgVho4YXMAakC7CC3j6MDWezr64gHzZM5r5rDu0NRtAEa9hd0+L76IZMop/
         0Xn8G78GxByGFFmr+n1eBmW6LIRSIStlMKr68J61MWouCTFV8J2Dc1V7V67bp+z3EI/f
         DpJN1/lM4KLfCCiggd41WL7MAG7cf0SGwzbtjFLLD3dt2Hi/AU70ddYr17EnWCS3ryFH
         Us0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qdPmvvZXSRXEgFCUhOrLI3O1LCoqsr5bQT79OYES7MA=;
        b=BTx9903r9Vw0fagfMan0K4pVegs+wTVjFQDZvvcdgQsIZxOIVzcG0j3yxX41HknbLW
         sKmFDKeYEs7s/sXjPAtdPHG8AXLcZ4cA92dDpatI9NpF72eiZjYDO9y2Ojx0zmP9qTyH
         MreIjCAGVtzLFxrtG0f0vgeew7FTX6h5f0V13xxqN+6Ih9jkBFYtDeDY2lv9fgb3m6kV
         tm0GIcX6DjI9gjwsIw1EnKJRGHUSgd1ntE4X0uPyKjPyo0RdIqQsdMWW9TCBFQnjTrEs
         b/W5n9ht6uMYBAsmH3gayH7Zh4HdGS22e4ZV5dY0xJpSPCxqro36jlU6dM8NR+W31JE5
         1tWg==
X-Gm-Message-State: ANoB5pkkts5+Z8uoxvQZVhKJRcxgBJ6T7gML/Y7tNX7amWajQeverT1J
        9onffA5oEFak5teyGGhLV29rGA==
X-Google-Smtp-Source: AA0mqf7pJeeDPb8xpY6IkZxk/PYM2KwYfDnCCCrsNPl9x/edm5ZyBYm5JrGPsZ7c2irAfCJcfzmQSg==
X-Received: by 2002:a05:6512:3414:b0:4b5:9510:e61 with SMTP id i20-20020a056512341400b004b595100e61mr1326135lfr.192.1670460902493;
        Wed, 07 Dec 2022 16:55:02 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id f27-20020a19381b000000b0049fff3f645esm3064159lfa.70.2022.12.07.16.55.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Dec 2022 16:55:02 -0800 (PST)
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
Subject: [PATCH v2 4/4] arm64: dts: qcom: add SoC specific compat strings to mdp5 nodes
Date:   Thu,  8 Dec 2022 02:54:58 +0200
Message-Id: <20221208005458.328196-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221208005458.328196-1-dmitry.baryshkov@linaro.org>
References: <20221208005458.328196-1-dmitry.baryshkov@linaro.org>
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

Add SoC-specific compat string to the MDP5 device nodes to ease
distinguishing between various platforms.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 2 +-
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 2 +-
 arch/arm64/boot/dts/qcom/sdm630.dtsi  | 2 +-
 arch/arm64/boot/dts/qcom/sdm660.dtsi  | 2 ++
 4 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index 2ca8e977fc2a..0a23fb6efae8 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -989,7 +989,7 @@ mdss: mdss@1a00000 {
 			ranges;
 
 			mdp: mdp@1a01000 {
-				compatible = "qcom,mdp5";
+				compatible = "qcom,msm8916-mdp5", "qcom,mdp5";
 				reg = <0x01a01000 0x89000>;
 				reg-names = "mdp_phys";
 
diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index d31464204f69..b5cd1bcad5eb 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -931,7 +931,7 @@ mdss: mdss@900000 {
 			status = "disabled";
 
 			mdp: mdp@901000 {
-				compatible = "qcom,mdp5";
+				compatible = "qcom,msm8996-mdp5", "qcom,mdp5";
 				reg = <0x00901000 0x90000>;
 				reg-names = "mdp_phys";
 
diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
index 13e6a4fbba27..65addd4c672e 100644
--- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
@@ -1498,7 +1498,7 @@ mdss: mdss@c900000 {
 			status = "disabled";
 
 			mdp: mdp@c901000 {
-				compatible = "qcom,mdp5";
+				compatible = "qcom,sdm630-mdp5", "qcom,mdp5";
 				reg = <0x0c901000 0x89000>;
 				reg-names = "mdp_phys";
 
diff --git a/arch/arm64/boot/dts/qcom/sdm660.dtsi b/arch/arm64/boot/dts/qcom/sdm660.dtsi
index d52123cb5cd3..cdaa0d7a66f3 100644
--- a/arch/arm64/boot/dts/qcom/sdm660.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm660.dtsi
@@ -142,6 +142,8 @@ &gpucc {
 };
 
 &mdp {
+	compatible = "qcom,sdm660-mdp5", "qcom,mdp5";
+
 	ports {
 		port@1 {
 			reg = <1>;
-- 
2.35.1


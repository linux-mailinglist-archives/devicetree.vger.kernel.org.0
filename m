Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 68280661BC3
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 02:11:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229503AbjAIBLL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 8 Jan 2023 20:11:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233682AbjAIBLA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 8 Jan 2023 20:11:00 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE6DF10C2
        for <devicetree@vger.kernel.org>; Sun,  8 Jan 2023 17:10:56 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id y25so10711353lfa.9
        for <devicetree@vger.kernel.org>; Sun, 08 Jan 2023 17:10:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mrb15vphKcBSHFcYnw0cLYDDRYFrhAD7+lVEbzPfwQ8=;
        b=DzjwldrFRM/SHHoKRzWBMA+AWaV82fo68viuncsnu8O6OiRuHEykHxc2ysDVOHDjbP
         kn81BvGTDs0gof2CapyMiIrOr/6ytEEfM1wXufOCNSVJDh2q1mZHtZGllsPphoGbgwJ6
         dLrsI9ipfN6JEYtmVzHWHBf6MFOYlifDevxP2hWyKIw9ipZepsRsvXS+DpKrhuhgde0t
         Rs2YWAAaiYoJponbu6BJMQDDWthCPg9PGMGmCc0xL4THu4CZlzpW1/qHPJoz7BOokw1v
         dyYCIf38xSmzGW/HytkkWlAdS4af/ht6XxwpQB4qtRsiGp6rE/reaNuz1pmUgmSMhDI1
         MDiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Mrb15vphKcBSHFcYnw0cLYDDRYFrhAD7+lVEbzPfwQ8=;
        b=CzR6H24+/KAW8y5LE39vo6Bag+z9TkdqABq5rn/4O9RnqQumgEMq5cUN6lKtFmI2s3
         2T5gYu6fi952BcrVTvpqM6nxYC/EeVcfsUyh73/tB5WR2EjcvkEIika+FO46fABXzKjS
         Vad0cJVI3fXFCAHrOarYrs04brN4NLqo7H06tpXQvWxMKi/iqQ/60BZqRd6EzPf3Ni1t
         jhc2iytxIOs1Cov9ewAQl5F7lcWACQxZm+36tcTrKyucbhhYmGO12cKFt3i45E6pzzzX
         V7P4dfld8AG4aZMLo1XHH8PcECuh0MLtfVqnzQ40Eplm4p1puFQ6gTRaS3m/XgMbiDT1
         Pyow==
X-Gm-Message-State: AFqh2koi9qsGx+0dzy7unxrRr+X89lR1GBZgTIfku73sDlM1PqXfZkLu
        6v1RmUPtaTQlH74FY1xav7GyMw==
X-Google-Smtp-Source: AMrXdXvcAYu2xtCiIMX6dwNaNYih1HPUhZuiR2pXIWP+JTUcaZUXj6ag6IHHhJ8aHyhW++d6psWa0A==
X-Received: by 2002:ac2:5dd9:0:b0:4b5:9365:cd4f with SMTP id x25-20020ac25dd9000000b004b59365cd4fmr16354288lfq.42.1673226655092;
        Sun, 08 Jan 2023 17:10:55 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id y4-20020a0565123f0400b004cc590975f7sm1324346lfa.183.2023.01.08.17.10.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Jan 2023 17:10:54 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v4 4/4] arm64: dts: qcom: add SoC specific compat strings to mdp5 nodes
Date:   Mon,  9 Jan 2023 03:10:51 +0200
Message-Id: <20230109011051.263391-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230109011051.263391-1-dmitry.baryshkov@linaro.org>
References: <20230109011051.263391-1-dmitry.baryshkov@linaro.org>
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
2.39.0


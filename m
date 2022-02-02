Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 052044A7A51
	for <lists+devicetree@lfdr.de>; Wed,  2 Feb 2022 22:25:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347652AbiBBVY7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Feb 2022 16:24:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347667AbiBBVYn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Feb 2022 16:24:43 -0500
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com [IPv6:2607:f8b0:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 253EBC06175D
        for <devicetree@vger.kernel.org>; Wed,  2 Feb 2022 13:24:25 -0800 (PST)
Received: by mail-pg1-x52d.google.com with SMTP id s16so526823pgs.13
        for <devicetree@vger.kernel.org>; Wed, 02 Feb 2022 13:24:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ByszmS3++VzU56DysBqUHdS0730VZ9qlutiOkG62SSc=;
        b=nR2MvYfzs5o5IAQK/n8ImikISS87gNJVo5eSON5hLyblMqv0Z0NdUA6xvk1zR4Og7r
         uhuAkK8C4ctlhY4Ta2kFhceB1NHDF6ilUOsM3X9CfGp84hCMXujqEYTQ4lyN2qDClMKN
         YpZ+IG5EWjEfwmazwvX9m9iUzj/oxE3OBu1KM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ByszmS3++VzU56DysBqUHdS0730VZ9qlutiOkG62SSc=;
        b=Mn4DKaeGfWJyiqEuvfNBJDFBwdc1puP5gm4gkWb8/lFR8QNraql1fyM64HidOkKnIF
         EEuSABKqcmo1SGuGj0YljoHo49PPQ1Djl+QF6TZ9qi/OUivuDtUIWO8PAVoVHuM9ogl4
         srpN5Qo/YpVt+9Bd71QXxBtAwiVSRDEuQDAIGjbnQjSDK9JjblX6DUBbPebXCldJwqpE
         sJJOC4cl0e3UgkgCx3R4ceKWu0CbU9+9hk/H5A60Gxi9SR/3cGY63HFRRTWpm/ISp70y
         KCpHcln2TAXcX40xaEEV4YnJ7ERmJ6/Z/LZaSm4a2dJdxHXXVH8ROf+80d3G1uiobE8F
         iEIw==
X-Gm-Message-State: AOAM532CsO3h7/NPmJxPk4sxejPkAgePoiXTF+DGW70erm1Aaf4gs7cH
        CF5UB7zs4vrn5EZye0kW5LpkbQ==
X-Google-Smtp-Source: ABdhPJzVsb8lfDnT0uBdj+He/AFpZcfXHtpW/Ppb3qs9pGrZ/r77umcD1G4sWWnwf/2ezbIPN9s0zw==
X-Received: by 2002:a63:2bc5:: with SMTP id r188mr13767481pgr.363.1643837064608;
        Wed, 02 Feb 2022 13:24:24 -0800 (PST)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:f1c4:10b6:b4ef:16e5])
        by smtp.gmail.com with ESMTPSA id on9sm7627983pjb.16.2022.02.02.13.24.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Feb 2022 13:24:24 -0800 (PST)
From:   Douglas Anderson <dianders@chromium.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     pmaliset@codeaurora.org, mka@chromium.org,
        quic_rjendra@quicinc.com,
        Shaik Sajida Bhanu <sbhanu@codeaurora.org>,
        kgodara@codeaurora.org, konrad.dybcio@somainline.org,
        Sankeerth Billakanti <quic_sbillaka@quicinc.com>,
        sibis@codeaurora.org, swboyd@chromium.org,
        Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 10/14] arm64: dts: qcom: sc7280: Move dp_hot_plug_det pull from SoC dtsi file
Date:   Wed,  2 Feb 2022 13:23:44 -0800
Message-Id: <20220202132301.v3.10.Id346b23642f91e16d68d75f44bcdb5b9fbd155ea@changeid>
X-Mailer: git-send-email 2.35.0.rc2.247.g8bbb082509-goog
In-Reply-To: <20220202212348.1391534-1-dianders@chromium.org>
References: <20220202212348.1391534-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Pulls should be in the board files, not in the SoC dtsi
file. Remove. Even though the sc7280 boards don't currently refer to
dp_hot_plug_det, let's re-add the pulls there just to keep this as a
no-op change. If boards don't need this / don't want it later then we
can remove it from them.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

Changes in v3:
- ("Remove dp_hot_plug_det pull from SoC dtsi file") new for v3.

 arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r0.dts | 4 ++++
 arch/arm64/boot/dts/qcom/sc7280-idp.dtsi                   | 4 ++++
 arch/arm64/boot/dts/qcom/sc7280.dtsi                       | 1 -
 3 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r0.dts b/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r0.dts
index 3c5aab225748..bdc3f341ecf6 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r0.dts
+++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r0.dts
@@ -826,6 +826,10 @@ &usb_2_hsphy {
 
 /* PINCTRL - additions to nodes defined in sc7280.dtsi */
 
+&dp_hot_plug_det {
+	bias-disable;
+};
+
 &pcie1_clkreq_n {
 	bias-disable;
 	drive-strength = <2>;
diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
index 9140dca3b72a..325f50925451 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
@@ -355,6 +355,10 @@ bluetooth: bluetooth {
 
 /* PINCTRL - additions to nodes defined in sc7280.dtsi */
 
+&dp_hot_plug_det {
+	bias-disable;
+};
+
 &pm7325_gpios {
 	key_vol_up_default: key-vol-up-default {
 		pins = "gpio6";
diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index a2e3aa6ecdd3..1776523e169a 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -3282,7 +3282,6 @@ tlmm: pinctrl@f100000 {
 			dp_hot_plug_det: dp-hot-plug-det {
 				pins = "gpio47";
 				function = "dp_hot";
-				bias-disable;
 			};
 
 			edp_hot_plug_det: edp-hot-plug-det {
-- 
2.35.0.rc2.247.g8bbb082509-goog


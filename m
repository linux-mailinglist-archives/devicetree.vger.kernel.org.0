Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E8F7D4A7A4C
	for <lists+devicetree@lfdr.de>; Wed,  2 Feb 2022 22:24:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347532AbiBBVY0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Feb 2022 16:24:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347535AbiBBVYU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Feb 2022 16:24:20 -0500
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC9E4C06173E
        for <devicetree@vger.kernel.org>; Wed,  2 Feb 2022 13:24:20 -0800 (PST)
Received: by mail-pf1-x42a.google.com with SMTP id v74so432831pfc.1
        for <devicetree@vger.kernel.org>; Wed, 02 Feb 2022 13:24:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5qCBCKfP+j2HtZn2zMmVI6QfVCuXgmfkA60ibxCLXgs=;
        b=f3nZ1EzYLBy7tnJJ+R0jdFG+yS+atHgKHNCLxveKGXKQiMOlgQEaUjZU6xlVij4pb/
         W7q3Hg8Qr6HevsZXJulOBWMr6yF2kxt4BmmPVbKF/B8ax/QmFiBF8NuST5CArY/i0IgB
         +EF4n1qgauGccnEerahlqdTneqwozLQiwcKlM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5qCBCKfP+j2HtZn2zMmVI6QfVCuXgmfkA60ibxCLXgs=;
        b=21LNkSYB4APfNjKNjO1j6VR+/IReGxb82oBr5NZ1gdBliRvZ9mZVlqR0STiMgelzOH
         9sSDfYJwx9Fg7rvWR2Z3uDuH5S5eSi8ew2Dx6Pa1YB7Y91bTHKYSfpZ8gVmpgwdB96HY
         oq5xf7Lok+pAHzKqakXE7gG5f25u6o8cbnFBonYS0OzwdpThlXx4V04V7DNkshBt6ZlJ
         u45pCli1Rcvvz3LWFbzq1DjPMZniQoAKjbM2Ro1SbUIntLiFS5LFlowhzsftfRTEMrtn
         8KcZpcWhJzVF2cFI4a1iy1CKyHleqAa37AKj+ankGAeKS2EDMj1pIHjMmHorsVtxa2dP
         GpMg==
X-Gm-Message-State: AOAM531T3g8/NL4fV17vGukI/X1npI1gm5NK3EhpYwnRiEhHbTErnrzc
        F0ig1csk5N75IbW5z1uR5cAP+w==
X-Google-Smtp-Source: ABdhPJwPT54MjvO3Gz+8X9q/NBFTjhdeFn3zIeltngAbKTcjcpYU137ZDJA3wRFQRbOPxYWXylY52A==
X-Received: by 2002:a05:6a00:130a:: with SMTP id j10mr30426747pfu.32.1643837060244;
        Wed, 02 Feb 2022 13:24:20 -0800 (PST)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:f1c4:10b6:b4ef:16e5])
        by smtp.gmail.com with ESMTPSA id on9sm7627983pjb.16.2022.02.02.13.24.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Feb 2022 13:24:19 -0800 (PST)
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
Subject: [PATCH v3 07/14] arm64: dts: qcom: sc7280: Add edp_out port and HPD lines
Date:   Wed,  2 Feb 2022 13:23:41 -0800
Message-Id: <20220202132301.v3.7.Ic84bb69c45be2fccf50e3bd17b845fe20eec624c@changeid>
X-Mailer: git-send-email 2.35.0.rc2.247.g8bbb082509-goog
In-Reply-To: <20220202212348.1391534-1-dianders@chromium.org>
References: <20220202212348.1391534-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Like dp_out, we should have defined edp_out in sc7280.dtsi so we don't
need to do this in the board files.

Like dp_hot_plug_det, we should define edp_hot_plug_det in
sc7280.dtsi.

We should set the default pinctrl for edp_hot_plug_det in
sc7280.dtsi. NOTE: this is _unlike_ the dp_hot_plug_det. It is
reasonable that in some boards the dedicated DP Hot Plug Detect will
not be hooked up in favor of Type C mechanisms. This is unlike eDP
where the Hot Plug Detect line (which functions as "panel ready" in
eDP) is highly likely to be used by boards.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

Changes in v3:
- ("Add edp_out port and HPD lines") new for v3.

 arch/arm64/boot/dts/qcom/sc7280.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 4d5892411a38..3f9837921c17 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -3010,6 +3010,8 @@ mdss_dsi_phy: phy@ae94400 {
 
 			mdss_edp: edp@aea0000 {
 				compatible = "qcom,sc7280-edp";
+				pinctrl-names = "default";
+				pinctrl-0 = <&edp_hot_plug_det>;
 
 				reg = <0 0xaea0000 0 0x200>,
 				      <0 0xaea0200 0 0x200>,
@@ -3052,12 +3054,18 @@ mdss_edp: edp@aea0000 {
 				ports {
 					#address-cells = <1>;
 					#size-cells = <0>;
+
 					port@0 {
 						reg = <0>;
 						edp_in: endpoint {
 							remote-endpoint = <&dpu_intf5_out>;
 						};
 					};
+
+					port@1 {
+						reg = <1>;
+						edp_out: endpoint { };
+					};
 				};
 
 				edp_opp_table: opp-table {
@@ -3277,6 +3285,11 @@ dp_hot_plug_det: dp-hot-plug-det {
 				bias-disable;
 			};
 
+			edp_hot_plug_det: edp-hot-plug-det {
+				pins = "gpio60";
+				function = "edp_hot";
+			};
+
 			pcie1_clkreq_n: pcie1-clkreq-n {
 				pins = "gpio79";
 				function = "pcie1_clkreqn";
-- 
2.35.0.rc2.247.g8bbb082509-goog


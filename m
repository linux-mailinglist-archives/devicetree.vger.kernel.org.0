Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BFCA44CB2A8
	for <lists+devicetree@lfdr.de>; Wed,  2 Mar 2022 23:58:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229769AbiCBW7D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Mar 2022 17:59:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229615AbiCBW7B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Mar 2022 17:59:01 -0500
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 215591405D1
        for <devicetree@vger.kernel.org>; Wed,  2 Mar 2022 14:58:07 -0800 (PST)
Received: by mail-lj1-x232.google.com with SMTP id t14so4380626ljh.8
        for <devicetree@vger.kernel.org>; Wed, 02 Mar 2022 14:58:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ct+HHsxGsHDLzwfzMkcRAdVtSfqY+/v1/Z+cLy38KUs=;
        b=MUNo6h87OhnJ1q4r3sMVJSGB10uohuKIkFcFKI308aX70AnD2KzSoSMYi32mU60KHU
         Okw2AzfoYIMnFzH69/0LpuQBjr/tjebbs0WevwUKKPj/8uwDgnB4eM422QZNmUem2p/A
         OSzpCwp724FoAUYgpAeZ3KnbMKyujDGDmLpoq1o6UO9X9YYATHZzAVO7lE7Jxsm2pcbL
         GGM2wzC3ffWvfSfsX6NfPhehA8oyTrSC9rs+PcCA+8q+YRz92Nh4KDCzBqMCl9Q8NF17
         NHZB1bklN/ERQZ1E2+lfmtCFA6SV+1rlDubjHKr+HHLR3VKaTCN4qiedGIlEwGNtcYpV
         oaDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ct+HHsxGsHDLzwfzMkcRAdVtSfqY+/v1/Z+cLy38KUs=;
        b=fYPNTvokC/dw5o9kIHNSvo3wKo7tsb9UrYGmC1avHwedgkNZ2nJLW4IJhspLZekqZJ
         bai0Rs2OzLhlkwDHpTELDR/B6dkDcwX+gDgdeBdIP76jNXltKPCWpJvmrRK+MwFLIYiE
         ztsQOrR2W4yBROXMWmeowfkS57/asEqSh79/qnqmqXyY+Ef6h5PCEuowKFgiNeVPkLG+
         QejeA2cKc8ZjWDKHJ2NSGC33wPv6+ELIL87IW/f6fZDuRaerFDKHfxSvsW4jYb7r9umX
         bhU9RcxpfxeUdefWx9k5MCbp7FeNoN60AQWpjRRm8s3oYb1gH+PCSXMVPYDuSMgsEgP+
         4xuQ==
X-Gm-Message-State: AOAM5321OJ0ADTddNtUceStyBHdpJ7Cmzfgyhs86hQRhlEab9lnuAhdJ
        BiCasZFfhiTDuCDiopVPFKF29w==
X-Google-Smtp-Source: ABdhPJzoediskMaar8Th+y7ySLao+HhoVvZdx3f+uLaMrEN0QJ8nhGCC+a/it//BFF7+yvir6wUKsA==
X-Received: by 2002:a05:651c:1718:b0:246:2ab4:6d55 with SMTP id be24-20020a05651c171800b002462ab46d55mr22651063ljb.395.1646261658854;
        Wed, 02 Mar 2022 14:54:18 -0800 (PST)
Received: from eriador.lan ([2001:470:dd84:abc0::8a5])
        by smtp.gmail.com with ESMTPSA id x26-20020a05651c105a00b00246585ccd53sm54236ljm.75.2022.03.02.14.54.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Mar 2022 14:54:18 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Stephen Boyd <swboyd@chromium.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, freedreno@lists.freedesktop.org
Subject: [PATCH v2 5/6] arm64: dts: qcom: sm8250: Drop flags for mdss irqs
Date:   Thu,  3 Mar 2022 01:54:10 +0300
Message-Id: <20220302225411.2456001-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220302225411.2456001-1-dmitry.baryshkov@linaro.org>
References: <20220302225411.2456001-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The number of interrupt cells for the mdss interrupt controller is 1,
meaning there should only be one cell for the interrupt number, not two.
Drop the second cell containing (unused) irq flags.

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Fixes: 7c1dffd471b1 ("arm64: dts: qcom: sm8250.dtsi: add display system nodes")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index fdaf303ba047..956848068871 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -3200,7 +3200,7 @@ mdss_mdp: mdp@ae01000 {
 				power-domains = <&rpmhpd SM8250_MMCX>;
 
 				interrupt-parent = <&mdss>;
-				interrupts = <0 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <0>;
 
 				ports {
 					#address-cells = <1>;
@@ -3252,7 +3252,7 @@ dsi0: dsi@ae94000 {
 				reg-names = "dsi_ctrl";
 
 				interrupt-parent = <&mdss>;
-				interrupts = <4 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <4>;
 
 				clocks = <&dispcc DISP_CC_MDSS_BYTE0_CLK>,
 					 <&dispcc DISP_CC_MDSS_BYTE0_INTF_CLK>,
@@ -3325,7 +3325,7 @@ dsi1: dsi@ae96000 {
 				reg-names = "dsi_ctrl";
 
 				interrupt-parent = <&mdss>;
-				interrupts = <5 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <5>;
 
 				clocks = <&dispcc DISP_CC_MDSS_BYTE1_CLK>,
 					 <&dispcc DISP_CC_MDSS_BYTE1_INTF_CLK>,
-- 
2.34.1


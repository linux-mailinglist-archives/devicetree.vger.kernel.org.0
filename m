Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 46E9934BF12
	for <lists+devicetree@lfdr.de>; Sun, 28 Mar 2021 22:54:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231420AbhC1Uxm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 28 Mar 2021 16:53:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231459AbhC1UxM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 28 Mar 2021 16:53:12 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9EEAC0613B4
        for <devicetree@vger.kernel.org>; Sun, 28 Mar 2021 13:53:08 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id 12so5004361lfq.13
        for <devicetree@vger.kernel.org>; Sun, 28 Mar 2021 13:53:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HmV5IJWPHSxLmzC9gCnVq4UR+8W3WxG5ODhCcEewhgo=;
        b=LLGwDNRwk598jsUh+uqV1Sy2j7DX/asCOAMZB8NIHX4+vSJOWwpXyeW9hSGj5L1DYU
         6qeWzJyJgct1dHuE7WqSOT96/bOsXQUpMm+GrLUUXn8HHSFZlKMKntyP+Wzn2bfVy5Rz
         MoAVf3EDk5kolYLiE5bd3rpuKT3NkTizoVcyEGcGn/Dzi/E/z3X0Feo5N2e7BUN6McBQ
         hkTRKyj8Ksv5AmvxILUljouOdTJdkoDBn1Cq0/N7yTCQ9SkPqByhp/w0ztojuA3j3tmg
         7aPKYPI1rSabi/1bg2Mi8WDjia/4qRoPUjEQMPVCNSe+0ZUD0wNdIfCXS6N5l8mqMxmG
         lDkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HmV5IJWPHSxLmzC9gCnVq4UR+8W3WxG5ODhCcEewhgo=;
        b=plHDjzloUBDr1wtTmY2ZWyb59LcBfPuc71fqbiu5itA7wq4RvC05qdQkvWcPNcOFTZ
         odF7IoFpwP4YTEY086CM5P3nzwzMBJ0RN019un5R3uuyRDUiS9qMRpJubI8YrVnk+M5w
         p+od6CJA2q5ns9ykYum21+hxfNNodOA6oYKX3p7+BtEE7l4zmltuvf0Eajzk/zUJbdr8
         nf4HcJ858kXIDi3tVZwtdAMUN90m/ONoOZAJEsNy1IS4jDZE0jbDEgnObG9er5iN60P7
         nYZ1MO0s8O9Fl/7ZercvFxt01l54rnfSCdagwBwRBbbl07J2kp45vPP/Ije133Hl49QW
         Vbhw==
X-Gm-Message-State: AOAM533R/47JprvJfa8ZoJDoXFw7Eu2BJYI0TkKy4oMTSkcEIKDL7Cim
        0wvKMXUieeIJSzA2txC51FGOsg==
X-Google-Smtp-Source: ABdhPJya+wF021G/EcFjanPwnR23vgCIJUsZp+Jd/kogI6QB962ErGPCwOl4xqHW+zEY+gwxqMftLw==
X-Received: by 2002:ac2:4c1c:: with SMTP id t28mr14068975lfq.45.1616964787246;
        Sun, 28 Mar 2021 13:53:07 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id j19sm1589788lfb.15.2021.03.28.13.53.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Mar 2021 13:53:06 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Manu Gautam <mgautam@codeaurora.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Jonathan Marek <jonathan@marek.ca>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v5 6/7] arm64: dts: qcom: sm8250: switch usb1 qmp phy to USB3+DP mode
Date:   Sun, 28 Mar 2021 23:52:56 +0300
Message-Id: <20210328205257.3348866-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210328205257.3348866-1-dmitry.baryshkov@linaro.org>
References: <20210328205257.3348866-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

USB1 QMP PHY is not just a USB3 PHY, but USB3+DP PHY. Change device tree
nodes accordingly.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 23 ++++++++++++++++++-----
 1 file changed, 18 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 947e1accae3a..0f79e6885004 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -2097,12 +2097,11 @@ usb_2_hsphy: phy@88e4000 {
 		};
 
 		usb_1_qmpphy: phy@88e9000 {
-			compatible = "qcom,sm8250-qmp-usb3-phy";
+			compatible = "qcom,sm8250-qmp-usb3-dp-phy";
 			reg = <0 0x088e9000 0 0x200>,
-			      <0 0x088e8000 0 0x20>;
-			reg-names = "reg-base", "dp_com";
+			      <0 0x088e8000 0 0x40>,
+			      <0 0x088ea000 0 0x200>;
 			status = "disabled";
-			#clock-cells = <1>;
 			#address-cells = <2>;
 			#size-cells = <2>;
 			ranges;
@@ -2116,7 +2115,7 @@ usb_1_qmpphy: phy@88e9000 {
 				 <&gcc GCC_USB3_PHY_PRIM_BCR>;
 			reset-names = "phy", "common";
 
-			usb_1_ssphy: lanes@88e9200 {
+			usb_1_ssphy: usb3-phy@88e9200 {
 				reg = <0 0x088e9200 0 0x200>,
 				      <0 0x088e9400 0 0x200>,
 				      <0 0x088e9c00 0 0x400>,
@@ -2128,6 +2127,20 @@ usb_1_ssphy: lanes@88e9200 {
 				clock-names = "pipe0";
 				clock-output-names = "usb3_phy_pipe_clk_src";
 			};
+
+			dp_phy: dp-phy@88ea200 {
+				reg = <0 0x088ea200 0 0x200>,
+				      <0 0x088ea400 0 0x200>,
+				      <0 0x088eac00 0 0x400>,
+				      <0 0x088ea600 0 0x200>,
+				      <0 0x088ea800 0 0x200>,
+				      <0 0x088eaa00 0 0x100>;
+				#phy-cells = <0>;
+				#clock-cells = <1>;
+				clocks = <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
+				clock-names = "pipe0";
+				clock-output-names = "usb3_phy_pipe_clk_src";
+			};
 		};
 
 		usb_2_qmpphy: phy@88eb000 {
-- 
2.30.2


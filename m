Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3440C34BF15
	for <lists+devicetree@lfdr.de>; Sun, 28 Mar 2021 22:54:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231512AbhC1Uxm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 28 Mar 2021 16:53:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231460AbhC1UxM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 28 Mar 2021 16:53:12 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79830C0613B6
        for <devicetree@vger.kernel.org>; Sun, 28 Mar 2021 13:53:09 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id f26so13661910ljp.8
        for <devicetree@vger.kernel.org>; Sun, 28 Mar 2021 13:53:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Vt2EBjJBXCElMumS8zwBKc0QOehEP6EtoAAqvcQaqEs=;
        b=qGqLnEWup8BbxvY1vYr3gQCqVfVduGZLl3nyu+LIPx3CY5EQtUHH+rs+gHjFTAtZiN
         oQqE3XC78l0FX5ekQWR19uDqbtluk06GSqDY1+cRKR8HD+M+Pn9x/va8LodrDYOjnFE8
         JCKXIhFYr26/vzx8K2RYVgZ62qnPv5k6y8/XPgXZ0hEDi51YRNTLK65oLIjTM9ltjBP4
         7Yp6ww6y5JWDzjXzHoKXf3ILv2U6Fsl7+eu8U07kw46ufJW1TUbHRQg5W0k/JHxuROQY
         n4L/TM636Er0yJPvrbiGzJOyXj08hSrQLTHYhrzrK75m5BZkXd9tjQ46DUsh5QlFCh8+
         RT6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Vt2EBjJBXCElMumS8zwBKc0QOehEP6EtoAAqvcQaqEs=;
        b=QV3a+TanVrP4YqaB9qkGjp37oWdNYV05csjyokYj+1G9l/PI+3lnWuwnIhf/6Zb8il
         +cGLHwEHNVOtnV9VndQXvA0ZimRym4eNJ7h0/mdpb2uTEcw71Z/2A3lPRDu1X0XDL1if
         fD9PzA5wKL8d0EfuJYrZ4Z3NL84pCEIcFETKrpGnt0JujwL8za/7mej6Ozgs96lNsa0T
         XkRuT4VYy7YkGhG+Q2RJPU4aFNvAMR39hByu2HNvI7F3oRWeGp/aHcK1IJvl1+lO8Ugi
         jjXsij6C5pKjj/ysg1EU64u88kktl+jr6ky9ldvuBjEEbZLBNvvt0PyHI9JzKF9wGy6M
         p0BA==
X-Gm-Message-State: AOAM531G4Aaj6J+rStoZDV/njc+kzG5gyjDGTSlB4ecjgoGv96NZpVL6
        vDecSTTl2YnbsARuVT0yTAm2Dw==
X-Google-Smtp-Source: ABdhPJzfOV14fcWpJ2QcFa4nkxYyMQCUo/hjWg+YC245Utp6YcM9i/JPj2j7WwHNl0AbDSdUvZ2fwg==
X-Received: by 2002:a2e:8009:: with SMTP id j9mr16302365ljg.364.1616964788045;
        Sun, 28 Mar 2021 13:53:08 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id j19sm1589788lfb.15.2021.03.28.13.53.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Mar 2021 13:53:07 -0700 (PDT)
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
Subject: [PATCH v5 7/7] arm64: dts: qcom: use dp_phy to provide clocks to dispcc
Date:   Sun, 28 Mar 2021 23:52:57 +0300
Message-Id: <20210328205257.3348866-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210328205257.3348866-1-dmitry.baryshkov@linaro.org>
References: <20210328205257.3348866-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Plug dp_phy-provided clocks to display clock controller.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 0f79e6885004..a2478bd3590a 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -2600,8 +2600,8 @@ dispcc: clock-controller@af00000 {
 				 <&dsi0_phy 1>,
 				 <&dsi1_phy 0>,
 				 <&dsi1_phy 1>,
-				 <0>,
-				 <0>,
+				 <&dp_phy 0>,
+				 <&dp_phy 1>,
 				 <0>,
 				 <0>,
 				 <0>,
@@ -2614,8 +2614,8 @@ dispcc: clock-controller@af00000 {
 				      "dsi0_phy_pll_out_dsiclk",
 				      "dsi1_phy_pll_out_byteclk",
 				      "dsi1_phy_pll_out_dsiclk",
-				      "dp_link_clk_divsel_ten",
-				      "dp_vco_divided_clk_src_mux",
+				      "dp_phy_pll_link_clk",
+				      "dp_phy_pll_vco_div_clk",
 				      "dptx1_phy_pll_link_clk",
 				      "dptx1_phy_pll_vco_div_clk",
 				      "dptx2_phy_pll_link_clk",
-- 
2.30.2


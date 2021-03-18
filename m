Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 16BF034077D
	for <lists+devicetree@lfdr.de>; Thu, 18 Mar 2021 15:12:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231422AbhCROMT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Mar 2021 10:12:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231316AbhCROLx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Mar 2021 10:11:53 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4325FC061760
        for <devicetree@vger.kernel.org>; Thu, 18 Mar 2021 07:11:53 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id u10so7665382lju.7
        for <devicetree@vger.kernel.org>; Thu, 18 Mar 2021 07:11:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Vt2EBjJBXCElMumS8zwBKc0QOehEP6EtoAAqvcQaqEs=;
        b=YQ2OVI/437xQ7YL10S5QsdLJGLyeE8pwRZkYb5jLfFaPgIXhfhGjpT3B3/0wNGORFn
         l9CTVOkyTVmV1OjaTrcoSgpdmaA0KbF7Qv4oNqxr7+zMEdYXOnr0u6SdnJASUzZW+eYQ
         UNYpOc7BZD7j9MRvmi/MvMyryZwDDR+1HS/V9zy8q7z0TFaDWyk++H3UO9IFIYPEDbZ/
         vYk9oZJe2AONCuCVd5bfwqElwR33k9tyNlB43ernUd4Ma4w9q7B9cZ6gXhp8WDdL4oG3
         CD+NCyR4GFrCdXy4YTYf7PBp/blcl9MOvBLC+tS2mRdIe7aG5C1TZCK+XffHP88lDF0H
         80Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Vt2EBjJBXCElMumS8zwBKc0QOehEP6EtoAAqvcQaqEs=;
        b=FCBg4MABU/I4cHqymrCLseebIeYxpDsD6KSvF17++noMEOS4bBvpi6fzQ5fkucIWGj
         Ja5/hotUbZH0QzO6KAEn0hgK/xopw0QY4L5Jrg5oCKUCV/OY+BTTPLqpRbAzZrIgzXOG
         KimbqdmtXY3UB5F5TGR8V3P+QyP61CoyGvOLRLkEH3/IXJFeYkaPNjlKiQjJ7QkdRPDs
         KZfSoPUt1c7Y8YSL5AGfS/9bJDjxJjqA9sybN4q+CknK2SewGJhHOQyYNR+LRNaNjvxx
         Sq596vQCwIA/YKcVu5APlJjzsO7yZjXlZy0b5ty3D4uEaLHu4u0n9JhkS+dX+LJKjPEu
         JZGg==
X-Gm-Message-State: AOAM532FHCR2yHHgzOnG0T1P1qIE+NyZ4vl2kdgBMXCSEchwwecUaDUQ
        mq6u1u82BBKpUBO0ugmrME6cwA==
X-Google-Smtp-Source: ABdhPJxojxvq+dtSsOdkpC8Q31XAN0KpATHHBW6jE2fuSJ6SahyCKh2VTLcLCBrP+zua8vB5vfz04Q==
X-Received: by 2002:a2e:b806:: with SMTP id u6mr5318194ljo.99.1616076711746;
        Thu, 18 Mar 2021 07:11:51 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id f20sm254713ljn.123.2021.03.18.07.11.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Mar 2021 07:11:51 -0700 (PDT)
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
Subject: [PATCH v2 6/6] arm64: dts: qcom: use dp_phy to provide clocks to dispcc
Date:   Thu, 18 Mar 2021 17:11:44 +0300
Message-Id: <20210318141144.2147610-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210318141144.2147610-1-dmitry.baryshkov@linaro.org>
References: <20210318141144.2147610-1-dmitry.baryshkov@linaro.org>
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


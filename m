Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8CBCB25B3F0
	for <lists+devicetree@lfdr.de>; Wed,  2 Sep 2020 20:41:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728279AbgIBSlJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Sep 2020 14:41:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728109AbgIBSkE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Sep 2020 14:40:04 -0400
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com [IPv6:2607:f8b0:4864:20::742])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F213C061258
        for <devicetree@vger.kernel.org>; Wed,  2 Sep 2020 11:40:03 -0700 (PDT)
Received: by mail-qk1-x742.google.com with SMTP id u3so646795qkd.9
        for <devicetree@vger.kernel.org>; Wed, 02 Sep 2020 11:40:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=marek-ca.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Eg1t9In0g5b7CTs/tQIaFcuTzs3vfJs/vuWLC07Pzgc=;
        b=hhC3vT59TxPLb3rFe0HnRM66J/M9V9UidUla1thtjU123Yl/POs3Zqp/Qm7U9R3D2y
         W2JpYl/HxalGjIMxHgjU+/fM2eKI9HdWFOE7s/ri2XQpk5l0JyKB8IzyHuZEyocV8NB9
         x+8zqjjqDY3nwcsighUhDTZQx2RK9C/xu2J73qrVp4jHW5pgpg/aiv3+4tdPs7gwDL3y
         TLaJEvKHyS8x5ZFarJ7CRh4y2zaq+sUOk8ocqs5hLiPOTd0pdCCCKKUS629fyWvSc1Hy
         xc6v9zyiiOs5qrb9quNu2D5+mSZnPt0e5i7gUIAoD4BGoQ88PJE1ECs3UzQmcNuBW65Q
         4BdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Eg1t9In0g5b7CTs/tQIaFcuTzs3vfJs/vuWLC07Pzgc=;
        b=ghtlDPfk2F1zekE2EaDYrRfHl/zdg0ZuawDoiEM7Qlnf2V+n+K4RCmpEADARFch6l1
         x9+BoaCeSh2u/N9GXnwmI4XpN1wuGQC5ydRrdICfkWZNG5wzJ7laI8MaJLolcZErRO+s
         ZF29e8KIY4ThEEW9YgyApPvjySxcuq7OdmxHbSZxzkYHzN94iPAwNtdq32/DttiFf7U9
         Ns4yi7BStVC/pfYbWH+ncoRL9+uYr990OBywSktZ04B51CUwa+C4E6gLPNEF03XJ+UbI
         WkXbDZ9X6zvTQ7cWqTow7MllCR3A87FBxsvk9PbWr6PN8XHWX9ELRzyTy5wiID3q49gH
         SvSg==
X-Gm-Message-State: AOAM533PPPzBKsFu4ZUs6fjGCLt9B6IWRoE9IV9u5Fxj1GDtyQBY1p/y
        n3WCFHlAHxjU/UTRZz5fxza4AA==
X-Google-Smtp-Source: ABdhPJxPRGDyQv3ibszWeA3WlU9WRxYEUMu3g+2vz1499sb+s4ys67PEdYMn5f9sHQWJjOZP6neZsA==
X-Received: by 2002:a37:b245:: with SMTP id b66mr7861577qkf.179.1599072002249;
        Wed, 02 Sep 2020 11:40:02 -0700 (PDT)
Received: from localhost.localdomain ([147.253.86.153])
        by smtp.gmail.com with ESMTPSA id s47sm208004qtb.13.2020.09.02.11.40.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Sep 2020 11:40:01 -0700 (PDT)
From:   Jonathan Marek <jonathan@marek.ca>
To:     linux-arm-msm@vger.kernel.org
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
        DEVICE TREE BINDINGS), linux-kernel@vger.kernel.org (open list)
Subject: [PATCH 2/7] arm64: dts: qcom: sdm845-dispcc: same name for dp_phy clocks as sc7180
Date:   Wed,  2 Sep 2020 14:38:42 -0400
Message-Id: <20200902183852.14510-3-jonathan@marek.ca>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200902183852.14510-1-jonathan@marek.ca>
References: <20200902183852.14510-1-jonathan@marek.ca>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This makes it easier to combine dt bindings for sdm845/sc7180 dispcc.

Note: nothing upstream provides these clocks and the sdm845 dispcc driver
hasn't switched to using .fw_name for these clocks (these properties are
ignored), so changing this shouldn't be a problem.

Signed-off-by: Jonathan Marek <jonathan@marek.ca>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 2884577dcb77..8184d6204b33 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -4139,8 +4139,8 @@ dispcc: clock-controller@af00000 {
 				      "dsi0_phy_pll_out_dsiclk",
 				      "dsi1_phy_pll_out_byteclk",
 				      "dsi1_phy_pll_out_dsiclk",
-				      "dp_link_clk_divsel_ten",
-				      "dp_vco_divided_clk_src_mux";
+				      "dp_phy_pll_link_clk",
+				      "dp_phy_pll_vco_div_clk";
 			#clock-cells = <1>;
 			#reset-cells = <1>;
 			#power-domain-cells = <1>;
-- 
2.26.1


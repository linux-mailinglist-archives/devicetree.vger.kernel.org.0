Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CF6BA3AE42B
	for <lists+devicetree@lfdr.de>; Mon, 21 Jun 2021 09:25:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230393AbhFUH1w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Jun 2021 03:27:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230445AbhFUH1t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Jun 2021 03:27:49 -0400
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68F60C061767
        for <devicetree@vger.kernel.org>; Mon, 21 Jun 2021 00:25:34 -0700 (PDT)
Received: by mail-pf1-x431.google.com with SMTP id w71so2922683pfd.4
        for <devicetree@vger.kernel.org>; Mon, 21 Jun 2021 00:25:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CDm4Fe12mdxq5DdIPspRuN5iFshZ9EbPE5vdu5Oxm04=;
        b=YZOmFhde+7WJEAJJcHhiE2RoCfiZ5+Xre9HWv6er8mZGYPFwx86A5pI5HvqQ2aIYJa
         mGQl507iONMiu2Njyt//5ToHzpgInx4NxnruZObcvkMMVEwmlvPwD1V4WVl+A4Mn9tpU
         Es22Hpp1Cbf2desjyFjngKNPKVp4vgR3lYPsE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CDm4Fe12mdxq5DdIPspRuN5iFshZ9EbPE5vdu5Oxm04=;
        b=IJV0X55rLkcNLscNt/Z5zI6GYxTQ0RAv1Tlf0PuhWd7az9rFd9OX8e5FTSR+4yjTRa
         K6daGvMzDhxuLNLxcs+BysDcf0n8+bK7UaO0FN0wuosWm9lhyme6P+ZXY1STqJ3xcZUN
         HfEA2iIy29Q3y0IU+XF5wmSqhlBePXDGzO+12Mlbk8xToOrm7L74P3NTZwuGYga53fgk
         1ZobhktAZldSg84jbA9avXhby4MFGmgQuQ47tXAu7c1jJJWEtHkZrYHu65BeU6n4fW2h
         qj3an+pCYlFRdcLeCBfL4h0/hieoS31oepBzcgMaZdQDrHhCXGkRolgeWq7z3A2Zf65/
         J/jg==
X-Gm-Message-State: AOAM533rH2KhZAocXuR1VonM/2aTnMfDtunGVT3RllxIHJq3q2zErpzB
        Vs6x6274+qkk6fxMQv9upzp9NY3YmoB0Aw==
X-Google-Smtp-Source: ABdhPJxxKWIiejU1Buqyxc/58klL8XS905Uz5TdWMrAYfu8+TVmMNfyDjpogOLqWfZadZDexODr4cQ==
X-Received: by 2002:a65:63d2:: with SMTP id n18mr22683982pgv.447.1624260333918;
        Mon, 21 Jun 2021 00:25:33 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a884:139:e97f:a55d:7f66])
        by smtp.gmail.com with ESMTPSA id 21sm13951294pfh.103.2021.06.21.00.25.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Jun 2021 00:25:33 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Peng Fan <peng.fan@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Tomasz Figa <t.figa@samsung.com>,
        Fancy Fang <chen.fang@nxp.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
        linux-amarula@amarulasolutions.com,
        Anthony Brandon <anthony@amarulasolutions.com>,
        Francis Laniel <francis.laniel@amarulasolutions.com>,
        Matteo Lisi <matteo.lisi@engicam.com>,
        Milco Pratesi <milco.pratesi@engicam.com>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: [RFC PATCH 8/9] arm64: dts: imx8mm: Add MIPI DSI pipeline
Date:   Mon, 21 Jun 2021 12:54:23 +0530
Message-Id: <20210621072424.111733-9-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210621072424.111733-1-jagan@amarulasolutions.com>
References: <20210621072424.111733-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add MIPI DSI pipeline for i.MX8MM.

Video pipeline start from eLCDIF to MIPI DSI and respective
Panel or Bridge on the backend side.

Add support for it.

Cc: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 59 +++++++++++++++++++++++
 1 file changed, 59 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 5f68182ed3a6..bc09fce0f6a9 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -1047,6 +1047,65 @@ lcdif: lcdif@32e00000 {
 				interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
 				power-domains = <&dispmix_blk_ctl IMX8MM_BLK_CTL_PD_DISPMIX_LCDIF>;
 				status = "disabled";
+
+				port {
+					lcdif_out_dsi: endpoint {
+						remote-endpoint = <&dsi_in_lcdif>;
+					};
+				};
+			};
+
+			dsi: dsi@32e10000 {
+				compatible = "fsl,imx8mm-sec-dsim";
+				reg = <0x32e10000 0xa0>;
+				clocks = <&clk IMX8MM_CLK_DSI_CORE>,
+					 <&clk IMX8MM_CLK_DSI_PHY_REF>;
+				clock-names = "bus", "phy_ref";
+				assigned-clocks = <&clk IMX8MM_CLK_DSI_CORE>,
+						  <&clk IMX8MM_VIDEO_PLL1_OUT>,
+						  <&clk IMX8MM_CLK_DSI_PHY_REF>;
+				assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_266M>,
+							 <&clk IMX8MM_VIDEO_PLL1_BYPASS>,
+							 <&clk IMX8MM_VIDEO_PLL1_OUT>;
+				assigned-clock-rates = <266000000>, <594000000>, <27000000>;
+				interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
+				phys = <&dphy>;
+				phy-names = "dphy";
+				power-domains = <&dispmix_blk_ctl IMX8MM_BLK_CTL_PD_DISPMIX_MIPI_DSI>;
+				samsung,burst-clock-frequency = <891000000>;
+				samsung,esc-clock-frequency = <54000000>;
+				samsung,pll-clock-frequency = <27000000>;
+				status = "disabled";
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+						#address-cells = <1>;
+						#size-cells = <0>;
+
+						dsi_in_lcdif: endpoint@0 {
+							reg = <0>;
+							remote-endpoint = <&lcdif_out_dsi>;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+					};
+				};
+			};
+
+			dphy: dphy@32e100a4 {
+				compatible = "fsl,imx8mm-sec-dsim-dphy";
+				reg = <0x32e100a4 0xbc>;
+				clocks = <&clk IMX8MM_CLK_DSI_PHY_REF>;
+				clock-names = "phy_ref";
+				#phy-cells = <0>;
+				power-domains = <&dispmix_blk_ctl IMX8MM_BLK_CTL_PD_DISPMIX_MIPI_DPHY>;
+				status = "disabled";
 			};
 
 			dispmix_blk_ctl: blk-ctl@32e28000 {
-- 
2.25.1


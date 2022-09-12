Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B62C5B6264
	for <lists+devicetree@lfdr.de>; Mon, 12 Sep 2022 22:56:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229904AbiILU4R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Sep 2022 16:56:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229833AbiILU4Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Sep 2022 16:56:16 -0400
Received: from mail-oa1-x33.google.com (mail-oa1-x33.google.com [IPv6:2001:4860:4864:20::33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89008476D4
        for <devicetree@vger.kernel.org>; Mon, 12 Sep 2022 13:56:15 -0700 (PDT)
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-12803ac8113so26670843fac.8
        for <devicetree@vger.kernel.org>; Mon, 12 Sep 2022 13:56:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=sWRT5BEhVQS6Pr9dXQ62RZ1oRnXZDfj0TarvCCPaFKc=;
        b=IXwK7g0RnVyQhlqnrVCo3m6vgNEBem2lSifynEySgrBlUcupZce/MMKUfjBFf8WeNI
         5q0ByRDnTpRx7SOUf3fXg6iWSRvUbuVgPvq/rHygjK77cESTDhJjgRe0IfXbKHzJQK0K
         J1Wgb626AgpzCZyK/suhnpBT7XFblFU0ydCq4wdtFyQ+cv/YtJBDygofseSrTlcgzb/a
         QrmHAD4yLpp/WZjebHqq8e2O1hz+XJMmyo2c0WK4WH6uy3cqa6y+GPB1mRhZfpRc2q7m
         0r1jN2AgC8aX5/TxZTB37Okh8iS/lYVK4zxzir3gTYcw6tQg4C+xJCd7lMO5QKTAYcr3
         oWpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=sWRT5BEhVQS6Pr9dXQ62RZ1oRnXZDfj0TarvCCPaFKc=;
        b=NaoJL5Bx4AFWov/SnmP3OKxNtzYmlqyzCxDaVyrSsbiZmNANARAio5HJxW/JpZZFq/
         +IOA9IaUu/0B2VXoyPMOPL+bDudPKx2gCTLhML2on03dD2zlVN19wkfsyIfnukYCvx/6
         yX1wj+X75XnzkqsylUB8/xXVeHwa2PTgh0f3UztasbS6SGxKlKphtcbNReHE5vjcBA4m
         COmvlJlaVo3rWt++KwKWgjSJFOZbP1t+0yS+06S8//53bNDz0aSkY8CWsrHxDSFJve7h
         BCZqQxFNEufpR6WUvg5IIkNLJUzXhUMG1GWv9cRgjRIMTWWI1iLGWWPzBtpOtZwyqqlJ
         PtUg==
X-Gm-Message-State: ACgBeo3oSukTYAY7dr50mqiZO/XXM21199aJDteysGQEstgcAXc/s+DR
        9Fp6Qm7VlCP1xfaBfIPmTLX7KWKod5U=
X-Google-Smtp-Source: AA6agR6QglATaiogmr06xloOOHJBBsUEPoFtCl03thx450g9eObXowaZLJY6v1t9Xa0CHOWWcykmPg==
X-Received: by 2002:a05:6808:f8f:b0:344:c3d4:775e with SMTP id o15-20020a0568080f8f00b00344c3d4775emr97086oiw.266.1663016174713;
        Mon, 12 Sep 2022 13:56:14 -0700 (PDT)
Received: from wintermute.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id i21-20020a9d68d5000000b00639749ef262sm3385355oto.9.2022.09.12.13.56.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Sep 2022 13:56:14 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-rockchip@lists.infradead.org
Cc:     devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
        cl@rock-chips.com, s.hauer@pengutronix.de,
        frattaroli.nicolas@gmail.com, michael.riesch@wolfvision.net,
        pgwipeout@gmail.com, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        vkoul@kernel.org, kishon@ti.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 3/3] arm64: dts: rockchip: Add DSI and DSI-DPHY nodes to rk356x
Date:   Mon, 12 Sep 2022 15:56:07 -0500
Message-Id: <20220912205607.5969-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220912205607.5969-1-macroalpha82@gmail.com>
References: <20220912205607.5969-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

This adds the DSI controller nodes and DSI-DPHY controller nodes to the
rk356x device tree.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 72 ++++++++++++++++++++++++
 1 file changed, 72 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 319981c3e9f7..d150568fde82 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -699,6 +699,54 @@ vop_mmu: iommu@fe043e00 {
 		status = "disabled";
 	};
 
+	dsi0: dsi@fe060000 {
+		compatible = "rockchip,rk3568-mipi-dsi", "snps,dw-mipi-dsi";
+		reg = <0x00 0xfe060000 0x00 0x10000>;
+		interrupts = <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>;
+		clock-names = "pclk", "hclk";
+		clocks = <&cru PCLK_DSITX_0>, <&cru HCLK_VO>;
+		phy-names = "dphy";
+		phys = <&mipi_dphy0>;
+		power-domains = <&power RK3568_PD_VO>;
+		reset-names = "apb";
+		resets = <&cru SRST_P_DSITX_0>;
+		rockchip,grf = <&grf>;
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+			};
+		};
+	};
+
+	dsi1: dsi@fe070000 {
+		compatible = "rockchip,rk3568-mipi-dsi", "snps,dw-mipi-dsi";
+		reg = <0x0 0xfe070000 0x0 0x10000>;
+		interrupts = <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
+		clock-names = "pclk", "hclk";
+		clocks = <&cru PCLK_DSITX_1>, <&cru HCLK_VO>;
+		phy-names = "dphy";
+		phys = <&mipi_dphy1>;
+		power-domains = <&power RK3568_PD_VO>;
+		reset-names = "apb";
+		resets = <&cru SRST_P_DSITX_1>;
+		rockchip,grf = <&grf>;
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+			};
+		};
+	};
+
 	hdmi: hdmi@fe0a0000 {
 		compatible = "rockchip,rk3568-dw-hdmi";
 		reg = <0x0 0xfe0a0000 0x0 0x20000>;
@@ -1594,6 +1642,30 @@ combphy2: phy@fe840000 {
 		status = "disabled";
 	};
 
+	mipi_dphy0: mipi-dphy@fe850000 {
+		compatible = "rockchip,rk3568-dsi-dphy";
+		reg = <0x0 0xfe850000 0x0 0x10000>;
+		clock-names = "ref", "pclk";
+		clocks = <&pmucru CLK_MIPIDSIPHY0_REF>, <&cru PCLK_MIPIDSIPHY0>;
+		#phy-cells = <0>;
+		power-domains = <&power RK3568_PD_VO>;
+		reset-names = "apb";
+		resets = <&cru SRST_P_MIPIDSIPHY0>;
+		status = "disabled";
+	};
+
+	mipi_dphy1: mipi-dphy@fe860000 {
+		compatible = "rockchip,rk3568-dsi-dphy";
+		reg = <0x0 0xfe860000 0x0 0x10000>;
+		clock-names = "ref", "pclk";
+		clocks = <&pmucru CLK_MIPIDSIPHY1_REF>, <&cru PCLK_MIPIDSIPHY1>;
+		#phy-cells = <0>;
+		power-domains = <&power RK3568_PD_VO>;
+		reset-names = "apb";
+		resets = <&cru SRST_P_MIPIDSIPHY1>;
+		status = "disabled";
+	};
+
 	usb2phy0: usb2phy@fe8a0000 {
 		compatible = "rockchip,rk3568-usb2phy";
 		reg = <0x0 0xfe8a0000 0x0 0x10000>;
-- 
2.25.1


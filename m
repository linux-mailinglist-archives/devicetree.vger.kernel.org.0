Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F2F9F5AF311
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 19:49:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229588AbiIFRs6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 13:48:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229791AbiIFRso (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 13:48:44 -0400
Received: from mail-oa1-x2b.google.com (mail-oa1-x2b.google.com [IPv6:2001:4860:4864:20::2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20ACD86040
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 10:48:35 -0700 (PDT)
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-127d10b4f19so4254350fac.9
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 10:48:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=sWRT5BEhVQS6Pr9dXQ62RZ1oRnXZDfj0TarvCCPaFKc=;
        b=bWRIf7+vrCgw7Hi6rPLpo976LR+CnntWyAQ933h2ln/uxNTYxyDX9wQI1ba1Hu4vRC
         01aflH0cSU1gbCItvjxMIp231+l8//1Itmew0zbTVulu7ibsxVGdyJPan03HhRqTtRa9
         RjZl+gPqGgl5IUgvv4tUw7s9btr8heTMuJabPKosT0EPs6QGpgq7TdXKXeGzswMvv+lL
         RAf2o3B8062JS4tmREybuT24yBb7hOKGiZZFfuuirENqsyUdsQqVA2has3YTlK7AyD6H
         ZefnhdccvYKnONb2W47HUkOGfWpnXooxSzJwHADw4F7iMoYH7wLSYcHUldEI/E8b8Lok
         qSZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=sWRT5BEhVQS6Pr9dXQ62RZ1oRnXZDfj0TarvCCPaFKc=;
        b=eaO13WJ8tPYPdXuGD/cVaI6y7KqcTLFPp49CLNu9a8OtIKjf52IYOG/2IWlNKFYLy4
         LGOafXxdHMH8CHKJ4Ru41qMzqmf6q9cWG6Lp3vT1Mx/WM1Pb0ddeRi0tYTNSSAsliJUz
         V88cMIwRy0pkiOpLXgQYugQguC4ucnaMmEWwSWxM3m5h+3C8ladrQycIF6fRUYVXzfWu
         qFPO3vTxumq9TRV6a4lLjUtn0QoCwAqNwI/IndQ4m+mN8WCxTcUKOsWtqRiB82tWqvis
         KKoNYCgA7XWnVsbTb825vD7Q3FuSEs6ZqschyCC1xw9qB45X61pcxycC81bbgv3ER1Fl
         p4ow==
X-Gm-Message-State: ACgBeo1ZHk0HWoprbCfmdG9KvcR6qW36D5kM0FB7p0/GTE3UkzplCBZK
        mQLjV455RAZbgXxaeizW9n8=
X-Google-Smtp-Source: AA6agR54mQEhVuh4IwsAy1uuYpGPrkNC/wN76hmiGBP+wIhQiytZlMxIv3W0PDUpIqJw2LEFJ/vhzg==
X-Received: by 2002:aca:6546:0:b0:343:4701:7e13 with SMTP id j6-20020aca6546000000b0034347017e13mr9978759oiw.12.1662486513930;
        Tue, 06 Sep 2022 10:48:33 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id o186-20020aca41c3000000b00344afa2b08bsm5568065oia.26.2022.09.06.10.48.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 10:48:33 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-rockchip@lists.infradead.org
Cc:     linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, cl@rock-chips.com,
        s.hauer@pengutronix.de, pgwipeout@gmail.com, vkoul@kernel.org,
        kishon@ti.com, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@linux.ie,
        heiko@sntech.de, hjc@rock-chips.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v2 5/5] arm64: dts: rockchip: Add DSI and DSI-DPHY nodes to rk356x
Date:   Tue,  6 Sep 2022 12:48:23 -0500
Message-Id: <20220906174823.28561-6-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220906174823.28561-1-macroalpha82@gmail.com>
References: <20220906174823.28561-1-macroalpha82@gmail.com>
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


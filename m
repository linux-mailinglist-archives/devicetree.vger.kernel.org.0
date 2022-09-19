Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E2C95BD265
	for <lists+devicetree@lfdr.de>; Mon, 19 Sep 2022 18:46:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229996AbiISQqY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 12:46:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229910AbiISQqX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 12:46:23 -0400
Received: from mail-oa1-x30.google.com (mail-oa1-x30.google.com [IPv6:2001:4860:4864:20::30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8857240BF
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 09:46:22 -0700 (PDT)
Received: by mail-oa1-x30.google.com with SMTP id 586e51a60fabf-1278a61bd57so221747fac.7
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 09:46:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=qHIkUaZy0OcGU4/r6w0WFLW2I8lzySHmL+CuqXSu8eg=;
        b=mVVgc+B8gn73DcfPQOtZeKxFoJ1xytk7lSsQLDnTUY8n48RILR0WSQHmsphE7C0LZI
         IQ6d219RAWPC9qGuHkztMM+lvK8SZC5hbj7gV1t/02INnG14tjwwNHYe9tkO0R0K0WPX
         DrluoEEDAc5FgeeeSNG8O53/0Xr0Se3tVZbdUt0VYGm+9A/8i9K0w7xBXISNRrWcc7lO
         cXK6VqZZyeOJgMbX6ReyY83aITIquHRShMFYpvPg3tfNId8iDKx/e/k1fjy1XW+9o5y/
         Ya9Lt3Rgehh89UZX9PgQ/e6NZLKLlk8WXIyrgcwiCOnH1bhhKRqSp/yIAP13puTwc6jn
         hy+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=qHIkUaZy0OcGU4/r6w0WFLW2I8lzySHmL+CuqXSu8eg=;
        b=MSlQMFesIM4tq36bTHOJ6pgGf+xYnc0C4zwVy/gqUZgmGrbgvUU658XS3UgtWYIuNM
         UrXlXb+GDTjkqsVdLizTbuDwZe4E4Ud/r2QY4QKrcbh1amPOo7DVwD96Y0Lq4E/Wz+Ml
         or0t1EpatR7pgl18po2Vcci+9Pzn2OWdLbTD0OER+FvEMfhalDMoMwGqCQJ0ctxCDvDk
         urEWWaLVFsGn40h6u+7KVxZ9FQbxqoJThc4CKH/0WauAQMbkeTPdFfRNFeErrMi+M3Hw
         iOLDlucDzVVCc8PsYElYMdyt4frcbunjYB0vDaPrXVjuAI2nYrDEZLpc2nODBuMjB8jb
         EjoQ==
X-Gm-Message-State: ACgBeo0zYsLnow/qnpt3fAI/5rB8pn2ic0WYXniKQAM7NW/dmD8CiOhV
        dqwkIvyldP2EHGKRVRwu64wb/DRftNc=
X-Google-Smtp-Source: AA6agR5yYnijRDqba6+kcKiRLmjy8k31qGq0w5ul8arP6RcOOsugpi4vyqC2evrF5D17I7XtkgU9Sw==
X-Received: by 2002:a05:6870:5b86:b0:11c:67ba:71dc with SMTP id em6-20020a0568705b8600b0011c67ba71dcmr16315002oab.289.1663605981997;
        Mon, 19 Sep 2022 09:46:21 -0700 (PDT)
Received: from wintermute.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id t184-20020a4a54c1000000b0044b0465bd07sm12501610ooa.20.2022.09.19.09.46.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Sep 2022 09:46:21 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-rockchip@lists.infradead.org
Cc:     devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
        jbx6244@gmail.com, cl@rock-chips.com, frank-w@public-files.de,
        s.hauer@pengutronix.de, michael.riesch@wolfvision.net,
        pgwipeout@gmail.com, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        vkoul@kernel.org, kishon@ti.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V4 3/3] arm64: dts: rockchip: Add DSI and DSI-DPHY nodes to  rk356x
Date:   Mon, 19 Sep 2022 11:46:16 -0500
Message-Id: <20220919164616.12492-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220919164616.12492-1-macroalpha82@gmail.com>
References: <20220919164616.12492-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
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
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 80 ++++++++++++++++++++++++
 1 file changed, 80 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 319981c3e9f7..0473d7ee2668 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -699,6 +699,62 @@ vop_mmu: iommu@fe043e00 {
 		status = "disabled";
 	};
 
+	dsi0: dsi@fe060000 {
+		compatible = "rockchip,rk3568-mipi-dsi", "snps,dw-mipi-dsi";
+		reg = <0x00 0xfe060000 0x00 0x10000>;
+		interrupts = <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>;
+		clock-names = "pclk", "hclk";
+		clocks = <&cru PCLK_DSITX_0>, <&cru HCLK_VO>;
+		phy-names = "dphy";
+		phys = <&dsi_dphy0>;
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
+			dsi0_in: port@0 {
+				reg = <0>;
+			};
+
+			dsi0_out: port@1 {
+				reg = <1>;
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
+		phys = <&dsi_dphy1>;
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
+			dsi1_in: port@0 {
+				reg = <0>;
+			};
+
+			dsi1_out: port@1 {
+				reg = <1>;
+			};
+		};
+	};
+
 	hdmi: hdmi@fe0a0000 {
 		compatible = "rockchip,rk3568-dw-hdmi";
 		reg = <0x0 0xfe0a0000 0x0 0x20000>;
@@ -1594,6 +1650,30 @@ combphy2: phy@fe840000 {
 		status = "disabled";
 	};
 
+	dsi_dphy0: mipi-dphy@fe850000 {
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
+	dsi_dphy1: mipi-dphy@fe860000 {
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


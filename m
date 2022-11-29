Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AF19363C66A
	for <lists+devicetree@lfdr.de>; Tue, 29 Nov 2022 18:29:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232491AbiK2R30 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Nov 2022 12:29:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236606AbiK2R3Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Nov 2022 12:29:24 -0500
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com [IPv6:2607:f8b0:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11A9D69305
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 09:29:23 -0800 (PST)
Received: by mail-ot1-x331.google.com with SMTP id t19-20020a9d7753000000b0066d77a3d474so9550001otl.10
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 09:29:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fnrU/S9jrTo7VMkSItxfe7rQNqEwCFm0vszgPLvFvNM=;
        b=FMuZUNvNuprAFguviKR51jVrDAzZLGUbDQOtZNexD2xXwNxzNHQ63ay2m4eYEODfYH
         Vw5VfMDlwMd5w+Kawaujb4SSHVrenwVnHwa+gXBzg8bH7dzpPLP8G13oF4kH2DBS3YOU
         qRHHKSq2EeSSOmsE7aWaAYUci/uFIW4M4srljDLfJkHLAhULKrjARc0LGDIdhqqFbCPL
         fvaxcxHqS+6UQkTtkbvA1UaaSxxGpUmPwEeuMEySUI4SIOFUZd4MNvbnuIs187Nca9Ma
         8rRbLWJ7K048+wtP2BHjMDii4Tqzrl9Wab7XsRtTIQM5fS78iIiY48voYS7+l6IedHJR
         7Vjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fnrU/S9jrTo7VMkSItxfe7rQNqEwCFm0vszgPLvFvNM=;
        b=sO16/GXoZMIgvBZrkGqR6xrm9aBHp6WGfIi60QFApNl7H94x7eQrZC/fsp1CEy9UHM
         ewigqvvTfCReFXXJxg1drUHKc/ea5GI8qP7VYjpL+Aw5+T9enLBIW81jZqfqlsVJzM9k
         /rlQ04hpOlUT97XaRTzmKG1xkachfNDJ+FW1AzksgdXEtUyfL+mqC/PUGz3m0xa/Dj4U
         RnVZhJ1ywnEM0CdVIPPKdjsL3Pt7iXefrDgpWjlthPNPjly5PHsWE1jIVsdBIHPkXZjn
         ELRLofXouJ5kykitgAfX18FdhVf4MI7vgVaB9INwhlCMS0+g/Jo/oQqrYRAgl3CokTUK
         IG8w==
X-Gm-Message-State: ANoB5pnuqU5E8YqRjFvxDPm+tJTfRkLstWYhSF4UOgeXAQcGNeax/NGw
        9bcOEz0DXujsXKYcgzbWZd0=
X-Google-Smtp-Source: AA0mqf5HcnIQkAF9BdufN5q1s2cozIdu6aBXSB91VDBMW6tg6Xl5I2gKp8jDb3SVdelMdCKx9aUNcA==
X-Received: by 2002:a9d:5d04:0:b0:66b:85b7:ac37 with SMTP id b4-20020a9d5d04000000b0066b85b7ac37mr21802163oti.363.1669742962229;
        Tue, 29 Nov 2022 09:29:22 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id l26-20020a9d709a000000b00661b46cc26bsm6224546otj.9.2022.11.29.09.29.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Nov 2022 09:29:21 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-rockchip@lists.infradead.org
Cc:     devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        maccraft123mc@gmail.com, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        thierry.reding@gmail.com, linus.walleij@linaro.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V4 3/3] arm64: dts: rockchip: add display to RG503
Date:   Tue, 29 Nov 2022 11:29:12 -0600
Message-Id: <20221129172912.9576-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221129172912.9576-1-macroalpha82@gmail.com>
References: <20221129172912.9576-1-macroalpha82@gmail.com>
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

Add Samsung AMS495QA01 panel to RG503.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
---
 .../dts/rockchip/rk3566-anbernic-rg503.dts    | 61 +++++++++++++++++++
 1 file changed, 61 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
index 5dafcc86296b..23442e38a751 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
@@ -47,6 +47,22 @@ gpio_spi: spi {
 		mosi-gpios = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>;
 		cs-gpios = <&gpio4 RK_PA7 GPIO_ACTIVE_HIGH>;
 		num-chipselects = <0>;
+
+		panel@0 {
+			compatible = "samsung,ams495qa01";
+			reg = <0>;
+			enable-gpios = <&gpio4 RK_PB7 GPIO_ACTIVE_HIGH>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&lcd_enable>, <&lcd_reset>;
+			reset-gpios = <&gpio4 RK_PA0 GPIO_ACTIVE_LOW>;
+			vdd-supply = <&vcc3v3_lcd0_n>;
+
+			port {
+				mipi_in_panel: endpoint {
+					remote-endpoint = <&mipi_out_panel>;
+				};
+			};
+		};
 	};
 
 	/* Channels reversed for both headphones and speakers. */
@@ -94,6 +110,32 @@ &cru {
 	assigned-clock-rates = <1200000000>, <200000000>, <500000000>;
 };
 
+&dsi_dphy0 {
+	status = "okay";
+};
+
+&dsi0 {
+	status = "okay";
+
+	ports {
+		dsi0_in: port@0 {
+			reg = <0>;
+
+			dsi0_in_vp1: endpoint {
+				remote-endpoint = <&vp1_out_dsi0>;
+			};
+		};
+
+		dsi0_out: port@1 {
+			reg = <1>;
+
+			mipi_out_panel: endpoint {
+				remote-endpoint = <&mipi_in_panel>;
+			};
+		};
+	};
+};
+
 &gpio_keys_control {
 	button-a {
 		gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_LOW>;
@@ -146,6 +188,18 @@ spk_amp_enable_h: spk-amp-enable-h {
 		};
 	};
 
+	gpio-lcd {
+		lcd_enable: lcd-enable {
+			rockchip,pins =
+				<4 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		lcd_reset: lcd-reset {
+			rockchip,pins =
+				<4 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	gpio-spi {
 		spi_pins: spi-pins {
 			rockchip,pins =
@@ -164,3 +218,10 @@ rk817_charger: charger {
 		rockchip,sleep-filter-current-microamp = <100000>;
 	};
 };
+
+&vp1 {
+	vp1_out_dsi0: endpoint@ROCKCHIP_VOP2_EP_MIPI0 {
+		reg = <ROCKCHIP_VOP2_EP_MIPI0>;
+		remote-endpoint = <&dsi0_in_vp1>;
+	};
+};
-- 
2.25.1


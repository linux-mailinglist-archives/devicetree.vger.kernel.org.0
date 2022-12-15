Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7DBF164E158
	for <lists+devicetree@lfdr.de>; Thu, 15 Dec 2022 19:52:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230478AbiLOSwe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Dec 2022 13:52:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230477AbiLOSw0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Dec 2022 13:52:26 -0500
Received: from mail-oo1-xc35.google.com (mail-oo1-xc35.google.com [IPv6:2607:f8b0:4864:20::c35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 869654667C
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 10:52:22 -0800 (PST)
Received: by mail-oo1-xc35.google.com with SMTP id f184-20020a4a58c1000000b004a3c01646a0so23809oob.12
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 10:52:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xn0RWIp29/DDAGotFO+F2cDyIEYDf7WQu136TlHaqBY=;
        b=R2zO+t7nr+aKZeFcIqNjJdDuzyg9ArEuMc9RAnA2RV8wUsWaBNtdyp37mBaeRt7+8+
         G4QQzSbtA5dJru3BCO7mgYs1IMenpTgKww8wUcL1udzID+jcZnshCJ5H0ywuDIMGOKLP
         g9j56u2ug/IKiPLOttx5T/bD++cmQ3FWnRgsQHVsbX/9hV+Qn0oLxGeyGzda6nUOmaap
         8DpEfo6QSNVKiR+qrUesjD/tJ5xbLDxHtRz2cv1xLDeH4bzHiU9VE2AxFfuGYhgoTsnx
         ZMHc6em0/SBN4fYfMZR14UfUGABCeseV5m/ZtVJnGhSm2CU2t+IxmUkhWWMQd9v1+sMF
         L6BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xn0RWIp29/DDAGotFO+F2cDyIEYDf7WQu136TlHaqBY=;
        b=mADfxkXYCg3CsoXu5vEFqekNLEez3CfZLN3G4wY8x+c6TBbCwzOa+FIUCu+7QvA3e/
         domspGp8Esb22dZO1b3dOtPfmORK9ojAE7B/kHl603LVKD8sfh2aBF7ezrp2o5xQDMbn
         QwvKjyXAzq7OetOdP3lNNGhGHBxXTTifPZ9a9yN2/kXt5rrqT9QOXcFtadKLk4+jvm1b
         m6z6C/AVpuE9CpayFmUCNbpJBCs1vUMPIjkAd90mnm7hw53mhbdf/pCHeDaVJY0uqcrW
         bcwqFskKknXVfon9Gisz0nACQYYQwPCVW/oQTpT3TJFugEf2orddx9rA3Vt7uAqVVb7q
         FPRw==
X-Gm-Message-State: ANoB5pnlHCDGtfp5ayNMDAosIA4WgPWOdcqC0dlEyaXeLflUYMWvofmP
        eVYp50UntCHpirDoycn6Dbc=
X-Google-Smtp-Source: AA0mqf51VnHChzflEHwPYqgqklV9DYyCaptTFBBoCLZRwltPPvDECieuhv4Hem5uCmz853ZgYkWHrA==
X-Received: by 2002:a4a:b287:0:b0:4a0:2ddf:9da2 with SMTP id k7-20020a4ab287000000b004a02ddf9da2mr12199267ooo.5.1671130341879;
        Thu, 15 Dec 2022 10:52:21 -0800 (PST)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id g11-20020a4ad84b000000b004a09df5a1dbsm72264oov.8.2022.12.15.10.52.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Dec 2022 10:52:21 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, maccraft123mc@gmail.com,
        tzimmermann@suse.de, mripard@kernel.org,
        maarten.lankhorst@linux.intel.com, heiko@sntech.de,
        linux-rockchip@lists.infradead.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        thierry.reding@gmail.com, linus.walleij@linaro.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V6 4/4] arm64: dts: rockchip: add display to RG503
Date:   Thu, 15 Dec 2022 12:52:11 -0600
Message-Id: <20221215185211.1560736-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221215185211.1560736-1-macroalpha82@gmail.com>
References: <20221215185211.1560736-1-macroalpha82@gmail.com>
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
 .../dts/rockchip/rk3566-anbernic-rg503.dts    | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
index 5dafcc86296b..b4b2df821cba 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
@@ -47,6 +47,21 @@ gpio_spi: spi {
 		mosi-gpios = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>;
 		cs-gpios = <&gpio4 RK_PA7 GPIO_ACTIVE_HIGH>;
 		num-chipselects = <0>;
+
+		panel@0 {
+			compatible = "samsung,ams495qa01";
+			reg = <0>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&lcd_reset>;
+			reset-gpios = <&gpio4 RK_PA0 GPIO_ACTIVE_LOW>;
+			vdd-supply = <&vcc_3v3>;
+
+			port {
+				mipi_in_panel: endpoint {
+					remote-endpoint = <&mipi_out_panel>;
+				};
+			};
+		};
 	};
 
 	/* Channels reversed for both headphones and speakers. */
@@ -94,6 +109,32 @@ &cru {
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
@@ -146,6 +187,13 @@ spk_amp_enable_h: spk-amp-enable-h {
 		};
 	};
 
+	gpio-lcd {
+		lcd_reset: lcd-reset {
+			rockchip,pins =
+				<4 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	gpio-spi {
 		spi_pins: spi-pins {
 			rockchip,pins =
@@ -164,3 +212,10 @@ rk817_charger: charger {
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
2.34.1


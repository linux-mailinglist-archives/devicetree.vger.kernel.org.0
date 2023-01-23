Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 50A0B67804A
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 16:46:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232878AbjAWPqQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 10:46:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232875AbjAWPqP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 10:46:15 -0500
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com [IPv6:2607:f8b0:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D187223671
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 07:46:14 -0800 (PST)
Received: by mail-oi1-x22c.google.com with SMTP id i9so6923144oif.4
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 07:46:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lAsZjV/F62ehp3lu+dOQ47iT4A8AwdolBkS2EqUE/rA=;
        b=YWfuJVBaEV8h+q8+hAGxtJYkAMtOJqj+4/wY7jhchxrDVUz41Jkr4D4Lbh+ZgnZB/m
         9H3d7Dq8r/ZncBMZj7eUYiRsOXMNutmfBah9VYeYIb5N5mloXjb6pSUaXWvELem6u+uU
         ziKNznOm6td4Za/rx9TXUdhmz3K4NG0T7cuDhwrzetfv6lMYQVZ4gZEK6K0Estpw6rSn
         dKYNYR35ctWOdCMCcwm+e+lh40vAWaBnHaLU8OiOQmuCz0JJtoRJ0hT/B6j0oZQDskUk
         FdXtHl3QCbHgvp/tthCzgaa2Ex9xA/w1N0bzsDYAscfpvlzF28PM3Q/4z3ir4iCKZn9Y
         V/Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lAsZjV/F62ehp3lu+dOQ47iT4A8AwdolBkS2EqUE/rA=;
        b=hiucR/TelmqSax7OAXsbOfrDQARI88q6s8Uqa6drP9If7yKxGS4C867XmUVmDbrMC4
         gAwIyBp4Wdh1/R2WanYsH8aFnlpgZBF3Ji7MU1KJnvMRFVz/lF5wRlUn7p31HHs5DjOV
         6Q5rUfATU5GSDBNIcVU+i3NX6+6/CJuOD8GXhJAfBvioeJGx7AKZjkS5Ni9ONX4/pQcd
         yAcHMo6bFenawbYYXruSPOacdVD27vxJmf2+4PMheVoNM0I5Zu734qwHfjjLAxChnjbc
         pACeCiMw4O4eqRb4TDq3PI+2T7Afc01M6ShVUOuRuRTvmIkky9wUOzx5uXzv9yssjaMY
         PASw==
X-Gm-Message-State: AFqh2krap9TeaeduQIa2xnQIO5wSmIhhE4GWPs9yb/F/uxLt6HKIgf6X
        4IqZWQ4rj0IfCeYaJecAB1m02AXieUE=
X-Google-Smtp-Source: AMrXdXuYbHqR4J82pKKdQRM5vPgIpVKffS/ltAI+6WMM81sbew5aDBjCqcM5Y+CZzaac0etn99OVdw==
X-Received: by 2002:a05:6808:171b:b0:35a:1124:227d with SMTP id bc27-20020a056808171b00b0035a1124227dmr13432623oib.3.1674488774199;
        Mon, 23 Jan 2023 07:46:14 -0800 (PST)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id w13-20020a056808140d00b0035e7ed5daa1sm10040132oiv.26.2023.01.23.07.46.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 07:46:13 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        tzimmermann@suse.de, mripard@kernel.org,
        maarten.lankhorst@linux.intel.com, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        thierry.reding@gmail.com, linus.walleij@linaro.org,
        Chris Morgan <macromorgan@hotmail.com>,
        Maya Matuszczyk <maccraft123mc@gmail.com>
Subject: [PATCH V12 4/4] arm64: dts: rockchip: add display to RG503
Date:   Mon, 23 Jan 2023 09:46:03 -0600
Message-Id: <20230123154603.1315112-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230123154603.1315112-1-macroalpha82@gmail.com>
References: <20230123154603.1315112-1-macroalpha82@gmail.com>
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

Co-developed-by: Maya Matuszczyk <maccraft123mc@gmail.com>
Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
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


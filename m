Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BE916664CF0
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 21:03:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231185AbjAJUDh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 15:03:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231439AbjAJUDI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 15:03:08 -0500
Received: from mail-oo1-xc35.google.com (mail-oo1-xc35.google.com [IPv6:2607:f8b0:4864:20::c35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBE08FD2A
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 12:03:07 -0800 (PST)
Received: by mail-oo1-xc35.google.com with SMTP id x15-20020a4ab90f000000b004e64a0a967fso3509139ooo.2
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 12:03:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xn0RWIp29/DDAGotFO+F2cDyIEYDf7WQu136TlHaqBY=;
        b=J5wl9aZ1IGVKg3lxEsQz4tnGLe3hwvrXmSc6JvIcjnH9Qk+O/wKX6InDxVsiLFF7HI
         nElQ3Tdyo29n+VERdoB4PBD3HnjdmlHL48hCL/FqvLqTb1jatMoEBMqrz4zCNR3Ltx4J
         SGnktX0yevWOFId052bDTYFckwojX1RXTdYuBmZV9/1hoKyiQu0FekR8zRoiqxtmmFrp
         DZqEicdPijXJvtEgoiaUnJwDEwer4qP0+y05oZ0AiBgsBvwCPqmpLhJRIAudwRjGuQ8z
         DditkC69Hsf57phbBQFTQKhwr840n2PXLpWs5b5reDRS2lClfMSxuRAnfhaw10/ANiXy
         Q6Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xn0RWIp29/DDAGotFO+F2cDyIEYDf7WQu136TlHaqBY=;
        b=GVrXZMl4Bv3YBpzPOUPDlXCYH8rEUi9dtGiHzSSYlrBcRvA4u2yhYyMUicfkgJXk6g
         0tU/RLUzYfRLxjnBQPK2uEVlLkT8TDOWCnDjRuxsjyqLaOF2x8toVHsX/JlhGjnMEh7L
         AVJzlx+M0qvEclwbPyAik/Kc/sXvGjyw+2+Vp075UpGbCTRKOPLIEWfmg5f5a6i+Idma
         2y1YPx9ZvtPz+fKna/HYq+i7P2Xmjh5qyGIQgj1BcTfcX68y/7Ejyqz9qJeiNkqXEu5l
         RpTIozyhWtLk//D/nLh2BcDVjQ98vHdd8TR3tredj1A/GXREqiuysJi4ZciAuyWlyUEF
         wgXA==
X-Gm-Message-State: AFqh2kp8Y5OoM83gB+QaRhHusd5iBfnilzYORb5Z8J8WYcuhp47soTIg
        JpKKJALa83J6+kutJGS5KJg=
X-Google-Smtp-Source: AMrXdXsUnCZFrgXKeAiUQMlpciK+Y2fvmBkeu+sGeN5vr+2gS/lMTnHiixfEKYg1f/tLIXAiTGxg2A==
X-Received: by 2002:a4a:ce8b:0:b0:4b0:ddb0:e0a6 with SMTP id f11-20020a4ace8b000000b004b0ddb0e0a6mr30972164oos.3.1673380986977;
        Tue, 10 Jan 2023 12:03:06 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id r4-20020a4aad04000000b004a394578e14sm6089779oon.32.2023.01.10.12.03.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jan 2023 12:03:06 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        maccraft123mc@gmail.com, tzimmermann@suse.de, mripard@kernel.org,
        maarten.lankhorst@linux.intel.com, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        thierry.reding@gmail.com, linus.walleij@linaro.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v8 4/4] arm64: dts: rockchip: add display to RG503
Date:   Tue, 10 Jan 2023 14:02:55 -0600
Message-Id: <20230110200255.1218738-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230110200255.1218738-1-macroalpha82@gmail.com>
References: <20230110200255.1218738-1-macroalpha82@gmail.com>
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


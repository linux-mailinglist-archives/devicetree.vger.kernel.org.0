Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 305E4666088
	for <lists+devicetree@lfdr.de>; Wed, 11 Jan 2023 17:31:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239297AbjAKQbm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Jan 2023 11:31:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230084AbjAKQbE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Jan 2023 11:31:04 -0500
Received: from mail-oa1-x30.google.com (mail-oa1-x30.google.com [IPv6:2001:4860:4864:20::30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 786681DF19
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 08:30:25 -0800 (PST)
Received: by mail-oa1-x30.google.com with SMTP id 586e51a60fabf-150b06cb1aeso16048496fac.11
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 08:30:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xn0RWIp29/DDAGotFO+F2cDyIEYDf7WQu136TlHaqBY=;
        b=SjSbc+Xs9ZcPjnknCiABDEoiIRumT6I0WptiNwWfobOKYHTaF17ad4nDAHZCrxuGVA
         exBH6yRi5H9HBvoUq/tfMEJDylXHIoLLNvY6De/tYYJ7t/jncT6zT5PZS8MEe/V/vsmX
         9TbS1tjdkZD4ssvgqO4d+x6+gbY+aZrS5iid4guRsPqZyWuLBlOSbQfxvmRwxtsgMrHC
         o4MFNYveH6B3wxXEGw7LiGjY2srxsK4v4rCMAoNfQikOTUzZN1oTjoknj8JQpjdmGlSR
         r2qyuJ26IJyOmiQqCQKlexuX8hNhvDBRwCUbXJPET8ZmzJWF+g3KVCa80+NCdBDtX0H8
         dLEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xn0RWIp29/DDAGotFO+F2cDyIEYDf7WQu136TlHaqBY=;
        b=TXZMPELmZYUPKheBxQ1jVdQhF5OZ2gPoYHES+DSlVF3HRWYNrh6MJ9bnqMo9M0ydiY
         MU2Xsjo+MBpXBtGWPDCrgqX8gw6AKzfqIhmJVjTiQ/idrmVNFwiLTWDpcxv6iT0g9Laa
         NptQ0idBa2yHx5PYcudFd/wyOwhnRwPVJnis5ck1OA6OEazLBqZTOPvljhWFXRxPZFU/
         2fS5wksghvI16xZAq/HocJHoVdxjAuoluXKM03o7JIosR406sly/ILBdZWLvJavPWF4s
         uBl+Sfzsl6hVQOu0YScVLX43ryIhzHQ/kJcemsKUVFg6TZBj3Q84CcS70SvBjnzPxGqF
         BXyg==
X-Gm-Message-State: AFqh2koTWkvcGzkBmsjzvM3ad7L3ypz0g+rU9hWKPQYez1wi6wFyM7CZ
        zyJ3Yn+CKCF2IW5/Gktighk=
X-Google-Smtp-Source: AMrXdXuvIuYdcAd/gLBHkHi97cgaOZBAg1ouS9I3UigzwXVMu3aQnqPUcC45UAlIW5SLVa5ImBSavA==
X-Received: by 2002:a05:6870:e298:b0:15b:9fdc:6c2 with SMTP id v24-20020a056870e29800b0015b9fdc06c2mr1094089oad.1.1673454624537;
        Wed, 11 Jan 2023 08:30:24 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id z13-20020a056870738d00b0013ae39d0575sm7629003oam.15.2023.01.11.08.30.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jan 2023 08:30:24 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        maccraft123mc@gmail.com, tzimmermann@suse.de, mripard@kernel.org,
        maarten.lankhorst@linux.intel.com, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        thierry.reding@gmail.com, linus.walleij@linaro.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v9 4/4] arm64: dts: rockchip: add display to RG503
Date:   Wed, 11 Jan 2023 10:30:12 -0600
Message-Id: <20230111163012.310945-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230111163012.310945-1-macroalpha82@gmail.com>
References: <20230111163012.310945-1-macroalpha82@gmail.com>
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


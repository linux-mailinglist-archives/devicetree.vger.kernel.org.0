Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F0822639308
	for <lists+devicetree@lfdr.de>; Sat, 26 Nov 2022 02:14:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230071AbiKZBOm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Nov 2022 20:14:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229791AbiKZBOl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Nov 2022 20:14:41 -0500
Received: from mail-oa1-x34.google.com (mail-oa1-x34.google.com [IPv6:2001:4860:4864:20::34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBFF52FFFC
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 17:14:40 -0800 (PST)
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-13bd2aea61bso6998716fac.0
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 17:14:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y0OGJAFsRUCLM8lAVAlbmOQOAA7z9k3YOv8Et6vjKSo=;
        b=KkYRpLUZmImQCq+JwM2pkNCa7RxHl+Nvcaw64J1mD7rLD/OhseHHds3HMVbGtV1KWt
         HwISZLiL4w5C9lTDBfNZS+NkkJ47JeKklrLqHY+3ueeoajgOQUn2KOpAdCrBmxP0CTkX
         X9HzE/GFC1FWl4z0z3PybuoiIOUUa1SGGbYFydAwK8aEqjipylQbYHXjGyW+9aiMl70B
         QE2qoErAFb4NEtnZBeJ1yVF3SAM2syKh513MTXaGx7hPuCykm4Mz5BmduSI+jwioPUqF
         JrM/O8Ssud12SFGZxAPVt1mftaatA+aOrNI8abAfv/8HaVVYwrpIIbC+CVY/ycYm6UQ1
         O43A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y0OGJAFsRUCLM8lAVAlbmOQOAA7z9k3YOv8Et6vjKSo=;
        b=z3ZrqI0/B7wCu4PW94pWMzHfOsjWPJtcbd5U4mu9sD7njG8f/dvSwiX+zD5s59X8wT
         jVLbslbBY9Spx2fg9eEyuwOHZSIQtYxwyUummq6y/frTGt6gCqanztwu6u/X5A7MzeN4
         adpKxZskqDo354svhPr86BSLAMESkPGslLaHig5VasgpYePueQ4dSyq54didba2LU+Bp
         JmUqSa5wqFzKd77axzrlNH1UqXCDfgnNAMJIKb+GB8Jej5kpYIr2eRmgH2txLHB4CRmP
         UU6sA2u2iFgKrgZcpqXImQKpXmsFIXVxbU7RfACtLaDViGDXwt8xh+wVqEzMCEwSwhMs
         K70Q==
X-Gm-Message-State: ANoB5pl+SqPjONBfwRTiV6I0I4YD8DnoqZISZb8u1bRvP8o8uYqCaCdp
        jtAwhyZPdZeA6aL7wzLHwqhWNkWypVU=
X-Google-Smtp-Source: AA0mqf5WdIBmTGqZHIUVwen1A5dWNkeRCtzv7u2N2XMG5/NeTFMQl6E4HwypsYa4iORQC6gdNlctXQ==
X-Received: by 2002:a05:6870:b527:b0:143:7736:806b with SMTP id v39-20020a056870b52700b001437736806bmr3001798oap.222.1669425279820;
        Fri, 25 Nov 2022 17:14:39 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id s191-20020acaa9c8000000b003546fada8f6sm2066177oie.12.2022.11.25.17.14.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Nov 2022 17:14:39 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH] arm64: dts: rockchip: add panel to Anbernic RG353 series
Date:   Fri, 25 Nov 2022 19:14:32 -0600
Message-Id: <20221126011432.22891-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221126011432.22891-1-macroalpha82@gmail.com>
References: <20221126011432.22891-1-macroalpha82@gmail.com>
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

Add support for the newly mainlined panel to the RG353 series of
devices.

https://lore.kernel.org/dri-devel/CACRpkdatn3SFaSDwj33QVvx_B-020TaTDoPz3p_9K=EiT7A_7w@mail.gmail.com/

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3566-anbernic-rg353x.dtsi  | 58 +++++++++++++++++++
 1 file changed, 58 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353x.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353x.dtsi
index 65a80d1f6d91..17450aa283b9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353x.dtsi
@@ -20,6 +20,48 @@ &cru {
 	assigned-clock-rates = <1200000000>, <200000000>, <241500000>;
 };
 
+&dsi_dphy0 {
+	status = "okay";
+};
+
+&dsi0 {
+	status = "okay";
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	ports {
+		dsi0_in: port@0 {
+			reg = <0>;
+			dsi0_in_vp1: endpoint {
+				remote-endpoint = <&vp1_out_dsi0>;
+			};
+		};
+
+		dsi0_out: port@1 {
+			reg = <1>;
+			mipi_out_panel: endpoint {
+				remote-endpoint = <&mipi_in_panel>;
+			};
+		};
+	};
+
+	panel: panel@0 {
+		compatible = "anbernic,rg353p-panel", "newvision,nv3051d";
+		reg = <0>;
+		backlight = <&backlight>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&lcd_rst>;
+		reset-gpios = <&gpio4 RK_PA0 GPIO_ACTIVE_LOW>;
+		vdd-supply = <&vcc3v3_lcd0_n>;
+
+		port {
+			mipi_in_panel: endpoint {
+				remote-endpoint = <&mipi_out_panel>;
+			};
+		};
+	};
+};
+
 &gpio_keys_control {
 	button-a {
 		gpios = <&gpio3 RK_PC2 GPIO_ACTIVE_LOW>;
@@ -55,6 +97,22 @@ power-monitor@62 {
 	};
 };
 
+&pinctrl {
+	gpio-lcd {
+		lcd_rst: lcd-rst {
+			rockchip,pins =
+				<4 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
 &pwm4 {
 	status = "okay";
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


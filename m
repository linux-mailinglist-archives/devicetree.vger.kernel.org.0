Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A029964CF28
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 19:07:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239165AbiLNSHa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 13:07:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238769AbiLNSHD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 13:07:03 -0500
Received: from mail-oa1-x36.google.com (mail-oa1-x36.google.com [IPv6:2001:4860:4864:20::36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35E7729354
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 10:06:26 -0800 (PST)
Received: by mail-oa1-x36.google.com with SMTP id 586e51a60fabf-1322d768ba7so17634318fac.5
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 10:06:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xn0RWIp29/DDAGotFO+F2cDyIEYDf7WQu136TlHaqBY=;
        b=AJStqmd+OU2/bjNwGaJTCq7rPICb3zxGOUsAqET9v3qYYUYeLamXh0v406OIY2EHLn
         i6rdernZQoCHDKtDSvDy/LiuOO9TedVt5VRDJSSFlXltT1LRIXS56UJzHj1HBSpzxDec
         zIzHqKCAb38HRwT7ruUtqm+L2Hp/rjsJq54v9ux9Ag/4etu4wXMDDqvVpJhyGWxP1me5
         16VURNS3wQfrvOz+S5zFWvaahjmgdaQzEP+qcEtmNdPNqVJznq3UOmMwqJSKcNk7AV68
         Ba1sMAIII1a8KNyaqvHE8i6aOj8w5tqOkeJnG9yHmO3DebL6IIUH7/k07iIFqIqiAFCZ
         e+Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xn0RWIp29/DDAGotFO+F2cDyIEYDf7WQu136TlHaqBY=;
        b=yZE2pP1/H3yLFZ6G1dnUYOsTuNM5zW1HqMifTPQCaVEkRUKDQWXWcNtzdHXSv6btag
         caF3T+ahYJ4UIi3WHt/fl/0/n4RW45+tK8e1x3HRj1bXAyRgYHvd9ggDP4wScNtEH+qs
         nnXIjjuBBT2m+LXTYJrHYbZ9jkmlUFLtpL041owM+pTzfdU9zllKKS6htv+m7BDu+saB
         onFClqBK60B9JiYitipMtExcKqGHH1kH4Ujw5XrdDuNZw+eP4zowNawVSER/pM/b/W0o
         RI3nNLGvO+MflpgJp/DgZoqgSZPXXc+riwbyUrYgpjDv8BdOPdvxJHRwMQAEs81lm+Iv
         tPYQ==
X-Gm-Message-State: ANoB5pmD8Ls1lgH2falNQgvIFeBGUjOGtNXHnUMtoHo1ujjmG/zyYfde
        rYgVhUdVt8SrGnDoUXnD6F8=
X-Google-Smtp-Source: AA0mqf7MrGtQcdX6H5d78SbSEv6zomhr0aRA95vBMXRdnugQvm6kZa22h2o46ciPfUiwSV4hGfOQig==
X-Received: by 2002:a05:6870:a18a:b0:141:fbdd:53b3 with SMTP id a10-20020a056870a18a00b00141fbdd53b3mr13331163oaf.41.1671041184527;
        Wed, 14 Dec 2022 10:06:24 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id y8-20020a056870b00800b0013b0b19100fsm3034008oae.32.2022.12.14.10.06.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Dec 2022 10:06:23 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, tzimmermann@suse.de,
        mripard@kernel.org, maarten.lankhorst@linux.intel.com,
        heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@gmail.com,
        sam@ravnborg.org, thierry.reding@gmail.com,
        linus.walleij@linaro.org, Chris Morgan <macromorgan@hotmail.com>,
        Maya Matuszczyk <maccraft123mc@gmail.com>
Subject: [PATCH V4 4/4] arm64: dts: rockchip: add display to RG503
Date:   Wed, 14 Dec 2022 12:06:11 -0600
Message-Id: <20221214180611.109651-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221214180611.109651-1-macroalpha82@gmail.com>
References: <20221214180611.109651-1-macroalpha82@gmail.com>
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


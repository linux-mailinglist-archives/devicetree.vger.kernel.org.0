Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7CCF265C6EF
	for <lists+devicetree@lfdr.de>; Tue,  3 Jan 2023 20:07:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238751AbjACTHS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Jan 2023 14:07:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238522AbjACTHQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Jan 2023 14:07:16 -0500
Received: from mail-oa1-x30.google.com (mail-oa1-x30.google.com [IPv6:2001:4860:4864:20::30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1DF413E81
        for <devicetree@vger.kernel.org>; Tue,  3 Jan 2023 11:07:15 -0800 (PST)
Received: by mail-oa1-x30.google.com with SMTP id 586e51a60fabf-1322d768ba7so37873320fac.5
        for <devicetree@vger.kernel.org>; Tue, 03 Jan 2023 11:07:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xn0RWIp29/DDAGotFO+F2cDyIEYDf7WQu136TlHaqBY=;
        b=dK8bSBvRLVbLCUgba0M1OefdxQvl+dAxePXW5kUBUYHcP2QQqqb+rjmrX7dy7oWCHr
         9KBiIWdkFBnqwhDgbDh+HR/SyMnBJDtHaBpvyV9oHafspDNOW3D/QlgfkkwdrvLj/Dl/
         JM4ZbL8RgWzGcLtpDwQGAHq9pyLpuEdkH77ITp0/mWv+ER9WPHLrWExRv6x0nCCgl+mP
         lHNKm10FofhSa7dM4pWmGyQ+uvDfOwECvQHiqzc6DGnNp+5ndP1q34RlYe26ArBp0Du+
         5oI5tcSy8rJgNr+VoluWjXmQpJqV4lktR0zoiVZQ/iqX2EESwZzJn7JI1l7Is3VIFmyC
         k4Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xn0RWIp29/DDAGotFO+F2cDyIEYDf7WQu136TlHaqBY=;
        b=tVlwZlq5fN3szt0oi3c76i+X8vVEmBhoT7czogX611Fdg0c3MBqpgl+6jrBHvNNJxt
         FdRjj6oGs1T0fVzCiK52qI0Wx/trFfaKJoMZaJfuBLS7HR61QweK/WfOi4L/bwwg4b8o
         8SQwWCZu/biGVUflZfS4YPKDZiZqS351vA/5WPoGgpzR7Z8aimRWxuLDdG0ycNFqv7J5
         kTSyxfHssa8ITkexPNgW1wgkqkWog+J5QMWLJ+YPtPrxBfzqpWpMcfo9D5MgPlaovI1h
         HygSpMfWPjIj8RLM+ty6Ah2zWJytmbsE9Wx5WQsiCJuwTx7DH6WPS9rVDmMmuIM1Nexk
         sphw==
X-Gm-Message-State: AFqh2kr38+z3jcobxWuahYMh7GezcpMrMNOSPVDt7/BVoVvZiBLsdi1V
        zIlZjZDtJiEo3kvjI8Pmx4s8/c7UTV4=
X-Google-Smtp-Source: AMrXdXuKQ6CPrX+gmKrUhuvhXwp8wkIJVzqHeG7mhdtqg0BEUuNEdDKOHzQdIWLTkw3ZDbYYpk1/Gw==
X-Received: by 2002:a05:6870:6a8b:b0:150:e30e:4832 with SMTP id mv11-20020a0568706a8b00b00150e30e4832mr1032902oab.44.1672772835087;
        Tue, 03 Jan 2023 11:07:15 -0800 (PST)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id s24-20020a056870ea9800b0014c7958c55bsm14752207oap.42.2023.01.03.11.07.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jan 2023 11:07:14 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        maccraft123mc@gmail.com, tzimmermann@suse.de, mripard@kernel.org,
        maarten.lankhorst@linux.intel.com, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        thierry.reding@gmail.com, linus.walleij@linaro.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V7 4/4] arm64: dts: rockchip: add display to RG503
Date:   Tue,  3 Jan 2023 13:07:07 -0600
Message-Id: <20230103190707.104595-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230103190707.104595-1-macroalpha82@gmail.com>
References: <20230103190707.104595-1-macroalpha82@gmail.com>
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


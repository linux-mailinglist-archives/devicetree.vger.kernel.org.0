Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 30910458636
	for <lists+devicetree@lfdr.de>; Sun, 21 Nov 2021 20:54:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229798AbhKUT5K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 Nov 2021 14:57:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229753AbhKUT5K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 21 Nov 2021 14:57:10 -0500
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A236BC06173E
        for <devicetree@vger.kernel.org>; Sun, 21 Nov 2021 11:54:04 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id l22so70345368lfg.7
        for <devicetree@vger.kernel.org>; Sun, 21 Nov 2021 11:54:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wirenboard-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gkETZgyxLCY3o9a3tZ61sgO6O+YAt+suAi+pGxqWqDY=;
        b=BNZUjnnWTCnm7u8qVG8rdE9BXMaJkjKRsu/8h1GipaXuzMyM+toqh9JM0mZoqHWQBo
         H4jLvJxOmViIK/bqBnWgu0yh+OqFQfWE/OKviXxf3sM8Rk+N2JH3Hnrcn3mqQem5nkGn
         9xm9kGvi1AD5c8Ja1x808ULKAo6LRMsERl2VosX/4GM/rw4ijMyaeoBLK0mQ0zoHfM16
         riqW3COY1nT3tG9x46cau0DOzeoo45eFmi23OaSW4bAUmaaT/4ExlBGhfk60xQP4niSS
         gL/PAh0V1Ond6fadi7IQtX+Rmm1/N+TTQptMgvn36D64O+mu3jWQQ4Ju/BZgXxZMHI59
         vjmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gkETZgyxLCY3o9a3tZ61sgO6O+YAt+suAi+pGxqWqDY=;
        b=bCPdIIsc7Ufw0BJTMZ2hYb9AvLqU/7m9qVPQhIb2ve0NsFwGTNywV1dYDCc54mPTgm
         xqAafH9JWOKpCSd4hk6Wf3u2S7rbKbwSSHJUkkGX6UezMusE/v1WkxXwcE0uUlfNALRv
         jbjI0+1CqgXYN7tjMavBx5PsEesxB4xdUq0OgPWIow/U4iDwLZ/4lxQqcly4ssmS1wZn
         50L7AeD0dNysi9QFfZ0tYKpiPHSqHGOQ5icGOO8Kz4fyzq+uVqom+EvB735PYpsbrO61
         AyNAag9R7meblysq7jmE/JUaeF29UyCQlmNnA8e7QyGHPwvrNNn0S8iswkP3TGTZJHYN
         +7uQ==
X-Gm-Message-State: AOAM530TIvWjMatntxiEu+RySMXdS+jX2U+9AcectX3iA3M76DfCZdq6
        6LhN9sMOIRxUOJRFZN4ftFuXYg==
X-Google-Smtp-Source: ABdhPJzQCCzuisHdFb2CLsfbM7uHhh84OKJ7As3BTkdw/n6nTZGoeg07+LPbdUJFkpE+GRJ7m1USJQ==
X-Received: by 2002:a05:6512:12c4:: with SMTP id p4mr50559707lfg.274.1637524443033;
        Sun, 21 Nov 2021 11:54:03 -0800 (PST)
Received: from boger-laptop.lan (81.5.99.121.dhcp.mipt-telecom.ru. [81.5.99.121])
        by smtp.gmail.com with ESMTPSA id a24sm768987ljq.18.2021.11.21.11.54.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Nov 2021 11:54:02 -0800 (PST)
From:   Evgeny Boger <boger@wirenboard.com>
To:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org
Cc:     Evgeny Boger <boger@wirenboard.com>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>, linux-sunxi@lists.linux.dev
Subject: [PATCH v3 3/3] dts: r40: add second ethernet support
Date:   Sun, 21 Nov 2021 22:53:37 +0300
Message-Id: <20211121195337.230475-4-boger@wirenboard.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211121195337.230475-1-boger@wirenboard.com>
References: <20211121195337.230475-1-boger@wirenboard.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

R40 (aka V40, A40i, T3) has two different Ethernet IP
called EMAC and GMAC.
EMAC only support 10/100 Mbit in MII mode,
while GMAC support both 10/100 (MII) and 10/100/1000 (RGMII).

In contrast to A10/A20 where GMAC and EMAC share the same pins
making EMAC somewhat pointless, on R40 EMAC can be routed to port H.
Both EMAC (on port H) and GMAC (on port A)
 can be then enabled at the same time, allowing for two ethernet ports.

Signed-off-by: Evgeny Boger <boger@wirenboard.com>
---
 arch/arm/boot/dts/sun8i-r40.dtsi | 50 ++++++++++++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
index 1d87fc0c24ee..19ea33421c63 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -217,6 +217,20 @@ syscon: system-control@1c00000 {
 			#size-cells = <1>;
 			ranges;
 
+			sram_a: sram@0 {
+				compatible = "mmio-sram";
+				reg = <0x00000000 0xc000>;
+				#address-cells = <1>;
+				#size-cells = <1>;
+				ranges = <0 0x00000000 0xc000>;
+
+				emac_sram: sram-section@8000 {
+					compatible = "allwinner,sun4i-a10-sram-a3-a4";
+					reg = <0x8000 0x4000>;
+					status = "okay";
+				};
+			};
+
 			sram_c: sram@1d00000 {
 				compatible = "mmio-sram";
 				reg = <0x01d00000 0xd0000>;
@@ -543,6 +557,24 @@ gmac_rgmii_pins: gmac-rgmii-pins {
 				drive-strength = <40>;
 			};
 
+			emac_pa_pins: emac-pa-pins {
+				pins = "PA0", "PA1", "PA2",
+				       "PA3", "PA4", "PA5", "PA6",
+				       "PA7", "PA8", "PA9", "PA10",
+				       "PA11", "PA12", "PA13", "PA14",
+				       "PA15", "PA16";
+				function = "emac";
+			};
+
+			emac_ph_pins: emac-ph-pins {
+				pins = "PH8", "PH9", "PH10", "PH11",
+				       "PH14", "PH15", "PH16", "PH17",
+				       "PH18","PH19", "PH20", "PH21",
+				       "PH22", "PH23", "PH24", "PH25",
+				       "PH26", "PH27";
+				function = "emac";
+			};
+
 			i2c0_pins: i2c0-pins {
 				pins = "PB0", "PB1";
 				function = "i2c0";
@@ -980,6 +1012,24 @@ gmac_mdio: mdio {
 			};
 		};
 
+		emac: ethernet@1c0b000 {
+			compatible = "allwinner,sun4i-r40-emac";
+			reg = <0x01c0b000 0x1000>;
+			interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_EMAC>;
+			resets = <&ccu RST_BUS_EMAC>;
+			allwinner,sram = <&emac_sram 1>;
+			status = "disabled";
+		};
+
+		emac_mdio: mdio@1c0b080 {
+			compatible = "allwinner,sun4i-a10-mdio";
+			reg = <0x01c0b080 0x14>;
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
 		mbus: dram-controller@1c62000 {
 			compatible = "allwinner,sun8i-r40-mbus";
 			reg = <0x01c62000 0x1000>;
-- 
2.25.1


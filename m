Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8BEB42F6061
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 12:40:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728975AbhANLig (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 06:38:36 -0500
Received: from wout2-smtp.messagingengine.com ([64.147.123.25]:38493 "EHLO
        wout2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728982AbhANLhS (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 14 Jan 2021 06:37:18 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.west.internal (Postfix) with ESMTP id 3F49A160C;
        Thu, 14 Jan 2021 06:35:52 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Thu, 14 Jan 2021 06:35:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=G2hbog+Qi0zLP
        Y4uTESbeYIaifjb5oP9w44qpx+ReuI=; b=KUATdeagETGh5z7NprFgnHXMtIpsd
        8Fo9ofyHhk2isbqPbKMPEMVwxXUssSqQoBr3cG+xB0VjZy2y5adJX+Ej2mvl2UyR
        2Sc7uL/wgjneF6RnVIfdhbFyl/a6hT0j7h8DVBuh3HsTOScEoHYI1sK/6m7syeWO
        4xm/HPgi1S2W40GQT3HZGjtn66T4ZPxMG/9s9pykNlcGwbNQP7hJqzl0CYZ8ailD
        NgIHqjPetRQdTl1JFoM8k6op4f1kIJEbC4yharSyvN6i4XNKpV0RKdD9Dio4N/bX
        ZOdGTiQhxJm6HF54HEvtHX4lyKVIiK4O656xEX9kxpCG9ESV2x2Bm+YsA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm1; bh=G2hbog+Qi0zLPY4uTESbeYIaifjb5oP9w44qpx+ReuI=; b=YOClCyD+
        0ZEzhDsdhOUE1Q24euZwH/Ox5L60RM1QtNskMH5jOUMTRvts8ZI3NG95QFetiwDY
        52OBBlTKMB47abAM7GkRU+NytOVh7r7ColtdMWoo1De3LVV4CK78kvFzMH6BYoYL
        Eye4vipznm2H0Pyhewdzy7/8sDjJQX20Lh9U9/6xMwNhohKNo517Nx7A0B1aLHn3
        rdRplaPKeNlNnqbLmVhsntVkY5x027hEAgpXYeiT2vm+d5vOerUYelpS9GR7UMUn
        7Mvsv4Pj54agmiinyfMtEZeWWp85XFKeIrAKnzQNq6+Y/R/qwSo6PRQPNQx/tB0c
        +zMhFam93Bi4qA==
X-ME-Sender: <xms:lywAYJsMaA8llGOCZgcG9XWL_U2YgknfTH29stTdQlKbn0RZr4BUlQ>
    <xme:lywAYCe8elv4RO9TpEQoaMqDU4uP56BMrA3H-WG-A-4RyPKnrGFzsC5mztUbbmAlq
    T77dIVteYVNpDOuVQs>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrtddtgddtfecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedunecurf
    grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:lywAYMx-oXXWFuOLUdxVEJ7enC_jVl_CfTuaQBmk4yvh_W7SHSYoFA>
    <xmx:lywAYAOxoT7AlbZUgHk_M_Vhu3VtdaWsseoy9SvJqJ0nQ9LOkCF-Dg>
    <xmx:lywAYJ_U6PTThD0lB_f-ZCIfnE9Kf9SKa5wD2GYPneG7ihFYtVTdjA>
    <xmx:lywAYFZ0ke8ksRUdUQ1KQdDK37TEjPI2E1EkKN9nihE5MxVcPXJEmg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 799A51080064;
        Thu, 14 Jan 2021 06:35:51 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org
Cc:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 07/19] ARM: dts: sunxi: Add missing backlight supply
Date:   Thu, 14 Jan 2021 12:35:26 +0100
Message-Id: <20210114113538.1233933-7-maxime@cerno.tech>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210114113538.1233933-1-maxime@cerno.tech>
References: <20210114113538.1233933-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The pwm-backlight binding requires a power supply. Make sure we provide
one.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm/boot/dts/sun4i-a10-dserve-dsrv9703c.dts        | 1 +
 arch/arm/boot/dts/sun4i-a10-inet1.dts                   | 1 +
 arch/arm/boot/dts/sun4i-a10-pov-protab2-ips9.dts        | 1 +
 arch/arm/boot/dts/sun5i-a13-empire-electronix-d709.dts  | 1 +
 arch/arm/boot/dts/sun5i-a13-pocketbook-touch-lux-3.dts  | 1 +
 arch/arm/boot/dts/sun5i-gr8-evb.dts                     | 2 +-
 arch/arm/boot/dts/sun5i-reference-design-tablet.dtsi    | 1 +
 arch/arm/boot/dts/sun7i-a20-wexler-tab7200.dts          | 1 +
 arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts               | 2 +-
 arch/arm/boot/dts/sun8i-reference-design-tablet.dtsi    | 1 +
 arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi | 9 +++++++++
 11 files changed, 19 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/sun4i-a10-dserve-dsrv9703c.dts b/arch/arm/boot/dts/sun4i-a10-dserve-dsrv9703c.dts
index 8ee3ff42bd55..63e77c05bfda 100644
--- a/arch/arm/boot/dts/sun4i-a10-dserve-dsrv9703c.dts
+++ b/arch/arm/boot/dts/sun4i-a10-dserve-dsrv9703c.dts
@@ -62,6 +62,7 @@ backlight: backlight {
 		brightness-levels = <0 10 20 30 40 50 60 70 80 90 100>;
 		default-brightness-level = <8>;
 		enable-gpios = <&pio 7 7 GPIO_ACTIVE_HIGH>; /* PH7 */
+		power-supply = <&reg_vcc3v3>;
 	};
 
 	chosen {
diff --git a/arch/arm/boot/dts/sun4i-a10-inet1.dts b/arch/arm/boot/dts/sun4i-a10-inet1.dts
index ca878384e902..60e432a0ef1c 100644
--- a/arch/arm/boot/dts/sun4i-a10-inet1.dts
+++ b/arch/arm/boot/dts/sun4i-a10-inet1.dts
@@ -62,6 +62,7 @@ backlight: backlight {
 		brightness-levels = <0 10 20 30 40 50 60 70 80 90 100>;
 		default-brightness-level = <8>;
 		enable-gpios = <&pio 7 7 GPIO_ACTIVE_HIGH>; /* PH7 */
+		power-supply = <&reg_vcc3v3>;
 	};
 
 	chosen {
diff --git a/arch/arm/boot/dts/sun4i-a10-pov-protab2-ips9.dts b/arch/arm/boot/dts/sun4i-a10-pov-protab2-ips9.dts
index 24a3d23e1952..c32596947647 100644
--- a/arch/arm/boot/dts/sun4i-a10-pov-protab2-ips9.dts
+++ b/arch/arm/boot/dts/sun4i-a10-pov-protab2-ips9.dts
@@ -62,6 +62,7 @@ backlight: backlight {
 		brightness-levels = <0 10 20 30 40 50 60 70 80 90 100>;
 		default-brightness-level = <8>;
 		enable-gpios = <&pio 7 7 GPIO_ACTIVE_HIGH>; /* PH7 */
+		power-supply = <&reg_vcc3v3>;
 	};
 
 	chosen {
diff --git a/arch/arm/boot/dts/sun5i-a13-empire-electronix-d709.dts b/arch/arm/boot/dts/sun5i-a13-empire-electronix-d709.dts
index a23bf24792ec..d059388d7252 100644
--- a/arch/arm/boot/dts/sun5i-a13-empire-electronix-d709.dts
+++ b/arch/arm/boot/dts/sun5i-a13-empire-electronix-d709.dts
@@ -61,6 +61,7 @@ backlight: backlight {
 		pwms = <&pwm 0 50000 PWM_POLARITY_INVERTED>;
 		brightness-levels = <0 10 20 30 40 50 60 70 80 90 100>;
 		default-brightness-level = <8>;
+		power-supply = <&reg_vcc3v3>;
 		/* TODO: backlight uses axp gpio1 as enable pin */
 	};
 
diff --git a/arch/arm/boot/dts/sun5i-a13-pocketbook-touch-lux-3.dts b/arch/arm/boot/dts/sun5i-a13-pocketbook-touch-lux-3.dts
index 3428bebceff0..d60407772e5d 100644
--- a/arch/arm/boot/dts/sun5i-a13-pocketbook-touch-lux-3.dts
+++ b/arch/arm/boot/dts/sun5i-a13-pocketbook-touch-lux-3.dts
@@ -28,6 +28,7 @@ backlight {
 		enable-gpios = <&pio 1 4 GPIO_ACTIVE_HIGH>; /* PB4 */
 		brightness-levels = <0 10 20 30 40 50 60 70 80 90 100>;
 		default-brightness-level = <8>;
+		power-supply = <&reg_vcc3v3>;
 	};
 
 	chosen {
diff --git a/arch/arm/boot/dts/sun5i-gr8-evb.dts b/arch/arm/boot/dts/sun5i-gr8-evb.dts
index 4c20d731a9c6..f4fe258ef06d 100644
--- a/arch/arm/boot/dts/sun5i-gr8-evb.dts
+++ b/arch/arm/boot/dts/sun5i-gr8-evb.dts
@@ -71,7 +71,7 @@ backlight: backlight {
 		compatible = "pwm-backlight";
 		pwms = <&pwm 0 10000 0>;
 		enable-gpios = <&axp_gpio 1 GPIO_ACTIVE_HIGH>;
-
+		power-supply = <&reg_vcc3v3>;
 		brightness-levels = <0 10 20 30 40 50 60 70 80 90 100>;
 		default-brightness-level = <8>;
 	};
diff --git a/arch/arm/boot/dts/sun5i-reference-design-tablet.dtsi b/arch/arm/boot/dts/sun5i-reference-design-tablet.dtsi
index 1a9926d71410..6847f66699ac 100644
--- a/arch/arm/boot/dts/sun5i-reference-design-tablet.dtsi
+++ b/arch/arm/boot/dts/sun5i-reference-design-tablet.dtsi
@@ -55,6 +55,7 @@ backlight: backlight {
 		brightness-levels = <0 10 20 30 40 50 60 70 80 90 100>;
 		default-brightness-level = <8>;
 		enable-gpios = <&axp_gpio 1 GPIO_ACTIVE_HIGH>; /* AXP GPIO1 */
+		power-supply = <&reg_vcc3v0>;
 	};
 
 	chosen {
diff --git a/arch/arm/boot/dts/sun7i-a20-wexler-tab7200.dts b/arch/arm/boot/dts/sun7i-a20-wexler-tab7200.dts
index 6a66b0432dfa..fef02fcbbdf8 100644
--- a/arch/arm/boot/dts/sun7i-a20-wexler-tab7200.dts
+++ b/arch/arm/boot/dts/sun7i-a20-wexler-tab7200.dts
@@ -64,6 +64,7 @@ backlight {
 		brightness-levels = <0 10 20 30 40 50 60 70 80 90 100>;
 		default-brightness-level = <8>;
 		enable-gpios = <&pio 7 7 GPIO_ACTIVE_HIGH>; /* PH7 */
+		power-supply = <&reg_vcc3v3>;
 	};
 
 	chosen {
diff --git a/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts b/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
index bfc9bb277a49..83b01b03e08e 100644
--- a/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
+++ b/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
@@ -65,7 +65,7 @@ backlight: backlight {
 		compatible = "pwm-backlight";
 		pwms = <&pwm 0 50000 PWM_POLARITY_INVERTED>;
 		enable-gpios = <&pio 3 29 GPIO_ACTIVE_HIGH>;
-
+		power-supply = <&reg_sw>;
 		brightness-levels = <0 1 2 4 8 16 32 64 128 255>;
 		default-brightness-level = <9>;
 	};
diff --git a/arch/arm/boot/dts/sun8i-reference-design-tablet.dtsi b/arch/arm/boot/dts/sun8i-reference-design-tablet.dtsi
index b3d8b8f056cd..daf4be6416df 100644
--- a/arch/arm/boot/dts/sun8i-reference-design-tablet.dtsi
+++ b/arch/arm/boot/dts/sun8i-reference-design-tablet.dtsi
@@ -54,6 +54,7 @@ backlight: backlight {
 		brightness-levels = <0 10 20 30 40 50 60 70 80 90 100>;
 		default-brightness-level = <8>;
 		enable-gpios = <&pio 7 6 GPIO_ACTIVE_HIGH>; /* PH6 */
+		power-supply = <&reg_dc1sw>;
 	};
 
 	chosen {
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi
index bcf64998a829..bbc26abb1e10 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi
@@ -21,6 +21,7 @@ backlight: backlight {
 		compatible = "pwm-backlight";
 		pwms = <&r_pwm 0 50000 PWM_POLARITY_INVERTED>;
 		enable-gpios = <&pio 7 10 GPIO_ACTIVE_HIGH>; /* PH10 */
+		power-supply = <&reg_ps>;
 		/* Backlight configuration differs per PinePhone revision. */
 	};
 
@@ -50,6 +51,14 @@ led-2 {
 		};
 	};
 
+	reg_ps: ps-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "ps";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-boot-on;
+	};
+
 	reg_vbat_wifi: vbat-wifi {
 		compatible = "regulator-fixed";
 		regulator-min-microvolt = <3300000>;
-- 
2.29.2


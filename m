Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CC63D2F6060
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 12:40:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728569AbhANLif (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 06:38:35 -0500
Received: from wout2-smtp.messagingengine.com ([64.147.123.25]:52481 "EHLO
        wout2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728994AbhANLhT (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 14 Jan 2021 06:37:19 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.west.internal (Postfix) with ESMTP id 0436F14C6;
        Thu, 14 Jan 2021 06:35:50 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Thu, 14 Jan 2021 06:35:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=Y/K7EZIp+V0VD
        B5j6DLjlTSB2rAizMVVGKLlprjCEDo=; b=FEpiHFzqIBM7JU5PEDBwVa6awpMSJ
        bbjZh6/LfvrWwW5ERNlEZcQdx0XBA/SBQBHlCGkvJ6M6m6lPz4BAM4mXx/j5BsLH
        jeHNU/10RoYG4gSnYYprZrK9JMRD74dapVvEW4TyuWrlnAdTtI9Jh8c3oD1Lg53d
        n3NRBx12UHJeWKA3GptrSxefZaP0oV9YBScs/bI9HQb8t/UP+MdRFjLXFrQpgsQS
        9VRzkvh1zKVo0XBopexZYZ02HDtmfr3M/SuvWigPY7zjy8oXM7vetg1YuTsjpUsQ
        xuYxkR538spqrsaPRDLlQwQhrGaavEmDXeDA24hefR+nPPZ53Z9F8L2eA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm1; bh=Y/K7EZIp+V0VDB5j6DLjlTSB2rAizMVVGKLlprjCEDo=; b=jJesTVJA
        6ZpNlpdDh5252x3Ykhh7S2kVyHxc7zfXRTCNLfs1+W8NgnGuDcHbUviLirPj3lcD
        mp2kIEoKpFtViMOZHw6r/FS8HbHk0oH5vrENjs8Nvb3voWbPFDxohGI+XQ/RjqCl
        1jmb7g8HPZdJFCFLawS2IheIbardumXbdkzCdMfILpxTtKHmCXUg4NUaExmtZ2Kh
        bSKeLbNfpq+SKzRlqCspY1XE37Dzx8uPiIIg6dxTPnfEYc0xOda8HJ9Uf8WPTWuH
        ans9A96foDMngP49Ai7gxtzUE77RlpTpwtau9BrJ81CG9KASHpktMTP+azAzxsq/
        9PN0+kKCEVrlTQ==
X-ME-Sender: <xms:liwAYBUriMXeu_ZbtNNNappZcnoqiWUYaTkQ-Dvhb-rb3XHlwu4vVw>
    <xme:liwAYBlSAafpFzZRruPhkzgOpMB48awZlmrStC7sPekTCtGGBUA_2onIAvD4ruodH
    pt8D2BS8TPUaGeC0-U>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrtddtgddtfecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedunecurf
    grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:liwAYNbCvp9tbv8xtJWPK17A5J6NlB9A-cyqH67qjK8SP5cTCxkjng>
    <xmx:liwAYEWlcN36KFpKBuj-HpW51ssJHHDUXVYiL4E4r_-uAH96G-FOSQ>
    <xmx:liwAYLkgUutNgjY3LU-Trduzw-yPxqDVNjL3cfurGjzF0yuZANKBcQ>
    <xmx:liwAYECao9iAoZbgXdUCoNiUxcCCmavNpgZE0sMt8ZIfYZwJCPEiSA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id EAE541080057;
        Thu, 14 Jan 2021 06:35:49 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org
Cc:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 06/19] ARM: dts: sunxi: Fix the LED node names
Date:   Thu, 14 Jan 2021 12:35:25 +0100
Message-Id: <20210114113538.1233933-6-maxime@cerno.tech>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210114113538.1233933-1-maxime@cerno.tech>
References: <20210114113538.1233933-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

According to the LED bindings, the LED node names are supposed to be led
plus an optional suffix. Let's fix our users to use that new scheme.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm/boot/dts/sun4i-a10-a1000.dts                     | 4 ++--
 arch/arm/boot/dts/sun4i-a10-cubieboard.dts                | 4 ++--
 arch/arm/boot/dts/sun4i-a10-jesurun-q5.dts                | 2 +-
 arch/arm/boot/dts/sun4i-a10-marsboard.dts                 | 8 ++++----
 arch/arm/boot/dts/sun4i-a10-olinuxino-lime.dts            | 2 +-
 arch/arm/boot/dts/sun4i-a10-pcduino.dts                   | 4 ++--
 arch/arm/boot/dts/sun5i-a10s-auxtek-t003.dts              | 2 +-
 arch/arm/boot/dts/sun5i-a10s-auxtek-t004.dts              | 2 +-
 arch/arm/boot/dts/sun5i-a10s-mk802.dts                    | 2 +-
 arch/arm/boot/dts/sun5i-a10s-olinuxino-micro.dts          | 2 +-
 arch/arm/boot/dts/sun5i-a10s-r7-tv-dongle.dts             | 2 +-
 arch/arm/boot/dts/sun5i-a10s-wobo-i5.dts                  | 2 +-
 arch/arm/boot/dts/sun5i-a13-licheepi-one.dts              | 6 +++---
 arch/arm/boot/dts/sun5i-a13-olinuxino-micro.dts           | 2 +-
 arch/arm/boot/dts/sun5i-a13-olinuxino.dts                 | 2 +-
 arch/arm/boot/dts/sun5i-a13-pocketbook-touch-lux-3.dts    | 2 +-
 arch/arm/boot/dts/sun6i-a31-i7.dts                        | 2 +-
 arch/arm/boot/dts/sun6i-a31-m9.dts                        | 2 +-
 arch/arm/boot/dts/sun6i-a31-mele-a1000g-quad.dts          | 2 +-
 arch/arm/boot/dts/sun6i-a31s-sinovoip-bpi-m2.dts          | 6 +++---
 arch/arm/boot/dts/sun7i-a20-bananapi-m1-plus.dts          | 4 ++--
 arch/arm/boot/dts/sun7i-a20-bananapi.dts                  | 2 +-
 arch/arm/boot/dts/sun7i-a20-bananapro.dts                 | 4 ++--
 arch/arm/boot/dts/sun7i-a20-cubieboard2.dts               | 4 ++--
 arch/arm/boot/dts/sun7i-a20-cubietruck.dts                | 8 ++++----
 arch/arm/boot/dts/sun7i-a20-i12-tvbox.dts                 | 4 ++--
 arch/arm/boot/dts/sun7i-a20-itead-ibox.dts                | 4 ++--
 arch/arm/boot/dts/sun7i-a20-lamobo-r1.dts                 | 2 +-
 arch/arm/boot/dts/sun7i-a20-m3.dts                        | 2 +-
 arch/arm/boot/dts/sun7i-a20-olimex-som-evb.dts            | 2 +-
 arch/arm/boot/dts/sun7i-a20-olimex-som204-evb.dts         | 6 +++---
 arch/arm/boot/dts/sun7i-a20-olinuxino-lime.dts            | 2 +-
 arch/arm/boot/dts/sun7i-a20-olinuxino-lime2.dts           | 2 +-
 arch/arm/boot/dts/sun7i-a20-olinuxino-micro.dts           | 2 +-
 arch/arm/boot/dts/sun7i-a20-orangepi-mini.dts             | 4 ++--
 arch/arm/boot/dts/sun7i-a20-orangepi.dts                  | 2 +-
 arch/arm/boot/dts/sun7i-a20-pcduino3-nano.dts             | 6 ++----
 arch/arm/boot/dts/sun7i-a20-pcduino3.dts                  | 4 ++--
 arch/arm/boot/dts/sun8i-a33-inet-d978-rev2.dts            | 2 +-
 arch/arm/boot/dts/sun8i-a33-olinuxino.dts                 | 2 +-
 arch/arm/boot/dts/sun8i-a83t-bananapi-m3.dts              | 4 ++--
 arch/arm/boot/dts/sun8i-a83t-cubietruck-plus.dts          | 8 ++++----
 arch/arm/boot/dts/sun8i-h3-beelink-x2.dts                 | 4 ++--
 arch/arm/boot/dts/sun8i-h3-nanopi-duo2.dts                | 4 ++--
 arch/arm/boot/dts/sun8i-h3-nanopi-neo-air.dts             | 4 ++--
 arch/arm/boot/dts/sun8i-h3-nanopi.dtsi                    | 4 ++--
 arch/arm/boot/dts/sun8i-h3-orangepi-zero-plus2.dts        | 4 ++--
 arch/arm/boot/dts/sun8i-r16-bananapi-m2m.dts              | 6 +++---
 arch/arm/boot/dts/sun8i-r16-parrot.dts                    | 8 ++++----
 arch/arm/boot/dts/sun9i-a80-cubieboard4.dts               | 4 ++--
 arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts | 6 +++---
 arch/arm64/boot/dts/allwinner/sun50i-a64-nanopi-a64.dts   | 2 +-
 arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi   | 6 +++---
 arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts      | 4 ++--
 .../boot/dts/allwinner/sun50i-h5-nanopi-neo-plus2.dts     | 4 ++--
 arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-neo2.dts   | 4 ++--
 arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-pc2.dts  | 4 ++--
 .../arm64/boot/dts/allwinner/sun50i-h5-orangepi-prime.dts | 4 ++--
 .../boot/dts/allwinner/sun50i-h5-orangepi-zero-plus.dts   | 4 ++--
 .../boot/dts/allwinner/sun50i-h5-orangepi-zero-plus2.dts  | 4 ++--
 arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts   | 2 +-
 arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts    | 4 ++--
 arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi     | 4 ++--
 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts      | 6 +++---
 64 files changed, 117 insertions(+), 119 deletions(-)

diff --git a/arch/arm/boot/dts/sun4i-a10-a1000.dts b/arch/arm/boot/dts/sun4i-a10-a1000.dts
index af8ab736fd3c..20f9ed244851 100644
--- a/arch/arm/boot/dts/sun4i-a10-a1000.dts
+++ b/arch/arm/boot/dts/sun4i-a10-a1000.dts
@@ -74,12 +74,12 @@ hdmi_con_in: endpoint {
 	leds {
 		compatible = "gpio-leds";
 
-		red {
+		led-0 {
 			label = "a1000:red:usr";
 			gpios = <&pio 7 10 GPIO_ACTIVE_HIGH>;
 		};
 
-		blue {
+		led-1 {
 			label = "a1000:blue:pwr";
 			gpios = <&pio 7 20 GPIO_ACTIVE_HIGH>;
 			default-state = "on";
diff --git a/arch/arm/boot/dts/sun4i-a10-cubieboard.dts b/arch/arm/boot/dts/sun4i-a10-cubieboard.dts
index 6ca02e824acc..0645d6064235 100644
--- a/arch/arm/boot/dts/sun4i-a10-cubieboard.dts
+++ b/arch/arm/boot/dts/sun4i-a10-cubieboard.dts
@@ -75,12 +75,12 @@ leds {
 		pinctrl-names = "default";
 		pinctrl-0 = <&led_pins_cubieboard>;
 
-		blue {
+		led-0 {
 			label = "cubieboard:blue:usr";
 			gpios = <&pio 7 21 GPIO_ACTIVE_HIGH>; /* LED1 */
 		};
 
-		green {
+		led-1 {
 			label = "cubieboard:green:usr";
 			gpios = <&pio 7 20 GPIO_ACTIVE_HIGH>; /* LED2 */
 			linux,default-trigger = "heartbeat";
diff --git a/arch/arm/boot/dts/sun4i-a10-jesurun-q5.dts b/arch/arm/boot/dts/sun4i-a10-jesurun-q5.dts
index 8a7b4c53d278..1aeb0bd5519e 100644
--- a/arch/arm/boot/dts/sun4i-a10-jesurun-q5.dts
+++ b/arch/arm/boot/dts/sun4i-a10-jesurun-q5.dts
@@ -63,7 +63,7 @@ chosen {
 	leds {
 		compatible = "gpio-leds";
 
-		green {
+		led {
 			label = "q5:green:usr";
 			gpios = <&pio 7 20 GPIO_ACTIVE_HIGH>;  /* PH20 */
 		};
diff --git a/arch/arm/boot/dts/sun4i-a10-marsboard.dts b/arch/arm/boot/dts/sun4i-a10-marsboard.dts
index a843e57530ed..81fdb217d339 100644
--- a/arch/arm/boot/dts/sun4i-a10-marsboard.dts
+++ b/arch/arm/boot/dts/sun4i-a10-marsboard.dts
@@ -62,22 +62,22 @@ chosen {
 	leds {
 		compatible = "gpio-leds";
 
-		red1 {
+		led-0 {
 			label = "marsboard:red1:usr";
 			gpios = <&pio 1 5 GPIO_ACTIVE_HIGH>;
 		};
 
-		red2 {
+		led-1 {
 			label = "marsboard:red2:usr";
 			gpios = <&pio 1 6 GPIO_ACTIVE_HIGH>;
 		};
 
-		red3 {
+		led-2 {
 			label = "marsboard:red3:usr";
 			gpios = <&pio 1 7 GPIO_ACTIVE_HIGH>;
 		};
 
-		red4 {
+		led-3 {
 			label = "marsboard:red4:usr";
 			gpios = <&pio 1 8 GPIO_ACTIVE_HIGH>;
 		};
diff --git a/arch/arm/boot/dts/sun4i-a10-olinuxino-lime.dts b/arch/arm/boot/dts/sun4i-a10-olinuxino-lime.dts
index 845f76824d57..ad0e25af45be 100644
--- a/arch/arm/boot/dts/sun4i-a10-olinuxino-lime.dts
+++ b/arch/arm/boot/dts/sun4i-a10-olinuxino-lime.dts
@@ -74,7 +74,7 @@ leds {
 		pinctrl-names = "default";
 		pinctrl-0 = <&led_pins_olinuxinolime>;
 
-		green {
+		led {
 			label = "a10-olinuxino-lime:green:usr";
 			gpios = <&pio 7 2 GPIO_ACTIVE_HIGH>;
 			default-state = "on";
diff --git a/arch/arm/boot/dts/sun4i-a10-pcduino.dts b/arch/arm/boot/dts/sun4i-a10-pcduino.dts
index 83287b6c975e..1ac82376baef 100644
--- a/arch/arm/boot/dts/sun4i-a10-pcduino.dts
+++ b/arch/arm/boot/dts/sun4i-a10-pcduino.dts
@@ -63,12 +63,12 @@ chosen {
 	leds {
 		compatible = "gpio-leds";
 
-		tx {
+		led-0 {
 			label = "pcduino:green:tx";
 			gpios = <&pio 7 15 GPIO_ACTIVE_LOW>;
 		};
 
-		rx {
+		led-1 {
 			label = "pcduino:green:rx";
 			gpios = <&pio 7 16 GPIO_ACTIVE_LOW>;
 		};
diff --git a/arch/arm/boot/dts/sun5i-a10s-auxtek-t003.dts b/arch/arm/boot/dts/sun5i-a10s-auxtek-t003.dts
index 64d50fcfcd3a..04b0e6d28769 100644
--- a/arch/arm/boot/dts/sun5i-a10s-auxtek-t003.dts
+++ b/arch/arm/boot/dts/sun5i-a10s-auxtek-t003.dts
@@ -62,7 +62,7 @@ leds {
 		pinctrl-names = "default";
 		pinctrl-0 = <&led_pins_t003>;
 
-		red {
+		led {
 			label = "t003-tv-dongle:red:usr";
 			gpios = <&pio 1 2 GPIO_ACTIVE_HIGH>; /* PB2 */
 			default-state = "on";
diff --git a/arch/arm/boot/dts/sun5i-a10s-auxtek-t004.dts b/arch/arm/boot/dts/sun5i-a10s-auxtek-t004.dts
index 8af0eae2ddc1..667bc2dc1ea9 100644
--- a/arch/arm/boot/dts/sun5i-a10s-auxtek-t004.dts
+++ b/arch/arm/boot/dts/sun5i-a10s-auxtek-t004.dts
@@ -62,7 +62,7 @@ leds {
 		pinctrl-names = "default";
 		pinctrl-0 = <&led_pins_t004>;
 
-		red {
+		led {
 			label = "t004-tv-dongle:red:usr";
 			gpios = <&pio 1 2 GPIO_ACTIVE_HIGH>; /* PB2 */
 			default-state = "on";
diff --git a/arch/arm/boot/dts/sun5i-a10s-mk802.dts b/arch/arm/boot/dts/sun5i-a10s-mk802.dts
index 6e90ccb267aa..d0219404c231 100644
--- a/arch/arm/boot/dts/sun5i-a10s-mk802.dts
+++ b/arch/arm/boot/dts/sun5i-a10s-mk802.dts
@@ -60,7 +60,7 @@ chosen {
 	leds {
 		compatible = "gpio-leds";
 
-		red {
+		led {
 			label = "mk802:red:usr";
 			gpios = <&pio 1 2 GPIO_ACTIVE_HIGH>; /* PB2 */
 		};
diff --git a/arch/arm/boot/dts/sun5i-a10s-olinuxino-micro.dts b/arch/arm/boot/dts/sun5i-a10s-olinuxino-micro.dts
index d6bb82c295f0..5832bb31fc51 100644
--- a/arch/arm/boot/dts/sun5i-a10s-olinuxino-micro.dts
+++ b/arch/arm/boot/dts/sun5i-a10s-olinuxino-micro.dts
@@ -79,7 +79,7 @@ leds {
 		pinctrl-names = "default";
 		pinctrl-0 = <&led_pins_olinuxino>;
 
-		green {
+		led {
 			label = "a10s-olinuxino-micro:green:usr";
 			gpios = <&pio 4 3 GPIO_ACTIVE_HIGH>;
 			default-state = "on";
diff --git a/arch/arm/boot/dts/sun5i-a10s-r7-tv-dongle.dts b/arch/arm/boot/dts/sun5i-a10s-r7-tv-dongle.dts
index b2a49a216ebf..964360f0610a 100644
--- a/arch/arm/boot/dts/sun5i-a10s-r7-tv-dongle.dts
+++ b/arch/arm/boot/dts/sun5i-a10s-r7-tv-dongle.dts
@@ -63,7 +63,7 @@ leds {
 		pinctrl-names = "default";
 		pinctrl-0 = <&led_pins_r7>;
 
-		green {
+		led {
 			label = "r7-tv-dongle:green:usr";
 			gpios = <&pio 1 2 GPIO_ACTIVE_HIGH>;
 			default-state = "on";
diff --git a/arch/arm/boot/dts/sun5i-a10s-wobo-i5.dts b/arch/arm/boot/dts/sun5i-a10s-wobo-i5.dts
index 1f74ba1634cc..ef8baa992687 100644
--- a/arch/arm/boot/dts/sun5i-a10s-wobo-i5.dts
+++ b/arch/arm/boot/dts/sun5i-a10s-wobo-i5.dts
@@ -62,7 +62,7 @@ chosen {
 	leds {
 		compatible = "gpio-leds";
 
-		blue {
+		led {
 			label = "a10s-wobo-i5:blue:usr";
 			gpios = <&pio 1 2 GPIO_ACTIVE_HIGH>;
 			default-state = "on";
diff --git a/arch/arm/boot/dts/sun5i-a13-licheepi-one.dts b/arch/arm/boot/dts/sun5i-a13-licheepi-one.dts
index ba8d75b3c716..2ce361f8fede 100644
--- a/arch/arm/boot/dts/sun5i-a13-licheepi-one.dts
+++ b/arch/arm/boot/dts/sun5i-a13-licheepi-one.dts
@@ -66,18 +66,18 @@ chosen {
 	leds {
 		compatible = "gpio-leds";
 
-		red {
+		led-0 {
 			label ="licheepi:red:usr";
 			gpios = <&pio 2 5 GPIO_ACTIVE_LOW>;
 		};
 
-		green {
+		led-1 {
 			label ="licheepi:green:usr";
 			gpios = <&pio 2 19 GPIO_ACTIVE_LOW>;
 			default-state = "on";
 		};
 
-		blue {
+		led-2 {
 			label ="licheepi:blue:usr";
 			gpios = <&pio 2 4 GPIO_ACTIVE_LOW>;
 		};
diff --git a/arch/arm/boot/dts/sun5i-a13-olinuxino-micro.dts b/arch/arm/boot/dts/sun5i-a13-olinuxino-micro.dts
index 5df398d77238..bfe1075e62cc 100644
--- a/arch/arm/boot/dts/sun5i-a13-olinuxino-micro.dts
+++ b/arch/arm/boot/dts/sun5i-a13-olinuxino-micro.dts
@@ -64,7 +64,7 @@ leds {
 		pinctrl-names = "default";
 		pinctrl-0 = <&led_pins_olinuxinom>;
 
-		power {
+		led {
 			label = "a13-olinuxino-micro:green:power";
 			gpios = <&pio 6 9 GPIO_ACTIVE_HIGH>;
 			default-state = "on";
diff --git a/arch/arm/boot/dts/sun5i-a13-olinuxino.dts b/arch/arm/boot/dts/sun5i-a13-olinuxino.dts
index 39101228a755..fadeae3cd8bb 100644
--- a/arch/arm/boot/dts/sun5i-a13-olinuxino.dts
+++ b/arch/arm/boot/dts/sun5i-a13-olinuxino.dts
@@ -66,7 +66,7 @@ leds {
 		pinctrl-names = "default";
 		pinctrl-0 = <&led_pins_olinuxino>;
 
-		power {
+		led {
 			gpios = <&pio 6 9 GPIO_ACTIVE_HIGH>;
 			default-state = "on";
 		};
diff --git a/arch/arm/boot/dts/sun5i-a13-pocketbook-touch-lux-3.dts b/arch/arm/boot/dts/sun5i-a13-pocketbook-touch-lux-3.dts
index e9ef97c9c893..3428bebceff0 100644
--- a/arch/arm/boot/dts/sun5i-a13-pocketbook-touch-lux-3.dts
+++ b/arch/arm/boot/dts/sun5i-a13-pocketbook-touch-lux-3.dts
@@ -37,7 +37,7 @@ chosen {
 	leds {
 		compatible = "gpio-leds";
 
-		power {
+		led {
 			gpios = <&pio 4 8 GPIO_ACTIVE_LOW>; /* PE8 */
 			default-state = "on";
 		};
diff --git a/arch/arm/boot/dts/sun6i-a31-i7.dts b/arch/arm/boot/dts/sun6i-a31-i7.dts
index 6cc8ccf53d88..744723d956f0 100644
--- a/arch/arm/boot/dts/sun6i-a31-i7.dts
+++ b/arch/arm/boot/dts/sun6i-a31-i7.dts
@@ -72,7 +72,7 @@ hdmi_con_in: endpoint {
 	leds {
 		compatible = "gpio-leds";
 
-		blue {
+		led {
 			label = "i7:blue:usr";
 			gpios = <&pio 7 13 GPIO_ACTIVE_HIGH>;
 		};
diff --git a/arch/arm/boot/dts/sun6i-a31-m9.dts b/arch/arm/boot/dts/sun6i-a31-m9.dts
index a645c8f4257c..aff716b523c4 100644
--- a/arch/arm/boot/dts/sun6i-a31-m9.dts
+++ b/arch/arm/boot/dts/sun6i-a31-m9.dts
@@ -61,7 +61,7 @@ chosen {
 	leds {
 		compatible = "gpio-leds";
 
-		blue {
+		led {
 			label = "m9:blue:pwr";
 			gpios = <&pio 7 13 GPIO_ACTIVE_HIGH>;
 			default-state = "on";
diff --git a/arch/arm/boot/dts/sun6i-a31-mele-a1000g-quad.dts b/arch/arm/boot/dts/sun6i-a31-mele-a1000g-quad.dts
index 648f24746234..959ed9ce4b48 100644
--- a/arch/arm/boot/dts/sun6i-a31-mele-a1000g-quad.dts
+++ b/arch/arm/boot/dts/sun6i-a31-mele-a1000g-quad.dts
@@ -61,7 +61,7 @@ chosen {
 	leds {
 		compatible = "gpio-leds";
 
-		blue {
+		led {
 			label = "a1000g:blue:pwr";
 			gpios = <&pio 7 13 GPIO_ACTIVE_HIGH>;
 			default-state = "on";
diff --git a/arch/arm/boot/dts/sun6i-a31s-sinovoip-bpi-m2.dts b/arch/arm/boot/dts/sun6i-a31s-sinovoip-bpi-m2.dts
index 367006fb280d..b4ce60a3b194 100644
--- a/arch/arm/boot/dts/sun6i-a31s-sinovoip-bpi-m2.dts
+++ b/arch/arm/boot/dts/sun6i-a31s-sinovoip-bpi-m2.dts
@@ -59,17 +59,17 @@ chosen {
 	leds {
 		compatible = "gpio-leds";
 
-		blue {
+		led-0 {
 			label = "bpi-m2:blue:usr";
 			gpios = <&pio 6 11 GPIO_ACTIVE_HIGH>; /* PG11 */
 		};
 
-		green {
+		led-1 {
 			label = "bpi-m2:green:usr";
 			gpios = <&pio 6 10 GPIO_ACTIVE_HIGH>; /* PG10 */
 		};
 
-		red {
+		led-2 {
 			label = "bpi-m2:red:usr";
 			gpios = <&pio 6 5 GPIO_ACTIVE_HIGH>; /* PG5 */
 		};
diff --git a/arch/arm/boot/dts/sun7i-a20-bananapi-m1-plus.dts b/arch/arm/boot/dts/sun7i-a20-bananapi-m1-plus.dts
index 8945dbb114a2..caa935ca4f19 100644
--- a/arch/arm/boot/dts/sun7i-a20-bananapi-m1-plus.dts
+++ b/arch/arm/boot/dts/sun7i-a20-bananapi-m1-plus.dts
@@ -74,12 +74,12 @@ hdmi_con_in: endpoint {
 	leds {
 		compatible = "gpio-leds";
 
-		green {
+		led-0 {
 			label = "bananapi-m1-plus:green:usr";
 			gpios = <&pio 7 24 GPIO_ACTIVE_HIGH>;
 		};
 
-		pwr {
+		led-1 {
 			label = "bananapi-m1-plus:pwr:usr";
 			gpios = <&pio 7 25 GPIO_ACTIVE_HIGH>;
 			default-state = "on";
diff --git a/arch/arm/boot/dts/sun7i-a20-bananapi.dts b/arch/arm/boot/dts/sun7i-a20-bananapi.dts
index 0b3d9ae75650..9d792d7a0f92 100644
--- a/arch/arm/boot/dts/sun7i-a20-bananapi.dts
+++ b/arch/arm/boot/dts/sun7i-a20-bananapi.dts
@@ -77,7 +77,7 @@ hdmi_con_in: endpoint {
 	leds {
 		compatible = "gpio-leds";
 
-		green {
+		led {
 			label = "bananapi:green:usr";
 			gpios = <&pio 7 24 GPIO_ACTIVE_HIGH>;
 		};
diff --git a/arch/arm/boot/dts/sun7i-a20-bananapro.dts b/arch/arm/boot/dts/sun7i-a20-bananapro.dts
index 01ccff756996..042badd50b42 100644
--- a/arch/arm/boot/dts/sun7i-a20-bananapro.dts
+++ b/arch/arm/boot/dts/sun7i-a20-bananapro.dts
@@ -63,12 +63,12 @@ chosen {
 	leds {
 		compatible = "gpio-leds";
 
-		blue {
+		led-0 {
 			label = "bananapro:blue:usr";
 			gpios = <&pio 6 2 GPIO_ACTIVE_HIGH>;
 		};
 
-		green {
+		led-1 {
 			label = "bananapro:green:usr";
 			gpios = <&pio 7 24 GPIO_ACTIVE_HIGH>;
 		};
diff --git a/arch/arm/boot/dts/sun7i-a20-cubieboard2.dts b/arch/arm/boot/dts/sun7i-a20-cubieboard2.dts
index b8203e4ef21c..e35e6990c4b2 100644
--- a/arch/arm/boot/dts/sun7i-a20-cubieboard2.dts
+++ b/arch/arm/boot/dts/sun7i-a20-cubieboard2.dts
@@ -75,12 +75,12 @@ hdmi_con_in: endpoint {
 	leds {
 		compatible = "gpio-leds";
 
-		blue {
+		led-0 {
 			label = "cubieboard2:blue:usr";
 			gpios = <&pio 7 21 GPIO_ACTIVE_HIGH>;
 		};
 
-		green {
+		led-1 {
 			label = "cubieboard2:green:usr";
 			gpios = <&pio 7 20 GPIO_ACTIVE_HIGH>;
 		};
diff --git a/arch/arm/boot/dts/sun7i-a20-cubietruck.dts b/arch/arm/boot/dts/sun7i-a20-cubietruck.dts
index 9109ca0919ad..52160e368304 100644
--- a/arch/arm/boot/dts/sun7i-a20-cubietruck.dts
+++ b/arch/arm/boot/dts/sun7i-a20-cubietruck.dts
@@ -75,22 +75,22 @@ hdmi_con_in: endpoint {
 	leds {
 		compatible = "gpio-leds";
 
-		blue {
+		led-0 {
 			label = "cubietruck:blue:usr";
 			gpios = <&pio 7 21 GPIO_ACTIVE_HIGH>;
 		};
 
-		orange {
+		led-1 {
 			label = "cubietruck:orange:usr";
 			gpios = <&pio 7 20 GPIO_ACTIVE_HIGH>;
 		};
 
-		white {
+		led-2 {
 			label = "cubietruck:white:usr";
 			gpios = <&pio 7 11 GPIO_ACTIVE_HIGH>;
 		};
 
-		green {
+		led-3 {
 			label = "cubietruck:green:usr";
 			gpios = <&pio 7 7 GPIO_ACTIVE_HIGH>;
 		};
diff --git a/arch/arm/boot/dts/sun7i-a20-i12-tvbox.dts b/arch/arm/boot/dts/sun7i-a20-i12-tvbox.dts
index 358ed5f1b1c1..b21ddd0ec1c2 100644
--- a/arch/arm/boot/dts/sun7i-a20-i12-tvbox.dts
+++ b/arch/arm/boot/dts/sun7i-a20-i12-tvbox.dts
@@ -62,12 +62,12 @@ chosen {
 	leds {
 		compatible = "gpio-leds";
 
-		red {
+		led-0 {
 			label = "i12_tvbox:red:usr";
 			gpios = <&pio 7 9 GPIO_ACTIVE_LOW>;
 		};
 
-		blue {
+		led-1 {
 			label = "i12_tvbox:blue:usr";
 			gpios = <&pio 7 20 GPIO_ACTIVE_HIGH>;
 		};
diff --git a/arch/arm/boot/dts/sun7i-a20-itead-ibox.dts b/arch/arm/boot/dts/sun7i-a20-itead-ibox.dts
index 946c27278321..8ff83016ff5a 100644
--- a/arch/arm/boot/dts/sun7i-a20-itead-ibox.dts
+++ b/arch/arm/boot/dts/sun7i-a20-itead-ibox.dts
@@ -53,13 +53,13 @@ leds {
 		pinctrl-names = "default";
 		pinctrl-0 = <&led_pins_itead_core>;
 
-		green {
+		led-0 {
 			label = "itead_core:green:usr";
 			gpios = <&pio 7 20 GPIO_ACTIVE_HIGH>;
 			default-state = "on";
 		};
 
-		blue {
+		led-1 {
 			label = "itead_core:blue:usr";
 			gpios = <&pio 7 21 GPIO_ACTIVE_HIGH>;
 			default-state = "on";
diff --git a/arch/arm/boot/dts/sun7i-a20-lamobo-r1.dts b/arch/arm/boot/dts/sun7i-a20-lamobo-r1.dts
index 17fa8901fc00..97518afe4658 100644
--- a/arch/arm/boot/dts/sun7i-a20-lamobo-r1.dts
+++ b/arch/arm/boot/dts/sun7i-a20-lamobo-r1.dts
@@ -75,7 +75,7 @@ hdmi_con_in: endpoint {
 	leds {
 		compatible = "gpio-leds";
 
-		green {
+		led {
 			label = "lamobo_r1:green:usr";
 			gpios = <&pio 7 24 GPIO_ACTIVE_HIGH>;
 		};
diff --git a/arch/arm/boot/dts/sun7i-a20-m3.dts b/arch/arm/boot/dts/sun7i-a20-m3.dts
index 6bff9e731fc3..f161d5238860 100644
--- a/arch/arm/boot/dts/sun7i-a20-m3.dts
+++ b/arch/arm/boot/dts/sun7i-a20-m3.dts
@@ -64,7 +64,7 @@ chosen {
 	leds {
 		compatible = "gpio-leds";
 
-		blue {
+		led {
 			label = "m3:blue:usr";
 			gpios = <&pio 7 20 GPIO_ACTIVE_HIGH>;
 		};
diff --git a/arch/arm/boot/dts/sun7i-a20-olimex-som-evb.dts b/arch/arm/boot/dts/sun7i-a20-olimex-som-evb.dts
index 6f9c54b8e49a..f05ee32bc9cb 100644
--- a/arch/arm/boot/dts/sun7i-a20-olimex-som-evb.dts
+++ b/arch/arm/boot/dts/sun7i-a20-olimex-som-evb.dts
@@ -75,7 +75,7 @@ hdmi_con_in: endpoint {
 	leds {
 		compatible = "gpio-leds";
 
-		green {
+		led {
 			label = "a20-olimex-som-evb:green:usr";
 			gpios = <&pio 7 2 GPIO_ACTIVE_HIGH>;
 			default-state = "on";
diff --git a/arch/arm/boot/dts/sun7i-a20-olimex-som204-evb.dts b/arch/arm/boot/dts/sun7i-a20-olimex-som204-evb.dts
index 230d62a6b8f1..54af6c18075b 100644
--- a/arch/arm/boot/dts/sun7i-a20-olimex-som204-evb.dts
+++ b/arch/arm/boot/dts/sun7i-a20-olimex-som204-evb.dts
@@ -46,19 +46,19 @@ hdmi_con_in: endpoint {
 	leds {
 		compatible = "gpio-leds";
 
-		stat {
+		led-0 {
 			label = "a20-som204-evb:green:stat";
 			gpios = <&pio 8 0 GPIO_ACTIVE_HIGH>;
 			default-state = "on";
 		};
 
-		led1 {
+		led-1 {
 			label = "a20-som204-evb:green:led1";
 			gpios = <&pio 8 10 GPIO_ACTIVE_HIGH>;
 			default-state = "on";
 		};
 
-		led2 {
+		led-2 {
 			label = "a20-som204-evb:yellow:led2";
 			gpios = <&pio 8 11 GPIO_ACTIVE_HIGH>;
 			default-state = "on";
diff --git a/arch/arm/boot/dts/sun7i-a20-olinuxino-lime.dts b/arch/arm/boot/dts/sun7i-a20-olinuxino-lime.dts
index 2adbac860119..92938d022295 100644
--- a/arch/arm/boot/dts/sun7i-a20-olinuxino-lime.dts
+++ b/arch/arm/boot/dts/sun7i-a20-olinuxino-lime.dts
@@ -78,7 +78,7 @@ leds {
 		pinctrl-names = "default";
 		pinctrl-0 = <&led_pins_olinuxinolime>;
 
-		green {
+		led {
 			label = "a20-olinuxino-lime:green:usr";
 			gpios = <&pio 7 2 GPIO_ACTIVE_HIGH>;
 			default-state = "on";
diff --git a/arch/arm/boot/dts/sun7i-a20-olinuxino-lime2.dts b/arch/arm/boot/dts/sun7i-a20-olinuxino-lime2.dts
index 9ba62774e89a..8077f1716fbc 100644
--- a/arch/arm/boot/dts/sun7i-a20-olinuxino-lime2.dts
+++ b/arch/arm/boot/dts/sun7i-a20-olinuxino-lime2.dts
@@ -75,7 +75,7 @@ leds {
 		pinctrl-names = "default";
 		pinctrl-0 = <&led_pins_olinuxinolime>;
 
-		green {
+		led {
 			label = "a20-olinuxino-lime2:green:usr";
 			gpios = <&pio 7 2 GPIO_ACTIVE_HIGH>;
 			default-state = "on";
diff --git a/arch/arm/boot/dts/sun7i-a20-olinuxino-micro.dts b/arch/arm/boot/dts/sun7i-a20-olinuxino-micro.dts
index 359bd0d5b3b1..a1b89b2a2999 100644
--- a/arch/arm/boot/dts/sun7i-a20-olinuxino-micro.dts
+++ b/arch/arm/boot/dts/sun7i-a20-olinuxino-micro.dts
@@ -82,7 +82,7 @@ leds {
 		pinctrl-names = "default";
 		pinctrl-0 = <&led_pins_olinuxino>;
 
-		green {
+		led {
 			label = "a20-olinuxino-micro:green:usr";
 			gpios = <&pio 7 2 GPIO_ACTIVE_HIGH>;
 			default-state = "on";
diff --git a/arch/arm/boot/dts/sun7i-a20-orangepi-mini.dts b/arch/arm/boot/dts/sun7i-a20-orangepi-mini.dts
index 2e328d2cefc1..84efa01e7cba 100644
--- a/arch/arm/boot/dts/sun7i-a20-orangepi-mini.dts
+++ b/arch/arm/boot/dts/sun7i-a20-orangepi-mini.dts
@@ -75,12 +75,12 @@ hdmi_con_in: endpoint {
 	leds {
 		compatible = "gpio-leds";
 
-		green {
+		led-0 {
 			label = "orangepi:green:usr";
 			gpios = <&pio 7 24 GPIO_ACTIVE_HIGH>; /* PH24 */
 		};
 
-		blue {
+		led-1 {
 			label = "orangepi:blue:usr";
 			gpios = <&pio 7 25 GPIO_ACTIVE_HIGH>; /* PH25 */
 		};
diff --git a/arch/arm/boot/dts/sun7i-a20-orangepi.dts b/arch/arm/boot/dts/sun7i-a20-orangepi.dts
index d75b2e2bab28..5d77f1d9818f 100644
--- a/arch/arm/boot/dts/sun7i-a20-orangepi.dts
+++ b/arch/arm/boot/dts/sun7i-a20-orangepi.dts
@@ -64,7 +64,7 @@ chosen {
 	leds {
 		compatible = "gpio-leds";
 
-		green {
+		led {
 			label = "orangepi:green:usr";
 			gpios = <&pio 7 24 GPIO_ACTIVE_HIGH>; /* PH24 */
 		};
diff --git a/arch/arm/boot/dts/sun7i-a20-pcduino3-nano.dts b/arch/arm/boot/dts/sun7i-a20-pcduino3-nano.dts
index bf38c66c1815..e40ecb48d726 100644
--- a/arch/arm/boot/dts/sun7i-a20-pcduino3-nano.dts
+++ b/arch/arm/boot/dts/sun7i-a20-pcduino3-nano.dts
@@ -72,14 +72,12 @@ hdmi_con_in: endpoint {
 	leds {
 		compatible = "gpio-leds";
 
-		/* Marked "LED3" on the PCB. */
-		usr1 {
+		led-3 {
 			label = "pcduino3-nano:green:usr1";
 			gpios = <&pio 7 16 GPIO_ACTIVE_LOW>; /* PH16 */
 		};
 
-		/* Marked "LED4" on the PCB. */
-		usr2 {
+		led-4 {
 			label = "pcduino3-nano:green:usr2";
 			gpios = <&pio 7 15 GPIO_ACTIVE_LOW>; /* PH15 */
 		};
diff --git a/arch/arm/boot/dts/sun7i-a20-pcduino3.dts b/arch/arm/boot/dts/sun7i-a20-pcduino3.dts
index cc8271d777b8..4f8d55d3ba79 100644
--- a/arch/arm/boot/dts/sun7i-a20-pcduino3.dts
+++ b/arch/arm/boot/dts/sun7i-a20-pcduino3.dts
@@ -64,12 +64,12 @@ chosen {
 	leds {
 		compatible = "gpio-leds";
 
-		tx {
+		led-0 {
 			label = "pcduino3:green:tx";
 			gpios = <&pio 7 15 GPIO_ACTIVE_LOW>;
 		};
 
-		rx {
+		led-1 {
 			label = "pcduino3:green:rx";
 			gpios = <&pio 7 16 GPIO_ACTIVE_LOW>;
 		};
diff --git a/arch/arm/boot/dts/sun8i-a33-inet-d978-rev2.dts b/arch/arm/boot/dts/sun8i-a33-inet-d978-rev2.dts
index 317763069c0a..065cb620aa99 100644
--- a/arch/arm/boot/dts/sun8i-a33-inet-d978-rev2.dts
+++ b/arch/arm/boot/dts/sun8i-a33-inet-d978-rev2.dts
@@ -63,7 +63,7 @@ leds {
 		pinctrl-names = "default";
 		pinctrl-0 = <&led_pin_d978>;
 
-		home {
+		led {
 			label = "d978:blue:home";
 			gpios = <&r_pio 0 5 GPIO_ACTIVE_HIGH>; /* PL5 */
 		};
diff --git a/arch/arm/boot/dts/sun8i-a33-olinuxino.dts b/arch/arm/boot/dts/sun8i-a33-olinuxino.dts
index a1953b2872d0..9adf58f866d6 100644
--- a/arch/arm/boot/dts/sun8i-a33-olinuxino.dts
+++ b/arch/arm/boot/dts/sun8i-a33-olinuxino.dts
@@ -62,7 +62,7 @@ chosen {
 	leds {
 		compatible = "gpio-leds";
 
-		green {
+		led {
 			label = "a33-olinuxino:green:usr";
 			gpios = <&pio 1 7 GPIO_ACTIVE_HIGH>;
 		};
diff --git a/arch/arm/boot/dts/sun8i-a83t-bananapi-m3.dts b/arch/arm/boot/dts/sun8i-a83t-bananapi-m3.dts
index 431f70234d36..b60016a4429c 100644
--- a/arch/arm/boot/dts/sun8i-a83t-bananapi-m3.dts
+++ b/arch/arm/boot/dts/sun8i-a83t-bananapi-m3.dts
@@ -74,12 +74,12 @@ hdmi_con_in: endpoint {
 	leds {
 		compatible = "gpio-leds";
 
-		blue {
+		led-0 {
 			label = "bananapi-m3:blue:usr";
 			gpios = <&axp_gpio 1 GPIO_ACTIVE_HIGH>;
 		};
 
-		green {
+		led-1 {
 			label = "bananapi-m3:green:usr";
 			gpios = <&axp_gpio 0 GPIO_ACTIVE_HIGH>;
 		};
diff --git a/arch/arm/boot/dts/sun8i-a83t-cubietruck-plus.dts b/arch/arm/boot/dts/sun8i-a83t-cubietruck-plus.dts
index d8326a5c681d..e26af7cf10e0 100644
--- a/arch/arm/boot/dts/sun8i-a83t-cubietruck-plus.dts
+++ b/arch/arm/boot/dts/sun8i-a83t-cubietruck-plus.dts
@@ -74,22 +74,22 @@ hdmi_con_in: endpoint {
 	leds {
 		compatible = "gpio-leds";
 
-		blue {
+		led-0 {
 			label = "cubietruck-plus:blue:usr";
 			gpios = <&pio 3 25 GPIO_ACTIVE_HIGH>; /* PD25 */
 		};
 
-		orange {
+		led-1 {
 			label = "cubietruck-plus:orange:usr";
 			gpios = <&pio 3 26 GPIO_ACTIVE_HIGH>; /* PD26 */
 		};
 
-		white {
+		led-2 {
 			label = "cubietruck-plus:white:usr";
 			gpios = <&pio 3 27 GPIO_ACTIVE_HIGH>; /* PD27 */
 		};
 
-		green {
+		led-3 {
 			label = "cubietruck-plus:green:usr";
 			gpios = <&pio 4 4 GPIO_ACTIVE_HIGH>; /* PE4 */
 		};
diff --git a/arch/arm/boot/dts/sun8i-h3-beelink-x2.dts b/arch/arm/boot/dts/sun8i-h3-beelink-x2.dts
index 45a24441ff18..62b5280ec093 100644
--- a/arch/arm/boot/dts/sun8i-h3-beelink-x2.dts
+++ b/arch/arm/boot/dts/sun8i-h3-beelink-x2.dts
@@ -75,13 +75,13 @@ hdmi_con_in: endpoint {
 	leds {
 		compatible = "gpio-leds";
 
-		blue {
+		led-0 {
 			label = "beelink-x2:blue:pwr";
 			gpios = <&r_pio 0 10 GPIO_ACTIVE_HIGH>; /* PL10 */
 			default-state = "on";
 		};
 
-		red {
+		led-1 {
 			label = "beelink-x2:red:standby";
 			gpios = <&pio 0 15 GPIO_ACTIVE_HIGH>; /* PA15 */
 		};
diff --git a/arch/arm/boot/dts/sun8i-h3-nanopi-duo2.dts b/arch/arm/boot/dts/sun8i-h3-nanopi-duo2.dts
index 6b149271ef13..8e7dfcffe1fb 100644
--- a/arch/arm/boot/dts/sun8i-h3-nanopi-duo2.dts
+++ b/arch/arm/boot/dts/sun8i-h3-nanopi-duo2.dts
@@ -25,13 +25,13 @@ chosen {
 	leds {
 		compatible = "gpio-leds";
 
-		pwr {
+		led-0 {
 			label = "nanopi:red:pwr";
 			gpios = <&r_pio 0 10 GPIO_ACTIVE_HIGH>; /* PL10 */
 			default-state = "on";
 		};
 
-		status {
+		led-1 {
 			label = "nanopi:green:status";
 			gpios = <&pio 0 10 GPIO_ACTIVE_HIGH>; /* PA10 */
 		};
diff --git a/arch/arm/boot/dts/sun8i-h3-nanopi-neo-air.dts b/arch/arm/boot/dts/sun8i-h3-nanopi-neo-air.dts
index 07867a0d569b..be49eabbff94 100644
--- a/arch/arm/boot/dts/sun8i-h3-nanopi-neo-air.dts
+++ b/arch/arm/boot/dts/sun8i-h3-nanopi-neo-air.dts
@@ -61,13 +61,13 @@ chosen {
 	leds {
 		compatible = "gpio-leds";
 
-		pwr {
+		led-0 {
 			label = "nanopi:green:pwr";
 			gpios = <&r_pio 0 10 GPIO_ACTIVE_HIGH>; /* PL10 */
 			default-state = "on";
 		};
 
-		status {
+		led-1 {
 			label = "nanopi:blue:status";
 			gpios = <&pio 0 10 GPIO_ACTIVE_HIGH>; /* PA10 */
 		};
diff --git a/arch/arm/boot/dts/sun8i-h3-nanopi.dtsi b/arch/arm/boot/dts/sun8i-h3-nanopi.dtsi
index 4df29a65316d..c7c3e7d8b3c8 100644
--- a/arch/arm/boot/dts/sun8i-h3-nanopi.dtsi
+++ b/arch/arm/boot/dts/sun8i-h3-nanopi.dtsi
@@ -60,13 +60,13 @@ chosen {
 	leds {
 		compatible = "gpio-leds";
 
-		status {
+		led-0 {
 			label = "nanopi:blue:status";
 			gpios = <&pio 0 10 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "heartbeat";
 		};
 
-		pwr {
+		led-1 {
 			label = "nanopi:green:pwr";
 			gpios = <&r_pio 0 10 GPIO_ACTIVE_HIGH>;
 			default-state = "on";
diff --git a/arch/arm/boot/dts/sun8i-h3-orangepi-zero-plus2.dts b/arch/arm/boot/dts/sun8i-h3-orangepi-zero-plus2.dts
index 251bbab7d707..561ea1d2f861 100644
--- a/arch/arm/boot/dts/sun8i-h3-orangepi-zero-plus2.dts
+++ b/arch/arm/boot/dts/sun8i-h3-orangepi-zero-plus2.dts
@@ -73,13 +73,13 @@ hdmi_con_in: endpoint {
 	leds {
 		compatible = "gpio-leds";
 
-		pwr {
+		led-0 {
 			label = "orangepi:green:pwr";
 			gpios = <&r_pio 0 10 GPIO_ACTIVE_HIGH>;
 			default-state = "on";
 		};
 
-		status {
+		led-1 {
 			label = "orangepi:red:status";
 			gpios = <&pio 0 17 GPIO_ACTIVE_HIGH>;
 		};
diff --git a/arch/arm/boot/dts/sun8i-r16-bananapi-m2m.dts b/arch/arm/boot/dts/sun8i-r16-bananapi-m2m.dts
index e1c75f7fa3ca..015ba66fd277 100644
--- a/arch/arm/boot/dts/sun8i-r16-bananapi-m2m.dts
+++ b/arch/arm/boot/dts/sun8i-r16-bananapi-m2m.dts
@@ -64,17 +64,17 @@ chosen {
 	leds {
 		compatible = "gpio-leds";
 
-		blue {
+		led-0 {
 			label = "bpi-m2m:blue:usr";
 			gpios = <&pio 2 7 GPIO_ACTIVE_LOW>;
 		};
 
-		green {
+		led-1 {
 			label = "bpi-m2m:green:usr";
 			gpios = <&r_pio 0 2 GPIO_ACTIVE_LOW>;
 		};
 
-		red {
+		led-2 {
 			label = "bpi-m2m:red:power";
 			gpios = <&r_pio 0 3 GPIO_ACTIVE_LOW>;
 			default-state = "on";
diff --git a/arch/arm/boot/dts/sun8i-r16-parrot.dts b/arch/arm/boot/dts/sun8i-r16-parrot.dts
index 4f48eec6b2ef..09a6a3b2cccc 100644
--- a/arch/arm/boot/dts/sun8i-r16-parrot.dts
+++ b/arch/arm/boot/dts/sun8i-r16-parrot.dts
@@ -64,14 +64,14 @@ chosen {
 	leds {
 		compatible = "gpio-leds";
 
-		led1 {
+		led-1 {
 			label = "parrot:led1:usr";
-			gpio = <&pio 4 17 GPIO_ACTIVE_HIGH>; /* PE17 */
+			gpios = <&pio 4 17 GPIO_ACTIVE_HIGH>; /* PE17 */
 		};
 
-		led2 {
+		led-2 {
 			label = "parrot:led2:usr";
-			gpio = <&pio 4 16 GPIO_ACTIVE_HIGH>; /* PE16 */
+			gpios = <&pio 4 16 GPIO_ACTIVE_HIGH>; /* PE16 */
 		};
 	};
 
diff --git a/arch/arm/boot/dts/sun9i-a80-cubieboard4.dts b/arch/arm/boot/dts/sun9i-a80-cubieboard4.dts
index 484b93df20cb..1fe251ea94bc 100644
--- a/arch/arm/boot/dts/sun9i-a80-cubieboard4.dts
+++ b/arch/arm/boot/dts/sun9i-a80-cubieboard4.dts
@@ -63,12 +63,12 @@ chosen {
 	leds {
 		compatible = "gpio-leds";
 
-		green {
+		led-0 {
 			label = "cubieboard4:green:usr";
 			gpios = <&pio 7 17 GPIO_ACTIVE_HIGH>; /* PH17 */
 		};
 
-		red {
+		led-1 {
 			label = "cubieboard4:red:usr";
 			gpios = <&pio 7 6 GPIO_ACTIVE_HIGH>; /* PH6 */
 		};
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
index e5e840b9fbb4..f7fe9fa50cb3 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
@@ -36,18 +36,18 @@ hdmi_con_in: endpoint {
 	leds {
 		compatible = "gpio-leds";
 
-		pwr-led {
+		led-0 {
 			label = "bananapi-m64:red:pwr";
 			gpios = <&pio 3 24 GPIO_ACTIVE_HIGH>; /* PD24 */
 			default-state = "on";
 		};
 
-		green {
+		led-1 {
 			label = "bananapi-m64:green:user";
 			gpios = <&pio 4 14 GPIO_ACTIVE_HIGH>; /* PE14 */
 		};
 
-		blue {
+		led-2 {
 			label = "bananapi-m64:blue:user";
 			gpios = <&pio 4 15 GPIO_ACTIVE_HIGH>; /* PE15 */
 		};
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-nanopi-a64.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-nanopi-a64.dts
index e58db8a6cab6..09b3c7fb82c0 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-nanopi-a64.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-nanopi-a64.dts
@@ -35,7 +35,7 @@ hdmi_con_in: endpoint {
 	leds {
 		compatible = "gpio-leds";
 
-		blue {
+		led {
 			label = "nanopi-a64:blue:status";
 			gpios = <&pio 3 24 GPIO_ACTIVE_LOW>; /* PD24 */
 		};
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi
index 7f37f9fea0ab..bcf64998a829 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi
@@ -31,19 +31,19 @@ chosen {
 	leds {
 		compatible = "gpio-leds";
 
-		blue {
+		led-0 {
 			function = LED_FUNCTION_INDICATOR;
 			color = <LED_COLOR_ID_BLUE>;
 			gpios = <&pio 3 20 GPIO_ACTIVE_HIGH>; /* PD20 */
 		};
 
-		green {
+		led-1 {
 			function = LED_FUNCTION_INDICATOR;
 			color = <LED_COLOR_ID_GREEN>;
 			gpios = <&pio 3 18 GPIO_ACTIVE_HIGH>; /* PD18 */
 		};
 
-		red {
+		led-2 {
 			function = LED_FUNCTION_INDICATOR;
 			color = <LED_COLOR_ID_RED>;
 			gpios = <&pio 3 19 GPIO_ACTIVE_HIGH>; /* PD19 */
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
index a1864a89fb89..f0a16f355e27 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
@@ -52,12 +52,12 @@ lid-switch {
 	leds {
 		compatible = "gpio-leds";
 
-		capslock {
+		led-0 {
 			label = "teres-i:green:capslock";
 			gpios = <&pio 2 7 GPIO_ACTIVE_HIGH>; /* PC7 */
 		};
 
-		numlock {
+		led-1 {
 			label = "teres-i:green:numlock";
 			gpios = <&pio 2 4 GPIO_ACTIVE_HIGH>; /* PC4 */
 		};
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-neo-plus2.dts b/arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-neo-plus2.dts
index 9d93fe153689..4c3921ac236c 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-neo-plus2.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-neo-plus2.dts
@@ -25,13 +25,13 @@ chosen {
 	leds {
 		compatible = "gpio-leds";
 
-		pwr {
+		led-0 {
 			label = "nanopi:green:pwr";
 			gpios = <&r_pio 0 10 GPIO_ACTIVE_HIGH>;
 			default-state = "on";
 		};
 
-		status {
+		led-1 {
 			label = "nanopi:red:status";
 			gpios = <&pio 0 20 GPIO_ACTIVE_HIGH>;
 		};
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-neo2.dts b/arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-neo2.dts
index b059e20813bd..02f8e72f0cad 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-neo2.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-neo2.dts
@@ -22,13 +22,13 @@ chosen {
 	leds {
 		compatible = "gpio-leds";
 
-		pwr {
+		led-0 {
 			label = "nanopi:green:pwr";
 			gpios = <&r_pio 0 10 GPIO_ACTIVE_HIGH>;
 			default-state = "on";
 		};
 
-		status {
+		led-1 {
 			label = "nanopi:blue:status";
 			gpios = <&pio 0 10 GPIO_ACTIVE_HIGH>;
 		};
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-pc2.dts b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-pc2.dts
index 8bf2db9dcbda..1010c1b22d2e 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-pc2.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-pc2.dts
@@ -42,13 +42,13 @@ hdmi_con_in: endpoint {
 	leds {
 		compatible = "gpio-leds";
 
-		pwr {
+		led-0 {
 			label = "orangepi:green:pwr";
 			gpios = <&r_pio 0 10 GPIO_ACTIVE_HIGH>;
 			default-state = "on";
 		};
 
-		status {
+		led-1 {
 			label = "orangepi:red:status";
 			gpios = <&pio 0 20 GPIO_ACTIVE_HIGH>;
 		};
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-prime.dts b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-prime.dts
index 33ab44072e6d..74e0444af19b 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-prime.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-prime.dts
@@ -36,13 +36,13 @@ hdmi_con_in: endpoint {
 	leds {
 		compatible = "gpio-leds";
 
-		pwr {
+		led-0 {
 			label = "orangepi:green:pwr";
 			gpios = <&r_pio 0 10 GPIO_ACTIVE_HIGH>;
 			default-state = "on";
 		};
 
-		status {
+		led-1 {
 			label = "orangepi:red:status";
 			gpios = <&pio 0 20 GPIO_ACTIVE_HIGH>;
 		};
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus.dts b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus.dts
index ef5ca6444220..d13980ed7a79 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus.dts
@@ -33,13 +33,13 @@ chosen {
 	leds {
 		compatible = "gpio-leds";
 
-		pwr {
+		led-0 {
 			label = "orangepi:green:pwr";
 			gpios = <&r_pio 0 10 GPIO_ACTIVE_HIGH>; /* PA10 */
 			default-state = "on";
 		};
 
-		status {
+		led-1 {
 			label = "orangepi:red:status";
 			gpios = <&pio 0 17 GPIO_ACTIVE_HIGH>; /* PA17 */
 		};
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus2.dts b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus2.dts
index de19e68eb84e..22530ace12d5 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus2.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus2.dts
@@ -33,13 +33,13 @@ hdmi_con_in: endpoint {
 	leds {
 		compatible = "gpio-leds";
 
-		pwr {
+		led-0 {
 			label = "orangepi:green:pwr";
 			gpios = <&r_pio 0 10 GPIO_ACTIVE_HIGH>;
 			default-state = "on";
 		};
 
-		status {
+		led-1 {
 			label = "orangepi:red:status";
 			gpios = <&pio 0 17 GPIO_ACTIVE_HIGH>;
 		};
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts
index 7c9dbde645b5..4f4755152fce 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts
@@ -43,7 +43,7 @@ ext_osc32k: ext_osc32k_clk {
 	leds {
 		compatible = "gpio-leds";
 
-		power {
+		led {
 			label = "beelink:white:power";
 			gpios = <&r_pio 0 4 GPIO_ACTIVE_HIGH>; /* PL4 */
 			default-state = "on";
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
index 15c9dd8c4479..7e83f6146f8a 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
@@ -43,13 +43,13 @@ ext_osc32k: ext_osc32k_clk {
 	leds {
 		compatible = "gpio-leds";
 
-		power {
+		led-0 {
 			label = "orangepi:red:power";
 			gpios = <&r_pio 0 4 GPIO_ACTIVE_HIGH>; /* PL4 */
 			default-state = "on";
 		};
 
-		status {
+		led-1 {
 			label = "orangepi:green:status";
 			gpios = <&r_pio 0 7 GPIO_ACTIVE_HIGH>; /* PL7 */
 		};
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi
index ebc120a9232f..da0875bd38d4 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi
@@ -42,13 +42,13 @@ ext_osc32k: ext_osc32k_clk {
 	leds {
 		compatible = "gpio-leds";
 
-		power {
+		led-0 {
 			label = "orangepi:red:power";
 			gpios = <&r_pio 0 4 GPIO_ACTIVE_HIGH>; /* PL4 */
 			default-state = "on";
 		};
 
-		status {
+		led-1 {
 			label = "orangepi:green:status";
 			gpios = <&r_pio 0 7 GPIO_ACTIVE_HIGH>; /* PL7 */
 		};
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
index 961732c52aa0..514d4a78b8dc 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
@@ -44,17 +44,17 @@ hdmi_con_in: endpoint {
 	leds {
 		compatible = "gpio-leds";
 
-		heartbeat {
+		led-0 {
 			label = "pine-h64:green:heartbeat";
 			gpios = <&r_pio 0 4 GPIO_ACTIVE_HIGH>; /* PL4 */
 		};
 
-		link {
+		led-1 {
 			label = "pine-h64:white:link";
 			gpios = <&r_pio 0 3 GPIO_ACTIVE_HIGH>; /* PL3 */
 		};
 
-		status {
+		led-2 {
 			label = "pine-h64:blue:status";
 			gpios = <&r_pio 0 7 GPIO_ACTIVE_HIGH>; /* PL7 */
 		};
-- 
2.29.2


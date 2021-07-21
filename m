Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B92993D10BC
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 16:05:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238570AbhGUNZN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 09:25:13 -0400
Received: from out3-smtp.messagingengine.com ([66.111.4.27]:48983 "EHLO
        out3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234757AbhGUNZM (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Jul 2021 09:25:12 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id 4CE0F5C021F;
        Wed, 21 Jul 2021 10:05:49 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Wed, 21 Jul 2021 10:05:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=gpij+AwPaUFES
        v0M3OmTP46p5qdTmu7eAqWO9NvRP0Q=; b=zwPnwPt8RXIr/9ARtVJvU10LAtC+G
        oXAu2CBzGSzW/pIqnFAGhKJFytQoOR5SPr69aFewSiz+lMOenOY8BWMJERijIY/1
        xc+NQI8HRwUNnOxlddW7FIZIJnlM27yGUW7Dfkruvb8JSeA4FRrvAE8I4OatjtP3
        NmkA4J5Ci5yQazutIMmen5i0IhU6T/U8YBYuMdMLsbFqdWPh0pwQqCPeRuzuMgSo
        iDsQ8/IGBJ5vCzWxUGWm+05HEXL01Al4sLmTqS4b7utXSq83OIVnC9kjPZLLqu6l
        XcbRV9g0/RbfUB13/zI08BpkSUm3WgO24tNIC/ovdZJnXwfN3IWZmU5/w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=gpij+AwPaUFESv0M3OmTP46p5qdTmu7eAqWO9NvRP0Q=; b=gAiARBrd
        1hCA16NoYt63YaV5C6OerLZwzuKnajrAUNWQoDKPBn+VPl1FzvU48nRq51bexDMR
        md+jOSaavztLayxt4YcvKkKYoCztST2ku8s+jGjfRxvgymka1UQe2mQiPcwwJ5pv
        6vqFU5ZIuPsbBOwpVW67BL5Dqe3Rk8e8pjE9EnNOqLtwiWqkz9OaQsZ5opJZNWW4
        HwiFBvuaA291+I+qy9ICIo4AwRJoBA6LeBHKY+MhFqbRhIi3EUmSl/wMGDPCLgKQ
        cY0J7EnskeQH+4dJLxG2luzv4n4jlsSD5Z3U/Yv/rO0V651zQDBFC3Y8Jk7Pl/pX
        bcQNZnp2oacCZg==
X-ME-Sender: <xms:vSn4YLDv1b63eACNezuKyQrF6uOLPg-yIV_4dTMXq5sEXdvO9VDrxQ>
    <xme:vSn4YBhKpVS2_og-E9RMXc3p2vskMOe8b4MBT9o1cZwqT2eF5rjEdqDa0py1uS1Mr
    KFtygoMv6IhUg2ZjVg>
X-ME-Received: <xmr:vSn4YGl0cqB6Dh5oUwqtj4BHbcwxIbjfbR5y9nYJD4ZQJtJzZH65a2e6hqNJJc6kU_Ref8-swvkba-PuRypU8O_2-xTVTNlh0RXf>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeeggdeijecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucevlhhushhtvghrufhiiigvpeegnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrg
    igihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:vSn4YNxSAcl0cYaAL378KKkPm6N2dFlZZaNWWcj11A0q7-N3TkYVpw>
    <xmx:vSn4YAS0FS1bH7WElnQVsxO2ettjVWKutjjyN_bk4obcRuuiJvLIjg>
    <xmx:vSn4YAbaj55TVayw2mqJcR4cL346JoBdNimaZGeDUwwiQHjAw743sw>
    <xmx:vSn4YPGgXmfe-yGD6I3M5bKsCsu1yUBuwEUjrErwJEzAIBZDl8UpOQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 21 Jul 2021 10:05:48 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: [PATCH 39/54] ARM: dts: sunxi: Rename power-supply names
Date:   Wed, 21 Jul 2021 16:04:09 +0200
Message-Id: <20210721140424.725744-40-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210721140424.725744-1-maxime@cerno.tech>
References: <20210721140424.725744-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The name of our PMIC power supply names conflict with the generic
regulator supply check that matches anything called *-supply, including
the nodes, and then makes sure it's a phandle.

A node is obviously not a phandle, so let's change our power supplies
names to avoid any conflict.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm/boot/dts/axp209.dtsi             | 6 +++---
 arch/arm/boot/dts/axp22x.dtsi             | 6 +++---
 arch/arm/boot/dts/axp81x.dtsi             | 6 +++---
 arch/arm64/boot/dts/allwinner/axp803.dtsi | 6 +++---
 4 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm/boot/dts/axp209.dtsi b/arch/arm/boot/dts/axp209.dtsi
index 0d9ff12bdf28..ca240cd6f6c3 100644
--- a/arch/arm/boot/dts/axp209.dtsi
+++ b/arch/arm/boot/dts/axp209.dtsi
@@ -53,7 +53,7 @@ &axp209 {
 	interrupt-controller;
 	#interrupt-cells = <1>;
 
-	ac_power_supply: ac-power-supply {
+	ac_power_supply: ac-power {
 		compatible = "x-powers,axp202-ac-power-supply";
 		status = "disabled";
 	};
@@ -69,7 +69,7 @@ axp_gpio: gpio {
 		#gpio-cells = <2>;
 	};
 
-	battery_power_supply: battery-power-supply {
+	battery_power_supply: battery-power {
 		compatible = "x-powers,axp209-battery-power-supply";
 		status = "disabled";
 	};
@@ -112,7 +112,7 @@ reg_ldo5: ldo5 {
 		};
 	};
 
-	usb_power_supply: usb-power-supply {
+	usb_power_supply: usb-power {
 		compatible = "x-powers,axp202-usb-power-supply";
 		status = "disabled";
 	};
diff --git a/arch/arm/boot/dts/axp22x.dtsi b/arch/arm/boot/dts/axp22x.dtsi
index 65a07a67aca9..a020c12b2884 100644
--- a/arch/arm/boot/dts/axp22x.dtsi
+++ b/arch/arm/boot/dts/axp22x.dtsi
@@ -52,7 +52,7 @@ &axp22x {
 	interrupt-controller;
 	#interrupt-cells = <1>;
 
-	ac_power_supply: ac-power-supply {
+	ac_power_supply: ac-power {
 		compatible = "x-powers,axp221-ac-power-supply";
 		status = "disabled";
 	};
@@ -62,7 +62,7 @@ axp_adc: adc {
 		#io-channel-cells = <1>;
 	};
 
-	battery_power_supply: battery-power-supply {
+	battery_power_supply: battery-power {
 		compatible = "x-powers,axp221-battery-power-supply";
 		status = "disabled";
 	};
@@ -163,7 +163,7 @@ reg_drivevbus: drivevbus {
 		};
 	};
 
-	usb_power_supply: usb_power_supply {
+	usb_power_supply: usb-power {
 		compatible = "x-powers,axp221-usb-power-supply";
 		status = "disabled";
 	};
diff --git a/arch/arm/boot/dts/axp81x.dtsi b/arch/arm/boot/dts/axp81x.dtsi
index 1dfeeceabf4c..63fb9811b453 100644
--- a/arch/arm/boot/dts/axp81x.dtsi
+++ b/arch/arm/boot/dts/axp81x.dtsi
@@ -48,7 +48,7 @@ &axp81x {
 	interrupt-controller;
 	#interrupt-cells = <1>;
 
-	ac_power_supply: ac-power-supply {
+	ac_power_supply: ac-power {
 		compatible = "x-powers,axp813-ac-power-supply";
 		status = "disabled";
 	};
@@ -74,7 +74,7 @@ gpio1_ldo: gpio1-ldo {
 		};
 	};
 
-	battery_power_supply: battery-power-supply {
+	battery_power_supply: battery-power {
 		compatible = "x-powers,axp813-battery-power-supply";
 		status = "disabled";
 	};
@@ -172,7 +172,7 @@ reg_drivevbus: drivevbus {
 		};
 	};
 
-	usb_power_supply: usb-power-supply {
+	usb_power_supply: usb-power {
 		compatible = "x-powers,axp813-usb-power-supply";
 	};
 };
diff --git a/arch/arm64/boot/dts/allwinner/axp803.dtsi b/arch/arm64/boot/dts/allwinner/axp803.dtsi
index 10e9186a76bf..61402057e107 100644
--- a/arch/arm64/boot/dts/allwinner/axp803.dtsi
+++ b/arch/arm64/boot/dts/allwinner/axp803.dtsi
@@ -10,7 +10,7 @@ &axp803 {
 	interrupt-controller;
 	#interrupt-cells = <1>;
 
-	ac_power_supply: ac-power-supply {
+	ac_power_supply: ac-power {
 		compatible = "x-powers,axp803-ac-power-supply",
 			     "x-powers,axp813-ac-power-supply";
 		status = "disabled";
@@ -37,7 +37,7 @@ gpio1_ldo: gpio1-ldo {
 		};
 	};
 
-	battery_power_supply: battery-power-supply {
+	battery_power_supply: battery-power {
 		compatible = "x-powers,axp803-battery-power-supply",
 			     "x-powers,axp813-battery-power-supply";
 		status = "disabled";
@@ -147,7 +147,7 @@ reg_drivevbus: drivevbus {
 		};
 	};
 
-	usb_power_supply: usb-power-supply {
+	usb_power_supply: usb-power {
 		compatible = "x-powers,axp803-usb-power-supply",
 			     "x-powers,axp813-usb-power-supply";
 		status = "disabled";
-- 
2.31.1


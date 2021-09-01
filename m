Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0589C3FD696
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 11:20:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243336AbhIAJVG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 05:21:06 -0400
Received: from out5-smtp.messagingengine.com ([66.111.4.29]:34419 "EHLO
        out5-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243573AbhIAJVC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 05:21:02 -0400
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
        by mailout.nyi.internal (Postfix) with ESMTP id 9DE825C0231;
        Wed,  1 Sep 2021 05:20:05 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Wed, 01 Sep 2021 05:20:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=gpij+AwPaUFES
        v0M3OmTP46p5qdTmu7eAqWO9NvRP0Q=; b=FIIitd9fz04zvSOR/asnk54aANt3p
        NSF5prUDt7eUv9KfMKVsqC5PbN6HVuoDQliAoId7uiLFcy4HzoS2drncBNPVrMAx
        NQHF71sjdYuj1W5LumVzrKNYcg8Xv8kaWVGgb7d47jsRL1RB5T3kdFsuPVAgeWyz
        iUXIHQdZ8B3OLP2xDd5D1E9+iUnlx5epsorxdV/+Ohd3We9GIOoX/gjGbBPlkAe4
        f4G5KpwVilAZNRuQdTBDPmnUseWoIAau2nnPHXnvV03w5L8qYCkO6RHtLoWSrHoX
        hiszMc8yc49M2YizIv9pUrnjBXBKnFIXkJQtYAy4y//dodug3CSnCByvg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=gpij+AwPaUFESv0M3OmTP46p5qdTmu7eAqWO9NvRP0Q=; b=kXmyhL3n
        StfoFKa5HbrVrrGH+0Kvu6P4lZCJP1B5hzYhEjy0BHZmInZUYUK1rVdg0Y4Mj+GQ
        M70vwWV7BbzMucQNlOiSoGzhdAmrAaTf2NUwuXHzdGKnGONMxTa9XDLm0d3HedGe
        +a7n+z6BcCHxgP1dQP3QKnI/gkSTLP/etj4oyVQGm8fKMtUOyvHOHIzIxnJmBVuA
        ac9RyGAQP2h1QicJOPOzxa3y8xJJUYT4uxUFsS2Tp7sUO28AP1Jm/6Ca4FGYELFt
        g0asUR8lrn/gYkIuIkBKz+a6iwNSpAICrx3jOaiZonMfaPKEKzZORgKseb8KB9Te
        dad0sXFWNHbaRQ==
X-ME-Sender: <xms:xUUvYRIXk5-XDcDfRAuQDNdtPlJUSnVWdThohFBSsuVRwfnjuC5zJg>
    <xme:xUUvYdIa6UDomHOPDxliEnVqZ0NSIq-FBSVP9BXNNCJntS7mh8DPhXRNBIMSxHovF
    rHXcPy24_f4BqGaxG8>
X-ME-Received: <xmr:xUUvYZtvUd7SMfSKcv1f4SnM9qWV4O36lGOSoWUEnMYbk4HNIxLjnYoXcwNXVj1jk5OWbnKxypZI3fkTNE0sQE9uiHzWQCnRpkQy>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddruddvfedgudegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
    hedvnecuvehluhhsthgvrhfuihiivgepudenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:xUUvYSYzuWQlMzTWLrjzqG1HQ-x35Z9fJruMUWPm-Dm0nsxUN1EChA>
    <xmx:xUUvYYavGp41BltbqPu74w_gMR38eHWoNrkNm3UFfLycacag43RpuQ>
    <xmx:xUUvYWC8fc_z9QTTNS7EjW0bZ6JCpjGZPbPn3HCS_ruF4jLC11TGRQ>
    <xmx:xUUvYdNkHIoVqJ0WBmJh0zJdUVC9G2kvouLAV68Ajh7Yyyp_-DzBFA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 Sep 2021 05:20:05 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: [PATCH v2 39/52] ARM: dts: sunxi: Rename power-supply names
Date:   Wed,  1 Sep 2021 11:18:39 +0200
Message-Id: <20210901091852.479202-40-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210901091852.479202-1-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech>
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


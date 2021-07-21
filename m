Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4E47B3D10C1
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 16:05:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239136AbhGUNZU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 09:25:20 -0400
Received: from out3-smtp.messagingengine.com ([66.111.4.27]:58209 "EHLO
        out3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239096AbhGUNZU (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Jul 2021 09:25:20 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id D16785C0180;
        Wed, 21 Jul 2021 10:05:56 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Wed, 21 Jul 2021 10:05:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=NBo7N2VNZZ0WD
        AqU6HUEAWRGAaaX8ieAM+2OeiktVZc=; b=eETEpZzB1maZCokhhG/Mu4S1X5s05
        oNa9VneyFGMlMufXSUsTRqJKmVMUu48AzEqI0nU7d+fPeBnlcKqlfe1yrG0/itsd
        zDPocd0jmvUud7VYIlZRmnRWX1OgGw+yw4YcgT7Nk/vqfXaxHh5fOxERi/YBixfa
        Vs7EZlOFenfB2ZCoCZxXUy8rEo8jVjdnoGQU9go9cUB53wh3MJ2n2dVGu+o62vH3
        ACHZOSwzXch8kvCYpKzWFL2zGAa1dC4rnKK1nfDzz2f/+sW+bVUJT30JSCWzZPRc
        X9Sc7/PjwBBNy0ROaFdKHe0cetkhRkez9jV6NWkaFLHTdnPYyAMWtDxZA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=NBo7N2VNZZ0WDAqU6HUEAWRGAaaX8ieAM+2OeiktVZc=; b=qbCOegxo
        OQ+Z9/L0x1mPpzRpwzZ7+bTpR6kdW4v+8ZUKSilvEVs45c2g/E7x3R3xWM+jO3EX
        5ISQ7S3PRSavogtE/HPblBAUbzeIxGA78AhyaKFj3um12h+t3XSRLgbgSW/8Rl0/
        ZGAhX95MzN1N/KI1M65sVX2ryPIQZQA5G46DHlCH0n+WKOFq3E4t9EeAbYCh5/LK
        5GYjlP02aN04x2VHwArtYOZ4BUrqfKV9T9hvYLX/2v2Y0NE+3iAi0squ5NXbW8Up
        1nBO/mayHDWGsUnFX9ovdlZz9l44neWPi/L7WFMJC9C9YLM/A0fQThESYgXEwySS
        GaBnNlgoAwfi3Q==
X-ME-Sender: <xms:xCn4YLAhi7dUDNqtcb4nre40dKIBLRhihkrXUuDpfa-xseJmXJQORg>
    <xme:xCn4YBiUtxx_cKBLlCjl7Arcm3dVLBmWSyiKhMY_6QqKasrfSYE4eExIadGh1Jt3p
    g5LbwkxwcEAXjVUE7Q>
X-ME-Received: <xmr:xCn4YGn2t3YER4lo7hYcWFKhKZ2jXlJi02f0OXcTClT4LD0YLepSrOYIJ7KvL-7R8OmPNDHzn20iM3wRmxDraGc6yFg0IGc9_f3P>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeeggdeijecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucevlhhushhtvghrufhiiigvpeehnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrg
    igihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:xCn4YNysZU-LnqBtpg1ItR2YPBrI380rKe3WpLmLyIJkpkafIPpeFg>
    <xmx:xCn4YAQGrIbY62sJjAznwzl86mN1y9P9dBGajy04PwlU2yu6R1hNYQ>
    <xmx:xCn4YAbEPGnC2JVUKEtVVzSReI2ggB_fh3PdL8CitxlCNeviR5mjLw>
    <xmx:xCn4YPFSxJ8u3xxRCTadDjl0wW5vA9M7_Ef624SvZ7moJ8gNLqFNfA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 21 Jul 2021 10:05:56 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: [PATCH 43/54] ARM: dts: sunxi: Fix the SPI NOR node names
Date:   Wed, 21 Jul 2021 16:04:13 +0200
Message-Id: <20210721140424.725744-44-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210721140424.725744-1-maxime@cerno.tech>
References: <20210721140424.725744-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

According to the SPI NOR bindings, the flash node names are supposed to
be flash@<address>. Let's fix our users to use that new scheme.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm/boot/dts/sun8i-v3-sl631.dtsi                     | 2 +-
 arch/arm/boot/dts/sunxi-libretech-all-h3-it.dtsi          | 2 +-
 arch/arm64/boot/dts/allwinner/sun50i-a64-orangepi-win.dts | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/sun8i-v3-sl631.dtsi b/arch/arm/boot/dts/sun8i-v3-sl631.dtsi
index e0d2a31efc7f..6f93f8c49f84 100644
--- a/arch/arm/boot/dts/sun8i-v3-sl631.dtsi
+++ b/arch/arm/boot/dts/sun8i-v3-sl631.dtsi
@@ -115,7 +115,7 @@ &reg_ldo2 {
 &spi0 {
 	status = "okay";
 
-	spi-flash@0 {
+	flash@0 {
 		reg = <0>;
 		compatible = "jedec,spi-nor";
 		spi-max-frequency = <50000000>;
diff --git a/arch/arm/boot/dts/sunxi-libretech-all-h3-it.dtsi b/arch/arm/boot/dts/sunxi-libretech-all-h3-it.dtsi
index 204fba3614f9..50d328c2a84d 100644
--- a/arch/arm/boot/dts/sunxi-libretech-all-h3-it.dtsi
+++ b/arch/arm/boot/dts/sunxi-libretech-all-h3-it.dtsi
@@ -156,7 +156,7 @@ &r_pio {
 &spi0 {
 	status = "okay";
 
-	spiflash@0 {
+	flash@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0>;
 		spi-max-frequency = <50000000>;
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-orangepi-win.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-orangepi-win.dts
index 097a5511523a..c519d9fa6967 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-orangepi-win.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-orangepi-win.dts
@@ -343,7 +343,7 @@ &sound {
 &spi0 {
 	status = "okay";
 
-	spi-flash@0 {
+	flash@0 {
 		compatible = "mxicy,mx25l1606e", "jedec,spi-nor";
 		reg = <0>;
 		spi-max-frequency = <80000000>;
-- 
2.31.1


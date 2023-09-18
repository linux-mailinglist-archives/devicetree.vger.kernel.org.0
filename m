Return-Path: <devicetree+bounces-962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 388A17A4328
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 09:44:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 504CA1C21074
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 07:44:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DD23748E;
	Mon, 18 Sep 2023 07:43:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88F4011701
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 07:43:48 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98985B2;
	Mon, 18 Sep 2023 00:42:39 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 457B41BF226;
	Mon, 18 Sep 2023 07:41:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arinc9.com; s=gm1;
	t=1695022957;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=YeG5a/Bqgvtd/iPOq8Fvj8+3brEGEmRcYA0IG9bBuc4=;
	b=bhc8RvMqy/Pq5T6Dh0KqYSOzBrydic0M1kq7DmoPrtyEtMnm+6lesiXFQdyEPub3mcsUmj
	EhNPwJ5K8q7WOxYxfwOv+IdXkTWJWyZirjZu5A9oZkiyGYXTTn2/nEjFixVkFOobUBVd3o
	UhndKbq7sG+L7VJGxO/K9xvkmVR8I22vkqjamelhSeEO/HZbzq4YsR8QmTBm/2NrXVajmX
	bEBQwS75OTvCN+nCWwp2VAMQ7QJH9BaITC6LZdYjG4o9q8GOqqVlrn+4CFsu8HdxHBwGvo
	8mORnLNEb0y5tA3O0lWJv8vJeaO3iCa8ei1LJngy12eNl4DHYmeIA3WIIQIxsA==
From: =?UTF-8?q?Ar=C4=B1n=C3=A7=20=C3=9CNAL?= <arinc.unal@arinc9.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Andre Przywara <andre.przywara@arm.com>,
	Claudiu Beznea <claudiu.beznea@microchip.com>,
	Peter Rosin <peda@axentia.se>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Jesper Nilsson <jesper.nilsson@axis.com>,
	=?UTF-8?q?Ar=C4=B1n=C3=A7=20=C3=9CNAL?= <arinc.unal@arinc9.com>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Paul Barker <paul.barker@sancloud.com>,
	Michal Simek <michal.simek@amd.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH] arm: dts: replace Bananapi with Banana Pi
Date: Mon, 18 Sep 2023 10:41:22 +0300
Message-Id: <20230918074122.73265-1-arinc.unal@arinc9.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-GND-Sasl: arinc.unal@arinc9.com
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The brand name is Banana Pi. Replace any mention of Bananapi with Banana
Pi.

Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>
---
 arch/arm/boot/dts/allwinner/sunxi-bananapi-m2-plus-v1.2.dtsi | 2 +-
 arch/arm/boot/dts/mediatek/mt7623n-bananapi-bpi-r2.dts       | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/allwinner/sunxi-bananapi-m2-plus-v1.2.dtsi b/arch/arm/boot/dts/allwinner/sunxi-bananapi-m2-plus-v1.2.dtsi
index 235994a4a2eb..ef532494fc9d 100644
--- a/arch/arm/boot/dts/allwinner/sunxi-bananapi-m2-plus-v1.2.dtsi
+++ b/arch/arm/boot/dts/allwinner/sunxi-bananapi-m2-plus-v1.2.dtsi
@@ -7,7 +7,7 @@
 
 / {
 	/*
-	 * Bananapi M2+ v1.2 uses a GPIO line to change the effective
+	 * Banana Pi BPI-M2+ v1.2 uses a GPIO line to change the effective
 	 * resistance on the CPU regulator's feedback pin.
 	 */
 	reg_vdd_cpux: vdd-cpux {
diff --git a/arch/arm/boot/dts/mediatek/mt7623n-bananapi-bpi-r2.dts b/arch/arm/boot/dts/mediatek/mt7623n-bananapi-bpi-r2.dts
index a37f3fa223c7..7f0948074945 100644
--- a/arch/arm/boot/dts/mediatek/mt7623n-bananapi-bpi-r2.dts
+++ b/arch/arm/boot/dts/mediatek/mt7623n-bananapi-bpi-r2.dts
@@ -10,7 +10,7 @@
 #include "mt6323.dtsi"
 
 / {
-	model = "Bananapi BPI-R2";
+	model = "Banana Pi BPI-R2";
 	compatible = "bananapi,bpi-r2", "mediatek,mt7623";
 
 	aliases {
-- 
2.39.2



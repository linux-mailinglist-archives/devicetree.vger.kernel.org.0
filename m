Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB1472B2FBC
	for <lists+devicetree@lfdr.de>; Sat, 14 Nov 2020 19:33:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726174AbgKNSc2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Nov 2020 13:32:28 -0500
Received: from mail.kernel.org ([198.145.29.99]:45956 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726158AbgKNSc1 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 14 Nov 2020 13:32:27 -0500
Received: from dellmb.labs.office.nic.cz (nat-1.nic.cz [217.31.205.1])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 3C5BF2224F;
        Sat, 14 Nov 2020 18:32:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1605378746;
        bh=AC6DC4R8mK0fuykOncCI/FIi4UYqeza5E09XKBIrJW8=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=BQVzoXvY1xM9ISZFvxtTsv1JXsbIRPaNv6vmJ1uVEsb3aMGmzHA+JmTZpa14230dp
         bf+EKgWV+IwzMCJRuprNmgOOZRDgdqmB+Eahq+7SyoyECuuPtwFpEVppqolE+M5qgH
         7xgq40NA7IUX8JmnyFkpWNrxyv1Cp7a9IUwcIysY=
From:   =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To:     Gregory CLEMENT <gregory.clement@bootlin.com>
Cc:     arm@kernel.org, =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
        Andrew Lunn <andrew@lunn.ch>, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org
Subject: [PATCH mvebu-dt v2 3/6] ARM: dts: turris-omnia: describe switch interrupt
Date:   Sat, 14 Nov 2020 19:32:14 +0100
Message-Id: <20201114183217.1352-4-kabel@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201114183217.1352-1-kabel@kernel.org>
References: <20201114183217.1352-1-kabel@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Describe switch interrupt for Turris Omnia so that the CPU does not have
to poll the switch. We also need to to set mpp45 pin to gpio function
for this.

Signed-off-by: Marek Behún <kabel@kernel.org>
Fixes: 26ca8b52d6e1 ("ARM: dts: add support for Turris Omnia")
Cc: Uwe Kleine-König <uwe@kleine-koenig.org>
Cc: Jason Cooper <jason@lakedaemon.net>
Cc: Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: Andreas Färber <afaerber@suse.de>
Cc: Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
---
 arch/arm/boot/dts/armada-385-turris-omnia.dts | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/armada-385-turris-omnia.dts b/arch/arm/boot/dts/armada-385-turris-omnia.dts
index 9de26c78ec4c..7ccebf7d1757 100644
--- a/arch/arm/boot/dts/armada-385-turris-omnia.dts
+++ b/arch/arm/boot/dts/armada-385-turris-omnia.dts
@@ -260,13 +260,18 @@ phy1: phy@1 {
 
 	/* Switch MV88E6176 at address 0x10 */
 	switch@10 {
+		pinctrl-names = "default";
+		pinctrl-0 = <&swint_pins>;
 		compatible = "marvell,mv88e6085";
 		#address-cells = <1>;
 		#size-cells = <0>;
-		dsa,member = <0 0>;
 
+		dsa,member = <0 0>;
 		reg = <0x10>;
 
+		interrupt-parent = <&gpio1>;
+		interrupts = <13 IRQ_TYPE_LEVEL_LOW>;
+
 		ports {
 			#address-cells = <1>;
 			#size-cells = <0>;
@@ -319,6 +324,11 @@ pcawan_pins: pcawan-pins {
 		marvell,function = "gpio";
 	};
 
+	swint_pins: swint-pins {
+		marvell,pins = "mpp45";
+		marvell,function = "gpio";
+	};
+
 	spi0cs0_pins: spi0cs0-pins {
 		marvell,pins = "mpp25";
 		marvell,function = "spi0";
-- 
2.26.2


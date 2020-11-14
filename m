Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4D6E42B2E54
	for <lists+devicetree@lfdr.de>; Sat, 14 Nov 2020 17:05:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727158AbgKNQE0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Nov 2020 11:04:26 -0500
Received: from mail.kernel.org ([198.145.29.99]:52842 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726884AbgKNQE0 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 14 Nov 2020 11:04:26 -0500
Received: from dellmb.labs.office.nic.cz (nat-1.nic.cz [217.31.205.1])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 46C3422263;
        Sat, 14 Nov 2020 16:04:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1605369865;
        bh=Kf48UXfZP2gb0JMc2fjqwJzkdG5UTmOArAPmc+wHUao=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=uJWUl/nCn/b1+3+ws8EFveJqCp7WM9mxkgYqwx/Mc3exnSULq+z43fBiRy8vmQfsa
         pyWZPakzej60XEkUy8BA58ar5ipOcuEjo47lK/RfYyjYEk9EK8DKmaPS2RmSGui8wE
         rgWJPrswGkBLsogqgw1gMUvylP/M5R9PeByHJx7M=
From:   =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To:     Gregory CLEMENT <gregory.clement@bootlin.com>
Cc:     arm@kernel.org, =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
        Andrew Lunn <andrew@lunn.ch>, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org
Subject: [PATCH mvebu-dt 6/6] ARM: dts: turris-omnia: update ethernet-phy node and handle name
Date:   Sat, 14 Nov 2020 17:04:09 +0100
Message-Id: <20201114160409.19670-7-kabel@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201114160409.19670-1-kabel@kernel.org>
References: <20201114160409.19670-1-kabel@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use property name `phy-handle` instead of the deprecated `phy` to
connect eth2 to the PHY.
Rename the node from "phy@1" to "ethernet-phy@1", since "phy@1" is
incorrect according to device-tree bindings documentation.
Also remove the "ethernet-phy-id0141.0DD1" compatible string, it is not
needed. Kernel can read the PHY identifier itself.

Signed-off-by: Marek Behún <kabel@kernel.org>
Cc: Uwe Kleine-König <uwe@kleine-koenig.org>
Cc: Jason Cooper <jason@lakedaemon.net>
Cc: Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: Andreas Färber <afaerber@suse.de>
Cc: Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
---
 arch/arm/boot/dts/armada-385-turris-omnia.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/armada-385-turris-omnia.dts b/arch/arm/boot/dts/armada-385-turris-omnia.dts
index 771df9bbe271..99fe46911440 100644
--- a/arch/arm/boot/dts/armada-385-turris-omnia.dts
+++ b/arch/arm/boot/dts/armada-385-turris-omnia.dts
@@ -145,7 +145,7 @@ fixed-link {
 &eth2 {
 	status = "okay";
 	phy-mode = "sgmii";
-	phy = <&phy1>;
+	phy-handle = <&phy1>;
 	phys = <&comphy5 2>;
 	sfp = <&sfp>;
 	buffer-manager = <&bm>;
@@ -377,9 +377,9 @@ &mdio {
 	pinctrl-0 = <&mdio_pins>;
 	status = "okay";
 
-	phy1: phy@1 {
+	phy1: ethernet-phy@1 {
 		status = "okay";
-		compatible = "ethernet-phy-id0141.0DD1", "ethernet-phy-ieee802.3-c22";
+		compatible = "ethernet-phy-ieee802.3-c22";
 		reg = <1>;
 
 		interrupt-parent = <&pcawan>;
-- 
2.26.2


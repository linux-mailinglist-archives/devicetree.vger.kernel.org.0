Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 40F1D2B2FBF
	for <lists+devicetree@lfdr.de>; Sat, 14 Nov 2020 19:33:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726176AbgKNScd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Nov 2020 13:32:33 -0500
Received: from mail.kernel.org ([198.145.29.99]:46072 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726158AbgKNScd (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 14 Nov 2020 13:32:33 -0500
Received: from dellmb.labs.office.nic.cz (nat-1.nic.cz [217.31.205.1])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 05BE622274;
        Sat, 14 Nov 2020 18:32:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1605378752;
        bh=jqLvMv4UUsN07c1FqBzf6MEKy6gxJ6vZTCx/meuVPcQ=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=nsoQj2NotAuhgYFtcP9eudQ4AczK+GM4o9Nafjb9svaI4s37YWnBw0UFkKKYQIdXZ
         vhKzsnYczTfirMY4LEsyfsa765S8CEFJd6BUE8NJI49sTziwmQOHpbB01LZi2wgjDv
         qUBXCwkAlU5vhI04mf2kFCgQ4ZADiHisVAeXNxxQ=
From:   =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To:     Gregory CLEMENT <gregory.clement@bootlin.com>
Cc:     arm@kernel.org, =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
        Andrew Lunn <andrew@lunn.ch>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH mvebu-dt v2 6/6] ARM: dts: turris-omnia: update ethernet-phy node and handle name
Date:   Sat, 14 Nov 2020 19:32:17 +0100
Message-Id: <20201114183217.1352-7-kabel@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201114183217.1352-1-kabel@kernel.org>
References: <20201114183217.1352-1-kabel@kernel.org>
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
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
Cc: Uwe Kleine-König <uwe@kleine-koenig.org>
Cc: Jason Cooper <jason@lakedaemon.net>
Cc: Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: Andreas Färber <afaerber@suse.de>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
---
 arch/arm/boot/dts/armada-385-turris-omnia.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/armada-385-turris-omnia.dts b/arch/arm/boot/dts/armada-385-turris-omnia.dts
index df53cf925db6..694d69798685 100644
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
@@ -374,9 +374,9 @@ &mdio {
 	pinctrl-0 = <&mdio_pins>;
 	status = "okay";
 
-	phy1: phy@1 {
+	phy1: ethernet-phy@1 {
 		status = "okay";
-		compatible = "ethernet-phy-id0141.0DD1", "ethernet-phy-ieee802.3-c22";
+		compatible = "ethernet-phy-ieee802.3-c22";
 		reg = <1>;
 
 		/* irq is connected to &pcawan pin 7 */
-- 
2.26.2


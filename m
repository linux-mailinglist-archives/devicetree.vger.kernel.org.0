Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E7A82B3523
	for <lists+devicetree@lfdr.de>; Sun, 15 Nov 2020 14:59:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727179AbgKON7n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 15 Nov 2020 08:59:43 -0500
Received: from mail.kernel.org ([198.145.29.99]:40808 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726743AbgKON7n (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 15 Nov 2020 08:59:43 -0500
Received: from dellmb.labs.office.nic.cz (nat-1.nic.cz [217.31.205.1])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 018E622447;
        Sun, 15 Nov 2020 13:59:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1605448782;
        bh=4AE8gNQZLeWzEbgMlBFS4rclA9p6L/RhIPVCDpKVcJ4=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=S6Y4yIwdllJKizlyh2So56P+OhwTeF1h5sMAh21W0DVtpySEUstHL7a0kgrN7vt1R
         LafH8D2rU27H5LvpH4gx5/GdsGsGSaMeq19O39ARN22SZlTcB1Pgq0qotzvLg24Xor
         7/Ac+iOmhehPjO10XG/WbNOvFx23S4shP2IapKnY=
From:   =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To:     Gregory CLEMENT <gregory.clement@bootlin.com>
Cc:     arm@kernel.org, =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
        Andrew Lunn <andrew@lunn.ch>, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org
Subject: [PATCH mvebu-dt v3 7/7] ARM: dts: turris-omnia: remove unneeded status = "okay" properties
Date:   Sun, 15 Nov 2020 14:59:23 +0100
Message-Id: <20201115135923.11523-8-kabel@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201115135923.11523-1-kabel@kernel.org>
References: <20201115135923.11523-1-kabel@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Only nodes which have status = "disabled" defined from included files
need status = "okay".

The ethernet-phy node and the i2cmux node do not need it, since they are
wholly defined here.

Signed-off-by: Marek Behún <kabel@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: Uwe Kleine-König <uwe@kleine-koenig.org>
Cc: Jason Cooper <jason@lakedaemon.net>
Cc: Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: Andreas Färber <afaerber@suse.de>
Cc: Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
---
 arch/arm/boot/dts/armada-385-turris-omnia.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/armada-385-turris-omnia.dts b/arch/arm/boot/dts/armada-385-turris-omnia.dts
index 0002487b7b68..78b49287634c 100644
--- a/arch/arm/boot/dts/armada-385-turris-omnia.dts
+++ b/arch/arm/boot/dts/armada-385-turris-omnia.dts
@@ -173,7 +173,6 @@ i2cmux@70 {
 		#address-cells = <1>;
 		#size-cells = <0>;
 		reg = <0x70>;
-		status = "okay";
 
 		i2c@0 {
 			#address-cells = <1>;
@@ -387,7 +386,6 @@ &mdio {
 	status = "okay";
 
 	phy1: ethernet-phy@1 {
-		status = "okay";
 		compatible = "ethernet-phy-ieee802.3-c22";
 		reg = <1>;
 
-- 
2.26.2


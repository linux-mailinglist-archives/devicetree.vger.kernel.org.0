Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8AE3C2B2FC0
	for <lists+devicetree@lfdr.de>; Sat, 14 Nov 2020 19:33:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726177AbgKNScZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Nov 2020 13:32:25 -0500
Received: from mail.kernel.org ([198.145.29.99]:45856 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726140AbgKNScX (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 14 Nov 2020 13:32:23 -0500
Received: from dellmb.labs.office.nic.cz (nat-1.nic.cz [217.31.205.1])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 495E2222E9;
        Sat, 14 Nov 2020 18:32:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1605378742;
        bh=73YaFSchHMZxXA6XY5eTPt6ORwTE12IF2uXwEZzUTak=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=epzw/fxzY9oJzYcyzAI+g/9VsWhJwgfsLLXZTaZA4PNdV3P7H6pm1JGNyOzbIZLsg
         iq6ARMaq3lM4tzJFvpmRqAdgByKDzIGxXtVled2oNbGebMy7p3wiGmTQxfsOz9H3af
         fyBa5ushCrc1OBTf6ZB8YAQ1mXUNUaf/EgQSxSWY=
From:   =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To:     Gregory CLEMENT <gregory.clement@bootlin.com>
Cc:     arm@kernel.org, =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
        Andrew Lunn <andrew@lunn.ch>, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org
Subject: [PATCH mvebu-dt v2 1/6] ARM: dts: turris-omnia: enable HW buffer management
Date:   Sat, 14 Nov 2020 19:32:12 +0100
Message-Id: <20201114183217.1352-2-kabel@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201114183217.1352-1-kabel@kernel.org>
References: <20201114183217.1352-1-kabel@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The buffer manager is available on Turris Omnia but needs to be
described in device-tree to be used.

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
 arch/arm/boot/dts/armada-385-turris-omnia.dts | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm/boot/dts/armada-385-turris-omnia.dts b/arch/arm/boot/dts/armada-385-turris-omnia.dts
index 768b6c5d2129..b6bd73d8f2ba 100644
--- a/arch/arm/boot/dts/armada-385-turris-omnia.dts
+++ b/arch/arm/boot/dts/armada-385-turris-omnia.dts
@@ -84,12 +84,23 @@ pcie@3,0 {
 	};
 };
 
+&bm {
+	status = "okay";
+};
+
+&bm_bppi {
+	status = "okay";
+};
+
 /* Connected to 88E6176 switch, port 6 */
 &eth0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&ge0_rgmii_pins>;
 	status = "okay";
 	phy-mode = "rgmii";
+	buffer-manager = <&bm>;
+	bm,pool-long = <0>;
+	bm,pool-short = <3>;
 
 	fixed-link {
 		speed = <1000>;
@@ -103,6 +114,9 @@ &eth1 {
 	pinctrl-0 = <&ge1_rgmii_pins>;
 	status = "okay";
 	phy-mode = "rgmii";
+	buffer-manager = <&bm>;
+	bm,pool-long = <1>;
+	bm,pool-short = <3>;
 
 	fixed-link {
 		speed = <1000>;
@@ -115,6 +129,9 @@ &eth2 {
 	status = "okay";
 	phy-mode = "sgmii";
 	phy = <&phy1>;
+	buffer-manager = <&bm>;
+	bm,pool-long = <2>;
+	bm,pool-short = <3>;
 };
 
 &i2c0 {
-- 
2.26.2


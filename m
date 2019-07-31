Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DC56B7C113
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2019 14:21:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726508AbfGaMVt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Jul 2019 08:21:49 -0400
Received: from relay9-d.mail.gandi.net ([217.70.183.199]:35777 "EHLO
        relay9-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726281AbfGaMVs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Jul 2019 08:21:48 -0400
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id C6029FF802;
        Wed, 31 Jul 2019 12:21:46 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Gregory Clement <gregory.clement@bootlin.com>,
        Jason Cooper <jason@lakedaemon.net>,
        Andrew Lunn <andrew@lunn.ch>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Kishon Vijay Abraham I <kishon@ti.com>
Cc:     <devicetree@vger.kernel.org>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Antoine Tenart <antoine.tenart@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Nadav Haklai <nadavh@marvell.com>,
        Rob Herring <robh+dt@kernel.org>,
        Russell King <linux@armlinux.org.uk>,
        <linux-arm-kernel@lists.infradead.org>,
        Grzegorz Jaszczyk <jaz@semihalf.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH v3 13/19] dt-bindings: phy: Add Marvell COMPHY clocks
Date:   Wed, 31 Jul 2019 14:21:20 +0200
Message-Id: <20190731122126.3049-14-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190731122126.3049-1-miquel.raynal@bootlin.com>
References: <20190731122126.3049-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Marvell CP110 COMPHY block is fed by 3 clocks. Describe each of them in the
bindings.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../devicetree/bindings/phy/phy-mvebu-comphy.txt       | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/phy-mvebu-comphy.txt b/Documentation/devicetree/bindings/phy/phy-mvebu-comphy.txt
index cf2cd86db267..8c60e6985950 100644
--- a/Documentation/devicetree/bindings/phy/phy-mvebu-comphy.txt
+++ b/Documentation/devicetree/bindings/phy/phy-mvebu-comphy.txt
@@ -25,6 +25,13 @@ Required properties:
 - #address-cells: should be 1.
 - #size-cells: should be 0.
 
+Optional properlties:
+
+- clocks: pointers to the reference clocks for this device (CP110 only),
+          consequently: MG clock, MG Core clock, AXI clock.
+- clock-names: names of used clocks for CP110 only, must be :
+               "mg_clk", "mg_core_clk" and "axi_clk".
+
 A sub-node is required for each comphy lane provided by the comphy.
 
 Required properties (child nodes):
@@ -39,6 +46,9 @@ Examples:
 		compatible = "marvell,comphy-cp110";
 		reg = <0x120000 0x6000>;
 		marvell,system-controller = <&cpm_syscon0>;
+		clocks = <&CP110_LABEL(clk) 1 5>, <&CP110_LABEL(clk) 1 6>,
+			 <&CP110_LABEL(clk) 1 18>;
+		clock-names = "mg_clk", "mg_core_clk", "axi_clk";
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-- 
2.20.1


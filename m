Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 332FF2524A
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 16:35:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727044AbfEUOfq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 May 2019 10:35:46 -0400
Received: from relay11.mail.gandi.net ([217.70.178.231]:50277 "EHLO
        relay11.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726900AbfEUOfq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 May 2019 10:35:46 -0400
Received: from localhost.localdomain (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr [90.88.22.185])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay11.mail.gandi.net (Postfix) with ESMTPSA id 5172C10000A;
        Tue, 21 May 2019 14:35:38 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Kishon Vijay Abraham I <kishon@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     <devicetree@vger.kernel.org>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Antoine Tenart <antoine.tenart@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Nadav Haklai <nadavh@marvell.com>,
        Grzegorz Jaszczyk <jaz@semihalf.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH] dt-bindings: phy: mvebu-comphy: Update references to CP110 nodes
Date:   Tue, 21 May 2019 16:35:18 +0200
Message-Id: <20190521143518.32416-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Grzegorz Jaszczyk <jaz@semihalf.com>

The CP110 DT nodes references have changed, reflect these changes in
COMPHY documentation.

Signed-off-by: Grzegorz Jaszczyk <jaz@semihalf.com>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../devicetree/bindings/phy/phy-mvebu-comphy.txt          | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/phy-mvebu-comphy.txt b/Documentation/devicetree/bindings/phy/phy-mvebu-comphy.txt
index cf2cd86db267..af2402c18513 100644
--- a/Documentation/devicetree/bindings/phy/phy-mvebu-comphy.txt
+++ b/Documentation/devicetree/bindings/phy/phy-mvebu-comphy.txt
@@ -35,19 +35,19 @@ Required properties (child nodes):
 
 Examples:
 
-	cpm_comphy: phy@120000 {
+	CP110_LABEL(comphy): phy@120000 {
 		compatible = "marvell,comphy-cp110";
 		reg = <0x120000 0x6000>;
-		marvell,system-controller = <&cpm_syscon0>;
+		marvell,system-controller = <&CP110_LABEL(syscon0)>;
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		cpm_comphy0: phy@0 {
+		CP110_LABEL(comphy0): phy@0 {
 			reg = <0>;
 			#phy-cells = <1>;
 		};
 
-		cpm_comphy1: phy@1 {
+		CP110_LABEL(comphy1): phy@1 {
 			reg = <1>;
 			#phy-cells = <1>;
 		};
-- 
2.19.1


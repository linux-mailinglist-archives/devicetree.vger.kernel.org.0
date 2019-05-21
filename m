Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 753A7251E3
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 16:25:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728342AbfEUOZQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 May 2019 10:25:16 -0400
Received: from relay9-d.mail.gandi.net ([217.70.183.199]:45055 "EHLO
        relay9-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728331AbfEUOZP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 May 2019 10:25:15 -0400
X-Originating-IP: 90.88.22.185
Received: from localhost.localdomain (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr [90.88.22.185])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 9DDFEFF816;
        Tue, 21 May 2019 14:25:11 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Gregory Clement <gregory.clement@bootlin.com>,
        Jason Cooper <jason@lakedaemon.net>,
        Andrew Lunn <andrew@lunn.ch>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Antoine Tenart <antoine.tenart@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Nadav Haklai <nadavh@marvell.com>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH resend 1/2] arm64: dts: marvell: Change core numbering in AP806 thermal-node
Date:   Tue, 21 May 2019 16:25:03 +0200
Message-Id: <20190521142504.31558-2-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190521142504.31558-1-miquel.raynal@bootlin.com>
References: <20190521142504.31558-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

When adding thermal nodes, the CPUs have been named from 1 to 4 while
usually everywhere else they are referred as 0-3. Let's change this to
be consistent with later changes when we will use CPUfreq and CPU
phandles as cooling devices to avoid inconsistencies in the nodes
numbering.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 arch/arm64/boot/dts/marvell/armada-ap806.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-ap806.dtsi b/arch/arm64/boot/dts/marvell/armada-ap806.dtsi
index 28e9dbcf47e3..df90e8b1daa8 100644
--- a/arch/arm64/boot/dts/marvell/armada-ap806.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-ap806.dtsi
@@ -324,7 +324,7 @@
 			cooling-maps { };
 		};
 
-		ap_thermal_cpu1: ap-thermal-cpu1 {
+		ap_thermal_cpu0: ap-thermal-cpu0 {
 			polling-delay-passive = <1000>;
 			polling-delay = <1000>;
 
@@ -334,7 +334,7 @@
 			cooling-maps { };
 		};
 
-		ap_thermal_cpu2: ap-thermal-cpu2 {
+		ap_thermal_cpu1: ap-thermal-cpu1 {
 			polling-delay-passive = <1000>;
 			polling-delay = <1000>;
 
@@ -344,7 +344,7 @@
 			cooling-maps { };
 		};
 
-		ap_thermal_cpu3: ap-thermal-cpu3 {
+		ap_thermal_cpu2: ap-thermal-cpu2 {
 			polling-delay-passive = <1000>;
 			polling-delay = <1000>;
 
@@ -354,7 +354,7 @@
 			cooling-maps { };
 		};
 
-		ap_thermal_cpu4: ap-thermal-cpu4 {
+		ap_thermal_cpu3: ap-thermal-cpu3 {
 			polling-delay-passive = <1000>;
 			polling-delay = <1000>;
 
-- 
2.19.1


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5119F1648D1
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2020 16:39:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726668AbgBSPjf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Feb 2020 10:39:35 -0500
Received: from albert.telenet-ops.be ([195.130.137.90]:56694 "EHLO
        albert.telenet-ops.be" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726450AbgBSPjf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Feb 2020 10:39:35 -0500
Received: from ramsan ([84.195.182.253])
        by albert.telenet-ops.be with bizsmtp
        id 4ffX220055USYZQ06ffXFp; Wed, 19 Feb 2020 16:39:32 +0100
Received: from rox.of.borg ([192.168.97.57])
        by ramsan with esmtp (Exim 4.90_1)
        (envelope-from <geert@linux-m68k.org>)
        id 1j4RRj-0004Ls-1B; Wed, 19 Feb 2020 16:39:31 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
        (envelope-from <geert@linux-m68k.org>)
        id 1j4RRi-0002tK-Vl; Wed, 19 Feb 2020 16:39:31 +0100
From:   Geert Uytterhoeven <geert+renesas@glider.be>
To:     Magnus Damm <magnus.damm@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-renesas-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] ARM: dts: r8a7779: Remove deprecated "renesas,rcar-sata" compatible value
Date:   Wed, 19 Feb 2020 16:39:29 +0100
Message-Id: <20200219153929.11073-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The "renesas,rcar-sata" compatible value was deprecated by
"renesas,sata-r8a7779" many years ago, in commit e67adb4e669db834
("sata_rcar: Add R-Car Gen2 SATA PHY support").  Drop it.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
To be queued in renesas-fixes for v5.6, as not having to care about the
deprecated value will simplify the json-schema conversion.
---
 arch/arm/boot/dts/r8a7779.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/r8a7779.dtsi b/arch/arm/boot/dts/r8a7779.dtsi
index beb9885e6ffca7a5..c0999e27e9b145e3 100644
--- a/arch/arm/boot/dts/r8a7779.dtsi
+++ b/arch/arm/boot/dts/r8a7779.dtsi
@@ -377,7 +377,7 @@
 	};
 
 	sata: sata@fc600000 {
-		compatible = "renesas,sata-r8a7779", "renesas,rcar-sata";
+		compatible = "renesas,sata-r8a7779";
 		reg = <0xfc600000 0x200000>;
 		interrupts = <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&mstp1_clks R8A7779_CLK_SATA>;
-- 
2.17.1


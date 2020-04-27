Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D70251BADE5
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2020 21:29:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726426AbgD0T3j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Apr 2020 15:29:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726285AbgD0T3j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Apr 2020 15:29:39 -0400
Received: from andre.telenet-ops.be (andre.telenet-ops.be [IPv6:2a02:1800:120:4::f00:15])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABE1DC0610D5
        for <devicetree@vger.kernel.org>; Mon, 27 Apr 2020 12:29:38 -0700 (PDT)
Received: from ramsan ([IPv6:2a02:1810:ac12:ed60:d03f:8af3:4e83:6587])
        by andre.telenet-ops.be with bizsmtp
        id XvVZ2200527aUyk01vVZQ8; Mon, 27 Apr 2020 21:29:37 +0200
Received: from rox.of.borg ([192.168.97.57])
        by ramsan with esmtp (Exim 4.90_1)
        (envelope-from <geert@linux-m68k.org>)
        id 1jT9Rd-0007ml-4w; Mon, 27 Apr 2020 21:29:33 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
        (envelope-from <geert@linux-m68k.org>)
        id 1jT9Rd-0007Xx-2T; Mon, 27 Apr 2020 21:29:33 +0200
From:   Geert Uytterhoeven <geert+renesas@glider.be>
To:     Magnus Damm <magnus.damm@gmail.com>,
        Chris Brandt <chris.brandt@renesas.com>
Cc:     linux-renesas-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] ARM: dts: r7s9210: Remove bogus clock-names from OSTM nodes
Date:   Mon, 27 Apr 2020 21:29:32 +0200
Message-Id: <20200427192932.28967-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Usually it does not hurt to add "clock-names" properties, even if the
(pre-json-schema) DT bindings do not mention them.

However, the actual clock names for the OS Timer nodes are not fixed,
but contain the indices of the consumer instances.  Hence they cannot
easily be used by a driver, without scanning for all possible indices.

Remove them, as the OSTM DT bindings do not specify clock-names anyway.

Fixes: bbbcd02b82552907 ("ARM: dts: r7s9210: Initial SoC device tree")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
To be queued in renesas-fixes for v5.7, to avoid the json-schema OSTM DT
bindings conversion introducing a regression.
---
 arch/arm/boot/dts/r7s9210.dtsi | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm/boot/dts/r7s9210.dtsi b/arch/arm/boot/dts/r7s9210.dtsi
index 72b79770e336a79e..cace4380749711d7 100644
--- a/arch/arm/boot/dts/r7s9210.dtsi
+++ b/arch/arm/boot/dts/r7s9210.dtsi
@@ -304,7 +304,6 @@
 			reg = <0xe803b000 0x30>;
 			interrupts = <GIC_SPI 56 IRQ_TYPE_EDGE_RISING>;
 			clocks = <&cpg CPG_MOD 36>;
-			clock-names = "ostm0";
 			power-domains = <&cpg>;
 			status = "disabled";
 		};
@@ -314,7 +313,6 @@
 			reg = <0xe803c000 0x30>;
 			interrupts = <GIC_SPI 57 IRQ_TYPE_EDGE_RISING>;
 			clocks = <&cpg CPG_MOD 35>;
-			clock-names = "ostm1";
 			power-domains = <&cpg>;
 			status = "disabled";
 		};
@@ -324,7 +322,6 @@
 			reg = <0xe803d000 0x30>;
 			interrupts = <GIC_SPI 58 IRQ_TYPE_EDGE_RISING>;
 			clocks = <&cpg CPG_MOD 34>;
-			clock-names = "ostm2";
 			power-domains = <&cpg>;
 			status = "disabled";
 		};
-- 
2.17.1


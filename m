Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 52500478BBE
	for <lists+devicetree@lfdr.de>; Fri, 17 Dec 2021 13:49:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236458AbhLQMtu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Dec 2021 07:49:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236460AbhLQMtt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Dec 2021 07:49:49 -0500
Received: from laurent.telenet-ops.be (laurent.telenet-ops.be [IPv6:2a02:1800:110:4::f00:19])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CBD4C061746
        for <devicetree@vger.kernel.org>; Fri, 17 Dec 2021 04:49:49 -0800 (PST)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed20:d13f:527c:5504:a743])
        by laurent.telenet-ops.be with bizsmtp
        id XQpm2600K250X3001QpmGQ; Fri, 17 Dec 2021 13:49:47 +0100
Received: from rox.of.borg ([192.168.97.57])
        by ramsan.of.borg with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1myCgD-005YxQ-Kj; Fri, 17 Dec 2021 13:49:45 +0100
Received: from geert by rox.of.borg with local (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1myCgC-00ASrI-JL; Fri, 17 Dec 2021 13:49:44 +0100
From:   Geert Uytterhoeven <geert@linux-m68k.org>
To:     Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        Lewis Hanly <lewis.hanly@microchip.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Conor Dooley <conor.dooley@microchip.com>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert@linux-m68k.org>
Subject: [PATCH v3 06/11] riscv: dts: microchip: mpfs: Fix clock controller node
Date:   Fri, 17 Dec 2021 13:49:27 +0100
Message-Id: <d0445821145ddfb5026b677e16e50b08992be3b5.1639744905.git.geert@linux-m68k.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1639744905.git.geert@linux-m68k.org>
References: <cover.1639744905.git.geert@linux-m68k.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix the device node for the clock controller:
  - Remove bogus "reg-names" property,
  - Remove unneeded "clock-output-names" property.

Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Tested-by: Conor Dooley <conor.dooley@microchip.com>
---
v3:
  - Add Reviewed-by, Tested-by,

v2:
  - New.
---
 arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
index b372bc6459bf163a..d9c1dee3fb25beb8 100644
--- a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
+++ b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
@@ -197,17 +197,8 @@ dma@3000000 {
 		clkcfg: clkcfg@20002000 {
 			compatible = "microchip,mpfs-clkcfg";
 			reg = <0x0 0x20002000 0x0 0x1000>;
-			reg-names = "mss_sysreg";
 			clocks = <&refclk>;
 			#clock-cells = <1>;
-			clock-output-names = "cpu", "axi", "ahb", "envm",	/* 0-3   */
-				 "mac0", "mac1", "mmc", "timer",		/* 4-7   */
-				"mmuart0", "mmuart1", "mmuart2", "mmuart3",	/* 8-11  */
-				"mmuart4", "spi0", "spi1", "i2c0",		/* 12-15 */
-				"i2c1", "can0", "can1", "usb",			/* 16-19 */
-				"rsvd", "rtc", "qspi", "gpio0",			/* 20-23 */
-				"gpio1", "gpio2", "ddrc", "fic0",		/* 24-27 */
-				"fic1", "fic2", "fic3", "athena", "cfm";	/* 28-32 */
 		};
 
 		serial0: serial@20000000 {
-- 
2.25.1


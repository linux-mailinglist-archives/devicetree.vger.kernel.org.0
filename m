Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 16F41477344
	for <lists+devicetree@lfdr.de>; Thu, 16 Dec 2021 14:37:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237616AbhLPNhq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Dec 2021 08:37:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232211AbhLPNhq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Dec 2021 08:37:46 -0500
Received: from michel.telenet-ops.be (michel.telenet-ops.be [IPv6:2a02:1800:110:4::f00:18])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E6F5C061746
        for <devicetree@vger.kernel.org>; Thu, 16 Dec 2021 05:37:44 -0800 (PST)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed20:d13f:527c:5504:a743])
        by michel.telenet-ops.be with bizsmtp
        id X1dg2600A250X30061dgUU; Thu, 16 Dec 2021 14:37:42 +0100
Received: from rox.of.borg ([192.168.97.57])
        by ramsan.of.borg with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1mxqx1-005Q8x-Ic; Thu, 16 Dec 2021 14:37:39 +0100
Received: from geert by rox.of.borg with local (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1mxqx1-009xuE-1a; Thu, 16 Dec 2021 14:37:39 +0100
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
Subject: [PATCH v2 03/11] riscv: dts: microchip: mpfs: Drop empty chosen node
Date:   Thu, 16 Dec 2021 14:37:27 +0100
Message-Id: <abb639cdf0b9926da3d735598a71a29d0ea4229c.1639660956.git.geert@linux-m68k.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1639660956.git.geert@linux-m68k.org>
References: <cover.1639660956.git.geert@linux-m68k.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

It does not make sense to have an (empty) chosen node in an SoC-specific
.dtsi, as chosen is meant for system-specific configuration.
It is already provided in microchip-mpfs-icicle-kit.dts anyway.

Fixes: 0fa6107eca4186ad ("RISC-V: Initial DTS for Microchip ICICLE board")
Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
v2:
  - Add Reviewed-by.
---
 arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
index c9f6d205d2ba1a5e..794da883acb19256 100644
--- a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
+++ b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
@@ -9,9 +9,6 @@ / {
 	model = "Microchip PolarFire SoC";
 	compatible = "microchip,mpfs";
 
-	chosen {
-	};
-
 	cpus {
 		#address-cells = <1>;
 		#size-cells = <0>;
-- 
2.25.1


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6398E477345
	for <lists+devicetree@lfdr.de>; Thu, 16 Dec 2021 14:37:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234681AbhLPNhq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Dec 2021 08:37:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234656AbhLPNhq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Dec 2021 08:37:46 -0500
Received: from michel.telenet-ops.be (michel.telenet-ops.be [IPv6:2a02:1800:110:4::f00:18])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09EC1C061401
        for <devicetree@vger.kernel.org>; Thu, 16 Dec 2021 05:37:44 -0800 (PST)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed20:d13f:527c:5504:a743])
        by michel.telenet-ops.be with bizsmtp
        id X1dg2600T250X30061dgUc; Thu, 16 Dec 2021 14:37:42 +0100
Received: from rox.of.borg ([192.168.97.57])
        by ramsan.of.borg with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1mxqx2-005Q94-6D; Thu, 16 Dec 2021 14:37:40 +0100
Received: from geert by rox.of.borg with local (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1mxqx1-009xv3-7f; Thu, 16 Dec 2021 14:37:39 +0100
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
Subject: [PATCH v2 10/11] riscv: dts: sifive: fu540-c000: Drop bogus soc node compatible values
Date:   Thu, 16 Dec 2021 14:37:34 +0100
Message-Id: <d91be26a619dbd0aec59b263d25b4db4205a6db7.1639660956.git.geert@linux-m68k.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1639660956.git.geert@linux-m68k.org>
References: <cover.1639660956.git.geert@linux-m68k.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

"make dtbs_check":

    arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dt.yaml: soc: $nodename:0: '/' was expected
    	From schema: Documentation/devicetree/bindings/riscv/sifive.yaml
    arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dt.yaml: soc: compatible: 'oneOf' conditional failed, one must be fixed:
    	'sifive,fu540-c000' is not one of ['sifive,hifive-unleashed-a00']
    	'sifive,fu540-c000' is not one of ['sifive,hifive-unmatched-a00']
    	'sifive,fu540-c000' was expected
    	'sifive,fu740-c000' was expected
    	'sifive,fu540' was expected
    	'sifive,fu740' was expected
    	From schema: Documentation/devicetree/bindings/riscv/sifive.yaml

This happens because the "soc" subnode declares compatibility with
"sifive,fu540-c000" and "sifive,fu540", while these are only intended
for the root node.

Fix this by removing the bogus compatible values from the "soc" node.

Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
v2:
  - Add Reviewed-by.
---
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
index e2efcf08210926f8..b1250c16816f5c9d 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -137,7 +137,7 @@ cpu4_intc: interrupt-controller {
 	soc {
 		#address-cells = <2>;
 		#size-cells = <2>;
-		compatible = "sifive,fu540-c000", "sifive,fu540", "simple-bus";
+		compatible = "simple-bus";
 		ranges;
 		plic0: interrupt-controller@c000000 {
 			#interrupt-cells = <1>;
-- 
2.25.1


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 12E9B45DDBB
	for <lists+devicetree@lfdr.de>; Thu, 25 Nov 2021 16:41:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356122AbhKYPow (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Nov 2021 10:44:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356047AbhKYPmw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Nov 2021 10:42:52 -0500
Received: from baptiste.telenet-ops.be (baptiste.telenet-ops.be [IPv6:2a02:1800:120:4::f00:13])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6C8EC0613ED
        for <devicetree@vger.kernel.org>; Thu, 25 Nov 2021 07:31:38 -0800 (PST)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed10:1511:ffa3:275:45dd])
        by baptiste.telenet-ops.be with bizsmtp
        id NfXZ2600Y5CGg7701fXZrA; Thu, 25 Nov 2021 16:31:36 +0100
Received: from rox.of.borg ([192.168.97.57])
        by ramsan.of.borg with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1mqGij-000DSM-8Z; Thu, 25 Nov 2021 16:31:33 +0100
Received: from geert by rox.of.borg with local (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1mqGii-000gYb-I1; Thu, 25 Nov 2021 16:31:32 +0100
From:   Geert Uytterhoeven <geert@linux-m68k.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        Lewis Hanly <lewis.hanly@microchip.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Conor Dooley <conor.dooley@microchip.com>
Cc:     devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        Geert Uytterhoeven <geert@linux-m68k.org>
Subject: [PATCH 1/9] riscv: dts: canaan: Fix SPI FLASH node names
Date:   Thu, 25 Nov 2021 16:31:23 +0100
Message-Id: <20211125153131.163533-2-geert@linux-m68k.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211125153131.163533-1-geert@linux-m68k.org>
References: <20211125153131.163533-1-geert@linux-m68k.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

"make dtbs_check":

    arch/riscv/boot/dts/canaan/sipeed_maix_bit.dt.yaml: spi-flash@0: $nodename:0: 'spi-flash@0' does not match '^flash(@.*)?$'
	    From schema: Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml

Fix this by renaming all SPI FLASH nodes to "flash".

Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
---
 arch/riscv/boot/dts/canaan/sipeed_maix_bit.dts  | 2 +-
 arch/riscv/boot/dts/canaan/sipeed_maix_dock.dts | 2 +-
 arch/riscv/boot/dts/canaan/sipeed_maix_go.dts   | 2 +-
 arch/riscv/boot/dts/canaan/sipeed_maixduino.dts | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/boot/dts/canaan/sipeed_maix_bit.dts b/arch/riscv/boot/dts/canaan/sipeed_maix_bit.dts
index 0bcaf35045e795ed..984872f3d3a9b9ea 100644
--- a/arch/riscv/boot/dts/canaan/sipeed_maix_bit.dts
+++ b/arch/riscv/boot/dts/canaan/sipeed_maix_bit.dts
@@ -199,7 +199,7 @@ slot@0 {
 };
 
 &spi3 {
-	spi-flash@0 {
+	flash@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0>;
 		spi-max-frequency = <50000000>;
diff --git a/arch/riscv/boot/dts/canaan/sipeed_maix_dock.dts b/arch/riscv/boot/dts/canaan/sipeed_maix_dock.dts
index ac8a03f5867adbd0..7ba99b4da304218e 100644
--- a/arch/riscv/boot/dts/canaan/sipeed_maix_dock.dts
+++ b/arch/riscv/boot/dts/canaan/sipeed_maix_dock.dts
@@ -201,7 +201,7 @@ slot@0 {
 };
 
 &spi3 {
-	spi-flash@0 {
+	flash@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0>;
 		spi-max-frequency = <50000000>;
diff --git a/arch/riscv/boot/dts/canaan/sipeed_maix_go.dts b/arch/riscv/boot/dts/canaan/sipeed_maix_go.dts
index 623998194bc18aab..be9b12c9b374acb3 100644
--- a/arch/riscv/boot/dts/canaan/sipeed_maix_go.dts
+++ b/arch/riscv/boot/dts/canaan/sipeed_maix_go.dts
@@ -209,7 +209,7 @@ slot@0 {
 };
 
 &spi3 {
-	spi-flash@0 {
+	flash@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0>;
 		spi-max-frequency = <50000000>;
diff --git a/arch/riscv/boot/dts/canaan/sipeed_maixduino.dts b/arch/riscv/boot/dts/canaan/sipeed_maixduino.dts
index cf605ba0d67e43cd..031c0c28f8195777 100644
--- a/arch/riscv/boot/dts/canaan/sipeed_maixduino.dts
+++ b/arch/riscv/boot/dts/canaan/sipeed_maixduino.dts
@@ -174,7 +174,7 @@ slot@0 {
 };
 
 &spi3 {
-	spi-flash@0 {
+	flash@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0>;
 		spi-max-frequency = <50000000>;
-- 
2.25.1


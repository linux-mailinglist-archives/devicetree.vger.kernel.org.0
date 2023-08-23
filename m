Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8E495785818
	for <lists+devicetree@lfdr.de>; Wed, 23 Aug 2023 14:52:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234498AbjHWMw3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Aug 2023 08:52:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232211AbjHWMw2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Aug 2023 08:52:28 -0400
Received: from michel.telenet-ops.be (michel.telenet-ops.be [IPv6:2a02:1800:110:4::f00:18])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F38FDE47
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 05:52:25 -0700 (PDT)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed40:6477:4282:8a75:3696])
        by michel.telenet-ops.be with bizsmtp
        id d0sP2A0010iR7xF060sPH1; Wed, 23 Aug 2023 14:52:23 +0200
Received: from rox.of.borg ([192.168.97.57])
        by ramsan.of.borg with esmtp (Exim 4.95)
        (envelope-from <geert@linux-m68k.org>)
        id 1qYnLK-001Y3o-7o;
        Wed, 23 Aug 2023 14:52:22 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
        (envelope-from <geert@linux-m68k.org>)
        id 1qYnLS-00HSD4-ON;
        Wed, 23 Aug 2023 14:52:22 +0200
From:   Geert Uytterhoeven <geert+renesas@glider.be>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Lizhi Hou <lizhi.hou@amd.com>
Cc:     Herve Codina <herve.codina@bootlin.com>,
        devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] [RFC] of: unittest: overlay_pci_node: Fix overlay style
Date:   Wed, 23 Aug 2023 14:52:21 +0200
Message-Id: <6bb6289a1829bf4d03fc65994ad4887ca60afffa.1692795112.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,
        SPF_NONE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Miscellaneous fixes and improvements to the overlay_pci_node:
  - Add missing /plugin/,
  - Convert to sugar syntax,
  - Add missing blank lines between properties and subnodes.

As sugar syntax does not support empty target paths, the test device is
added to /testcase-data/overlay-node instead.

Fixes: 26409dd045892904 ("of: unittest: Add pci_dt_testdrv pci driver")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
RFC, as I don't have a QEMU setup to run the test.
---
 .../of/unittest-data/overlay_pci_node.dtso    | 33 +++++++++----------
 1 file changed, 16 insertions(+), 17 deletions(-)

diff --git a/drivers/of/unittest-data/overlay_pci_node.dtso b/drivers/of/unittest-data/overlay_pci_node.dtso
index c05e52e9e44a9583..f18c9795e6efa5f3 100644
--- a/drivers/of/unittest-data/overlay_pci_node.dtso
+++ b/drivers/of/unittest-data/overlay_pci_node.dtso
@@ -1,22 +1,21 @@
 // SPDX-License-Identifier: GPL-2.0
 /dts-v1/;
-/ {
-	fragment@0 {
-		target-path="";
-		__overlay__ {
-			#address-cells = <3>;
-			#size-cells = <2>;
-			pci-ep-bus@0 {
-				compatible = "simple-bus";
-				#address-cells = <1>;
-				#size-cells = <1>;
-				ranges = <0x0 0x0 0x0 0x0 0x1000>;
-				reg = <0 0 0 0 0>;
-				unittest-pci@100 {
-					compatible = "unittest-pci";
-					reg = <0x100 0x200>;
-				};
-			};
+/plugin/;
+
+&{/testcase-data/overlay-node} {
+	#address-cells = <3>;
+	#size-cells = <2>;
+
+	pci-ep-bus@0 {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x0 0x0 0x0 0x0 0x1000>;
+		reg = <0 0 0 0 0>;
+
+		unittest-pci@100 {
+			compatible = "unittest-pci";
+			reg = <0x100 0x200>;
 		};
 	};
 };
-- 
2.34.1


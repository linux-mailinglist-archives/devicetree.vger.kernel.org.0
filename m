Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D344C249E3D
	for <lists+devicetree@lfdr.de>; Wed, 19 Aug 2020 14:39:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726794AbgHSMjR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Aug 2020 08:39:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728015AbgHSMjN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Aug 2020 08:39:13 -0400
Received: from albert.telenet-ops.be (albert.telenet-ops.be [IPv6:2a02:1800:110:4::f00:1a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44B4FC061757
        for <devicetree@vger.kernel.org>; Wed, 19 Aug 2020 05:39:13 -0700 (PDT)
Received: from ramsan ([84.195.186.194])
        by albert.telenet-ops.be with bizsmtp
        id HQfB2301v4C55Sk06QfBq9; Wed, 19 Aug 2020 14:39:11 +0200
Received: from rox.of.borg ([192.168.97.57])
        by ramsan with esmtp (Exim 4.90_1)
        (envelope-from <geert@linux-m68k.org>)
        id 1k8NN1-0002J1-Ek; Wed, 19 Aug 2020 14:39:11 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
        (envelope-from <geert@linux-m68k.org>)
        id 1k8NN1-00056x-CT; Wed, 19 Aug 2020 14:39:11 +0200
From:   Geert Uytterhoeven <geert+renesas@glider.be>
To:     Magnus Damm <magnus.damm@gmail.com>,
        Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc:     linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] arm64: dts: renesas: Drop superfluous pin configuration containers
Date:   Wed, 19 Aug 2020 14:39:10 +0200
Message-Id: <20200819123910.19606-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As the pin configuration child nodes for EtherAVB on the Draak and Ebisu
boards contain only a single configuration, there is no need to wrap
them in additional grandchild containers.  Hence remove the superfluous
level.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
To be queued in renesas-devel for v5.10.

 arch/arm64/boot/dts/renesas/r8a77990-ebisu.dts | 6 ++----
 arch/arm64/boot/dts/renesas/r8a77995-draak.dts | 6 ++----
 2 files changed, 4 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r8a77990-ebisu.dts b/arch/arm64/boot/dts/renesas/r8a77990-ebisu.dts
index 7402cfa8d4e4dfc8..e0ccca2222d2d00c 100644
--- a/arch/arm64/boot/dts/renesas/r8a77990-ebisu.dts
+++ b/arch/arm64/boot/dts/renesas/r8a77990-ebisu.dts
@@ -520,10 +520,8 @@
 
 &pfc {
 	avb_pins: avb {
-		mux {
-			groups = "avb_link", "avb_mii";
-			function = "avb";
-		};
+		groups = "avb_link", "avb_mii";
+		function = "avb";
 	};
 
 	canfd0_pins: canfd0 {
diff --git a/arch/arm64/boot/dts/renesas/r8a77995-draak.dts b/arch/arm64/boot/dts/renesas/r8a77995-draak.dts
index 79c73a99d2fed77f..8f471881b7a367db 100644
--- a/arch/arm64/boot/dts/renesas/r8a77995-draak.dts
+++ b/arch/arm64/boot/dts/renesas/r8a77995-draak.dts
@@ -393,10 +393,8 @@
 
 &pfc {
 	avb0_pins: avb {
-		mux {
-			groups = "avb0_link", "avb0_mdio", "avb0_mii";
-			function = "avb0";
-		};
+		groups = "avb0_link", "avb0_mdio", "avb0_mii";
+		function = "avb0";
 	};
 
 	can0_pins: can0 {
-- 
2.17.1


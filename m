Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 802F035B798
	for <lists+devicetree@lfdr.de>; Mon, 12 Apr 2021 02:08:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235229AbhDLAI7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 11 Apr 2021 20:08:59 -0400
Received: from foss.arm.com ([217.140.110.172]:59620 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S235095AbhDLAI7 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 11 Apr 2021 20:08:59 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 936CE1FB;
        Sun, 11 Apr 2021 17:08:41 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1AB1F3F694;
        Sun, 11 Apr 2021 17:08:39 -0700 (PDT)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@googlegroups.com,
        Michael Weiser <michael.weiser@gmx.de>,
        Daniel Kulesz <kuleszdl@posteo.org>
Subject: [PATCH] arm64: dts: allwinner: Revert SD card CD GPIO for Pine64-LTS
Date:   Mon, 12 Apr 2021 01:08:13 +0100
Message-Id: <20210412000813.13071-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.14.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Commit 941432d00768 ("arm64: dts: allwinner: Drop non-removable from
SoPine/LTS SD card") enabled the card detect GPIO for the SOPine module,
along the way with the Pine64-LTS, which share the same base .dtsi.

This was based on the observation that the Pine64-LTS has as "push-push"
SD card socket, and that the schematic mentions the card detect GPIO.

After having received two reports about failing SD card access with that
patch, some more research and polls on that subject revealed that there
are at least two different versions of the Pine64-LTS out there:
- On some boards (including mine) the card detect pin is "stuck" at
  high, regardless of an microSD card being inserted or not.
- On other boards the card-detect is working, but is active-high, by
  virtue of an explicit inverter circuit, as shown in the schematic.

To cover all versions of the board out there, and don't take any chances,
let's revert the introduction of the CD GPIO, and go back to the
non-removable property for the Pine64-LTS. That should avoid regressions
and should work for everyone.
The SOPine card detect has proven to be working, so let's keep that
GPIO in place.

Fixes: 941432d00768 ("arm64: dts: allwinner: Drop non-removable from SoPine/LTS SD card")
Reported-by: Michael Weiser <michael.weiser@gmx.de>
Reported-by: Daniel Kulesz <kuleszdl@posteo.org>
Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
index e79ce49e7e6a..843338e19694 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
@@ -21,5 +21,5 @@
 };
 
 &mmc0 {
-	cd-gpios = <&pio 5 6 GPIO_ACTIVE_LOW>; /* PF6 push-push switch */
+	non-removable;		/* card detect is broken on some boards */
 };
-- 
2.17.5


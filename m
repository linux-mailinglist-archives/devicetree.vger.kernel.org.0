Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 633B6158E6F
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2020 13:26:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728351AbgBKM0d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Feb 2020 07:26:33 -0500
Received: from mx2.suse.de ([195.135.220.15]:50154 "EHLO mx2.suse.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728454AbgBKM0c (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 11 Feb 2020 07:26:32 -0500
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
        by mx2.suse.de (Postfix) with ESMTP id 5FDB4B02C;
        Tue, 11 Feb 2020 12:26:31 +0000 (UTC)
From:   Nikolay Borisov <nborisov@suse.com>
To:     mripard@kernel.org, bjorn.andersson@linaro.org
Cc:     devicetree@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Nikolay Borisov <nborisov@suse.com>
Subject: [PATCH v2 2/3] arm64: dts: allwinner: a64: Add hwspinlock node
Date:   Tue, 11 Feb 2020 14:26:23 +0200
Message-Id: <20200211122624.16484-3-nborisov@suse.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200211122624.16484-1-nborisov@suse.com>
References: <20200211122624.16484-1-nborisov@suse.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a node describing the hwspinlock on A64.

Signed-off-by: Nikolay Borisov <nborisov@suse.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 27e48234f1c2..834f2f7f60bc 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -496,6 +496,15 @@
 			resets = <&ccu RST_BUS_CE>;
 		};
 
+		hwspinlock: spinlock@1c18000 {
+			compatible = "allwinner,sun50i-a64-hwspinlock";
+			reg = <0x01c18000 0x1000>;
+			clocks = <&ccu CLK_BUS_SPINLOCK>;
+			resets = <&ccu RST_BUS_SPINLOCK>;
+			#hwlock-cells = <1>;
+			status = "ok";
+		};
+
 		usb_otg: usb@1c19000 {
 			compatible = "allwinner,sun8i-a33-musb";
 			reg = <0x01c19000 0x0400>;
-- 
2.17.1


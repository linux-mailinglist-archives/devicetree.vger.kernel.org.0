Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 71A392F4E9F
	for <lists+devicetree@lfdr.de>; Wed, 13 Jan 2021 16:29:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727053AbhAMP2g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jan 2021 10:28:36 -0500
Received: from foss.arm.com ([217.140.110.172]:37934 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727047AbhAMP2g (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 13 Jan 2021 10:28:36 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9F6A01424;
        Wed, 13 Jan 2021 07:27:17 -0800 (PST)
Received: from localhost.localdomain (unknown [172.31.20.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1518E3F66E;
        Wed, 13 Jan 2021 07:27:15 -0800 (PST)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        Rob Herring <robh@kernel.org>
Cc:     Jernej Skrabec <jernej.skrabec@siol.net>,
        Icenowy Zheng <icenowy@aosc.io>,
        Emmanuel Vadot <manu@bidouilliste.com>,
        Heinrich Schuchardt <xypron.glpk@gmx.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@googlegroups.com
Subject: [PATCH v2 8/8] arm64: dts: allwinner: Pine H64: Enable HS200 eMMC mode
Date:   Wed, 13 Jan 2021 15:26:30 +0000
Message-Id: <20210113152630.28810-9-andre.przywara@arm.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20210113152630.28810-1-andre.przywara@arm.com>
References: <20210113152630.28810-1-andre.przywara@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The eMMC modules offered for the Pine64 boards are capable of the HS200
eMMC speed mode, when observing the frequency limit of 150 MHz.

Enable that in the DT.

This increases the interface speed from ~80 MB/s to ~120 MB/s.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
Acked-by: Chen-Yu Tsai <wens@csie.org>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
index 961732c52aa0..15ceba027a73 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
@@ -142,6 +142,7 @@
 	vqmmc-supply = <&reg_bldo2>;
 	non-removable;
 	cap-mmc-hw-reset;
+	mmc-hs200-1_8v;
 	bus-width = <8>;
 	status = "okay";
 };
-- 
2.17.5


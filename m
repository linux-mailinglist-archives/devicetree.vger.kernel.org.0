Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5B3CC2F4E98
	for <lists+devicetree@lfdr.de>; Wed, 13 Jan 2021 16:29:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725870AbhAMP14 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jan 2021 10:27:56 -0500
Received: from foss.arm.com ([217.140.110.172]:37826 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725846AbhAMP14 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 13 Jan 2021 10:27:56 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7CCFF11FB;
        Wed, 13 Jan 2021 07:27:10 -0800 (PST)
Received: from localhost.localdomain (unknown [172.31.20.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EC9AA3F66E;
        Wed, 13 Jan 2021 07:27:08 -0800 (PST)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        Rob Herring <robh@kernel.org>
Cc:     Jernej Skrabec <jernej.skrabec@siol.net>,
        Icenowy Zheng <icenowy@aosc.io>,
        Emmanuel Vadot <manu@bidouilliste.com>,
        Heinrich Schuchardt <xypron.glpk@gmx.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@googlegroups.com
Subject: [PATCH v2 4/8] arm64: dts: allwinner: Drop non-removable from SoPine/LTS SD card
Date:   Wed, 13 Jan 2021 15:26:26 +0000
Message-Id: <20210113152630.28810-5-andre.przywara@arm.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20210113152630.28810-1-andre.przywara@arm.com>
References: <20210113152630.28810-1-andre.przywara@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The SD card on the SoPine SoM module is somewhat concealed, so was
originally defined as "non-removable".
However there is a working card-detect pin (tested on two different
SoM versions), and in certain SoM base boards it might be actually
accessible at runtime.
Also the Pine64-LTS shares the SoPine base .dtsi, so inherited the
non-removable flag, even though the SD card slot is perfectly accessible
and usable there. (It turns out that just *my* board has a broken card
detect switch, so I originally thought CD wouldn't work on the LTS.)

Drop the "non-removable" flag to describe the SD card slot properly.

Fixes: c3904a269891 ("arm64: allwinner: a64: add DTSI file for SoPine SoM")
Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64-sopine.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine.dtsi
index c48692b06e1f..3402cec87035 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine.dtsi
@@ -32,7 +32,6 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&mmc0_pins>;
 	vmmc-supply = <&reg_dcdc1>;
-	non-removable;
 	disable-wp;
 	bus-width = <4>;
 	cd-gpios = <&pio 5 6 GPIO_ACTIVE_LOW>; /* PF6 */
-- 
2.17.5


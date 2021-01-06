Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8B2812EC017
	for <lists+devicetree@lfdr.de>; Wed,  6 Jan 2021 16:06:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726074AbhAFPGi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jan 2021 10:06:38 -0500
Received: from foss.arm.com ([217.140.110.172]:42190 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726011AbhAFPGh (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 6 Jan 2021 10:06:37 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1C0DCD6E;
        Wed,  6 Jan 2021 07:05:52 -0800 (PST)
Received: from localhost.localdomain (unknown [172.31.20.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C4F6A3F719;
        Wed,  6 Jan 2021 07:05:50 -0800 (PST)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        Rob Herring <robh@kernel.org>
Cc:     Jernej Skrabec <jernej.skrabec@siol.net>,
        Icenowy Zheng <icenowy@aosc.io>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: [PATCH 0/7] arm64: dts: allwinner: Various DT fixes
Date:   Wed,  6 Jan 2021 15:05:18 +0000
Message-Id: <20210106150525.15403-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.14.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

a collection of DT fixes I gathered over time:

- Adding usbphy references to [EO]HCI0 nodes (A64, H6)
- Adding Pine64-LTS status LED
- Dropping non-removable from SoPine/Pine64-LTS SD card
- Enabling HS200 @ 150 MHz on Pine H64 (H6)
- Enabling HS200 @ 150 MHz on Pine64-LTS

For details please see the individual patches!

Thanks,
Andre

Andre Przywara (7):
  arm64: dts: allwinner: H6/A64: properly connect USB PHY to port 0
  arm64: dts: allwinner: Pine64-LTS: Add status LED
  arm64: dts: allwinner: Drop non-removable from SoPine/LTS SD card
  arm64: dts: allwinner: H6: Allow up to 150 MHz MMC bus frequency
  arm64: dts: allwinner: A64: Limit MMC2 bus frequency to 150 MHz
  arm64: dts: allwinner: Pine64-LTS/SoPine: Enable HS200 eMMC mode
  arm64: dts: allwinner: Pine H64: Enable HS200 eMMC mode

 .../boot/dts/allwinner/sun50i-a64-pine64-lts.dts      | 11 +++++++++++
 arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts |  5 +----
 .../dts/allwinner/sun50i-a64-sopine-baseboard.dts     |  1 +
 arch/arm64/boot/dts/allwinner/sun50i-a64-sopine.dtsi  |  1 -
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi         |  6 +++++-
 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts  |  1 +
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi          |  7 +++++++
 7 files changed, 26 insertions(+), 6 deletions(-)

-- 
2.17.5


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 36F431047EA
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2019 02:18:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726351AbfKUBSq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Nov 2019 20:18:46 -0500
Received: from foss.arm.com ([217.140.110.172]:48432 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726346AbfKUBSq (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 20 Nov 2019 20:18:46 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7D272DA7;
        Wed, 20 Nov 2019 17:18:45 -0800 (PST)
Received: from localhost.localdomain (unknown [172.31.20.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 509933F6C4;
        Wed, 20 Nov 2019 17:18:44 -0800 (PST)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-sunxi@googlegroups.com
Subject: [PATCH 0/3] arm/arm64: dts: allwinner: Add PMU nodes
Date:   Thu, 21 Nov 2019 01:18:32 +0000
Message-Id: <20191121011835.8467-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.14.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Arm Cortex cores contain a Performance Monitoring Unit (PMU), that needs
to be connected to the GIC distributor to be able to trigger interrupts.
The actual interrupt IDs are an integration choice, so need to be
advertised via the DT.

This series adds the DT nodes to the H3, H5 and H6 SoC .dtsi files.
The interrupt IDs are not always as described in the manual (off by 4
for the A64 and H5), so the IRQs have been both tested in U-Boot and
verified in Linux, using "perf record" (which requires working IRQs).

Cheers,
Andre.

Andre Przywara (3):
  arm64: dts: allwinner: H6: Add PMU mode
  arm64: dts: allwinner: H5: Add PMU node
  arm: dts: allwinner: H3: Add PMU node

 arch/arm/boot/dts/sun8i-h3.dtsi              | 15 ++++++++++++---
 arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi | 16 +++++++++++++---
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 10 ++++++++++
 3 files changed, 35 insertions(+), 6 deletions(-)

-- 
2.14.5


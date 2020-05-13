Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8C37C1D0FCC
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2020 12:30:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732748AbgEMKaw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 May 2020 06:30:52 -0400
Received: from foss.arm.com ([217.140.110.172]:42690 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1732741AbgEMKaw (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 13 May 2020 06:30:52 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A12FAD6E;
        Wed, 13 May 2020 03:30:51 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 87B083F305;
        Wed, 13 May 2020 03:30:50 -0700 (PDT)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Rob Herring <robh@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v3 16/20] arm64: dts: juno: Fix GPU interrupt order
Date:   Wed, 13 May 2020 11:30:12 +0100
Message-Id: <20200513103016.130417-17-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513103016.130417-1-andre.przywara@arm.com>
References: <20200513103016.130417-1-andre.przywara@arm.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Mali binding insists on the GPU interrupts to be in ordered as: job,
mmu, gpu.
Sort the GPU interrupts and interrupt-names properties accordingly.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arch/arm64/boot/dts/arm/juno-base.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/arm/juno-base.dtsi b/arch/arm64/boot/dts/arm/juno-base.dtsi
index bd4e0b15f9c8..9228d1b60358 100644
--- a/arch/arm64/boot/dts/arm/juno-base.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-base.dtsi
@@ -501,10 +501,10 @@
 	gpu: gpu@2d000000 {
 		compatible = "arm,juno-mali", "arm,mali-t624";
 		reg = <0 0x2d000000 0 0x10000>;
-		interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "gpu", "job", "mmu";
+		interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "job", "mmu", "gpu";
 		clocks = <&scpi_dvfs 2>;
 		power-domains = <&scpi_devpd 1>;
 		dma-coherent;
-- 
2.17.1


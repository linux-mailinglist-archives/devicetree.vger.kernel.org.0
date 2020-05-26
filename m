Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2211C1C8802
	for <lists+devicetree@lfdr.de>; Thu,  7 May 2020 13:24:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726558AbgEGLYw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 May 2020 07:24:52 -0400
Received: from foss.arm.com ([217.140.110.172]:56860 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725879AbgEGLYw (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 7 May 2020 07:24:52 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9B7701045;
        Thu,  7 May 2020 04:24:51 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 67E803F68F;
        Thu,  7 May 2020 04:24:50 -0700 (PDT)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Rob Herring <robh@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Mark Rutland <mark.rutland@arm.com>,
        Marc Zyngier <maz@kernel.org>
Subject: [PATCH v2 06/17] arm64: dts: arm: Fix GIC compatible names
Date:   Thu,  7 May 2020 12:24:19 +0100
Message-Id: <20200507112430.183940-7-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200507112430.183940-1-andre.przywara@arm.com>
References: <20200507112430.183940-1-andre.przywara@arm.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The GIC DT binding only allows a certain combination of DT compatible
strings, mostly just consisting of one name.

Drop the somewhat awkward combination of multiple names using different
"cortex" based strings, in the fastmodel .dts files.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arch/arm64/boot/dts/arm/foundation-v8-gicv2.dtsi | 2 +-
 arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts       | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/arm/foundation-v8-gicv2.dtsi b/arch/arm64/boot/dts/arm/foundation-v8-gicv2.dtsi
index 15fe81738e94..61a1750fcdd6 100644
--- a/arch/arm64/boot/dts/arm/foundation-v8-gicv2.dtsi
+++ b/arch/arm64/boot/dts/arm/foundation-v8-gicv2.dtsi
@@ -6,7 +6,7 @@
 
 / {
 	gic: interrupt-controller@2c001000 {
-		compatible = "arm,cortex-a15-gic", "arm,cortex-a9-gic";
+		compatible = "arm,cortex-a15-gic";
 		#interrupt-cells = <3>;
 		#address-cells = <2>;
 		interrupt-controller;
diff --git a/arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts b/arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts
index c5d15cbd8cf6..f86f6451411f 100644
--- a/arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts
+++ b/arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts
@@ -95,7 +95,7 @@
 	};
 
 	gic: interrupt-controller@2c001000 {
-		compatible = "arm,cortex-a15-gic", "arm,cortex-a9-gic";
+		compatible = "arm,cortex-a15-gic";
 		#interrupt-cells = <3>;
 		#address-cells = <0>;
 		interrupt-controller;
-- 
2.17.1


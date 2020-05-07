Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4DB171C8805
	for <lists+devicetree@lfdr.de>; Thu,  7 May 2020 13:24:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726579AbgEGLY4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 May 2020 07:24:56 -0400
Received: from foss.arm.com ([217.140.110.172]:56886 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725879AbgEGLY4 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 7 May 2020 07:24:56 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C27F81FB;
        Thu,  7 May 2020 04:24:55 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A96573F68F;
        Thu,  7 May 2020 04:24:54 -0700 (PDT)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Rob Herring <robh@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 09/17] arm64: dts: juno: usb: Use proper DT node name
Date:   Thu,  7 May 2020 12:24:22 +0100
Message-Id: <20200507112430.183940-10-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200507112430.183940-1-andre.przywara@arm.com>
References: <20200507112430.183940-1-andre.przywara@arm.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The EHCI/OCHI DT binding requires to use "usb" as the node name stub.

Replace the existing name with "usb" to comply with the binding.
---
 arch/arm64/boot/dts/arm/juno-base.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/arm/juno-base.dtsi b/arch/arm64/boot/dts/arm/juno-base.dtsi
index 6d7b24a8e761..5b589856dbaa 100644
--- a/arch/arm64/boot/dts/arm/juno-base.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-base.dtsi
@@ -768,7 +768,7 @@
 		};
 	};
 
-	ohci@7ffb0000 {
+	usb@7ffb0000 {
 		compatible = "generic-ohci";
 		reg = <0x0 0x7ffb0000 0x0 0x10000>;
 		interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>;
@@ -776,7 +776,7 @@
 		clocks = <&soc_usb48mhz>;
 	};
 
-	ehci@7ffc0000 {
+	usb@7ffc0000 {
 		compatible = "generic-ehci";
 		reg = <0x0 0x7ffc0000 0x0 0x10000>;
 		interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.17.1


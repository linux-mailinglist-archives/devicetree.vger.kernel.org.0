Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 819132F8734
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 22:09:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728003AbhAOVHV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 16:07:21 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:33830 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732190AbhAOVHU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jan 2021 16:07:20 -0500
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10FL6VSC044316;
        Fri, 15 Jan 2021 15:06:31 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1610744791;
        bh=lSbnnKL5je0ksIl3ZafhacuyYDpFxm0MC9dJyE+A2mc=;
        h=From:To:CC:Subject:Date;
        b=ACUgwC4stCgS8AQKSHiF3N9CsXGgcdWwkeDUDDiGgIBP+ur+xj3viR6yUjOLu+pdJ
         3kFJXREoz47mjBB4BXzITzBBPSEzZrG2sP0N4I5R8HBjOpJMpK3a2yQ46VB9tS1+I+
         Y9rWE7uifGXu2jFV0L7Ki7cdiTh3SWQzLx592co0=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10FL6Vm2110177
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 15 Jan 2021 15:06:31 -0600
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 15
 Jan 2021 15:06:31 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 15 Jan 2021 15:06:31 -0600
Received: from lelv0597.itg.ti.com (lelv0597.itg.ti.com [10.181.64.32])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10FL6VmJ103016;
        Fri, 15 Jan 2021 15:06:31 -0600
Received: from localhost ([10.250.34.42])
        by lelv0597.itg.ti.com (8.14.7/8.14.7) with ESMTP id 10FL6VMF046857;
        Fri, 15 Jan 2021 15:06:31 -0600
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>
CC:     Jan Kiszka <jan.kiszka@siemens.com>,
        Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH] arm64: dts: ti: am65x/j721e: Fix PRUSS INTC warnings with #address-cells
Date:   Fri, 15 Jan 2021 15:06:25 -0600
Message-ID: <20210115210625.20427-1-s-anna@ti.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

A "Warning (interrupt_provider)" is generated for each PRUSS INTC
instance on TI K3 dts files when building the TI K3 dtbs with W=2,

AM65x:
/bus@100000/icssg@b000000/interrupt-controller@20000: Missing #address-cells in interrupt provider
/bus@100000/icssg@b100000/interrupt-controller@20000: Missing #address-cells in interrupt provider
/bus@100000/icssg@b200000/interrupt-controller@20000: Missing #address-cells in interrupt provider

J721E:
/bus@100000/icssg@b000000/interrupt-controller@20000: Missing #address-cells in interrupt provider
/bus@100000/icssg@b100000/interrupt-controller@20000: Missing #address-cells in interrupt provider

Fix these by adding the '#address-cell' property with value 0.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
Hi Nishanth,

This is a follow-up fix to the ICSSG dt node series [1] to get rid of
the warnings with W=2, but will depend on the PRUSS INTC dt-binding
update patch [2] to not generate any warnings with dtbs_check.

regards
Suman

[1] https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=414883
[2] https://patchwork.kernel.org/project/linux-arm-kernel/patch/20210115205819.19426-1-s-anna@ti.com/

 arch/arm64/boot/dts/ti/k3-am65-main.dtsi  | 3 +++
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 2 ++
 2 files changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
index 8aa8f1273563..3975753e2dd7 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -982,6 +982,7 @@ icssg0_intc: interrupt-controller@20000 {
 			reg = <0x20000 0x2000>;
 			interrupt-controller;
 			#interrupt-cells = <3>;
+			#address-cells = <0>;
 			interrupts = <GIC_SPI 254 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 255 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 256 IRQ_TYPE_LEVEL_HIGH>,
@@ -1113,6 +1114,7 @@ icssg1_intc: interrupt-controller@20000 {
 			reg = <0x20000 0x2000>;
 			interrupt-controller;
 			#interrupt-cells = <3>;
+			#address-cells = <0>;
 			interrupts = <GIC_SPI 262 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 263 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 264 IRQ_TYPE_LEVEL_HIGH>,
@@ -1244,6 +1246,7 @@ icssg2_intc: interrupt-controller@20000 {
 			reg = <0x20000 0x2000>;
 			interrupt-controller;
 			#interrupt-cells = <3>;
+			#address-cells = <0>;
 			interrupts = <GIC_SPI 270 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 271 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH>,
diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
index 605fe557cbb4..9ed521602780 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
@@ -1710,6 +1710,7 @@ icssg0_intc: interrupt-controller@20000 {
 			reg = <0x20000 0x2000>;
 			interrupt-controller;
 			#interrupt-cells = <3>;
+			#address-cells = <0>;
 			interrupts = <GIC_SPI 254 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 255 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 256 IRQ_TYPE_LEVEL_HIGH>,
@@ -1841,6 +1842,7 @@ icssg1_intc: interrupt-controller@20000 {
 			reg = <0x20000 0x2000>;
 			interrupt-controller;
 			#interrupt-cells = <3>;
+			#address-cells = <0>;
 			interrupts = <GIC_SPI 262 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 263 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 264 IRQ_TYPE_LEVEL_HIGH>,
-- 
2.29.2


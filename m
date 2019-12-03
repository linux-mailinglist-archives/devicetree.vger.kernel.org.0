Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D547911011D
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2019 16:23:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726214AbfLCPXO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Dec 2019 10:23:14 -0500
Received: from mail.kernel.org ([198.145.29.99]:41394 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725997AbfLCPXO (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 3 Dec 2019 10:23:14 -0500
Received: from e123331-lin.cambridge.arm.com (fw-tnat-cam5.arm.com [217.140.106.53])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 42D79207DD;
        Tue,  3 Dec 2019 15:23:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1575386593;
        bh=NaCEN7DJRgw9XbI89MhLbH0ZEOc5T0E9kQGhCcD1tqo=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=yQhfN4C8pOf4nDoy6XHqhRhQUa4/fhlFxkyzmYCZFXLEwmW4pk0j2AKb+DPPkohDn
         7dXcic6Xq4YlxcZE4puWx36bd8OHGHXvkH5Czn2TzI4GVQTYX09EvHGQOP4BXuSKMS
         5ZQ/+Cw1jxVdheLTlB7/4Y6IHL/tX7Ee4RhlgNyw=
From:   Ard Biesheuvel <ardb@kernel.org>
To:     devicetree@vger.kernel.org
Cc:     Ard Biesheuvel <ardb@kernel.org>,
        Brijesh Singh <brijeshkumar.singh@amd.com>,
        Suravee Suthikulpanit <suravee.suthikulpanit@amd.com>,
        Tom Lendacky <thomas.lendacky@amd.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v3 2/8] dt: amd-seattle: remove Overdrive revision A0 support
Date:   Tue,  3 Dec 2019 15:23:00 +0000
Message-Id: <20191203152306.7839-3-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191203152306.7839-1-ardb@kernel.org>
References: <20191203152306.7839-1-ardb@kernel.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Support for AMD Seattle silicon revision A0 is no longer relevant,
since we no longer have a driver for the network controller, and
the PCIe on these boards was very unreliable. So drop the DTS
description of the A0 version of the overdrive board.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm64/boot/dts/amd/Makefile          |  3 +-
 arch/arm64/boot/dts/amd/amd-overdrive.dts | 66 --------------------
 2 files changed, 1 insertion(+), 68 deletions(-)

diff --git a/arch/arm64/boot/dts/amd/Makefile b/arch/arm64/boot/dts/amd/Makefile
index 5e27bc0321e9..68103a8b0ef5 100644
--- a/arch/arm64/boot/dts/amd/Makefile
+++ b/arch/arm64/boot/dts/amd/Makefile
@@ -1,3 +1,2 @@
 # SPDX-License-Identifier: GPL-2.0
-dtb-$(CONFIG_ARCH_SEATTLE) += amd-overdrive.dtb \
-			amd-overdrive-rev-b0.dtb amd-overdrive-rev-b1.dtb
+dtb-$(CONFIG_ARCH_SEATTLE) += amd-overdrive-rev-b0.dtb amd-overdrive-rev-b1.dtb
diff --git a/arch/arm64/boot/dts/amd/amd-overdrive.dts b/arch/arm64/boot/dts/amd/amd-overdrive.dts
deleted file mode 100644
index 41b3a6c0993d..000000000000
--- a/arch/arm64/boot/dts/amd/amd-overdrive.dts
+++ /dev/null
@@ -1,66 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-/*
- * DTS file for AMD Seattle Overdrive Development Board
- *
- * Copyright (C) 2014 Advanced Micro Devices, Inc.
- */
-
-/dts-v1/;
-
-/include/ "amd-seattle-soc.dtsi"
-
-/ {
-	model = "AMD Seattle Development Board (Overdrive)";
-	compatible = "amd,seattle-overdrive", "amd,seattle";
-
-	chosen {
-		stdout-path = &serial0;
-	};
-};
-
-&ccp0 {
-	status = "ok";
-};
-
-&gpio0 {
-	status = "ok";
-};
-
-&gpio1 {
-	status = "ok";
-};
-
-&i2c0 {
-	status = "ok";
-};
-
-&pcie0 {
-	status = "ok";
-};
-
-&spi0 {
-	status = "ok";
-};
-
-&spi1 {
-	status = "ok";
-	sdcard0: sdcard@0 {
-		compatible = "mmc-spi-slot";
-		reg = <0>;
-		spi-max-frequency = <20000000>;
-		voltage-ranges = <3200 3400>;
-		gpios = <&gpio0 7 0>;
-		interrupt-parent = <&gpio0>;
-		interrupts = <7 3>;
-		pl022,hierarchy = <0>;
-		pl022,interface = <0>;
-		pl022,com-mode = <0x0>;
-		pl022,rx-level-trig = <0>;
-		pl022,tx-level-trig = <0>;
-	};
-};
-
-&v2m0 {
-	arm,msi-base-spi = <64>;
-	arm,msi-num-spis = <256>;
-};
-- 
2.17.1


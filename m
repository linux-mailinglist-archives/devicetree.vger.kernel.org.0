Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3B75B479C82
	for <lists+devicetree@lfdr.de>; Sat, 18 Dec 2021 21:12:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234107AbhLRUMD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 18 Dec 2021 15:12:03 -0500
Received: from mail.noreya.tech ([46.38.236.86]:41836 "EHLO mail.noreya.tech"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234095AbhLRUMD (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 18 Dec 2021 15:12:03 -0500
X-Greylist: delayed 474 seconds by postgrey-1.27 at vger.kernel.org; Sat, 18 Dec 2021 15:12:03 EST
Received: from localhost (localhost [127.0.0.1])
        by mail.noreya.tech (Postfix) with ESMTP id 16BA7392;
        Sat, 18 Dec 2021 21:04:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=noreya.tech;
        s=s2048; t=1639857848;
        bh=fLvKvgtjY8Q8G/HKVKFbFawJR1AzhXvOwLc2pAeiOuA=;
        h=From:To:Cc:Subject:Date:From;
        b=L3rkgg9ypEvwaG/VYCXmh0psfkdus+fcoltfKDoYigmpaeKRi6kQ13wGspfLLsBv2
         mbUGOHdd6xQNLVnU2xcYOFB9t+WZpegtdFflbn97Zfvu5FLXcUY9NsWHjQ+gQFUofd
         DtwPwUkT0Mh9J2+2fBibkO2yD6wMty+0ALclYY+fQMD8ihkUoYgLB1a/3aX8aXfAAe
         1hDf8WtqvetXavGRctCq4siB+gaKHky0MU0qDa/jEL2TBD8MH7jacYeYroZlT/hyPo
         VCq85Q/0Zd4LmdA0VxGjoiEOZzguYwTp8riMFRn9Frz9gt6pxR86k/m4tbMKC2cXEi
         vFMVViHL/GJTg==
X-Virus-Scanned: Debian amavisd-new at mail.noreya.tech
Received: from mail.noreya.tech ([127.0.0.1])
        by localhost (mail.noreya.tech [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id 5vBD5DB9ThRR; Sat, 18 Dec 2021 21:04:05 +0100 (CET)
Received: from richard-AX370.lan (17-12-121.cgnat.fonira.net [185.17.12.121])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.noreya.tech (Postfix) with ESMTPSA;
        Sat, 18 Dec 2021 21:04:05 +0100 (CET)
From:   Richard Schleich <rs@noreya.tech>
To:     robh+dt@kernel.org, nsaenz@kernel.org, f.fainelli@gmail.com,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Cc:     Richard Schleich <rs@noreya.tech>
Subject: [PATCH] ARM: dts: bcm2837: Add the missing L1/L2 cache information
Date:   Sat, 18 Dec 2021 21:00:09 +0100
Message-Id: <20211218200009.16856-1-rs@noreya.tech>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch fixes the kernel warning
"cacheinfo: Unable to detect cache hierarchy for CPU 0"
for the bcm2837 on newer kernel versions.

Signed-off-by: Richard Schleich <rs@noreya.tech>
---
 arch/arm/boot/dts/bcm2837.dtsi | 49 ++++++++++++++++++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/arch/arm/boot/dts/bcm2837.dtsi b/arch/arm/boot/dts/bcm2837.dtsi
index 0199ec98cd61..1af1616982bb 100644
--- a/arch/arm/boot/dts/bcm2837.dtsi
+++ b/arch/arm/boot/dts/bcm2837.dtsi
@@ -40,12 +40,26 @@
 		#size-cells = <0>;
 		enable-method = "brcm,bcm2836-smp"; // for ARM 32-bit
 
+		/* Source for d/i-cache-line-size and d/i-cache-sets
+		 *  https://developer.arm.com/documentation/ddi0500/e/level-1-memory-system
+		 *  /about-the-l1-memory-system?lang=en
+		 *
+		 *  Source for d/i-cache-size
+		 *  https://magpi.raspberrypi.com/articles/raspberry-pi-3-specs-benchmarks
+		 */
 		cpu0: cpu@0 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a53";
 			reg = <0>;
 			enable-method = "spin-table";
 			cpu-release-addr = <0x0 0x000000d8>;
+			d-cache-size = <0x8000>; // 32KiB
+			d-cache-line-size = <64>;// Data side cache line length of 64 bytes
+			d-cache-sets = <128>; // 32KiB(size)/64(line-size)=512ways/4-way set
+			i-cache-size = <0x8000>; // 32KiB
+			i-cache-line-size = <64>;// Instruction side cache line length of 64 bytes
+			i-cache-sets = <256>; // 32KiB(size)/64(line-size)=512ways/2-way set
+			next-level-cache = <&l2>;
 		};
 
 		cpu1: cpu@1 {
@@ -54,6 +68,13 @@
 			reg = <1>;
 			enable-method = "spin-table";
 			cpu-release-addr = <0x0 0x000000e0>;
+			d-cache-size = <0x8000>; // 32KiB
+			d-cache-line-size = <64>;// Data side cache line length of 64 bytes
+			d-cache-sets = <128>; // 32KiB(size)/64(line-size)=512ways/4-way set
+			i-cache-size = <0x8000>; // 32KiB
+			i-cache-line-size = <64>;// Instruction side cache line length of 64 bytes
+			i-cache-sets = <256>; // 32KiB(size)/64(line-size)=512ways/2-way set
+			next-level-cache = <&l2>;
 		};
 
 		cpu2: cpu@2 {
@@ -62,6 +83,13 @@
 			reg = <2>;
 			enable-method = "spin-table";
 			cpu-release-addr = <0x0 0x000000e8>;
+			d-cache-size = <0x8000>; // 32KiB
+			d-cache-line-size = <64>;// Data side cache line length of 64 bytes
+			d-cache-sets = <128>; // 32KiB(size)/64(line-size)=512ways/4-way set
+			i-cache-size = <0x8000>; // 32KiB
+			i-cache-line-size = <64>;// Instruction side cache line length of 64 bytes
+			i-cache-sets = <256>; // 32KiB(size)/64(line-size)=512ways/2-way set
+			next-level-cache = <&l2>;
 		};
 
 		cpu3: cpu@3 {
@@ -70,6 +98,27 @@
 			reg = <3>;
 			enable-method = "spin-table";
 			cpu-release-addr = <0x0 0x000000f0>;
+			d-cache-size = <0x8000>; // 32KiB
+			d-cache-line-size = <64>;// Data side cache line length of 64 bytes
+			d-cache-sets = <128>; // 32KiB(size)/64(line-size)=512ways/4-way set
+			i-cache-size = <0x8000>; // 32KiB
+			i-cache-line-size = <64>;// Instruction side cache line length of 64 bytes
+			i-cache-sets = <256>; // 32KiB(size)/64(line-size)=512ways/2-way set
+			next-level-cache = <&l2>;
+		};
+
+		l2: l2-cache0 {
+		 /*  Source for cache-line-size + cache-sets
+		  *  https://developer.arm.com/documentation/ddi0500
+		  *  /e/level-2-memory-system/about-the-l2-memory-system?lang=en
+		  *  Source for cache-size
+		  *  https://datasheets.raspberrypi.com/cm/cm1-and-cm3-datasheet.pdf
+		  */
+			compatible = "cache";
+			cache-size = <0x80000>; // 512KiB
+			cache-line-size = <64>; // Fixed line length of 64 bytes
+			cache-sets = <512>; // 512KiB(size)/64(line-size)=8192ways/16-way set
+			cache-level = <2>;
 		};
 	};
 };
-- 
2.17.1


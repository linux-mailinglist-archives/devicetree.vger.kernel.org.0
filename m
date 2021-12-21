Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A52FD47C964
	for <lists+devicetree@lfdr.de>; Tue, 21 Dec 2021 23:49:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234386AbhLUWtQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Dec 2021 17:49:16 -0500
Received: from mail.noreya.tech ([46.38.236.86]:44454 "EHLO mail.noreya.tech"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229732AbhLUWtQ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 21 Dec 2021 17:49:16 -0500
Received: from localhost (localhost [127.0.0.1])
        by mail.noreya.tech (Postfix) with ESMTP id 81F6C43A;
        Tue, 21 Dec 2021 23:49:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=noreya.tech;
        s=s2048; t=1640126954;
        bh=8MSg8JYOEwSbXzLEjg2qk0EvfWpMkhElUFOoqPZUN4I=;
        h=From:To:Cc:Subject:Date:From;
        b=WlcQLymJHjxB05mVfLRKejeDHwe3p9MQBsVyGa61zf+soTZPrFZ2pztk2AsHOk2fZ
         DGrRPhXe085oAeZjsQF9gwZK3Zw7oDOjJ4DrR5vNxd9OdW/gV25wdWj8bREh4pwR6H
         1AvSeDUv6S2VHnJYMGkBJGUjvRu7p8AvEOVcaaGMEuLnSEHKA2H011CcuQiwJW+6Q9
         0WUrUb5nltF1dWqbzHYnbIbhJu9qWkS6apKYITkic+7VS772/nSlk/ruLq/Ut2KD/L
         3DnHnIR+HQjoqgFgEUz08pB8OrD3Ry0nNTczl/WTdkEvgjSXnGwG4vg0hfud13tF/8
         uLxSTRhR6EQ2Q==
X-Virus-Scanned: Debian amavisd-new at mail.noreya.tech
Received: from mail.noreya.tech ([127.0.0.1])
        by localhost (mail.noreya.tech [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id ljV9xXx99KjW; Tue, 21 Dec 2021 23:49:11 +0100 (CET)
Received: from richard-AX370.lan (unknown [IPv6:2a02:1748:dd5c:72f0:d99e:3050:a76:285d])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.noreya.tech (Postfix) with ESMTPSA;
        Tue, 21 Dec 2021 23:49:11 +0100 (CET)
From:   Richard Schleich <rs@noreya.tech>
To:     robh+dt@kernel.org, nsaenz@kernel.org, f.fainelli@gmail.com,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Cc:     Richard Schleich <rs@noreya.tech>
Subject: [PATCH] ARM: dts: bcm2711: Add the missing L1/L2 cache information
Date:   Tue, 21 Dec 2021 23:48:30 +0100
Message-Id: <20211221224830.16746-1-rs@noreya.tech>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch fixes the kernel warning
"cacheinfo: Unable to detect cache hierarchy for CPU 0"
for the bcm2711 on newer kernel versions.

Signed-off-by: Richard Schleich <rs@noreya.tech>
---
 arch/arm/boot/dts/bcm2711.dtsi | 50 ++++++++++++++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index 9e01dbca4a01..b2f403fc420c 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -458,12 +458,26 @@
 		#size-cells = <0>;
 		enable-method = "brcm,bcm2836-smp"; // for ARM 32-bit
 
+		/* Source for d/i-cache-line-size and d/i-cache-sets
+		 *  https://developer.arm.com/documentation/100095/0003
+		 *  /Level-1-Memory-System/About-the-L1-memory-system?lang=en
+		 * Source for d/i-cache-size
+		 *  https://www.raspberrypi.com/documentation/computers
+		 *  /processors.html#bcm2711
+		 */
 		cpu0: cpu@0 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a72";
 			reg = <0>;
 			enable-method = "spin-table";
 			cpu-release-addr = <0x0 0x000000d8>;
+			d-cache-size = <0x8000>; // 32KB 2-way set-associative data cache
+			d-cache-line-size = <64>;// Fixed line length of 64 bytes
+			d-cache-sets = <256>; // 32KiB(size)/64(line-size)=512ways/2-way set
+			i-cache-size = <0xc000>; // 48kB 3-way set-associative data cache
+			i-cache-line-size = <64>;// Fixed line length of 64 bytes
+			i-cache-sets = <256>; // 48KiB(size)/64(line-size)=768ways/3-way set
+			next-level-cache = <&l2>;
 		};
 
 		cpu1: cpu@1 {
@@ -472,6 +486,13 @@
 			reg = <1>;
 			enable-method = "spin-table";
 			cpu-release-addr = <0x0 0x000000e0>;
+			d-cache-size = <0x8000>; // 32KB 2-way set-associative data cache
+			d-cache-line-size = <64>;// Fixed line length of 64 bytes
+			d-cache-sets = <256>; // 32KiB(size)/64(line-size)=512ways/2-way set
+			i-cache-size = <0xc000>; // 48kB 3-way set-associative data cache
+			i-cache-line-size = <64>;// Fixed line length of 64 bytes
+			i-cache-sets = <256>; // 48KiB(size)/64(line-size)=768ways/3-way set
+			next-level-cache = <&l2>;
 		};
 
 		cpu2: cpu@2 {
@@ -480,6 +501,13 @@
 			reg = <2>;
 			enable-method = "spin-table";
 			cpu-release-addr = <0x0 0x000000e8>;
+			d-cache-size = <0x8000>; // 32KB 2-way set-associative data cache
+			d-cache-line-size = <64>;// Fixed line length of 64 bytes
+			d-cache-sets = <256>; // 32KiB(size)/64(line-size)=512ways/2-way set
+			i-cache-size = <0xc000>; // 48kB 3-way set-associative data cache
+			i-cache-line-size = <64>;// Fixed line length of 64 bytes
+			i-cache-sets = <256>; // 48KiB(size)/64(line-size)=768ways/3-way set
+			next-level-cache = <&l2>;
 		};
 
 		cpu3: cpu@3 {
@@ -488,6 +516,28 @@
 			reg = <3>;
 			enable-method = "spin-table";
 			cpu-release-addr = <0x0 0x000000f0>;
+			d-cache-size = <0x8000>; // 32KB 2-way set-associative data cache
+			d-cache-line-size = <64>;// Fixed line length of 64 bytes
+			d-cache-sets = <256>; // 32KiB(size)/64(line-size)=512ways/2-way set
+			i-cache-size = <0xc000>; // 48kB 3-way set-associative data cache
+			i-cache-line-size = <64>;// Fixed line length of 64 bytes
+			i-cache-sets = <256>; // 48KiB(size)/64(line-size)=768ways/3-way set
+			next-level-cache = <&l2>;
+		};
+
+		l2: l2-cache0 {
+			/* Source for d/i-cache-line-size and d/i-cache-sets
+			 *  https://developer.arm.com/documentation/100095/0003
+			 *  /Level-2-Memory-System/About-the-L2-memory-system?lang=en
+			 *  Source for d/i-cache-size
+			 *  https://www.raspberrypi.com/documentation/computers
+			 *  /processors.html#bcm2711
+			 */
+			compatible = "cache";
+			cache-size = <0x100000>; // 1MB
+			cache-line-size = <64>; // Fixed line length of 64 bytes
+			cache-sets = <1024>; // 1MiB(size)/64(line-size)=16000ways/16-way set
+			cache-level = <2>;
 		};
 	};
 
-- 
2.17.1


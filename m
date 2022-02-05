Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4E7254AAC60
	for <lists+devicetree@lfdr.de>; Sat,  5 Feb 2022 20:59:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231583AbiBET72 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Feb 2022 14:59:28 -0500
Received: from mail.noreya.tech ([46.38.236.86]:46498 "EHLO mail.noreya.tech"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230206AbiBET71 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 5 Feb 2022 14:59:27 -0500
Received: from localhost (localhost [127.0.0.1])
        by mail.noreya.tech (Postfix) with ESMTP id AF58867;
        Sat,  5 Feb 2022 20:59:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=noreya.tech;
        s=s2048; t=1644091164;
        bh=8ZFdH6x9iYva8A3jHV2SfSdHyKwTAkOMmezJagZ4Npg=;
        h=From:To:Cc:Subject:Date:From;
        b=aq88l4hY9Hu7wVhm1zsSi3F/pV4miAy0KqzLzs8ebw7rgpAkjj+TKHITUA5qH9lJY
         xLze1/njesF6/5W1oZ4OV06GcQxopNECCnNEsAb+oYOWBEu0xFWVIavo+GTpSl/mvz
         +fL0mUJvSQHxUpX7jXMpFL/d1Fn3gF/lF1F/8vaMjAkn+0tIOytIGfPi4o6RtSAnjN
         JYmFOPUkII8FqHoV0Alg1EKmHA7pl1noTsHrETTFagfiiQhjz9tzq61a9QX9/6ybOc
         pbaKSgXaSKy858EzhMM87pdai4Io01vXcOEZq+jTCunZGE19YjX/wbHYQdayLTrrqk
         LQngK+R30bZnA==
X-Virus-Scanned: Debian amavisd-new at mail.noreya.tech
Received: from mail.noreya.tech ([127.0.0.1])
        by localhost (mail.noreya.tech [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id 0KX5rtW8J99r; Sat,  5 Feb 2022 20:59:23 +0100 (CET)
Received: from richard-AX370-Gaming-5.lan (unknown [IPv6:2a02:1748:dd5c:72f0:b8be:4678:4410:1a1])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.noreya.tech (Postfix) with ESMTPSA;
        Sat,  5 Feb 2022 20:59:23 +0100 (CET)
From:   Richard Schleich <rs@noreya.tech>
To:     robh+dt@kernel.org, nsaenz@kernel.org, f.fainelli@gmail.com,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Cc:     Richard Schleich <rs@noreya.tech>
Subject: [PATCH] ARM: dts: bcm2835/6: Add the missing L1/L2 cache information
Date:   Sat,  5 Feb 2022 20:59:11 +0100
Message-Id: <20220205195911.52578-1-rs@noreya.tech>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds the cache info for the BCM2835 and BCM2836.
However, while testing I noticed that this is
not implemented for ARMv6/7.
Basically arch/arm/kernel/cacheinfo.c and other topology
related code is missing.
Since the work is already done and this has no negative effects,
I am submitting it for future/documentation purposes.

Signed-off-by: Richard Schleich <rs@noreya.tech>
---
 arch/arm/boot/dts/bcm2835.dtsi | 17 ++++++++++++
 arch/arm/boot/dts/bcm2836.dtsi | 50 ++++++++++++++++++++++++++++++++++
 2 files changed, 67 insertions(+)

diff --git a/arch/arm/boot/dts/bcm2835.dtsi b/arch/arm/boot/dts/bcm2835.dtsi
index 0549686134ea..1c90e5a44283 100644
--- a/arch/arm/boot/dts/bcm2835.dtsi
+++ b/arch/arm/boot/dts/bcm2835.dtsi
@@ -14,6 +14,23 @@ cpu@0 {
 			device_type = "cpu";
 			compatible = "arm,arm1176jzf-s";
 			reg = <0x0>;
+			/* Source for d/i-cache-line-size and d/i-cache-sets
+			 * https://developer.arm.com/documentation/ddi0301
+			 * /h/level-one-memory-system/cache-organization?lang=en
+			 *
+			 * Source for d/i-cache-size
+			 * https://forums.raspberrypi.com/viewtopic.php?t=98428
+			 *
+			 * NOTE: The BCM2835 has a L2 cache but it is dedicated to the GPU
+			 * It can be shared with the CPU through fw settings,
+			 * but this is not recommended.
+			 */
+			d-cache-size = <0x4000>;
+			d-cache-line-size = <16>;
+			d-cache-sets = <256>; // 16KiB(size)/16(line-size)=1024ways/4-way set
+			i-cache-size = <0x4000>;
+			i-cache-line-size = <16>;
+			i-cache-sets = <256>; // 16KiB(size)/16(line-size)=1024ways/4-way set
 		};
 	};
 
diff --git a/arch/arm/boot/dts/bcm2836.dtsi b/arch/arm/boot/dts/bcm2836.dtsi
index b390006aef79..534dacfc4dd5 100644
--- a/arch/arm/boot/dts/bcm2836.dtsi
+++ b/arch/arm/boot/dts/bcm2836.dtsi
@@ -41,11 +41,26 @@ cpus: cpus {
 		#size-cells = <0>;
 		enable-method = "brcm,bcm2836-smp";
 
+		/* Source for d/i-cache-line-size and d/i-cache-sets
+		 * https://developer.arm.com/documentation/ddi0464/f/L1-Memory-System
+		 * /About-the-L1-memory-system?lang=en
+		 *
+		 * Source for d/i-cache-size
+		 * https://forums.raspberrypi.com/viewtopic.php?t=98428
+		 */
+
 		v7_cpu0: cpu@0 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a7";
 			reg = <0xf00>;
 			clock-frequency = <800000000>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <128>; // 32KiB(size)/64(line-size)=512ways/4-way set
+			i-cache-size = <0x8000>;
+			i-cache-line-size = <32>;
+			i-cache-sets = <512>; // 32KiB(size)/32(line-size)=1024ways/2-way set
+			next-level-cache = <&l2>;
 		};
 
 		v7_cpu1: cpu@1 {
@@ -53,6 +68,13 @@ v7_cpu1: cpu@1 {
 			compatible = "arm,cortex-a7";
 			reg = <0xf01>;
 			clock-frequency = <800000000>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <128>; // 32KiB(size)/64(line-size)=512ways/4-way set
+			i-cache-size = <0x8000>;
+			i-cache-line-size = <32>;
+			i-cache-sets = <512>; // 32KiB(size)/32(line-size)=1024ways/2-way set
+			next-level-cache = <&l2>;
 		};
 
 		v7_cpu2: cpu@2 {
@@ -60,6 +82,13 @@ v7_cpu2: cpu@2 {
 			compatible = "arm,cortex-a7";
 			reg = <0xf02>;
 			clock-frequency = <800000000>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <128>; // 32KiB(size)/64(line-size)=512ways/4-way set
+			i-cache-size = <0x8000>;
+			i-cache-line-size = <32>;
+			i-cache-sets = <512>; // 32KiB(size)/32(line-size)=1024ways/2-way set
+			next-level-cache = <&l2>;
 		};
 
 		v7_cpu3: cpu@3 {
@@ -67,6 +96,27 @@ v7_cpu3: cpu@3 {
 			compatible = "arm,cortex-a7";
 			reg = <0xf03>;
 			clock-frequency = <800000000>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <128>; // 32KiB(size)/64(line-size)=512ways/4-way set
+			i-cache-size = <0x8000>;
+			i-cache-line-size = <32>;
+			i-cache-sets = <512>; // 32KiB(size)/32(line-size)=1024ways/2-way set
+			next-level-cache = <&l2>;
+		};
+
+		/* Source for cache-line-size + cache-sets
+		 * https://developer.arm.com/documentation/ddi0464/f/L2-Memory-System
+		 * /About-the-L2-Memory-system?lang=en
+		 * Source for cache-size
+		 * https://forums.raspberrypi.com/viewtopic.php?t=98428
+		 */
+		l2: l2-cache0 {
+			compatible = "cache";
+			cache-size = <0x80000>;
+			cache-line-size = <64>;
+			cache-sets = <1024>; // 512KiB(size)/64(line-size)=8192ways/8-way set
+			cache-level = <2>;
 		};
 	};
 };
-- 
2.25.1


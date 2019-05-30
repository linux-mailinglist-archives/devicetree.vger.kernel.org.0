Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 158CA2F90B
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2019 11:11:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727123AbfE3JLv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 May 2019 05:11:51 -0400
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]:32796 "EHLO
        foss.arm.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725913AbfE3JLv (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 30 May 2019 05:11:51 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C54C4A78;
        Thu, 30 May 2019 02:11:50 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 9125D3F59C;
        Thu, 30 May 2019 02:11:49 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH] arm: dts: vexpress-v2p-ca15_a7: disable NOR flash node by default
Date:   Thu, 30 May 2019 10:11:39 +0100
Message-Id: <20190530091139.11643-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Accessing the NOR flash memory from the kernel will disrupt CPU sleep/
idles states and CPU hotplugging. We need to disable this DT node by
default. Setups that want to access the flash can modify this entry to
enable the flash again but also ensuring to disable CPU idle states and
CPU hotplug.

The platform firmware assumes the flash is always in read mode while
Linux kernel driver leaves NOR flash in "read id" mode after
initialization. If it gets used actively, it can be in some other state.

So far we had not seen this issue as the NOR flash drivers in kernel
were not enabled by default. However it was enable in multi_v7 config by
Commit 5f068190cc10 ("ARM: multi_v7_defconfig: Enable support for CFI NOR FLASH")

So, let's mark the NOR flash disabled so that the platform can boot
again. This based on:
Commit 980bbff018f6 ("ARM64: juno: disable NOR flash node by default")

Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 arch/arm/boot/dts/vexpress-v2m-rs1.dtsi    | 2 +-
 arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts | 9 +++++++++
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
index d3963e9eaf48..1b5bc536c547 100644
--- a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
+++ b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
@@ -30,7 +30,7 @@
 			#interrupt-cells = <1>;
 			ranges;
 
-			flash@0,00000000 {
+			nor_flash: flash@0,00000000 {
 				compatible = "arm,vexpress-flash", "cfi-flash";
 				reg = <0 0x00000000 0x04000000>,
 				      <4 0x00000000 0x04000000>;
diff --git a/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts b/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts
index 164c904c9992..1de0a658adf1 100644
--- a/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts
+++ b/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts
@@ -680,3 +680,12 @@
 				<0 3 &gic 0 39 4>;
 	};
 };
+
+&nor_flash {
+	/*
+	 * Unfortunately, accessing the flash disturbs the CPU idle states
+	 * (suspend) and CPU hotplug of this platform. For this reason, flash
+	 * hardware access is disabled by default on this platform alone.
+	 */
+	status = "disabled";
+};
-- 
2.17.1


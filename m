Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 72AD92F910
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2019 11:12:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727209AbfE3JMD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 May 2019 05:12:03 -0400
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]:32820 "EHLO
        foss.arm.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725913AbfE3JMD (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 30 May 2019 05:12:03 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 18D41A78;
        Thu, 30 May 2019 02:12:03 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D98C43F59C;
        Thu, 30 May 2019 02:12:01 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH] ARM: dts: vexpress: set the right partition type for NOR flash
Date:   Thu, 30 May 2019 10:11:56 +0100
Message-Id: <20190530091156.11693-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

We should set up the partitions in the right way so we will find out
what is in the flash.

The ARM Firmware Suite now has its own compatible and proper device
tree bindings to trigger discovery of the flash contents, and Linux
supports handling the new type of AFS partitions.

Based on commit 7f8e78ca90e2 ("arm64: dts: juno: set the right partition
type for NOR flash")

Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 arch/arm/boot/dts/vexpress-v2m-rs1.dtsi | 3 +++
 arch/arm/boot/dts/vexpress-v2m.dtsi     | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
index 1b5bc536c547..d6a1fc269241 100644
--- a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
+++ b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
@@ -35,6 +35,9 @@
 				reg = <0 0x00000000 0x04000000>,
 				      <4 0x00000000 0x04000000>;
 				bank-width = <4>;
+				partitions {
+					compatible = "arm,arm-firmware-suite";
+				};
 			};
 
 			psram@1,00000000 {
diff --git a/arch/arm/boot/dts/vexpress-v2m.dtsi b/arch/arm/boot/dts/vexpress-v2m.dtsi
index 798c97aff7fa..8e57e15307e2 100644
--- a/arch/arm/boot/dts/vexpress-v2m.dtsi
+++ b/arch/arm/boot/dts/vexpress-v2m.dtsi
@@ -35,6 +35,9 @@
 				reg = <0 0x00000000 0x04000000>,
 				      <1 0x00000000 0x04000000>;
 				bank-width = <4>;
+				partitions {
+					compatible = "arm,arm-firmware-suite";
+				};
 			};
 
 			psram@2,00000000 {
-- 
2.17.1


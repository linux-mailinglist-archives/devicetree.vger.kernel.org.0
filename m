Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9AA004A2C4E
	for <lists+devicetree@lfdr.de>; Sat, 29 Jan 2022 08:09:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348979AbiA2HJ0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Jan 2022 02:09:26 -0500
Received: from ams.source.kernel.org ([145.40.68.75]:46528 "EHLO
        ams.source.kernel.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347735AbiA2HJZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 29 Jan 2022 02:09:25 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 4A91AB81252
        for <devicetree@vger.kernel.org>; Sat, 29 Jan 2022 07:09:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE50AC340ED;
        Sat, 29 Jan 2022 07:09:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1643440163;
        bh=LjMJilEeLOaCVvt9JNaShGBgIvfgRX96nYICJ6Hmefs=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=khVpVG74JCXSgwGKm1S31JjPv8yIULqyKMCJziAhARWLMKfDfaPmn/T0flQkDCSgW
         A63xQnKn93RmelyYA3RrEL9M/4s4MZWsKDXl49uf6g3mMiG0Hut2KFy+TCdLtlctJ8
         rgMGi6cr9jAs34gnPKnVkEhEiIXw7UUmaoNoia1ZOdH622i46SfL8iIGpR+RUjuMPE
         AouW5daVl7vr/X+8rjApHOlXXpAn8iXmZMhUCJUX0mt8EmNR9hDnAYlXIKCOmk+f3V
         S3QAbGGKO7m/XlnIwFK8V2efNhgNKjTdlwxKv0LQIELmxMyQpwWXcxPYQ6MvyufUe9
         ErOnxyPR8e/4g==
From:   Shawn Guo <shawnguo@kernel.org>
To:     linux-arm-kernel@lists.infradead.org
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Li Yang <leoyang.li@nxp.com>,
        Vladimir Oltean <vladimir.oltean@nxp.com>,
        Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 2/2] arm64: dts: freescale: Use overlay target for simplicity
Date:   Sat, 29 Jan 2022 15:09:12 +0800
Message-Id: <20220129070912.9836-3-shawnguo@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220129070912.9836-1-shawnguo@kernel.org>
References: <20220129070912.9836-1-shawnguo@kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

With commit 15d16d6dadf6 ("kbuild: Add generic rule to apply
fdtoverlay"), overlay target can be used to simplify the build of DTB
overlays.  It also performs a cross check to ensure base DT and overlay
actually match.

Signed-off-by: Shawn Guo <shawnguo@kernel.org>
---
 arch/arm64/boot/dts/freescale/Makefile | 29 +++++++++++++-------------
 1 file changed, 14 insertions(+), 15 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index 6d8f0a532587..c521ac2b00ca 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -1,14 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
 
-# required for overlay support
-DTC_FLAGS_fsl-ls1028a-qds := -@
-DTC_FLAGS_fsl-ls1028a-qds-13bb := -@
-DTC_FLAGS_fsl-ls1028a-qds-65bb := -@
-DTC_FLAGS_fsl-ls1028a-qds-7777 := -@
-DTC_FLAGS_fsl-ls1028a-qds-85bb := -@
-DTC_FLAGS_fsl-ls1028a-qds-899b := -@
-DTC_FLAGS_fsl-ls1028a-qds-9999 := -@
-
 dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1012a-frdm.dtb
 dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1012a-frwy.dtb
 dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1012a-oxalis.dtb
@@ -21,12 +12,6 @@ dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-kontron-sl28-var2.dtb
 dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-kontron-sl28-var3-ads2.dtb
 dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-kontron-sl28-var4.dtb
 dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds.dtb
-dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-13bb.dtb
-dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-65bb.dtb
-dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-7777.dtb
-dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-85bb.dtb
-dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-899b.dtb
-dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-9999.dtb
 dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-rdb.dtb
 dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1043a-qds.dtb
 dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1043a-rdb.dtb
@@ -49,6 +34,20 @@ dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-lx2160a-qds.dtb
 dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-lx2160a-rdb.dtb
 dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-lx2162a-qds.dtb
 
+fsl-ls1028a-qds-13bb-dtbs := fsl-ls1028a-qds.dtb fsl-ls1028a-qds-13bb.dtbo
+fsl-ls1028a-qds-65bb-dtbs := fsl-ls1028a-qds.dtb fsl-ls1028a-qds-65bb.dtbo
+fsl-ls1028a-qds-7777-dtbs := fsl-ls1028a-qds.dtb fsl-ls1028a-qds-7777.dtbo
+fsl-ls1028a-qds-85bb-dtbs := fsl-ls1028a-qds.dtb fsl-ls1028a-qds-85bb.dtbo
+fsl-ls1028a-qds-899b-dtbs := fsl-ls1028a-qds.dtb fsl-ls1028a-qds-899b.dtbo
+fsl-ls1028a-qds-9999-dtbs := fsl-ls1028a-qds.dtb fsl-ls1028a-qds-9999.dtbo
+
+dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-13bb.dtb
+dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-65bb.dtb
+dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-7777.dtb
+dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-85bb.dtb
+dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-899b.dtb
+dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-9999.dtb
+
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-beacon-kit.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-ddr4-evk.dtb
-- 
2.17.1


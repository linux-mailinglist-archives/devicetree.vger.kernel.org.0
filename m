Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 977084423DE
	for <lists+devicetree@lfdr.de>; Tue,  2 Nov 2021 00:18:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232381AbhKAXU7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Nov 2021 19:20:59 -0400
Received: from mga18.intel.com ([134.134.136.126]:29623 "EHLO mga18.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232373AbhKAXU7 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 1 Nov 2021 19:20:59 -0400
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="218053508"
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; 
   d="scan'208";a="218053508"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Nov 2021 16:18:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; 
   d="scan'208";a="727670711"
Received: from maru.jf.intel.com ([10.54.51.77])
  by fmsmga005.fm.intel.com with ESMTP; 01 Nov 2021 16:18:24 -0700
From:   jae.hyun.yoo@intel.com
To:     Rob Herring <robh+dt@kernel.org>, Corey Minyard <minyard@acm.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        Cedric Le Goater <clg@kaod.org>,
        Haiyue Wang <haiyue.wang@linux.intel.com>,
        Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org,
        openipmi-developer@lists.sourceforge.net
Subject: [PATCH -next 3/4] ARM: dts: aspeed: add LCLK setting into LPC KCS nodes
Date:   Mon,  1 Nov 2021 16:37:50 -0700
Message-Id: <20211101233751.49222-4-jae.hyun.yoo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>

Add LCLK clock setting into LPC KCS nodes to enable the LCLK by
individual LPC sub drivers.

Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
---
 arch/arm/boot/dts/aspeed-g5.dtsi | 4 ++++
 arch/arm/boot/dts/aspeed-g6.dtsi | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-g5.dtsi b/arch/arm/boot/dts/aspeed-g5.dtsi
index d0cc4be2de59..7495f93c5069 100644
--- a/arch/arm/boot/dts/aspeed-g5.dtsi
+++ b/arch/arm/boot/dts/aspeed-g5.dtsi
@@ -446,6 +446,7 @@ kcs1: kcs@24 {
 					compatible = "aspeed,ast2500-kcs-bmc-v2";
 					reg = <0x24 0x1>, <0x30 0x1>, <0x3c 0x1>;
 					interrupts = <8>;
+					clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
 					status = "disabled";
 				};
 
@@ -453,6 +454,7 @@ kcs2: kcs@28 {
 					compatible = "aspeed,ast2500-kcs-bmc-v2";
 					reg = <0x28 0x1>, <0x34 0x1>, <0x40 0x1>;
 					interrupts = <8>;
+					clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
 					status = "disabled";
 				};
 
@@ -460,6 +462,7 @@ kcs3: kcs@2c {
 					compatible = "aspeed,ast2500-kcs-bmc-v2";
 					reg = <0x2c 0x1>, <0x38 0x1>, <0x44 0x1>;
 					interrupts = <8>;
+					clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
 					status = "disabled";
 				};
 
@@ -467,6 +470,7 @@ kcs4: kcs@114 {
 					compatible = "aspeed,ast2500-kcs-bmc-v2";
 					reg = <0x114 0x1>, <0x118 0x1>, <0x11c 0x1>;
 					interrupts = <8>;
+					clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
 					status = "disabled";
 				};
 
diff --git a/arch/arm/boot/dts/aspeed-g6.dtsi b/arch/arm/boot/dts/aspeed-g6.dtsi
index 465c3549fdc3..891b862363a7 100644
--- a/arch/arm/boot/dts/aspeed-g6.dtsi
+++ b/arch/arm/boot/dts/aspeed-g6.dtsi
@@ -520,6 +520,7 @@ kcs1: kcs@24 {
 					compatible = "aspeed,ast2500-kcs-bmc-v2";
 					reg = <0x24 0x1>, <0x30 0x1>, <0x3c 0x1>;
 					interrupts = <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
+					clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
 					kcs_chan = <1>;
 					status = "disabled";
 				};
@@ -528,6 +529,7 @@ kcs2: kcs@28 {
 					compatible = "aspeed,ast2500-kcs-bmc-v2";
 					reg = <0x28 0x1>, <0x34 0x1>, <0x40 0x1>;
 					interrupts = <GIC_SPI 139 IRQ_TYPE_LEVEL_HIGH>;
+					clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
 					status = "disabled";
 				};
 
@@ -535,6 +537,7 @@ kcs3: kcs@2c {
 					compatible = "aspeed,ast2500-kcs-bmc-v2";
 					reg = <0x2c 0x1>, <0x38 0x1>, <0x44 0x1>;
 					interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
+					clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
 					status = "disabled";
 				};
 
@@ -542,6 +545,7 @@ kcs4: kcs@114 {
 					compatible = "aspeed,ast2500-kcs-bmc-v2";
 					reg = <0x114 0x1>, <0x118 0x1>, <0x11c 0x1>;
 					interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>;
+					clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
 					status = "disabled";
 				};
 
-- 
2.25.1


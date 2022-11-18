Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0240262F8E9
	for <lists+devicetree@lfdr.de>; Fri, 18 Nov 2022 16:10:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235290AbiKRPKf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Nov 2022 10:10:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235243AbiKRPKe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Nov 2022 10:10:34 -0500
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 9EE50266D
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 07:10:29 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4D1EF23A;
        Fri, 18 Nov 2022 07:10:35 -0800 (PST)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 0F4273F663;
        Fri, 18 Nov 2022 07:10:27 -0800 (PST)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>, devicetree@vger.kernel.org,
        Liviu Dudau <liviu.dudau@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Pierre Gondois <pierre.gondois@arm.com>
Subject: [PATCH] arm64: dts: fvp: Add information about L1 and L2 caches
Date:   Fri, 18 Nov 2022 15:10:17 +0000
Message-Id: <20221118151017.704716-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the information about L1 and L2 caches on FVP RevC platform.
Though the cache size is configurable through the model parameters,
having default values in the device tree helps to exercise and debug
any code utilising the cache information without the need of real
hardware.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 arch/arm64/boot/dts/arm/fvp-base-revc.dts | 73 +++++++++++++++++++++++
 1 file changed, 73 insertions(+)

Hi,

When a bug was reported recently on cacheinfo, I was trying to reproduce
it but couldn't get access to any hardware. So I ended up using this model
and it was useful. So thought of adding the same upstream.

Regards,
Sudeep

diff --git a/arch/arm64/boot/dts/arm/fvp-base-revc.dts b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
index 5f6f30c801a7..60472d65a355 100644
--- a/arch/arm64/boot/dts/arm/fvp-base-revc.dts
+++ b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
@@ -47,48 +47,121 @@ cpu0: cpu@0 {
 			compatible = "arm,armv8";
 			reg = <0x0 0x000>;
 			enable-method = "psci";
+			i-cache-size = <0x8000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			next-level-cache = <&C0_L2>;
 		};
 		cpu1: cpu@100 {
 			device_type = "cpu";
 			compatible = "arm,armv8";
 			reg = <0x0 0x100>;
 			enable-method = "psci";
+			i-cache-size = <0x8000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			next-level-cache = <&C0_L2>;
 		};
 		cpu2: cpu@200 {
 			device_type = "cpu";
 			compatible = "arm,armv8";
 			reg = <0x0 0x200>;
 			enable-method = "psci";
+			i-cache-size = <0x8000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			next-level-cache = <&C0_L2>;
 		};
 		cpu3: cpu@300 {
 			device_type = "cpu";
 			compatible = "arm,armv8";
 			reg = <0x0 0x300>;
 			enable-method = "psci";
+			i-cache-size = <0x8000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			next-level-cache = <&C0_L2>;
 		};
 		cpu4: cpu@10000 {
 			device_type = "cpu";
 			compatible = "arm,armv8";
 			reg = <0x0 0x10000>;
 			enable-method = "psci";
+			i-cache-size = <0x8000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			next-level-cache = <&C1_L2>;
 		};
 		cpu5: cpu@10100 {
 			device_type = "cpu";
 			compatible = "arm,armv8";
 			reg = <0x0 0x10100>;
 			enable-method = "psci";
+			i-cache-size = <0x8000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			next-level-cache = <&C1_L2>;
 		};
 		cpu6: cpu@10200 {
 			device_type = "cpu";
 			compatible = "arm,armv8";
 			reg = <0x0 0x10200>;
 			enable-method = "psci";
+			i-cache-size = <0x8000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			next-level-cache = <&C1_L2>;
 		};
 		cpu7: cpu@10300 {
 			device_type = "cpu";
 			compatible = "arm,armv8";
 			reg = <0x0 0x10300>;
 			enable-method = "psci";
+			i-cache-size = <0x8000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			next-level-cache = <&C1_L2>;
+		};
+		C0_L2: l2-cache0 {
+			compatible = "cache";
+			cache-size = <0x80000>;
+			cache-line-size = <64>;
+			cache-sets = <512>;
+			cache-level = <2>;
+			cache-unified;
+		};
+
+		C1_L2: l2-cache1 {
+			compatible = "cache";
+			cache-size = <0x80000>;
+			cache-line-size = <64>;
+			cache-sets = <512>;
+			cache-level = <2>;
+			cache-unified;
 		};
 	};
 
-- 
2.38.1


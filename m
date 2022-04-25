Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CFA0250E275
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 15:55:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234942AbiDYN6e (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 09:58:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229868AbiDYN6e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 09:58:34 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id F093C6411
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 06:55:29 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B48531FB;
        Mon, 25 Apr 2022 06:55:29 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id EC1EF3F774;
        Mon, 25 Apr 2022 06:55:28 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Sudeep Holla <sudeep.holla@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: dts: fvp: align virtio device node names with dtschema
Date:   Mon, 25 Apr 2022 14:55:24 +0100
Message-Id: <20220425135524.1077986-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.36.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Align the virtio mmio device tree node names with the schema to avoid any
schema warnings.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 arch/arm64/boot/dts/arm/foundation-v8.dtsi           | 2 +-
 arch/arm64/boot/dts/arm/rtsm_ve-motherboard-rs2.dtsi | 6 +++---
 arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi     | 2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/arm/foundation-v8.dtsi b/arch/arm64/boot/dts/arm/foundation-v8.dtsi
index fbf13f7c2baf..83e3e7e3984f 100644
--- a/arch/arm64/boot/dts/arm/foundation-v8.dtsi
+++ b/arch/arm64/boot/dts/arm/foundation-v8.dtsi
@@ -220,7 +220,7 @@ v2m_serial3: serial@c0000 {
 				clock-names = "uartclk", "apb_pclk";
 			};
 
-			virtio-block@130000 {
+			virtio@130000 {
 				compatible = "virtio,mmio";
 				reg = <0x130000 0x200>;
 				interrupts = <42>;
diff --git a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard-rs2.dtsi b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard-rs2.dtsi
index 1b6326514c97..ec2d5280a30b 100644
--- a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard-rs2.dtsi
+++ b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard-rs2.dtsi
@@ -10,19 +10,19 @@ motherboard-bus@8000000 {
 			arm,v2m-memory-map = "rs2";
 
 			iofpga-bus@300000000 {
-				virtio-p9@140000 {
+				virtio@140000 {
 					compatible = "virtio,mmio";
 					reg = <0x140000 0x200>;
 					interrupts = <43>;
 				};
 
-				virtio-net@150000 {
+				virtio@150000 {
 					compatible = "virtio,mmio";
 					reg = <0x150000 0x200>;
 					interrupts = <44>;
 				};
 
-				virtio-rng@200000 {
+				virtio@200000 {
 					compatible = "virtio,mmio";
 					reg = <0x200000 0x200>;
 					interrupts = <46>;
diff --git a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
index a999e7f52d8b..ba8beef3fe99 100644
--- a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
+++ b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
@@ -222,7 +222,7 @@ v2m_timer23: timer@120000 {
 					clock-names = "timclken1", "timclken2", "apb_pclk";
 				};
 
-				virtio-block@130000 {
+				virtio@130000 {
 					compatible = "virtio,mmio";
 					reg = <0x130000 0x200>;
 					interrupts = <42>;
-- 
2.36.0


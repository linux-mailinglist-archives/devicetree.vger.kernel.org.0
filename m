Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0BEA31C5DEF
	for <lists+devicetree@lfdr.de>; Tue,  5 May 2020 18:52:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730397AbgEEQwr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 May 2020 12:52:47 -0400
Received: from foss.arm.com ([217.140.110.172]:45508 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1730251AbgEEQwq (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 5 May 2020 12:52:46 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 48997101E;
        Tue,  5 May 2020 09:52:46 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2F7053F305;
        Tue,  5 May 2020 09:52:45 -0700 (PDT)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Rob Herring <robh@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 15/16] arm64: dts: arm: Fix VExpress LED names
Date:   Tue,  5 May 2020 17:52:11 +0100
Message-Id: <20200505165212.76466-16-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505165212.76466-1-andre.przywara@arm.com>
References: <20200505165212.76466-1-andre.przywara@arm.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The common LED binding wants the LED node names to start with led- and
then have just a single number.

Changing the naming for the 8 user LEDs from using user<x> to led-<x>.
Also there is no default-trigger named "mmc0" in the kernel, so use the
more generic "disk-activity".

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arch/arm/boot/dts/vexpress-v2m-rs1.dtsi | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
index 4aaae848f370..1681e046b855 100644
--- a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
+++ b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
@@ -315,49 +315,49 @@
 			leds {
 				compatible = "gpio-leds";
 
-				user1 {
+				led-1 {
 					label = "v2m:green:user1";
 					gpios = <&v2m_led_gpios 0 0>;
 					linux,default-trigger = "heartbeat";
 				};
 
-				user2 {
+				led-2 {
 					label = "v2m:green:user2";
 					gpios = <&v2m_led_gpios 1 0>;
-					linux,default-trigger = "mmc0";
+					linux,default-trigger = "disk-activity";
 				};
 
-				user3 {
+				led-3 {
 					label = "v2m:green:user3";
 					gpios = <&v2m_led_gpios 2 0>;
 					linux,default-trigger = "cpu0";
 				};
 
-				user4 {
+				led-4 {
 					label = "v2m:green:user4";
 					gpios = <&v2m_led_gpios 3 0>;
 					linux,default-trigger = "cpu1";
 				};
 
-				user5 {
+				led-5 {
 					label = "v2m:green:user5";
 					gpios = <&v2m_led_gpios 4 0>;
 					linux,default-trigger = "cpu2";
 				};
 
-				user6 {
+				led-6 {
 					label = "v2m:green:user6";
 					gpios = <&v2m_led_gpios 5 0>;
 					linux,default-trigger = "cpu3";
 				};
 
-				user7 {
+				led-7 {
 					label = "v2m:green:user7";
 					gpios = <&v2m_led_gpios 6 0>;
 					linux,default-trigger = "cpu4";
 				};
 
-				user8 {
+				led-8 {
 					label = "v2m:green:user8";
 					gpios = <&v2m_led_gpios 7 0>;
 					linux,default-trigger = "cpu5";
-- 
2.17.1


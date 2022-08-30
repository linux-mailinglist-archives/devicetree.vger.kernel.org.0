Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E86705A5CD2
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 09:22:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230002AbiH3HWv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 03:22:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229814AbiH3HWt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 03:22:49 -0400
Received: from muru.com (muru.com [72.249.23.125])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 3A801C7FA5
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 00:22:49 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by muru.com (Postfix) with ESMTPS id 693A480BF;
        Tue, 30 Aug 2022 07:15:27 +0000 (UTC)
Date:   Tue, 30 Aug 2022 10:22:47 +0300
From:   Tony Lindgren <tony@atomide.com>
To:     devicetree@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, Keerthy <j-keerthy@ti.com>,
        Nishanth Menon <nm@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>
Subject: Re: [PATCH v2 0/2] Configure dmtimers for am65
Message-ID: <Yw26x4AGfGC7xExu@atomide.com>
References: <20220830070750.30640-1-tony@atomide.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220830070750.30640-1-tony@atomide.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

* Tony Lindgren <tony@atomide.com> [220830 07:08]:
> Here's v2 series for adding the dmtimers for am65. The device tree binding
> and related driver related changes have been already merged.

FYI, something like the patch below can be used to configure the main
timer0 for PWM. It uses TIMERIO0 for output, and muxes TIMERIO0 pad to
a k3-am654-base-board header pin.

Just for reference only, not for merging, as the k3-am654-base-board header
usage may vary.

Regards,

Tony


diff --git a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
--- a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
@@ -86,6 +86,14 @@ switch-6 {
 		};
 	};
 
+	main_pwm0: dmtimer-main-pwm-0 {
+		pinctrl-0 = <&main_timer0_outsel_pins_default>, <&main_timer0_pins_default>;
+		pinctrl-names = "default";
+		compatible = "ti,omap-dmtimer-pwm";
+		#pwm-cells = <3>;
+		ti,timers = <&main_timer0>;
+	};
+
 	evm_12v0: fixedregulator-evm12v0 {
 		/* main supply */
 		compatible = "regulator-fixed";
@@ -119,6 +127,13 @@ vdd_mmc1_sd: fixedregulator-sd {
 	};
 };
 
+&main_timerio_output {
+	main_timer0_outsel_pins_default: main-timer0-outsel-pins-default {
+		/* CTRLMMR_TIMERIO0_CTRL 0x00104280 OUT_SEL.TIMERIO0 */
+		pinctrl-single,pins = <0 0>;
+	};
+};
+
 &wkup_pmx0 {
 	wkup_i2c0_pins_default: wkup-i2c0-pins-default {
 		pinctrl-single,pins = <
@@ -264,6 +279,13 @@ ecap0_pins_default: ecap0-pins-default {
 			AM65X_IOPAD(0x0010, PIN_INPUT, 0) /* (D21) ECAP0_IN_APWM_OUT */
 		>;
 	};
+
+	main_timer0_pins_default: main-timer0-pins-default {
+		pinctrl-single,pins = <
+			/* CTRLMMR_PADCONFIG192 0x0011c300 TIMER_IO0 */
+			AM65X_IOPAD(0x0018, PIN_OUTPUT, 0)
+		>;
+	};
 };
 
 &wkup_uart0 {
-- 
2.37.1

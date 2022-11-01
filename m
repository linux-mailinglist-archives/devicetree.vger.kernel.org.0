Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 51EAC614C59
	for <lists+devicetree@lfdr.de>; Tue,  1 Nov 2022 15:17:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230225AbiKAORK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Nov 2022 10:17:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37684 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229880AbiKAORJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Nov 2022 10:17:09 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id ECA0C11A32
        for <devicetree@vger.kernel.org>; Tue,  1 Nov 2022 07:17:06 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C34571FB;
        Tue,  1 Nov 2022 07:17:12 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.42])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2E5B73F703;
        Tue,  1 Nov 2022 07:17:05 -0700 (PDT)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org,
        Icenowy Zheng <uwu@icenowy.me>
Subject: [PATCH 0/9] ARM: dts: suniv: F1C100s: add more peripherals
Date:   Tue,  1 Nov 2022 14:16:49 +0000
Message-Id: <20221101141658.3631342-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Allwinner F1C100s series of SoCs shares many peripherals with other
Allwinner SoCs. Since they are compatible, we can use the existing
drivers, and just need to enable the devices in the DT.

This series adds the I2C controllers, the PWM device, the CIR (infrared)
device and the LRADC (aka. KEYADC, low res ADC) to the F1C100s .dtsi, so
boards can just use them by setting 'status = "okay";'.

The only thing missing driver-wise is the IR mod clock, which was not
modeled in our CCU driver. Patch 5/9 fixes that.

For every device there is one patch that adds the new compatible string
to the DT binding, and another patch to add the DT node.

This has been tested with a Lctech Pi F1C200s board, by:
- Connecting an LED to PE6, and configuring this as the PWM pin in the DT.
  Doing a sweep on /sys/class/pwm/pwm1/duty_cycle made the LED fade out.
- Configuring PD0/PD12 as I2C0, and letting i2c-detect find the on-board
  NS2009 I2C chip.
- Connecting two resistors to the "ADC" pin, and configuring them as two
  buttons in the DT. /dev/input/event0 properly reported button presses.
- Connecting an infrared receiver to PE11, configured as CIR.
  ir-keytable reported key presses on a remote control.

All those (basic) tests were successful, and prove that the peripherals
do work and are compatible.

Please have a look and test on your hardware, if possible.

Cheers,
Andre

Andre Przywara (9):
  dt-bindings: pwm: allwinner,sun4i-a10: Add F1C100s compatible
  ARM: dts: suniv: f1c100s: add PWM node
  dt-bindings: i2c: mv64xxx: Add F1C100s compatible string
  ARM: dts: suniv: f1c100s: add I2C DT nodes
  clk: sunxi-ng: f1c100s: Add IR mod clock
  dt-bindings: media: IR: Add F1C100s IR compatible string
  ARM: dts: suniv: f1c100s: add CIR DT node
  dt-bindings: input: sun4i-lradc-keys: Add F1C100s compatible
  ARM: dts: suniv: f1c100s: add LRADC node

 .../bindings/i2c/marvell,mv64xxx-i2c.yaml     |  1 +
 .../input/allwinner,sun4i-a10-lradc-keys.yaml |  4 +-
 .../media/allwinner,sun4i-a10-ir.yaml         |  1 +
 .../bindings/pwm/allwinner,sun4i-a10-pwm.yaml |  4 +-
 arch/arm/boot/dts/suniv-f1c100s.dtsi          | 78 +++++++++++++++++++
 drivers/clk/sunxi-ng/ccu-suniv-f1c100s.c      | 11 ++-
 drivers/clk/sunxi-ng/ccu-suniv-f1c100s.h      |  2 +-
 include/dt-bindings/clock/suniv-ccu-f1c100s.h |  2 +
 8 files changed, 99 insertions(+), 4 deletions(-)

-- 
2.25.1


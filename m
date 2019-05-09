Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 68B6018E9B
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2019 19:03:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726806AbfEIRDO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 May 2019 13:03:14 -0400
Received: from bmailout3.hostsharing.net ([176.9.242.62]:49117 "EHLO
        bmailout3.hostsharing.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726617AbfEIRDN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 May 2019 13:03:13 -0400
Received: from h08.hostsharing.net (h08.hostsharing.net [IPv6:2a01:37:1000::53df:5f1c:0])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (Client CN "*.hostsharing.net", Issuer "COMODO RSA Domain Validation Secure Server CA" (not verified))
        by bmailout3.hostsharing.net (Postfix) with ESMTPS id 0B0DC102D3B94;
        Thu,  9 May 2019 19:03:12 +0200 (CEST)
Received: by h08.hostsharing.net (Postfix, from userid 100393)
        id AB43F1142FA; Thu,  9 May 2019 19:03:11 +0200 (CEST)
Message-Id: <ab21b59ece7db065ee86f6f0c0a7623144db52b4.1557419583.git.lukas@wunner.de>
From:   Lukas Wunner <lukas@wunner.de>
Date:   Thu, 9 May 2019 19:03:00 +0200
Subject: [PATCH] ARM: bcm283x: Enable DMA support for SPI controller
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
To:     Stefan Wahren <stefan.wahren@i2se.com>,
        Eric Anholt <eric@anholt.net>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>
Cc:     Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Martin Sperl <kernel@martin.sperl.org>,
        Noralf Tronnes <noralf@tronnes.org>,
        linux-rpi-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Without this, the driver for the BCM2835 SPI controller uses interrupt
mode instead of DMA mode, incurring a significant performance penalty.
The Foundation's device tree has had these attributes for years, but for
some reason they were never upstreamed.

They were originally contributed by Noralf Trønnes and Martin Sperl:
https://github.com/raspberrypi/linux/commit/25f3e064afc8
https://github.com/raspberrypi/linux/commit/e0edb52b47e6

The DREQ numbers 6 and 7 are documented in section 4.2.1.3 of:
https://www.raspberrypi.org/app/uploads/2012/02/BCM2835-ARM-Peripherals.pdf

Tested-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Lukas Wunner <lukas@wunner.de>
Cc: Martin Sperl <kernel@martin.sperl.org>
Cc: Noralf Trønnes <noralf@tronnes.org>
---
 arch/arm/boot/dts/bcm283x.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/bcm283x.dtsi b/arch/arm/boot/dts/bcm283x.dtsi
index 9777644..4b21ddb 100644
--- a/arch/arm/boot/dts/bcm283x.dtsi
+++ b/arch/arm/boot/dts/bcm283x.dtsi
@@ -431,6 +431,8 @@
 			reg = <0x7e204000 0x1000>;
 			interrupts = <2 22>;
 			clocks = <&clocks BCM2835_CLOCK_VPU>;
+			dmas = <&dma 6>, <&dma 7>;
+			dma-names = "tx", "rx";
 			#address-cells = <1>;
 			#size-cells = <0>;
 			status = "disabled";
-- 
2.20.1


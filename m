Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9D095C145A
	for <lists+devicetree@lfdr.de>; Sun, 29 Sep 2019 13:25:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728853AbfI2LZ0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 Sep 2019 07:25:26 -0400
Received: from inca-roads.misterjones.org ([213.251.177.50]:52869 "EHLO
        inca-roads.misterjones.org" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726911AbfI2LZ0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sun, 29 Sep 2019 07:25:26 -0400
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
        (envelope-from <maz@kernel.org>)
        id 1iEXKL-0007jl-Cr; Sun, 29 Sep 2019 13:25:21 +0200
To:     Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH V3 7/8] ARM: dts: Add minimal Raspberry Pi 4 support
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 7bit
Date:   Sun, 29 Sep 2019 12:25:19 +0100
From:   Marc Zyngier <maz@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Eric Anholt <eric@anholt.net>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        <devicetree@vger.kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        <bcm-kernel-feedback-list@broadcom.com>,
        Will Deacon <will@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
In-Reply-To: <1569672435-19823-8-git-send-email-wahrenst@gmx.net>
References: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
 <1569672435-19823-8-git-send-email-wahrenst@gmx.net>
Message-ID: <b75876e1b3c46297142c052e1c6ea0a2@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: wahrenst@gmx.net, robh+dt@kernel.org, mark.rutland@arm.com, eric@anholt.net, f.fainelli@gmail.com, rjui@broadcom.com, sbranden@broadcom.com, devicetree@vger.kernel.org, catalin.marinas@arm.com, bcm-kernel-feedback-list@broadcom.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org); SAEximRunCond expanded to false
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2019-09-28 13:07, Stefan Wahren wrote:
> This adds minimal support for the new Raspberry Pi 4 without the
> fancy stuff like GENET, PCIe, xHCI, 40 bit DMA and V3D. The RPi 4 is
> available in 3 different variants (1, 2 and 4 GB RAM), so leave the 
> memory
> size to zero and let the bootloader take care of it. The DWC2 is 
> still
> usable as peripheral via the USB-C port.
>
> Other differences to the Raspberry Pi 3:
> - additional GIC 400 Interrupt controller
> - new thermal IP and HWRNG
> - additional MMC interface (emmc2)
> - additional UART, I2C, SPI and PWM interfaces
> - clock stretching bug in I2C IP has been fixed
>
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> Acked-by: Eric Anholt <eric@anholt.net>

[...]

> +	timer {
> +		compatible = "arm,armv8-timer";
> +		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(4) |
> +					  IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(4) |
> +					  IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) |
> +					  IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) |
> +					  IRQ_TYPE_LEVEL_LOW)>;
> +		/* This only applies to the ARMv7 stub */
> +		arm,cpu-registers-not-fw-configured;
> +
> +		/* The ARM cores doesn't enter deep enough states */
> +		always-on;

I already commented on this. The A72 not entering a deep enough sleep 
state to
lose its comparator seems dubious at best. The right way to do this is 
to have
a global timer, which you said the platform has.

Please drop this.

         M.
-- 
Jazz is not dead. It just smells funny...

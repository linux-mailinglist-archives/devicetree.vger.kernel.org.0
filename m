Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5CBBB9EAD2
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2019 16:22:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725987AbfH0OWa convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Tue, 27 Aug 2019 10:22:30 -0400
Received: from relay11.mail.gandi.net ([217.70.178.231]:51627 "EHLO
        relay11.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725920AbfH0OWa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Aug 2019 10:22:30 -0400
Received: from localhost (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
        (Authenticated sender: gregory.clement@bootlin.com)
        by relay11.mail.gandi.net (Postfix) with ESMTPSA id E554B100007;
        Tue, 27 Aug 2019 14:22:26 +0000 (UTC)
From:   Gregory CLEMENT <gregory.clement@bootlin.com>
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Jason Cooper <jason@lakedaemon.net>,
        Andrew Lunn <andrew@lunn.ch>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Kishon Vijay Abraham I <kishon@ti.com>
Cc:     devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Antoine Tenart <antoine.tenart@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Nadav Haklai <nadavh@marvell.com>,
        Rob Herring <robh+dt@kernel.org>,
        Russell King <linux@armlinux.org.uk>,
        linux-arm-kernel@lists.infradead.org,
        Grzegorz Jaszczyk <jaz@semihalf.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v3 00/19] Enhance CP110 COMPHY support
In-Reply-To: <20190731122126.3049-1-miquel.raynal@bootlin.com>
References: <20190731122126.3049-1-miquel.raynal@bootlin.com>
Date:   Tue, 27 Aug 2019 16:22:26 +0200
Message-ID: <87lfvezo0t.fsf@FE-laptop>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Miquel,

> Armada CP110 have a COMPHY IP which supports configuring SERDES lanes
> in one mode, either:
> - SATA
> - USB3 host
> - PCIe (several width)
> - Ethernet (several modes)
>
> As of today, only a few Ethernet modes are supported and the code is
> embedded in the Linux driver. A more complete COMPHY driver that can
> be used by both Linux and U-Boot is embedded in the firmware and can
> be run through SMC calls.
>
> First the current COMPHY driver is updated to use SMC calls but
> fallbacks to the already existing functions if the firmware is not
> up-to-date. Then, more Ethernet modes are added (through SMC calls
> only). SATA, USB3H and PCIe modes are also supported one by one.
>
> There is one subtle difference with the PCIe functions: we must tell
> the firmware the number of lanes to configure (x1, x2 or x4). This
> parameter depends on the number of entries in the 'phys' property
> describing the PCIe PHY. We use the "submode" parameter of the generic
> PHY API to carry this value. The Armada-8k PCIe driver has been
> updated to follow this idea and this change has been merged already:
> http://patchwork.ozlabs.org/patch/1072763/
>
> Thanks,
> Miquèl
>
>
> Changes since v2:
> -----------------
> * Inverted two arguments in a trace.
> * Avoid warning the user when EPROBE_DEFER is returned (clocks case).
> * Added Maxime C. and Grzegorz J. 's Tested-by tags (only on the
>   "introducing SMC calls" patch, but they tested the whole series).
> * Added Rob's Reviewed-by on the bindings.
> * Also updated the bindings as suggested by Rob to reflect that there
>   can be from one to four PHYs in the PCIe nodes (hence, the need for
>   the phy-names property).
>
> Changes since v1:
> -----------------
> * All modes report their errors to the user.
> * If the firmware is too old, advise the user to update it.
> * Credit Grzegorz for his work.
> * Fix wrong speed in Ethernet modes.
> * Add COMPHY necessary clocks.
> * Update bindings.
> * The security flaw related to the fact that we must give the CP
>   address to the firmware has been mitigated by the addition of extra
>   checks in ATF recently.
>
>
> Grzegorz Jaszczyk (5):
>   phy: mvebu-cp110-comphy: Add SMC call support
>   phy: mvebu-cp110-comphy: Add RXAUI support
>   phy: mvebu-cp110-comphy: Add USB3 host/device support
>   phy: mvebu-cp110-comphy: Add SATA support
>   phy: mvebu-cp110-comphy: Add PCIe support
>
> Miquel Raynal (14):
>   phy: mvebu-cp110-comphy: Add clocks support
>   phy: mvebu-cp110-comphy: Explicitly initialize the lane submode
>   phy: mvebu-cp110-comphy: List already supported Ethernet modes
>   phy: mvebu-cp110-comphy: Rename the macro handling only Ethernet modes
>   phy: mvebu-cp110-comphy: Allow non-Ethernet modes to be configured
>   phy: mvebu-cp110-comphy: Cosmetic change in a helper
>   phy: mvebu-cp110-comphy: Update comment about powering off all lanes
>     at boot
>   dt-bindings: phy: Add Marvell COMPHY clocks
>   dt-bindings: pci: add PHY properties to Armada 7K/8K controller
>     bindings



>   arm64: dts: marvell: Add CP110 COMPHY clocks
>   arm64: dts: marvell: Add 7k/8k per-port PHYs in SATA nodes
>   arm64: dts: marvell: Add 7k/8k PHYs in USB3 nodes
>   arm64: dts: marvell: Add 7k/8k PHYs in PCIe nodes
>   arm64: dts: marvell: Convert 7k/8k usb-phy properties to phy-supply

These 5 patches have been applied on mvebu/dt64

Thanks,

Gregory



>
>  .../devicetree/bindings/pci/pci-armada8k.txt  |   6 +
>  .../bindings/phy/phy-mvebu-comphy.txt         |  10 +
>  .../arm64/boot/dts/marvell/armada-7040-db.dts |  37 +-
>  .../marvell/armada-8040-clearfog-gt-8k.dts    |  22 +-
>  .../arm64/boot/dts/marvell/armada-8040-db.dts |  43 +-
>  .../boot/dts/marvell/armada-8040-mcbin.dtsi   |  38 +-
>  arch/arm64/boot/dts/marvell/armada-cp110.dtsi |  13 +
>  drivers/phy/marvell/phy-mvebu-cp110-comphy.c  | 412 +++++++++++++++---
>  8 files changed, 499 insertions(+), 82 deletions(-)
>
> -- 
> 2.20.1
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

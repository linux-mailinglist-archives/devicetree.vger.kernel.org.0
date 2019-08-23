Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0B7AD9A5F4
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2019 05:16:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731416AbfHWDQs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Aug 2019 23:16:48 -0400
Received: from lelv0142.ext.ti.com ([198.47.23.249]:48802 "EHLO
        lelv0142.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726283AbfHWDQs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Aug 2019 23:16:48 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7N3GKR6031340;
        Thu, 22 Aug 2019 22:16:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1566530180;
        bh=0vXXB2vfv4EeXktOPvNHO5kgA/nhKAh1TIl6WLWMqWc=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=shhbBThuY2/XmIQaLCVJxobQw6lQlVmyIREHiOdPN3Nk6h0Czj+fYniyArEgoE5Y+
         kwz3Ma7pqaXPhz2ieJwZQgdqJdov7slF8ywjrXOtSdWR8l//fXYxngbyK/E7R8S/ve
         sSzuj/YeLpax5gRH660ssaBL9Ef2p4/+MkVIckoo=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7N3GKxc079842
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 22 Aug 2019 22:16:20 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 22
 Aug 2019 22:16:20 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 22 Aug 2019 22:16:20 -0500
Received: from [172.24.190.233] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7N3GF4L006160;
        Thu, 22 Aug 2019 22:16:16 -0500
Subject: Re: [PATCH v3 00/19] Enhance CP110 COMPHY support
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Jason Cooper <jason@lakedaemon.net>,
        Andrew Lunn <andrew@lunn.ch>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
CC:     <devicetree@vger.kernel.org>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Antoine Tenart <antoine.tenart@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Nadav Haklai <nadavh@marvell.com>,
        Rob Herring <robh+dt@kernel.org>,
        Russell King <linux@armlinux.org.uk>,
        <linux-arm-kernel@lists.infradead.org>,
        Grzegorz Jaszczyk <jaz@semihalf.com>
References: <20190731122126.3049-1-miquel.raynal@bootlin.com>
From:   Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <4e1c4d27-3676-5efa-1126-8149a8635eb5@ti.com>
Date:   Fri, 23 Aug 2019 08:46:14 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190731122126.3049-1-miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 31/07/19 5:51 PM, Miquel Raynal wrote:
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

Some of the patches are not applying cleanly. Care to resend the series after
rebasing to phy -next?

Thanks
Kishon

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

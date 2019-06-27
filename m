Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A965A57F9C
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2019 11:51:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726314AbfF0JvO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jun 2019 05:51:14 -0400
Received: from relay1-d.mail.gandi.net ([217.70.183.193]:50723 "EHLO
        relay1-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726292AbfF0JvO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Jun 2019 05:51:14 -0400
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 341AA240002;
        Thu, 27 Jun 2019 09:51:06 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Gregory Clement <gregory.clement@bootlin.com>,
        Jason Cooper <jason@lakedaemon.net>,
        Andrew Lunn <andrew@lunn.ch>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Kishon Vijay Abraham I <kishon@ti.com>
Cc:     <devicetree@vger.kernel.org>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Antoine Tenart <antoine.tenart@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Nadav Haklai <nadavh@marvell.com>,
        Rob Herring <robh+dt@kernel.org>,
        Russell King <linux@armlinux.org.uk>,
        <linux-arm-kernel@lists.infradead.org>,
        Grzegorz Jaszczyk <jaz@semihalf.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH v2 00/19] Enhance CP110 COMPHY support
Date:   Thu, 27 Jun 2019 11:50:45 +0200
Message-Id: <20190627095104.22529-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Armada CP110 have a COMPHY IP which supports configuring SERDES lanes
in one mode, either:
- SATA
- USB3 host
- PCIe (several width)
- Ethernet (several modes)

As of today, only a few Ethernet modes are supported and the code is
embedded in the Linux driver. A more complete COMPHY driver that can
be used by both Linux and U-Boot is embedded in the firmware and can
be run through SMC calls.

First the current COMPHY driver is updated to use SMC calls but
fallbacks to the already existing functions if the firmware is not
up-to-date. Then, more Ethernet modes are added (through SMC calls
only). SATA, USB3H and PCIe modes are also supported one by one.

There is one subtle difference with the PCIe functions: we must tell
the firmware the number of lanes to configure (x1, x2 or x4). This
parameter depends on the number of entries in the 'phys' property
describing the PCIe PHY. We use the "submode" parameter of the generic
PHY API to carry this value. The Armada-8k PCIe driver has been
updated to follow this idea and this change has been merged already:
http://patchwork.ozlabs.org/patch/1072763/

Thanks,
Miquèl


Changes since v1:
-----------------
- All modes report their errors to the user.
- If the firmware is too old, advise the user to update it.
- Credit Grzegorz for his work.
- Fix wrong speed in Ethernet modes.
- Add COMPHY necessary clocks.
- Update bindings.
- The security flaw related to the fact that we must give the CP
  address to the firmware has been mitigated by the addition of extra
  checks in ATF recently.

Grzegorz Jaszczyk (5):
  phy: mvebu-cp110-comphy: Add SMC call support
  phy: mvebu-cp110-comphy: Add RXAUI support
  phy: mvebu-cp110-comphy: Add USB3 host/device support
  phy: mvebu-cp110-comphy: Add SATA support
  phy: mvebu-cp110-comphy: Add PCIe support

Miquel Raynal (14):
  phy: mvebu-cp110-comphy: Add clocks support
  phy: mvebu-cp110-comphy: Explicitly initialize the lane submode
  phy: mvebu-cp110-comphy: List already supported Ethernet modes
  phy: mvebu-cp110-comphy: Rename the macro handling only Ethernet modes
  phy: mvebu-cp110-comphy: Allow non-Ethernet modes to be configured
  phy: mvebu-cp110-comphy: Cosmetic change in a helper
  phy: mvebu-cp110-comphy: Update comment about powering off all lanes
    at boot
  dt-bindings: phy: Add Marvell COMPHY clocks
  dt-bindings: pci: add PHY properties to Armada 7K/8K controller
    bindings
  arm64: dts: marvell: Add CP110 COMPHY clocks
  arm64: dts: marvell: Add 7k/8k per-port PHYs in SATA nodes
  arm64: dts: marvell: Add 7k/8k PHYs in USB3 nodes
  arm64: dts: marvell: Add 7k/8k PHYs in PCIe nodes
  arm64: dts: marvell: Convert 7k/8k usb-phy properties to phy-supply

 .../devicetree/bindings/pci/pci-armada8k.txt  |   4 +
 .../bindings/phy/phy-mvebu-comphy.txt         |  10 +
 .../arm64/boot/dts/marvell/armada-7040-db.dts |  37 +-
 .../marvell/armada-8040-clearfog-gt-8k.dts    |  22 +-
 .../arm64/boot/dts/marvell/armada-8040-db.dts |  43 +-
 .../boot/dts/marvell/armada-8040-mcbin.dtsi   |  38 +-
 arch/arm64/boot/dts/marvell/armada-cp110.dtsi |  13 +
 drivers/phy/marvell/phy-mvebu-cp110-comphy.c  | 409 +++++++++++++++---
 8 files changed, 494 insertions(+), 82 deletions(-)

-- 
2.19.1


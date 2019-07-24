Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 34AA773331
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2019 17:56:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726987AbfGXP4U convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Wed, 24 Jul 2019 11:56:20 -0400
Received: from relay4-d.mail.gandi.net ([217.70.183.196]:45237 "EHLO
        relay4-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725776AbfGXP4U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Jul 2019 11:56:20 -0400
X-Originating-IP: 86.250.200.211
Received: from xps13 (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id CBEAEE0008;
        Wed, 24 Jul 2019 15:56:16 +0000 (UTC)
Date:   Wed, 24 Jul 2019 17:56:15 +0200
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Rob Herring <robh@kernel.org>
Cc:     Gregory Clement <gregory.clement@bootlin.com>,
        Jason Cooper <jason@lakedaemon.net>,
        Andrew Lunn <andrew@lunn.ch>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Antoine Tenart <antoine.tenart@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Nadav Haklai <nadavh@marvell.com>,
        Russell King <linux@armlinux.org.uk>,
        linux-arm-kernel@lists.infradead.org,
        Grzegorz Jaszczyk <jaz@semihalf.com>
Subject: Re: [PATCH v2 14/19] dt-bindings: pci: add PHY properties to Armada
 7K/8K controller bindings
Message-ID: <20190724175615.2fe46a8e@xps13>
In-Reply-To: <20190722175225.GA13801@bogus>
References: <20190627095104.22529-1-miquel.raynal@bootlin.com>
        <20190627122505.25774-1-miquel.raynal@bootlin.com>
        <20190627122505.25774-2-miquel.raynal@bootlin.com>
        <20190722175225.GA13801@bogus>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

Rob Herring <robh@kernel.org> wrote on Mon, 22 Jul 2019 11:52:25 -0600:

> On Thu, Jun 27, 2019 at 02:25:00PM +0200, Miquel Raynal wrote:
> > Armada CP110 PCIe controller can have a PHY (for configuring SERDES
> > lanes). Describe these two properties in the bindings.
> > 
> > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > ---
> >  Documentation/devicetree/bindings/pci/pci-armada8k.txt | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/pci/pci-armada8k.txt b/Documentation/devicetree/bindings/pci/pci-armada8k.txt
> > index 9e3fc15e1af8..a373a80524db 100644
> > --- a/Documentation/devicetree/bindings/pci/pci-armada8k.txt
> > +++ b/Documentation/devicetree/bindings/pci/pci-armada8k.txt
> > @@ -17,6 +17,10 @@ Required properties:
> >     name must be "core" for the first clock and "reg" for the second
> >     one
> >  
> > +Optional properties:
> > +- phys: phandle to the PHY node (generic PHY bindings).
> > +- phy-names: names of the PHYs.  
> 
> How many? If only 1, you don't really need phy-names.

Actually it depends on the board. For instance, the MacchiatoBin has
four of them:

--- a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
@@ -186,6 +186,10 @@
        reset-gpios = <&cp0_gpio2 20 GPIO_ACTIVE_LOW>;
        ranges = <0x81000000 0x0 0xf9010000 0x0 0xf9010000 0x0 0x10000
                  0x82000000 0x0 0xc0000000 0x0 0xc0000000 0x0 0x20000000>;
+       phys = <&cp0_comphy0 0>, <&cp0_comphy1 0>,
+              <&cp0_comphy2 0>, <&cp0_comphy3 0>;
+       phy-names = "cp0-pcie0-x4-lane0-phy", "cp0-pcie0-x4-lane1-phy",
+                   "cp0-pcie0-x4-lane2-phy", "cp0-pcie0-x4-lane3-phy";
        status = "okay";
 };


Thanks,
Miquèl

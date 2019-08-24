Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 235E49BCFB
	for <lists+devicetree@lfdr.de>; Sat, 24 Aug 2019 12:15:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726387AbfHXKPi convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Sat, 24 Aug 2019 06:15:38 -0400
Received: from relay3-d.mail.gandi.net ([217.70.183.195]:59731 "EHLO
        relay3-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726381AbfHXKPi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Aug 2019 06:15:38 -0400
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id C946260008;
        Sat, 24 Aug 2019 10:15:33 +0000 (UTC)
Date:   Sat, 24 Aug 2019 12:15:31 +0200
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
Subject: Re: [PATCH v3 14/19] dt-bindings: pci: add PHY properties to Armada
 7K/8K controller bindings
Message-ID: <20190824121531.3dda75bd@xps13>
In-Reply-To: <20190821182857.GA9660@bogus>
References: <20190731122126.3049-1-miquel.raynal@bootlin.com>
 <20190731122126.3049-15-miquel.raynal@bootlin.com>
 <20190821182857.GA9660@bogus>
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

Rob Herring <robh@kernel.org> wrote on Wed, 21 Aug 2019 13:28:57 -0500:

> On Wed, Jul 31, 2019 at 02:21:21PM +0200, Miquel Raynal wrote:
> > Armada CP110 PCIe controller can have from one to four PHYs for
> > configuring SERDES lanes (PCIe x1, PCIe x2 or PCIe x4). Describe the
> > phys and phy-names properties in the bindings.
> > 
> > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > ---
> >  Documentation/devicetree/bindings/pci/pci-armada8k.txt | 6 ++++++
> >  1 file changed, 6 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/pci/pci-armada8k.txt b/Documentation/devicetree/bindings/pci/pci-armada8k.txt
> > index 9e3fc15e1af8..7cf12162aa4e 100644
> > --- a/Documentation/devicetree/bindings/pci/pci-armada8k.txt
> > +++ b/Documentation/devicetree/bindings/pci/pci-armada8k.txt
> > @@ -17,6 +17,12 @@ Required properties:
> >     name must be "core" for the first clock and "reg" for the second
> >     one
> >  
> > +Optional properties:
> > +- phys: phandle(s) to PHY node(s) following the generic PHY bindings.
> > +	Either 1, 2 or 4 PHYs might be needed depending on the number of
> > +	PCIe lanes.
> > +- phy-names: names of the PHYs.  
> 
> You need to enumerate what the names are. Based on your example in v2, I 
> don't think the names are really valuable unless you can skip lanes.

I don't know any setup doing it but yes, I suppose you could skip lanes.

Kishon asked me to rebase on phy-next, I'll enumerate the names when
resending.

Thanks,
Miquèl

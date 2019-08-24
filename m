Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5C2FB9BD5F
	for <lists+devicetree@lfdr.de>; Sat, 24 Aug 2019 13:54:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727783AbfHXLyV convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Sat, 24 Aug 2019 07:54:21 -0400
Received: from relay1-d.mail.gandi.net ([217.70.183.193]:33613 "EHLO
        relay1-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727780AbfHXLyV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Aug 2019 07:54:21 -0400
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 63E2D24000A;
        Sat, 24 Aug 2019 11:54:16 +0000 (UTC)
Date:   Sat, 24 Aug 2019 13:54:14 +0200
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Kishon Vijay Abraham I <kishon@ti.com>
Cc:     Gregory Clement <gregory.clement@bootlin.com>,
        Jason Cooper <jason@lakedaemon.net>,
        Andrew Lunn <andrew@lunn.ch>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        <devicetree@vger.kernel.org>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Antoine Tenart <antoine.tenart@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Nadav Haklai <nadavh@marvell.com>,
        Rob Herring <robh+dt@kernel.org>,
        Russell King <linux@armlinux.org.uk>,
        <linux-arm-kernel@lists.infradead.org>,
        Grzegorz Jaszczyk <jaz@semihalf.com>,
        Matt Pelland <mpelland@starry.com>
Subject: Re: [PATCH v3 00/19] Enhance CP110 COMPHY support
Message-ID: <20190824135414.5c490337@xps13>
In-Reply-To: <4e1c4d27-3676-5efa-1126-8149a8635eb5@ti.com>
References: <20190731122126.3049-1-miquel.raynal@bootlin.com>
        <4e1c4d27-3676-5efa-1126-8149a8635eb5@ti.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Kishon,

+ Matt Pelland

Kishon Vijay Abraham I <kishon@ti.com> wrote on Fri, 23 Aug 2019
08:46:14 +0530:

> On 31/07/19 5:51 PM, Miquel Raynal wrote:
> > Armada CP110 have a COMPHY IP which supports configuring SERDES lanes
> > in one mode, either:
> > - SATA
> > - USB3 host
> > - PCIe (several width)
> > - Ethernet (several modes)
> > 
> > As of today, only a few Ethernet modes are supported and the code is
> > embedded in the Linux driver. A more complete COMPHY driver that can
> > be used by both Linux and U-Boot is embedded in the firmware and can
> > be run through SMC calls.
> > 
> > First the current COMPHY driver is updated to use SMC calls but
> > fallbacks to the already existing functions if the firmware is not
> > up-to-date. Then, more Ethernet modes are added (through SMC calls
> > only). SATA, USB3H and PCIe modes are also supported one by one.
> > 
> > There is one subtle difference with the PCIe functions: we must tell
> > the firmware the number of lanes to configure (x1, x2 or x4). This
> > parameter depends on the number of entries in the 'phys' property
> > describing the PCIe PHY. We use the "submode" parameter of the generic
> > PHY API to carry this value. The Armada-8k PCIe driver has been
> > updated to follow this idea and this change has been merged already:
> > http://patchwork.ozlabs.org/patch/1072763/  
> 
> Some of the patches are not applying cleanly. Care to resend the series after
> rebasing to phy -next?

Besides two conflicts that I can fix very easily about missing
of_node_put() calls, you just merged in phy-next this patch:

phy: marvell: phy-mvebu-cp110-comphy: implement RXAUI support

Which totally conflicts with my series while I also add RXAUI support
in patch 5. Please note that even the third version of my series
was contributed before this patch.

There is one difference to note though: in the patch from Matt Peland,
RXAUI support is embedded in the driver while I do SMC calls.

Anyway, would it be possible to change the order of application if
you want both methods in the driver because it will be much easier
to add Matt's patch on top of my series than the opposite. I can
even do it myself if you wish.

Thanks,
Miquèl

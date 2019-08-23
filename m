Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 768BF9A8DE
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2019 09:33:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732091AbfHWHd3 convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Fri, 23 Aug 2019 03:33:29 -0400
Received: from relay5-d.mail.gandi.net ([217.70.183.197]:50161 "EHLO
        relay5-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728512AbfHWHd2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Aug 2019 03:33:28 -0400
X-Originating-IP: 86.250.200.211
Received: from xps13 (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id CE0A61C000B;
        Fri, 23 Aug 2019 07:33:25 +0000 (UTC)
Date:   Fri, 23 Aug 2019 09:33:24 +0200
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
        Grzegorz Jaszczyk <jaz@semihalf.com>
Subject: Re: [PATCH v3 00/19] Enhance CP110 COMPHY support
Message-ID: <20190823093324.2d7da1f4@xps13>
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

Sure, I'll do it asap.

Thanks!
Miquèl


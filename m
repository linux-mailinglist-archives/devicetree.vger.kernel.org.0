Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5714891F1D
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2019 10:40:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726186AbfHSIkP convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Mon, 19 Aug 2019 04:40:15 -0400
Received: from relay3-d.mail.gandi.net ([217.70.183.195]:51239 "EHLO
        relay3-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725768AbfHSIkP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Aug 2019 04:40:15 -0400
X-Originating-IP: 86.250.200.211
Received: from xps13 (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 3EFA660003;
        Mon, 19 Aug 2019 08:40:10 +0000 (UTC)
Date:   Mon, 19 Aug 2019 10:40:09 +0200
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
Subject: Re: [PATCH v3 13/19] dt-bindings: phy: Add Marvell COMPHY clocks
Message-ID: <20190819104009.44b76442@xps13>
In-Reply-To: <20190812212946.GA6120@bogus>
References: <20190731122126.3049-1-miquel.raynal@bootlin.com>
        <20190731122126.3049-14-miquel.raynal@bootlin.com>
        <20190812212946.GA6120@bogus>
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

Rob Herring <robh@kernel.org> wrote on Mon, 12 Aug 2019 15:29:46 -0600:

> On Wed, 31 Jul 2019 14:21:20 +0200, Miquel Raynal wrote:
> > Marvell CP110 COMPHY block is fed by 3 clocks. Describe each of them in the
> > bindings.
> > 
> > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > ---
> >  .../devicetree/bindings/phy/phy-mvebu-comphy.txt       | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> > 
> 
> Please add Acked-by/Reviewed-by tags when posting new versions. However,
> there's no need to repost patches *only* to add the tags. The upstream
> maintainer will do that for acks received on the version they apply.
> 
> If a tag was not added on purpose, please state why and what changed.

Oops, I know I know, I just forgot to add manually your Reviewed-by.

If the maintainers can add it manually it's great; avoiding to resend
19 patches for that sounds sane :)


Thanks,
Miquèl

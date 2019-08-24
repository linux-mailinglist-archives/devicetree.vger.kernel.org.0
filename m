Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BB6CA9BD4A
	for <lists+devicetree@lfdr.de>; Sat, 24 Aug 2019 13:30:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727814AbfHXLak convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Sat, 24 Aug 2019 07:30:40 -0400
Received: from relay8-d.mail.gandi.net ([217.70.183.201]:49831 "EHLO
        relay8-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727809AbfHXLak (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Aug 2019 07:30:40 -0400
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id EF5E61BF206;
        Sat, 24 Aug 2019 11:30:37 +0000 (UTC)
Date:   Sat, 24 Aug 2019 13:30:36 +0200
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Rob Herring <robh@kernel.org>
Cc:     Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Antoine Tenart <antoine.tenart@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Nadav Haklai <nadavh@marvell.com>,
        linux-arm-kernel@lists.infradead.org,
        Grzegorz Jaszczyk <jaz@semihalf.com>,
        Marcin Wojtas <mw@semihalf.com>,
        Stefan Chulski <stefanc@marvell.com>,
        Yan Markman <ymarkman@marvell.com>
Subject: Re: [PATCH 16/20] dt-bindings: marvell: Declare the CN913x SoC
 compatibles
Message-ID: <20190824133036.798da540@xps13>
In-Reply-To: <20190821193726.GA32220@bogus>
References: <20190806145500.24109-1-miquel.raynal@bootlin.com>
        <20190806145500.24109-17-miquel.raynal@bootlin.com>
        <20190821193726.GA32220@bogus>
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

Rob Herring <robh@kernel.org> wrote on Wed, 21 Aug 2019 14:37:26 -0500:

> On Tue, Aug 06, 2019 at 04:54:56PM +0200, Miquel Raynal wrote:
> > From: Grzegorz Jaszczyk <jaz@semihalf.com>
> > 
> > Describe the compatible properties for the new Marvell SoCs:
> > * CN9130: 1x AP807-quad + 1x CP115 (1x embedded)
> > * CN9131: 1x AP807-quad + 2x CP115 (1x embedded + 1x modular)
> > * CN9132: 1x AP807-quad + 3x CP115 (1x embedded + 2x modular)
> > 
> > CP115 are similar to CP110 in terms of features.
> > 
> > There are three development boards based on these SoCs:
> > * CN9130-DB: comes as a single mother board (with the CP115 bundled)
> > * CN9131-DB: same as CN9130-DB with one additional modular CP115
> > * CN9132-DB: same as CN9130-DB with two additional modular CP115
> > 
> > Signed-off-by: Grzegorz Jaszczyk <jaz@semihalf.com>
> > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > ---
> >  .../bindings/arm/marvell/armada-7k-8k.txt           | 13 ++++++++++++-
> >  1 file changed, 12 insertions(+), 1 deletion(-)  
> 
> Please convert this to DT schema first.

As you wish.

> 
> > 
> > diff --git a/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.txt b/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.txt
> > index df98a9c82a8c..8eb34ca4c4f0 100644
> > --- a/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.txt
> > +++ b/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.txt
> > @@ -1,7 +1,7 @@
> >  Marvell Armada 7K/8K Platforms Device Tree Bindings
> >  ---------------------------------------------------
> >  
> > -Boards using a SoC of the Marvell Armada 7K or 8K families must carry
> > +Boards using a SoC of the Marvell Armada 7K/8K or CN913x families must carry
> >  the following root node property:
> >  
> >   - compatible, with one of the following values:
> > @@ -18,6 +18,17 @@ the following root node property:
> >     - "marvell,armada8040", "marvell,armada-ap806-quad", "marvell,armada-ap806"
> >        when the SoC being used is the Armada 8040
> >  
> > +   - "marvell,cn9130", "marvell,armada-ap807-quad", "marvell,armada-ap807"
> > +      when the SoC being used is the Armada CN9130 with no external CP.
> > +
> > +   - "marvell,cn9131", "marvell,cn9130",
> > +     "marvell,armada-ap807-quad", "marvell,armada-ap807"
> > +      when the SoC being used is the Armada CN9130 with one external CP.
> > +
> > +   - "marvell,cn9132", "marvell,cn9131", "marvell,cn9130",
> > +     "marvell,armada-ap807-quad", "marvell,armada-ap807"  
> 
> It's generally not all that useful to have all these compatibles.
> 
> > +      when the SoC being used is the Armada CN9130 with two external CPs.  
> 
> Is the number of external CPs not discoverable somewhere else in the DT?

I don't think so.

What do you suggest? Keep only the marvell,cn9130 compatible? I am not
sure having the three compatibles is actually useful but for the reader
I find it more friendly. Of course the model name will reflect the
number of external CP but from a computational point of view that's
hard to parse if needed.

> 
> > +
> >  Example:
> >  
> >  compatible = "marvell,armada7040-db", "marvell,armada7040",
> > -- 
> > 2.20.1
> >   

Thanks,
Miquèl

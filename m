Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A4FF844ABE5
	for <lists+devicetree@lfdr.de>; Tue,  9 Nov 2021 11:52:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240902AbhKIKzG convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Tue, 9 Nov 2021 05:55:06 -0500
Received: from relay1-d.mail.gandi.net ([217.70.183.193]:53267 "EHLO
        relay1-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232123AbhKIKzF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Nov 2021 05:55:05 -0500
Received: (Authenticated sender: miquel.raynal@bootlin.com)
        by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id D7424240004;
        Tue,  9 Nov 2021 10:52:16 +0000 (UTC)
Date:   Tue, 9 Nov 2021 11:52:15 +0100
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Cc:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Brian Norris <computersforpeace@gmail.com>,
        Kamal Dasu <kdasu.kdev@gmail.com>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com
Subject: Re: [PATCH 1/2] dt-bindings: mtd: brcmnand: add "no-wp" property
Message-ID: <20211109115215.5bcef0db@xps13>
In-Reply-To: <48cb0c8c-c752-0832-1e1a-836303926ed3@milecki.pl>
References: <20211103151117.18690-1-zajec5@gmail.com>
        <48cb0c8c-c752-0832-1e1a-836303926ed3@milecki.pl>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.7 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

rafal@milecki.pl wrote on Tue, 9 Nov 2021 08:49:36 +0100:

> On 03.11.2021 16:11, Rafał Miłecki wrote:
> > From: Rafał Miłecki <rafal@milecki.pl>
> > 
> > It's required to properly describe boards without connected WP pin (e.g.
> > Asus GT-AC5300).
> > 
> > Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> > ---
> >   Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml | 5 +++++
> >   1 file changed, 5 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml b/Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml
> > index dd5a64969e37..49c7860c0dad 100644
> > --- a/Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml
> > +++ b/Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml
> > @@ -111,6 +111,11 @@ properties:
> >         earlier versions of this core that include WP
> >       type: boolean  
> >   > +  no-wp:  
> > +    description:
> > +      This property marks boards with WP pin not connected to the NAND chip.
> > +    type: boolean  
> 
> I started rethinking this. Since we already hav "brcm,nand-has-wp"
> (boolean), would makes more sense:
> 1. Add "no-wp" boolean (as proposed in this patch)
> 2. Add "wp" (or similar) with [0, 1] and deprecate "brcm,nand-has-wp"

Maybe this should be a raw NAND wide property, at least in the bindings
for now: nand-wp (such as nand-rb) and this property should contain the
wp line id.

For me, brcm,nand-has-wp means that the nand wp is connected, not that
it "can be" connected. The fact that the controller has a wp pin or not
should be internal to the controller driver (different compatible or hw
version check).

Thanks,
Miquèl

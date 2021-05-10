Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8C4E63794E3
	for <lists+devicetree@lfdr.de>; Mon, 10 May 2021 19:02:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232496AbhEJRDT convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Mon, 10 May 2021 13:03:19 -0400
Received: from relay7-d.mail.gandi.net ([217.70.183.200]:53735 "EHLO
        relay7-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232494AbhEJRBg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 May 2021 13:01:36 -0400
X-Originating-IP: 90.89.138.59
Received: from xps13 (lfbn-tou-1-1325-59.w90-89.abo.wanadoo.fr [90.89.138.59])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 6EB5A20012;
        Mon, 10 May 2021 17:00:28 +0000 (UTC)
Date:   Mon, 10 May 2021 19:00:27 +0200
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        linux-mtd@lists.infradead.org,
        Naga Sureshkumar Relli <nagasure@xilinx.com>,
        Michal Simek <monstr@monstr.eu>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v2 1/5] dt-binding: mtd: nand: Document gpio-cs property
Message-ID: <20210510190027.7bf97008@xps13>
In-Reply-To: <20210510165125.GA261277@robh.at.kernel.org>
References: <20210510104051.9701-1-miquel.raynal@bootlin.com>
        <20210510104051.9701-2-miquel.raynal@bootlin.com>
        <20210510165125.GA261277@robh.at.kernel.org>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.7 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

Rob Herring <robh@kernel.org> wrote on Mon, 10 May 2021 11:51:25 -0500:

> On Mon, May 10, 2021 at 12:40:47PM +0200, Miquel Raynal wrote:
> > To reach higher capacities, arrays of chips are now pretty common.
> > Unfortunately, most of the controllers have been designed a decade ago
> > and did not all anticipate the need for several chip-selects. The new
> > cs-gpios property allows to workaround this limitation by adding as many
> > GPIO chip-select as needed.  
> 
> Subject and example have wrong property name.

True.

> > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > ---
> >  .../devicetree/bindings/mtd/nand-controller.yaml | 16 +++++++++++++++-
> >  1 file changed, 15 insertions(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/mtd/nand-controller.yaml b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
> > index 678b39952502..70a400e385b2 100644
> > --- a/Documentation/devicetree/bindings/mtd/nand-controller.yaml
> > +++ b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
> > @@ -38,6 +38,15 @@ properties:
> >  
> >    ranges: true
> >  
> > +  cs-gpios:
> > +    description:
> > +      Array of chip-select available to the controller. The first
> > +      entries are a 1:1 mapping of the available chip-select on the
> > +      NAND controller (even if they are not used). As many additional
> > +      chip-select as needed may follow and should be phandles of GPIO
> > +      lines. 'reg' entries of the NAND chip subnodes become indexes of
> > +      this array when this property is present.  
> 
> Can we put some 'maxItems' value here. I want to make the meta-schema 
> enforce that. I realize there's not really one here, but a 'should be 
> enough' value is fine. We can bump it up if needed.

Ok, I already have an example with 8 entries, we can set maxItems to 8
and see how it goes.

Please ignore v3 which was sent to fix another unrelated issue, at the
same time you reviewed v2.

> > +
> >  patternProperties:
> >    "^nand@[a-f0-9]$":
> >      type: object
> > @@ -164,14 +173,19 @@ examples:
> >      nand-controller {
> >        #address-cells = <1>;
> >        #size-cells = <0>;
> > +      gpio-cs = <0>, <&gpioA 1>; /* A single native CS is available */
> >  
> >        /* controller specific properties */
> >  
> >        nand@0 {
> > -        reg = <0>;
> > +        reg = <0>; /* Native CS */
> >          nand-use-soft-ecc-engine;
> >          nand-ecc-algo = "bch";
> >  
> >          /* controller specific properties */
> >        };
> > +
> > +      nand@1 {
> > +        reg = <1>; /* GPIO CS */
> > +      };
> >      };
> > -- 
> > 2.27.0
> >   

Thanks,
Miquèl

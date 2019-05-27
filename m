Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3775A2B477
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2019 14:09:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726150AbfE0MJd convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Mon, 27 May 2019 08:09:33 -0400
Received: from relay12.mail.gandi.net ([217.70.178.232]:57917 "EHLO
        relay12.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726115AbfE0MJd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 May 2019 08:09:33 -0400
Received: from xps13 (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr [90.88.147.134])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay12.mail.gandi.net (Postfix) with ESMTPSA id 0EBAC20000F;
        Mon, 27 May 2019 12:09:28 +0000 (UTC)
Date:   Mon, 27 May 2019 14:09:28 +0200
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Kishon Vijay Abraham I <kishon@ti.com>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Antoine Tenart <antoine.tenart@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Nadav Haklai <nadavh@marvell.com>,
        Grzegorz Jaszczyk <jaz@semihalf.com>
Subject: Re: [PATCH] dt-bindings: phy: mvebu-comphy: Update references to
 CP110 nodes
Message-ID: <20190527140928.5df3f704@xps13>
In-Reply-To: <CAL_JsqJ=gFK604Wbd0D4NN__L4ZfKDO7+j8OGh_buq06oA6deQ@mail.gmail.com>
References: <20190521143518.32416-1-miquel.raynal@bootlin.com>
        <CAL_JsqJ=gFK604Wbd0D4NN__L4ZfKDO7+j8OGh_buq06oA6deQ@mail.gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

Rob Herring <robh+dt@kernel.org> wrote on Wed, 22 May 2019 08:15:27
-0500:

> On Tue, May 21, 2019 at 9:35 AM Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> >
> > From: Grzegorz Jaszczyk <jaz@semihalf.com>
> >
> > The CP110 DT nodes references have changed, reflect these changes in
> > COMPHY documentation.  
> 
> This change isn't necessary. The examples are just examples. They
> don't have to match anything exactly.

Ok then, let's drop it.

> 
> >
> > Signed-off-by: Grzegorz Jaszczyk <jaz@semihalf.com>
> > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > ---
> >  .../devicetree/bindings/phy/phy-mvebu-comphy.txt          | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/phy/phy-mvebu-comphy.txt b/Documentation/devicetree/bindings/phy/phy-mvebu-comphy.txt
> > index cf2cd86db267..af2402c18513 100644
> > --- a/Documentation/devicetree/bindings/phy/phy-mvebu-comphy.txt
> > +++ b/Documentation/devicetree/bindings/phy/phy-mvebu-comphy.txt
> > @@ -35,19 +35,19 @@ Required properties (child nodes):
> >
> >  Examples:
> >
> > -       cpm_comphy: phy@120000 {
> > +       CP110_LABEL(comphy): phy@120000 {  
> 
> Also, as we convert bindings to schema, the examples are compiled and
> this won't without CP110_LABEL defined.

I didn't thought about the YAML schema conversion issue (IIRC there are
already occurrences of such macro in the bindings).

Thanks,
Miquèl

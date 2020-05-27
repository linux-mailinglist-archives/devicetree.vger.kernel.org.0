Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 18C4B1E3C9C
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2020 10:51:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388190AbgE0Iuz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 May 2020 04:50:55 -0400
Received: from bhuna.collabora.co.uk ([46.235.227.227]:40174 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388120AbgE0Iuz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 May 2020 04:50:55 -0400
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: bbrezillon)
        by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 868F22A3026;
        Wed, 27 May 2020 09:50:53 +0100 (BST)
Date:   Wed, 27 May 2020 10:50:50 +0200
From:   Boris Brezillon <boris.brezillon@collabora.com>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        <linux-mtd@lists.infradead.org>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        <devicetree@vger.kernel.org>
Subject: Re: [RESEND v5 09/21] mtd: rawnand: Create a new enumeration to
 describe properly ECC types
Message-ID: <20200527105050.0f171724@collabora.com>
In-Reply-To: <20200527104430.187e5feb@collabora.com>
References: <20200526195633.11543-1-miquel.raynal@bootlin.com>
        <20200526195633.11543-10-miquel.raynal@bootlin.com>
        <20200527005928.39c549e2@collabora.com>
        <20200527103356.56e145a9@xps13>
        <20200527104430.187e5feb@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 27 May 2020 10:44:30 +0200
Boris Brezillon <boris.brezillon@collabora.com> wrote:

> On Wed, 27 May 2020 10:33:56 +0200
> Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> 
> > Boris Brezillon <boris.brezillon@collabora.com> wrote on Wed, 27 May
> > 2020 00:59:28 +0200:
> >   
> > > On Tue, 26 May 2020 21:56:21 +0200
> > > Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> > >     
> > > > Now that the misleading mix between ECC engine type and OOB placement
> > > > has been addressed, add a new enumeration to properly define ECC types
> > > > (also called provider or mode).
> > > > 
> > > > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > > > Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
> > > > ---
> > > >  drivers/mtd/nand/raw/nand_base.c |  7 +++++++
> > > >  include/linux/mtd/rawnand.h      | 16 ++++++++++++++++
> > > >  2 files changed, 23 insertions(+)
> > > > 
> > > > diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
> > > > index 515cd4681660..5c6ab5b93270 100644
> > > > --- a/drivers/mtd/nand/raw/nand_base.c
> > > > +++ b/drivers/mtd/nand/raw/nand_base.c
> > > > @@ -5018,6 +5018,13 @@ static const char * const nand_ecc_modes[] = {
> > > >  	[NAND_ECC_ON_DIE]	= "on-die",
> > > >  };
> > > >  
> > > > +static const char * const nand_ecc_engine_providers[] = {      
> > > 
> > > This table is not used here, are you sure it should be introduced now?
> > >     
> > > > +	[NAND_ECC_ENGINE_NONE] = "none",
> > > > +	[NAND_ECC_ENGINE_SOFT] = "soft",
> > > > +	[NAND_ECC_ENGINE_CONTROLLER] = "hw",      
> > > 
> > > 					^ "on-controller" ?    
> > 
> > This would break DT backward compatibility, I am afraid I cannot do
> > that.  
> 
> You can always keep a translation table for the old prop
> (nand-ecc-mode) and have a new one for the new prop
> (nand-ecc-engine-type). But maybe you're not introducing a new property
> in this series, in which case the translation table here is just fine.

BTW, this DT prop is more a way to select among several ECC engines when
you have a choice, so maybe it should be named
nand-use-ecc-engine-type/nand-select-ecc-engine-type instead of
nand-ecc-provider/nand-ecc-engine-type.

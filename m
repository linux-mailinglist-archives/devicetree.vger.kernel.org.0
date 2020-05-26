Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0DAE71E33A1
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2020 01:22:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389261AbgEZXV5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 May 2020 19:21:57 -0400
Received: from bhuna.collabora.co.uk ([46.235.227.227]:35544 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389206AbgEZXV5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 May 2020 19:21:57 -0400
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: bbrezillon)
        by bhuna.collabora.co.uk (Postfix) with ESMTPSA id DE40D2A3151;
        Wed, 27 May 2020 00:21:54 +0100 (BST)
Date:   Wed, 27 May 2020 01:21:48 +0200
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
Message-ID: <20200527012148.5b68ce4e@collabora.com>
In-Reply-To: <20200527005518.2d780ecc@collabora.com>
References: <20200526195633.11543-1-miquel.raynal@bootlin.com>
        <20200526195633.11543-10-miquel.raynal@bootlin.com>
        <20200527005518.2d780ecc@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 27 May 2020 00:55:18 +0200
Boris Brezillon <boris.brezillon@collabora.com> wrote:

> On Tue, 26 May 2020 21:56:21 +0200
> Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> 
> > Now that the misleading mix between ECC engine type and OOB placement
> > has been addressed, add a new enumeration to properly define ECC types
> > (also called provider or mode).  
> 
> Let's pick a name and stick to it. I think "ECC provider type" or
> "ECC engine type" are good names.

Okay, I think I remember now where the 'ECC provider' concept comes
from. IIRC, the property will be used to select one ECC engine among
possibly more than one choice: there are systems with both
on-controller and on-die ECC engines, and you can always decide to use
the SW implementation of course.

> 
> > 
> > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
> > ---
> >  drivers/mtd/nand/raw/nand_base.c |  7 +++++++
> >  include/linux/mtd/rawnand.h      | 16 ++++++++++++++++
> >  2 files changed, 23 insertions(+)
> > 
> > diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
> > index 515cd4681660..5c6ab5b93270 100644
> > --- a/drivers/mtd/nand/raw/nand_base.c
> > +++ b/drivers/mtd/nand/raw/nand_base.c
> > @@ -5018,6 +5018,13 @@ static const char * const nand_ecc_modes[] = {
> >  	[NAND_ECC_ON_DIE]	= "on-die",
> >  };
> >  
> > +static const char * const nand_ecc_engine_providers[] = {  
> 
> I'd rename that one nand_ecc_engine_types or nand_ecc_provider_types.
> 
> > +	[NAND_ECC_ENGINE_NONE] = "none",
> > +	[NAND_ECC_ENGINE_SOFT] = "soft",
> > +	[NAND_ECC_ENGINE_CONTROLLER] = "hw",
> > +	[NAND_ECC_ENGINE_ON_DIE] = "on-die",
> > +};
> > +
> >  static const char * const nand_ecc_placement[] = {
> >  	[NAND_ECC_PLACEMENT_INTERLEAVED] = "interleaved",
> >  };
> > diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
> > index dc909fb977c7..a2078c5f3d21 100644
> > --- a/include/linux/mtd/rawnand.h
> > +++ b/include/linux/mtd/rawnand.h
> > @@ -92,6 +92,22 @@ enum nand_ecc_mode {
> >  	NAND_ECC_ON_DIE,
> >  };
> >  
> > +/**
> > + * enum nand_ecc_engine_type - NAND ECC engine type/provider
> > + * @NAND_ECC_ENGINE_INVALID: Invalid value
> > + * @NAND_ECC_ENGINE_NONE: No ECC correction
> > + * @NAND_ECC_ENGINE_SOFT: Software ECC correction
> > + * @NAND_ECC_ENGINE_CONTROLLER: Hardware controller ECC correction
> > + * @NAND_ECC_ENGINE_ON_DIE: On chip hardware ECC correction
> > + */
> > +enum nand_ecc_engine_type {  
> 
> Looks like you went for ecc_engine_type here, so let's stick to that.
> 
> > +	NAND_ECC_ENGINE_INVALID,  
> 
> NAND_ECC_ENGINE_TYPE_xxx
> 
> > +	NAND_ECC_ENGINE_NONE,  
> 
> Do we really need a value for NONE? I'd expect the engine type to be
> applicable to NAND that have some sort of ECC engine connected to them.
> 
> > +	NAND_ECC_ENGINE_SOFT,
> > +	NAND_ECC_ENGINE_CONTROLLER,
> > +	NAND_ECC_ENGINE_ON_DIE,
> > +};
> > +
> >  /**
> >   * enum nand_ecc_placement - NAND ECC placement
> >   * @NAND_ECC_PLACEMENT_FREE: The driver can decide where to put ECC bytes.  
> 


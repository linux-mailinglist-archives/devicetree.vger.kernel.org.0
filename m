Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2C2ED1CDF7C
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2020 17:50:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730665AbgEKPuP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 May 2020 11:50:15 -0400
Received: from relay10.mail.gandi.net ([217.70.178.230]:47755 "EHLO
        relay10.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730643AbgEKPuP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 May 2020 11:50:15 -0400
Received: from xps13 (unknown [91.224.148.103])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay10.mail.gandi.net (Postfix) with ESMTPSA id E2FD924000A;
        Mon, 11 May 2020 15:50:08 +0000 (UTC)
Date:   Mon, 11 May 2020 17:50:07 +0200
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Boris Brezillon <boris.brezillon@collabora.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        <devicetree@vger.kernel.org>, Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        <linux-mtd@lists.infradead.org>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Michal Simek <monstr@monstr.eu>,
        Naga Sureshkumar Relli <nagasure@xilinx.com>
Subject: Re: [PATCH v4 7/8] mtd: rawnand: arasan: Add new Arasan NAND
 controller
Message-ID: <20200511175007.5002e9ba@xps13>
In-Reply-To: <20200511174614.38058ec7@xps13>
References: <20200508171339.8052-1-miquel.raynal@bootlin.com>
        <20200508171339.8052-8-miquel.raynal@bootlin.com>
        <20200510090314.10426b6e@collabora.com>
        <20200511170729.4766eeaa@xps13>
        <20200511173235.2e2fe467@collabora.com>
        <20200511174614.38058ec7@xps13>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Miquel Raynal <miquel.raynal@bootlin.com> wrote on Mon, 11 May 2020
17:46:14 +0200:

> Hi Boris,
> 
> Boris Brezillon <boris.brezillon@collabora.com> wrote on Mon, 11 May
> 2020 17:32:35 +0200:
> 
> > On Mon, 11 May 2020 17:07:29 +0200
> > Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> >   
> > > Hi Boris,
> > > 
> > > Boris Brezillon <boris.brezillon@collabora.com> wrote on Sun, 10 May
> > > 2020 09:03:14 +0200:
> > >     
> > > > On Fri,  8 May 2020 19:13:38 +0200
> > > > Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> > > >       
> > > > > +static int anfc_exec_op(struct nand_chip *chip,
> > > > > +			const struct nand_operation *op,
> > > > > +			bool check_only)
> > > > > +{
> > > > > +	int ret;
> > > > > +
> > > > > +	if (check_only)
> > > > > +		return nand_op_parser_exec_op(chip, &anfc_op_parser, op,
> > > > > +					      check_only);        
> > > > 
> > > > You should also check the DATA_IN/OUT size here ^.      
> > > 
> > > Here is my proposal:
> > > 
> > > ---8<---
> > > 
> > > +static int anfc_check_op(struct nand_chip *chip,
> > > +                        const struct nand_operation *op)
> > > +{
> > > +       int op_id;
> > > +
> > > +       /*
> > > +        * The controller abstracts all the NAND operations and do not support
> > > +        * data only operations.    
> > 
> > 	* FIXME: The nand_op_parser framework should be extended to
> > 	* support custom checks on DATA instructions.  
> 
> Oh you really want to extend the core for that? I thought having a
> "check_op" helper like this was enough, as it gives enough freedom to
> the controller driver to return all the corner cases that are not very
> generic. See below for more details.
> 
> >   
> > > +        */    
> > 
> > You also didn't mention the fact that the number of data cycles should
> > be aligned on 4 bytes, and that the controller might read/write more
> > than requested when that's not the case. But maybe you have that
> > comment elsewhere in the code (where you do the round_up(4)?).  
> 
> Precisely, for me the previous check is not a problem from the core
> perspective (hence not deserving a FIXME) because the driver do not lie
> at any moment. Conversely, the driver limitations of what is supported
> and what is not is clear and accurate.
> 
> However for this round_up() operation you are talking about, this is an
> issue as we have currently no mean to say to the core that something
> different than ordered was actually requested by the driver, so there
> is lying involved and this deserves a FIXME.

Actually adding an exec_op parameter saying "this is the absolute
maximum that I can do" is not that invasive and would apply to many
drivers too.

Let's add these three FIXMEs for now.

> > 
> > 	/*
> > 	 * Number of DATA cycles must be aligned on 4, that means the
> > 	 * controller might read/write more than requested This is
> > 	 * harmless most of the time as extra DATA are discarded in
> > 	 * the write path and read pointer adjusted in the read path.
> > 	 * FIXME: The core should mark operations where reading/writing
> > 	 * more is allowed so the exec_op() implementation can take
> > 	 * the right decision when the alignment constraint is not met:
> > 	 * adjust the number of DATA cycles when it's allowed, and
> > 	 * reject the operation otherwise.
> > 	 */  
> 
> I want to put this comment where the round_up takes place.
> 
> >   
> > > +       for (op_id = 0; op_id < op->ninstrs; op_id++) {
> > > +               instr = &op->instrs[op_id];
> > > +
> > > +               switch (instr->type) {
> > > +               case NAND_OP_ADDR_INSTR:
> > > +                       if (instr->ctx.addr.naddrs > ANFC_MAX_ADDR_CYC)
> > > +                               return -ENOTSUPP;
> > > +                       break;
> > > +               case NAND_OP_DATA_IN_INSTR:
> > > +               case NAND_OP_DATA_OUT_INSTR:
> > > +                       if (instr->ctx.data.len > ANFC_MAX_CHUNK_SIZE)
> > > +                               return -ENOTSUPP;
> > > +                       break;
> > > +               default:
> > > +               }
> > > +       }
> > > +
> > > +       /*
> > > +        * The controller does not allow to proceed with a CMD+DATA_IN cycle
> > > +        * manually on the bus by reading data from the data register. Instead,
> > > +        * the controller abstract a status read operation with its own status
> > > +        * register after ordering a read status operation. Hence, we cannot
> > > +        * support any CMD+DATA_IN operation other than a READ STATUS.    
> > 
> > 	* FIXME: The nand_op_parser() framework should be extended to
> > 	* describe fixed patterns instead of open-coding this check
> > 	* here.  
> 
> For this one, I am not against a FIXME as this is something that might
> be useful for other drivers too.
> 
> >   
> > > +        */
> > > +       if (op->ninstrs == 2 &&
> > > +           op->instrs[0].type == NAND_OP_CMD_INSTR &&
> > > +           op->instrs[0].ctx.cmd.opcode != NAND_CMD_STATUS &&
> > > +           op->instrs[1].type == NAND_OP_DATA_IN_INSTR)
> > > +               return -ENOTSUPP;
> > > +
> > > +       return nand_op_parser_exec_op(chip, &anfc_op_parser, op,
> > > +                                     check_only);
> > > +}
> > > +
> > >  static int anfc_exec_op(struct nand_chip *chip,
> > >                         const struct nand_operation *op,
> > >                         bool check_only)
> > > @@ -774,8 +813,7 @@ static int anfc_exec_op(struct nand_chip *chip,
> > >         int ret;
> > >  
> > >         if (check_only)
> > > -               return nand_op_parser_exec_op(chip, &anfc_op_parser, op,
> > > -                                             check_only);
> > > +               return anfc_check_op(chip, op);
> > >  
> > >         ret = anfc_select_target(chip, op->cs);
> > >         if (ret)
> > >     
> > > --->8---      
> > > 
> > > What do you think?    
> >   
> 
> 


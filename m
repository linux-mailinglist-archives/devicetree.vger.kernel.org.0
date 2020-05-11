Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6596C1CDE21
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2020 17:07:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729442AbgEKPHh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 May 2020 11:07:37 -0400
Received: from relay12.mail.gandi.net ([217.70.178.232]:51179 "EHLO
        relay12.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728090AbgEKPHh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 May 2020 11:07:37 -0400
Received: from xps13 (unknown [91.224.148.103])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay12.mail.gandi.net (Postfix) with ESMTPSA id 0EA6E200014;
        Mon, 11 May 2020 15:07:31 +0000 (UTC)
Date:   Mon, 11 May 2020 17:07:29 +0200
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
Message-ID: <20200511170729.4766eeaa@xps13>
In-Reply-To: <20200510090314.10426b6e@collabora.com>
References: <20200508171339.8052-1-miquel.raynal@bootlin.com>
        <20200508171339.8052-8-miquel.raynal@bootlin.com>
        <20200510090314.10426b6e@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Boris,

Boris Brezillon <boris.brezillon@collabora.com> wrote on Sun, 10 May
2020 09:03:14 +0200:

> On Fri,  8 May 2020 19:13:38 +0200
> Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> 
> > +static int anfc_exec_op(struct nand_chip *chip,
> > +			const struct nand_operation *op,
> > +			bool check_only)
> > +{
> > +	int ret;
> > +
> > +	if (check_only)
> > +		return nand_op_parser_exec_op(chip, &anfc_op_parser, op,
> > +					      check_only);  
> 
> You should also check the DATA_IN/OUT size here ^.

Here is my proposal:

---8<---

+static int anfc_check_op(struct nand_chip *chip,
+                        const struct nand_operation *op)
+{
+       int op_id;
+
+       /*
+        * The controller abstracts all the NAND operations and do not support
+        * data only operations.
+        */
+       for (op_id = 0; op_id < op->ninstrs; op_id++) {
+               instr = &op->instrs[op_id];
+
+               switch (instr->type) {
+               case NAND_OP_ADDR_INSTR:
+                       if (instr->ctx.addr.naddrs > ANFC_MAX_ADDR_CYC)
+                               return -ENOTSUPP;
+                       break;
+               case NAND_OP_DATA_IN_INSTR:
+               case NAND_OP_DATA_OUT_INSTR:
+                       if (instr->ctx.data.len > ANFC_MAX_CHUNK_SIZE)
+                               return -ENOTSUPP;
+                       break;
+               default:
+               }
+       }
+
+       /*
+        * The controller does not allow to proceed with a CMD+DATA_IN cycle
+        * manually on the bus by reading data from the data register. Instead,
+        * the controller abstract a status read operation with its own status
+        * register after ordering a read status operation. Hence, we cannot
+        * support any CMD+DATA_IN operation other than a READ STATUS.
+        */
+       if (op->ninstrs == 2 &&
+           op->instrs[0].type == NAND_OP_CMD_INSTR &&
+           op->instrs[0].ctx.cmd.opcode != NAND_CMD_STATUS &&
+           op->instrs[1].type == NAND_OP_DATA_IN_INSTR)
+               return -ENOTSUPP;
+
+       return nand_op_parser_exec_op(chip, &anfc_op_parser, op,
+                                     check_only);
+}
+
 static int anfc_exec_op(struct nand_chip *chip,
                        const struct nand_operation *op,
                        bool check_only)
@@ -774,8 +813,7 @@ static int anfc_exec_op(struct nand_chip *chip,
        int ret;
 
        if (check_only)
-               return nand_op_parser_exec_op(chip, &anfc_op_parser, op,
-                                             check_only);
+               return anfc_check_op(chip, op);
 
        ret = anfc_select_target(chip, op->cs);
        if (ret)

--->8---

What do you think?

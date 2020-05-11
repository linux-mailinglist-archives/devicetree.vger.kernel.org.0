Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 641821CE02E
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2020 18:14:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730553AbgEKQOq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 May 2020 12:14:46 -0400
Received: from relay1-d.mail.gandi.net ([217.70.183.193]:23659 "EHLO
        relay1-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726687AbgEKQOq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 May 2020 12:14:46 -0400
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id E8D2D24000A;
        Mon, 11 May 2020 16:14:40 +0000 (UTC)
Date:   Mon, 11 May 2020 18:14:39 +0200
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
Message-ID: <20200511181439.0c7b2768@xps13>
In-Reply-To: <20200510090230.1ba6f6d7@collabora.com>
References: <20200508171339.8052-1-miquel.raynal@bootlin.com>
        <20200508171339.8052-8-miquel.raynal@bootlin.com>
        <20200510090230.1ba6f6d7@collabora.com>
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
2020 09:02:30 +0200:

> On Fri,  8 May 2020 19:13:38 +0200
> Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> 
> > +static int anfc_len_to_steps(struct nand_chip *chip, unsigned int len)
> > +{
> > +	unsigned int steps = 1, pktsize = len;
> > +
> > +	while (pktsize > ANFC_MAX_PKT_SIZE) {
> > +		steps *= 2;
> > +		pktsize = DIV_ROUND_UP(len, steps);
> > +	}  
> 
> 
> Same here, you shouldn't have a round_up() but instead complain if
> "len != pkt_size * steps"
> 
> 	if (len % 4)
> 		return -ENOTSUPP;
> 
> 	if (len < ANFC_MAX_PKT_SIZE)
> 		return len;
> 
> 	for (steps = 2; steps < ANFC_MAX_STEPS; steps *= 2) {
> 		pkt_size = len / steps;
> 		if (pkt_size <= ANFC_MAX_PKT_SIZE)
> 			break;
> 	}
> 
> 	if (pkt_size * steps != len)
> 		return -ENOTSUPP;
> 
> 	return pkt_size;
> 
> > +
> > +	if (steps > ANFC_MAX_STEPS)
> > +		return -ENOTSUPP;
> > +
> > +	return steps;
> > +}  

I took the logic of the above proposal and extended the helper to be
"anfc_pkt_len_config", taking two pointers as argument: *steps and
*pktsize, which will be updated in case of success. Otherwise
this function returns an error and can be added to the "check_op" path
instead of only failing at execution time.

---8<---

+static int anfc_pkt_len_config(unsigned int len, unsigned int *steps,
+                              unsigned int *pktsize)
+{
+       unsigned int nb, sz;
+
+       for (nb = 1; nb < ANFC_MAX_STEPS; nb *= 2) {
+               sz = len / nb;
+               if (sz <= ANFC_MAX_PKT_SIZE)
+                       break;
+       }
+
+       if (sz * nb != len)
+               return -ENOTSUPP;
+
+       if (steps)
+               *steps = nb;
+
+       if (pktsize)
+               *pktsize = sz;
+
+       return 0;
+}

--->8---

And then, in anfc_check_op():

+               case NAND_OP_DATA_IN_INSTR:
+               case NAND_OP_DATA_OUT_INSTR:
+                       if (instr->ctx.data.len > ANFC_MAX_CHUNK_SIZE)
+                               return -ENOTSUPP;
+
+                       if (anfc_pkt_len_config(instr->ctx.data.len NULL, NULL))
+                               return -ENOTSUPP;
+
+                       break;

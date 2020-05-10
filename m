Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3BCE01CC97B
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2020 10:36:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728950AbgEJIfx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 May 2020 04:35:53 -0400
Received: from relay9-d.mail.gandi.net ([217.70.183.199]:47661 "EHLO
        relay9-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728815AbgEJIfx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 May 2020 04:35:53 -0400
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 16C74FF802;
        Sun, 10 May 2020 08:35:48 +0000 (UTC)
Date:   Sun, 10 May 2020 10:35:47 +0200
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
Message-ID: <20200510103547.7399eba3@xps13>
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

This is not possible, we need unaligned accesses for NAND detection.

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

The rest looks fine, I will change it and also add these checks in
->exec_op() check_nonly path.

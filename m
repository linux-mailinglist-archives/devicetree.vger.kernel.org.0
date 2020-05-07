Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 46A811C8E1E
	for <lists+devicetree@lfdr.de>; Thu,  7 May 2020 16:13:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726627AbgEGOMT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 May 2020 10:12:19 -0400
Received: from relay12.mail.gandi.net ([217.70.178.232]:39769 "EHLO
        relay12.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725947AbgEGOMS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 May 2020 10:12:18 -0400
Received: from xps13 (unknown [91.224.148.103])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay12.mail.gandi.net (Postfix) with ESMTPSA id 0FDB2200004;
        Thu,  7 May 2020 14:12:13 +0000 (UTC)
Date:   Thu, 7 May 2020 16:12:12 +0200
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
Subject: Re: [PATCH v3 4/8] mtd: rawnand: Add nand_extract_bits()
Message-ID: <20200507161212.40551eb5@xps13>
In-Reply-To: <20200507134959.38bbcdc4@collabora.com>
References: <20200507110034.14736-1-miquel.raynal@bootlin.com>
        <20200507110034.14736-5-miquel.raynal@bootlin.com>
        <20200507134959.38bbcdc4@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Boris Brezillon <boris.brezillon@collabora.com> wrote on Thu, 7 May
2020 13:49:59 +0200:

> On Thu,  7 May 2020 13:00:30 +0200
> Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> 
> > There are cases where ECC bytes are not byte-aligned. Indeed, BCH
> > implies using a number of ECC bits, which are not always a multiple of
> > 8. We then need a helper like nand_extract_bits() to extract these
> > syndromes from a buffer.  
> 
> Do you plan to send a patch to make the GPMI driver use this helper?

I will have a look at it.

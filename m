Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9EEB61C8E08
	for <lists+devicetree@lfdr.de>; Thu,  7 May 2020 16:11:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726661AbgEGOLS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 May 2020 10:11:18 -0400
Received: from relay1-d.mail.gandi.net ([217.70.183.193]:3827 "EHLO
        relay1-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728479AbgEGOLR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 May 2020 10:11:17 -0400
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 59984240012;
        Thu,  7 May 2020 14:11:15 +0000 (UTC)
Date:   Thu, 7 May 2020 16:11:14 +0200
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
        Naga Sureshkumar Relli <nagasure@xilinx.com>,
        Ivan Djelic <ivan.djelic@parrot.com>
Subject: Re: [PATCH v3 1/8] lib/bch: Rework a little bit the exported
 function names
Message-ID: <20200507161114.0dd2ff4e@xps13>
In-Reply-To: <20200507134822.21c965b3@collabora.com>
References: <20200507110034.14736-1-miquel.raynal@bootlin.com>
        <20200507110034.14736-2-miquel.raynal@bootlin.com>
        <20200507134822.21c965b3@collabora.com>
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
2020 13:48:22 +0200:

> On Thu,  7 May 2020 13:00:27 +0200
> Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> 
> > There are four exported functions, all suffixed by _bch, which is clearly not the norm. Before exporting more functions, let's rename them by prefixing them with bch_ instead.
> >   
> 
> Oops. Missing line wrapping here :-). Also, you don't seem to export new

I might have ignored a checkpatch.pl warning thinking it was false
positive :p

> functions in this series, so maybe drop that part of the explanation.
> Sounds good to me otherwise, so:

Oh right, I dropped this patch right before sending the series as it
was not needed, I forgot I mentioned it here.

> 
> Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
> 


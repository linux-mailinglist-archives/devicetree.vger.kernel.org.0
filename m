Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 92A713913D6
	for <lists+devicetree@lfdr.de>; Wed, 26 May 2021 11:34:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233134AbhEZJgC convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Wed, 26 May 2021 05:36:02 -0400
Received: from relay3-d.mail.gandi.net ([217.70.183.195]:33411 "EHLO
        relay3-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233109AbhEZJgC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 May 2021 05:36:02 -0400
Received: (Authenticated sender: miquel.raynal@bootlin.com)
        by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 66EA96000D;
        Wed, 26 May 2021 09:34:28 +0000 (UTC)
Date:   Wed, 26 May 2021 11:34:27 +0200
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Cc:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        linux-mtd@lists.infradead.org,
        Naga Sureshkumar Relli <nagasure@xilinx.com>,
        Michal Simek <monstr@monstr.eu>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v2 2/5] mtd: rawnand: Move struct gpio_desc declaration
 to the top
Message-ID: <20210526113427.77533069@xps13>
In-Reply-To: <20210526090334.181225-1-miquel.raynal@bootlin.com>
References: <20210510104051.9701-3-miquel.raynal@bootlin.com>
        <20210526090334.181225-1-miquel.raynal@bootlin.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.7 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Miquel,

Miquel Raynal <miquel.raynal@bootlin.com> wrote on Wed, 26 May 2021
11:03:34 +0200:

> On Mon, 2021-05-10 at 10:40:48 UTC, Miquel Raynal wrote:
> > The struct gpio_desc is declared in the middle of the rawnand.h header,
> > right before the first function using it (nand_gpio_waitrdy). Before
> > adding a new function and to make it clear: move the declaration to the
> > top of the file.
> > 
> > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>  
> 
> Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next.
> 
> Miquel

FYI, due to an error in the headers of this series, patchwork/lore got
confused between v2 and v3. This versions is not the one I should have
applied. I just dropped it, will resend v3 and apply it immediately.

Thanks,
Miquèl

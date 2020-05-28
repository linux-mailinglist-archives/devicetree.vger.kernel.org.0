Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4F0C61E6478
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2020 16:49:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728599AbgE1Otb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 May 2020 10:49:31 -0400
Received: from relay6-d.mail.gandi.net ([217.70.183.198]:33229 "EHLO
        relay6-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728598AbgE1Ota (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 May 2020 10:49:30 -0400
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 6AE4FC0007;
        Thu, 28 May 2020 14:49:27 +0000 (UTC)
Date:   Thu, 28 May 2020 16:49:26 +0200
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Boris Brezillon <boris.brezillon@collabora.com>
Cc:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        <linux-mtd@lists.infradead.org>, Rob Herring <robh+dt@kernel.org>,
        <devicetree@vger.kernel.org>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Paul Cercueil <paul@crapouillou.net>,
        Chuanhong Guo <gch981213@gmail.com>,
        Weijie Gao <weijie.gao@mediatek.com>,
        <linux-arm-kernel@lists.infradead.org>,
        Mason Yang <masonccyang@mxic.com.tw>,
        Julien Su <juliensu@mxic.com.tw>
Subject: Re: [PATCH v6 16/18] mtd: nand: Convert generic NAND bits to use
 the ECC framework
Message-ID: <20200528164926.3b99f848@xps13>
In-Reply-To: <20200528163907.6539e2a1@collabora.com>
References: <20200528113113.9166-1-miquel.raynal@bootlin.com>
        <20200528113113.9166-17-miquel.raynal@bootlin.com>
        <20200528163907.6539e2a1@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Boris Brezillon <boris.brezillon@collabora.com> wrote on Thu, 28 May
2020 16:39:07 +0200:

> On Thu, 28 May 2020 13:31:11 +0200
> Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> 
> > Embed a generic NAND ECC high-level object in the nand_device
> > structure to carry all the ECC engine configuration/data. Adapt the
> > raw NAND and SPI-NAND cores to fit the change.
> > 
> > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > ---
> >  drivers/mtd/nand/Kconfig                     |  1 +
> >  drivers/mtd/nand/raw/atmel/nand-controller.c |  9 +++--
> >  drivers/mtd/nand/raw/brcmnand/brcmnand.c     |  7 ++--
> >  drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c   | 12 +++---
> >  drivers/mtd/nand/raw/marvell_nand.c          |  7 ++--
> >  drivers/mtd/nand/raw/mtk_nand.c              |  4 +-
> >  drivers/mtd/nand/raw/nand_base.c             | 25 ++++++------
> >  drivers/mtd/nand/raw/nand_esmt.c             | 11 +++---
> >  drivers/mtd/nand/raw/nand_hynix.c            | 41 ++++++++++----------
> >  drivers/mtd/nand/raw/nand_jedec.c            |  4 +-
> >  drivers/mtd/nand/raw/nand_micron.c           | 14 ++++---
> >  drivers/mtd/nand/raw/nand_onfi.c             |  8 ++--
> >  drivers/mtd/nand/raw/nand_samsung.c          | 19 ++++-----
> >  drivers/mtd/nand/raw/nand_toshiba.c          | 11 +++---
> >  drivers/mtd/nand/raw/sunxi_nand.c            |  5 ++-
> >  drivers/mtd/nand/raw/tegra_nand.c            |  9 +++--
> >  drivers/mtd/nand/spi/core.c                  |  8 ++--
> >  drivers/mtd/nand/spi/macronix.c              |  6 +--
> >  drivers/mtd/nand/spi/toshiba.c               |  6 +--
> >  include/linux/mtd/nand.h                     |  8 ++--
> >  20 files changed, 115 insertions(+), 100 deletions(-)
> > 
> > diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
> > index a4478ffa279d..3327d8539a73 100644
> > --- a/drivers/mtd/nand/Kconfig
> > +++ b/drivers/mtd/nand/Kconfig
> > @@ -13,6 +13,7 @@ menu "ECC engine support"
> >  
> >  config MTD_NAND_ECC
> >  	bool
> > +	select MTD_NAND_CORE  
> 
> This select looks suspicious. Shouldn't it be a depends on, and more
> importantly, I think it should be part of patch 15.

Wouldn't we break a lot of users by using depends on?

Or maybe we can turn it on by default?

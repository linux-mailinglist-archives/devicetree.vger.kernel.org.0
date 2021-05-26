Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9C29A391174
	for <lists+devicetree@lfdr.de>; Wed, 26 May 2021 09:41:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232964AbhEZHnO convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Wed, 26 May 2021 03:43:14 -0400
Received: from relay6-d.mail.gandi.net ([217.70.183.198]:44161 "EHLO
        relay6-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232617AbhEZHnM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 May 2021 03:43:12 -0400
Received: (Authenticated sender: miquel.raynal@bootlin.com)
        by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 80CFDC0012;
        Wed, 26 May 2021 07:41:37 +0000 (UTC)
Date:   Wed, 26 May 2021 09:41:36 +0200
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Han Xu <han.xu@nxp.com>
Cc:     Sean Nyekjaer <sean@geanix.com>, richard@nod.at, vigneshr@ti.com,
        robh+dt@kernel.org, linux-mtd@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] mtd: nand: raw: gpmi: new bch geometry settings
Message-ID: <20210526094136.279976a6@xps13>
In-Reply-To: <20210525191308.jlxqvy7khptbuj4z@umbrella>
References: <20210522205136.19465-1-han.xu@nxp.com>
        <13c975bc-b37b-8708-9ac7-acdc62ef7108@geanix.com>
        <20210525191308.jlxqvy7khptbuj4z@umbrella>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.7 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Han,

Han Xu <han.xu@nxp.com> wrote on Tue, 25 May 2021 14:13:08 -0500:

> On 21/05/23 07:44PM, Sean Nyekjaer wrote:
> > On 22/05/2021 22.51, Han Xu wrote:  
> > > The code change updates the gpmi driver bch geometry settings, the NAND
> > > chips required minimum ecc strength and step size will be the default
> > > value. It also proposes a new way to set bch geometry for large oob NAND
> > > and provides an option to keep the legacy bch geometry setting for
> > > backward compatibility.  
> > 
> > This will break all existing devicetree's. (this happened to us with the same style already merged u-boot patch)
> >   
> > > 
> > > - For the legacy bch geometry settings
> > > The driver uses legacy bch geometry settings if explicitly enabled it in
> > > DT with fsl, legacy-bch-geometry flag, or the NAND chips are too old
> > > that do NOT provide any required ecc info.  
> > 
> > NAND's are providing the minimum required ecc, the now legacy method
> > actually gives more ecc bits and quite cheap when using hw ecc.
> >   
> > > 
> > > The legacy_set_geometry() sets the data chunk size(step_size) larger
> > > than oob size to make sure BBM locates in data chunk, then set the
> > > maximum ecc stength oob can hold. It always use unbalanced ECC layout,
> > > which ecc0 will cover both meta and data0 chunk.
> > > 
> > > This algorithm can NOT provide strong enough ecc for some NAND chips,
> > > such as some 8K+744 MLC NAND. We still leave it here just for backward
> > > compatibility and als for some quite old version NAND chips support. It
> > > should be en/disabled in both u-boot and kernel at the same time.
> > > 
> > > - For the large oob bch geometry settings
> > > This type of setting will be used for NAND chips, which oob size is
> > > larger than 1024B OR NAND required step size is small than oob size,
> > > the general idea is,
> > > 
> > >     1.Try all ECC strength from the minimum value required by NAND chip
> > >       to the maximum one that works, any ECC makes the BBM locate in
> > >       data chunk can be eligible.
> > > 
> > >     2.If none of them works, using separate ECC for meta, which will add
> > >       one extra ecc with the same ECC strength as other data chunks.
> > >       This extra ECC can guarantee BBM located in data chunk, also we
> > >       need to check if oob can afford it.
> > > 
> > > - For all other common cases
> > > set the bch geometry by chip required strength and step size, which uses
> > > the minimum ecc strength chip required.
> > > 
> > > Signed-off-by: Han Xu <han.xu@nxp.com>  
> > 
> > One further point, u-boot older than v2020.04 will not be aligned with the way ecc bits is
> > calculated with this patch applied(without the legacy option set).
> > 
> > It's quite a mess :/
> > I would recommend to use the legacy mode as default, and add the new style as "modern" option.
> > (Also in u-boot)
> > 
> > /Sean  
> 
> 
> Hi Sean,
> 
> I know this change brings mess but the legacy way is wrong. The way it determine
> the data chunk size is arbitrary,

Yes, that's always the case: all default choices are arbitrary in the
Linux kernel, there is actually a lot of logic provided by the core to
handle that, unless the user requires something specific.

> take any 8K + 448 (not 744, typo in previous
> comments) Micron NAND chips as example, the legacy way can only provide 16bit
> ecc since data chunk size is set to 512B, but 24b/1K is required by NAND chips.

This means a strength of 32 bits per kilobyte of data vs 24 bits per
kilobyte.

> According to the A/B X/Y ecc requirement, this is not acceptable.

What you call the legacy way is even better, the only situation where
it may be an issue is if the NAND chip does not feature enough OOB
bytes to store the ECC codes, which does not seem to be your primary
concern here.

> The new implementation might get weak ecc than legacy way in some cases but it
> is safety guaranteed.

What does "safety guaranteed" means?

> This reminds me the gpmi raw access mode changes in kernel 3.19, it also changes
> the driver behaviors and makes totally different output compared with older
> versions. I know changes bring mess but we have to accept it at some point
> rather than keep compromising to the wrong way.

How is this an argument? I am usually in favor of moving forward when
there is a real justification, but this does not seem the case, unless
I am understanding it all the wrong way.

> The change has been in NXP kernel fork for a while, so quite a few customers are
> using this bch geometry settings. I hope it can be upstreamed, any other things
> I can do may mitigate the imapact?

You are well aware of the upstreaming process, trying to merge
something locally, making it used and then complaining because not
upstreaming it would break your customers really is your own
responsibility.

IMHO the solutions are:
- the current (mainline) default will remain the standard for
  geometries which are already widely supported
- if there are new geometries that must be supported and do not fit
  because of the "legacy" logic, then you may detect that and try
  to fallback to the "modern" way of calculating the ECC
  parameters (or even jump directly to the modern way if the geometry
  really is not currently supported officially)
- if your customers want a specific chunk size/strength when
  rebasing on top of a mainline kernel there are DT properties which do
  that anyway
- follow Sean advice: introduce a property requesting to use the
  'modern' or 'legacy' logic (with a better name than modern) but first
  check with Rob that this if valid.

Thanks,
Miquèl

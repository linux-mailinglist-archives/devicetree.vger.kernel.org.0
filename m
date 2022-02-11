Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 85E3A4B2F78
	for <lists+devicetree@lfdr.de>; Fri, 11 Feb 2022 22:39:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234237AbiBKViz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Feb 2022 16:38:55 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:52642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233490AbiBKViy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Feb 2022 16:38:54 -0500
X-Greylist: delayed 65 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 11 Feb 2022 13:38:52 PST
Received: from smtp1.axis.com (smtp1.axis.com [195.60.68.17])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30E82C62
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 13:38:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1644615532;
  x=1676151532;
  h=date:to:cc:subject:message-id:references:mime-version:
   content-transfer-encoding:in-reply-to:from;
  bh=0J3T62tHpNbnzNp1hgUrzls4YpC9l9dNSsSpldfxStE=;
  b=n3vDiJRd+1srXmMX6/el3rHkcrjlYl2bWrVtV9PuPJYPYBHxxkk24m8o
   KneX+LFUQ+0Fzgxj2p8hIz8CZMrlHdBuPIyhp7sZJqfonO5GDqiq7ZS/R
   B1M+hMTS6znCSgKQ4JxVuUKe54H0PUkeWwvxikQfbXgek4JK5RJUqXVji
   cBv63yLYTUoBlFww8nvh92Vi8+03Je1aCQVusO3wSOUoOQObckPoQMz8W
   s4u5O4GB6/JJ4n9SWfOjeB3AzVeqiJY9D+XALbZ+k4ORhS+JimwM8mM6F
   6OdXPXHMxjR2XXyzguavA9lkioTNg+TRvfjHBNXiLNCgLQfxhOKt6TaeW
   Q==;
Date:   Fri, 11 Feb 2022 22:37:45 +0100
To:     Rob Herring <robh@kernel.org>
CC:     =?iso-8859-1?Q?M=E5rten?= Lindahl <Marten.Lindahl@axis.com>,
        Frank Rowand <frowand.list@gmail.com>,
        kernel <kernel@axis.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH] of: dma_configure: Free old DMA map range
Message-ID: <YgbXKT3SMm+P2LJ6@axis.com>
References: <20220204084556.3033351-1-marten.lindahl@axis.com>
 <YgZ3Ji63vf5FO915@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YgZ3Ji63vf5FO915@robh.at.kernel.org>
From:   Marten Lindahl <martenli@axis.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Feb 11, 2022 at 03:48:06PM +0100, Rob Herring wrote:
> On Fri, Feb 04, 2022 at 09:45:56AM +0100, Mårten Lindahl wrote:
> > When unbinding/binding a driver with DMA mapped memory, the DMA map is
> > not freed when the driver is reloaded. This leads to a memory leak when
> > the DMA map is overwritten when reprobing the driver.
> > 
> > This can be reproduced with a platform driver having a dma-range:
> > 
> > dummy {
> > 	...
> > 	#address-cells = <0x2>;
> > 	#size-cells = <0x2>;
> > 	ranges;
> > 	dma-ranges = <...>;
> > 	...
> > };
> > 
> > and then unbinding/binding it:
> > 
> > ~# echo soc:dummy >/sys/bus/platform/drivers/<driver>/unbind
> > 
> > DMA map object 0xffffff800b0ae540 still being held by &pdev->dev
> > 
> > ~# echo soc:dummy >/sys/bus/platform/drivers/<driver>/bind
> > ~# echo scan > /sys/kernel/debug/kmemleak
> > ~# cat /sys/kernel/debug/kmemleak
> > unreferenced object 0xffffff800b0ae540 (size 64):
> >   comm "sh", pid 833, jiffies 4295174550 (age 2535.352s)
> >   hex dump (first 32 bytes):
> >     00 00 00 80 00 00 00 00 00 00 00 00 00 00 00 00  ................
> >     00 00 00 80 00 00 00 00 00 00 00 80 00 00 00 00  ................
> >   backtrace:
> >     [<ffffffefd1694708>] create_object.isra.0+0x108/0x344
> >     [<ffffffefd1d1a850>] kmemleak_alloc+0x8c/0xd0
> >     [<ffffffefd167e2d0>] __kmalloc+0x440/0x6f0
> >     [<ffffffefd1a960a4>] of_dma_get_range+0x124/0x220
> >     [<ffffffefd1a8ce90>] of_dma_configure_id+0x40/0x2d0
> >     [<ffffffefd198b68c>] platform_dma_configure+0x5c/0xa4
> >     [<ffffffefd198846c>] really_probe+0x8c/0x514
> >     [<ffffffefd1988990>] __driver_probe_device+0x9c/0x19c
> >     [<ffffffefd1988cd8>] device_driver_attach+0x54/0xbc
> >     [<ffffffefd1986634>] bind_store+0xc4/0x120
> >     [<ffffffefd19856e0>] drv_attr_store+0x30/0x44
> >     [<ffffffefd173c9b0>] sysfs_kf_write+0x50/0x60
> >     [<ffffffefd173c1c4>] kernfs_fop_write_iter+0x124/0x1b4
> >     [<ffffffefd16a013c>] new_sync_write+0xdc/0x160
> >     [<ffffffefd16a256c>] vfs_write+0x23c/0x2a0
> >     [<ffffffefd16a2758>] ksys_write+0x64/0xec
> > 
> > Prevent overwriting the dma_range_map by freeing it before saving the
> > new map.
> > 
> > Signed-off-by: Mårten Lindahl <marten.lindahl@axis.com>
> > ---
> >  drivers/of/device.c | 6 ++++++
> >  1 file changed, 6 insertions(+)
> > 
> > diff --git a/drivers/of/device.c b/drivers/of/device.c
> > index 874f031442dc..a67703d09bfd 100644
> > --- a/drivers/of/device.c
> > +++ b/drivers/of/device.c
> > @@ -156,6 +156,12 @@ int of_dma_configure_id(struct device *dev, struct device_node *np,
> >  			kfree(map);
> >  			return -EINVAL;
> >  		}
> > +
> > +		/*
> > +		 * Since we are about to set a new range map we should make sure we
> > +		 * do not overwrite any existing one without having freed it first.
> > +		 */
> > +		kfree(dev->dma_range_map);
>
Hi Rob!
Thanks for looking at this.
> 
> The map can't change, can't we just reuse the existing map. Or just bail 
> early? I suppose the driver could have modified the dma masks. Or the 
> IOMMU config could have changed.

Yes, we can reuse the existing map. I will make a check for that instead.

Kind regards
Mårten
> 
> Rob

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 421734B7C8D
	for <lists+devicetree@lfdr.de>; Wed, 16 Feb 2022 02:37:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237124AbiBPBPe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Feb 2022 20:15:34 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:39784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234408AbiBPBPd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Feb 2022 20:15:33 -0500
Received: from smtp1.axis.com (smtp1.axis.com [195.60.68.17])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABA6EF5411
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 17:15:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1644974122;
  x=1676510122;
  h=date:to:cc:subject:message-id:references:mime-version:
   content-transfer-encoding:in-reply-to:from;
  bh=g35iL+XdAZtrpkfdYXumLXKfbz2JqMVxn8HY3vybn0c=;
  b=cHtDzfaaJ3Nq1ldb6nDD+zE8+CJGKLHO8eDXw8K0Y3ljpLqw4ri1t1zT
   IyUEEo5g9aCOhWmWqPIGn9nT5+6myzeRL/jtRlc2sVEmTNYPk3PDHFwG7
   o9zX219qU9fCfYyjJsIRhkCXJWVIP5Ub5htzYJkK1g6kUc0MlQV0vddrp
   zu5vQFn+LMzyTR2+CvF7yiyKostfJ8b2VRPi/sEP0AgcM0luEWYsHxQVZ
   0tyksrsxA2jxdypbqCzeL4JHVvhhmAE7qgOLFXa81H7Cw6tFj8OLvVlEg
   Fed8cBjv3+9yGPaoSva1U42AeZdXtDp0LdynoTPnsebgvTELCDB5va8X/
   A==;
Date:   Wed, 16 Feb 2022 02:15:19 +0100
To:     Rob Herring <robh+dt@kernel.org>
CC:     =?iso-8859-1?Q?M=E5rten?= Lindahl <Marten.Lindahl@axis.com>,
        kernel <kernel@axis.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Subject: Re: [PATCH v2] of: dma_configure: Reuse existing DMA map range
Message-ID: <YgxQJ/Xqqz4TlWpI@axis.com>
References: <20220214153208.2984026-1-marten.lindahl@axis.com>
 <YgwwG+Q/QrzwJVwk@robh.at.kernel.org>
 <CAL_JsqLJqdHVfiVmZg319z75Ls10hsi2LgRXKi1SkksqhqUs+Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL_JsqLJqdHVfiVmZg319z75Ls10hsi2LgRXKi1SkksqhqUs+Q@mail.gmail.com>
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

On Wed, Feb 16, 2022 at 12:59:31AM +0100, Rob Herring wrote:
> On Tue, Feb 15, 2022 at 4:58 PM Rob Herring <robh@kernel.org> wrote:
> >
> > On Mon, 14 Feb 2022 16:32:08 +0100, Mårten Lindahl wrote:
> > > When unbinding/binding a driver with DMA mapped memory, the DMA map is
> > > not freed when the driver is reloaded. This leads to a memory leak when
> > > the DMA map is overwritten when reprobing the driver.
> > >
> > > This can be reproduced with a platform driver having a dma-range:
> > >
> > > dummy {
> > >       ...
> > >       #address-cells = <0x2>;
> > >       #size-cells = <0x2>;
> > >       ranges;
> > >       dma-ranges = <...>;
> > >       ...
> > > };
> > >
> > > and then unbinding/binding it:
> > >
> > > ~# echo soc:dummy >/sys/bus/platform/drivers/<driver>/unbind
> > >
> > > DMA map object 0xffffff800b0ae540 still being held by &pdev->dev
> > >
> > > ~# echo soc:dummy >/sys/bus/platform/drivers/<driver>/bind
> > > ~# echo scan > /sys/kernel/debug/kmemleak
> > > ~# cat /sys/kernel/debug/kmemleak
> > > unreferenced object 0xffffff800b0ae540 (size 64):
> > >   comm "sh", pid 833, jiffies 4295174550 (age 2535.352s)
> > >   hex dump (first 32 bytes):
> > >     00 00 00 80 00 00 00 00 00 00 00 00 00 00 00 00  ................
> > >     00 00 00 80 00 00 00 00 00 00 00 80 00 00 00 00  ................
> > >   backtrace:
> > >     [<ffffffefd1694708>] create_object.isra.0+0x108/0x344
> > >     [<ffffffefd1d1a850>] kmemleak_alloc+0x8c/0xd0
> > >     [<ffffffefd167e2d0>] __kmalloc+0x440/0x6f0
> > >     [<ffffffefd1a960a4>] of_dma_get_range+0x124/0x220
> > >     [<ffffffefd1a8ce90>] of_dma_configure_id+0x40/0x2d0
> > >     [<ffffffefd198b68c>] platform_dma_configure+0x5c/0xa4
> > >     [<ffffffefd198846c>] really_probe+0x8c/0x514
> > >     [<ffffffefd1988990>] __driver_probe_device+0x9c/0x19c
> > >     [<ffffffefd1988cd8>] device_driver_attach+0x54/0xbc
> > >     [<ffffffefd1986634>] bind_store+0xc4/0x120
> > >     [<ffffffefd19856e0>] drv_attr_store+0x30/0x44
> > >     [<ffffffefd173c9b0>] sysfs_kf_write+0x50/0x60
> > >     [<ffffffefd173c1c4>] kernfs_fop_write_iter+0x124/0x1b4
> > >     [<ffffffefd16a013c>] new_sync_write+0xdc/0x160
> > >     [<ffffffefd16a256c>] vfs_write+0x23c/0x2a0
> > >     [<ffffffefd16a2758>] ksys_write+0x64/0xec
> > >
> > > Don't get a new dma_range_map if there already is one. Check for an
> > > existing map and reuse it, or else get the map as before. This will
> > > prevent overwriting the old map which is still valid.
> > >
> > > Signed-off-by: Mårten Lindahl <marten.lindahl@axis.com>
> > > ---
> > >
> > > v2:
> > >  - Reuse range map instead of getting a new and freeing the old.
> > >
> > >  drivers/of/device.c | 9 +++++++--
> > >  1 file changed, 7 insertions(+), 2 deletions(-)
> > >
> >
> > Applied, thanks!

Hi Rob!
> 
> Ummm, a bit too quick here. I was looking at the history to add a
> Fixes tag. Looking at commit 89c7cb1608ac ("of/device: Update
> dma_range_map only when dev has valid dma-ranges"), I think this
> change may cause a change in behavior as 'ret' is used as a 'we have a
> valid dma-ranges' flag. So if dma_range_map was set, but not from
> dma-ranges, the behavior will be different.

I really appreciate your second review on this. It is not very obvious
how the ret flag is used in that case, but I agree it may change
expected behavior.
> 
> Instead, I think this needs to be something like the following patch.
> Really we have 3 occurrences of the same clean-up in dd.c and that
> should be refactored. But the below is probably better for a backport
> and refactoring should come after.

Actually, when I found the leak I saw two places to free the
dma_range_map, the first where I put it in patch1, and the second in
__device_release_driver. Now, as you also suggest, it seems the better
place to do it is in __device_release_driver. But I must admit I missed
the place in really_probe, so again, your eyes on this are very helpful.

I will make a new patch on dd instead. Thanks!

Kind regards
Mårten
> 
> diff --git a/drivers/base/dd.c b/drivers/base/dd.c
> index 9eaaff2f556c..f0a508fd7913 100644
> --- a/drivers/base/dd.c
> +++ b/drivers/base/dd.c
> @@ -629,6 +632,9 @@ static int really_probe(struct device *dev, struct
> device_driver *drv)
>                         drv->remove(dev);
> 
>                 devres_release_all(dev);
> +               arch_teardown_dma_ops(dev);
> +               kfree(dev->dma_range_map);
> +               dev->dma_range_map = NULL;
>                 driver_sysfs_remove(dev);
>                 dev->driver = NULL;
>                 dev_set_drvdata(dev, NULL);
> @@ -1209,6 +1215,8 @@ static void __device_release_driver(struct
> device *dev, struct device *parent)
> 
>                 devres_release_all(dev);
>                 arch_teardown_dma_ops(dev);
> +               kfree(dev->dma_range_map);
> +               dev->dma_range_map = NULL;
>                 dev->driver = NULL;
>                 dev_set_drvdata(dev, NULL);
>                 if (dev->pm_domain && dev->pm_domain->dismiss)

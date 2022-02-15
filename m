Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 67A784B7B80
	for <lists+devicetree@lfdr.de>; Wed, 16 Feb 2022 00:59:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237818AbiBOX77 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Feb 2022 18:59:59 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:45120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229445AbiBOX76 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Feb 2022 18:59:58 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04200C9A06
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 15:59:46 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 89D38B80D49
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 23:59:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3DA51C340F0
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 23:59:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1644969584;
        bh=vsgXyKNsYT03qbOLxJOgrM6qAhTDP2ctyZ+FFyWh8P4=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=fxn8wbYicCBr7cwZW6NQUnD1vmuvRiY3jkAj9w3eZrrpfUXwBwvqFK1wmwVLMGf99
         Z9CyFCqVveGp9L03FGgDrEs/xvDJoLXTwuc48PLPqMx1BBd4GPbSoF71RXAw9izcPr
         yc/HM9NnvFsRUVTib4voSHFG9BneG9hsFiIAXX4VXYxJUC41g6+gYbYYkG8YZnDlxc
         c2xHfoNiscMITv9P3L9g6kqY+FVRPd655vr1c7mT+mAkLzsQgf5xVNYNadD+nR4ZjO
         M/fk7dccLmM03lwbctOVUtYSiYjuw1AipcYV8n5JqH/pKsPK/LdgpC6y09ruKQLOda
         fO6N0Ab0yWwLg==
Received: by mail-ed1-f44.google.com with SMTP id z13so942522edc.12
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 15:59:44 -0800 (PST)
X-Gm-Message-State: AOAM533Ocm53zXdso3MgOvjRMxi7oDVEHkRREX8ro4g8eeGzb9IPFQp1
        Psp+g78K/sems0p9fGQwiA4Dc/3qeEDdRdeAyg==
X-Google-Smtp-Source: ABdhPJxpmq5EH2GSMXeDrnrQgkWrS3sM42477yngyF4onq4rlMVgjk4PcPY+61C0S/DsoHyd7VUu2InnLKPuRmROFf8=
X-Received: by 2002:aa7:d8d8:0:b0:3f5:9041:2450 with SMTP id
 k24-20020aa7d8d8000000b003f590412450mr316132eds.322.1644969582550; Tue, 15
 Feb 2022 15:59:42 -0800 (PST)
MIME-Version: 1.0
References: <20220214153208.2984026-1-marten.lindahl@axis.com> <YgwwG+Q/QrzwJVwk@robh.at.kernel.org>
In-Reply-To: <YgwwG+Q/QrzwJVwk@robh.at.kernel.org>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Tue, 15 Feb 2022 17:59:31 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLJqdHVfiVmZg319z75Ls10hsi2LgRXKi1SkksqhqUs+Q@mail.gmail.com>
Message-ID: <CAL_JsqLJqdHVfiVmZg319z75Ls10hsi2LgRXKi1SkksqhqUs+Q@mail.gmail.com>
Subject: Re: [PATCH v2] of: dma_configure: Reuse existing DMA map range
To:     =?UTF-8?Q?M=C3=A5rten_Lindahl?= <marten.lindahl@axis.com>
Cc:     kernel <kernel@axis.com>, devicetree@vger.kernel.org,
        Frank Rowand <frowand.list@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 15, 2022 at 4:58 PM Rob Herring <robh@kernel.org> wrote:
>
> On Mon, 14 Feb 2022 16:32:08 +0100, M=C3=A5rten Lindahl wrote:
> > When unbinding/binding a driver with DMA mapped memory, the DMA map is
> > not freed when the driver is reloaded. This leads to a memory leak when
> > the DMA map is overwritten when reprobing the driver.
> >
> > This can be reproduced with a platform driver having a dma-range:
> >
> > dummy {
> >       ...
> >       #address-cells =3D <0x2>;
> >       #size-cells =3D <0x2>;
> >       ranges;
> >       dma-ranges =3D <...>;
> >       ...
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
> > Don't get a new dma_range_map if there already is one. Check for an
> > existing map and reuse it, or else get the map as before. This will
> > prevent overwriting the old map which is still valid.
> >
> > Signed-off-by: M=C3=A5rten Lindahl <marten.lindahl@axis.com>
> > ---
> >
> > v2:
> >  - Reuse range map instead of getting a new and freeing the old.
> >
> >  drivers/of/device.c | 9 +++++++--
> >  1 file changed, 7 insertions(+), 2 deletions(-)
> >
>
> Applied, thanks!

Ummm, a bit too quick here. I was looking at the history to add a
Fixes tag. Looking at commit 89c7cb1608ac ("of/device: Update
dma_range_map only when dev has valid dma-ranges"), I think this
change may cause a change in behavior as 'ret' is used as a 'we have a
valid dma-ranges' flag. So if dma_range_map was set, but not from
dma-ranges, the behavior will be different.

Instead, I think this needs to be something like the following patch.
Really we have 3 occurrences of the same clean-up in dd.c and that
should be refactored. But the below is probably better for a backport
and refactoring should come after.

diff --git a/drivers/base/dd.c b/drivers/base/dd.c
index 9eaaff2f556c..f0a508fd7913 100644
--- a/drivers/base/dd.c
+++ b/drivers/base/dd.c
@@ -629,6 +632,9 @@ static int really_probe(struct device *dev, struct
device_driver *drv)
                        drv->remove(dev);

                devres_release_all(dev);
+               arch_teardown_dma_ops(dev);
+               kfree(dev->dma_range_map);
+               dev->dma_range_map =3D NULL;
                driver_sysfs_remove(dev);
                dev->driver =3D NULL;
                dev_set_drvdata(dev, NULL);
@@ -1209,6 +1215,8 @@ static void __device_release_driver(struct
device *dev, struct device *parent)

                devres_release_all(dev);
                arch_teardown_dma_ops(dev);
+               kfree(dev->dma_range_map);
+               dev->dma_range_map =3D NULL;
                dev->driver =3D NULL;
                dev_set_drvdata(dev, NULL);
                if (dev->pm_domain && dev->pm_domain->dismiss)

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3D1AA4B283D
	for <lists+devicetree@lfdr.de>; Fri, 11 Feb 2022 15:48:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242798AbiBKOsN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Feb 2022 09:48:13 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:44446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344850AbiBKOsM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Feb 2022 09:48:12 -0500
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BAD0131
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 06:48:11 -0800 (PST)
Received: by mail-oo1-f54.google.com with SMTP id r15-20020a4ae5cf000000b002edba1d3349so10620440oov.3
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 06:48:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=91xCha88qL0b6eiHYkn468jXRjNHz54Whyu+r0GI2h8=;
        b=kyw1h1YpDoKj3O6MGDzJVBCRefQ9ZZIlCRJwzWIk8K8Adw7Nvvl3Lfg8KGXRDvmTi+
         eVEOdI3d7rpb3+aULiSiPA07z55IDn5fRHo40e+tgl4spzwl2ii+Dvz1/apOJojtmV5H
         Ai0KrFp0UkKR6sCn0XUYJRkaQReuUD/DJ5OOu5STuszmMGOXgDXZ6SfOgd4v18ZpGtQZ
         NwRngt8sTAoFhEXjyChvD/6eJdSoQgjPbBH43G4F2RuATnvXSKCfZMEGMbNbcHrrKZxU
         jjGoRpNokIHnTaYIB/Kc87xQWdEbeq5hIYpKAnnVtexZAwnzQ1tUyuCpSKNU2rJVo7lC
         x9yw==
X-Gm-Message-State: AOAM532llqpV/YJJ2YpfE449Z3+fWbJ1g7ib/z3gT/fpasB7I/okW2IH
        UJu96GM5aYc+ZD6F1e3EyYSk0yN8hw==
X-Google-Smtp-Source: ABdhPJzPAFBhkcl92uE4QWu2b9f0gDBkkBAcgzAedXiZVHzA2ubOuHqqN1vRd/9ocGZWiJVeq6kVrg==
X-Received: by 2002:a05:6870:9481:: with SMTP id w1mr238750oal.104.1644590890831;
        Fri, 11 Feb 2022 06:48:10 -0800 (PST)
Received: from robh.at.kernel.org ([2607:fb90:20d7:a802:e6b0:6d9c:32f7:4bd9])
        by smtp.gmail.com with ESMTPSA id bj8sm10000042oib.20.2022.02.11.06.48.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Feb 2022 06:48:10 -0800 (PST)
Received: (nullmailer pid 341880 invoked by uid 1000);
        Fri, 11 Feb 2022 14:48:06 -0000
Date:   Fri, 11 Feb 2022 08:48:06 -0600
From:   Rob Herring <robh@kernel.org>
To:     =?iso-8859-1?Q?M=E5rten?= Lindahl <marten.lindahl@axis.com>
Cc:     Frank Rowand <frowand.list@gmail.com>, kernel@axis.com,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] of: dma_configure: Free old DMA map range
Message-ID: <YgZ3Ji63vf5FO915@robh.at.kernel.org>
References: <20220204084556.3033351-1-marten.lindahl@axis.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220204084556.3033351-1-marten.lindahl@axis.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Feb 04, 2022 at 09:45:56AM +0100, Mårten Lindahl wrote:
> When unbinding/binding a driver with DMA mapped memory, the DMA map is
> not freed when the driver is reloaded. This leads to a memory leak when
> the DMA map is overwritten when reprobing the driver.
> 
> This can be reproduced with a platform driver having a dma-range:
> 
> dummy {
> 	...
> 	#address-cells = <0x2>;
> 	#size-cells = <0x2>;
> 	ranges;
> 	dma-ranges = <...>;
> 	...
> };
> 
> and then unbinding/binding it:
> 
> ~# echo soc:dummy >/sys/bus/platform/drivers/<driver>/unbind
> 
> DMA map object 0xffffff800b0ae540 still being held by &pdev->dev
> 
> ~# echo soc:dummy >/sys/bus/platform/drivers/<driver>/bind
> ~# echo scan > /sys/kernel/debug/kmemleak
> ~# cat /sys/kernel/debug/kmemleak
> unreferenced object 0xffffff800b0ae540 (size 64):
>   comm "sh", pid 833, jiffies 4295174550 (age 2535.352s)
>   hex dump (first 32 bytes):
>     00 00 00 80 00 00 00 00 00 00 00 00 00 00 00 00  ................
>     00 00 00 80 00 00 00 00 00 00 00 80 00 00 00 00  ................
>   backtrace:
>     [<ffffffefd1694708>] create_object.isra.0+0x108/0x344
>     [<ffffffefd1d1a850>] kmemleak_alloc+0x8c/0xd0
>     [<ffffffefd167e2d0>] __kmalloc+0x440/0x6f0
>     [<ffffffefd1a960a4>] of_dma_get_range+0x124/0x220
>     [<ffffffefd1a8ce90>] of_dma_configure_id+0x40/0x2d0
>     [<ffffffefd198b68c>] platform_dma_configure+0x5c/0xa4
>     [<ffffffefd198846c>] really_probe+0x8c/0x514
>     [<ffffffefd1988990>] __driver_probe_device+0x9c/0x19c
>     [<ffffffefd1988cd8>] device_driver_attach+0x54/0xbc
>     [<ffffffefd1986634>] bind_store+0xc4/0x120
>     [<ffffffefd19856e0>] drv_attr_store+0x30/0x44
>     [<ffffffefd173c9b0>] sysfs_kf_write+0x50/0x60
>     [<ffffffefd173c1c4>] kernfs_fop_write_iter+0x124/0x1b4
>     [<ffffffefd16a013c>] new_sync_write+0xdc/0x160
>     [<ffffffefd16a256c>] vfs_write+0x23c/0x2a0
>     [<ffffffefd16a2758>] ksys_write+0x64/0xec
> 
> Prevent overwriting the dma_range_map by freeing it before saving the
> new map.
> 
> Signed-off-by: Mårten Lindahl <marten.lindahl@axis.com>
> ---
>  drivers/of/device.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/of/device.c b/drivers/of/device.c
> index 874f031442dc..a67703d09bfd 100644
> --- a/drivers/of/device.c
> +++ b/drivers/of/device.c
> @@ -156,6 +156,12 @@ int of_dma_configure_id(struct device *dev, struct device_node *np,
>  			kfree(map);
>  			return -EINVAL;
>  		}
> +
> +		/*
> +		 * Since we are about to set a new range map we should make sure we
> +		 * do not overwrite any existing one without having freed it first.
> +		 */
> +		kfree(dev->dma_range_map);


The map can't change, can't we just reuse the existing map. Or just bail 
early? I suppose the driver could have modified the dma masks. Or the 
IOMMU config could have changed.

Rob

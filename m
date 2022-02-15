Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B0424B7ADA
	for <lists+devicetree@lfdr.de>; Tue, 15 Feb 2022 23:58:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237209AbiBOW6s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Feb 2022 17:58:48 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:34768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234816AbiBOW6s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Feb 2022 17:58:48 -0500
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com [209.85.166.176])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E507B91D0
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 14:58:37 -0800 (PST)
Received: by mail-il1-f176.google.com with SMTP id d7so157669ilf.8
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 14:58:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=jhwPkQ4nu4CQZZkCQrqUdSTbC/f73+pryCWaVrvAi9s=;
        b=3793WFYXCt5XMaVNkjNcxSNcwt1Gl0HscOkxuys5w4h/RJP0UX+I47weVCxDnAMkdx
         WfoY3oP1EdijeV68ywGn4gdxH4ZqOs+RUK3/5g0NwqeNUc9znQx5y8817LjPYCNAiYVK
         PtQddBhypASQN8dx4ZKAmmz5ZsuIixBnndlrYluJt1t9oFrPTC6ltg3loXHKqSgflZSA
         QF1JMUQx4JFMeTuA4MglD8+DYtk+LgjvwkzTXwh2iHXuPRC5IO1RxX+s9qxfZXNqBrcV
         t0XHOSMYBZHqI8brfNHU0I1Y3AIo8i46HkFCJ1ifkRScjSysAlpfnR5UK69/+nbbc6FJ
         Bf6w==
X-Gm-Message-State: AOAM531U/PYLfK5mtn804mGGPV9xQ3bRiAJEb8Q8vEGS5g9hILAq4UVe
        v2nXwp2wuMTm9C0pIC20Rg==
X-Google-Smtp-Source: ABdhPJxHrUAh2fO163B9Q4HY53LTN0OymXX4feRi84FRk48Xyq+N514/ok3GvH3xckC9tQfwpWs0qQ==
X-Received: by 2002:a92:d7c3:: with SMTP id g3mr791801ilq.55.1644965916881;
        Tue, 15 Feb 2022 14:58:36 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id z18sm19938395ilq.47.2022.02.15.14.58.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Feb 2022 14:58:36 -0800 (PST)
Received: (nullmailer pid 4075130 invoked by uid 1000);
        Tue, 15 Feb 2022 22:58:35 -0000
Date:   Tue, 15 Feb 2022 16:58:35 -0600
From:   Rob Herring <robh@kernel.org>
To:     =?iso-8859-1?Q?M=E5rten?= Lindahl <marten.lindahl@axis.com>
Cc:     kernel@axis.com, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Subject: Re: [PATCH v2] of: dma_configure: Reuse existing DMA map range
Message-ID: <YgwwG+Q/QrzwJVwk@robh.at.kernel.org>
References: <20220214153208.2984026-1-marten.lindahl@axis.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220214153208.2984026-1-marten.lindahl@axis.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 14 Feb 2022 16:32:08 +0100, Mårten Lindahl wrote:
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
> Don't get a new dma_range_map if there already is one. Check for an
> existing map and reuse it, or else get the map as before. This will
> prevent overwriting the old map which is still valid.
> 
> Signed-off-by: Mårten Lindahl <marten.lindahl@axis.com>
> ---
> 
> v2:
>  - Reuse range map instead of getting a new and freeing the old.
> 
>  drivers/of/device.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 

Applied, thanks!

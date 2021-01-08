Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2B9242EEC07
	for <lists+devicetree@lfdr.de>; Fri,  8 Jan 2021 04:51:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726650AbhAHDvp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jan 2021 22:51:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726113AbhAHDvo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jan 2021 22:51:44 -0500
Received: from mail-il1-x12a.google.com (mail-il1-x12a.google.com [IPv6:2607:f8b0:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2098C0612F4
        for <devicetree@vger.kernel.org>; Thu,  7 Jan 2021 19:51:04 -0800 (PST)
Received: by mail-il1-x12a.google.com with SMTP id y13so1050226ilm.12
        for <devicetree@vger.kernel.org>; Thu, 07 Jan 2021 19:51:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gVf7bu6Nsu2ua5VOikl5v7fFKv6Yu0gqM05VCXf0qhY=;
        b=h+LkWYQcdF3kk/iqn2pWOUXwGwQr2QEL4e6zRaLimgnTWX7ANxMaV682G6Ow1eVzG0
         S+NGG4hsS3gs35M3yRZCEqUYO9m3TtzKBUvRnuDUWPQj2Npnw1U8+4S8EOmerBQ0+SH3
         NONwYbswkRMgcwFI/pLwj57Dw48sGqVunROLgHgPPQtCJEkmNyc6/qhuf+wwVBLN/7Yd
         KwFANbPQouZppPh1LTZzJNl8EOWKHlLVMqaj3L39f+gvHqm2B2ri16TLbt4ftAv4tNxO
         hcYy+PdGCbO3Ipbt77lozxzOaLszNkoChXza6+Gr3AlMgBt1/4SdV3S8PM1ODCcotj7G
         eoWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gVf7bu6Nsu2ua5VOikl5v7fFKv6Yu0gqM05VCXf0qhY=;
        b=FX1gWEnIqnQYfxok+9zz5u6JqeE3sLmtAQ/0v0kFX6TGG87V2xCB3gC93wOJ2ECPIm
         a9PAtaaxABGsR1zBSSSGdzsgODKpINkyzjGU9z9Znji3UQDNAR7qSJGWVK4V2RzgWxJB
         Qmu9ZTgVRbJd02Wq+eAN4pUsPoOJIdIna+PCUDih8WdyFo2iH9CQ/aKP9hHaV4hg6AW2
         nNB+hI94k5OnkpGULW5gbp+NsJEim1ffLYL+WjDwhteD9oYNdifx4aguJ74JpkHp3Hqs
         mzqDqBfG5LWz+EMfDdxhKANrusWG1fNuVKRLBWZ3xEf7xYAvR8lISbfIhJJyvoreh2iz
         s3Hw==
X-Gm-Message-State: AOAM5301zxiIZWr1TH9JHuhf19knHhn3zrbJTISLP2CPH/8eHPg7Gahf
        tI90Gbmfpf/7TifCnFSoxI+87t6q83VZ/CBiLAQ5Ww==
X-Google-Smtp-Source: ABdhPJz/VgWpHgfJHOK0cpNd/VE6tSJIp3+rFKqNNAlfgbYW/M7WvoKlBJKjetj7hGoSK2Qoofe3HpuG54uTzPFdM70=
X-Received: by 2002:a92:7f02:: with SMTP id a2mr2072521ild.204.1610077863853;
 Thu, 07 Jan 2021 19:51:03 -0800 (PST)
MIME-Version: 1.0
References: <20201214050521.845396-1-tzungbi@google.com> <20201214050521.845396-3-tzungbi@google.com>
 <20210106231513.GC9149@xps15> <CA+Px+wXEV9GDCMjR8inbQ89tNV9n7RedeAOGJL_yATmeCLjXJw@mail.gmail.com>
 <X/dMvWdwVfnjsUXM@builder.lan>
In-Reply-To: <X/dMvWdwVfnjsUXM@builder.lan>
From:   Tzung-Bi Shih <tzungbi@google.com>
Date:   Fri, 8 Jan 2021 11:50:53 +0800
Message-ID: <CA+Px+wVBqup0dMvo-d-4s=jQByYPrSTtopz-8Vc7saihJvELpA@mail.gmail.com>
Subject: Re: [PATCH 2/2] remoteproc/mediatek: support L1TCM
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Mathieu Poirier <mathieu.poirier@linaro.org>,
        Ohad Ben-Cohen <ohad@wizery.com>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:REMOTE PROCESSOR (REMOTEPROC) SUBSYSTEM" 
        <linux-remoteproc@vger.kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jan 8, 2021 at 2:02 AM Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
>
> On Wed 06 Jan 19:50 CST 2021, Tzung-Bi Shih wrote:
>
> > On Thu, Jan 7, 2021 at 7:15 AM Mathieu Poirier
> > <mathieu.poirier@linaro.org> wrote:
> > >
> > > >  static void mt8183_scp_stop(struct mtk_scp *scp)
> > > >  {
> > > >       /* Disable SCP watchdog */
> > > > @@ -714,6 +749,19 @@ static int scp_probe(struct platform_device *pdev)
> > > >               goto free_rproc;
> > > >       }
> > > >       scp->sram_size = resource_size(res);
> > > > +     scp->sram_phys = res->start;
> > > > +
> > > > +     res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "l1tcm");
> > > > +     if (res) {
> > >
> > > As far as I can tell the if() condition isn't needed since
> > > platform_get_resource_byname() returns NULL on error and devm_ioremap_resource()
> > > is capable of handling that condition.  As such the code to parse "l1tcm" can be
> > > the same as what is done for "sram".
> >
> > The "l1tcm" memory region is optional.  The if() condition is for: if
> > DTS doesn't provide the memory region, kernel can skip the code block.
> >
>
> People are actively looking for platform_get_resource_byname +
> devm_ioremap_resource() pairs to replace with
> devm_platform_ioremap_resource_byname(), so we're probably going to have
> someone try to patch this soon...
>
> So please change the pair to devm_platform_ioremap_resource_byname() and
> treat a returned -EINVAL as the memory isn't specified and other
> IS_ERR() as errors.

Will do but what if we need to access the "res"?

For example:
scp->sram_size = resource_size(res);

By using devm_platform_ioremap_resource_byname() which will drop the
access to res.  Shall we add a new variant of
devm_platform_ioremap_resource_byname()?

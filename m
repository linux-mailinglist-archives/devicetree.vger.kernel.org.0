Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F3599C28D1
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2019 23:32:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727720AbfI3Vay (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Sep 2019 17:30:54 -0400
Received: from mail.kernel.org ([198.145.29.99]:51042 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1730456AbfI3Vax (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 30 Sep 2019 17:30:53 -0400
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 6CA50224D6
        for <devicetree@vger.kernel.org>; Mon, 30 Sep 2019 17:52:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1569865968;
        bh=VISkbcq9PrIKw4uSwLgeOR8cIOEhbkOGT8DrF2vMfH8=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=JZZYJ+3TehBv+dThkEnIA1tz/i+GwCWs/S9WWNbVt37mA4zcDMDWmbtZe0ayNdo2I
         uGJpVKBMAhusGQP8qAbF5yYiCCsnmC4osuresTxr5w9aXFGaA803X9pKKr+raAWXN6
         zmnAO6zWpv2I74AQdnXukcn21aTmcb76TgRNUsqU=
Received: by mail-qk1-f182.google.com with SMTP id u22so8573239qkk.11
        for <devicetree@vger.kernel.org>; Mon, 30 Sep 2019 10:52:48 -0700 (PDT)
X-Gm-Message-State: APjAAAXpV8OZqWdeam6Skfmtpk0PQ6mFzWed8v5GtsWsOr/Fxe2AG9dN
        JY/coMLSDgECKGVMq8JERr8K7iJXOLdoUyYSHg==
X-Google-Smtp-Source: APXvYqwSgFXNXIifS2TCwJyfW8UXbcMfsRC7IuB9Q/oOn9llMQFx1aqDBr5NmWeVhwufGbKzICqmqGALjAhfiaM6IFY=
X-Received: by 2002:a37:682:: with SMTP id 124mr1316439qkg.393.1569865967571;
 Mon, 30 Sep 2019 10:52:47 -0700 (PDT)
MIME-Version: 1.0
References: <88dc6386929b3dcd7a65ba8063628c62b66b330c.1569856049.git.robin.murphy@arm.com>
 <1e499f85220b735849126171e64ebdd1da0302ce.1569856049.git.robin.murphy@arm.com>
 <167ec566-1936-8a05-83fc-74d20d9fb8bc@arm.com>
In-Reply-To: <167ec566-1936-8a05-83fc-74d20d9fb8bc@arm.com>
From:   Rob Herring <robh@kernel.org>
Date:   Mon, 30 Sep 2019 12:52:36 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+GnSVTEPaLfwcWiAbbTwJFM=NzJB1WnS-D3SfW4xzCSw@mail.gmail.com>
Message-ID: <CAL_Jsq+GnSVTEPaLfwcWiAbbTwJFM=NzJB1WnS-D3SfW4xzCSw@mail.gmail.com>
Subject: Re: [PATCH 2/2] drm/panfrost: Use coherent pagetable walk on Juno
To:     Steven Price <steven.price@arm.com>,
        Robin Murphy <robin.murphy@arm.com>
Cc:     Tomeu Vizoso <tomeu.vizoso@collabora.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        devicetree@vger.kernel.org,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Liviu Dudau <liviu.dudau@arm.com>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 30, 2019 at 11:26 AM Steven Price <steven.price@arm.com> wrote:
>
> On 30/09/2019 16:24, Robin Murphy wrote:
> > Although going full "dma-coherent" ends badly due to GEM objects still
> > being forcibly mapped non-cacheable, we can at least take advantage of
> > Juno's ACE-lite integration to skip cache maintenance for pagetables.
> >
> > CC: Rob Herring <robh@kernel.org>
> > CC: Tomeu Vizoso <tomeu.vizoso@collabora.com>
> > Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> > ---
> >
> > This isn't really meant as a series, I'm just sending it together
> > with patch #1 for context.
> >
> >  drivers/gpu/drm/panfrost/panfrost_mmu.c | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/panfrost/panfrost_mmu.c b/drivers/gpu/drm/panfrost/panfrost_mmu.c
> > index bdd990568476..560439f63277 100644
> > --- a/drivers/gpu/drm/panfrost/panfrost_mmu.c
> > +++ b/drivers/gpu/drm/panfrost/panfrost_mmu.c
> > @@ -365,6 +365,9 @@ int panfrost_mmu_pgtable_alloc(struct panfrost_file_priv *priv)
> >               .iommu_dev      = pfdev->dev,
> >       };
> >
> > +     if (of_device_is_compatible(pfdev->dev->of_node, "arm,juno-mali"))
> > +             pfdev->mmu->pgtbl_cfg.coherent_walk = true;
>
> Should be:
>         mmu->pgtbl_cfg.coherent_walk = true;

IOW, base this on 5.4 or drm-misc-next.

> Also I'm not sure whether we should do this based on a compatible
> string. kbase has a "system-coherency" device-tree flag for it. In
> theory we could end up with a long list of compatibles here...

Why not use 'dma-coherent' which you set? If not, I'm confused as to
what 'dma-coherent' is supposed to mean. Is it possible for page table
walks to have different coherency than the rest of the accesses?

Rob

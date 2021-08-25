Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 158063F755E
	for <lists+devicetree@lfdr.de>; Wed, 25 Aug 2021 14:49:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232236AbhHYMuJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Aug 2021 08:50:09 -0400
Received: from mail.kernel.org ([198.145.29.99]:46616 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229759AbhHYMuI (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 25 Aug 2021 08:50:08 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4C59461165
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 12:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1629895763;
        bh=hzsvVp5GpEc7PzWa6r5XggRFfYmq4XhYwGCYrYog9VU=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=QHg5RyitDe5BZdkuyXir9WSPPtHQjZuBiSjumXod1YDmOSbrSHpmRLhJCRMZepZ+W
         KuoCngzKmasxc0wPQ2EQMSu7oTGqBSxR2fVN2hWLzry/gspJwv7H4dnlhLrXrDqHRZ
         C5eDLQlSFdeXjEishyTIVB+z6sC5g1C47Y1ACu2pvEo/IzaoCz43gZ1i1/EJesVWWQ
         Uxcuyy9bhMqbqkKU1LP3J1k0SVqj/EKS960fMy5k8xjFDWFc17ImDTh4hlcTjOjkP4
         XFz/8vyXdJpsvHrsQEtqziOCa7fNi8sUDBwiaqhdqbt5dtrHM66s90gw3ghXSwIA4A
         yvPFfVZNnXEPQ==
Received: by mail-ed1-f51.google.com with SMTP id b7so36807189edu.3
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 05:49:23 -0700 (PDT)
X-Gm-Message-State: AOAM533L8XN85D2ZbmxlaIetB9Ov1eKjKa4jTkG+rBK2zmEYMOsaVEn6
        WnbqmhoPoFzalgIzNcv3jKlIz/EcI1dWU2HReg==
X-Google-Smtp-Source: ABdhPJxGEaD9pcqWOUraPhN4c3Vf7LkAfiHIHkfkObtWb2tXb4RrH44JLZ2QkwsTTKyGIX3kSSpui3y8eNnPT1VI+yg=
X-Received: by 2002:a05:6402:70c:: with SMTP id w12mr5844304edx.289.1629895761924;
 Wed, 25 Aug 2021 05:49:21 -0700 (PDT)
MIME-Version: 1.0
References: <f6eabbbce0fba6da3da0264c1e1cf23c01173999.1629884393.git.geert+renesas@glider.be>
 <CAL_JsqJg=3iVNqOS2scFf34WvnXKzB5sR_quZaGgSECKttXUug@mail.gmail.com> <CAMuHMdWdgOjeBJY1ANf28yZZUEpA2oT9numFNVtN0AnLTqQG_w@mail.gmail.com>
In-Reply-To: <CAMuHMdWdgOjeBJY1ANf28yZZUEpA2oT9numFNVtN0AnLTqQG_w@mail.gmail.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Wed, 25 Aug 2021 07:49:10 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKjF9OvDUEJAefMG7h50gQf7BeGViEa_2VUTPXyzqdDJw@mail.gmail.com>
Message-ID: <CAL_JsqKjF9OvDUEJAefMG7h50gQf7BeGViEa_2VUTPXyzqdDJw@mail.gmail.com>
Subject: Re: [PATCH] of: fdt: Rename reserve_elfcorehdr() to fdt_reserve_elfcorehdr()
To:     Geert Uytterhoeven <geert@linux-m68k.org>
Cc:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Frank Rowand <frowand.list@gmail.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 25, 2021 at 7:44 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Rob,
>
> On Wed, Aug 25, 2021 at 2:21 PM Rob Herring <robh+dt@kernel.org> wrote:
> > On Wed, Aug 25, 2021 at 4:40 AM Geert Uytterhoeven
> > <geert+renesas@glider.be> wrote:
> > >
> > > On ia64/allmodconfig:
> > >
> > >     drivers/of/fdt.c:609:20: error: conflicting types for 'reserve_elfcorehdr'; have 'void(void)'
> > >       609 | static void __init reserve_elfcorehdr(void)
> > >           |                    ^~~~~~~~~~~~~~~~~~
> > >     arch/ia64/include/asm/meminit.h:43:12: note: previous declaration of 'reserve_elfcorehdr' with type 'int(u64 *, u64 *)' {aka 'int(long long unsigned int *, long long unsigned int *)'}
> > >        43 | extern int reserve_elfcorehdr(u64 *start, u64 *end);
> > >           |            ^~~~~~~~~~~~~~~~~~
> >
> > There's no need for the ia64 version to be non-static. Just needs a
> > forward declaration.
> >
> > arch/ia64/include/asm/meminit.h:extern int reserve_elfcorehdr(u64
> > *start, u64 *end);
> > arch/ia64/kernel/setup.c:       if (reserve_elfcorehdr(&rsvd_region[n].start,
> > arch/ia64/kernel/setup.c:int __init reserve_elfcorehdr(u64 *start, u64 *end)
>
> I know ;-)
>
> https://lore.kernel.org/r/fe236cd73b64abc4abd03dd808cb015c907f4c8c.1629884459.git.geert+renesas@glider.be/

Ah, too much mail sorting...

I guess applying this too doesn't hurt.

Rob

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 91D9B48DB2A
	for <lists+devicetree@lfdr.de>; Thu, 13 Jan 2022 16:56:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236393AbiAMP4o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jan 2022 10:56:44 -0500
Received: from smtp2.axis.com ([195.60.68.18]:56611 "EHLO smtp2.axis.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234589AbiAMP4o (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 13 Jan 2022 10:56:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1642089404;
  x=1673625404;
  h=date:to:cc:subject:message-id:references:mime-version:
   content-transfer-encoding:in-reply-to:from;
  bh=pVFUw84t0ZxJUeZ6BPOuXb3c1W/dG1Ig3PSqQS+VfvQ=;
  b=eMxq+q6wgR564HU29EGjjSzsZZywTZrywgANx6cvTjQKbBzANhZ6T1sl
   Ju+gNsx8xnVGVDQkc26By5Tg5TTcyFMHI4BF5b1sIMd/DHnYSpZK57Y95
   xA9G7kYvOuh0RZHBwSfBzE7g+bEXBUTBRO/enUiMzRY9+0/qqjrpfTKxn
   ZCBNJy1XpR7eNP3gvcW+o9RfN4c53xc8pDcwGgmQl7EOPcTTMY8zsF+jg
   mdRvkOQRcER7FObNu9/iPQORwSbRTV1+AbQoIY6q35WFBs9gFclgnGIK6
   ibnAB/IYJKSL6YZSu6nHK/lIfPg2mwTKXY4yrBSonEM7QClinOdrDq+8m
   A==;
Date:   Thu, 13 Jan 2022 16:56:42 +0100
To:     Rob Herring <robh+dt@kernel.org>
CC:     =?iso-8859-1?Q?M=E5rten?= Lindahl <Marten.Lindahl@axis.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Kees Cook <keescook@chromium.org>,
        Anton Vorontsov <anton@enomsg.org>,
        Colin Cross <ccross@android.com>,
        Tony Luck <tony.luck@intel.com>, kernel <kernel@axis.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH] of: fdt: Check overlap of reserved memory regions
Message-ID: <YeBLuh7/MeyFDxhw@axis.com>
References: <20220111122111.3869046-1-marten.lindahl@axis.com>
 <CAL_JsqLbYmxtG8w7aDxR9kZL3TvhZXyPy3fvPuiqmHa3c8ewJQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL_JsqLbYmxtG8w7aDxR9kZL3TvhZXyPy3fvPuiqmHa3c8ewJQ@mail.gmail.com>
From:   Marten Lindahl <martenli@axis.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 11, 2022 at 07:34:00PM +0100, Rob Herring wrote:
> On Tue, Jan 11, 2022 at 6:25 AM Mårten Lindahl <marten.lindahl@axis.com> wrote:

Hi Rob!
Thanks for looking at this.
> >
> > If a DT specified reserved memory region overlaps an already registered
> > reserved region no notification is made. Starting the system with
> > overlapped memory regions can make it very hard to debug what is going
> > wrong. This is specifically true in case the ramoops console intersects
> > with initrd since the console overwrites memory that is used for initrd,
> > which leads to memory corruption.
> >
> > Highlight this by printing a message about overlapping memory regions.
> 
> Won't this be noisy if a region is described in both /memreserve/ and
> /reserved-memory node?
> 
Yes, it can potentially be noisy if doing so. But I think notifying this
can be useful. Should it perhaps be a notification instead of a warning?

Kind regards
Mårten
> >
> > Signed-off-by: Mårten Lindahl <marten.lindahl@axis.com>
> > ---
> >  drivers/of/fdt.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> >
> > diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> > index bdca35284ceb..c6b88a089b35 100644
> > --- a/drivers/of/fdt.c
> > +++ b/drivers/of/fdt.c
> > @@ -521,6 +521,11 @@ static int __init __reserved_mem_reserve_reg(unsigned long node,
> >                 base = dt_mem_next_cell(dt_root_addr_cells, &prop);
> >                 size = dt_mem_next_cell(dt_root_size_cells, &prop);
> >
> > +               if (size && memblock_is_reserved(base)) {
> > +                       pr_warn("WARNING: 0x%08llx+0x%08llx overlaps reserved memory region\n",
> > +                               (u64)base, (u64)size);
> > +               }
> > +
> >                 if (size &&
> >                     early_init_dt_reserve_memory_arch(base, size, nomap) == 0)
> >                         pr_debug("Reserved memory: reserved region for node '%s': base %pa, size %lu MiB\n",
> > --
> > 2.30.2
> >

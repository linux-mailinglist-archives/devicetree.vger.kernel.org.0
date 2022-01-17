Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6DF9D490C02
	for <lists+devicetree@lfdr.de>; Mon, 17 Jan 2022 17:00:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235241AbiAQQAW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jan 2022 11:00:22 -0500
Received: from smtp2.axis.com ([195.60.68.18]:35889 "EHLO smtp2.axis.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S235217AbiAQQAW (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 17 Jan 2022 11:00:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1642435222;
  x=1673971222;
  h=date:to:cc:subject:message-id:references:mime-version:
   content-transfer-encoding:in-reply-to:from;
  bh=nwKnyXMQm6r1jpgi1jGBvrDWOOiTfSK6bNq7acIi184=;
  b=QXAb+mhdOG78q3iwnRZPslmaQooJcxLhnKX85Ve1dGQHni5H1ju9ikEx
   pnu6TiNq5Go8u5+b4yWuvtg5/6mElfLaHnXvsfN1NYGsv3UGXJHo23Te1
   RlIY4MRqoqBZjKKMCG7zLiw+g6LEy5hT50INO+oFftkOuOmNQwichWlIG
   jfBqD5NUf7Szt+c1MX/+RDi1jfd9yatnoia9J9oU432BiUdhUcI9hRDK0
   ZokiXNVkgy/2/LPklRgWX/qSdtzxbVPsZei5W9PuTYYajVONlduUm8QLo
   naIL4HHHnxw8iYNFPwF1Vg1gQFOkvrXIEP0de9AC84hTw/ilfV9jmpIaP
   Q==;
Date:   Mon, 17 Jan 2022 17:00:19 +0100
To:     Stephen Boyd <swboyd@chromium.org>
CC:     =?iso-8859-1?Q?M=E5rten?= Lindahl <Marten.Lindahl@axis.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Kees Cook <keescook@chromium.org>,
        Anton Vorontsov <anton@enomsg.org>,
        Colin Cross <ccross@android.com>,
        Tony Luck <tony.luck@intel.com>, kernel <kernel@axis.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH] of: fdt: Check overlap of reserved memory regions
Message-ID: <YeWSk4KfOE0YEQmY@axis.com>
References: <20220111122111.3869046-1-marten.lindahl@axis.com>
 <CAL_JsqLbYmxtG8w7aDxR9kZL3TvhZXyPy3fvPuiqmHa3c8ewJQ@mail.gmail.com>
 <YeBLuh7/MeyFDxhw@axis.com>
 <CAE-0n51eAN5=pt9RtB6guxmOBy_tGe5mBOpxW6=uKz+=-GUYiQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAE-0n51eAN5=pt9RtB6guxmOBy_tGe5mBOpxW6=uKz+=-GUYiQ@mail.gmail.com>
From:   Marten Lindahl <martenli@axis.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 13, 2022 at 11:12:11PM +0100, Stephen Boyd wrote:
> Quoting Marten Lindahl (2022-01-13 07:56:42)
> > On Tue, Jan 11, 2022 at 07:34:00PM +0100, Rob Herring wrote:
> > > On Tue, Jan 11, 2022 at 6:25 AM Mårten Lindahl <marten.lindahl@axis.com> wrote:
> >
> > Hi Rob!
> > Thanks for looking at this.
> > > >
> > > > If a DT specified reserved memory region overlaps an already registered
> > > > reserved region no notification is made. Starting the system with
> > > > overlapped memory regions can make it very hard to debug what is going
> > > > wrong. This is specifically true in case the ramoops console intersects
> > > > with initrd since the console overwrites memory that is used for initrd,
> > > > which leads to memory corruption.
> > > >
> > > > Highlight this by printing a message about overlapping memory regions.
> > >
> > > Won't this be noisy if a region is described in both /memreserve/ and
> > > /reserved-memory node?
> > >
> > Yes, it can potentially be noisy if doing so. But I think notifying this
> > can be useful. Should it perhaps be a notification instead of a warning?
> >

Hi Stephen!
> 
> Please don't print any message for /memreserve/ and /reserved-memory nodes
> overlapping. On the chromebook at my desk we have overlapping
> /memreserve/ and /reserved-memory. My understanding is that it's
> redundant to have both, especially when a reserved-memory node has
> 'no-map', but it isn't forbidden. The /memreserve/ is like a no-map
> /resreved-memory node without the phandle.
> 
> Given that initrd is special cased in drivers/of/fdt.c can the reserved
> memory handling code look to see if it overlaps with the initrd region
> and skip that /reserved-memory carveout? A warning could probably be
> printed and ramoops should fail to probe.

I understand if the check would spam on some system setups. So yes, I should
make the check less generic. The case which I describe with initrd and ramoops
is something that I think should be warned about.

But this would result in a very specific check for these two regions. So I'm
thinking, since the ramoops region is the one that will cause overwrites of
any other intersecting region, not necessarily just initrd, would it maybe
make sense to just add an extra check for ramoops and then print the warning?

And then still let ramoops run, as it depends on what memory part is
conflicting, and may not necessarily break the system.

Something like this?

if (!fdt_node_check_compatible(initial_boot_params,
			       node, "ramoops") &&
    size && memblock_is_reserved(base)) {
	pr_warn("WARNING: %s [0x%08llx+0x%08llx] overlaps reserved memory region\n",
		uname, (u64)base, (u64)size);
}

Any more thoughts?

Kind regards
Mårten

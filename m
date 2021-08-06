Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 631283E31BB
	for <lists+devicetree@lfdr.de>; Sat,  7 Aug 2021 00:26:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241132AbhHFW0Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Aug 2021 18:26:24 -0400
Received: from mail.kernel.org ([198.145.29.99]:58314 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S237272AbhHFW0X (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 6 Aug 2021 18:26:23 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id CE9C860720;
        Fri,  6 Aug 2021 22:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1628288767;
        bh=xQE/AdTxZJzrp2wXUeXLgSX3OuLoXh6dlviCZcBq9sk=;
        h=Date:From:To:cc:Subject:In-Reply-To:References:From;
        b=Udsuk+rxkIqlqJ2Tovq3FhoDjg7T/T7N/qFukIasnK6YJ9rZA8tyJ9LSUmxHzNsYz
         pE9NRyB5S48dwOM21RZi368vVXqLhQzSWf9VkckOydJk0LgPe5p80WgxWrDezcoh4E
         yodOxLnmqspMN6MOuQCSKRRPOJKSBXBjlPuBaHRDFXnclfE226+AmZa05Jk5NXTOhs
         GDnHoN0sc8IgCAKz0ee864lCu/BZmC9y5j55dupBsIW/AoOPiEBCKOQEkFl3g2r15z
         H6+g1FT/K4uVX8oHjWl5GxyxJrKy8eyVwm7MWt/1gVsAt+AWKNLjibnuzkedhUaMFN
         Y+UwRbGl10pqw==
Date:   Fri, 6 Aug 2021 15:26:05 -0700 (PDT)
From:   Stefano Stabellini <sstabellini@kernel.org>
X-X-Sender: sstabellini@sstabellini-ThinkPad-T480s
To:     Julien Grall <julien@xen.org>
cc:     Stefano Stabellini <sstabellini@kernel.org>,
        Oleksandr Tyshchenko <olekstysh@gmail.com>, robh+dt@kernel.org,
        Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org
Subject: Re: Clarification regarding updating "Xen hypervisor device tree
 bindings on Arm"
In-Reply-To: <f45250de-fdca-18c4-044b-276d0ff66b05@xen.org>
Message-ID: <alpine.DEB.2.21.2108061519500.18743@sstabellini-ThinkPad-T480s>
References: <CAPD2p-kPXFgaLtwy95ZswYUK3xCDaxC4L85vQw=EvTWgehJ7-A@mail.gmail.com> <alpine.DEB.2.21.2108061306140.18743@sstabellini-ThinkPad-T480s> <f45250de-fdca-18c4-044b-276d0ff66b05@xen.org>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 6 Aug 2021, Julien Grall wrote:
> Hi Stefano,
> 
> On 06/08/2021 21:15, Stefano Stabellini wrote:
> > On Fri, 6 Aug 2021, Oleksandr Tyshchenko wrote:
> > > Hello, all.
> > > 
> > > I would like to clarify some bits regarding a possible update for "Xen
> > > device tree bindings for the guest" [1].
> > > 
> > > A bit of context:
> > > We are considering extending "reg" property under the hypervisor node and
> > > we would like to avoid breaking backward compatibility.
> > > So far, the "reg" was used to carry a single region for the grant table
> > > mapping only and it's size is quite small for the new improvement
> > > we are currently working on.
> > > 
> > > What we want to do is to extend the current region [reg: 0] and add an
> > > extra regions [reg: 1-N] to be used as a safe address space for any
> > > Xen specific mappings. But, we need to be careful about running "new"
> > > guests (with the improvement being built-in already) on "old" Xen
> > > which is not aware of the extended regions, so we need the binding to be
> > > extended in a backward compatible way. In order to detect whether
> > > we are running on top of the "new" Xen (and it provides us enough space to
> > > be used for improvement), we definitely need some sign to
> > > indicate that.
> > > 
> > > Could you please clarify, how do you expect the binding to be changed in
> > > the backward compatible way?
> > > - by adding an extra compatible (as it is a change of the binding
> > > technically)
> > > - by just adding new property (xen,***) to indicate that "reg" contains
> > > enough space
> > > - other option
> >   
> > The current description is:
> > 
> > - reg: specifies the base physical address and size of a region in
> >    memory where the grant table should be mapped to, using an
> >    HYPERVISOR_memory_op hypercall [...]
> > 
> > 
> > Although it says "a region" I think that adding multiple ranges would be
> > fine and shouldn't break backward compatibility.
> > 
> > In addition, the purpose of the region was described as "where the grant
> > table should be mapped". In other words, it is a safe address range
> > where the OS can map Xen special pages.
> > 
> > Your proposal is to extend the region to be bigger to allow the OS to
> > map more Xen special pages. I think it is a natural extension to the
> > binding, which should be backward compatible.
> 
> I agree that extending the reg (or even adding a second region) should be fine
> for older OS.
> 
> > 
> > Rob, I am not sure what is commonly done in these cases. Maybe we just
> > need an update to the description of the binding? I am also fine with
> > adding a new compatible string if needed.
> 
> So the trouble is how a newer Linux version knows that the region is big
> enough to deal with all the foreign/grant mapping?
> 
> If you run on older Xen, then the region will only be 16MB. This means the
> Linux will have to fallback on stealing RAM as it is today.
> 
> IOW, XSA-300 will still be a thing. On newer Xen (or toolstack), we ideally
> want the OS to not fallback on stealing RAM (and close XSA-300). This is where
> we need a way to advertise it.
> 
> The question here is whether we want to use a property or a compatible for
> this.
> 
> I am leaning towards the latter because this is an extension of the bindings.
> However, I wasn't entirely whether this was a normal way to do it.

Although I think it would be OK to have a new compatible string, am I
not sure we need it.

In any case, we'll have to be able to recognize and handle the case
where we run out of the space in the provided region. If the region is
too small (16MB) then it just means we'll run out of space immediately
after mapping the grant table. Then, we'll have to use other techniques.

Or perhaps you think that if we had a new compatible string to say "Xen
binding with a larger region" then we could get away with a simpler
implementation in Linux, one that doesn't handle the case where we run
out of space in the region? If that was the case, then I agree that it
would be worthwhile adding a new compatible.

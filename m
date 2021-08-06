Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0D5793E3033
	for <lists+devicetree@lfdr.de>; Fri,  6 Aug 2021 22:15:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238101AbhHFUP1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Aug 2021 16:15:27 -0400
Received: from mail.kernel.org ([198.145.29.99]:40754 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232908AbhHFUP0 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 6 Aug 2021 16:15:26 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id B1FA260EE9;
        Fri,  6 Aug 2021 20:15:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1628280910;
        bh=0H+T2MAi4m1AOK5RebAiKhvTv54+9FGwf/ZoB+kxCXs=;
        h=Date:From:To:cc:Subject:In-Reply-To:References:From;
        b=IlRywoGq0x6LlQ0GOniMs32X96c8aOdAYP/60wCFJM28xWU4qn7u31r6cYbYoLFUP
         9wdmfw5maZkuTETQdQI4ravWGaASZQtu6StP4JrvY4OPfJ8VrG3JPeU3Xj7MkzW4fp
         LPBlDwatxa/yA+i8UahylpN8wE9QQa2vMuBQKXyGhycCODR0QHMzYmwHID1Dr1Ng8j
         hVQQsAEXVQwthLaxhWNqSAlnktpZckDgDR5W8B9KXg6GDkKkfloG4IcmJCDpkLsM+q
         DVBzRIVd0oEfzOzohe6h5gLZW4gXZyJJOqw6qIotXwUY0cAohacOa9Z9k7AmNspEEs
         7HIwrXbaCdTdg==
Date:   Fri, 6 Aug 2021 13:15:09 -0700 (PDT)
From:   Stefano Stabellini <sstabellini@kernel.org>
X-X-Sender: sstabellini@sstabellini-ThinkPad-T480s
To:     Oleksandr Tyshchenko <olekstysh@gmail.com>
cc:     robh+dt@kernel.org, Julien Grall <julien@xen.org>,
        Stefano Stabellini <sstabellini@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org
Subject: Re: Clarification regarding updating "Xen hypervisor device tree
 bindings on Arm"
In-Reply-To: <CAPD2p-kPXFgaLtwy95ZswYUK3xCDaxC4L85vQw=EvTWgehJ7-A@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.2108061306140.18743@sstabellini-ThinkPad-T480s>
References: <CAPD2p-kPXFgaLtwy95ZswYUK3xCDaxC4L85vQw=EvTWgehJ7-A@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1273073861-1628280407=:18743"
Content-ID: <alpine.DEB.2.21.2108061307560.18743@sstabellini-ThinkPad-T480s>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1273073861-1628280407=:18743
Content-Type: text/plain; CHARSET=UTF-8
Content-Transfer-Encoding: 8BIT
Content-ID: <alpine.DEB.2.21.2108061307561.18743@sstabellini-ThinkPad-T480s>

On Fri, 6 Aug 2021, Oleksandr Tyshchenko wrote:
> Hello, all.
> 
> I would like to clarify some bits regarding a possible update for "Xen device tree bindings for the guest" [1].
> 
> A bit of context:
> We are considering extending "reg" property under the hypervisor node and we would like to avoid breaking backward compatibility.
> So far, the "reg" was used to carry a single region for the grant table mapping only and it's size is quite small for the new improvement
> we are currently working on.  
> 
> What we want to do is to extend the current region [reg: 0] and add an extra regions [reg: 1-N] to be used as a safe address space for any
> Xen specific mappings. But, we need to be careful about running "new" guests (with the improvement being built-in already) on "old" Xen
> which is not aware of the extended regions, so we need the binding to be extended in a backward compatible way. In order to detect whether
> we are running on top of the "new" Xen (and it provides us enough space to be used for improvement), we definitely need some sign to
> indicate that.
> 
> Could you please clarify, how do you expect the binding to be changed in the backward compatible way?
> - by adding an extra compatible (as it is a change of the binding technically)
> - by just adding new property (xen,***) to indicate that "reg" contains enough space
> - other option
 

The current description is:

- reg: specifies the base physical address and size of a region in
  memory where the grant table should be mapped to, using an
  HYPERVISOR_memory_op hypercall [...]


Although it says "a region" I think that adding multiple ranges would be
fine and shouldn't break backward compatibility.

In addition, the purpose of the region was described as "where the grant
table should be mapped". In other words, it is a safe address range
where the OS can map Xen special pages.

Your proposal is to extend the region to be bigger to allow the OS to
map more Xen special pages. I think it is a natural extension to the
binding, which should be backward compatible.

Rob, I am not sure what is commonly done in these cases. Maybe we just
need an update to the description of the binding? I am also fine with
adding a new compatible string if needed.
--8323329-1273073861-1628280407=:18743--

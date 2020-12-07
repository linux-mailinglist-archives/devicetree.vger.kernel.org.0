Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7D8BE2D0ED1
	for <lists+devicetree@lfdr.de>; Mon,  7 Dec 2020 12:17:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726771AbgLGLR2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Dec 2020 06:17:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726435AbgLGLR2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Dec 2020 06:17:28 -0500
Received: from mail-oo1-xc42.google.com (mail-oo1-xc42.google.com [IPv6:2607:f8b0:4864:20::c42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B296C0613D0
        for <devicetree@vger.kernel.org>; Mon,  7 Dec 2020 03:16:42 -0800 (PST)
Received: by mail-oo1-xc42.google.com with SMTP id g20so1227024oos.9
        for <devicetree@vger.kernel.org>; Mon, 07 Dec 2020 03:16:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nwG4TWcUm8pF7K4oTU7GITdAxYvneLQVCWtOQ4qnITI=;
        b=QzOPfJq6brPlWLhOGjRL7CH5U88bsg77NcVAzpg5l0Il+t1OSzHatKcSMZtU/Qooaz
         2aD8GmiRxXaUJ69wI3iyGydzWttl++3k/Eoe53ram5v0yjl2Ntz7ciqb3P5qUNgKtOyY
         ADreSu/REA/g5CL4IeqKcy3rqq5gE5PtMde5x57Ak+XQLiOCbUA/ZqHfSkXD4DiZLo03
         /r6eIMfz7bNYd1k0ANwqMFrV6uoTJ9OOF410RAIAPS2/ay34T9BMyPOC9gSbdM6P89On
         WPexdJ978FYCsGLdPRVglor7xKP8qZkl05v+9/4DHwYk7G4cTMmaz8U/F/Mh2pVveW8h
         dGeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nwG4TWcUm8pF7K4oTU7GITdAxYvneLQVCWtOQ4qnITI=;
        b=Z2QNQXgSkymWC4kF49Cbbiq3J9qXefzZbYTl0LBKL7aznymkMRHTlAtauoxTaSa3Qk
         jO5zvbWP72vCrR8abbhrUQ4VzzRANF/MA/PvXDZc8PcflEqSeFuNUNw8xlEwkv1JIfGX
         LyhscHr13dmxzpxHA6XdFUq5eLtmcCEjMfG1LXNGSP/AMTu+LY8gqU1L4s1ZWgatyAkP
         JIxyWjnRAJ+11eMX5pajrLDYbiinxpp+Ruv3HWLSPRHKjwSr7v4dJBZ0fM0hrrQmifSh
         f+1MB5HVXkDOUeYDebGJ8Kv0SWDZYJK42t2Uvmm9VFoBmj9XRFv25NBkv4yMRF4nHLAY
         uG4g==
X-Gm-Message-State: AOAM531ClTqr+gPNIVdKtvZR7xG1byWdgLGUNh+0btD4UyJex0pn5Q5J
        cY8w7cHKuc+4ClvdmAHl0H3z2InMZQM8AgfvZ/prnQ==
X-Google-Smtp-Source: ABdhPJx9cbeSJ9V8Q7wlwxkuuRV1vY2gzAVhPdoz+VDDikcfYemu9rYcUksyIX7Bh/NZiRc8uaGfU+Ix0O6LwVqYwWY=
X-Received: by 2002:a4a:9e02:: with SMTP id t2mr12368409ook.42.1607339801572;
 Mon, 07 Dec 2020 03:16:41 -0800 (PST)
MIME-Version: 1.0
References: <20201117181607.1761516-1-qperret@google.com> <20201117181607.1761516-17-qperret@google.com>
 <CA+EHjTyJnZ8e=AN7H_k+oZb0VTWAgMicMY8Rqe2Di_3A87hm0A@mail.gmail.com> <X8p5kLSIq2MoQZ24@google.com>
In-Reply-To: <X8p5kLSIq2MoQZ24@google.com>
From:   Fuad Tabba <tabba@google.com>
Date:   Mon, 7 Dec 2020 11:16:05 +0000
Message-ID: <CA+EHjTxW_z-P8bK7gCjGv2eBCAHFsvE873Gr2KyVq5-+_Mdv=g@mail.gmail.com>
Subject: Re: [RFC PATCH 16/27] KVM: arm64: Prepare Hyp memory protection
To:     Quentin Perret <qperret@google.com>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Marc Zyngier <maz@kernel.org>,
        James Morse <james.morse@arm.com>,
        Julien Thierry <julien.thierry.kdev@gmail.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        "moderated list:ARM64 PORT (AARCH64 ARCHITECTURE)" 
        <linux-arm-kernel@lists.infradead.org>,
        open list <linux-kernel@vger.kernel.org>,
        "open list:KERNEL VIRTUAL MACHINE FOR ARM64 (KVM/arm64)" 
        <kvmarm@lists.cs.columbia.edu>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE" 
        <devicetree@vger.kernel.org>, kernel-team@android.com,
        Android KVM <android-kvm@google.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 4, 2020 at 6:01 PM Quentin Perret <qperret@google.com> wrote:
>
> On Thursday 03 Dec 2020 at 12:57:33 (+0000), Fuad Tabba wrote:
> <snip>
> > > +int hyp_create_idmap(void);
> > > +int hyp_map_vectors(void);
> > > +int hyp_back_vmemmap(phys_addr_t phys, unsigned long size, phys_addr_t back);
> > > +int hyp_cpu_set_vector(enum arm64_hyp_spectre_vector slot);
> > > +int hyp_create_mappings(void *from, void *to, enum kvm_pgtable_prot prot);
> > > +int __hyp_create_mappings(unsigned long start, unsigned long size,
> > > +                         unsigned long phys, unsigned long prot);
> > > +unsigned long __hyp_create_private_mapping(phys_addr_t phys, size_t size,
> > > +                                          unsigned long prot);
> > > +
> >
> > nit: I also thought that the hyp_create_mappings function names are a
> > bit confusing, since there's the create_hyp_mappings functions which
> > use the aforementioned *hyp_pgtable.
>
> Sure, happy to re-name those (and hyp_pgtable above). Any suggestions?

Perhaps something to indicate that these are temporary, tmp_ or
bootstrap_ maybe?

Cheers,
/fuad

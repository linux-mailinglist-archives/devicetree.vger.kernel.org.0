Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5ED4130F4ED
	for <lists+devicetree@lfdr.de>; Thu,  4 Feb 2021 15:30:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236614AbhBDO2K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Feb 2021 09:28:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236519AbhBDO1p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Feb 2021 09:27:45 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0443C06178A
        for <devicetree@vger.kernel.org>; Thu,  4 Feb 2021 06:26:39 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id w4so3280062wmi.4
        for <devicetree@vger.kernel.org>; Thu, 04 Feb 2021 06:26:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=WHxuqsEXEN4au8FdhV49UEllGtCSQh/DCdcron9InCc=;
        b=Pg47DSWBlJxWDTyOy0uhMGzKVxdYFLXQWQS0K5+zxLWQojmzL5h6ffmzz8z8JphFg+
         GGQnNvn4zYaBYDPyC6oVULe1wxqtXA5XmivtJVmAw1gi3hAHI9cxbYJ8QeLjDxBqhN2z
         sfjDy3JiEEXoc6s37Q0mTdakrkoM5BHiSvuWBi3o11isnRp8muh/HasfGTLX1h7INMPE
         eu5FT15vPLlyQyL95luBYGKr7scOfYg8dDnnK/YcunKE0eaIWI/fCuGuv0YDlc808WV5
         I+uMW4rSIiz6w0P13aivINkdIWrIx32dUc9bZPEOpmtG5xjHFd+ejnKzad1gnP1Q9wvP
         8ztg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=WHxuqsEXEN4au8FdhV49UEllGtCSQh/DCdcron9InCc=;
        b=D0mnqjoK8UqoKMajVqzQUrGK5+7ERz2qIk9cRXmL7J9NAZlhRL2fiVQOf36WjQhO74
         DT41Sr1v32caeUxJ0UJplcGl5KUwhOikuPv0svNfOMIvT/KazLByMvaNkoRll0+5Khau
         TnD9itytrkhMA8CQqWAHjATIS5W2DhmVsNp46J1WM0B6PlszbMyT6IB5I3TtplievH6K
         dODKGXgRic+Db5llJJKWUAIQhSBr2tYw0yUWP3JmVNKSa1rdB9LiA9K6hjPHrKaDYxGy
         TMTM3BOgF6gxjvNVfahUmbzOSvesjpNh9Z6B9Tuc20v/0mZ72Qb7FHjC2ouOTslk+j7m
         wgmg==
X-Gm-Message-State: AOAM530kDBeAR85B1eB45ApuN8fme8p3GjLRFbdFgUpkL2+G5x5pr5y2
        kCmf5FjpfQ74/t/rSizeiWNBjg==
X-Google-Smtp-Source: ABdhPJz8JyfdFBQ/Eq1UMUYtaCSGJYG+KqzKASSPlnHSKDldVsKHnk3I1lXTriVT3KNvdGryo6FBXw==
X-Received: by 2002:a05:600c:4f13:: with SMTP id l19mr7619926wmq.70.1612448798327;
        Thu, 04 Feb 2021 06:26:38 -0800 (PST)
Received: from google.com (230.69.233.35.bc.googleusercontent.com. [35.233.69.230])
        by smtp.gmail.com with ESMTPSA id u3sm9286516wre.54.2021.02.04.06.26.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Feb 2021 06:26:37 -0800 (PST)
Date:   Thu, 4 Feb 2021 14:26:35 +0000
From:   Quentin Perret <qperret@google.com>
To:     Will Deacon <will@kernel.org>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Marc Zyngier <maz@kernel.org>,
        James Morse <james.morse@arm.com>,
        Julien Thierry <julien.thierry.kdev@gmail.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, android-kvm@google.com,
        linux-kernel@vger.kernel.org, kernel-team@android.com,
        kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
        Fuad Tabba <tabba@google.com>,
        Mark Rutland <mark.rutland@arm.com>,
        David Brazdil <dbrazdil@google.com>
Subject: Re: [RFC PATCH v2 26/26] KVM: arm64: Wrap the host with a stage 2
Message-ID: <YBwEGx1tv8hob9ho@google.com>
References: <20210108121524.656872-1-qperret@google.com>
 <20210108121524.656872-27-qperret@google.com>
 <20210203161146.GJ18974@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210203161146.GJ18974@willie-the-truck>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wednesday 03 Feb 2021 at 16:11:47 (+0000), Will Deacon wrote:
> On Fri, Jan 08, 2021 at 12:15:24PM +0000, Quentin Perret wrote:
> > When KVM runs in protected nVHE mode, make use of a stage 2 page-table
> > to give the hypervisor some control over the host memory accesses. At
> > the moment all memory aborts from the host will be instantly idmapped
> > RWX at stage 2 in a lazy fashion. Later patches will make use of that
> > infrastructure to implement access control restrictions to e.g. protect
> > guest memory from the host.
> > 
> > Signed-off-by: Quentin Perret <qperret@google.com>
> > ---
> >  arch/arm64/include/asm/kvm_cpufeature.h       |   2 +
> >  arch/arm64/kernel/image-vars.h                |   3 +
> >  arch/arm64/kvm/hyp/include/nvhe/mem_protect.h |  33 +++
> >  arch/arm64/kvm/hyp/nvhe/Makefile              |   2 +-
> >  arch/arm64/kvm/hyp/nvhe/hyp-init.S            |   1 +
> >  arch/arm64/kvm/hyp/nvhe/hyp-main.c            |   6 +
> >  arch/arm64/kvm/hyp/nvhe/mem_protect.c         | 191 ++++++++++++++++++
> >  arch/arm64/kvm/hyp/nvhe/setup.c               |   6 +
> >  arch/arm64/kvm/hyp/nvhe/switch.c              |   7 +-
> >  arch/arm64/kvm/hyp/nvhe/tlb.c                 |   4 +-
> >  10 files changed, 248 insertions(+), 7 deletions(-)
> >  create mode 100644 arch/arm64/kvm/hyp/include/nvhe/mem_protect.h
> >  create mode 100644 arch/arm64/kvm/hyp/nvhe/mem_protect.c
> 
> [...]
> 
> > +void handle_host_mem_abort(struct kvm_cpu_context *host_ctxt)
> > +{
> > +	enum kvm_pgtable_prot prot;
> > +	u64 far, hpfar, esr, ipa;
> > +	int ret;
> > +
> > +	esr = read_sysreg_el2(SYS_ESR);
> > +	if (!__get_fault_info(esr, &far, &hpfar))
> > +		hyp_panic();
> > +
> > +	prot = KVM_PGTABLE_PROT_R | KVM_PGTABLE_PROT_W | KVM_PGTABLE_PROT_X;
> > +	ipa = (hpfar & HPFAR_MASK) << 8;
> > +	ret = host_stage2_map(ipa, PAGE_SIZE, prot);
> 
> Can we try to put down a block mapping if the whole thing falls within
> memory?

Yes we can! And in fact we can do that outside of memory too. It's
queued for v3 already, so stay tuned ... :)

Thanks,
Quentin

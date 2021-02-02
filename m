Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D1EB730BB99
	for <lists+devicetree@lfdr.de>; Tue,  2 Feb 2021 11:00:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231223AbhBBJ60 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Feb 2021 04:58:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231273AbhBBJ6V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Feb 2021 04:58:21 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E237C0613D6
        for <devicetree@vger.kernel.org>; Tue,  2 Feb 2021 01:57:41 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id q7so19705448wre.13
        for <devicetree@vger.kernel.org>; Tue, 02 Feb 2021 01:57:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=gUWdfryl2mEIDffgox1qZc46SxaAuEEaX9wvFDWySJY=;
        b=MYX4UAGuAYG76uxw79nQw0VTiLAi14nGvrvL7reS74PX07uV59kkx9lJ22e1nHUwDJ
         URKRfdZqic8BS89CRZewCvictCOw4RtZ/dFHHTvgiJIaSCwWqbFp3wNH7Iha9+WhIvkq
         ygVPMdbx/NfE1NhpjpHjwODDJEfjmxZAKotDKFcBC0CpXaruSyt7+kl1bUpMbpbHXuc5
         JtkW/ibDvryn+3Lu8RUMbzSetzUPyqjVs1oq17BUsA3yRhRbO/cegw9D6cguZheCi6tg
         xfDRuukrHmS3OjuOvl5TYSZCV+wXr2zalvRUxWhcEwAxLHAQzhjXGL7EgVCAcfvDRvB/
         G41Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=gUWdfryl2mEIDffgox1qZc46SxaAuEEaX9wvFDWySJY=;
        b=qgAY3savUK5r2dUHkPdVmOH+B6f0lup0rC5xsb0dNHheJvECzj89tb7ez1LpgHSCuh
         IBNwM5sM6ks4/k17JdzkK3AslDhkloJ60aYxiwI5HFNdFZbPzy0WTqkUxd9R/QgIqERN
         D6/noIOKWuY4LqKjYWgiRlDIPLRp3R8yV7m236einvTcylGjJaGHktcT9y9nz3dEEWrQ
         pZP87zVXGH/n3o5t87H3ve+I2WgtaaVO8lF9i+5t4TQSjgsmUE2+sESfKK+gzq8RFCVb
         56gNsGcNpshvTFNKAHsH2b+835ymWqByZnjMq8Zq+QalbcKDUhrjZ4J1dT3TVcCSPccC
         celA==
X-Gm-Message-State: AOAM533+ngDM0SbSxg9kpd0kSUQsHe45FvKZLrKBd53tjFO7exclnUpy
        0vlDuzxhFsHNvWmks9wexKW4DA==
X-Google-Smtp-Source: ABdhPJxE29ho4puVHuCIAx7AJHJgY3z3K/SPPM510lIEf5EY47+l9wT2D6bJXl5uysLvLX0dzdUNMA==
X-Received: by 2002:a5d:4e4c:: with SMTP id r12mr22738411wrt.354.1612259859803;
        Tue, 02 Feb 2021 01:57:39 -0800 (PST)
Received: from google.com (230.69.233.35.bc.googleusercontent.com. [35.233.69.230])
        by smtp.gmail.com with ESMTPSA id s23sm2133774wmc.35.2021.02.02.01.57.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Feb 2021 01:57:39 -0800 (PST)
Date:   Tue, 2 Feb 2021 09:57:36 +0000
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
Subject: Re: [RFC PATCH v2 11/26] KVM: arm64: Stub CONFIG_DEBUG_LIST at Hyp
Message-ID: <YBkiEPOYBGqfncwH@google.com>
References: <20210108121524.656872-1-qperret@google.com>
 <20210108121524.656872-12-qperret@google.com>
 <20210201190620.GJ15632@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210201190620.GJ15632@willie-the-truck>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Monday 01 Feb 2021 at 19:06:20 (+0000), Will Deacon wrote:
> On Fri, Jan 08, 2021 at 12:15:09PM +0000, Quentin Perret wrote:
> > In order to use the kernel list library at EL2, introduce stubs for the
> > CONFIG_DEBUG_LIST out-of-lines calls.
> > 
> > Signed-off-by: Quentin Perret <qperret@google.com>
> > ---
> >  arch/arm64/kvm/hyp/nvhe/Makefile |  2 +-
> >  arch/arm64/kvm/hyp/nvhe/stub.c   | 22 ++++++++++++++++++++++
> >  2 files changed, 23 insertions(+), 1 deletion(-)
> >  create mode 100644 arch/arm64/kvm/hyp/nvhe/stub.c
> > 
> > diff --git a/arch/arm64/kvm/hyp/nvhe/Makefile b/arch/arm64/kvm/hyp/nvhe/Makefile
> > index 1fc0684a7678..33bd381d8f73 100644
> > --- a/arch/arm64/kvm/hyp/nvhe/Makefile
> > +++ b/arch/arm64/kvm/hyp/nvhe/Makefile
> > @@ -10,7 +10,7 @@ lib-objs := clear_page.o copy_page.o memcpy.o memset.o
> >  lib-objs := $(addprefix ../../../lib/, $(lib-objs))
> >  
> >  obj-y := timer-sr.o sysreg-sr.o debug-sr.o switch.o tlb.o hyp-init.o host.o \
> > -	 hyp-main.o hyp-smp.o psci-relay.o early_alloc.o
> > +	 hyp-main.o hyp-smp.o psci-relay.o early_alloc.o stub.o
> >  obj-y += ../vgic-v3-sr.o ../aarch32.o ../vgic-v2-cpuif-proxy.o ../entry.o \
> >  	 ../fpsimd.o ../hyp-entry.o ../exception.o
> >  obj-y += $(lib-objs)
> > diff --git a/arch/arm64/kvm/hyp/nvhe/stub.c b/arch/arm64/kvm/hyp/nvhe/stub.c
> > new file mode 100644
> > index 000000000000..c0aa6bbfd79d
> > --- /dev/null
> > +++ b/arch/arm64/kvm/hyp/nvhe/stub.c
> > @@ -0,0 +1,22 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * Stubs for out-of-line function calls caused by re-using kernel
> > + * infrastructure at EL2.
> > + *
> > + * Copyright (C) 2020 - Google LLC
> > + */
> > +
> > +#include <linux/list.h>
> > +
> > +#ifdef CONFIG_DEBUG_LIST
> > +bool __list_add_valid(struct list_head *new, struct list_head *prev,
> > +		      struct list_head *next)
> > +{
> > +		return true;
> > +}
> > +
> > +bool __list_del_entry_valid(struct list_head *entry)
> > +{
> > +		return true;
> > +}
> > +#endif
> 
> Can we get away with defining our own CHECK_DATA_CORRUPTION macro instead?

Yes I think eventually it'd be nice to get there, but that has other
implications (e.g. how do you report something in dmesg from EL2?) so
perhaps we can keep that a separate series?

Cheers,
Quentin
